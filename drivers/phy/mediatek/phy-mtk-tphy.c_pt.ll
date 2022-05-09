; ModuleID = '/llk/IR_all_yes/drivers/phy/mediatek/phy-mtk-tphy.c_pt.bc'
source_filename = "../drivers/phy/mediatek/phy-mtk-tphy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mtk_phy_pdata = type { i8, i8, i8, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.mtk_tphy = type { ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.mtk_phy_instance = type { ptr, ptr, %union.anon.84, [2 x %struct.clk_bulk_data], i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%union.anon.84 = type { %struct.u3phy_banks }
%struct.u3phy_banks = type { ptr, ptr, ptr, ptr }
%struct.clk_bulk_data = type { ptr, ptr }

@__initcall__kmod_phy_mtk_tphy__299_1362_mtk_tphy_driver_init6 = internal global ptr @mtk_tphy_driver_init, section ".initcall6.init", align 4
@mtk_tphy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_tphy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_tphy_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk_tphy_driver_exit = internal global ptr @mtk_tphy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author300 = internal constant [61 x i8] c"phy_mtk_tphy.author=Chunfeng Yun <chunfeng.yun@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description301 = internal constant [47 x i8] c"phy_mtk_tphy.description=MediaTek T-PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [52 x i8] c"phy_mtk_tphy.file=drivers/phy/mediatek/phy-mtk-tphy\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [28 x i8] c"phy_mtk_tphy.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mtk-tphy\00", [23 x i8] zeroinitializer }, align 32
@mtk_tphy_id_table = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-u3phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tphy_v1_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2712-u3phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tphy_v2_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-u3phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8173_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8195-tphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8195_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,generic-tphy-v1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tphy_v1_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,generic-tphy-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tphy_v2_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,generic-tphy-v3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tphy_v3_pdata }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@mtk_tphy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1278, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to remap sif regs\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk_tphy_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/phy/mediatek/phy-mtk-tphy.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_tphy_probe._entry_ptr = internal global ptr @mtk_tphy_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mediatek,src-ref-clk-mhz\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek,src-coef\00", [46 x i8] zeroinitializer }, align 32
@mtk_tphy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @mtk_phy_init, ptr @mtk_phy_exit, ptr @mtk_phy_power_on, ptr @mtk_phy_power_off, ptr @mtk_phy_set_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@mtk_tphy_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 1310, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to create phy\0A\00", [42 x i8] zeroinitializer }, align 32
@mtk_tphy_probe._entry_ptr.10 = internal global ptr @mtk_tphy_probe._entry.8, section ".printk_index", align 4
@mtk_tphy_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1319, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to get address resource(id-%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@mtk_tphy_probe._entry_ptr.13 = internal global ptr @mtk_tphy_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ref\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"da_ref\00", [25 x i8] zeroinitializer }, align 32
@mtk_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 1079, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"incompatible PHY type\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mtk_phy_init\00", [19 x i8] zeroinitializer }, align 32
@mtk_phy_init._entry_ptr = internal global ptr @mtk_phy_init._entry, section ".printk_index", align 4
@phy_efuse_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 1044, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no sw efuse for type %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"phy_efuse_set\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@phy_efuse_set._entry_ptr = internal global ptr @phy_efuse_set._entry, section ".printk_index", align 4
@u2_phy_instance_init.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 -117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"phy_mtk_tphy\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"u2_phy_instance_init\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s(%d)\0A\00", [24 x i8] zeroinitializer }, align 32
@u3_phy_instance_init.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.24, ptr @.str.3, ptr @.str.23, i8 0, i8 122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"u3_phy_instance_init\00", [43 x i8] zeroinitializer }, align 32
@pcie_phy_instance_init.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.25, ptr @.str.3, ptr @.str.23, i8 0, i8 -82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pcie_phy_instance_init\00", [41 x i8] zeroinitializer }, align 32
@sata_phy_instance_init.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.26, ptr @.str.3, ptr @.str.23, i8 0, i8 -64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sata_phy_instance_init\00", [41 x i8] zeroinitializer }, align 32
@u2_phy_instance_power_on.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.27, ptr @.str.3, ptr @.str.23, i8 0, i8 -111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"u2_phy_instance_power_on\00", [39 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@hs_slew_rate_calibrate.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hs_slew_rate_calibrate\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"phy:%d, fm_out:%d, calib:%d (clk:%d, coef:%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@u2_phy_instance_power_off.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.30, ptr @.str.3, ptr @.str.23, i8 0, i8 -105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"u2_phy_instance_power_off\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mediatek,syscon-type\00", [43 x i8] zeroinitializer }, align 32
@phy_type_syscon_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 901, ptr @.str.34, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"type_sw - reg %#x, index %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"phy_type_syscon_get\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@phy_type_syscon_get._entry_ptr = internal global ptr @phy_type_syscon_get._entry, section ".printk_index", align 4
@mtk_phy_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 1148, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"invalid number of cells in 'phy' property\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtk_phy_xlate\00", [18 x i8] zeroinitializer }, align 32
@mtk_phy_xlate._entry_ptr = internal global ptr @mtk_phy_xlate._entry, section ".printk_index", align 4
@mtk_phy_xlate._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.3, i32 1159, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to find appropriate phy\0A\00", [32 x i8] zeroinitializer }, align 32
@mtk_phy_xlate._entry_ptr.39 = internal global ptr @mtk_phy_xlate._entry.37, section ".printk_index", align 4
@mtk_phy_xlate._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.3, i32 1169, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unsupported device type: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mtk_phy_xlate._entry_ptr.42 = internal global ptr @mtk_phy_xlate._entry.40, section ".printk_index", align 4
@mtk_phy_xlate._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.36, ptr @.str.3, i32 1182, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"phy version is not supported\0A\00", [34 x i8] zeroinitializer }, align 32
@mtk_phy_xlate._entry_ptr.45 = internal global ptr @mtk_phy_xlate._entry.43, section ".printk_index", align 4
@phy_v1_banks_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.46, ptr @.str.3, i32 795, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"phy_v1_banks_init\00", [46 x i8] zeroinitializer }, align 32
@phy_v1_banks_init._entry_ptr = internal global ptr @phy_v1_banks_init._entry, section ".printk_index", align 4
@phy_v2_banks_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.47, ptr @.str.3, i32 820, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"phy_v2_banks_init\00", [46 x i8] zeroinitializer }, align 32
@phy_v2_banks_init._entry_ptr = internal global ptr @phy_v2_banks_init._entry, section ".printk_index", align 4
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nvmem-cells\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"intr\00", [27 x i8] zeroinitializer }, align 32
@phy_efuse_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 958, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fail to get u2 intr efuse, %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"phy_efuse_get\00", [18 x i8] zeroinitializer }, align 32
@phy_efuse_get._entry_ptr = internal global ptr @phy_efuse_get._entry, section ".printk_index", align 4
@phy_efuse_get._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.3, i32 964, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"no u2 intr efuse, but dts enable it\0A\00", [59 x i8] zeroinitializer }, align 32
@phy_efuse_get._entry_ptr.54 = internal global ptr @phy_efuse_get._entry.52, section ".printk_index", align 4
@phy_efuse_get.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.51, ptr @.str.3, ptr @.str.55, i8 0, i8 -14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"u2 efuse - intr %x\0A\00", [44 x i8] zeroinitializer }, align 32
@phy_efuse_get._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.51, ptr @.str.3, i32 976, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fail to get u3 intr efuse, %d\0A\00", [33 x i8] zeroinitializer }, align 32
@phy_efuse_get._entry_ptr.58 = internal global ptr @phy_efuse_get._entry.56, section ".printk_index", align 4
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rx_imp\00", [25 x i8] zeroinitializer }, align 32
@phy_efuse_get._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.51, ptr @.str.3, i32 982, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fail to get u3 rx_imp efuse, %d\0A\00", [63 x i8] zeroinitializer }, align 32
@phy_efuse_get._entry_ptr.62 = internal global ptr @phy_efuse_get._entry.60, section ".printk_index", align 4
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tx_imp\00", [25 x i8] zeroinitializer }, align 32
@phy_efuse_get._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.51, ptr @.str.3, i32 988, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fail to get u3 tx_imp efuse, %d\0A\00", [63 x i8] zeroinitializer }, align 32
@phy_efuse_get._entry_ptr.66 = internal global ptr @phy_efuse_get._entry.64, section ".printk_index", align 4
@phy_efuse_get._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.51, ptr @.str.3, i32 996, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"no u3 intr efuse, but dts enable it\0A\00", [59 x i8] zeroinitializer }, align 32
@phy_efuse_get._entry_ptr.69 = internal global ptr @phy_efuse_get._entry.67, section ".printk_index", align 4
@phy_efuse_get.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.51, ptr @.str.3, ptr @.str.70, i8 0, i8 -6, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"u3 efuse - intr %x, rx_imp %x, tx_imp %x\0A\00", [54 x i8] zeroinitializer }, align 32
@phy_efuse_get._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.51, ptr @.str.3, i32 1005, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@phy_efuse_get._entry_ptr.72 = internal global ptr @phy_efuse_get._entry.71, section ".printk_index", align 4
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mediatek,bc12\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mediatek,eye-src\00", [47 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mediatek,eye-vrt\00", [47 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek,eye-term\00", [46 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mediatek,intr\00", [18 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mediatek,discth\00", [16 x i8] zeroinitializer }, align 32
@phy_parse_property.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.79, ptr @.str.3, ptr @.str.80, i8 0, i8 -45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"phy_parse_property\00", [45 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"bc12:%d, src:%d, vrt:%d, term:%d, intr:%d, disc:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@tphy_v1_pdata = internal constant { %struct.mtk_phy_pdata, [24 x i8] } { %struct.mtk_phy_pdata { i8 0, i8 0, i8 0, i32 1 }, [24 x i8] zeroinitializer }, align 32
@tphy_v2_pdata = internal constant { %struct.mtk_phy_pdata, [24 x i8] } { %struct.mtk_phy_pdata { i8 0, i8 0, i8 1, i32 2 }, [24 x i8] zeroinitializer }, align 32
@mt8173_pdata = internal constant { %struct.mtk_phy_pdata, [24 x i8] } { %struct.mtk_phy_pdata { i8 1, i8 0, i8 0, i32 1 }, [24 x i8] zeroinitializer }, align 32
@mt8195_pdata = internal constant { %struct.mtk_phy_pdata, [24 x i8] } { %struct.mtk_phy_pdata { i8 0, i8 1, i8 1, i32 3 }, [24 x i8] zeroinitializer }, align 32
@tphy_v3_pdata = internal constant { %struct.mtk_phy_pdata, [24 x i8] } { %struct.mtk_phy_pdata { i8 0, i8 0, i8 1, i32 3 }, [24 x i8] zeroinitializer }, align 32
@switch.table.mtk_phy_xlate = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 3, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.82 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.85 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 6, i64 11]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"mtk_tphy_driver\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1354, i32 31 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1357, i32 11 }
@___asan_gen_.96 = private unnamed_addr constant [18 x i8] c"mtk_tphy_id_table\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1232, i32 34 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1278, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1287, i32 33 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1289, i32 33 }
@___asan_gen_.123 = private unnamed_addr constant [13 x i8] c"mtk_tphy_ops\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1196, i32 29 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1310, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1318, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1335, i32 16 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1336, i32 16 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1079, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1044, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 556, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 488, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 699, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 769, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 581, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 444, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 606, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 888, i32 33 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 900, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1148, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1159, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1169, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1182, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 795, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 820, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 950, i32 57 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 956, i32 46 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 958, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 964, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 969, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 976, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 980, i32 46 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 982, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 986, i32 46 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 988, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 996, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1001, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1005, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 833, i32 53 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 834, i32 32 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 836, i32 32 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 838, i32 32 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 840, i32 32 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 842, i32 32 }
@___asan_gen_.330 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 844, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant [14 x i8] c"tphy_v1_pdata\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1205, i32 35 }
@___asan_gen_.336 = private unnamed_addr constant [14 x i8] c"tphy_v2_pdata\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1210, i32 35 }
@___asan_gen_.339 = private unnamed_addr constant [13 x i8] c"mt8173_pdata\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1221, i32 35 }
@___asan_gen_.342 = private unnamed_addr constant [13 x i8] c"mt8195_pdata\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1226, i32 35 }
@___asan_gen_.345 = private unnamed_addr constant [14 x i8] c"tphy_v3_pdata\00", align 1
@___asan_gen_.346 = private constant [39 x i8] c"../drivers/phy/mediatek/phy-mtk-tphy.c\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1216, i32 35 }
@___asan_gen_.348 = private unnamed_addr constant [27 x i8] c"switch.table.mtk_phy_xlate\00", align 1
@llvm.compiler.used = appending global [113 x ptr] [ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_mtk_tphy_driver_exit, ptr @__initcall__kmod_phy_mtk_tphy__299_1362_mtk_tphy_driver_init6, ptr @mtk_phy_init._entry, ptr @mtk_phy_init._entry_ptr, ptr @mtk_phy_xlate._entry, ptr @mtk_phy_xlate._entry.37, ptr @mtk_phy_xlate._entry.40, ptr @mtk_phy_xlate._entry.43, ptr @mtk_phy_xlate._entry_ptr, ptr @mtk_phy_xlate._entry_ptr.39, ptr @mtk_phy_xlate._entry_ptr.42, ptr @mtk_phy_xlate._entry_ptr.45, ptr @mtk_tphy_driver_exit, ptr @mtk_tphy_probe._entry, ptr @mtk_tphy_probe._entry.11, ptr @mtk_tphy_probe._entry.8, ptr @mtk_tphy_probe._entry_ptr, ptr @mtk_tphy_probe._entry_ptr.10, ptr @mtk_tphy_probe._entry_ptr.13, ptr @phy_efuse_get._entry, ptr @phy_efuse_get._entry.52, ptr @phy_efuse_get._entry.56, ptr @phy_efuse_get._entry.60, ptr @phy_efuse_get._entry.64, ptr @phy_efuse_get._entry.67, ptr @phy_efuse_get._entry.71, ptr @phy_efuse_get._entry_ptr, ptr @phy_efuse_get._entry_ptr.54, ptr @phy_efuse_get._entry_ptr.58, ptr @phy_efuse_get._entry_ptr.62, ptr @phy_efuse_get._entry_ptr.66, ptr @phy_efuse_get._entry_ptr.69, ptr @phy_efuse_get._entry_ptr.72, ptr @phy_efuse_set._entry, ptr @phy_efuse_set._entry_ptr, ptr @phy_type_syscon_get._entry, ptr @phy_type_syscon_get._entry_ptr, ptr @phy_v1_banks_init._entry, ptr @phy_v1_banks_init._entry_ptr, ptr @phy_v2_banks_init._entry, ptr @phy_v2_banks_init._entry_ptr, ptr @mtk_tphy_driver, ptr @.str, ptr @mtk_tphy_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @mtk_tphy_ops, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @tphy_v1_pdata, ptr @tphy_v2_pdata, ptr @mt8173_pdata, ptr @mt8195_pdata, ptr @tphy_v3_pdata, ptr @switch.table.mtk_phy_xlate], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_tphy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_tphy_id_table to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_tphy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_tphy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_tphy_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_tphy_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_efuse_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_type_syscon_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_phy_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_phy_xlate._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_phy_xlate._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_phy_xlate._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_v1_banks_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_v2_banks_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_efuse_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_efuse_get._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_efuse_get._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_efuse_get._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_efuse_get._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_efuse_get._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_efuse_get._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tphy_v1_pdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tphy_v2_pdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_pdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_pdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tphy_v3_pdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_phy_xlate to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_tphy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_tphy_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_tphy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_tphy_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_tphy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #7
  %2 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 28, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup86_crit_edge, label %if.end

entry.cleanup86_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup86

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %pdata = getelementptr inbounds %struct.mtk_tphy, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %pdata, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.cleanup86_crit_edge, label %if.end7

if.end.cleanup86_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup86

if.end7:                                          ; preds = %if.end
  %call.i158 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #7
  %cmp.not5.i = icmp eq ptr %call.i158, null
  br i1 %cmp.not5.i, label %if.end7.of_get_child_count.exit_crit_edge, label %if.end7.for.body.i_crit_edge

if.end7.for.body.i_crit_edge:                     ; preds = %if.end7
  br label %for.body.i

if.end7.of_get_child_count.exit_crit_edge:        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_get_child_count.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end7.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end7.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i158, %if.end7.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %child.06.i) #7
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %for.body.i.of_get_child_count.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.of_get_child_count.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_get_child_count.exit

of_get_child_count.exit:                          ; preds = %for.body.i.of_get_child_count.exit_crit_edge, %if.end7.of_get_child_count.exit_crit_edge
  %num.0.lcssa.i = phi i32 [ 0, %if.end7.of_get_child_count.exit_crit_edge ], [ %inc.i, %for.body.i.of_get_child_count.exit_crit_edge ]
  %nphys = getelementptr inbounds %struct.mtk_tphy, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %nphys to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %num.0.lcssa.i, ptr %nphys, align 4
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num.0.lcssa.i, i32 4) #7
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !187

devm_kcalloc.exit.thread:                         ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  %phys166 = getelementptr inbounds %struct.mtk_tphy, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %phys166 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %phys166, align 4
  br label %cleanup86

devm_kcalloc.exit:                                ; preds = %of_get_child_count.exit
  %8 = extractvalue { i32, i1 } %5, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %8, i32 noundef 3520) #7
  %phys = getelementptr inbounds %struct.mtk_tphy, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5.i.i, ptr %phys, align 4
  %tobool12.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool12.not, label %devm_kcalloc.exit.cleanup86_crit_edge, label %if.end14

devm_kcalloc.exit.cleanup86_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup86

if.end14:                                         ; preds = %devm_kcalloc.exit
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev1, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call16 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end14.if.end27_crit_edge, label %land.lhs.true

if.end14.if.end27_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end14
  %12 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata, align 4
  %version = getelementptr inbounds %struct.mtk_phy_pdata, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp = icmp eq i32 %15, 1
  br i1 %cmp, label %if.then19, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then19:                                        ; preds = %land.lhs.true
  %call20 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call16) #7
  %sif_base = getelementptr inbounds %struct.mtk_tphy, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %sif_base to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call20, ptr %sif_base, align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.then19.if.end27_crit_edge

if.then19.if.end27_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

do.end:                                           ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  %17 = ptrtoint ptr %sif_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sif_base, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup86

if.end27:                                         ; preds = %if.then19.if.end27_crit_edge, %land.lhs.true.if.end27_crit_edge, %if.end14.if.end27_crit_edge
  %20 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdata, align 4
  %version29 = getelementptr inbounds %struct.mtk_phy_pdata, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %version29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %version29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp30 = icmp ult i32 %23, 3
  br i1 %cmp30, label %if.then31, label %if.end27.if.end36_crit_edge

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %src_ref_clk = getelementptr inbounds %struct.mtk_tphy, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %src_ref_clk to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 26, ptr %src_ref_clk, align 4
  %src_coef = getelementptr inbounds %struct.mtk_tphy, ptr %call.i, i32 0, i32 6
  %25 = ptrtoint ptr %src_coef to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 28, ptr %src_coef, align 4
  %call.i159 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.6, ptr noundef %src_ref_clk, i32 noundef 1) #7
  %call.i160 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef %src_coef, i32 noundef 1) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %if.end27.if.end36_crit_edge
  %call37 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #7
  %cmp38.not202 = icmp eq ptr %call37, null
  br i1 %cmp38.not202, label %if.end36.for.end_crit_edge, label %for.body.lr.ph

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end36
  %args4.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 2
  %arrayidx6.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 2, i32 1
  br label %for.body

for.body:                                         ; preds = %phy_type_syscon_get.exit.thread.for.body_crit_edge, %for.body.lr.ph
  %port.0205 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %phy_type_syscon_get.exit.thread.for.body_crit_edge ]
  %child_np.0203 = phi ptr [ %call37, %for.body.lr.ph ], [ %call83, %phy_type_syscon_get.exit.thread.for.body_crit_edge ]
  %call.i161 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 100, i32 noundef 3520) #7
  %tobool40.not = icmp eq ptr %call.i161, null
  br i1 %tobool40.not, label %for.body.put_child_crit_edge, label %if.end42

for.body.put_child_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_child

if.end42:                                         ; preds = %for.body
  %26 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %phys, align 4
  %arrayidx = getelementptr ptr, ptr %27, i32 %port.0205
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i161, ptr %arrayidx, align 4
  %call44 = call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef nonnull %child_np.0203, ptr noundef nonnull @mtk_tphy_ops) #7
  %cmp.i162 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i162, label %do.end49, label %if.end51

do.end49:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #10
  %29 = ptrtoint ptr %call44 to i32
  br label %put_child

if.end51:                                         ; preds = %if.end42
  %call53 = call i32 @of_address_to_resource(ptr noundef nonnull %child_np.0203, i32 noundef 0, ptr noundef nonnull %res) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end59, label %do.end58

do.end58:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call44, ptr noundef nonnull @.str.12, i32 noundef %port.0205) #10
  br label %put_child

if.end59:                                         ; preds = %if.end51
  %call60 = call ptr @devm_ioremap_resource(ptr noundef %call44, ptr noundef nonnull %res) #7
  %port_base = getelementptr inbounds %struct.mtk_phy_instance, ptr %call.i161, i32 0, i32 1
  %30 = ptrtoint ptr %port_base to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call60, ptr %port_base, align 4
  %cmp.i163 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i163, label %if.then63, label %if.end66

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %call60 to i32
  br label %put_child

if.end66:                                         ; preds = %if.end59
  %32 = ptrtoint ptr %call.i161 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call44, ptr %call.i161, align 4
  %index = getelementptr inbounds %struct.mtk_phy_instance, ptr %call.i161, i32 0, i32 4
  %33 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %port.0205, ptr %index, align 4
  %driver_data.i.i164 = getelementptr inbounds %struct.device, ptr %call44, i32 0, i32 8
  %34 = ptrtoint ptr %driver_data.i.i164 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i161, ptr %driver_data.i.i164, align 4
  %inc = add i32 %port.0205, 1
  %clks68 = getelementptr inbounds %struct.mtk_phy_instance, ptr %call.i161, i32 0, i32 3
  %35 = ptrtoint ptr %clks68 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.14, ptr %clks68, align 4
  %arrayidx70 = getelementptr %struct.mtk_phy_instance, ptr %call.i161, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.15, ptr %arrayidx70, align 4
  %call72 = call i32 @devm_clk_bulk_get_optional(ptr noundef %call44, i32 noundef 2, ptr noundef %clks68) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end66.put_child_crit_edge

if.end66.put_child_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_child

if.end75:                                         ; preds = %if.end66
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %37 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i.i = call ptr @of_find_property(ptr noundef nonnull %child_np.0203, ptr noundef nonnull @.str.31, ptr noundef null) #7
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %if.end75.phy_type_syscon_get.exit.thread_crit_edge, label %if.end.i

if.end75.phy_type_syscon_get.exit.thread_crit_edge: ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_type_syscon_get.exit.thread

if.end.i:                                         ; preds = %if.end75
  %call.i22.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %child_np.0203, ptr noundef nonnull @.str.31, ptr noundef null, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.i)
  %tobool.not.i = icmp eq i32 %call.i22.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %phy_type_syscon_get.exit.thread172

phy_type_syscon_get.exit.thread172:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  br label %put_child

if.end3.i:                                        ; preds = %if.end.i
  %38 = ptrtoint ptr %args4.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %args4.i, align 4
  %type_sw_reg.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %call.i161, i32 0, i32 7
  %40 = ptrtoint ptr %type_sw_reg.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %type_sw_reg.i, align 4
  %41 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx6.i, align 4
  %and.i = and i32 %42, 3
  %type_sw_index.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %call.i161, i32 0, i32 8
  %43 = ptrtoint ptr %type_sw_index.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and.i, ptr %type_sw_index.i, align 4
  %44 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %args.i, align 4
  %call7.i = call ptr @syscon_node_to_regmap(ptr noundef %45) #7
  %type_sw.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %call.i161, i32 0, i32 6
  %46 = ptrtoint ptr %type_sw.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call7.i, ptr %type_sw.i, align 4
  %47 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %args.i, align 4
  call void @of_node_put(ptr noundef %48) #7
  %49 = ptrtoint ptr %call.i161 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call.i161, align 4
  %51 = ptrtoint ptr %type_sw_reg.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %type_sw_reg.i, align 4
  %53 = ptrtoint ptr %type_sw_index.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %type_sw_index.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.32, i32 noundef %52, i32 noundef %54) #10
  %55 = ptrtoint ptr %type_sw.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %type_sw.i, align 4
  %cmp.i.i.i = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %phy_type_syscon_get.exit, label %if.end3.i.phy_type_syscon_get.exit.thread_crit_edge

if.end3.i.phy_type_syscon_get.exit.thread_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_type_syscon_get.exit.thread

phy_type_syscon_get.exit.thread:                  ; preds = %if.end3.i.phy_type_syscon_get.exit.thread_crit_edge, %if.end75.phy_type_syscon_get.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %call83 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %child_np.0203) #7
  %cmp38.not = icmp eq ptr %call83, null
  br i1 %cmp38.not, label %phy_type_syscon_get.exit.thread.for.end_crit_edge, label %phy_type_syscon_get.exit.thread.for.body_crit_edge

phy_type_syscon_get.exit.thread.for.body_crit_edge: ; preds = %phy_type_syscon_get.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

phy_type_syscon_get.exit.thread.for.end_crit_edge: ; preds = %phy_type_syscon_get.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

phy_type_syscon_get.exit:                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %56 to i32
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  br label %put_child

for.end:                                          ; preds = %phy_type_syscon_get.exit.thread.for.end_crit_edge, %if.end36.for.end_crit_edge
  %call84 = call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @mtk_phy_xlate) #7
  %cmp.i.i = icmp ugt ptr %call84, inttoptr (i32 -4096 to ptr)
  %58 = ptrtoint ptr %call84 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %58, i32 0
  br label %cleanup86

put_child:                                        ; preds = %phy_type_syscon_get.exit, %phy_type_syscon_get.exit.thread172, %if.end66.put_child_crit_edge, %if.then63, %do.end58, %do.end49, %for.body.put_child_crit_edge
  %retval2.0.ph = phi i32 [ %call.i22.i, %phy_type_syscon_get.exit.thread172 ], [ %57, %phy_type_syscon_get.exit ], [ %31, %if.then63 ], [ %call53, %do.end58 ], [ %29, %do.end49 ], [ %call72, %if.end66.put_child_crit_edge ], [ -12, %for.body.put_child_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %child_np.0203) #7
  br label %cleanup86

cleanup86:                                        ; preds = %put_child, %for.end, %do.end, %devm_kcalloc.exit.cleanup86_crit_edge, %devm_kcalloc.exit.thread, %if.end.cleanup86_crit_edge, %entry.cleanup86_crit_edge
  %retval.0 = phi i32 [ %19, %do.end ], [ %retval2.0.ph, %put_child ], [ %spec.select.i, %for.end ], [ -12, %entry.cleanup86_crit_edge ], [ -22, %if.end.cleanup86_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup86_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_optional(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mtk_phy_xlate(ptr noundef %dev, ptr nocapture noundef readonly %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %args, align 4
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 1
  %4 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %entry
  %nphys = getelementptr inbounds %struct.mtk_tphy, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %nphys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nphys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp295 = icmp sgt i32 %7, 0
  br i1 %cmp295, label %for.body.lr.ph, label %for.cond.preheader.do.end12_crit_edge

for.cond.preheader.do.end12_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %phys = getelementptr inbounds %struct.mtk_tphy, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phys, align 4
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #10
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %index.096, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.cond.do.end12_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.do.end12_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %index.096 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %9, i32 %index.096
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %cmp4 = icmp eq ptr %3, %15
  br i1 %cmp4, label %for.end, label %for.cond

for.end:                                          ; preds = %for.body
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %for.end.do.end12_crit_edge, label %if.end14

for.end.do.end12_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end12:                                         ; preds = %for.end.do.end12_crit_edge, %for.cond.do.end12_crit_edge, %for.cond.preheader.do.end12_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #10
  br label %cleanup

if.end14:                                         ; preds = %for.end
  %args15 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %16 = ptrtoint ptr %args15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %args15, align 4
  %type = getelementptr inbounds %struct.mtk_phy_instance, ptr %11, i32 0, i32 5
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %type, align 4
  %19 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %do.end33 [
    i32 3, label %if.end14.if.end36_crit_edge
    i32 4, label %if.end14.if.end36_crit_edge102
    i32 2, label %if.end14.if.end36_crit_edge103
    i32 1, label %if.end14.if.end36_crit_edge104
    i32 8, label %if.end14.if.end36_crit_edge105
  ]

if.end14.if.end36_crit_edge105:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.end14.if.end36_crit_edge104:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.end14.if.end36_crit_edge103:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.end14.if.end36_crit_edge102:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.end14.if.end36_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.end33:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %17) #10
  br label %cleanup

if.end36:                                         ; preds = %if.end14.if.end36_crit_edge, %if.end14.if.end36_crit_edge102, %if.end14.if.end36_crit_edge103, %if.end14.if.end36_crit_edge104, %if.end14.if.end36_crit_edge105
  %pdata = getelementptr inbounds %struct.mtk_tphy, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdata, align 4
  %version = getelementptr inbounds %struct.mtk_phy_pdata, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %version, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %23, label %do.end40 [
    i32 1, label %sw.bb
    i32 2, label %if.end36.sw.bb37_crit_edge
    i32 3, label %if.end36.sw.bb37_crit_edge106
  ]

if.end36.sw.bb37_crit_edge106:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb37

if.end36.sw.bb37_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb37

sw.bb:                                            ; preds = %if.end36
  %25 = getelementptr inbounds %struct.mtk_phy_instance, ptr %11, i32 0, i32 2
  %26 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %17, label %do.end.i [
    i32 3, label %sw.bb.i
    i32 4, label %sw.bb.sw.bb2.i_crit_edge
    i32 2, label %sw.bb.sw.bb2.i_crit_edge107
    i32 1, label %sw.bb11.i
  ]

sw.bb.sw.bb2.i_crit_edge107:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sw.bb.sw.bb2.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %25, align 4
  %sif_base.i = getelementptr inbounds %struct.mtk_tphy, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %sif_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sif_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 256
  %fmreg.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %11, i32 0, i32 2, i32 0, i32 1
  %30 = ptrtoint ptr %fmreg.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr.i, ptr %fmreg.i, align 4
  %port_base.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %11, i32 0, i32 1
  %31 = ptrtoint ptr %port_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %port_base.i, align 4
  %com.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %11, i32 0, i32 2, i32 0, i32 2
  %33 = ptrtoint ptr %com.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %com.i, align 4
  br label %sw.epilog

sw.bb2.i:                                         ; preds = %sw.bb.sw.bb2.i_crit_edge, %sw.bb.sw.bb2.i_crit_edge107
  %sif_base3.i = getelementptr inbounds %struct.mtk_tphy, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %sif_base3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sif_base3.i, align 4
  %36 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %25, align 4
  %37 = load ptr, ptr %sif_base3.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %37, i32 768
  %chip.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %11, i32 0, i32 2, i32 0, i32 1
  %38 = ptrtoint ptr %chip.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr6.i, ptr %chip.i, align 4
  %port_base7.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %11, i32 0, i32 1
  %39 = ptrtoint ptr %port_base7.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %port_base7.i, align 4
  %phyd.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %11, i32 0, i32 2, i32 0, i32 2
  %41 = ptrtoint ptr %phyd.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %phyd.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %40, i32 512
  %phya.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %11, i32 0, i32 2, i32 0, i32 3
  %42 = ptrtoint ptr %phya.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr10.i, ptr %phya.i, align 4
  br label %sw.epilog

sw.bb11.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %port_base12.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %11, i32 0, i32 1
  %43 = ptrtoint ptr %port_base12.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %port_base12.i, align 4
  %phyd14.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %11, i32 0, i32 2, i32 0, i32 2
  %45 = ptrtoint ptr %phyd14.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %phyd14.i, align 4
  br label %sw.epilog

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.16) #10
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end36.sw.bb37_crit_edge, %if.end36.sw.bb37_crit_edge106
  %48 = getelementptr inbounds %struct.mtk_phy_instance, ptr %11, i32 0, i32 2
  %49 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %17, label %do.end.i91 [
    i32 3, label %sw.bb.i87
    i32 4, label %sw.bb37.sw.bb5.i_crit_edge
    i32 2, label %sw.bb37.sw.bb5.i_crit_edge108
  ]

sw.bb37.sw.bb5.i_crit_edge108:                    ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5.i

sw.bb37.sw.bb5.i_crit_edge:                       ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5.i

sw.bb.i87:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #9
  %port_base.i84 = getelementptr inbounds %struct.mtk_phy_instance, ptr %11, i32 0, i32 1
  %50 = ptrtoint ptr %port_base.i84 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %port_base.i84, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %48, align 4
  %add.ptr2.i = getelementptr i8, ptr %51, i32 256
  %fmreg.i85 = getelementptr inbounds %struct.mtk_phy_instance, ptr %11, i32 0, i32 2, i32 0, i32 1
  %53 = ptrtoint ptr %fmreg.i85 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %add.ptr2.i, ptr %fmreg.i85, align 4
  %add.ptr4.i = getelementptr i8, ptr %51, i32 768
  %com.i86 = getelementptr inbounds %struct.mtk_phy_instance, ptr %11, i32 0, i32 2, i32 0, i32 2
  %54 = ptrtoint ptr %com.i86 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr4.i, ptr %com.i86, align 4
  br label %sw.epilog

sw.bb5.i:                                         ; preds = %sw.bb37.sw.bb5.i_crit_edge, %sw.bb37.sw.bb5.i_crit_edge108
  %port_base6.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %11, i32 0, i32 1
  %55 = ptrtoint ptr %port_base6.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %port_base6.i, align 4
  %57 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %48, align 4
  %add.ptr9.i = getelementptr i8, ptr %56, i32 256
  %chip.i88 = getelementptr inbounds %struct.mtk_phy_instance, ptr %11, i32 0, i32 2, i32 0, i32 1
  %58 = ptrtoint ptr %chip.i88 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr9.i, ptr %chip.i88, align 4
  %add.ptr11.i = getelementptr i8, ptr %56, i32 512
  %phyd.i89 = getelementptr inbounds %struct.mtk_phy_instance, ptr %11, i32 0, i32 2, i32 0, i32 2
  %59 = ptrtoint ptr %phyd.i89 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr11.i, ptr %phyd.i89, align 4
  %add.ptr13.i = getelementptr i8, ptr %56, i32 1024
  %phya.i90 = getelementptr inbounds %struct.mtk_phy_instance, ptr %11, i32 0, i32 2, i32 0, i32 3
  %60 = ptrtoint ptr %phya.i90 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr13.i, ptr %phya.i90, align 4
  br label %sw.epilog

do.end.i91:                                       ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.16) #10
  br label %sw.epilog

do.end40:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44) #10
  br label %cleanup

sw.epilog:                                        ; preds = %do.end.i91, %sw.bb5.i, %sw.bb.i87, %do.end.i, %sw.bb11.i, %sw.bb2.i, %sw.bb.i
  %call42 = tail call fastcc i32 @phy_efuse_get(ptr noundef %1, ptr noundef nonnull %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end46, label %if.then44

if.then44:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %63 = inttoptr i32 %call42 to ptr
  br label %cleanup

if.end46:                                         ; preds = %sw.epilog
  tail call fastcc void @phy_parse_property(ptr noundef nonnull %11)
  %type_sw.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %11, i32 0, i32 6
  %64 = ptrtoint ptr %type_sw.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %type_sw.i, align 4
  %tobool.not.i = icmp eq ptr %65, null
  br i1 %tobool.not.i, label %if.end46.phy_type_set.exit_crit_edge, label %if.end.i

if.end46.phy_type_set.exit_crit_edge:             ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_type_set.exit

if.end.i:                                         ; preds = %if.end46
  %66 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %type, align 4
  %switch.tableidx = add i32 %67, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %68 = icmp ult i32 %switch.tableidx, 8
  br i1 %68, label %switch.hole_check, label %if.end.i.phy_type_set.exit_crit_edge

if.end.i.phy_type_set.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_type_set.exit

switch.hole_check:                                ; preds = %if.end.i
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %69 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %switch.lobit.not = icmp eq i8 %69, 0
  br i1 %switch.lobit.not, label %switch.hole_check.phy_type_set.exit_crit_edge, label %switch.lookup

switch.hole_check.phy_type_set.exit_crit_edge:    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_type_set.exit

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.mtk_phy_xlate, i32 0, i32 %switch.tableidx
  %70 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %70)
  %switch.load = load i32, ptr %switch.gep, align 4
  %type_sw_index.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %11, i32 0, i32 8
  %71 = ptrtoint ptr %type_sw_index.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %type_sw_index.i, align 4
  %mul.i = shl i32 %72, 3
  %shl.i = shl i32 15, %mul.i
  %type_sw_reg.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %11, i32 0, i32 7
  %73 = ptrtoint ptr %type_sw_reg.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %type_sw_reg.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %65, i32 noundef %74, i32 noundef %shl.i, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %phy_type_set.exit

phy_type_set.exit:                                ; preds = %switch.lookup, %switch.hole_check.phy_type_set.exit_crit_edge, %if.end.i.phy_type_set.exit_crit_edge, %if.end46.phy_type_set.exit_crit_edge
  %75 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %11, align 4
  br label %cleanup

cleanup:                                          ; preds = %phy_type_set.exit, %if.then44, %do.end40, %do.end33, %do.end12, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %do.end40 ], [ %63, %if.then44 ], [ %76, %phy_type_set.exit ], [ inttoptr (i32 -22 to ptr), %do.end33 ], [ inttoptr (i32 -22 to ptr), %do.end12 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_phy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %clks = getelementptr inbounds %struct.mtk_phy_instance, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef 2, ptr noundef %clks) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef 2, ptr noundef %clks) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %clks) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = getelementptr inbounds %struct.mtk_phy_instance, ptr %1, i32 0, i32 2
  %efuse_sw_en.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %efuse_sw_en.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %efuse_sw_en.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i26 = icmp eq i32 %10, 0
  br i1 %tobool.not.i26, label %if.end.phy_efuse_set.exit_crit_edge, label %if.end.i27

if.end.phy_efuse_set.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_efuse_set.exit

if.end.i27:                                       ; preds = %if.end
  %type.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %12, label %do.end.i [
    i32 3, label %sw.bb.i
    i32 4, label %if.end.i27.sw.bb3.i_crit_edge
    i32 2, label %if.end.i27.sw.bb3.i_crit_edge39
  ]

if.end.i27.sw.bb3.i_crit_edge39:                  ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

if.end.i27.sw.bb3.i_crit_edge:                    ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

sw.bb.i:                                          ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %8, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %17 = or i32 %16, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %17) #7, !srcloc !191
  %com.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %1, i32 0, i32 2, i32 0, i32 2
  %18 = ptrtoint ptr %com.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %com.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %19, i32 4
  %efuse_intr.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %efuse_intr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %efuse_intr.i, align 4
  %and.i = shl i32 %21, 19
  %shl.i = and i32 %and.i, 16252928
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %23 = and i32 %22, -63489
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  %or.i39.i = or i32 %24, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  %25 = tail call i32 @llvm.bswap.i32(i32 %or.i39.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %25) #7, !srcloc !191
  br label %phy_efuse_set.exit

sw.bb3.i:                                         ; preds = %if.end.i27.sw.bb3.i_crit_edge, %if.end.i27.sw.bb3.i_crit_edge39
  %phyd.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %1, i32 0, i32 2, i32 0, i32 2
  %26 = ptrtoint ptr %phyd.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %phyd.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %27, i32 84
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %29 = or i32 %28, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %29) #7, !srcloc !191
  %30 = ptrtoint ptr %phyd.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phyd.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %31, i32 16
  %efuse_tx_imp.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %1, i32 0, i32 11
  %32 = ptrtoint ptr %efuse_tx_imp.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %efuse_tx_imp.i, align 4
  %and7.i = shl i32 %33, 24
  %shl8.i = and i32 %and7.i, 520093696
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %35 = and i32 %34, -32
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #7
  %or.i42.i = or i32 %36, %shl8.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  %37 = tail call i32 @llvm.bswap.i32(i32 %or.i42.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %37) #7, !srcloc !191
  %38 = ptrtoint ptr %phyd.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %phyd.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %39, i32 16
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %41 = or i32 %40, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %41) #7, !srcloc !191
  %42 = ptrtoint ptr %phyd.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %phyd.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %43, i32 20
  %efuse_rx_imp.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %1, i32 0, i32 12
  %44 = ptrtoint ptr %efuse_rx_imp.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %efuse_rx_imp.i, align 4
  %and13.i = shl i32 %45, 24
  %shl14.i = and i32 %and13.i, 520093696
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %47 = and i32 %46, -32
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #7
  %or.i45.i = or i32 %48, %shl14.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  %49 = tail call i32 @llvm.bswap.i32(i32 %or.i45.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %49) #7, !srcloc !191
  %50 = ptrtoint ptr %phyd.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %phyd.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %51, i32 20
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %53 = or i32 %52, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %53) #7, !srcloc !191
  %phya.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %1, i32 0, i32 2, i32 0, i32 3
  %54 = ptrtoint ptr %phya.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %phya.i, align 4
  %efuse_intr18.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %1, i32 0, i32 10
  %56 = ptrtoint ptr %efuse_intr18.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %efuse_intr18.i, align 4
  %and19.i = shl i32 %57, 10
  %shl20.i = and i32 %and19.i, 64512
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %59 = and i32 %58, -16515073
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #7
  %or.i48.i = or i32 %60, %shl20.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  %61 = tail call i32 @llvm.bswap.i32(i32 %or.i48.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %61) #7, !srcloc !191
  br label %phy_efuse_set.exit

do.end.i:                                         ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.18, i32 noundef %12) #10
  br label %phy_efuse_set.exit

phy_efuse_set.exit:                               ; preds = %do.end.i, %sw.bb3.i, %sw.bb.i, %if.end.phy_efuse_set.exit_crit_edge
  %type = getelementptr inbounds %struct.mtk_phy_instance, ptr %1, i32 0, i32 5
  %62 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %type, align 4
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %63, label %do.end [
    i32 3, label %sw.bb
    i32 4, label %sw.bb3
    i32 2, label %sw.bb4
    i32 1, label %sw.bb5
    i32 8, label %phy_efuse_set.exit.cleanup_crit_edge
  ]

phy_efuse_set.exit.cleanup_crit_edge:             ; preds = %phy_efuse_set.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %phy_efuse_set.exit
  tail call fastcc void @u2_phy_instance_init(ptr noundef %5, ptr noundef %1)
  %com1.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %1, i32 0, i32 2, i32 0, i32 2
  %65 = ptrtoint ptr %com1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %com1.i, align 4
  %bc12_en.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %1, i32 0, i32 18
  %67 = ptrtoint ptr %bc12_en.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %bc12_en.i, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i28 = icmp eq i8 %68, 0
  br i1 %tobool.not.i28, label %sw.bb.if.end.i30_crit_edge, label %if.then.i

sw.bb.if.end.i30_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i30

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i29 = getelementptr i8, ptr %66, i32 128
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %70 = or i32 %69, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %70) #7, !srcloc !191
  br label %if.end.i30

if.end.i30:                                       ; preds = %if.then.i, %sw.bb.if.end.i30_crit_edge
  %pdata.i = getelementptr inbounds %struct.mtk_tphy, ptr %5, i32 0, i32 2
  %71 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pdata.i, align 4
  %version.i = getelementptr inbounds %struct.mtk_phy_pdata, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %74)
  %cmp.i = icmp ult i32 %74, 3
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i30.if.end6.i_crit_edge

if.end.i30.if.end6.i_crit_edge:                   ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %if.end.i30
  %eye_src.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %1, i32 0, i32 13
  %75 = ptrtoint ptr %eye_src.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %eye_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool2.not.i31 = icmp eq i32 %76, 0
  br i1 %tobool2.not.i31, label %land.lhs.true.i.if.end6.i_crit_edge, label %if.then3.i35

land.lhs.true.i.if.end6.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then3.i35:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr4.i32 = getelementptr i8, ptr %66, i32 20
  %and.i33 = shl i32 %76, 12
  %shl.i34 = and i32 %and.i33, 28672
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i32) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %78 = and i32 %77, -7340033
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #7
  %or.i55.i = or i32 %79, %shl.i34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  %80 = tail call i32 @llvm.bswap.i32(i32 %or.i55.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i32, i32 %80) #7, !srcloc !191
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i35, %land.lhs.true.i.if.end6.i_crit_edge, %if.end.i30.if.end6.i_crit_edge
  %eye_vrt.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %1, i32 0, i32 14
  %81 = ptrtoint ptr %eye_vrt.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %eye_vrt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool7.not.i = icmp eq i32 %82, 0
  br i1 %tobool7.not.i, label %if.end6.i.if.end13.i_crit_edge, label %if.then8.i

if.end6.i.if.end13.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr9.i = getelementptr i8, ptr %66, i32 4
  %and11.i = shl i32 %82, 12
  %shl12.i = and i32 %and11.i, 28672
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %84 = and i32 %83, -7340033
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #7
  %or.i57.i = or i32 %85, %shl12.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  %86 = tail call i32 @llvm.bswap.i32(i32 %or.i57.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %86) #7, !srcloc !191
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then8.i, %if.end6.i.if.end13.i_crit_edge
  %eye_term.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %1, i32 0, i32 15
  %87 = ptrtoint ptr %eye_term.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %eye_term.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool14.not.i = icmp eq i32 %88, 0
  br i1 %tobool14.not.i, label %if.end13.i.if.end20.i_crit_edge, label %if.then15.i

if.end13.i.if.end20.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr16.i36 = getelementptr i8, ptr %66, i32 4
  %and18.i = shl i32 %88, 8
  %shl19.i = and i32 %and18.i, 1792
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i36) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %90 = and i32 %89, -458753
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #7
  %or.i59.i = or i32 %91, %shl19.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  %92 = tail call i32 @llvm.bswap.i32(i32 %or.i59.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i36, i32 %92) #7, !srcloc !191
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then15.i, %if.end13.i.if.end20.i_crit_edge
  %intr.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %1, i32 0, i32 16
  %93 = ptrtoint ptr %intr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %intr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool21.not.i = icmp eq i32 %94, 0
  br i1 %tobool21.not.i, label %if.end20.i.if.end27.i_crit_edge, label %if.then22.i

if.end20.i.if.end27.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

if.then22.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr23.i = getelementptr i8, ptr %66, i32 4
  %and25.i = shl i32 %94, 19
  %shl26.i = and i32 %and25.i, 16252928
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %96 = and i32 %95, -63489
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #7
  %or.i61.i = or i32 %97, %shl26.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  %98 = tail call i32 @llvm.bswap.i32(i32 %or.i61.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %98) #7, !srcloc !191
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then22.i, %if.end20.i.if.end27.i_crit_edge
  %discth.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %1, i32 0, i32 17
  %99 = ptrtoint ptr %discth.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %discth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool28.not.i = icmp eq i32 %100, 0
  br i1 %tobool28.not.i, label %if.end27.i.cleanup_crit_edge, label %if.then29.i

if.end27.i.cleanup_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr30.i = getelementptr i8, ptr %66, i32 24
  %and32.i = shl i32 %100, 4
  %shl33.i = and i32 %and32.i, 240
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %102 = and i32 %101, 268435455
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #7
  %or.i63.i = or i32 %103, %shl33.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  %104 = tail call i32 @llvm.bswap.i32(i32 %or.i63.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %104) #7, !srcloc !191
  br label %cleanup

sw.bb3:                                           ; preds = %phy_efuse_set.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @u3_phy_instance_init(ptr noundef %5, ptr noundef %1)
  br label %cleanup

sw.bb4:                                           ; preds = %phy_efuse_set.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @pcie_phy_instance_init(ptr noundef %5, ptr noundef %1)
  br label %cleanup

sw.bb5:                                           ; preds = %phy_efuse_set.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sata_phy_instance_init(ptr noundef %5, ptr noundef %1)
  br label %cleanup

do.end:                                           ; preds = %phy_efuse_set.exit
  call void @__sanitizer_cov_trace_pc() #9
  %105 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.16) #10
  tail call fastcc void @clk_bulk_disable_unprepare(ptr noundef %clks)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb5, %sw.bb4, %sw.bb3, %if.then29.i, %if.end27.i.cleanup_crit_edge, %phy_efuse_set.exit.cleanup_crit_edge, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %phy_efuse_set.exit.cleanup_crit_edge ], [ 0, %sw.bb5 ], [ 0, %sw.bb4 ], [ 0, %sw.bb3 ], [ 0, %if.end27.i.cleanup_crit_edge ], [ 0, %if.then29.i ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_phy_exit(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %type = getelementptr inbounds %struct.mtk_phy_instance, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %parent = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %com1.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %1, i32 0, i32 2, i32 0, i32 2
  %8 = ptrtoint ptr %com1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %com1.i, align 4
  %pdata.i = getelementptr inbounds %struct.mtk_tphy, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %land.lhs.true.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.then
  %index2.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool3.not.i = icmp eq i32 %15, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end_crit_edge, label %if.then.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %9, i32 96
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  %17 = and i32 %16, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %17) #7, !srcloc !191
  %add.ptr4.i = getelementptr i8, ptr %9, i32 104
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  %19 = and i32 %18, -1025
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %19) #7, !srcloc !191
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.lhs.true.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %clks = getelementptr inbounds %struct.mtk_phy_instance, ptr %1, i32 0, i32 3
  tail call void @clk_bulk_disable(i32 noundef 2, ptr noundef %clks) #7
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %clks) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_phy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %type = getelementptr inbounds %struct.mtk_phy_instance, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %3, label %entry.if.end5_crit_edge [
    i32 3, label %if.then
    i32 2, label %if.then4
  ]

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %parent = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @u2_phy_instance_power_on(ptr noundef %8, ptr noundef %1)
  tail call fastcc void @hs_slew_rate_calibrate(ptr noundef %8, ptr noundef %1)
  br label %if.end5

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %chip.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %1, i32 0, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  %12 = and i32 %11, -161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #7, !srcloc !191
  %13 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %14, i32 16
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  %16 = and i32 %15, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %16) #7, !srcloc !191
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then, %entry.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_phy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %type = getelementptr inbounds %struct.mtk_phy_instance, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %3, label %entry.if.end5_crit_edge [
    i32 3, label %if.then
    i32 2, label %if.then4
  ]

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %parent = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @u2_phy_instance_power_off(ptr noundef %8, ptr noundef %1)
  br label %if.end5

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %chip.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %1, i32 0, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %12 = or i32 %11, 160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #7, !srcloc !191
  %13 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %14, i32 16
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %16 = or i32 %15, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %16) #7, !srcloc !191
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then, %entry.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_phy_set_mode(ptr nocapture noundef readonly %phy, i32 noundef %mode, i32 noundef %submode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %type = getelementptr inbounds %struct.mtk_phy_instance, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %com.i = getelementptr inbounds %struct.mtk_phy_instance, ptr %1, i32 0, i32 2, i32 0, i32 2
  %4 = ptrtoint ptr %com.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %com.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 108
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !188
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  %8 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %mode, label %if.then.if.end_crit_edge [
    i32 6, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 11, label %sw.bb5.i
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %7, 514
  br label %do.body.i

sw.bb3.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %or4.i = and i32 %7, -515
  %and.i = or i32 %or4.i, 512
  br label %do.body.i

sw.bb5.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %and6.i = and i32 %7, -515
  br label %do.body.i

do.body.i:                                        ; preds = %sw.bb5.i, %sw.bb3.i, %sw.bb.i
  %tmp.0.i = phi i32 [ %and6.i, %sw.bb5.i ], [ %and.i, %sw.bb3.i ], [ %or.i, %sw.bb.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !198
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %tmp.0.i) #7
  %10 = ptrtoint ptr %com.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %com.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %11, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %9) #7, !srcloc !191
  br label %if.end

if.end:                                           ; preds = %do.body.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u2_phy_instance_init(ptr nocapture noundef readonly %tphy, ptr nocapture noundef readonly %instance) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %com1 = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 2, i32 0, i32 2
  %0 = ptrtoint ptr %com1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %com1, align 4
  %index2 = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 4
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index2, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 104
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  %5 = and i32 %4, -1029
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #7, !srcloc !191
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %7 = and i32 %6, -809238529
  %8 = or i32 %7, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #7, !srcloc !191
  %add.ptr4 = getelementptr i8, ptr %1, i32 108
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  %10 = and i32 %9, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %10) #7, !srcloc !191
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %12 = or i32 %11, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %12) #7, !srcloc !191
  %add.ptr6 = getelementptr i8, ptr %1, i32 20
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  %14 = and i32 %13, -524289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %14) #7, !srcloc !191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %add.ptr7 = getelementptr i8, ptr %1, i32 32
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  %16 = and i32 %15, -196609
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %16) #7, !srcloc !191
  %pdata = getelementptr inbounds %struct.mtk_tphy, ptr %tphy, i32 0, i32 2
  %17 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdata, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool8.not = icmp eq i8 %20, 0
  br i1 %tobool8.not, label %if.end.if.end17_crit_edge, label %if.then11

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end.thread:                                    ; preds = %entry
  %pdata54 = getelementptr inbounds %struct.mtk_tphy, ptr %tphy, i32 0, i32 2
  %21 = ptrtoint ptr %pdata54 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdata54, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool8.not55 = icmp eq i8 %24, 0
  br i1 %tobool8.not55, label %if.end.thread.if.end17_crit_edge, label %if.else

if.end.thread.if.end17_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr12 = getelementptr i8, ptr %1, i32 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %26 = or i32 %25, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %26) #7, !srcloc !191
  %add.ptr13 = getelementptr i8, ptr %1, i32 96
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  %28 = and i32 %27, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %28) #7, !srcloc !191
  br label %if.end17

if.else:                                          ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr14 = getelementptr i8, ptr %1, i32 96
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %30 = or i32 %29, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %30) #7, !srcloc !191
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %32 = or i32 %31, 134218752
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %32) #7, !srcloc !191
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then11, %if.end.thread.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %pdata57 = phi ptr [ %pdata54, %if.end.thread.if.end17_crit_edge ], [ %pdata, %if.then11 ], [ %pdata54, %if.else ], [ %pdata, %if.end.if.end17_crit_edge ]
  %add.ptr18 = getelementptr i8, ptr %1, i32 24
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  %34 = and i32 %33, -32769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %34) #7, !srcloc !191
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %36 = and i32 %35, -251658241
  %37 = or i32 %36, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %37) #7, !srcloc !191
  %38 = ptrtoint ptr %pdata57 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdata57, align 4
  %sw_pll_48m_to_26m.i = getelementptr inbounds %struct.mtk_phy_pdata, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %sw_pll_48m_to_26m.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %sw_pll_48m_to_26m.i, align 1, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i = icmp eq i8 %41, 0
  br i1 %tobool.not.i, label %if.end17.u2_phy_pll_26m_set.exit_crit_edge, label %if.end.i

if.end17.u2_phy_pll_26m_set.exit_crit_edge:       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %u2_phy_pll_26m_set.exit

if.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %com1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %com1, align 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %45 = and i32 %44, 1073741823
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %45) #7, !srcloc !191
  %add.ptr2.i = getelementptr i8, ptr %43, i32 8
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %47 = and i32 %46, -14337
  %48 = or i32 %47, 6144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %48) #7, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !199
  tail call void @arm_heavy_mb() #7
  %add.ptr3.i = getelementptr i8, ptr %43, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 1001462528) #7, !srcloc !191
  %add.ptr4.i = getelementptr i8, ptr %43, i32 68
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %50 = or i32 %49, 671088640
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %50) #7, !srcloc !191
  br label %u2_phy_pll_26m_set.exit

u2_phy_pll_26m_set.exit:                          ; preds = %if.end.i, %if.end17.u2_phy_pll_26m_set.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @u2_phy_instance_init.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@u2_phy_instance_init, %if.then23)) #7
          to label %do.end [label %if.then23], !srcloc !200

if.then23:                                        ; preds = %u2_phy_pll_26m_set.exit
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %tphy to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tphy, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @u2_phy_instance_init.__UNIQUE_ID_ddebug291, ptr noundef %52, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef %3) #7
  br label %do.end

do.end:                                           ; preds = %if.then23, %u2_phy_pll_26m_set.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u3_phy_instance_init(ptr nocapture noundef readonly %tphy, ptr nocapture noundef readonly %instance) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 24
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %4 = or i32 %3, 196608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #7, !srcloc !191
  %phya = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 2, i32 0, i32 3
  %5 = ptrtoint ptr %phya to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phya, align 4
  %add.ptr1 = getelementptr i8, ptr %6, i32 256
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %8 = and i32 %7, -786433
  %9 = or i32 %8, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %9) #7, !srcloc !191
  %10 = ptrtoint ptr %phya to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phya, align 4
  %add.ptr3 = getelementptr i8, ptr %11, i32 36
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %13 = and i32 %12, -1040187393
  %14 = or i32 %13, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %14) #7, !srcloc !191
  %15 = ptrtoint ptr %phya to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phya, align 4
  %add.ptr5 = getelementptr i8, ptr %16, i32 24
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %18 = and i32 %17, -241
  %19 = or i32 %18, 224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %19) #7, !srcloc !191
  %phyd = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 2, i32 0, i32 2
  %20 = ptrtoint ptr %phyd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phyd, align 4
  %add.ptr6 = getelementptr i8, ptr %21, i32 92
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %23 = and i32 %22, -2031648
  %24 = or i32 %23, 786435
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %24) #7, !srcloc !191
  %25 = ptrtoint ptr %phyd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %phyd, align 4
  %add.ptr8 = getelementptr i8, ptr %26, i32 12
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %28 = and i32 %27, -16129
  %29 = or i32 %28, 13312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %29) #7, !srcloc !191
  %30 = ptrtoint ptr %phyd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phyd, align 4
  %add.ptr10 = getelementptr i8, ptr %31, i32 296
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %33 = and i32 %32, -16646913
  %34 = or i32 %33, 2097152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %34) #7, !srcloc !191
  %35 = ptrtoint ptr %phyd to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %phyd, align 4
  %add.ptr12 = getelementptr i8, ptr %36, i32 300
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %38 = and i32 %37, 16711679
  %39 = or i32 %38, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %39) #7, !srcloc !191
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @u3_phy_instance_init.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@u3_phy_instance_init, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !200

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %tphy to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tphy, align 4
  %index = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 4
  %42 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @u3_phy_instance_init.__UNIQUE_ID_ddebug290, ptr noundef %41, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef %43) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcie_phy_instance_init(ptr nocapture noundef readonly %tphy, ptr nocapture noundef readonly %instance) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.mtk_tphy, ptr %tphy, i32 0, i32 2
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %version = getelementptr inbounds %struct.mtk_phy_pdata, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %phya1 = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 2, i32 0, i32 3
  %4 = ptrtoint ptr %phya1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phya1, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 256
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %7 = and i32 %6, -3146497
  %8 = or i32 %7, 2097664
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #7, !srcloc !191
  %add.ptr2 = getelementptr i8, ptr %5, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %10 = and i32 %9, -225
  %11 = or i32 %10, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %11) #7, !srcloc !191
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %13 = and i32 %12, -201326593
  %14 = or i32 %13, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %14) #7, !srcloc !191
  %add.ptr4 = getelementptr i8, ptr %5, i32 316
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %16 = and i32 %15, -65536
  %17 = or i32 %16, 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %17) #7, !srcloc !191
  %add.ptr5 = getelementptr i8, ptr %5, i32 328
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %19 = and i32 %18, 65535
  %20 = or i32 %19, 905969664
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %20) #7, !srcloc !191
  %add.ptr6 = getelementptr i8, ptr %5, i32 268
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %22 = and i32 %21, -15728689
  %23 = or i32 %22, 1048592
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %23) #7, !srcloc !191
  %add.ptr7 = getelementptr i8, ptr %5, i32 264
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %25 = and i32 %24, 1073727487
  %26 = or i32 %25, -1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %26) #7, !srcloc !191
  %add.ptr8 = getelementptr i8, ptr %5, i32 272
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %28 = and i32 %27, -3841
  %29 = or i32 %28, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %29) #7, !srcloc !191
  %add.ptr9 = getelementptr i8, ptr %5, i32 276
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %31 = and i32 %30, -3841
  %32 = or i32 %31, 2560
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %32) #7, !srcloc !191
  %phyd = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 2, i32 0, i32 2
  %33 = ptrtoint ptr %phyd to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %phyd, align 4
  %add.ptr10 = getelementptr i8, ptr %34, i32 296
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %36 = and i32 %35, -16646913
  %37 = or i32 %36, 2097152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %37) #7, !srcloc !191
  %38 = ptrtoint ptr %phyd to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %phyd, align 4
  %add.ptr12 = getelementptr i8, ptr %39, i32 300
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %41 = and i32 %40, 16711679
  %42 = or i32 %41, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %42) #7, !srcloc !191
  tail call void @usleep_range_state(i32 noundef 2500, i32 noundef 3000, i32 noundef 2) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcie_phy_instance_init.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcie_phy_instance_init, %if.then15)) #7
          to label %cleanup [label %if.then15], !srcloc !200

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %tphy to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tphy, align 4
  %index = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 4
  %45 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcie_phy_instance_init.__UNIQUE_ID_ddebug294, ptr noundef %44, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.25, i32 noundef %46) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sata_phy_instance_init(ptr nocapture noundef readonly %tphy, ptr nocapture noundef readonly %instance) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phyd1 = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 2, i32 0, i32 2
  %0 = ptrtoint ptr %phyd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phyd1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 96
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %3 = and i32 %2, -520093728
  %4 = or i32 %3, 100663322
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #7, !srcloc !191
  %add.ptr2 = getelementptr i8, ptr %1, i32 216
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %6 = and i32 %5, -7937
  %7 = or i32 %6, 6144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %7) #7, !srcloc !191
  %add.ptr3 = getelementptr i8, ptr %1, i32 220
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %9 = and i32 %8, -520093697
  %10 = or i32 %9, 100663296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %10) #7, !srcloc !191
  %add.ptr4 = getelementptr i8, ptr %1, i32 88
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %12 = and i32 %11, -520193
  %13 = or i32 %12, 507904
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %13) #7, !srcloc !191
  %add.ptr5 = getelementptr i8, ptr %1, i32 28
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %15 = and i32 %14, -1044481
  %16 = or i32 %15, 532480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %16) #7, !srcloc !191
  %add.ptr6 = getelementptr i8, ptr %1, i32 36
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %18 = and i32 %17, -805306369
  %19 = or i32 %18, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %19) #7, !srcloc !191
  %add.ptr7 = getelementptr i8, ptr %1, i32 64
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %21 = and i32 %20, 16777215
  %22 = or i32 %21, -1845493760
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %22) #7, !srcloc !191
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %24 = and i32 %23, -4136705
  %25 = or i32 %24, 3214848
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %25) #7, !srcloc !191
  %add.ptr9 = getelementptr i8, ptr %1, i32 76
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %27 = and i32 %26, -4128769
  %28 = or i32 %27, 2097152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %28) #7, !srcloc !191
  %add.ptr10 = getelementptr i8, ptr %1, i32 108
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %30 = and i32 %29, -983041
  %31 = or i32 %30, 196608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %31) #7, !srcloc !191
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_phy_instance_init.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_phy_instance_init, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !200

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %tphy to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tphy, align 4
  %index = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 4
  %34 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_phy_instance_init.__UNIQUE_ID_ddebug295, ptr noundef %33, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.26, i32 noundef %35) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clk_bulk_disable_unprepare(ptr noundef %clks) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_bulk_disable(i32 noundef 2, ptr noundef %clks) #7
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %clks) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u2_phy_instance_power_on(ptr nocapture noundef readonly %tphy, ptr nocapture noundef readonly %instance) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %com1 = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 2, i32 0, i32 2
  %0 = ptrtoint ptr %com1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %com1, align 4
  %index2 = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 4
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index2, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 104
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  %5 = and i32 %4, 197346815
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #7, !srcloc !191
  %add.ptr3 = getelementptr i8, ptr %1, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %7 = or i32 %6, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %7) #7, !srcloc !191
  %add.ptr4 = getelementptr i8, ptr %1, i32 108
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %9 = or i32 %8, 603979776
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %9) #7, !srcloc !191
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  %11 = and i32 %10, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %11) #7, !srcloc !191
  %pdata = getelementptr inbounds %struct.mtk_tphy, ptr %tphy, i32 0, i32 2
  %12 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr7 = getelementptr i8, ptr %1, i32 96
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %17 = or i32 %16, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %17) #7, !srcloc !191
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %19 = or i32 %18, 134218752
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %19) #7, !srcloc !191
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @u2_phy_instance_power_on.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@u2_phy_instance_power_on, %if.then12)) #7
          to label %do.end [label %if.then12], !srcloc !200

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %tphy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tphy, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @u2_phy_instance_power_on.__UNIQUE_ID_ddebug292, ptr noundef %21, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.27, i32 noundef %3) #7
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hs_slew_rate_calibrate(ptr nocapture noundef readonly %tphy, ptr nocapture noundef readonly %instance) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fmreg1 = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 2, i32 0, i32 1
  %0 = ptrtoint ptr %fmreg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fmreg1, align 4
  %com2 = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 2, i32 0, i32 2
  %2 = ptrtoint ptr %com2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %com2, align 4
  %pdata = getelementptr inbounds %struct.mtk_tphy, ptr %tphy, i32 0, i32 2
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %version = getelementptr inbounds %struct.mtk_phy_pdata, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %eye_src = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 13
  %8 = ptrtoint ptr %eye_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %eye_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %3, i32 20
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %11 = or i32 %10, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #7, !srcloc !191
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #7
  %add.ptr5 = getelementptr i8, ptr %1, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %14 = or i32 %13, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %14) #7, !srcloc !191
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !188
  %16 = shl i32 %15, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  %and = and i32 %16, -218103808
  %or = or i32 %and, 1024
  %17 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdata, align 4
  %version10 = getelementptr inbounds %struct.mtk_phy_pdata, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %version10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %version10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp11 = icmp eq i32 %20, 1
  br i1 %cmp11, label %if.then12, label %if.end4.do.body_crit_edge

if.end4.do.body_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then12:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %index = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 4
  %21 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index, align 4
  %23 = shl i32 %22, 25
  %shl = and i32 %23, 201326592
  %or14 = or i32 %shl, %or
  br label %do.body

do.body:                                          ; preds = %if.then12, %if.end4.do.body_crit_edge
  %tmp.0 = phi i32 [ %or14, %if.then12 ], [ %or, %if.end4.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !202
  tail call void @arm_heavy_mb() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %tmp.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %24) #7, !srcloc !191
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %26 = or i32 %25, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %26) #7, !srcloc !191
  %call18 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call18, 200000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 425) #7
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %28 = and i32 %27, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool39.not142 = icmp eq i32 %28, 0
  br i1 %tobool39.not142, label %do.body.land.lhs.true_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.body.land.lhs.true_crit_edge:                  ; preds = %do.body
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then55.land.lhs.true_crit_edge, %do.body.land.lhs.true_crit_edge
  %call43 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call43, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call43, %add.i
  br i1 %cmp3.i, label %if.then46, label %if.then55

if.then46:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !204
  br label %for.end

if.then55:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #7
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %31 = and i32 %30, 16777216
  %tobool39.not = icmp eq i32 %31, 0
  br i1 %tobool39.not, label %if.then55.land.lhs.true_crit_edge, label %if.then55.for.end_crit_edge

if.then55.for.end_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then55.land.lhs.true_crit_edge:                ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

for.end:                                          ; preds = %if.then55.for.end_crit_edge, %if.then46, %do.body.for.end_crit_edge
  %add.ptr63 = getelementptr i8, ptr %1, i32 12
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63) #7, !srcloc !188
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !205
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  %35 = and i32 %34, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %35) #7, !srcloc !191
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  %37 = and i32 %36, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %37) #7, !srcloc !191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool69.not = icmp eq i32 %32, 0
  br i1 %tobool69.not, label %for.end.do.body77_crit_edge, label %if.then70

for.end.do.body77_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body77

if.then70:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %src_ref_clk = getelementptr inbounds %struct.mtk_tphy, ptr %tphy, i32 0, i32 5
  %38 = ptrtoint ptr %src_ref_clk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %src_ref_clk, align 4
  %src_coef = getelementptr inbounds %struct.mtk_tphy, ptr %tphy, i32 0, i32 6
  %40 = ptrtoint ptr %src_coef to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %src_coef, align 4
  %mul = shl i32 %39, 10
  %mul71 = mul i32 %mul, %41
  %div = udiv i32 %mul71, %33
  %add74 = add nuw i32 %div, 500
  %div75 = udiv i32 %add74, 1000
  br label %do.body77

do.body77:                                        ; preds = %if.then70, %for.end.do.body77_crit_edge
  %calibration_val.0 = phi i32 [ %div75, %if.then70 ], [ 4, %for.end.do.body77_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hs_slew_rate_calibrate.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hs_slew_rate_calibrate, %if.then83)) #7
          to label %do.end89 [label %if.then83], !srcloc !200

if.then83:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %tphy to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tphy, align 4
  %index84 = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 4
  %44 = ptrtoint ptr %index84 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %index84, align 4
  %src_ref_clk85 = getelementptr inbounds %struct.mtk_tphy, ptr %tphy, i32 0, i32 5
  %46 = ptrtoint ptr %src_ref_clk85 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %src_ref_clk85, align 4
  %src_coef86 = getelementptr inbounds %struct.mtk_tphy, ptr %tphy, i32 0, i32 6
  %48 = ptrtoint ptr %src_coef86 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %src_coef86, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hs_slew_rate_calibrate.__UNIQUE_ID_ddebug289, ptr noundef %43, ptr noundef nonnull @.str.29, i32 noundef %45, i32 noundef %33, i32 noundef %calibration_val.0, i32 noundef %47, i32 noundef %49) #7
  br label %do.end89

do.end89:                                         ; preds = %if.then83, %do.body77
  %and91 = shl i32 %calibration_val.0, 12
  %shl92 = and i32 %and91, 28672
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %51 = and i32 %50, -7340033
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %or.i139 = or i32 %52, %shl92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  %53 = tail call i32 @llvm.bswap.i32(i32 %or.i139) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %53) #7, !srcloc !191
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  %55 = and i32 %54, -8388609
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %55) #7, !srcloc !191
  br label %cleanup

cleanup:                                          ; preds = %do.end89, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u2_phy_instance_power_off(ptr nocapture noundef readonly %tphy, ptr nocapture noundef readonly %instance) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %com1 = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 2, i32 0, i32 2
  %0 = ptrtoint ptr %com1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %com1, align 4
  %index2 = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 4
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index2, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 104
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  %5 = and i32 %4, -809238529
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #7, !srcloc !191
  %add.ptr3 = getelementptr i8, ptr %1, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  %7 = and i32 %6, -4097
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %7) #7, !srcloc !191
  %add.ptr4 = getelementptr i8, ptr %1, i32 108
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  %9 = and i32 %8, -603979777
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %9) #7, !srcloc !191
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %11 = or i32 %10, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %11) #7, !srcloc !191
  %pdata = getelementptr inbounds %struct.mtk_tphy, ptr %tphy, i32 0, i32 2
  %12 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  %17 = and i32 %16, -134218753
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %17) #7, !srcloc !191
  %add.ptr8 = getelementptr i8, ptr %1, i32 96
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  %19 = and i32 %18, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %19) #7, !srcloc !191
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @u2_phy_instance_power_off.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@u2_phy_instance_power_off, %if.then12)) #7
          to label %do.end [label %if.then12], !srcloc !200

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %tphy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tphy, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @u2_phy_instance_power_off.__UNIQUE_ID_ddebug293, ptr noundef %21, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.30, i32 noundef %3) #7
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @phy_efuse_get(ptr nocapture noundef readonly %tphy, ptr noundef %instance) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %instance, align 4
  %pdata = getelementptr inbounds %struct.mtk_tphy, ptr %tphy, i32 0, i32 2
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %sw_efuse_supported = getelementptr inbounds %struct.mtk_phy_pdata, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %sw_efuse_supported to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sw_efuse_supported, align 2, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %efuse_sw_en = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 9
  %6 = ptrtoint ptr %efuse_sw_en to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %efuse_sw_en, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call zeroext i1 @device_property_present(ptr noundef %1, ptr noundef nonnull @.str.48) #7
  %conv = zext i1 %call.i to i32
  %efuse_sw_en2 = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 9
  %7 = ptrtoint ptr %efuse_sw_en2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %efuse_sw_en2, align 4
  br i1 %call.i, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 5
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %9, label %do.end86 [
    i32 3, label %sw.bb
    i32 4, label %if.end6.sw.bb29_crit_edge
    i32 2, label %if.end6.sw.bb29_crit_edge134
  ]

if.end6.sw.bb29_crit_edge134:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb29

if.end6.sw.bb29_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb29

sw.bb:                                            ; preds = %if.end6
  %efuse_intr = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 10
  %call7 = tail call i32 @nvmem_cell_read_variable_le_u32(ptr noundef %1, ptr noundef nonnull @.str.49, ptr noundef %efuse_intr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %do.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.50, i32 noundef %call7) #10
  br label %cleanup

if.end10:                                         ; preds = %sw.bb
  %11 = ptrtoint ptr %efuse_intr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %efuse_intr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not = icmp eq i32 %12, 0
  br i1 %tobool12.not, label %do.end16, label %do.body19

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.53) #10
  %13 = ptrtoint ptr %efuse_sw_en2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %efuse_sw_en2, align 4
  br label %cleanup

do.body19:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phy_efuse_get.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phy_efuse_get, %if.then24)) #7
          to label %cleanup [label %if.then24], !srcloc !200

if.then24:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %efuse_intr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %efuse_intr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @phy_efuse_get.__UNIQUE_ID_ddebug297, ptr noundef %1, ptr noundef nonnull @.str.55, i32 noundef %15) #7
  br label %cleanup

sw.bb29:                                          ; preds = %if.end6.sw.bb29_crit_edge, %if.end6.sw.bb29_crit_edge134
  %efuse_intr30 = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 10
  %call31 = tail call i32 @nvmem_cell_read_variable_le_u32(ptr noundef %1, ptr noundef nonnull @.str.49, ptr noundef %efuse_intr30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end37, label %do.end36

do.end36:                                         ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.57, i32 noundef %call31) #10
  br label %cleanup

if.end37:                                         ; preds = %sw.bb29
  %efuse_rx_imp = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 12
  %call38 = tail call i32 @nvmem_cell_read_variable_le_u32(ptr noundef %1, ptr noundef nonnull @.str.59, ptr noundef %efuse_rx_imp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end44, label %do.end43

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.61, i32 noundef %call38) #10
  br label %cleanup

if.end44:                                         ; preds = %if.end37
  %efuse_tx_imp = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 11
  %call45 = tail call i32 @nvmem_cell_read_variable_le_u32(ptr noundef %1, ptr noundef nonnull @.str.63, ptr noundef %efuse_tx_imp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end51, label %do.end50

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.65, i32 noundef %call45) #10
  br label %cleanup

if.end51:                                         ; preds = %if.end44
  %16 = ptrtoint ptr %efuse_intr30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %efuse_intr30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool53.not = icmp eq i32 %17, 0
  br i1 %tobool53.not, label %land.lhs.true, label %if.end51.do.body65_crit_edge

if.end51.do.body65_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body65

land.lhs.true:                                    ; preds = %if.end51
  %18 = ptrtoint ptr %efuse_rx_imp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %efuse_rx_imp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool55.not = icmp eq i32 %19, 0
  br i1 %tobool55.not, label %land.lhs.true56, label %land.lhs.true.do.body65_crit_edge

land.lhs.true.do.body65_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body65

land.lhs.true56:                                  ; preds = %land.lhs.true
  %20 = ptrtoint ptr %efuse_tx_imp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %efuse_tx_imp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool58.not = icmp eq i32 %21, 0
  br i1 %tobool58.not, label %do.end62, label %land.lhs.true56.do.body65_crit_edge

land.lhs.true56.do.body65_crit_edge:              ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body65

do.end62:                                         ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.68) #10
  %22 = ptrtoint ptr %efuse_sw_en2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %efuse_sw_en2, align 4
  br label %cleanup

do.body65:                                        ; preds = %land.lhs.true56.do.body65_crit_edge, %land.lhs.true.do.body65_crit_edge, %if.end51.do.body65_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phy_efuse_get.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phy_efuse_get, %if.then77)) #7
          to label %cleanup [label %if.then77], !srcloc !200

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %efuse_intr30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %efuse_intr30, align 4
  %25 = ptrtoint ptr %efuse_rx_imp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %efuse_rx_imp, align 4
  %27 = ptrtoint ptr %efuse_tx_imp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %efuse_tx_imp, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @phy_efuse_get.__UNIQUE_ID_ddebug298, ptr noundef %1, ptr noundef nonnull @.str.70, i32 noundef %24, i32 noundef %26, i32 noundef %28) #7
  br label %cleanup

do.end86:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef %9) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end86, %if.then77, %do.body65, %do.end62, %do.end50, %do.end43, %do.end36, %if.then24, %do.body19, %do.end16, %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %do.end86 ], [ %call31, %do.end36 ], [ %call38, %do.end43 ], [ %call45, %do.end50 ], [ 0, %if.then77 ], [ 0, %do.end62 ], [ %call7, %do.end ], [ 0, %if.then24 ], [ 0, %do.end16 ], [ 0, %do.body19 ], [ 0, %do.body65 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @phy_parse_property(ptr noundef %instance) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %instance, align 4
  %type = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 5
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call zeroext i1 @device_property_present(ptr noundef %1, ptr noundef nonnull @.str.73) #7
  %bc12_en = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 18
  %frombool = zext i1 %call.i to i8
  %4 = ptrtoint ptr %bc12_en to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %bc12_en, align 4
  %eye_src = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 13
  %call.i1 = tail call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str.74, ptr noundef %eye_src, i32 noundef 1) #7
  %eye_vrt = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 14
  %call.i2 = tail call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str.75, ptr noundef %eye_vrt, i32 noundef 1) #7
  %eye_term = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 15
  %call.i3 = tail call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str.76, ptr noundef %eye_term, i32 noundef 1) #7
  %intr = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 16
  %call.i4 = tail call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str.77, ptr noundef %intr, i32 noundef 1) #7
  %discth = getelementptr inbounds %struct.mtk_phy_instance, ptr %instance, i32 0, i32 17
  %call.i5 = tail call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str.78, ptr noundef %discth, i32 noundef 1) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phy_parse_property.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phy_parse_property, %if.then11)) #7
          to label %cleanup [label %if.then11], !srcloc !200

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %bc12_en to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bc12_en, align 4, !range !194
  %7 = zext i8 %6 to i32
  %8 = ptrtoint ptr %eye_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %eye_src, align 4
  %10 = ptrtoint ptr %eye_vrt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %eye_vrt, align 4
  %12 = ptrtoint ptr %eye_term to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %eye_term, align 4
  %14 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %intr, align 4
  %16 = ptrtoint ptr %discth to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %discth, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @phy_parse_property.__UNIQUE_ID_ddebug296, ptr noundef %1, ptr noundef nonnull @.str.80, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmem_cell_read_variable_le_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !29, !30, !32, !33, !34, !36, !38, !40, !42, !43, !44, !45, !47, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !72, !74, !75, !77, !79, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !126, !127, !128, !130, !132, !133, !134, !136, !138, !139, !140, !142, !143, !144, !146, !147, !149, !150, !152, !154, !156, !158, !160, !162, !164, !165, !166, !168, !170, !172, !174, !176}
!llvm.module.flags = !{!178, !179, !180, !181, !182, !183, !184, !185}
!llvm.ident = !{!186}

!0 = !{ptr @__initcall__kmod_phy_mtk_tphy__299_1362_mtk_tphy_driver_init6, !1, !"__initcall__kmod_phy_mtk_tphy__299_1362_mtk_tphy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 1362, i32 1}
!2 = !{ptr @__exitcall_mtk_tphy_driver_exit, !1, !"__exitcall_mtk_tphy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author300, !4, !"__UNIQUE_ID_author300", i1 false, i1 false}
!4 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 1364, i32 1}
!5 = !{ptr @__UNIQUE_ID_description301, !6, !"__UNIQUE_ID_description301", i1 false, i1 false}
!6 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 1365, i32 1}
!7 = !{ptr @__UNIQUE_ID_file302, !8, !"__UNIQUE_ID_file302", i1 false, i1 false}
!8 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 1366, i32 1}
!9 = !{ptr @__UNIQUE_ID_license303, !8, !"__UNIQUE_ID_license303", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 1357, i32 11}
!12 = !{ptr @mtk_tphy_driver, !13, !"mtk_tphy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 1354, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 1278, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mtk_tphy_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mtk_tphy_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 1287, i32 33}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 1289, i32 33}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 1310, i32 4}
!28 = !{ptr @mtk_tphy_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mtk_tphy_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 1318, i32 4}
!32 = !{ptr @mtk_tphy_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mtk_tphy_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 1335, i32 16}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 1336, i32 16}
!38 = !{ptr @mtk_tphy_ops, !39, !"mtk_tphy_ops", i1 false, i1 false}
!39 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 1196, i32 29}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 1079, i32 3}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mtk_phy_init._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @mtk_phy_init._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 1044, i32 3}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @phy_efuse_set._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @phy_efuse_set._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 556, i32 2}
!53 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @u2_phy_instance_init.__UNIQUE_ID_ddebug291, !52, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 488, i32 2}
!58 = !{ptr @u3_phy_instance_init.__UNIQUE_ID_ddebug290, !57, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 699, i32 2}
!61 = !{ptr @pcie_phy_instance_init.__UNIQUE_ID_ddebug294, !60, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 769, i32 2}
!64 = !{ptr @sata_phy_instance_init.__UNIQUE_ID_ddebug295, !63, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 581, i32 2}
!67 = !{ptr @u2_phy_instance_power_on.__UNIQUE_ID_ddebug292, !66, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 444, i32 2}
!70 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @hs_slew_rate_calibrate.__UNIQUE_ID_ddebug289, !69, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 606, i32 2}
!74 = !{ptr @u2_phy_instance_power_off.__UNIQUE_ID_ddebug293, !73, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 888, i32 33}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 900, i32 2}
!79 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @phy_type_syscon_get._entry, !78, !"_entry", i1 false, i1 false}
!82 = !{ptr @phy_type_syscon_get._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 1148, i32 3}
!85 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @mtk_phy_xlate._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @mtk_phy_xlate._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 1159, i32 3}
!90 = !{ptr @mtk_phy_xlate._entry.37, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @mtk_phy_xlate._entry_ptr.39, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 1169, i32 3}
!94 = !{ptr @mtk_phy_xlate._entry.40, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @mtk_phy_xlate._entry_ptr.42, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 1182, i32 3}
!98 = !{ptr @mtk_phy_xlate._entry.43, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @mtk_phy_xlate._entry_ptr.45, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 795, i32 3}
!102 = !{ptr @phy_v1_banks_init._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @phy_v1_banks_init._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 820, i32 3}
!106 = !{ptr @phy_v2_banks_init._entry, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @phy_v2_banks_init._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 950, i32 57}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 956, i32 46}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 958, i32 4}
!114 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @phy_efuse_get._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @phy_efuse_get._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 964, i32 4}
!119 = !{ptr @phy_efuse_get._entry.52, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @phy_efuse_get._entry_ptr.54, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 969, i32 3}
!123 = !{ptr @phy_efuse_get.__UNIQUE_ID_ddebug297, !122, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 976, i32 4}
!126 = !{ptr @phy_efuse_get._entry.56, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @phy_efuse_get._entry_ptr.58, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 980, i32 46}
!130 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 982, i32 4}
!132 = !{ptr @phy_efuse_get._entry.60, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @phy_efuse_get._entry_ptr.62, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 986, i32 46}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 988, i32 4}
!138 = !{ptr @phy_efuse_get._entry.64, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @phy_efuse_get._entry_ptr.66, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.68, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 996, i32 4}
!142 = !{ptr @phy_efuse_get._entry.67, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @phy_efuse_get._entry_ptr.69, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.70, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 1001, i32 3}
!146 = !{ptr @phy_efuse_get.__UNIQUE_ID_ddebug298, !145, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!147 = !{ptr @phy_efuse_get._entry.71, !148, !"_entry", i1 false, i1 false}
!148 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 1005, i32 3}
!149 = !{ptr @phy_efuse_get._entry_ptr.72, !148, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.73, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 833, i32 53}
!152 = !{ptr @.str.74, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 834, i32 32}
!154 = !{ptr @.str.75, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 836, i32 32}
!156 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 838, i32 32}
!158 = !{ptr @.str.77, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 840, i32 32}
!160 = !{ptr @.str.78, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 842, i32 32}
!162 = !{ptr @.str.79, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 844, i32 2}
!164 = !{ptr @.str.80, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @phy_parse_property.__UNIQUE_ID_ddebug296, !163, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!166 = !{ptr @mtk_tphy_id_table, !167, !"mtk_tphy_id_table", i1 false, i1 false}
!167 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 1232, i32 34}
!168 = !{ptr @tphy_v1_pdata, !169, !"tphy_v1_pdata", i1 false, i1 false}
!169 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 1205, i32 35}
!170 = !{ptr @tphy_v2_pdata, !171, !"tphy_v2_pdata", i1 false, i1 false}
!171 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 1210, i32 35}
!172 = !{ptr @mt8173_pdata, !173, !"mt8173_pdata", i1 false, i1 false}
!173 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 1221, i32 35}
!174 = !{ptr @mt8195_pdata, !175, !"mt8195_pdata", i1 false, i1 false}
!175 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 1226, i32 35}
!176 = !{ptr @tphy_v3_pdata, !177, !"tphy_v3_pdata", i1 false, i1 false}
!177 = !{!"../drivers/phy/mediatek/phy-mtk-tphy.c", i32 1216, i32 35}
!178 = !{i32 1, !"wchar_size", i32 2}
!179 = !{i32 1, !"min_enum_size", i32 4}
!180 = !{i32 8, !"branch-target-enforcement", i32 0}
!181 = !{i32 8, !"sign-return-address", i32 0}
!182 = !{i32 8, !"sign-return-address-all", i32 0}
!183 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!184 = !{i32 7, !"uwtable", i32 1}
!185 = !{i32 7, !"frame-pointer", i32 2}
!186 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!187 = !{!"branch_weights", i32 1, i32 2000}
!188 = !{i64 3116881}
!189 = !{i64 2155218964}
!190 = !{i64 2155219164}
!191 = !{i64 3116463}
!192 = !{i64 2155219924}
!193 = !{i64 2155220124}
!194 = !{i8 0, i8 2}
!195 = !{i64 2155218004}
!196 = !{i64 2155218204}
!197 = !{i64 2155260341}
!198 = !{i64 2155261057}
!199 = !{i64 2155244633}
!200 = !{i64 2148761111, i64 2148761116, i64 2148761129, i64 2148761173, i64 2148761207, i64 2148761228}
!201 = !{i64 2155221471}
!202 = !{i64 2155223820}
!203 = !{i64 2155229845}
!204 = !{i64 2155230311}
!205 = !{i64 2155230786}
