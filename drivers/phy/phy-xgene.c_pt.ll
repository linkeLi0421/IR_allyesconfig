; ModuleID = '/llk/IR_all_yes/drivers/phy/phy-xgene.c_pt.bc'
source_filename = "../drivers/phy/phy-xgene.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.85 = type { i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.xgene_phy_ctx = type { ptr, ptr, i32, i32, ptr, ptr, %struct.xgene_sata_override_param }
%struct.xgene_sata_override_param = type { [2 x i32], [3 x i32], [6 x i32], [6 x i32], [6 x i32], [6 x i32], [6 x i32], [6 x i32], [6 x i32] }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__UNIQUE_ID_preA3Chip289 = internal constant [73 x i8] c"phy_xgene.parm=preA3Chip:Enable pre-A3 chip support (1=enable 0=disable)\00", section ".modinfo", align 1
@__param_str_preA3Chip = internal constant [20 x i8] c"phy_xgene.preA3Chip\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@preA3Chip = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_preA3Chip = internal constant %struct.kernel_param { ptr @__param_str_preA3Chip, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @preA3Chip } }, section "__param", align 4
@__UNIQUE_ID_preA3Chiptype290 = internal constant [33 x i8] c"phy_xgene.parmtype=preA3Chip:int\00", section ".modinfo", align 1
@__initcall__kmod_phy_xgene__318_1717_xgene_phy_driver_init6 = internal global ptr @xgene_phy_driver_init, section ".initcall6.init", align 4
@xgene_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xgene_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xgene_phy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xgene_phy_driver_exit = internal global ptr @xgene_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description319 = internal constant [58 x i8] c"phy_xgene.description=APM X-Gene Multi-Purpose PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author320 = internal constant [38 x i8] c"phy_xgene.author=Loc Ho <lho@apm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file321 = internal constant [37 x i8] c"phy_xgene.file=drivers/phy/phy-xgene\00", section ".modinfo", align 1
@__UNIQUE_ID_license322 = internal constant [25 x i8] c"phy_xgene.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_version323 = internal constant [22 x i8] c"phy_xgene.version=0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"phy_xgene\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xgene-phy\00", [22 x i8] zeroinitializer }, align 32
@xgene_phy_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"apm,xgene-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"apm,tx-eye-tuning\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"apm,tx-eye-direction\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"apm,tx-boost-gain\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"apm,tx-amplitude\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"apm,tx-pre-cursor1\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"apm,tx-pre-cursor2\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"apm,tx-post-cursor\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"apm,tx-speed\00", [19 x i8] zeroinitializer }, align 32
@xgene_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @xgene_phy_hw_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@xgene_phy_probe.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.13, ptr @.str.14, i8 1, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xgene_phy_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/phy/phy-xgene.c\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to create PHY\0A\00", [42 x i8] zeroinitializer }, align 32
@xgene_phy_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.13, i32 1587, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PHY initialize failed %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xgene_phy_hw_init\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xgene_phy_hw_init._entry_ptr = internal global ptr @xgene_phy_hw_init._entry, section ".printk_index", align 4
@xgene_phy_hw_init.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.13, ptr @.str.19, i8 1, i8 -112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PHY initialized\0A\00", [47 x i8] zeroinitializer }, align 32
@xgene_phy_hw_initialize.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.13, ptr @.str.21, i8 1, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xgene_phy_hw_initialize\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PHY init clk type %d\0A\00", [42 x i8] zeroinitializer }, align 32
@xgene_phy_hw_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.13, i32 1330, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Un-supported customer pin mode %d\0A\00", [61 x i8] zeroinitializer }, align 32
@xgene_phy_hw_initialize._entry_ptr = internal global ptr @xgene_phy_hw_initialize._entry, section ".printk_index", align 4
@xgene_phy_hw_init_sata.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.13, ptr @.str.24, i8 1, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xgene_phy_hw_init_sata\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Reset PHY\0A\00", [21 x i8] zeroinitializer }, align 32
@xgene_phy_hw_init_sata.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.13, ptr @.str.25, i8 1, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Set the customer pin mode to SATA\0A\00", [61 x i8] zeroinitializer }, align 32
@xgene_phy_hw_init_sata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.13, i32 1311, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PLL calibration failed\0A\00", [40 x i8] zeroinitializer }, align 32
@xgene_phy_hw_init_sata._entry_ptr = internal global ptr @xgene_phy_hw_init_sata._entry, section ".printk_index", align 4
@xgene_phy_cfg_cmu_clk_type.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.13, ptr @.str.28, i8 0, i8 -75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"xgene_phy_cfg_cmu_clk_type\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Set external reference clock\0A\00", [34 x i8] zeroinitializer }, align 32
@cmu_rd.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.13, ptr @.str.32, i8 0, i8 -101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cmu_rd\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CMU RD addr 0x%X value 0x%08X\0A\00", [33 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sds_rd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.13, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013SDS WR timeout at 0x%p offset 0x%08X value 0x%08X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sds_rd\00", [25 x i8] zeroinitializer }, align 32
@sds_rd._entry_ptr = internal global ptr @sds_rd._entry, section ".printk_index", align 4
@cmu_wr.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.35, ptr @.str.13, ptr @.str.36, i8 0, i8 -105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cmu_wr\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"CMU WR addr 0x%X value 0x%08X <-> 0x%08X\0A\00", [54 x i8] zeroinitializer }, align 32
@sds_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.37, ptr @.str.13, i32 569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sds_wr\00", [25 x i8] zeroinitializer }, align 32
@sds_wr._entry_ptr = internal global ptr @sds_wr._entry, section ".printk_index", align 4
@serdes_wr.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.38, ptr @.str.13, ptr @.str.39, i8 0, i8 -89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"serdes_wr\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"SERDES WR addr 0x%X value 0x%08X <-> 0x%08X\0A\00", [51 x i8] zeroinitializer }, align 32
@serdes_rd.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.40, ptr @.str.13, ptr @.str.41, i8 0, i8 -86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"serdes_rd\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SERDES RD addr 0x%X value 0x%08X\0A\00", [62 x i8] zeroinitializer }, align 32
@xgene_phy_cal_rdy_chk.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.42, ptr @.str.13, ptr @.str.43, i8 1, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xgene_phy_cal_rdy_chk\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PLL calibration %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"done\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@xgene_phy_cal_rdy_chk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.42, ptr @.str.13, i32 1224, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"PLL calibration failed due to VCO failure\0A\00", [53 x i8] zeroinitializer }, align 32
@xgene_phy_cal_rdy_chk._entry_ptr = internal global ptr @xgene_phy_cal_rdy_chk._entry, section ".printk_index", align 4
@xgene_phy_cal_rdy_chk.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.42, ptr @.str.13, ptr @.str.47, i8 1, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PLL calibration successful\0A\00", [36 x i8] zeroinitializer }, align 32
@xgene_phy_cal_rdy_chk.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.42, ptr @.str.13, ptr @.str.48, i8 1, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PHY Tx is %sready\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"not \00", [27 x i8] zeroinitializer }, align 32
@xgene_phy_pdwn_force_vco.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.51, ptr @.str.13, ptr @.str.52, i8 1, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xgene_phy_pdwn_force_vco\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Reset VCO and re-start again\0A\00", [34 x i8] zeroinitializer }, align 32
@xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.13, ptr @.str.54, i8 1, i8 103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xgene_phy_gen_avg_val\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Generating avg calibration value for lane %d\0A\00", [50 x i8] zeroinitializer }, align 32
@xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.13, ptr @.str.55, i8 1, i8 117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Iteration %d:\0A\00", [17 x i8] zeroinitializer }, align 32
@xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.13, ptr @.str.56, i8 1, i8 118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DO 0x%x XO 0x%x EO 0x%x SO 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.13, ptr @.str.57, i8 1, i8 118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DE 0x%x XE 0x%x EE 0x%x SE 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.13, ptr @.str.58, i8 1, i8 119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SUM 0x%x\0A\00", [22 x i8] zeroinitializer }, align 32
@xgene_phy_gen_avg_val._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.53, ptr @.str.13, i32 1505, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Receiver calibration failed at %d loop\0A\00", [56 x i8] zeroinitializer }, align 32
@xgene_phy_gen_avg_val._entry_ptr = internal global ptr @xgene_phy_gen_avg_val._entry, section ".printk_index", align 4
@xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.13, ptr @.str.60, i8 1, i8 -126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Average Value:\0A\00", [16 x i8] zeroinitializer }, align 32
@xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.13, ptr @.str.56, i8 1, i8 -125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.13, ptr @.str.57, i8 1, i8 -124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.13, ptr @.str.58, i8 1, i8 -123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.13, ptr @.str.61, i8 1, i8 -122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Enable Manual Summer calibration\0A\00", [62 x i8] zeroinitializer }, align 32
@xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.13, ptr @.str.62, i8 1, i8 -121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Enable Manual Latch calibration\0A\00", [63 x i8] zeroinitializer }, align 32
@xgene_phy_force_lat_summer_cal.serdes_reg = internal constant { [18 x %struct.anon.85], [48 x i8] } { [18 x %struct.anon.85] [%struct.anon.85 { i32 76, i32 0 }, %struct.anon.85 { i32 78, i32 65280 }, %struct.anon.85 { i32 80, i32 65535 }, %struct.anon.85 { i32 82, i32 65535 }, %struct.anon.85 { i32 84, i32 65535 }, %struct.anon.85 { i32 86, i32 65535 }, %struct.anon.85 { i32 88, i32 65535 }, %struct.anon.85 { i32 90, i32 65535 }, %struct.anon.85 { i32 92, i32 65535 }, %struct.anon.85 { i32 94, i32 65532 }, %struct.anon.85 { i32 96, i32 0 }, %struct.anon.85 { i32 98, i32 0 }, %struct.anon.85 { i32 100, i32 0 }, %struct.anon.85 { i32 102, i32 0 }, %struct.anon.85 { i32 104, i32 0 }, %struct.anon.85 { i32 106, i32 0 }, %struct.anon.85 { i32 108, i32 0 }, %struct.anon.85 { i32 110, i32 0 }], [48 x i8] zeroinitializer }, align 32
@___asan_gen_.63 = private unnamed_addr constant [10 x i8] c"preA3Chip\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 546, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"xgene_phy_driver\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1710, i32 31 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1722, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1713, i32 14 }
@___asan_gen_.81 = private unnamed_addr constant [19 x i8] c"xgene_phy_of_match\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1704, i32 34 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1672, i32 28 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1674, i32 28 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1676, i32 28 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1678, i32 28 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1680, i32 28 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1682, i32 28 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1684, i32 28 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1686, i32 28 }
@___asan_gen_.108 = private unnamed_addr constant [14 x i8] c"xgene_phy_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1607, i32 29 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1695, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1587, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1603, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1322, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1329, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1260, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1277, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1311, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 727, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 621, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 589, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 607, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 568, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 668, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 680, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1220, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1223, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1227, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1230, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1240, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1437, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1493, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1494, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1497, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1500, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1503, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1545, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1562, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1566, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant [11 x i8] c"serdes_reg\00", align 1
@___asan_gen_.280 = private constant [27 x i8] c"../drivers/phy/phy-xgene.c\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1349, i32 4 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @__UNIQUE_ID_author320, ptr @__UNIQUE_ID_description319, ptr @__UNIQUE_ID_file321, ptr @__UNIQUE_ID_license322, ptr @__UNIQUE_ID_preA3Chip289, ptr @__UNIQUE_ID_preA3Chiptype290, ptr @__UNIQUE_ID_version323, ptr @__exitcall_xgene_phy_driver_exit, ptr @__initcall__kmod_phy_xgene__318_1717_xgene_phy_driver_init6, ptr @__modver_attr, ptr @__param_preA3Chip, ptr @sds_rd._entry, ptr @sds_rd._entry_ptr, ptr @sds_wr._entry, ptr @sds_wr._entry_ptr, ptr @xgene_phy_cal_rdy_chk._entry, ptr @xgene_phy_cal_rdy_chk._entry_ptr, ptr @xgene_phy_driver_exit, ptr @xgene_phy_gen_avg_val._entry, ptr @xgene_phy_gen_avg_val._entry_ptr, ptr @xgene_phy_hw_init._entry, ptr @xgene_phy_hw_init._entry_ptr, ptr @xgene_phy_hw_init_sata._entry, ptr @xgene_phy_hw_init_sata._entry_ptr, ptr @xgene_phy_hw_initialize._entry, ptr @xgene_phy_hw_initialize._entry_ptr, ptr @preA3Chip, ptr @xgene_phy_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @xgene_phy_of_match, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @xgene_phy_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @xgene_phy_force_lat_summer_cal.serdes_reg], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preA3Chip to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_phy_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_phy_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_phy_hw_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_phy_hw_init_sata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sds_rd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sds_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_phy_cal_rdy_chk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_phy_gen_avg_val._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_phy_force_lat_summer_cal.serdes_reg to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xgene_phy_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xgene_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @xgene_phy_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 212, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %sds_base = getelementptr inbounds %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %sds_base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %sds_base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call ptr @clk_get(ptr noundef %dev, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call11, ptr %clk, align 4
  %sata_param = getelementptr inbounds %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6
  %txeyetuning = getelementptr inbounds %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 3
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef %txeyetuning, i32 noundef 6, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not.i, label %if.end9.xgene_phy_get_param.exit_crit_edge, label %for.body3.i.preheader

if.end9.xgene_phy_get_param.exit_crit_edge:       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_phy_get_param.exit

for.body3.i.preheader:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %txeyetuning to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 10, ptr %txeyetuning, align 4
  %arrayidx5.i.1 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 3, i32 1
  %7 = ptrtoint ptr %arrayidx5.i.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 10, ptr %arrayidx5.i.1, align 4
  %arrayidx5.i.2 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 3, i32 2
  %8 = ptrtoint ptr %arrayidx5.i.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 10, ptr %arrayidx5.i.2, align 4
  %arrayidx5.i.3 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 3, i32 3
  %9 = ptrtoint ptr %arrayidx5.i.3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 10, ptr %arrayidx5.i.3, align 4
  %arrayidx5.i.4 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 3, i32 4
  %10 = ptrtoint ptr %arrayidx5.i.4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 10, ptr %arrayidx5.i.4, align 4
  %arrayidx5.i.5 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 3, i32 5
  %11 = ptrtoint ptr %arrayidx5.i.5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 10, ptr %arrayidx5.i.5, align 4
  br label %xgene_phy_get_param.exit

xgene_phy_get_param.exit:                         ; preds = %for.body3.i.preheader, %if.end9.xgene_phy_get_param.exit_crit_edge
  %txeyedirection = getelementptr inbounds %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 4
  %12 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node.i, align 8
  %call.i.i102 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.5, ptr noundef %txeyedirection, i32 noundef 6, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i102)
  %tobool.not.i103 = icmp sgt i32 %call.i.i102, -1
  br i1 %tobool.not.i103, label %xgene_phy_get_param.exit.xgene_phy_get_param.exit118_crit_edge, label %for.body3.i117.preheader

xgene_phy_get_param.exit.xgene_phy_get_param.exit118_crit_edge: ; preds = %xgene_phy_get_param.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_phy_get_param.exit118

for.body3.i117.preheader:                         ; preds = %xgene_phy_get_param.exit
  call void @__sanitizer_cov_trace_pc() #9
  %14 = call ptr @memset(ptr %txeyedirection, i32 0, i32 24)
  br label %xgene_phy_get_param.exit118

xgene_phy_get_param.exit118:                      ; preds = %for.body3.i117.preheader, %xgene_phy_get_param.exit.xgene_phy_get_param.exit118_crit_edge
  %txboostgain = getelementptr inbounds %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 2
  %15 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node.i, align 8
  %call.i.i120 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %16, ptr noundef nonnull @.str.6, ptr noundef %txboostgain, i32 noundef 6, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i120)
  %tobool.not.i121 = icmp sgt i32 %call.i.i120, -1
  br i1 %tobool.not.i121, label %xgene_phy_get_param.exit118.xgene_phy_get_param.exit136_crit_edge, label %for.body3.i135.preheader

xgene_phy_get_param.exit118.xgene_phy_get_param.exit136_crit_edge: ; preds = %xgene_phy_get_param.exit118
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_phy_get_param.exit136

for.body3.i135.preheader:                         ; preds = %xgene_phy_get_param.exit118
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %txboostgain to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 30, ptr %txboostgain, align 4
  %arrayidx5.i132.1 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 2, i32 1
  %18 = ptrtoint ptr %arrayidx5.i132.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 30, ptr %arrayidx5.i132.1, align 4
  %arrayidx5.i132.2 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 2, i32 2
  %19 = ptrtoint ptr %arrayidx5.i132.2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 30, ptr %arrayidx5.i132.2, align 4
  %arrayidx5.i132.3 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 2, i32 3
  %20 = ptrtoint ptr %arrayidx5.i132.3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 30, ptr %arrayidx5.i132.3, align 4
  %arrayidx5.i132.4 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 2, i32 4
  %21 = ptrtoint ptr %arrayidx5.i132.4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 30, ptr %arrayidx5.i132.4, align 4
  %arrayidx5.i132.5 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 2, i32 5
  %22 = ptrtoint ptr %arrayidx5.i132.5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 30, ptr %arrayidx5.i132.5, align 4
  br label %xgene_phy_get_param.exit136

xgene_phy_get_param.exit136:                      ; preds = %for.body3.i135.preheader, %xgene_phy_get_param.exit118.xgene_phy_get_param.exit136_crit_edge
  %txamplitude = getelementptr inbounds %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 5
  %23 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node.i, align 8
  %call.i.i138 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %24, ptr noundef nonnull @.str.7, ptr noundef %txamplitude, i32 noundef 6, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i138)
  %tobool.not.i139 = icmp sgt i32 %call.i.i138, -1
  br i1 %tobool.not.i139, label %for.body.i146.preheader, label %for.body3.i153.preheader

for.body3.i153.preheader:                         ; preds = %xgene_phy_get_param.exit136
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %txamplitude to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8, ptr %txamplitude, align 4
  %arrayidx5.i150.1 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 5, i32 1
  %26 = ptrtoint ptr %arrayidx5.i150.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 8, ptr %arrayidx5.i150.1, align 4
  %arrayidx5.i150.2 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 5, i32 2
  %27 = ptrtoint ptr %arrayidx5.i150.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 8, ptr %arrayidx5.i150.2, align 4
  %arrayidx5.i150.3 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 5, i32 3
  %28 = ptrtoint ptr %arrayidx5.i150.3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8, ptr %arrayidx5.i150.3, align 4
  %arrayidx5.i150.4 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 5, i32 4
  %29 = ptrtoint ptr %arrayidx5.i150.4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 8, ptr %arrayidx5.i150.4, align 4
  %arrayidx5.i150.5 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 5, i32 5
  %30 = ptrtoint ptr %arrayidx5.i150.5 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 8, ptr %arrayidx5.i150.5, align 4
  br label %xgene_phy_get_param.exit154

for.body.i146.preheader:                          ; preds = %xgene_phy_get_param.exit136
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %txamplitude to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %txamplitude, align 4
  %div.i = udiv i32 %32, 13300
  store i32 %div.i, ptr %txamplitude, align 4
  %arrayidx.i143.1 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 5, i32 1
  %33 = ptrtoint ptr %arrayidx.i143.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i143.1, align 4
  %div.i.1 = udiv i32 %34, 13300
  store i32 %div.i.1, ptr %arrayidx.i143.1, align 4
  %arrayidx.i143.2 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 5, i32 2
  %35 = ptrtoint ptr %arrayidx.i143.2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i143.2, align 4
  %div.i.2 = udiv i32 %36, 13300
  store i32 %div.i.2, ptr %arrayidx.i143.2, align 4
  %arrayidx.i143.3 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 5, i32 3
  %37 = ptrtoint ptr %arrayidx.i143.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i143.3, align 4
  %div.i.3 = udiv i32 %38, 13300
  store i32 %div.i.3, ptr %arrayidx.i143.3, align 4
  %arrayidx.i143.4 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 5, i32 4
  %39 = ptrtoint ptr %arrayidx.i143.4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i143.4, align 4
  %div.i.4 = udiv i32 %40, 13300
  store i32 %div.i.4, ptr %arrayidx.i143.4, align 4
  %arrayidx.i143.5 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 5, i32 5
  %41 = ptrtoint ptr %arrayidx.i143.5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i143.5, align 4
  %div.i.5 = udiv i32 %42, 13300
  store i32 %div.i.5, ptr %arrayidx.i143.5, align 4
  br label %xgene_phy_get_param.exit154

xgene_phy_get_param.exit154:                      ; preds = %for.body.i146.preheader, %for.body3.i153.preheader
  %txprecursor_cn1 = getelementptr inbounds %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 6
  %43 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %of_node.i, align 8
  %call.i.i156 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %44, ptr noundef nonnull @.str.8, ptr noundef %txprecursor_cn1, i32 noundef 6, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i156)
  %tobool.not.i157 = icmp sgt i32 %call.i.i156, -1
  br i1 %tobool.not.i157, label %for.body.i165.preheader, label %for.body3.i172.preheader

for.body3.i172.preheader:                         ; preds = %xgene_phy_get_param.exit154
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %txprecursor_cn1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %txprecursor_cn1, align 4
  %arrayidx5.i169.1 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 6, i32 1
  %46 = ptrtoint ptr %arrayidx5.i169.1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %arrayidx5.i169.1, align 4
  %arrayidx5.i169.2 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 6, i32 2
  %47 = ptrtoint ptr %arrayidx5.i169.2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %arrayidx5.i169.2, align 4
  %arrayidx5.i169.3 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 6, i32 3
  %48 = ptrtoint ptr %arrayidx5.i169.3 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %arrayidx5.i169.3, align 4
  %arrayidx5.i169.4 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 6, i32 4
  %49 = ptrtoint ptr %arrayidx5.i169.4 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %arrayidx5.i169.4, align 4
  %arrayidx5.i169.5 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 6, i32 5
  %50 = ptrtoint ptr %arrayidx5.i169.5 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %arrayidx5.i169.5, align 4
  br label %xgene_phy_get_param.exit173

for.body.i165.preheader:                          ; preds = %xgene_phy_get_param.exit154
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %txprecursor_cn1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %txprecursor_cn1, align 4
  %div.i162 = udiv i32 %52, 18200
  store i32 %div.i162, ptr %txprecursor_cn1, align 4
  %arrayidx.i161.1 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 6, i32 1
  %53 = ptrtoint ptr %arrayidx.i161.1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i161.1, align 4
  %div.i162.1 = udiv i32 %54, 18200
  store i32 %div.i162.1, ptr %arrayidx.i161.1, align 4
  %arrayidx.i161.2 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 6, i32 2
  %55 = ptrtoint ptr %arrayidx.i161.2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i161.2, align 4
  %div.i162.2 = udiv i32 %56, 18200
  store i32 %div.i162.2, ptr %arrayidx.i161.2, align 4
  %arrayidx.i161.3 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 6, i32 3
  %57 = ptrtoint ptr %arrayidx.i161.3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i161.3, align 4
  %div.i162.3 = udiv i32 %58, 18200
  store i32 %div.i162.3, ptr %arrayidx.i161.3, align 4
  %arrayidx.i161.4 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 6, i32 4
  %59 = ptrtoint ptr %arrayidx.i161.4 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i161.4, align 4
  %div.i162.4 = udiv i32 %60, 18200
  store i32 %div.i162.4, ptr %arrayidx.i161.4, align 4
  %arrayidx.i161.5 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 6, i32 5
  %61 = ptrtoint ptr %arrayidx.i161.5 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i161.5, align 4
  %div.i162.5 = udiv i32 %62, 18200
  store i32 %div.i162.5, ptr %arrayidx.i161.5, align 4
  br label %xgene_phy_get_param.exit173

xgene_phy_get_param.exit173:                      ; preds = %for.body.i165.preheader, %for.body3.i172.preheader
  %txprecursor_cn2 = getelementptr inbounds %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 7
  %63 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %of_node.i, align 8
  %call.i.i175 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %64, ptr noundef nonnull @.str.9, ptr noundef %txprecursor_cn2, i32 noundef 6, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i175)
  %tobool.not.i176 = icmp sgt i32 %call.i.i175, -1
  br i1 %tobool.not.i176, label %for.body.i184.preheader, label %for.body3.i191.preheader

for.body3.i191.preheader:                         ; preds = %xgene_phy_get_param.exit173
  call void @__sanitizer_cov_trace_pc() #9
  %65 = call ptr @memset(ptr %txprecursor_cn2, i32 0, i32 24)
  br label %xgene_phy_get_param.exit192

for.body.i184.preheader:                          ; preds = %xgene_phy_get_param.exit173
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %txprecursor_cn2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %txprecursor_cn2, align 4
  %div.i181 = udiv i32 %67, 18200
  store i32 %div.i181, ptr %txprecursor_cn2, align 4
  %arrayidx.i180.1 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 7, i32 1
  %68 = ptrtoint ptr %arrayidx.i180.1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i180.1, align 4
  %div.i181.1 = udiv i32 %69, 18200
  store i32 %div.i181.1, ptr %arrayidx.i180.1, align 4
  %arrayidx.i180.2 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 7, i32 2
  %70 = ptrtoint ptr %arrayidx.i180.2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i180.2, align 4
  %div.i181.2 = udiv i32 %71, 18200
  store i32 %div.i181.2, ptr %arrayidx.i180.2, align 4
  %arrayidx.i180.3 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 7, i32 3
  %72 = ptrtoint ptr %arrayidx.i180.3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i180.3, align 4
  %div.i181.3 = udiv i32 %73, 18200
  store i32 %div.i181.3, ptr %arrayidx.i180.3, align 4
  %arrayidx.i180.4 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 7, i32 4
  %74 = ptrtoint ptr %arrayidx.i180.4 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i180.4, align 4
  %div.i181.4 = udiv i32 %75, 18200
  store i32 %div.i181.4, ptr %arrayidx.i180.4, align 4
  %arrayidx.i180.5 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 7, i32 5
  %76 = ptrtoint ptr %arrayidx.i180.5 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i180.5, align 4
  %div.i181.5 = udiv i32 %77, 18200
  store i32 %div.i181.5, ptr %arrayidx.i180.5, align 4
  br label %xgene_phy_get_param.exit192

xgene_phy_get_param.exit192:                      ; preds = %for.body.i184.preheader, %for.body3.i191.preheader
  %txpostcursor_cp1 = getelementptr inbounds %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 8
  %78 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %of_node.i, align 8
  %call.i.i194 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %79, ptr noundef nonnull @.str.10, ptr noundef %txpostcursor_cp1, i32 noundef 6, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i194)
  %tobool.not.i195 = icmp sgt i32 %call.i.i194, -1
  br i1 %tobool.not.i195, label %for.body.i203.preheader, label %for.body3.i210.preheader

for.body3.i210.preheader:                         ; preds = %xgene_phy_get_param.exit192
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %txpostcursor_cp1 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 10, ptr %txpostcursor_cp1, align 4
  %arrayidx5.i207.1 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 8, i32 1
  %81 = ptrtoint ptr %arrayidx5.i207.1 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 10, ptr %arrayidx5.i207.1, align 4
  %arrayidx5.i207.2 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 8, i32 2
  %82 = ptrtoint ptr %arrayidx5.i207.2 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 10, ptr %arrayidx5.i207.2, align 4
  %arrayidx5.i207.3 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 8, i32 3
  %83 = ptrtoint ptr %arrayidx5.i207.3 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 10, ptr %arrayidx5.i207.3, align 4
  %arrayidx5.i207.4 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 8, i32 4
  %84 = ptrtoint ptr %arrayidx5.i207.4 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 10, ptr %arrayidx5.i207.4, align 4
  %arrayidx5.i207.5 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 8, i32 5
  %85 = ptrtoint ptr %arrayidx5.i207.5 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 10, ptr %arrayidx5.i207.5, align 4
  br label %xgene_phy_get_param.exit211

for.body.i203.preheader:                          ; preds = %xgene_phy_get_param.exit192
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %txpostcursor_cp1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %txpostcursor_cp1, align 4
  %div.i200 = udiv i32 %87, 18200
  store i32 %div.i200, ptr %txpostcursor_cp1, align 4
  %arrayidx.i199.1 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 8, i32 1
  %88 = ptrtoint ptr %arrayidx.i199.1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i199.1, align 4
  %div.i200.1 = udiv i32 %89, 18200
  store i32 %div.i200.1, ptr %arrayidx.i199.1, align 4
  %arrayidx.i199.2 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 8, i32 2
  %90 = ptrtoint ptr %arrayidx.i199.2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i199.2, align 4
  %div.i200.2 = udiv i32 %91, 18200
  store i32 %div.i200.2, ptr %arrayidx.i199.2, align 4
  %arrayidx.i199.3 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 8, i32 3
  %92 = ptrtoint ptr %arrayidx.i199.3 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx.i199.3, align 4
  %div.i200.3 = udiv i32 %93, 18200
  store i32 %div.i200.3, ptr %arrayidx.i199.3, align 4
  %arrayidx.i199.4 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 8, i32 4
  %94 = ptrtoint ptr %arrayidx.i199.4 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx.i199.4, align 4
  %div.i200.4 = udiv i32 %95, 18200
  store i32 %div.i200.4, ptr %arrayidx.i199.4, align 4
  %arrayidx.i199.5 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 8, i32 5
  %96 = ptrtoint ptr %arrayidx.i199.5 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx.i199.5, align 4
  %div.i200.5 = udiv i32 %97, 18200
  store i32 %div.i200.5, ptr %arrayidx.i199.5, align 4
  br label %xgene_phy_get_param.exit211

xgene_phy_get_param.exit211:                      ; preds = %for.body.i203.preheader, %for.body3.i210.preheader
  %txspeed = getelementptr inbounds %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 1
  %98 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %of_node.i, align 8
  %call.i.i213 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %99, ptr noundef nonnull @.str.11, ptr noundef %txspeed, i32 noundef 3, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i213)
  %tobool.not.i214 = icmp sgt i32 %call.i.i213, -1
  br i1 %tobool.not.i214, label %xgene_phy_get_param.exit211.xgene_phy_get_param.exit229_crit_edge, label %for.body3.i228.preheader

xgene_phy_get_param.exit211.xgene_phy_get_param.exit229_crit_edge: ; preds = %xgene_phy_get_param.exit211
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_phy_get_param.exit229

for.body3.i228.preheader:                         ; preds = %xgene_phy_get_param.exit211
  call void @__sanitizer_cov_trace_pc() #9
  %100 = ptrtoint ptr %txspeed to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1, ptr %txspeed, align 4
  %arrayidx5.i225.1 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 1, i32 1
  %101 = ptrtoint ptr %arrayidx5.i225.1 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 3, ptr %arrayidx5.i225.1, align 4
  %arrayidx5.i225.2 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 1, i32 2
  %102 = ptrtoint ptr %arrayidx5.i225.2 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 7, ptr %arrayidx5.i225.2, align 4
  br label %xgene_phy_get_param.exit229

xgene_phy_get_param.exit229:                      ; preds = %for.body3.i228.preheader, %xgene_phy_get_param.exit211.xgene_phy_get_param.exit229_crit_edge
  %103 = ptrtoint ptr %sata_param to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 2, ptr %sata_param, align 4
  %arrayidx.1 = getelementptr %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 6, i32 0, i32 1
  %104 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 2, ptr %arrayidx.1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %105 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %106 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %call.i, align 4
  %call36 = tail call ptr @devm_phy_create(ptr noundef %107, ptr noundef null, ptr noundef nonnull @xgene_phy_ops) #7
  %phy = getelementptr inbounds %struct.xgene_phy_ctx, ptr %call.i, i32 0, i32 1
  %108 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call36, ptr %phy, align 4
  %cmp.i230 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i230, label %do.body, label %if.end49

do.body:                                          ; preds = %xgene_phy_get_param.exit229
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_phy_probe.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_phy_probe, %if.then44)) #7
          to label %do.end [label %if.then44], !srcloc !185

if.then44:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_phy_probe.__UNIQUE_ID_ddebug317, ptr noundef %dev, ptr noundef nonnull @.str.14) #7
  br label %do.end

do.end:                                           ; preds = %if.then44, %do.body
  %109 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %phy, align 4
  %111 = ptrtoint ptr %110 to i32
  br label %cleanup

if.end49:                                         ; preds = %xgene_phy_get_param.exit229
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i231 = getelementptr inbounds %struct.device, ptr %call36, i32 0, i32 8
  %112 = ptrtoint ptr %driver_data.i.i231 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call.i, ptr %driver_data.i.i231, align 4
  %113 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %call.i, align 4
  %call52 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %114, ptr noundef null, ptr noundef null, ptr noundef nonnull @xgene_phy_xlate) #7
  %cmp.i.i = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  %115 = ptrtoint ptr %call52 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %115, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %do.end, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %111, %do.end ], [ %spec.select.i, %if.end49 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @xgene_phy_xlate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %args) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 1
  %2 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %args2 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %4 = ptrtoint ptr %args2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp3 = icmp ugt i32 %5, 4
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %mode = getelementptr inbounds %struct.xgene_phy_ctx, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mode, align 4
  %phy = getelementptr inbounds %struct.xgene_phy_ctx, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %8, %if.end6 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_phy_hw_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_phy_hw_initialize.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_phy_hw_init, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !185

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_phy_hw_initialize.__UNIQUE_ID_ddebug304, ptr noundef %3, ptr noundef nonnull @.str.21, i32 noundef 0) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %mode.i = getelementptr inbounds %struct.xgene_phy_ctx, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.end, label %do.end

do.end:                                           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.22, i32 noundef %5) #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.15, i32 noundef -19) #10
  br label %cleanup

if.end:                                           ; preds = %do.end.i
  tail call fastcc void @xgene_phy_hw_init_sata(ptr noundef %1) #7
  %clk = getelementptr inbounds %struct.xgene_phy_ctx, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  %cmp.i34 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i34, label %if.end.if.end9_crit_edge, label %if.then3

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %call.i = tail call i32 @clk_prepare(ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then3.clk_prepare_enable.exit_crit_edge

if.then3.clk_prepare_enable.exit_crit_edge:       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then3
  %call1.i = tail call i32 @clk_enable(ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i35

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.then3.i35:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %11) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i35, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.then3.clk_prepare_enable.exit_crit_edge
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %13) #7
  tail call void @clk_unprepare(ptr noundef %13) #7
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 4
  %call.i36 = tail call i32 @clk_prepare(ptr noundef %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %tobool.not.i37 = icmp eq i32 %call.i36, 0
  br i1 %tobool.not.i37, label %if.end.i40, label %clk_prepare_enable.exit.if.end9_crit_edge

clk_prepare_enable.exit.if.end9_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end.i40:                                       ; preds = %clk_prepare_enable.exit
  %call1.i38 = tail call i32 @clk_enable(ptr noundef %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i38)
  %tobool2.not.i39 = icmp eq i32 %call1.i38, 0
  br i1 %tobool2.not.i39, label %if.end.i40.if.end9_crit_edge, label %if.then3.i41

if.end.i40.if.end9_crit_edge:                     ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then3.i41:                                     ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %15) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then3.i41, %if.end.i40.if.end9_crit_edge, %clk_prepare_enable.exit.if.end9_crit_edge, %if.end.if.end9_crit_edge
  tail call fastcc void @xgene_phy_gen_avg_val(ptr noundef %1, i32 noundef 0)
  tail call fastcc void @xgene_phy_gen_avg_val(ptr noundef %1, i32 noundef 1)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_phy_hw_init.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_phy_hw_init, %if.then15)) #7
          to label %cleanup [label %if.then15], !srcloc !185

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_phy_hw_init.__UNIQUE_ID_ddebug316, ptr noundef %17, ptr noundef nonnull @.str.19) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end9, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.then15 ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgene_phy_gen_avg_val(ptr noundef readonly %ctx, i32 noundef %lane) unnamed_addr #2 align 64 {
entry:
  %val.i3.i = alloca i32, align 4
  %val.i.i417 = alloca i32, align 4
  %val.i28.i = alloca i32, align 4
  %val.i26.i = alloca i32, align 4
  %val.i24.i = alloca i32, align 4
  %val.i22.i = alloca i32, align 4
  %val.i21.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !186
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_phy_gen_avg_val, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !185

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug305, ptr noundef %2, ptr noundef nonnull @.str.54, i32 noundef %lane) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val.i, align 4, !annotation !186
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane, i32 noundef 24, ptr noundef nonnull %val.i) #7
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val.i, align 4
  %or.i = or i32 %5, 2
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane, i32 noundef 24, i32 noundef %or.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane, i32 noundef 56, i32 noundef 0)
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane, i32 noundef 62, i32 noundef 0)
  br label %while.body

while.body:                                       ; preds = %if.end107.while.body_crit_edge, %do.end
  %avg_loop.0474 = phi i32 [ 0, %do.end ], [ %avg_loop.1, %if.end107.while.body_crit_edge ]
  %lat_do.0473 = phi i32 [ 0, %do.end ], [ %lat_do.1, %if.end107.while.body_crit_edge ]
  %lat_xo.0472 = phi i32 [ 0, %do.end ], [ %lat_xo.1, %if.end107.while.body_crit_edge ]
  %lat_eo.0471 = phi i32 [ 0, %do.end ], [ %lat_eo.1, %if.end107.while.body_crit_edge ]
  %lat_so.0470 = phi i32 [ 0, %do.end ], [ %lat_so.1, %if.end107.while.body_crit_edge ]
  %lat_de.0469 = phi i32 [ 0, %do.end ], [ %lat_de.1, %if.end107.while.body_crit_edge ]
  %lat_xe.0468 = phi i32 [ 0, %do.end ], [ %lat_xe.1, %if.end107.while.body_crit_edge ]
  %lat_ee.0467 = phi i32 [ 0, %do.end ], [ %lat_ee.1, %if.end107.while.body_crit_edge ]
  %lat_se.0466 = phi i32 [ 0, %do.end ], [ %lat_se.1, %if.end107.while.body_crit_edge ]
  %sum_cal.0465 = phi i32 [ 0, %do.end ], [ %sum_cal.1, %if.end107.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %6 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i.i, align 4, !annotation !186
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane, i32 noundef 254, ptr noundef nonnull %val.i.i) #7
  %7 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i.i, align 4
  %or.i.i = or i32 %8, 2
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane, i32 noundef 254, i32 noundef %or.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 500, i32 noundef 2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i21.i) #7
  %9 = ptrtoint ptr %val.i21.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val.i21.i, align 4, !annotation !186
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane, i32 noundef 254, ptr noundef nonnull %val.i21.i) #7
  %10 = ptrtoint ptr %val.i21.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i21.i, align 4
  %and.i.i = and i32 %11, -3
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane, i32 noundef 254, i32 noundef %and.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i21.i) #7
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 500, i32 noundef 2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i22.i) #7
  %12 = ptrtoint ptr %val.i22.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %val.i22.i, align 4, !annotation !186
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane, i32 noundef 254, ptr noundef nonnull %val.i22.i) #7
  %13 = ptrtoint ptr %val.i22.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i22.i, align 4
  %or.i23.i = or i32 %14, 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane, i32 noundef 254, i32 noundef %or.i23.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i22.i) #7
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 500, i32 noundef 2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i24.i) #7
  %15 = ptrtoint ptr %val.i24.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %val.i24.i, align 4, !annotation !186
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane, i32 noundef 254, ptr noundef nonnull %val.i24.i) #7
  %16 = ptrtoint ptr %val.i24.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i24.i, align 4
  %and.i25.i = and i32 %17, -5
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane, i32 noundef 254, i32 noundef %and.i25.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i24.i) #7
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane, i32 noundef 56, i32 noundef 7) #7
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane, i32 noundef 62, i32 noundef 32256) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i26.i) #7
  %18 = ptrtoint ptr %val.i26.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %val.i26.i, align 4, !annotation !186
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane, i32 noundef 8, ptr noundef nonnull %val.i26.i) #7
  %19 = ptrtoint ptr %val.i26.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i26.i, align 4
  %and.i27.i = and i32 %20, -65
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane, i32 noundef 8, i32 noundef %and.i27.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i26.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i28.i) #7
  %21 = ptrtoint ptr %val.i28.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %val.i28.i, align 4, !annotation !186
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane, i32 noundef 14, ptr noundef nonnull %val.i28.i) #7
  %22 = ptrtoint ptr %val.i28.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val.i28.i, align 4
  %and.i29.i = and i32 %23, -16385
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane, i32 noundef 14, i32 noundef %and.i29.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i28.i) #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %while.body
  %i.030.i = phi i32 [ 0, %while.body ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [18 x %struct.anon.85], ptr @xgene_phy_force_lat_summer_cal.serdes_reg, i32 0, i32 %i.030.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %val.i416 = getelementptr [18 x %struct.anon.85], ptr @xgene_phy_force_lat_summer_cal.serdes_reg, i32 0, i32 %i.030.i, i32 1
  %26 = ptrtoint ptr %val.i416 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val.i416, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane, i32 noundef %25, i32 noundef %27) #7
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 18
  br i1 %exitcond.not.i, label %xgene_phy_force_lat_summer_cal.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

xgene_phy_force_lat_summer_cal.exit:              ; preds = %for.body.i
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane, i32 noundef 42, ptr noundef nonnull %val)
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val, align 4
  %and = lshr i32 %29, 10
  %shr = and i32 %and, 63
  %and3 = lshr i32 %29, 4
  %shr4 = and i32 %and3, 63
  %and5 = and i32 %29, 14
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane, i32 noundef 44, ptr noundef nonnull %val)
  %30 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val, align 4
  %and6 = lshr i32 %31, 10
  %shr7 = and i32 %and6, 63
  %and8 = lshr i32 %31, 4
  %shr9 = and i32 %and8, 63
  %and10 = and i32 %31, 14
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane, i32 noundef 46, ptr noundef nonnull %val)
  %32 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val, align 4
  %and11 = lshr i32 %33, 10
  %shr12 = and i32 %and11, 63
  %and13 = lshr i32 %33, 4
  %shr14 = and i32 %and13, 63
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane, i32 noundef 48, ptr noundef nonnull %val)
  %34 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val, align 4
  %and15 = lshr i32 %35, 10
  %shr16 = and i32 %and15, 63
  %and17 = lshr i32 %35, 4
  %shr18 = and i32 %and17, 63
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane, i32 noundef 242, ptr noundef nonnull %val)
  %36 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val, align 4
  %and19 = lshr i32 %37, 1
  %shr20 = and i32 %and19, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %switch = icmp eq i32 %and10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %switch385 = icmp eq i32 %and5, 0
  %or.cond = select i1 %switch, i1 %switch385, i1 false
  br i1 %or.cond, label %if.then26, label %do.end105

if.then26:                                        ; preds = %xgene_phy_force_lat_summer_cal.exit
  %add = add i32 %shr, %lat_do.0473
  %add27 = add i32 %shr4, %lat_xo.0472
  %add28 = add i32 %shr7, %lat_eo.0471
  %add29 = add i32 %shr9, %lat_so.0470
  %add30 = add i32 %shr12, %lat_de.0469
  %add31 = add i32 %shr14, %lat_xe.0468
  %add32 = add i32 %shr16, %lat_ee.0467
  %add33 = add i32 %shr18, %lat_se.0466
  %add34 = add i32 %shr20, %sum_cal.0465
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_phy_gen_avg_val, %if.then47)) #7
          to label %do.body52 [label %if.then47], !srcloc !185

if.then47:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug306, ptr noundef %39, ptr noundef nonnull @.str.55, i32 noundef %avg_loop.0474) #7
  br label %do.body52

do.body52:                                        ; preds = %if.then47, %if.then26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_phy_gen_avg_val, %if.then64)) #7
          to label %do.body69 [label %if.then64], !srcloc !185

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug307, ptr noundef %41, ptr noundef nonnull @.str.56, i32 noundef %shr, i32 noundef %shr4, i32 noundef %shr7, i32 noundef %shr9) #7
  br label %do.body69

do.body69:                                        ; preds = %if.then64, %do.body52
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_phy_gen_avg_val, %if.then81)) #7
          to label %do.body86 [label %if.then81], !srcloc !185

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug308, ptr noundef %43, ptr noundef nonnull @.str.57, i32 noundef %shr12, i32 noundef %shr14, i32 noundef %shr16, i32 noundef %shr18) #7
  br label %do.body86

do.body86:                                        ; preds = %if.then81, %do.body69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_phy_gen_avg_val, %if.then98)) #7
          to label %do.end102 [label %if.then98], !srcloc !185

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug309, ptr noundef %45, ptr noundef nonnull @.str.58, i32 noundef %shr20) #7
  br label %do.end102

do.end102:                                        ; preds = %if.then98, %do.body86
  %inc = add i32 %avg_loop.0474, 1
  br label %if.end107

do.end105:                                        ; preds = %xgene_phy_force_lat_summer_cal.exit
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.59, i32 noundef %avg_loop.0474) #10
  br label %if.end107

if.end107:                                        ; preds = %do.end105, %do.end102
  %sum_cal.1 = phi i32 [ %add34, %do.end102 ], [ %sum_cal.0465, %do.end105 ]
  %lat_se.1 = phi i32 [ %add33, %do.end102 ], [ %lat_se.0466, %do.end105 ]
  %lat_ee.1 = phi i32 [ %add32, %do.end102 ], [ %lat_ee.0467, %do.end105 ]
  %lat_xe.1 = phi i32 [ %add31, %do.end102 ], [ %lat_xe.0468, %do.end105 ]
  %lat_de.1 = phi i32 [ %add30, %do.end102 ], [ %lat_de.0469, %do.end105 ]
  %lat_so.1 = phi i32 [ %add29, %do.end102 ], [ %lat_so.0470, %do.end105 ]
  %lat_eo.1 = phi i32 [ %add28, %do.end102 ], [ %lat_eo.0471, %do.end105 ]
  %lat_xo.1 = phi i32 [ %add27, %do.end102 ], [ %lat_xo.0472, %do.end105 ]
  %lat_do.1 = phi i32 [ %add, %do.end102 ], [ %lat_do.0473, %do.end105 ]
  %avg_loop.1 = phi i32 [ %inc, %do.end102 ], [ %avg_loop.0474, %do.end105 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i417) #7
  %48 = ptrtoint ptr %val.i.i417 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %val.i.i417, align 4, !annotation !186
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane, i32 noundef 14, ptr noundef nonnull %val.i.i417) #7
  %49 = ptrtoint ptr %val.i.i417 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val.i.i417, align 4
  %and.i.i418 = and i32 %50, -257
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane, i32 noundef 14, i32 noundef %and.i.i418) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i417) #7
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i3.i) #7
  %51 = ptrtoint ptr %val.i3.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %val.i3.i, align 4, !annotation !186
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane, i32 noundef 14, ptr noundef nonnull %val.i3.i) #7
  %52 = ptrtoint ptr %val.i3.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %val.i3.i, align 4
  %or.i.i419 = or i32 %53, 256
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane, i32 noundef 14, i32 noundef %or.i.i419) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i3.i) #7
  %cmp = icmp slt i32 %avg_loop.1, 10
  br i1 %cmp, label %if.end107.while.body_crit_edge, label %while.end

if.end107.while.body_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end107
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane, i32 noundef 254, ptr noundef nonnull %val)
  %54 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val, align 4
  %and108 = and i32 %55, -65521
  %add.i = add i32 %lat_do.1, 5
  %div1.i = sdiv i32 %add.i, 10
  %shl = shl i32 %div1.i, 10
  %and110 = and i32 %shl, 64512
  %add.i420 = add i32 %lat_xo.1, 5
  %div1.i421 = sdiv i32 %add.i420, 10
  %shl113 = shl i32 %div1.i421, 4
  %and114 = and i32 %shl113, 1008
  %or = or i32 %and110, %and114
  %or115 = or i32 %or, %and108
  store i32 %or115, ptr %val, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane, i32 noundef 254, i32 noundef %or115)
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane, i32 noundef 256, ptr noundef nonnull %val)
  %56 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val, align 4
  %and116 = and i32 %57, -65521
  %add.i422 = add i32 %lat_eo.1, 5
  %div1.i423 = sdiv i32 %add.i422, 10
  %shl118 = shl i32 %div1.i423, 10
  %and119 = and i32 %shl118, 64512
  %add.i424 = add i32 %lat_so.1, 5
  %div1.i425 = sdiv i32 %add.i424, 10
  %shl123 = shl i32 %div1.i425, 4
  %and124 = and i32 %shl123, 1008
  %or120 = or i32 %and119, %and124
  %or125 = or i32 %or120, %and116
  store i32 %or125, ptr %val, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane, i32 noundef 256, i32 noundef %or125)
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane, i32 noundef 258, ptr noundef nonnull %val)
  %58 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %val, align 4
  %and126 = and i32 %59, -65521
  %add.i426 = add i32 %lat_de.1, 5
  %div1.i427 = sdiv i32 %add.i426, 10
  %shl128 = shl i32 %div1.i427, 10
  %and129 = and i32 %shl128, 64512
  %add.i428 = add i32 %lat_xe.1, 5
  %div1.i429 = sdiv i32 %add.i428, 10
  %shl133 = shl i32 %div1.i429, 4
  %and134 = and i32 %shl133, 1008
  %or130 = or i32 %and129, %and134
  %or135 = or i32 %or130, %and126
  store i32 %or135, ptr %val, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane, i32 noundef 258, i32 noundef %or135)
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane, i32 noundef 260, ptr noundef nonnull %val)
  %60 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %val, align 4
  %and136 = and i32 %61, -65521
  %add.i430 = add i32 %lat_ee.1, 5
  %div1.i431 = sdiv i32 %add.i430, 10
  %shl138 = shl i32 %div1.i431, 10
  %and139 = and i32 %shl138, 64512
  %add.i432 = add i32 %lat_se.1, 5
  %div1.i433 = sdiv i32 %add.i432, 10
  %shl143 = shl i32 %div1.i433, 4
  %and144 = and i32 %shl143, 1008
  %or140 = or i32 %and139, %and144
  %or145 = or i32 %or140, %and136
  store i32 %or145, ptr %val, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane, i32 noundef 260, i32 noundef %or145)
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane, i32 noundef 28, ptr noundef nonnull %val)
  %62 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %val, align 4
  %and146 = and i32 %63, -64
  %add.i434 = add i32 %sum_cal.1, 5
  %div1.i435 = sdiv i32 %add.i434, 10
  %and149 = and i32 %div1.i435, 63
  %or150 = or i32 %and146, %and149
  store i32 %or150, ptr %val, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane, i32 noundef 28, i32 noundef %or150)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_phy_gen_avg_val, %if.then163)) #7
          to label %do.body168 [label %if.then163], !srcloc !185

if.then163:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug310, ptr noundef %65, ptr noundef nonnull @.str.60) #7
  br label %do.body168

do.body168:                                       ; preds = %if.then163, %while.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_phy_gen_avg_val, %if.then180)) #7
          to label %do.body189 [label %if.then180], !srcloc !185

if.then180:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug311, ptr noundef %67, ptr noundef nonnull @.str.56, i32 noundef %div1.i, i32 noundef %div1.i421, i32 noundef %div1.i423, i32 noundef %div1.i425) #7
  br label %do.body189

do.body189:                                       ; preds = %if.then180, %do.body168
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_phy_gen_avg_val, %if.then201)) #7
          to label %do.body210 [label %if.then201], !srcloc !185

if.then201:                                       ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug312, ptr noundef %69, ptr noundef nonnull @.str.57, i32 noundef %div1.i427, i32 noundef %div1.i429, i32 noundef %div1.i431, i32 noundef %div1.i433) #7
  br label %do.body210

do.body210:                                       ; preds = %if.then201, %do.body189
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_phy_gen_avg_val, %if.then222)) #7
          to label %do.end227 [label %if.then222], !srcloc !185

if.then222:                                       ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug313, ptr noundef %71, ptr noundef nonnull @.str.58, i32 noundef %div1.i435) #7
  br label %do.end227

do.end227:                                        ; preds = %if.then222, %do.body210
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane, i32 noundef 28, ptr noundef nonnull %val)
  %72 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %val, align 4
  %or229 = or i32 %73, 64
  store i32 %or229, ptr %val, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane, i32 noundef 28, i32 noundef %or229)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_phy_gen_avg_val, %if.then242)) #7
          to label %do.end246 [label %if.then242], !srcloc !185

if.then242:                                       ; preds = %do.end227
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug314, ptr noundef %75, ptr noundef nonnull @.str.61) #7
  br label %do.end246

do.end246:                                        ; preds = %if.then242, %do.end227
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane, i32 noundef 254, ptr noundef nonnull %val)
  %76 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %val, align 4
  %or248 = or i32 %77, 8
  store i32 %or248, ptr %val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_phy_gen_avg_val, %if.then261)) #7
          to label %do.end265 [label %if.then261], !srcloc !185

if.then261:                                       ; preds = %do.end246
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug315, ptr noundef %79, ptr noundef nonnull @.str.62) #7
  br label %do.end265

do.end265:                                        ; preds = %if.then261, %do.end246
  %80 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %val, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane, i32 noundef 254, i32 noundef %81)
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane, i32 noundef 24, ptr noundef nonnull %val)
  %82 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %val, align 4
  %and266 = and i32 %83, -3
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane, i32 noundef 24, i32 noundef %and266)
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane, i32 noundef 56, i32 noundef 7)
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane, i32 noundef 62, i32 noundef 32256)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgene_phy_hw_init_sata(ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  %val.i4 = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sds_base1 = getelementptr inbounds %struct.xgene_phy_ctx, ptr %ctx, i32 0, i32 4
  %0 = ptrtoint ptr %sds_base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sds_base1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_phy_hw_init_sata.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_phy_hw_init_sata, %if.then)) #7
          to label %do.body4 [label %if.then], !srcloc !185

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_phy_hw_init_sata.__UNIQUE_ID_ddebug302, ptr noundef %3, ptr noundef nonnull @.str.24) #7
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !187
  tail call void @arm_heavy_mb() #7
  %add.ptr = getelementptr i8, ptr %1, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !188
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !191
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 536870912) #7, !srcloc !188
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -570425344) #7, !srcloc !188
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  %add.ptr33 = getelementptr i8, ptr %1, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #7, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  %8 = and i32 %7, -251658241
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %sata_param = getelementptr inbounds %struct.xgene_phy_ctx, ptr %ctx, i32 0, i32 6
  %10 = ptrtoint ptr %sata_param to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sata_param, align 4
  %arrayidx38 = getelementptr %struct.xgene_phy_ctx, ptr %ctx, i32 0, i32 6, i32 1, i32 %11
  %12 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx38, align 4
  %and39 = and i32 %13, 15
  %or = or i32 %and39, %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %14) #7, !srcloc !188
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_phy_hw_init_sata.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_phy_hw_init_sata, %if.then56)) #7
          to label %do.end60 [label %if.then56], !srcloc !185

if.then56:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_phy_hw_init_sata.__UNIQUE_ID_ddebug303, ptr noundef %16, ptr noundef nonnull @.str.25) #7
  br label %do.end60

do.end60:                                         ; preds = %if.then56, %do.body4
  %add.ptr63 = getelementptr i8, ptr %1, i32 12
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63) #7, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  %18 = and i32 %17, 8454143
  %19 = or i32 %18, 558104576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !198
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %19) #7, !srcloc !188
  tail call fastcc void @xgene_phy_cfg_cmu_clk_type(ptr noundef %ctx)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %val.i, align 4, !annotation !186
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 0, ptr noundef nonnull %val.i) #7
  %21 = load i32, ptr @preA3Chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  %22 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val.i, align 4
  %or12.i = or i32 %23, 224
  %and9.i = and i32 %23, -225
  %or10.i = or i32 %and9.i, 128
  %storemerge.i = select i1 %tobool.not.i, i32 %or12.i, i32 %or10.i
  store i32 %storemerge.i, ptr %val.i, align 4
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 0, i32 noundef %storemerge.i) #7
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 2, ptr noundef nonnull %val.i) #7
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val.i, align 4
  %26 = load i32, ptr @preA3Chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool18.not.i = icmp eq i32 %26, 0
  %or15.i = and i32 %25, -16361
  %storemerge1.v.i = select i1 %tobool18.not.i, i32 96, i32 160
  %and23.i = or i32 %or15.i, %storemerge1.v.i
  %or32.i = or i32 %and23.i, 1032
  %27 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or32.i, ptr %val.i, align 4
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 2, i32 noundef %or32.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %28 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %val.i.i, align 4, !annotation !186
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 10, ptr noundef nonnull %val.i.i) #7
  %29 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val.i.i, align 4
  %and.i.i = and i32 %30, -2
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 10, i32 noundef %and.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 4, ptr noundef nonnull %val.i) #7
  %31 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val.i, align 4
  %and42.i = and i32 %32, -65535
  %or59.i = or i32 %and42.i, 20198
  store i32 %or59.i, ptr %val.i, align 4
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 4, i32 noundef %or59.i) #7
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 6, ptr noundef nonnull %val.i) #7
  %33 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val.i, align 4
  %35 = load i32, ptr @preA3Chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool70.not.i = icmp eq i32 %35, 0
  %or69.i = and i32 %34, -65536
  %storemerge2.v.i = select i1 %tobool70.not.i, i32 416, i32 336
  %and75.i = or i32 %or69.i, %storemerge2.v.i
  %or79.i = or i32 %and75.i, 21519
  %36 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or79.i, ptr %val.i, align 4
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 6, i32 noundef %or79.i) #7
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 52, ptr noundef nonnull %val.i) #7
  %37 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val.i, align 4
  %and81.i = and i32 %38, -2
  store i32 %and81.i, ptr %val.i, align 4
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 52, i32 noundef %and81.i) #7
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 10, ptr noundef nonnull %val.i) #7
  %39 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val.i, align 4
  %41 = load i32, ptr @preA3Chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool89.not.i = icmp eq i32 %41, 0
  %or92.i = or i32 %40, 61454
  %or86.i = and i32 %40, -61455
  %or95.i = or i32 %or86.i, 61448
  %storemerge3.i = select i1 %tobool89.not.i, i32 %or92.i, i32 %or95.i
  %42 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %storemerge3.i, ptr %val.i, align 4
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 10, i32 noundef %storemerge3.i) #7
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 12, ptr noundef nonnull %val.i) #7
  %43 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val.i, align 4
  %and97.i = and i32 %44, -1541
  %45 = load i32, ptr @preA3Chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool98.not.i = icmp eq i32 %45, 0
  %cond.i = select i1 %tobool98.not.i, i32 1024, i32 0
  %or100.i = or i32 %cond.i, %and97.i
  %shl104.i = select i1 %tobool98.not.i, i32 0, i32 4
  %or106.i = or i32 %or100.i, %shl104.i
  %46 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or106.i, ptr %val.i, align 4
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 12, i32 noundef %or106.i) #7
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 18, ptr noundef nonnull %val.i) #7
  %47 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val.i, align 4
  %and109.i = and i32 %48, -1017
  %or114.i = or i32 %and109.i, 440
  store i32 %or114.i, ptr %val.i, align 4
  %49 = load i32, ptr @preA3Chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool115.not.i = icmp eq i32 %49, 0
  br i1 %tobool115.not.i, label %if.then116.i, label %do.end60.if.end121.i_crit_edge

do.end60.if.end121.i_crit_edge:                   ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121.i

if.then116.i:                                     ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #9
  %and119.i = and i32 %or114.i, -583
  %50 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and119.i, ptr %val.i, align 4
  br label %if.end121.i

if.end121.i:                                      ; preds = %if.then116.i, %do.end60.if.end121.i_crit_edge
  %51 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val.i, align 4
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 18, i32 noundef %52) #7
  %53 = load i32, ptr @preA3Chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool122.not.i = icmp eq i32 %53, 0
  br i1 %tobool122.not.i, label %if.then123.i, label %if.end121.i.xgene_phy_sata_cfg_cmu_core.exit_crit_edge

if.end121.i.xgene_phy_sata_cfg_cmu_core.exit_crit_edge: ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_phy_sata_cfg_cmu_core.exit

if.then123.i:                                     ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 20, ptr noundef nonnull %val.i) #7
  %54 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val.i, align 4
  %or125.i = or i32 %55, 1
  store i32 %or125.i, ptr %val.i, align 4
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 20, i32 noundef %or125.i) #7
  br label %xgene_phy_sata_cfg_cmu_core.exit

xgene_phy_sata_cfg_cmu_core.exit:                 ; preds = %if.then123.i, %if.end121.i.xgene_phy_sata_cfg_cmu_core.exit_crit_edge
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 32, ptr noundef nonnull %val.i) #7
  %56 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val.i, align 4
  %58 = load i32, ptr @preA3Chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool134.not.i = icmp eq i32 %58, 0
  %or140.i = or i32 %57, 124
  %or131.i = and i32 %57, -125
  %or137.i = or i32 %or131.i, 112
  %storemerge4.i = select i1 %tobool134.not.i, i32 %or140.i, i32 %or137.i
  %59 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %storemerge4.i, ptr %val.i, align 4
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 32, i32 noundef %storemerge4.i) #7
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 60, ptr noundef nonnull %val.i) #7
  %60 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %val.i, align 4
  %and144.i = and i32 %61, -15
  %or145.i = or i32 %and144.i, 6
  store i32 %or145.i, ptr %val.i, align 4
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 60, i32 noundef %or145.i) #7
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 62, i32 noundef 15) #7
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 64, ptr noundef nonnull %val.i) #7
  %62 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %val.i, align 4
  %64 = load i32, ptr @preA3Chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool150.not.i = icmp eq i32 %64, 0
  %or147.i = and i32 %63, -391
  %or156.i = or i32 %or147.i, 134
  %or153.i = or i32 %63, 390
  %storemerge5.i = select i1 %tobool150.not.i, i32 %or156.i, i32 %or153.i
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 64, i32 noundef %storemerge5.i) #7
  %65 = load i32, ptr @preA3Chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool159.not.i = icmp eq i32 %65, 0
  %..i = select i1 %tobool159.not.i, i32 34620, i32 36135
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 68, i32 noundef %..i) #7
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 74, i32 noundef 61455) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i4) #7
  %66 = ptrtoint ptr %val.i4 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %val.i4, align 4, !annotation !186
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %xgene_phy_sata_cfg_cmu_core.exit
  %lane.0352.i = phi i32 [ 0, %xgene_phy_sata_cfg_cmu_core.exit ], [ %inc203.i, %if.end.i.for.body.i_crit_edge ]
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 294, i32 noundef 6) #7
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 0, ptr noundef nonnull %val.i4) #7
  %67 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %val.i4, align 4
  %and.i = and i32 %68, -65535
  %or4.i = or i32 %and.i, 33824
  store i32 %or4.i, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 0, i32 noundef %or4.i) #7
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 2, ptr noundef nonnull %val.i4) #7
  %69 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %val.i4, align 4
  %or6.i = and i32 %70, -65409
  %mul.i = mul nuw nsw i32 %lane.0352.i, 3
  %arrayidx.i = getelementptr [2 x i32], ptr %sata_param, i32 0, i32 %lane.0352.i
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %72, %mul.i
  %arrayidx9.i = getelementptr %struct.xgene_phy_ctx, ptr %ctx, i32 0, i32 6, i32 2, i32 %add.i
  %73 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx9.i, align 4
  %shl.i = shl i32 %74, 7
  %and10.i = and i32 %shl.i, 3968
  %and7.i = or i32 %or6.i, %and10.i
  %or11.i = or i32 %and7.i, 28672
  store i32 %or11.i, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 2, i32 noundef %or11.i) #7
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 4, ptr noundef nonnull %val.i4) #7
  %75 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %val.i4, align 4
  %or13.i = and i32 %76, -481
  %or17.i = or i32 %or13.i, 352
  store i32 %or17.i, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 4, i32 noundef %or17.i) #7
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 8, ptr noundef nonnull %val.i4) #7
  %77 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %val.i4, align 4
  %and18.i = and i32 %78, -14337
  %or19.i = or i32 %and18.i, 6144
  store i32 %or19.i, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 8, i32 noundef %or19.i) #7
  %79 = load i32, ptr @preA3Chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.i5 = icmp eq i32 %79, 0
  br i1 %tobool.not.i5, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 2, ptr noundef nonnull %val.i4) #7
  %80 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %val.i4, align 4
  %and20.i = and i32 %81, -103
  %or23.i = or i32 %and20.i, 68
  store i32 %or23.i, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 2, i32 noundef %or23.i) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 10, ptr noundef nonnull %val.i4) #7
  %82 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %val.i4, align 4
  %and24.i = and i32 %83, -65536
  %84 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx.i, align 4
  %add30.i = add i32 %85, %mul.i
  %arrayidx31.i = getelementptr %struct.xgene_phy_ctx, ptr %ctx, i32 0, i32 6, i32 6, i32 %add30.i
  %86 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx31.i, align 4
  %shl32.i = shl i32 %87, 11
  %and33.i = and i32 %shl32.i, 63488
  %or34.i = or i32 %and33.i, %and24.i
  %arrayidx42.i = getelementptr %struct.xgene_phy_ctx, ptr %ctx, i32 0, i32 6, i32 8, i32 %add30.i
  %88 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx42.i, align 4
  %shl43.i = shl i32 %89, 5
  %and44.i = and i32 %shl43.i, 2016
  %or45.i = or i32 %or34.i, %and44.i
  %arrayidx53.i = getelementptr %struct.xgene_phy_ctx, ptr %ctx, i32 0, i32 6, i32 7, i32 %add30.i
  %90 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx53.i, align 4
  %and55.i = and i32 %91, 31
  %or56.i = or i32 %or45.i, %and55.i
  store i32 %or56.i, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 10, i32 noundef %or56.i) #7
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 12, ptr noundef nonnull %val.i4) #7
  %92 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %val.i4, align 4
  %and57.i = and i32 %93, -1996
  %94 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx.i, align 4
  %add63.i = add i32 %95, %mul.i
  %arrayidx64.i = getelementptr %struct.xgene_phy_ctx, ptr %ctx, i32 0, i32 6, i32 5, i32 %add63.i
  %96 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx64.i, align 4
  %shl65.i = shl i32 %97, 7
  %and66.i = and i32 %shl65.i, 1920
  %or67.i = or i32 %and57.i, %and66.i
  %or69.i6 = or i32 %or67.i, 64
  store i32 %or69.i6, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 12, i32 noundef %or69.i6) #7
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 14, ptr noundef nonnull %val.i4) #7
  %98 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %val.i4, align 4
  %and78.i = and i32 %99, -14401
  %or79.i7 = or i32 %and78.i, 6144
  store i32 %or79.i7, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 14, i32 noundef %or79.i7) #7
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 16, ptr noundef nonnull %val.i4) #7
  %100 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %val.i4, align 4
  %or81.i = and i32 %101, -19441
  %or89.i = or i32 %or81.i, 16960
  store i32 %or89.i, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 16, i32 noundef %or89.i) #7
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 22, ptr noundef nonnull %val.i4) #7
  %102 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %val.i4, align 4
  %and90.i = and i32 %103, -63489
  store i32 %and90.i, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 22, i32 noundef %and90.i) #7
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 24, ptr noundef nonnull %val.i4) #7
  %104 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %val.i4, align 4
  %or93.i = and i32 %105, -8199
  %and94.i = or i32 %or93.i, 8192
  store i32 %and94.i, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 24, i32 noundef %and94.i) #7
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 52, ptr noundef nonnull %val.i4) #7
  %106 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %val.i4, align 4
  %and100.i = and i32 %107, -14345
  %or101.i = or i32 %and100.i, 8
  store i32 %or101.i, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 52, i32 noundef %or101.i) #7
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 56, i32 noundef 0) #7
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 62, i32 noundef 0) #7
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 122, ptr noundef nonnull %val.i4) #7
  %108 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %val.i4, align 4
  %or103.i = and i32 %109, -217
  %and104.i = or i32 %or103.i, 16
  store i32 %and104.i, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 122, i32 noundef %and104.i) #7
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 124, ptr noundef nonnull %val.i4) #7
  %110 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %val.i4, align 4
  %and108.i = and i32 %111, -14337
  store i32 %and108.i, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 124, i32 noundef %and108.i) #7
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 162, ptr noundef nonnull %val.i4) #7
  %112 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %val.i4, align 4
  %and115.i = and i32 %113, -65535
  %or120.i = or i32 %and115.i, 29596
  store i32 %or120.i, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 162, i32 noundef %or120.i) #7
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 164, ptr noundef nonnull %val.i4) #7
  %114 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %val.i4, align 4
  %and115.1.i = and i32 %115, -65535
  %or120.1.i = or i32 %and115.1.i, 29596
  store i32 %or120.1.i, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 164, i32 noundef %or120.1.i) #7
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 166, ptr noundef nonnull %val.i4) #7
  %116 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %val.i4, align 4
  %and115.2.i = and i32 %117, -65535
  %or120.2.i = or i32 %and115.2.i, 29596
  store i32 %or120.2.i, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 166, i32 noundef %or120.2.i) #7
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 168, ptr noundef nonnull %val.i4) #7
  %118 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %val.i4, align 4
  %and115.3.i = and i32 %119, -65535
  %or120.3.i = or i32 %and115.3.i, 29596
  store i32 %or120.3.i, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 168, i32 noundef %or120.3.i) #7
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 170, ptr noundef nonnull %val.i4) #7
  %120 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %val.i4, align 4
  %and115.4.i = and i32 %121, -65535
  %or120.4.i = or i32 %and115.4.i, 29596
  store i32 %or120.4.i, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 170, i32 noundef %or120.4.i) #7
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 172, ptr noundef nonnull %val.i4) #7
  %122 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %val.i4, align 4
  %and115.5.i = and i32 %123, -65535
  %or120.5.i = or i32 %and115.5.i, 29596
  store i32 %or120.5.i, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 172, i32 noundef %or120.5.i) #7
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 174, ptr noundef nonnull %val.i4) #7
  %124 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %val.i4, align 4
  %and115.6.i = and i32 %125, -65535
  %or120.6.i = or i32 %and115.6.i, 29596
  store i32 %or120.6.i, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 174, i32 noundef %or120.6.i) #7
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 176, ptr noundef nonnull %val.i4) #7
  %126 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %val.i4, align 4
  %and115.7.i = and i32 %127, -65535
  %or120.7.i = or i32 %and115.7.i, 29596
  store i32 %or120.7.i, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 176, i32 noundef %or120.7.i) #7
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 178, ptr noundef nonnull %val.i4) #7
  %128 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %val.i4, align 4
  %and115.8.i = and i32 %129, -65535
  %or120.8.i = or i32 %and115.8.i, 29596
  store i32 %or120.8.i, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 178, i32 noundef %or120.8.i) #7
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 192, ptr noundef nonnull %val.i4) #7
  %130 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %val.i4, align 4
  %and126.i = and i32 %131, -65535
  %or131.i8 = or i32 %and126.i, 33824
  store i32 %or131.i8, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 192, i32 noundef %or131.i8) #7
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 194, ptr noundef nonnull %val.i4) #7
  %132 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %val.i4, align 4
  %and126.1.i = and i32 %133, -65535
  %or131.1.i = or i32 %and126.1.i, 33824
  store i32 %or131.1.i, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 194, i32 noundef %or131.1.i) #7
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 196, ptr noundef nonnull %val.i4) #7
  %134 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %val.i4, align 4
  %and126.2.i = and i32 %135, -65535
  %or131.2.i = or i32 %and126.2.i, 33824
  store i32 %or131.2.i, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 196, i32 noundef %or131.2.i) #7
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 198, ptr noundef nonnull %val.i4) #7
  %136 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %val.i4, align 4
  %and140.i = and i32 %137, -65535
  %or145.i9 = or i32 %and140.i, 14798
  store i32 %or145.i9, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 198, i32 noundef %or145.i9) #7
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 200, ptr noundef nonnull %val.i4) #7
  %138 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %val.i4, align 4
  %and140.1.i = and i32 %139, -65535
  %or145.1.i = or i32 %and140.1.i, 14798
  store i32 %or145.1.i, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 200, i32 noundef %or145.1.i) #7
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 202, ptr noundef nonnull %val.i4) #7
  %140 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %val.i4, align 4
  %and140.2.i = and i32 %141, -65535
  %or145.2.i = or i32 %and140.2.i, 14798
  store i32 %or145.2.i, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 202, i32 noundef %or145.2.i) #7
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 204, ptr noundef nonnull %val.i4) #7
  %142 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %val.i4, align 4
  %and149.i = and i32 %143, -97
  store i32 %and149.i, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 204, i32 noundef %and149.i) #7
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 228, i32 noundef 65504) #7
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 250, ptr noundef nonnull %val.i4) #7
  %144 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %val.i4, align 4
  %and151.i = and i32 %145, -65283
  %146 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx.i, align 4
  %add157.i = add i32 %147, %mul.i
  %arrayidx158.i = getelementptr %struct.xgene_phy_ctx, ptr %ctx, i32 0, i32 6, i32 4, i32 %add157.i
  %148 = ptrtoint ptr %arrayidx158.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx158.i, align 4
  %shl159.i = shl i32 %149, 8
  %and160.i = and i32 %shl159.i, 256
  %arrayidx169.i = getelementptr %struct.xgene_phy_ctx, ptr %ctx, i32 0, i32 6, i32 3, i32 %add157.i
  %150 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx169.i, align 4
  %shl170.i = shl i32 %151, 9
  %and171.i = and i32 %shl170.i, 65024
  %or161.i = or i32 %and151.i, %and160.i
  %or172.i = or i32 %or161.i, %and171.i
  %or174.i = or i32 %or172.i, 2
  store i32 %or174.i, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 250, i32 noundef %or174.i) #7
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 254, ptr noundef nonnull %val.i4) #7
  %152 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %val.i4, align 4
  %and175.i = and i32 %153, -9
  store i32 %and175.i, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 254, i32 noundef %and175.i) #7
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 256, ptr noundef nonnull %val.i4) #7
  %154 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %val.i4, align 4
  %or178.i = or i32 %155, 12
  store i32 %or178.i, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 256, i32 noundef %or178.i) #7
  call fastcc void @serdes_rd(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 290, ptr noundef nonnull %val.i4) #7
  %156 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %val.i4, align 4
  %158 = load i32, ptr @preA3Chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool183.not.i = icmp eq i32 %158, 0
  %and181.i = and i32 %157, -49160
  %storemerge.i10.v = select i1 %tobool183.not.i, i32 49152, i32 49158
  %storemerge.i10 = or i32 %storemerge.i10.v, %and181.i
  %159 = ptrtoint ptr %val.i4 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %storemerge.i10, ptr %val.i4, align 4
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 290, i32 noundef %storemerge.i10) #7
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 296, i32 noundef 65535) #7
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 298, i32 noundef 65535) #7
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 300, i32 noundef 65535) #7
  tail call fastcc void @serdes_wr(ptr noundef %ctx, i32 noundef %lane.0352.i, i32 noundef 302, i32 noundef 65535) #7
  %inc203.i = add nuw nsw i32 %lane.0352.i, 1
  %exitcond.not.i = icmp eq i32 %inc203.i, 2
  br i1 %exitcond.not.i, label %xgene_phy_sata_cfg_lanes.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

xgene_phy_sata_cfg_lanes.exit:                    ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i4) #7
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !199
  %161 = and i32 %160, -59137
  %162 = or i32 %161, 25344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %162) #7, !srcloc !188
  %call91 = tail call fastcc i32 @xgene_phy_cal_rdy_chk(ptr noundef %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %xgene_phy_sata_cfg_lanes.exit.if.end103_crit_edge, label %if.end94

xgene_phy_sata_cfg_lanes.exit.if.end103_crit_edge: ; preds = %xgene_phy_sata_cfg_lanes.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.end94:                                         ; preds = %xgene_phy_sata_cfg_lanes.exit
  tail call fastcc void @xgene_phy_pdwn_force_vco(ptr noundef %ctx)
  %call91.1 = tail call fastcc i32 @xgene_phy_cal_rdy_chk(ptr noundef %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.1)
  %tobool92.not.1 = icmp eq i32 %call91.1, 0
  br i1 %tobool92.not.1, label %if.end94.if.end103_crit_edge, label %if.end94.1

if.end94.if.end103_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.end94.1:                                       ; preds = %if.end94
  tail call fastcc void @xgene_phy_pdwn_force_vco(ptr noundef %ctx)
  %call91.2 = tail call fastcc i32 @xgene_phy_cal_rdy_chk(ptr noundef %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.2)
  %tobool92.not.2 = icmp eq i32 %call91.2, 0
  br i1 %tobool92.not.2, label %if.end94.1.if.end103_crit_edge, label %if.end94.2

if.end94.1.if.end103_crit_edge:                   ; preds = %if.end94.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.end94.2:                                       ; preds = %if.end94.1
  tail call fastcc void @xgene_phy_pdwn_force_vco(ptr noundef %ctx)
  %call91.3 = tail call fastcc i32 @xgene_phy_cal_rdy_chk(ptr noundef %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.3)
  %tobool92.not.3 = icmp eq i32 %call91.3, 0
  br i1 %tobool92.not.3, label %if.end94.2.if.end103_crit_edge, label %if.end94.3

if.end94.2.if.end103_crit_edge:                   ; preds = %if.end94.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.end94.3:                                       ; preds = %if.end94.2
  tail call fastcc void @xgene_phy_pdwn_force_vco(ptr noundef %ctx)
  %call91.4 = tail call fastcc i32 @xgene_phy_cal_rdy_chk(ptr noundef %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.4)
  %tobool92.not.4 = icmp eq i32 %call91.4, 0
  br i1 %tobool92.not.4, label %if.end94.3.if.end103_crit_edge, label %if.end94.4

if.end94.3.if.end103_crit_edge:                   ; preds = %if.end94.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.end94.4:                                       ; preds = %if.end94.3
  tail call fastcc void @xgene_phy_pdwn_force_vco(ptr noundef %ctx)
  %call91.5 = tail call fastcc i32 @xgene_phy_cal_rdy_chk(ptr noundef %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.5)
  %tobool92.not.5 = icmp eq i32 %call91.5, 0
  br i1 %tobool92.not.5, label %if.end94.4.if.end103_crit_edge, label %if.end94.5

if.end94.4.if.end103_crit_edge:                   ; preds = %if.end94.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.end94.5:                                       ; preds = %if.end94.4
  tail call fastcc void @xgene_phy_pdwn_force_vco(ptr noundef %ctx)
  %call91.6 = tail call fastcc i32 @xgene_phy_cal_rdy_chk(ptr noundef %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.6)
  %tobool92.not.6 = icmp eq i32 %call91.6, 0
  br i1 %tobool92.not.6, label %if.end94.5.if.end103_crit_edge, label %if.end94.6

if.end94.5.if.end103_crit_edge:                   ; preds = %if.end94.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.end94.6:                                       ; preds = %if.end94.5
  tail call fastcc void @xgene_phy_pdwn_force_vco(ptr noundef %ctx)
  %call91.7 = tail call fastcc i32 @xgene_phy_cal_rdy_chk(ptr noundef %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.7)
  %tobool92.not.7 = icmp eq i32 %call91.7, 0
  br i1 %tobool92.not.7, label %if.end94.6.if.end103_crit_edge, label %if.end94.7

if.end94.6.if.end103_crit_edge:                   ; preds = %if.end94.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.end94.7:                                       ; preds = %if.end94.6
  tail call fastcc void @xgene_phy_pdwn_force_vco(ptr noundef %ctx)
  %call91.8 = tail call fastcc i32 @xgene_phy_cal_rdy_chk(ptr noundef %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.8)
  %tobool92.not.8 = icmp eq i32 %call91.8, 0
  br i1 %tobool92.not.8, label %if.end94.7.if.end103_crit_edge, label %if.end94.8

if.end94.7.if.end103_crit_edge:                   ; preds = %if.end94.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.end94.8:                                       ; preds = %if.end94.7
  tail call fastcc void @xgene_phy_pdwn_force_vco(ptr noundef %ctx)
  %call91.9 = tail call fastcc i32 @xgene_phy_cal_rdy_chk(ptr noundef %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.9)
  %tobool92.not.9 = icmp eq i32 %call91.9, 0
  br i1 %tobool92.not.9, label %if.end94.8.if.end103_crit_edge, label %if.end94.9

if.end94.8.if.end103_crit_edge:                   ; preds = %if.end94.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.end94.9:                                       ; preds = %if.end94.8
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @xgene_phy_pdwn_force_vco(ptr noundef %ctx)
  %163 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %164, ptr noundef nonnull @.str.26) #10
  br label %if.end103

if.end103:                                        ; preds = %if.end94.9, %if.end94.8.if.end103_crit_edge, %if.end94.7.if.end103_crit_edge, %if.end94.6.if.end103_crit_edge, %if.end94.5.if.end103_crit_edge, %if.end94.4.if.end103_crit_edge, %if.end94.3.if.end103_crit_edge, %if.end94.2.if.end103_crit_edge, %if.end94.1.if.end103_crit_edge, %if.end94.if.end103_crit_edge, %xgene_phy_sata_cfg_lanes.exit.if.end103_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgene_phy_cfg_cmu_clk_type(ptr nocapture noundef readonly %ctx) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !186
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 24, ptr noundef nonnull %val)
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %and = and i32 %2, -241
  %or = or i32 %and, 16
  store i32 %or, ptr %val, align 4
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 24, i32 noundef %or)
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 26, i32 noundef 546)
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 28, i32 noundef 8741)
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 0, ptr noundef nonnull %val)
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and1 = and i32 %4, -8193
  store i32 %and1, ptr %val, align 4
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 0, i32 noundef %and1)
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 2, ptr noundef nonnull %val)
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and3 = and i32 %6, -2
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 2, i32 noundef %and3)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_phy_cfg_cmu_clk_type.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_phy_cfg_cmu_clk_type, %if.then7)) #7
          to label %if.end57 [label %if.then7], !srcloc !185

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_phy_cfg_cmu_clk_type.__UNIQUE_ID_ddebug295, ptr noundef %8, ptr noundef nonnull @.str.28) #7
  br label %if.end57

if.end57:                                         ; preds = %if.then7, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgene_phy_cal_rdy_chk(ptr noundef readonly %ctx) unnamed_addr #2 align 64 {
entry:
  %val.i15 = alloca i32, align 4
  %val.i12 = alloca i32, align 4
  %val.i9 = alloca i32, align 4
  %val.i7 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sds_base = getelementptr inbounds %struct.xgene_phy_ctx, ptr %ctx, i32 0, i32 4
  %0 = ptrtoint ptr %sds_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sds_base, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %add.ptr = getelementptr i8, ptr %1, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -553648128) #7, !srcloc !188
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !202
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !186
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 10, ptr noundef nonnull %val.i) #7
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %or.i = or i32 %6, 1
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 10, i32 noundef %or.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  tail call void @usleep_range_state(i32 noundef 800, i32 noundef 1000, i32 noundef 2) #7
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 2, ptr noundef nonnull %val)
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and = and i32 %8, -9
  store i32 %and, ptr %val, align 4
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 2, i32 noundef %and)
  tail call void @usleep_range_state(i32 noundef 800, i32 noundef 1000, i32 noundef 2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i7) #7
  %9 = ptrtoint ptr %val.i7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val.i7, align 4, !annotation !186
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 64, ptr noundef nonnull %val.i7) #7
  %10 = ptrtoint ptr %val.i7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i7, align 4
  %or.i8 = or i32 %11, 16384
  store i32 %or.i8, ptr %val.i7, align 4
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 64, i32 noundef %or.i8) #7
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 64, ptr noundef nonnull %val.i7) #7
  %12 = ptrtoint ptr %val.i7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.i7, align 4
  %and.i = and i32 %13, -16385
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 64, i32 noundef %and.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i7) #7
  tail call void @usleep_range_state(i32 noundef 800, i32 noundef 1000, i32 noundef 2) #7
  %14 = load i32, ptr @preA3Chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %entry.do.body17.preheader_crit_edge, label %if.end4

entry.do.body17.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17.preheader

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 34, ptr noundef nonnull %val)
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %and5 = and i32 %16, -32737
  %or6 = or i32 %and5, 4608
  store i32 %or6, ptr %val, align 4
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 34, i32 noundef %or6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i9) #7
  %17 = ptrtoint ptr %val.i9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %val.i9, align 4, !annotation !186
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 34, ptr noundef nonnull %val.i9) #7
  %18 = ptrtoint ptr %val.i9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.i9, align 4
  %or.i10 = or i32 %19, 32768
  store i32 %or.i10, ptr %val.i9, align 4
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 34, i32 noundef %or.i10) #7
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 34, ptr noundef nonnull %val.i9) #7
  %20 = ptrtoint ptr %val.i9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.i9, align 4
  %and.i11 = and i32 %21, -32769
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 34, i32 noundef %and.i11) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i9) #7
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 34, ptr noundef nonnull %val)
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  %and9 = and i32 %23, -32737
  %or10 = or i32 %and9, 10496
  store i32 %or10, ptr %val, align 4
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 34, i32 noundef %or10)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i12) #7
  %24 = ptrtoint ptr %val.i12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %val.i12, align 4, !annotation !186
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 32, ptr noundef nonnull %val.i12) #7
  %25 = ptrtoint ptr %val.i12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val.i12, align 4
  %or.i13 = or i32 %26, 1
  store i32 %or.i13, ptr %val.i12, align 4
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 32, i32 noundef %or.i13) #7
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 32, ptr noundef nonnull %val.i12) #7
  %27 = ptrtoint ptr %val.i12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val.i12, align 4
  %and.i14 = and i32 %28, -2
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 32, i32 noundef %and.i14) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i12) #7
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 34, ptr noundef nonnull %val)
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val, align 4
  %and13 = and i32 %30, -32737
  %or14 = or i32 %and13, 10240
  store i32 %or14, ptr %val, align 4
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 34, i32 noundef %or14)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i15) #7
  %31 = ptrtoint ptr %val.i15 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %val.i15, align 4, !annotation !186
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 32, ptr noundef nonnull %val.i15) #7
  %32 = ptrtoint ptr %val.i15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val.i15, align 4
  %or.i16 = or i32 %33, 2
  store i32 %or.i16, ptr %val.i15, align 4
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 32, i32 noundef %or.i16) #7
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 32, ptr noundef nonnull %val.i15) #7
  %34 = ptrtoint ptr %val.i15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val.i15, align 4
  %and.i17 = and i32 %35, -3
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 32, i32 noundef %and.i17) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i15) #7
  br label %do.body17.preheader

do.body17.preheader:                              ; preds = %if.end4, %entry.do.body17.preheader_crit_edge
  br label %do.body17

do.body17:                                        ; preds = %if.end21.do.body17_crit_edge, %do.body17.preheader
  %loop.0 = phi i32 [ %dec, %if.end21.do.body17_crit_edge ], [ 100, %do.body17.preheader ]
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 14, ptr noundef nonnull %val)
  %36 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val, align 4
  %38 = and i32 %37, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool19.not = icmp eq i32 %38, 0
  br i1 %tobool19.not, label %if.end21, label %do.body17.do.end24_crit_edge

do.body17.do.end24_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24

if.end21:                                         ; preds = %do.body17
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #7
  %dec = add nsw i32 %loop.0, -1
  %cmp23.not = icmp eq i32 %dec, 0
  br i1 %cmp23.not, label %if.end21.do.end24_crit_edge, label %if.end21.do.body17_crit_edge

if.end21.do.body17_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

if.end21.do.end24_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24

do.end24:                                         ; preds = %if.end21.do.end24_crit_edge, %do.body17.do.end24_crit_edge
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 14, ptr noundef nonnull %val)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_phy_cal_rdy_chk.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_phy_cal_rdy_chk, %if.then31)) #7
          to label %do.end37 [label %if.then31], !srcloc !185

if.then31:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctx, align 4
  %41 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val, align 4
  %43 = and i32 %42, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool34.not = icmp eq i32 %43, 0
  %cond = select i1 %tobool34.not, ptr @.str.45, ptr @.str.44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_phy_cal_rdy_chk.__UNIQUE_ID_ddebug298, ptr noundef %40, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond) #7
  br label %do.end37

do.end37:                                         ; preds = %if.then31, %do.end24
  %44 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val, align 4
  %46 = and i32 %45, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool40.not = icmp eq i32 %46, 0
  br i1 %tobool40.not, label %do.body47, label %do.end44

do.end44:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.46) #10
  br label %cleanup

do.body47:                                        ; preds = %do.end37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_phy_cal_rdy_chk.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_phy_cal_rdy_chk, %if.then59)) #7
          to label %do.end63 [label %if.then59], !srcloc !185

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_phy_cal_rdy_chk.__UNIQUE_ID_ddebug299, ptr noundef %50, ptr noundef nonnull @.str.47) #7
  br label %do.end63

do.end63:                                         ; preds = %if.then59, %do.body47
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 30, ptr noundef nonnull %val)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_phy_cal_rdy_chk.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_phy_cal_rdy_chk, %if.then76)) #7
          to label %cleanup [label %if.then76], !srcloc !185

if.then76:                                        ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ctx, align 4
  %53 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %val, align 4
  %and78 = and i32 %54, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  %cond80 = select i1 %tobool79.not, ptr @.str.50, ptr @.str.49
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_phy_cal_rdy_chk.__UNIQUE_ID_ddebug300, ptr noundef %52, ptr noundef nonnull @.str.48, ptr noundef nonnull %cond80) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %do.end63, %do.end44
  %retval.0 = phi i32 [ -1, %do.end44 ], [ 0, %if.then76 ], [ 0, %do.end63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgene_phy_pdwn_force_vco(ptr nocapture noundef readonly %ctx) unnamed_addr #2 align 64 {
entry:
  %val.i1 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !186
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_phy_pdwn_force_vco.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_phy_pdwn_force_vco, %if.then)) #7
          to label %if.then3 [label %if.then], !srcloc !185

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_phy_pdwn_force_vco.__UNIQUE_ID_ddebug301, ptr noundef %2, ptr noundef nonnull @.str.52) #7
  br label %if.then3

if.then3:                                         ; preds = %if.then, %entry
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 32, ptr noundef nonnull %val)
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %or = or i32 %4, 28
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 32, i32 noundef %or)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val.i, align 4, !annotation !186
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 0, ptr noundef nonnull %val.i) #7
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val.i, align 4
  %or.i = or i32 %7, 16384
  store i32 %or.i, ptr %val.i, align 4
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 0, i32 noundef %or.i) #7
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 0, ptr noundef nonnull %val.i) #7
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val.i, align 4
  %and.i = and i32 %9, -16385
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 0, i32 noundef %and.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i1) #7
  %10 = ptrtoint ptr %val.i1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val.i1, align 4, !annotation !186
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 64, ptr noundef nonnull %val.i1) #7
  %11 = ptrtoint ptr %val.i1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i1, align 4
  %or.i2 = or i32 %12, 16384
  store i32 %or.i2, ptr %val.i1, align 4
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 64, i32 noundef %or.i2) #7
  call fastcc void @cmu_rd(ptr noundef %ctx, i32 noundef 64, ptr noundef nonnull %val.i1) #7
  %13 = ptrtoint ptr %val.i1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i1, align 4
  %and.i3 = and i32 %14, -16385
  tail call fastcc void @cmu_wr(ptr noundef %ctx, i32 noundef 64, i32 noundef %and.i3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cmu_rd(ptr nocapture noundef readonly %ctx, i32 noundef %reg, ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sds_base1 = getelementptr inbounds %struct.xgene_phy_ctx, ptr %ctx, i32 0, i32 4
  %0 = ptrtoint ptr %sds_base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sds_base1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %shl.i = shl i32 %reg, 4
  %and1.i = and i32 %shl.i, 4194288
  %or.i = or i32 %and1.i, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  tail call void @arm_heavy_mb() #7
  %3 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %add.ptr.i = getelementptr i8, ptr %1, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #7, !srcloc !188
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !204
  %add.neg.i = sub i32 -100, %2
  br label %do.body4.i

do.body4.i:                                       ; preds = %land.rhs.i.do.body4.i_crit_edge, %entry
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !205
  %6 = and i32 %5, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %do.body4.i.do.end13.i_crit_edge

do.body4.i.do.end13.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i

land.rhs.i:                                       ; preds = %do.body4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %7
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %land.rhs.i.do.body4.i_crit_edge, label %land.rhs.i.do.end13.i_crit_edge

land.rhs.i.do.end13.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i

land.rhs.i.do.body4.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body4.i

do.end13.i:                                       ; preds = %land.rhs.i.do.end13.i_crit_edge, %do.body4.i.do.end13.i_crit_edge
  %add.ptr16.i = getelementptr i8, ptr %1, i32 64
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #7, !srcloc !189
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %data, align 4
  br i1 %tobool.not.i, label %do.end24.i, label %do.end13.i.sds_rd.exit_crit_edge

do.end13.i.sds_rd.exit_crit_edge:                 ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sds_rd.exit

do.end24.i:                                       ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %add.ptr.i, i32 noundef %reg, i32 noundef %9) #10
  br label %sds_rd.exit

sds_rd.exit:                                      ; preds = %do.end24.i, %do.end13.i.sds_rd.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmu_rd.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmu_rd, %if.then5)) #7
          to label %do.end [label %if.then5], !srcloc !185

if.then5:                                         ; preds = %sds_rd.exit
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmu_rd.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.32, i32 noundef %reg, i32 noundef %12) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %sds_rd.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cmu_wr(ptr nocapture noundef readonly %ctx, i32 noundef %reg, i32 noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sds_base1 = getelementptr inbounds %struct.xgene_phy_ctx, ptr %ctx, i32 0, i32 4
  %0 = ptrtoint ptr %sds_base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sds_base1, align 4
  tail call fastcc void @sds_wr(ptr noundef %1, i32 noundef %reg, i32 noundef %data)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %shl.i = shl i32 %reg, 4
  %and1.i = and i32 %shl.i, 4194288
  %or.i = or i32 %and1.i, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  tail call void @arm_heavy_mb() #7
  %3 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %add.ptr.i = getelementptr i8, ptr %1, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #7, !srcloc !188
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !204
  %add.neg.i = sub i32 -100, %2
  br label %do.body4.i

do.body4.i:                                       ; preds = %land.rhs.i.do.body4.i_crit_edge, %entry
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !205
  %6 = and i32 %5, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %do.body4.i.do.end13.i_crit_edge

do.body4.i.do.end13.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i

land.rhs.i:                                       ; preds = %do.body4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %7
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %land.rhs.i.do.body4.i_crit_edge, label %land.rhs.i.do.end13.i_crit_edge

land.rhs.i.do.end13.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i

land.rhs.i.do.body4.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body4.i

do.end13.i:                                       ; preds = %land.rhs.i.do.end13.i_crit_edge, %do.body4.i.do.end13.i_crit_edge
  %add.ptr16.i = getelementptr i8, ptr %1, i32 64
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #7, !srcloc !189
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  br i1 %tobool.not.i, label %do.end24.i, label %do.end13.i.sds_rd.exit_crit_edge

do.end13.i.sds_rd.exit_crit_edge:                 ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sds_rd.exit

do.end24.i:                                       ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %add.ptr.i, i32 noundef %reg, i32 noundef %9) #10
  br label %sds_rd.exit

sds_rd.exit:                                      ; preds = %do.end24.i, %do.end13.i.sds_rd.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmu_wr.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmu_wr, %if.then5)) #7
          to label %do.end [label %if.then5], !srcloc !185

if.then5:                                         ; preds = %sds_rd.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmu_wr.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.36, i32 noundef %reg, i32 noundef %data, i32 noundef %9) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %sds_rd.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sds_wr(ptr noundef %csr_base, i32 noundef %addr, i32 noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %shl = shl i32 %addr, 4
  %and1 = and i32 %shl, 4194288
  %or = or i32 %and1, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !207
  tail call void @arm_heavy_mb() #7
  %1 = tail call i32 @llvm.bswap.i32(i32 %data)
  %add.ptr = getelementptr i8, ptr %csr_base, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #7, !srcloc !188
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %3 = tail call i32 @llvm.bswap.i32(i32 %or)
  %add.ptr7 = getelementptr i8, ptr %csr_base, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %3) #7, !srcloc !188
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #7, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  %add.neg = sub i32 -100, %0
  br label %do.body14

do.body14:                                        ; preds = %land.rhs.do.body14_crit_edge, %entry
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #7, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  %6 = and i32 %5, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %land.rhs, label %do.body14.if.end_crit_edge

do.body14.if.end_crit_edge:                       ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %do.body14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %7
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %land.rhs.do.body14_crit_edge, label %do.end28.critedge

land.rhs.do.body14_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body14

do.end28.critedge:                                ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %add.ptr7, i32 noundef %addr, i32 noundef %data) #10
  br label %if.end

if.end:                                           ; preds = %do.end28.critedge, %do.body14.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @serdes_wr(ptr nocapture noundef readonly %ctx, i32 noundef %lane, i32 noundef %reg, i32 noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sds_base1 = getelementptr inbounds %struct.xgene_phy_ctx, ptr %ctx, i32 0, i32 4
  %0 = ptrtoint ptr %sds_base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sds_base1, align 4
  %add = add i32 %reg, 1024
  %mul = shl i32 %lane, 9
  %add2 = add i32 %add, %mul
  tail call fastcc void @sds_wr(ptr noundef %1, i32 noundef %add2, i32 noundef %data)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %shl.i = shl i32 %add2, 4
  %and1.i = and i32 %shl.i, 4194288
  %or.i = or i32 %and1.i, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  tail call void @arm_heavy_mb() #7
  %3 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %add.ptr.i = getelementptr i8, ptr %1, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #7, !srcloc !188
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !204
  %add.neg.i = sub i32 -100, %2
  br label %do.body4.i

do.body4.i:                                       ; preds = %land.rhs.i.do.body4.i_crit_edge, %entry
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !205
  %6 = and i32 %5, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %do.body4.i.do.end13.i_crit_edge

do.body4.i.do.end13.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i

land.rhs.i:                                       ; preds = %do.body4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %7
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %land.rhs.i.do.body4.i_crit_edge, label %land.rhs.i.do.end13.i_crit_edge

land.rhs.i.do.end13.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i

land.rhs.i.do.body4.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body4.i

do.end13.i:                                       ; preds = %land.rhs.i.do.end13.i_crit_edge, %do.body4.i.do.end13.i_crit_edge
  %add.ptr16.i = getelementptr i8, ptr %1, i32 64
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #7, !srcloc !189
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  br i1 %tobool.not.i, label %do.end24.i, label %do.end13.i.sds_rd.exit_crit_edge

do.end13.i.sds_rd.exit_crit_edge:                 ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sds_rd.exit

do.end24.i:                                       ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %add.ptr.i, i32 noundef %add2, i32 noundef %9) #10
  br label %sds_rd.exit

sds_rd.exit:                                      ; preds = %do.end24.i, %do.end13.i.sds_rd.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serdes_wr.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serdes_wr, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !185

if.then:                                          ; preds = %sds_rd.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @serdes_wr.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.39, i32 noundef %add2, i32 noundef %data, i32 noundef %9) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %sds_rd.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @serdes_rd(ptr nocapture noundef readonly %ctx, i32 noundef %lane, i32 noundef %reg, ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sds_base1 = getelementptr inbounds %struct.xgene_phy_ctx, ptr %ctx, i32 0, i32 4
  %0 = ptrtoint ptr %sds_base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sds_base1, align 4
  %add = add i32 %reg, 1024
  %mul = shl i32 %lane, 9
  %add2 = add i32 %add, %mul
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %shl.i = shl i32 %add2, 4
  %and1.i = and i32 %shl.i, 4194288
  %or.i = or i32 %and1.i, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  tail call void @arm_heavy_mb() #7
  %3 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %add.ptr.i = getelementptr i8, ptr %1, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #7, !srcloc !188
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !204
  %add.neg.i = sub i32 -100, %2
  br label %do.body4.i

do.body4.i:                                       ; preds = %land.rhs.i.do.body4.i_crit_edge, %entry
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !205
  %6 = and i32 %5, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %do.body4.i.do.end13.i_crit_edge

do.body4.i.do.end13.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i

land.rhs.i:                                       ; preds = %do.body4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %7
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %land.rhs.i.do.body4.i_crit_edge, label %land.rhs.i.do.end13.i_crit_edge

land.rhs.i.do.end13.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i

land.rhs.i.do.body4.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body4.i

do.end13.i:                                       ; preds = %land.rhs.i.do.end13.i_crit_edge, %do.body4.i.do.end13.i_crit_edge
  %add.ptr16.i = getelementptr i8, ptr %1, i32 64
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #7, !srcloc !189
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %data, align 4
  br i1 %tobool.not.i, label %do.end24.i, label %do.end13.i.sds_rd.exit_crit_edge

do.end13.i.sds_rd.exit_crit_edge:                 ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sds_rd.exit

do.end24.i:                                       ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %add.ptr.i, i32 noundef %add2, i32 noundef %9) #10
  br label %sds_rd.exit

sds_rd.exit:                                      ; preds = %do.end24.i, %do.end13.i.sds_rd.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serdes_rd.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serdes_rd, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !185

if.then:                                          ; preds = %sds_rd.exit
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @serdes_rd.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.41, i32 noundef %add2, i32 noundef %12) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %sds_rd.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !14, !15, !17, !18, !19, !20, !21, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !49, !51, !53, !54, !55, !56, !57, !58, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !120, !121, !123, !124, !125, !127, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !157, !159, !160, !162, !164, !166, !168, !169, !171, !172, !174}
!llvm.module.flags = !{!176, !177, !178, !179, !180, !181, !182, !183}
!llvm.ident = !{!184}

!0 = !{ptr @__UNIQUE_ID_preA3Chip289, !1, !"__UNIQUE_ID_preA3Chip289", i1 false, i1 false}
!1 = !{!"../drivers/phy/phy-xgene.c", i32 547, i32 1}
!2 = !{ptr @__param_preA3Chip, !3, !"__param_preA3Chip", i1 false, i1 false}
!3 = !{!"../drivers/phy/phy-xgene.c", i32 548, i32 1}
!4 = !{ptr @__UNIQUE_ID_preA3Chiptype290, !3, !"__UNIQUE_ID_preA3Chiptype290", i1 false, i1 false}
!5 = !{ptr @__initcall__kmod_phy_xgene__318_1717_xgene_phy_driver_init6, !6, !"__initcall__kmod_phy_xgene__318_1717_xgene_phy_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/phy/phy-xgene.c", i32 1717, i32 1}
!7 = !{ptr @__exitcall_xgene_phy_driver_exit, !6, !"__exitcall_xgene_phy_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description319, !9, !"__UNIQUE_ID_description319", i1 false, i1 false}
!9 = !{!"../drivers/phy/phy-xgene.c", i32 1719, i32 1}
!10 = !{ptr @__UNIQUE_ID_author320, !11, !"__UNIQUE_ID_author320", i1 false, i1 false}
!11 = !{!"../drivers/phy/phy-xgene.c", i32 1720, i32 1}
!12 = !{ptr @__UNIQUE_ID_file321, !13, !"__UNIQUE_ID_file321", i1 false, i1 false}
!13 = !{!"../drivers/phy/phy-xgene.c", i32 1721, i32 1}
!14 = !{ptr @__UNIQUE_ID_license322, !13, !"__UNIQUE_ID_license322", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_version323, !16, !"__UNIQUE_ID_version323", i1 false, i1 false}
!16 = !{!"../drivers/phy/phy-xgene.c", i32 1722, i32 1}
!17 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__modver_attr, !16, !"__modver_attr", i1 false, i1 false}
!21 = !{ptr @preA3Chip, !22, !"preA3Chip", i1 false, i1 false}
!22 = !{!"../drivers/phy/phy-xgene.c", i32 546, i32 12}
!23 = !{ptr @__param_str_preA3Chip, !3, !"__param_str_preA3Chip", i1 false, i1 false}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/phy-xgene.c", i32 1713, i32 14}
!26 = !{ptr @xgene_phy_driver, !27, !"xgene_phy_driver", i1 false, i1 false}
!27 = !{!"../drivers/phy/phy-xgene.c", i32 1710, i32 31}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/phy/phy-xgene.c", i32 1672, i32 28}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/phy/phy-xgene.c", i32 1674, i32 28}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/phy/phy-xgene.c", i32 1676, i32 28}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/phy/phy-xgene.c", i32 1678, i32 28}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/phy/phy-xgene.c", i32 1680, i32 28}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/phy/phy-xgene.c", i32 1682, i32 28}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/phy/phy-xgene.c", i32 1684, i32 28}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/phy/phy-xgene.c", i32 1686, i32 28}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/phy/phy-xgene.c", i32 1695, i32 3}
!46 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @xgene_phy_probe.__UNIQUE_ID_ddebug317, !45, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!49 = !{ptr @xgene_phy_ops, !50, !"xgene_phy_ops", i1 false, i1 false}
!50 = !{!"../drivers/phy/phy-xgene.c", i32 1607, i32 29}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/phy/phy-xgene.c", i32 1587, i32 3}
!53 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @xgene_phy_hw_init._entry, !52, !"_entry", i1 false, i1 false}
!57 = !{ptr @xgene_phy_hw_init._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/phy/phy-xgene.c", i32 1603, i32 2}
!60 = !{ptr @xgene_phy_hw_init.__UNIQUE_ID_ddebug316, !59, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/phy/phy-xgene.c", i32 1322, i32 2}
!63 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @xgene_phy_hw_initialize.__UNIQUE_ID_ddebug304, !62, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/phy/phy-xgene.c", i32 1329, i32 3}
!67 = !{ptr @xgene_phy_hw_initialize._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @xgene_phy_hw_initialize._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/phy/phy-xgene.c", i32 1260, i32 2}
!71 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @xgene_phy_hw_init_sata.__UNIQUE_ID_ddebug302, !70, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/phy/phy-xgene.c", i32 1277, i32 2}
!75 = !{ptr @xgene_phy_hw_init_sata.__UNIQUE_ID_ddebug303, !74, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!76 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/phy/phy-xgene.c", i32 1311, i32 3}
!78 = !{ptr @xgene_phy_hw_init_sata._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @xgene_phy_hw_init_sata._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/phy/phy-xgene.c", i32 727, i32 3}
!82 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @xgene_phy_cfg_cmu_clk_type.__UNIQUE_ID_ddebug295, !81, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!84 = distinct !{null, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/phy/phy-xgene.c", i32 737, i32 3}
!86 = distinct !{null, !85, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!87 = distinct !{null, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/phy/phy-xgene.c", i32 752, i32 3}
!89 = distinct !{null, !88, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!90 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/phy/phy-xgene.c", i32 621, i32 2}
!92 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @cmu_rd.__UNIQUE_ID_ddebug292, !91, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!94 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/phy/phy-xgene.c", i32 589, i32 3}
!96 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @sds_rd._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @sds_rd._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/phy/phy-xgene.c", i32 607, i32 2}
!101 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @cmu_wr.__UNIQUE_ID_ddebug291, !100, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!103 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/phy/phy-xgene.c", i32 568, i32 3}
!105 = !{ptr @sds_wr._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @sds_wr._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.38, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/phy/phy-xgene.c", i32 668, i32 2}
!109 = !{ptr @.str.39, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @serdes_wr.__UNIQUE_ID_ddebug293, !108, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!111 = !{ptr @.str.40, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/phy/phy-xgene.c", i32 680, i32 2}
!113 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @serdes_rd.__UNIQUE_ID_ddebug294, !112, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!115 = !{ptr @.str.42, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/phy/phy-xgene.c", i32 1220, i32 2}
!117 = !{ptr @.str.43, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @xgene_phy_cal_rdy_chk.__UNIQUE_ID_ddebug298, !116, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!119 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.46, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/phy/phy-xgene.c", i32 1223, i32 3}
!123 = !{ptr @xgene_phy_cal_rdy_chk._entry, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @xgene_phy_cal_rdy_chk._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.47, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/phy/phy-xgene.c", i32 1227, i32 2}
!127 = !{ptr @xgene_phy_cal_rdy_chk.__UNIQUE_ID_ddebug299, !126, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!128 = !{ptr @.str.48, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/phy/phy-xgene.c", i32 1230, i32 2}
!130 = !{ptr @xgene_phy_cal_rdy_chk.__UNIQUE_ID_ddebug300, !129, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!131 = !{ptr @.str.49, !129, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.50, !129, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.51, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/phy/phy-xgene.c", i32 1240, i32 2}
!135 = !{ptr @.str.52, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @xgene_phy_pdwn_force_vco.__UNIQUE_ID_ddebug301, !134, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!137 = !{ptr @.str.53, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/phy/phy-xgene.c", i32 1437, i32 2}
!139 = !{ptr @.str.54, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug305, !138, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!141 = !{ptr @.str.55, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/phy/phy-xgene.c", i32 1493, i32 4}
!143 = !{ptr @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug306, !142, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!144 = !{ptr @.str.56, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/phy/phy-xgene.c", i32 1494, i32 4}
!146 = !{ptr @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug307, !145, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!147 = !{ptr @.str.57, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/phy/phy-xgene.c", i32 1497, i32 4}
!149 = !{ptr @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug308, !148, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!150 = !{ptr @.str.58, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/phy/phy-xgene.c", i32 1500, i32 4}
!152 = !{ptr @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug309, !151, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!153 = !{ptr @.str.59, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/phy/phy-xgene.c", i32 1503, i32 4}
!155 = !{ptr @xgene_phy_gen_avg_val._entry, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @xgene_phy_gen_avg_val._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.60, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/phy/phy-xgene.c", i32 1545, i32 2}
!159 = !{ptr @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug310, !158, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!160 = !{ptr @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug311, !161, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!161 = !{!"../drivers/phy/phy-xgene.c", i32 1546, i32 2}
!162 = !{ptr @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug312, !163, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!163 = !{!"../drivers/phy/phy-xgene.c", i32 1551, i32 2}
!164 = !{ptr @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug313, !165, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!165 = !{!"../drivers/phy/phy-xgene.c", i32 1556, i32 2}
!166 = !{ptr @.str.61, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/phy/phy-xgene.c", i32 1562, i32 2}
!168 = !{ptr @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug314, !167, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!169 = !{ptr @.str.62, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/phy/phy-xgene.c", i32 1566, i32 2}
!171 = !{ptr @xgene_phy_gen_avg_val.__UNIQUE_ID_ddebug315, !170, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!172 = !{ptr @xgene_phy_force_lat_summer_cal.serdes_reg, !173, !"serdes_reg", i1 false, i1 false}
!173 = !{!"../drivers/phy/phy-xgene.c", i32 1349, i32 4}
!174 = !{ptr @xgene_phy_of_match, !175, !"xgene_phy_of_match", i1 false, i1 false}
!175 = !{!"../drivers/phy/phy-xgene.c", i32 1704, i32 34}
!176 = !{i32 1, !"wchar_size", i32 2}
!177 = !{i32 1, !"min_enum_size", i32 4}
!178 = !{i32 8, !"branch-target-enforcement", i32 0}
!179 = !{i32 8, !"sign-return-address", i32 0}
!180 = !{i32 8, !"sign-return-address-all", i32 0}
!181 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!182 = !{i32 7, !"uwtable", i32 1}
!183 = !{i32 7, !"frame-pointer", i32 2}
!184 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!185 = !{i64 2149012034, i64 2149012039, i64 2149012052, i64 2149012096, i64 2149012130, i64 2149012151}
!186 = !{!"auto-init"}
!187 = !{i64 2155164000}
!188 = !{i64 4842888}
!189 = !{i64 4843306}
!190 = !{i64 2155164692}
!191 = !{i64 2155164922}
!192 = !{i64 2155165617}
!193 = !{i64 2155165847}
!194 = !{i64 2155166542}
!195 = !{i64 2155167055}
!196 = !{i64 2155167393}
!197 = !{i64 2155170429}
!198 = !{i64 2155170724}
!199 = !{i64 2155171416}
!200 = !{i64 2155171783}
!201 = !{i64 2155148969}
!202 = !{i64 2155149674}
!203 = !{i64 2155118878}
!204 = !{i64 2155119589}
!205 = !{i64 2155120115}
!206 = !{i64 2155121038}
!207 = !{i64 2155114119}
!208 = !{i64 2155114838}
!209 = !{i64 2155115062}
!210 = !{i64 2155115773}
!211 = !{i64 2155116299}
