; ModuleID = '/llk/IR_all_yes/drivers/phy/mediatek/phy-mtk-xsphy.c_pt.bc'
source_filename = "../drivers/phy/mediatek/phy-mtk-xsphy.c"
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
%struct.mtk_xsphy = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.xsphy_instance = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_phy_mtk_xsphy__294_548_mtk_xsphy_driver_init6 = internal global ptr @mtk_xsphy_driver_init, section ".initcall6.init", align 4
@mtk_xsphy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_xsphy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_xsphy_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk_xsphy_driver_exit = internal global ptr @mtk_xsphy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [62 x i8] c"phy_mtk_xsphy.author=Chunfeng Yun <chunfeng.yun@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [53 x i8] c"phy_mtk_xsphy.description=MediaTek USB XS-PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [54 x i8] c"phy_mtk_xsphy.file=drivers/phy/mediatek/phy-mtk-xsphy\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [29 x i8] c"phy_mtk_xsphy.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mtk-xsphy\00", [22 x i8] zeroinitializer }, align 32
@mtk_xsphy_id_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,xsphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mtk_xsphy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 473, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to remap glb regs\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mtk_xsphy_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/phy/mediatek/phy-mtk-xsphy.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_xsphy_probe._entry_ptr = internal global ptr @mtk_xsphy_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mediatek,src-ref-clk-mhz\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek,src-coef\00", [46 x i8] zeroinitializer }, align 32
@mtk_xsphy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @mtk_phy_init, ptr @mtk_phy_exit, ptr @mtk_phy_power_on, ptr @mtk_phy_power_off, ptr @mtk_phy_set_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@mtk_xsphy_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 500, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to create phy\0A\00", [42 x i8] zeroinitializer }, align 32
@mtk_xsphy_probe._entry_ptr.10 = internal global ptr @mtk_xsphy_probe._entry.8, section ".printk_index", align 4
@mtk_xsphy_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 508, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to get address resource(id-%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@mtk_xsphy_probe._entry_ptr.13 = internal global ptr @mtk_xsphy_probe._entry.11, section ".printk_index", align 4
@mtk_xsphy_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 514, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to remap phy regs\0A\00", [38 x i8] zeroinitializer }, align 32
@mtk_xsphy_probe._entry_ptr.16 = internal global ptr @mtk_xsphy_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ref\00", [28 x i8] zeroinitializer }, align 32
@mtk_xsphy_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 526, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get ref_clk(id-%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@mtk_xsphy_probe._entry_ptr.20 = internal global ptr @mtk_xsphy_probe._entry.18, section ".printk_index", align 4
@mtk_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 328, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to enable ref_clk\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mtk_phy_init\00", [19 x i8] zeroinitializer }, align 32
@mtk_phy_init._entry_ptr = internal global ptr @mtk_phy_init._entry, section ".printk_index", align 4
@mtk_phy_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.3, i32 341, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"incompatible phy type\0A\00", [41 x i8] zeroinitializer }, align 32
@mtk_phy_init._entry_ptr.25 = internal global ptr @mtk_phy_init._entry.23, section ".printk_index", align 4
@u2_phy_instance_power_on.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"phy_mtk_xsphy\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"u2_phy_instance_power_on\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s(%d)\0A\00", [24 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@u2_phy_slew_rate_calibrate.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"u2_phy_slew_rate_calibrate\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"phy.%d, fm_out:%d, calib:%d (clk:%d, coef:%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@u2_phy_instance_power_off.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.31, ptr @.str.3, ptr @.str.28, i8 0, i8 53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"u2_phy_instance_power_off\00", [38 x i8] zeroinitializer }, align 32
@mtk_phy_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 401, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"invalid number of cells in 'phy' property\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtk_phy_xlate\00", [18 x i8] zeroinitializer }, align 32
@mtk_phy_xlate._entry_ptr = internal global ptr @mtk_phy_xlate._entry, section ".printk_index", align 4
@mtk_phy_xlate._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 412, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to find appropriate phy\0A\00", [32 x i8] zeroinitializer }, align 32
@mtk_phy_xlate._entry_ptr.36 = internal global ptr @mtk_phy_xlate._entry.34, section ".printk_index", align 4
@mtk_phy_xlate._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.3, i32 419, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unsupported phy type: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@mtk_phy_xlate._entry_ptr.39 = internal global ptr @mtk_phy_xlate._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mediatek,efuse-intr\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mediatek,eye-src\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mediatek,eye-vrt\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek,eye-term\00", [46 x i8] zeroinitializer }, align 32
@phy_parse_property.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.44, ptr @.str.3, ptr @.str.45, i8 0, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"phy_parse_property\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"intr:%d, src:%d, vrt:%d, term:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mediatek,efuse-tx-imp\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mediatek,efuse-rx-imp\00", [42 x i8] zeroinitializer }, align 32
@phy_parse_property.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.44, ptr @.str.3, ptr @.str.48, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"intr:%d, tx-imp:%d, rx-imp:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@phy_parse_property._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.44, ptr @.str.3, i32 272, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@phy_parse_property._entry_ptr = internal global ptr @phy_parse_property._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 6, i64 11]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"mtk_xsphy_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 540, i32 31 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 543, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant [19 x i8] c"mtk_xsphy_id_table\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 437, i32 34 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 473, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 481, i32 32 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 483, i32 32 }
@___asan_gen_.84 = private unnamed_addr constant [14 x i8] c"mtk_xsphy_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 428, i32 29 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 500, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 507, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 514, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 524, i32 43 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 526, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 328, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 341, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 199, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 164, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 214, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 401, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 412, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 419, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 248, i32 33 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 250, i32 33 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 252, i32 33 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 254, i32 33 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 256, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 263, i32 33 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 265, i32 33 }
@___asan_gen_.192 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 267, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.196 = private constant [40 x i8] c"../drivers/phy/mediatek/phy-mtk-xsphy.c\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 272, i32 3 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_mtk_xsphy_driver_exit, ptr @__initcall__kmod_phy_mtk_xsphy__294_548_mtk_xsphy_driver_init6, ptr @mtk_phy_init._entry, ptr @mtk_phy_init._entry.23, ptr @mtk_phy_init._entry_ptr, ptr @mtk_phy_init._entry_ptr.25, ptr @mtk_phy_xlate._entry, ptr @mtk_phy_xlate._entry.34, ptr @mtk_phy_xlate._entry.37, ptr @mtk_phy_xlate._entry_ptr, ptr @mtk_phy_xlate._entry_ptr.36, ptr @mtk_phy_xlate._entry_ptr.39, ptr @mtk_xsphy_driver_exit, ptr @mtk_xsphy_probe._entry, ptr @mtk_xsphy_probe._entry.11, ptr @mtk_xsphy_probe._entry.14, ptr @mtk_xsphy_probe._entry.18, ptr @mtk_xsphy_probe._entry.8, ptr @mtk_xsphy_probe._entry_ptr, ptr @mtk_xsphy_probe._entry_ptr.10, ptr @mtk_xsphy_probe._entry_ptr.13, ptr @mtk_xsphy_probe._entry_ptr.16, ptr @mtk_xsphy_probe._entry_ptr.20, ptr @phy_parse_property._entry, ptr @phy_parse_property._entry_ptr, ptr @mtk_xsphy_driver, ptr @.str, ptr @mtk_xsphy_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @mtk_xsphy_ops, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_xsphy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_xsphy_id_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_xsphy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_xsphy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_xsphy_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_xsphy_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_xsphy_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_xsphy_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_phy_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_phy_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_phy_xlate._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_phy_xlate._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_parse_property._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_xsphy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_xsphy_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_xsphy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_xsphy_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_xsphy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #6
  %2 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 24, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup74_crit_edge, label %if.end

entry.cleanup74_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup74

if.end:                                           ; preds = %entry
  %call.i140 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #6
  %cmp.not5.i = icmp eq ptr %call.i140, null
  br i1 %cmp.not5.i, label %if.end.of_get_child_count.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.of_get_child_count.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_get_child_count.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i140, %if.end.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %child.06.i) #6
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %for.body.i.of_get_child_count.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.of_get_child_count.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_get_child_count.exit

of_get_child_count.exit:                          ; preds = %for.body.i.of_get_child_count.exit_crit_edge, %if.end.of_get_child_count.exit_crit_edge
  %num.0.lcssa.i = phi i32 [ 0, %if.end.of_get_child_count.exit_crit_edge ], [ %inc.i, %for.body.i.of_get_child_count.exit_crit_edge ]
  %nphys = getelementptr inbounds %struct.mtk_xsphy, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %nphys to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %num.0.lcssa.i, ptr %nphys, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num.0.lcssa.i, i32 4) #6
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !113

devm_kcalloc.exit.thread:                         ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #8
  %phys149 = getelementptr inbounds %struct.mtk_xsphy, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %phys149 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %phys149, align 4
  br label %cleanup74

devm_kcalloc.exit:                                ; preds = %of_get_child_count.exit
  %7 = extractvalue { i32, i1 } %4, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %7, i32 noundef 3520) #6
  %phys = getelementptr inbounds %struct.mtk_xsphy, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5.i.i, ptr %phys, align 4
  %tobool7.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool7.not, label %devm_kcalloc.exit.cleanup74_crit_edge, label %if.end9

devm_kcalloc.exit.cleanup74_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup74

if.end9:                                          ; preds = %devm_kcalloc.exit
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev1, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call11 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end9.if.end21_crit_edge, label %if.then13

if.end9.if.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then13:                                        ; preds = %if.end9
  %call14 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call11) #6
  %glb_base = getelementptr inbounds %struct.mtk_xsphy, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %glb_base to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call14, ptr %glb_base, align 4
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.then13.if.end21_crit_edge

if.then13.if.end21_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.end:                                           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  %12 = ptrtoint ptr %glb_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %glb_base, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup74

if.end21:                                         ; preds = %if.then13.if.end21_crit_edge, %if.end9.if.end21_crit_edge
  %src_ref_clk = getelementptr inbounds %struct.mtk_xsphy, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %src_ref_clk to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 26, ptr %src_ref_clk, align 4
  %src_coef = getelementptr inbounds %struct.mtk_xsphy, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %src_coef to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 17, ptr %src_coef, align 4
  %call.i141 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.6, ptr noundef %src_ref_clk, i32 noundef 1) #6
  %call.i142 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef %src_coef, i32 noundef 1) #6
  %call26 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #6
  %cmp.not173 = icmp eq ptr %call26, null
  br i1 %cmp.not173, label %if.end21.for.end_crit_edge, label %if.end21.for.body_crit_edge

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  br label %for.body

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end21.for.body_crit_edge
  %port.0175 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end21.for.body_crit_edge ]
  %child_np.0174 = phi ptr [ %call71, %for.inc.for.body_crit_edge ], [ %call26, %if.end21.for.body_crit_edge ]
  %call.i143 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 44, i32 noundef 3520) #6
  %tobool28.not = icmp eq ptr %call.i143, null
  br i1 %tobool28.not, label %for.body.put_child_crit_edge, label %if.end30

for.body.put_child_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_child

if.end30:                                         ; preds = %for.body
  %17 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phys, align 4
  %arrayidx = getelementptr ptr, ptr %18, i32 %port.0175
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i143, ptr %arrayidx, align 4
  %call32 = call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef nonnull %child_np.0174, ptr noundef nonnull @mtk_xsphy_ops) #6
  %cmp.i144 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i144, label %do.end37, label %if.end39

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #9
  %20 = ptrtoint ptr %call32 to i32
  br label %put_child

if.end39:                                         ; preds = %if.end30
  %call40 = call i32 @of_address_to_resource(ptr noundef nonnull %child_np.0174, i32 noundef 0, ptr noundef nonnull %res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end46, label %do.end45

do.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %port.0175) #9
  br label %put_child

if.end46:                                         ; preds = %if.end39
  %call48 = call ptr @devm_ioremap_resource(ptr noundef %call32, ptr noundef nonnull %res) #6
  %port_base = getelementptr inbounds %struct.xsphy_instance, ptr %call.i143, i32 0, i32 1
  %21 = ptrtoint ptr %port_base to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call48, ptr %port_base, align 4
  %cmp.i145 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i145, label %do.end54, label %if.end57

do.end54:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %port_base.le = getelementptr inbounds %struct.xsphy_instance, ptr %call.i143, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #9
  %22 = ptrtoint ptr %port_base.le to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port_base.le, align 4
  %24 = ptrtoint ptr %23 to i32
  br label %put_child

if.end57:                                         ; preds = %if.end46
  %25 = ptrtoint ptr %call.i143 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call32, ptr %call.i143, align 4
  %index = getelementptr inbounds %struct.xsphy_instance, ptr %call.i143, i32 0, i32 3
  %26 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %port.0175, ptr %index, align 4
  %driver_data.i.i146 = getelementptr inbounds %struct.device, ptr %call32, i32 0, i32 8
  %27 = ptrtoint ptr %driver_data.i.i146 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i143, ptr %driver_data.i.i146, align 4
  %inc = add i32 %port.0175, 1
  %call60 = call ptr @devm_clk_get(ptr noundef %call32, ptr noundef nonnull @.str.17) #6
  %ref_clk = getelementptr inbounds %struct.xsphy_instance, ptr %call.i143, i32 0, i32 2
  %28 = ptrtoint ptr %ref_clk to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call60, ptr %ref_clk, align 4
  %cmp.i147 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i147, label %do.end66, label %for.inc

do.end66:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %ref_clk.le = getelementptr inbounds %struct.xsphy_instance, ptr %call.i143, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %inc) #9
  %29 = ptrtoint ptr %ref_clk.le to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ref_clk.le, align 4
  %31 = ptrtoint ptr %30 to i32
  br label %put_child

for.inc:                                          ; preds = %if.end57
  %call71 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %child_np.0174) #6
  %cmp.not = icmp eq ptr %call71, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end21.for.end_crit_edge
  %call72 = call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @mtk_phy_xlate) #6
  %cmp.i.i = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  %32 = ptrtoint ptr %call72 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %32, i32 0
  br label %cleanup74

put_child:                                        ; preds = %do.end66, %do.end54, %do.end45, %do.end37, %for.body.put_child_crit_edge
  %retval2.0.ph = phi i32 [ %31, %do.end66 ], [ %24, %do.end54 ], [ %call40, %do.end45 ], [ %20, %do.end37 ], [ -12, %for.body.put_child_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %child_np.0174) #6
  br label %cleanup74

cleanup74:                                        ; preds = %put_child, %for.end, %do.end, %devm_kcalloc.exit.cleanup74_crit_edge, %devm_kcalloc.exit.thread, %entry.cleanup74_crit_edge
  %retval.0 = phi i32 [ %14, %do.end ], [ %retval2.0.ph, %put_child ], [ %spec.select.i, %for.end ], [ -12, %entry.cleanup74_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup74_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

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
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mtk_phy_xlate(ptr noundef %dev, ptr nocapture noundef readonly %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %nphys = getelementptr inbounds %struct.mtk_xsphy, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %nphys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nphys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp251 = icmp sgt i32 %7, 0
  br i1 %cmp251, label %for.body.lr.ph, label %for.cond.preheader.do.end12_crit_edge

for.cond.preheader.do.end12_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %phys = getelementptr inbounds %struct.mtk_xsphy, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phys, align 4
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #9
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %index.052, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.cond.do.end12_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.do.end12_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %index.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %9, i32 %index.052
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

do.end12:                                         ; preds = %for.end.do.end12_crit_edge, %for.cond.do.end12_crit_edge, %for.cond.preheader.do.end12_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #9
  br label %cleanup

if.end14:                                         ; preds = %for.end
  %args15 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %16 = ptrtoint ptr %args15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %args15, align 4
  %type = getelementptr inbounds %struct.xsphy_instance, ptr %11, i32 0, i32 4
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %type, align 4
  %.off = add i32 %17, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end27, label %do.end24

do.end24:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %17) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @phy_parse_property(ptr noundef %1, ptr noundef nonnull %11)
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end24, %do.end12, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %20, %if.end27 ], [ inttoptr (i32 -22 to ptr), %do.end24 ], [ inttoptr (i32 -22 to ptr), %do.end12 ]
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
  call void @__sanitizer_cov_trace_pc() #8
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
  %ref_clk = getelementptr inbounds %struct.xsphy_instance, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ref_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.21) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %type = getelementptr inbounds %struct.xsphy_instance, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %do.end7 [
    i32 3, label %sw.bb
    i32 4, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.end
  %port_base.i = getelementptr inbounds %struct.xsphy_instance, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %port_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 792
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  %16 = and i32 %15, -32769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #6, !srcloc !117
  %add.ptr1.i = getelementptr i8, ptr %14, i32 768
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %18 = or i32 %17, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %18) #6, !srcloc !117
  %19 = ptrtoint ptr %port_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %port_base.i, align 4
  %efuse_intr.i = getelementptr inbounds %struct.xsphy_instance, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %efuse_intr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %efuse_intr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i24 = icmp eq i32 %22, 0
  br i1 %tobool.not.i24, label %sw.bb.if.end.i27_crit_edge, label %if.then.i

sw.bb.if.end.i27_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i27

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i25 = getelementptr i8, ptr %20, i32 772
  %and.i = shl i32 %22, 19
  %shl.i = and i32 %and.i, 16252928
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %24 = and i32 %23, -63489
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #6
  %or.i.i = or i32 %25, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %26) #6, !srcloc !117
  br label %if.end.i27

if.end.i27:                                       ; preds = %if.then.i, %sw.bb.if.end.i27_crit_edge
  %eye_src.i = getelementptr inbounds %struct.xsphy_instance, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %eye_src.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %eye_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool2.not.i26 = icmp eq i32 %28, 0
  br i1 %tobool2.not.i26, label %if.end.i27.if.end8.i_crit_edge, label %if.then3.i28

if.end.i27.if.end8.i_crit_edge:                   ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then3.i28:                                     ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr4.i = getelementptr i8, ptr %20, i32 788
  %and6.i = shl i32 %28, 12
  %shl7.i = and i32 %and6.i, 28672
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %30 = and i32 %29, -7340033
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #6
  %or.i2.i = or i32 %31, %shl7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  %32 = tail call i32 @llvm.bswap.i32(i32 %or.i2.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %32) #6, !srcloc !117
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then3.i28, %if.end.i27.if.end8.i_crit_edge
  %eye_vrt.i = getelementptr inbounds %struct.xsphy_instance, ptr %1, i32 0, i32 9
  %33 = ptrtoint ptr %eye_vrt.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %eye_vrt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool9.not.i = icmp eq i32 %34, 0
  br i1 %tobool9.not.i, label %if.end8.i.if.end15.i_crit_edge, label %if.then10.i

if.end8.i.if.end15.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr11.i = getelementptr i8, ptr %20, i32 772
  %and13.i = shl i32 %34, 12
  %shl14.i = and i32 %and13.i, 28672
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %36 = and i32 %35, -7340033
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #6
  %or.i4.i = or i32 %37, %shl14.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  %38 = tail call i32 @llvm.bswap.i32(i32 %or.i4.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %38) #6, !srcloc !117
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then10.i, %if.end8.i.if.end15.i_crit_edge
  %eye_term.i = getelementptr inbounds %struct.xsphy_instance, ptr %1, i32 0, i32 10
  %39 = ptrtoint ptr %eye_term.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %eye_term.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool16.not.i = icmp eq i32 %40, 0
  br i1 %tobool16.not.i, label %if.end15.i.cleanup_crit_edge, label %if.then17.i

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr18.i = getelementptr i8, ptr %20, i32 772
  %and20.i = shl i32 %40, 8
  %shl21.i = and i32 %and20.i, 1792
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %42 = and i32 %41, -458753
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #6
  %or.i6.i = or i32 %43, %shl21.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  %44 = tail call i32 @llvm.bswap.i32(i32 %or.i6.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %44) #6, !srcloc !117
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  %port_base.i29 = getelementptr inbounds %struct.xsphy_instance, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %port_base.i29 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %port_base.i29, align 4
  %efuse_intr.i30 = getelementptr inbounds %struct.xsphy_instance, ptr %1, i32 0, i32 5
  %47 = ptrtoint ptr %efuse_intr.i30 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %efuse_intr.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i31 = icmp eq i32 %48, 0
  br i1 %tobool.not.i31, label %sw.bb4.if.end.i38_crit_edge, label %if.then.i36

sw.bb4.if.end.i38_crit_edge:                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i38

if.then.i36:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  %glb_base.i = getelementptr inbounds %struct.mtk_xsphy, ptr %5, i32 0, i32 1
  %49 = ptrtoint ptr %glb_base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %glb_base.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %50, i32 256
  %and.i33 = shl i32 %48, 16
  %shl.i34 = and i32 %and.i33, 4128768
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %52 = and i32 %51, -16129
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #6
  %or.i.i35 = or i32 %53, %shl.i34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  %54 = tail call i32 @llvm.bswap.i32(i32 %or.i.i35) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %54) #6, !srcloc !117
  br label %if.end.i38

if.end.i38:                                       ; preds = %if.then.i36, %sw.bb4.if.end.i38_crit_edge
  %efuse_tx_imp.i = getelementptr inbounds %struct.xsphy_instance, ptr %1, i32 0, i32 6
  %55 = ptrtoint ptr %efuse_tx_imp.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %efuse_tx_imp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool2.not.i37 = icmp eq i32 %56, 0
  br i1 %tobool2.not.i37, label %if.end.i38.if.end7.i_crit_edge, label %if.then3.i41

if.end.i38.if.end7.i_crit_edge:                   ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then3.i41:                                     ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr4.i39 = getelementptr i8, ptr %46, i32 1028
  %and6.i40 = and i32 %56, 31
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i39) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %58 = and i32 %57, -520093697
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #6
  %or.i24.i = or i32 %59, %and6.i40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  %60 = tail call i32 @llvm.bswap.i32(i32 %or.i24.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i39, i32 %60) #6, !srcloc !117
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then3.i41, %if.end.i38.if.end7.i_crit_edge
  %efuse_rx_imp.i = getelementptr inbounds %struct.xsphy_instance, ptr %1, i32 0, i32 7
  %61 = ptrtoint ptr %efuse_rx_imp.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %efuse_rx_imp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool8.not.i = icmp eq i32 %62, 0
  br i1 %tobool8.not.i, label %if.end7.i.cleanup_crit_edge, label %if.then9.i

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr10.i = getelementptr i8, ptr %46, i32 1044
  %and12.i = and i32 %62, 31
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %64 = and i32 %63, -520093697
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #6
  %or.i26.i = or i32 %65, %and12.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  %66 = tail call i32 @llvm.bswap.i32(i32 %or.i26.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %66) #6, !srcloc !117
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.24) #9
  %69 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ref_clk, align 4
  tail call void @clk_disable(ptr noundef %70) #6
  tail call void @clk_unprepare(ptr noundef %70) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.then9.i, %if.end7.i.cleanup_crit_edge, %if.then17.i, %if.end15.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ -22, %do.end7 ], [ 0, %if.end15.i.cleanup_crit_edge ], [ 0, %if.then17.i ], [ 0, %if.end7.i.cleanup_crit_edge ], [ 0, %if.then9.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_phy_exit(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ref_clk = getelementptr inbounds %struct.xsphy_instance, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ref_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_phy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %type = getelementptr inbounds %struct.xsphy_instance, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %port_base.i = getelementptr inbounds %struct.xsphy_instance, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %port_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port_base.i, align 4
  %index1.i = getelementptr inbounds %struct.xsphy_instance, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %index1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 792
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %13 = or i32 %12, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #6, !srcloc !117
  %add.ptr2.i = getelementptr i8, ptr %9, i32 876
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %15 = and i32 %14, -872415233
  %16 = or i32 %15, 603979776
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %16) #6, !srcloc !117
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @u2_phy_instance_power_on.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_phy_power_on, %if.then.i)) #6
          to label %u2_phy_instance_power_on.exit [label %if.then.i], !srcloc !122

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @u2_phy_instance_power_on.__UNIQUE_ID_ddebug290, ptr noundef %18, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef %11) #6
  br label %u2_phy_instance_power_on.exit

u2_phy_instance_power_on.exit:                    ; preds = %if.then.i, %if.then
  tail call fastcc void @u2_phy_slew_rate_calibrate(ptr noundef %5, ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %u2_phy_instance_power_on.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_phy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %type = getelementptr inbounds %struct.xsphy_instance, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %port_base.i = getelementptr inbounds %struct.xsphy_instance, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %port_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port_base.i, align 4
  %index1.i = getelementptr inbounds %struct.xsphy_instance, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %index1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 792
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  %13 = and i32 %12, -4097
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #6, !srcloc !117
  %add.ptr2.i = getelementptr i8, ptr %9, i32 876
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %15 = and i32 %14, -872415233
  %16 = or i32 %15, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %16) #6, !srcloc !117
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @u2_phy_instance_power_off.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_phy_power_off, %if.then.i)) #6
          to label %if.end [label %if.then.i], !srcloc !122

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @u2_phy_instance_power_off.__UNIQUE_ID_ddebug291, ptr noundef %18, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.31, i32 noundef %11) #6
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_phy_set_mode(ptr nocapture noundef readonly %phy, i32 noundef %mode, i32 noundef %submode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %type = getelementptr inbounds %struct.xsphy_instance, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %port_base.i = getelementptr inbounds %struct.xsphy_instance, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %port_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 876
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !114
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  %8 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %mode, label %if.then.if.end_crit_edge [
    i32 6, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 11, label %sw.bb5.i
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %or.i = or i32 %7, 514
  br label %do.body.i

sw.bb3.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %or4.i = and i32 %7, -515
  %and.i = or i32 %or4.i, 512
  br label %do.body.i

sw.bb5.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %and6.i = and i32 %7, -515
  br label %do.body.i

do.body.i:                                        ; preds = %sw.bb5.i, %sw.bb3.i, %sw.bb.i
  %tmp.0.i = phi i32 [ %and6.i, %sw.bb5.i ], [ %and.i, %sw.bb3.i ], [ %or.i, %sw.bb.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %tmp.0.i) #6
  %10 = ptrtoint ptr %port_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port_base.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %11, i32 876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %9) #6, !srcloc !117
  br label %if.end

if.end:                                           ; preds = %do.body.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u2_phy_slew_rate_calibrate(ptr nocapture noundef readonly %xsphy, ptr nocapture noundef readonly %inst) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %port_base = getelementptr inbounds %struct.xsphy_instance, ptr %inst, i32 0, i32 1
  %0 = ptrtoint ptr %port_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_base, align 4
  %eye_src = getelementptr inbounds %struct.xsphy_instance, ptr %inst, i32 0, i32 8
  %2 = ptrtoint ptr %eye_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eye_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 788
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %5 = or i32 %4, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #6, !srcloc !117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #6
  %add.ptr1 = getelementptr i8, ptr %1, i32 272
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %8 = or i32 %7, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %8) #6, !srcloc !117
  %add.ptr2 = getelementptr i8, ptr %1, i32 256
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !114
  %10 = shl i32 %9, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %or.i100 = or i32 %10, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i100) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %11) #6, !srcloc !117
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %13 = or i32 %12, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %13) #6, !srcloc !117
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 200000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 145) #6
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool17.not109 = icmp eq i32 %15, 0
  br i1 %tobool17.not109, label %if.end.land.lhs.true_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then33.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call21 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call21, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call21, %add.i
  br i1 %cmp3.i, label %if.then24, label %if.then33

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  br label %for.end

if.then33:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  %18 = and i32 %17, 16777216
  %tobool17.not = icmp eq i32 %18, 0
  br i1 %tobool17.not, label %if.then33.land.lhs.true_crit_edge, label %if.then33.for.end_crit_edge

if.then33.for.end_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then33.land.lhs.true_crit_edge:                ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

for.end:                                          ; preds = %if.then33.for.end_crit_edge, %if.then24, %if.end.for.end_crit_edge
  %add.ptr40 = getelementptr i8, ptr %1, i32 268
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #6, !srcloc !114
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  %22 = and i32 %21, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %22) #6, !srcloc !117
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  %24 = and i32 %23, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %24) #6, !srcloc !117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool46.not = icmp eq i32 %19, 0
  br i1 %tobool46.not, label %for.end.do.body54_crit_edge, label %if.then47

for.end.do.body54_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body54

if.then47:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %src_ref_clk = getelementptr inbounds %struct.mtk_xsphy, ptr %xsphy, i32 0, i32 4
  %25 = ptrtoint ptr %src_ref_clk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %src_ref_clk, align 4
  %src_coef = getelementptr inbounds %struct.mtk_xsphy, ptr %xsphy, i32 0, i32 5
  %27 = ptrtoint ptr %src_coef to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %src_coef, align 4
  %mul = shl i32 %26, 10
  %mul48 = mul i32 %mul, %28
  %div = udiv i32 %mul48, %20
  %add51 = add nuw i32 %div, 500
  %div52 = udiv i32 %add51, 1000
  br label %do.body54

do.body54:                                        ; preds = %if.then47, %for.end.do.body54_crit_edge
  %calib_val.0 = phi i32 [ %div52, %if.then47 ], [ 3, %for.end.do.body54_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @u2_phy_slew_rate_calibrate.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@u2_phy_slew_rate_calibrate, %if.then60)) #6
          to label %do.end65 [label %if.then60], !srcloc !122

if.then60:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %xsphy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %xsphy, align 4
  %index = getelementptr inbounds %struct.xsphy_instance, ptr %inst, i32 0, i32 3
  %31 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %index, align 4
  %src_ref_clk61 = getelementptr inbounds %struct.mtk_xsphy, ptr %xsphy, i32 0, i32 4
  %33 = ptrtoint ptr %src_ref_clk61 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %src_ref_clk61, align 4
  %src_coef62 = getelementptr inbounds %struct.mtk_xsphy, ptr %xsphy, i32 0, i32 5
  %35 = ptrtoint ptr %src_coef62 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %src_coef62, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @u2_phy_slew_rate_calibrate.__UNIQUE_ID_ddebug289, ptr noundef %30, ptr noundef nonnull @.str.30, i32 noundef %32, i32 noundef %20, i32 noundef %calib_val.0, i32 noundef %34, i32 noundef %36) #6
  br label %do.end65

do.end65:                                         ; preds = %if.then60, %do.body54
  %and67 = shl i32 %calib_val.0, 12
  %shl = and i32 %and67, 28672
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %38 = and i32 %37, -7340033
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %or.i106 = or i32 %39, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  %40 = tail call i32 @llvm.bswap.i32(i32 %or.i106) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %40) #6, !srcloc !117
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  %42 = and i32 %41, -8388609
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %42) #6, !srcloc !117
  br label %cleanup

cleanup:                                          ; preds = %do.end65, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @phy_parse_property(ptr nocapture noundef readonly %xsphy, ptr noundef %inst) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inst, align 4
  %type = getelementptr inbounds %struct.xsphy_instance, ptr %inst, i32 0, i32 4
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %3, label %do.end38 [
    i32 3, label %sw.bb
    i32 4, label %sw.bb12
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %efuse_intr = getelementptr inbounds %struct.xsphy_instance, ptr %inst, i32 0, i32 5
  %call.i = tail call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str.40, ptr noundef %efuse_intr, i32 noundef 1) #6
  %eye_src = getelementptr inbounds %struct.xsphy_instance, ptr %inst, i32 0, i32 8
  %call.i66 = tail call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str.41, ptr noundef %eye_src, i32 noundef 1) #6
  %eye_vrt = getelementptr inbounds %struct.xsphy_instance, ptr %inst, i32 0, i32 9
  %call.i67 = tail call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str.42, ptr noundef %eye_vrt, i32 noundef 1) #6
  %eye_term = getelementptr inbounds %struct.xsphy_instance, ptr %inst, i32 0, i32 10
  %call.i68 = tail call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str.43, ptr noundef %eye_term, i32 noundef 1) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phy_parse_property.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phy_parse_property, %if.then)) #6
          to label %cleanup [label %if.then], !srcloc !122

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %efuse_intr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %efuse_intr, align 4
  %7 = ptrtoint ptr %eye_src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %eye_src, align 4
  %9 = ptrtoint ptr %eye_vrt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %eye_vrt, align 4
  %11 = ptrtoint ptr %eye_term to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %eye_term, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @phy_parse_property.__UNIQUE_ID_ddebug292, ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12) #6
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %efuse_intr13 = getelementptr inbounds %struct.xsphy_instance, ptr %inst, i32 0, i32 5
  %call.i69 = tail call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str.40, ptr noundef %efuse_intr13, i32 noundef 1) #6
  %efuse_tx_imp = getelementptr inbounds %struct.xsphy_instance, ptr %inst, i32 0, i32 6
  %call.i70 = tail call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str.46, ptr noundef %efuse_tx_imp, i32 noundef 1) #6
  %efuse_rx_imp = getelementptr inbounds %struct.xsphy_instance, ptr %inst, i32 0, i32 7
  %call.i71 = tail call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str.47, ptr noundef %efuse_rx_imp, i32 noundef 1) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phy_parse_property.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phy_parse_property, %if.then29)) #6
          to label %cleanup [label %if.then29], !srcloc !122

if.then29:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %efuse_intr13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %efuse_intr13, align 4
  %15 = ptrtoint ptr %efuse_tx_imp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %efuse_tx_imp, align 4
  %17 = ptrtoint ptr %efuse_rx_imp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %efuse_rx_imp, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @phy_parse_property.__UNIQUE_ID_ddebug293, ptr noundef %1, ptr noundef nonnull @.str.48, i32 noundef %14, i32 noundef %16, i32 noundef %18) #6
  br label %cleanup

do.end38:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %xsphy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xsphy, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.24) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %if.then29, %sw.bb12, %if.then, %sw.bb
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !84, !86, !88, !90, !91, !92, !94, !96, !98, !99, !101, !102}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @__initcall__kmod_phy_mtk_xsphy__294_548_mtk_xsphy_driver_init6, !1, !"__initcall__kmod_phy_mtk_xsphy__294_548_mtk_xsphy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 548, i32 1}
!2 = !{ptr @__exitcall_mtk_xsphy_driver_exit, !1, !"__exitcall_mtk_xsphy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 550, i32 1}
!5 = !{ptr @__UNIQUE_ID_description296, !6, !"__UNIQUE_ID_description296", i1 false, i1 false}
!6 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 551, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 552, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 543, i32 11}
!12 = !{ptr @mtk_xsphy_driver, !13, !"mtk_xsphy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 540, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 473, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mtk_xsphy_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mtk_xsphy_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 481, i32 32}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 483, i32 32}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 500, i32 4}
!28 = !{ptr @mtk_xsphy_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mtk_xsphy_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 507, i32 4}
!32 = !{ptr @mtk_xsphy_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mtk_xsphy_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 514, i32 4}
!36 = !{ptr @mtk_xsphy_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mtk_xsphy_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 524, i32 43}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 526, i32 4}
!42 = !{ptr @mtk_xsphy_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mtk_xsphy_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @mtk_xsphy_ops, !45, !"mtk_xsphy_ops", i1 false, i1 false}
!45 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 428, i32 29}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 328, i32 3}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @mtk_phy_init._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @mtk_phy_init._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 341, i32 3}
!53 = !{ptr @mtk_phy_init._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @mtk_phy_init._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 199, i32 2}
!57 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @u2_phy_instance_power_on.__UNIQUE_ID_ddebug290, !56, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 164, i32 2}
!62 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @u2_phy_slew_rate_calibrate.__UNIQUE_ID_ddebug289, !61, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 214, i32 2}
!66 = !{ptr @u2_phy_instance_power_off.__UNIQUE_ID_ddebug291, !65, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 401, i32 3}
!69 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @mtk_phy_xlate._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @mtk_phy_xlate._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 412, i32 3}
!74 = !{ptr @mtk_phy_xlate._entry.34, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @mtk_phy_xlate._entry_ptr.36, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 419, i32 3}
!78 = !{ptr @mtk_phy_xlate._entry.37, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @mtk_phy_xlate._entry_ptr.39, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 248, i32 33}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 250, i32 33}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 252, i32 33}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 254, i32 33}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 256, i32 3}
!90 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @phy_parse_property.__UNIQUE_ID_ddebug292, !89, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 263, i32 33}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 265, i32 33}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 267, i32 3}
!98 = !{ptr @phy_parse_property.__UNIQUE_ID_ddebug293, !97, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!99 = !{ptr @phy_parse_property._entry, !100, !"_entry", i1 false, i1 false}
!100 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 272, i32 3}
!101 = !{ptr @phy_parse_property._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @mtk_xsphy_id_table, !103, !"mtk_xsphy_id_table", i1 false, i1 false}
!103 = !{!"../drivers/phy/mediatek/phy-mtk-xsphy.c", i32 437, i32 34}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{!"branch_weights", i32 1, i32 2000}
!114 = !{i64 3091125}
!115 = !{i64 2155074381}
!116 = !{i64 2155074581}
!117 = !{i64 3090707}
!118 = !{i64 2155075341}
!119 = !{i64 2155075541}
!120 = !{i64 2155076301}
!121 = !{i64 2155076501}
!122 = !{i64 2148735355, i64 2148735360, i64 2148735373, i64 2148735417, i64 2148735451, i64 2148735472}
!123 = !{i64 2155092438}
!124 = !{i64 2155093205}
!125 = !{i64 2155080852}
!126 = !{i64 2155081374}
!127 = !{i64 2155081937}
