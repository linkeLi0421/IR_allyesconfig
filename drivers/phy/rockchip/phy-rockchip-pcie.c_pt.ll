; ModuleID = '/llk/IR_all_yes/drivers/phy/rockchip/phy-rockchip-pcie.c_pt.bc'
source_filename = "../drivers/phy/rockchip/phy-rockchip-pcie.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rockchip_pcie_data = type { i32, i32, i32 }
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
%struct.rockchip_pcie_phy = type { ptr, ptr, [4 x %struct.phy_pcie_instance], %struct.mutex, ptr, ptr, i32, i32 }
%struct.phy_pcie_instance = type { ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_phy_rockchip_pcie__293_437_rockchip_pcie_driver_init6 = internal global ptr @rockchip_pcie_driver_init, section ".initcall6.init", align 4
@rockchip_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rockchip_pcie_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_pcie_phy_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rockchip_pcie_driver_exit = internal global ptr @rockchip_pcie_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [62 x i8] c"phy_rockchip_pcie.author=Shawn Lin <shawn.lin@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [55 x i8] c"phy_rockchip_pcie.description=Rockchip PCIe PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [62 x i8] c"phy_rockchip_pcie.file=drivers/phy/rockchip/phy-rockchip-pcie\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [33 x i8] c"phy_rockchip_pcie.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rockchip-pcie-phy\00", [46 x i8] zeroinitializer }, align 32
@rockchip_pcie_phy_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-pcie-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3399_pcie_data }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rockchip_pcie_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 374, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cannot find GRF syscon\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rockchip_pcie_phy_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/phy/rockchip/phy-rockchip-pcie.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rockchip_pcie_phy_probe._entry_ptr = internal global ptr @rockchip_pcie_phy_probe._entry, section ".printk_index", align 4
@rockchip_pcie_phy_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&rk_phy->pcie_mutex\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@rockchip_pcie_phy_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 395, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"missing phy property for reset controller\0A\00", [53 x i8] zeroinitializer }, align 32
@rockchip_pcie_phy_probe._entry_ptr.10 = internal global ptr @rockchip_pcie_phy_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"refclk\00", [25 x i8] zeroinitializer }, align 32
@rockchip_pcie_phy_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 401, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"refclk not found.\0A\00", [45 x i8] zeroinitializer }, align 32
@rockchip_pcie_phy_probe._entry_ptr.14 = internal global ptr @rockchip_pcie_phy_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"#phy-cells\00", [21 x i8] zeroinitializer }, align 32
@rockchip_pcie_phy_probe.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.2, ptr @.str.3, ptr @.str.17, i8 0, i8 102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"phy_rockchip_pcie\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"phy number is %d\0A\00", [46 x i8] zeroinitializer }, align 32
@ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @rockchip_pcie_phy_init, ptr @rockchip_pcie_phy_exit, ptr @rockchip_pcie_phy_power_on, ptr @rockchip_pcie_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@rockchip_pcie_phy_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 415, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to create PHY%d\0A\00", [40 x i8] zeroinitializer }, align 32
@rockchip_pcie_phy_probe._entry_ptr.20 = internal global ptr @rockchip_pcie_phy_probe._entry.18, section ".printk_index", align 4
@rockchip_pcie_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 298, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Fail to enable pcie ref clock.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rockchip_pcie_phy_init\00", [41 x i8] zeroinitializer }, align 32
@rockchip_pcie_phy_init._entry_ptr = internal global ptr @rockchip_pcie_phy_init._entry, section ".printk_index", align 4
@rockchip_pcie_phy_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.3, i32 304, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"assert phy_rst err %d\0A\00", [41 x i8] zeroinitializer }, align 32
@rockchip_pcie_phy_init._entry_ptr.25 = internal global ptr @rockchip_pcie_phy_init._entry.23, section ".printk_index", align 4
@rockchip_pcie_phy_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 190, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"deassert phy_rst err %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rockchip_pcie_phy_power_on\00", [37 x i8] zeroinitializer }, align 32
@rockchip_pcie_phy_power_on._entry_ptr = internal global ptr @rockchip_pcie_phy_power_on._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rockchip_pcie_phy_power_on.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pll locked!\0A\00", [19 x i8] zeroinitializer }, align 32
@rockchip_pcie_phy_power_on._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.27, ptr @.str.3, i32 226, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pll lock timeout!\0A\00", [45 x i8] zeroinitializer }, align 32
@rockchip_pcie_phy_power_on._entry_ptr.31 = internal global ptr @rockchip_pcie_phy_power_on._entry.29, section ".printk_index", align 4
@rockchip_pcie_phy_power_on.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.27, ptr @.str.3, ptr @.str.32, i8 0, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pll output enable done!\0A\00", [39 x i8] zeroinitializer }, align 32
@rockchip_pcie_phy_power_on._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.27, ptr @.str.3, i32 247, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pll output enable timeout!\0A\00", [36 x i8] zeroinitializer }, align 32
@rockchip_pcie_phy_power_on._entry_ptr.35 = internal global ptr @rockchip_pcie_phy_power_on._entry.33, section ".printk_index", align 4
@rockchip_pcie_phy_power_on.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.27, ptr @.str.3, ptr @.str.36, i8 0, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll relocked!\0A\00", [17 x i8] zeroinitializer }, align 32
@rockchip_pcie_phy_power_on._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.27, ptr @.str.3, i32 269, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pll relock timeout!\0A\00", [43 x i8] zeroinitializer }, align 32
@rockchip_pcie_phy_power_on._entry_ptr.39 = internal global ptr @rockchip_pcie_phy_power_on._entry.37, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rockchip_pcie_phy_power_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.40, ptr @.str.3, i32 156, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rockchip_pcie_phy_power_off\00", [36 x i8] zeroinitializer }, align 32
@rockchip_pcie_phy_power_off._entry_ptr = internal global ptr @rockchip_pcie_phy_power_off._entry, section ".printk_index", align 4
@rk3399_pcie_data = internal constant { %struct.rockchip_pcie_data, [20 x i8] } { %struct.rockchip_pcie_data { i32 57888, i32 58020, i32 57876 }, [20 x i8] zeroinitializer }, align 32
@___asan_gen_.41 = private unnamed_addr constant [21 x i8] c"rockchip_pcie_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 429, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 432, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [25 x i8] c"rockchip_pcie_phy_dt_ids\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 352, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 374, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 389, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 391, i32 48 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 394, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 399, i32 46 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 401, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 406, i32 41 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 410, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 338, i32 29 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 415, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 298, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 304, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 190, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 218, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 226, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 239, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 247, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 261, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 269, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 156, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"rk3399_pcie_data\00", align 1
@___asan_gen_.168 = private constant [44 x i8] c"../drivers/phy/rockchip/phy-rockchip-pcie.c\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 346, i32 40 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_rockchip_pcie_driver_exit, ptr @__initcall__kmod_phy_rockchip_pcie__293_437_rockchip_pcie_driver_init6, ptr @rockchip_pcie_driver_exit, ptr @rockchip_pcie_phy_init._entry, ptr @rockchip_pcie_phy_init._entry.23, ptr @rockchip_pcie_phy_init._entry_ptr, ptr @rockchip_pcie_phy_init._entry_ptr.25, ptr @rockchip_pcie_phy_power_off._entry, ptr @rockchip_pcie_phy_power_off._entry_ptr, ptr @rockchip_pcie_phy_power_on._entry, ptr @rockchip_pcie_phy_power_on._entry.29, ptr @rockchip_pcie_phy_power_on._entry.33, ptr @rockchip_pcie_phy_power_on._entry.37, ptr @rockchip_pcie_phy_power_on._entry_ptr, ptr @rockchip_pcie_phy_power_on._entry_ptr.31, ptr @rockchip_pcie_phy_power_on._entry_ptr.35, ptr @rockchip_pcie_phy_power_on._entry_ptr.39, ptr @rockchip_pcie_phy_probe._entry, ptr @rockchip_pcie_phy_probe._entry.12, ptr @rockchip_pcie_phy_probe._entry.18, ptr @rockchip_pcie_phy_probe._entry.8, ptr @rockchip_pcie_phy_probe._entry_ptr, ptr @rockchip_pcie_phy_probe._entry_ptr.10, ptr @rockchip_pcie_phy_probe._entry_ptr.14, ptr @rockchip_pcie_phy_probe._entry_ptr.20, ptr @rockchip_pcie_driver, ptr @.str, ptr @rockchip_pcie_phy_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rockchip_pcie_phy_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @ops, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @rk3399_pcie_data], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_phy_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_phy_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_phy_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_phy_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_phy_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_phy_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_phy_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_phy_power_on._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_phy_power_on._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_phy_power_on._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_phy_power_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_pcie_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_pcie_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_pcie_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @rockchip_pcie_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pcie_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %phy_num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phy_num) #5
  %0 = ptrtoint ptr %phy_num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %phy_num, align 4, !annotation !101
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @syscon_node_to_regmap(ptr noundef %4) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  %5 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 148, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call8 = tail call ptr @of_match_device(ptr noundef nonnull @rockchip_pcie_phy_dt_ids, ptr noundef %dev1) #5
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %data = getelementptr inbounds %struct.of_device_id, ptr %call8, i32 0, i32 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %call.i, align 4
  %reg_base = getelementptr inbounds %struct.rockchip_pcie_phy, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %reg_base, align 4
  %pcie_mutex = getelementptr inbounds %struct.rockchip_pcie_phy, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %pcie_mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @rockchip_pcie_phy_probe.__key) #5
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #5
  %phy_rst = getelementptr inbounds %struct.rockchip_pcie_phy, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %phy_rst to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i, ptr %phy_rst, align 4
  %cmp.i128 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128, label %if.then18, label %if.end28

if.then18:                                        ; preds = %if.end11
  %cmp.not = icmp eq ptr %call.i.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then18.if.end25_crit_edge, label %do.end24

if.then18.if.end25_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

do.end24:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #8
  br label %if.end25

if.end25:                                         ; preds = %do.end24, %if.then18.if.end25_crit_edge
  %11 = ptrtoint ptr %phy_rst to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phy_rst, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end11
  %call29 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.11) #5
  %clk_pciephy_ref = getelementptr inbounds %struct.rockchip_pcie_phy, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %clk_pciephy_ref to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call29, ptr %clk_pciephy_ref, align 4
  %cmp.i129 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i129, label %do.end35, label %if.end38

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #8
  %15 = ptrtoint ptr %clk_pciephy_ref to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk_pciephy_ref, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end28
  %of_node39 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %18 = ptrtoint ptr %of_node39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node39, align 8
  %call.i.i130 = call i32 @of_property_read_variable_u32_array(ptr noundef %19, ptr noundef nonnull @.str.15, ptr noundef nonnull %phy_num, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i130)
  %tobool41.not = icmp sgt i32 %call.i.i130, -1
  br i1 %tobool41.not, label %if.end43, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end43:                                         ; preds = %if.end38
  %20 = ptrtoint ptr %phy_num to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phy_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp44 = icmp eq i32 %21, 0
  %cond = select i1 %cmp44, i32 1, i32 4
  %22 = ptrtoint ptr %phy_num to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond, ptr %phy_num, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pcie_phy_probe.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_pcie_phy_probe, %if.then50)) #5
          to label %do.end53 [label %if.then50], !srcloc !102

if.then50:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %phy_num to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %phy_num, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pcie_phy_probe.__UNIQUE_ID_ddebug292, ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %24) #5
  br label %do.end53

do.end53:                                         ; preds = %if.then50, %if.end43
  %25 = ptrtoint ptr %phy_num to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %phy_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp54135.not = icmp eq i32 %26, 0
  br i1 %cmp54135.not, label %do.end53.for.end_crit_edge, label %do.end53.for.body_crit_edge

do.end53.for.body_crit_edge:                      ; preds = %do.end53
  br label %for.body

do.end53.for.end_crit_edge:                       ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %if.end69.for.body_crit_edge, %do.end53.for.body_crit_edge
  %i.0136 = phi i32 [ %inc, %if.end69.for.body_crit_edge ], [ 0, %do.end53.for.body_crit_edge ]
  %27 = ptrtoint ptr %of_node39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %of_node39, align 8
  %call56 = call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef %28, ptr noundef nonnull @ops) #5
  %arrayidx = getelementptr %struct.rockchip_pcie_phy, ptr %call.i, i32 0, i32 2, i32 %i.0136
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call56, ptr %arrayidx, align 4
  %cmp.i131 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i131, label %do.end64, label %if.end69

do.end64:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %i.0136) #8
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %cleanup

if.end69:                                         ; preds = %for.body
  %index = getelementptr %struct.rockchip_pcie_phy, ptr %call.i, i32 0, i32 2, i32 %i.0136, i32 1
  %33 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %i.0136, ptr %index, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call56, i32 0, i32 8
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %arrayidx, ptr %driver_data.i.i, align 4
  %inc = add nuw i32 %i.0136, 1
  %35 = ptrtoint ptr %phy_num to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %phy_num, align 4
  %cmp54 = icmp ult i32 %inc, %36
  br i1 %cmp54, label %if.end69.for.body_crit_edge, label %if.end69.for.end_crit_edge

if.end69.for.end_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end69.for.body_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end69.for.end_crit_edge, %do.end53.for.end_crit_edge
  %driver_data.i.i132 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %37 = ptrtoint ptr %driver_data.i.i132 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %driver_data.i.i132, align 4
  %call77 = call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @rockchip_pcie_phy_of_xlate) #5
  %cmp.i.i = icmp ugt ptr %call77, inttoptr (i32 -4096 to ptr)
  %38 = ptrtoint ptr %call77 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %38, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end64, %if.end38.cleanup_crit_edge, %do.end35, %if.end25, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %5, %do.end ], [ %13, %if.end25 ], [ %17, %do.end35 ], [ %32, %do.end64 ], [ %spec.select.i, %for.end ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -2, %if.end38.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_num) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rockchip_pcie_phy_of_xlate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 1
  %2 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %phys = getelementptr inbounds %struct.rockchip_pcie_phy, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phys, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %args1 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %6 = ptrtoint ptr %args1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %args1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp3 = icmp ugt i32 %7, 3
  br i1 %cmp3, label %do.end, label %if.end27, !prof !103

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 93, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx31 = getelementptr %struct.rockchip_pcie_phy, ptr %1, i32 0, i32 2, i32 %7
  %8 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx31, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end, %if.then
  %retval.0 = phi ptr [ %5, %if.then ], [ inttoptr (i32 -19 to ptr), %do.end ], [ %9, %if.end27 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pcie_phy_init(ptr noundef %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %index.i = getelementptr inbounds %struct.phy_pcie_instance, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %.neg.i = mul i32 %3, -8
  %idx.neg.i = add i32 %.neg.i, -8
  %add.ptr.i = getelementptr i8, ptr %1, i32 %idx.neg.i
  %pcie_mutex = getelementptr inbounds %struct.rockchip_pcie_phy, ptr %add.ptr.i, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %pcie_mutex, i32 noundef 0) #5
  %init_cnt = getelementptr inbounds %struct.rockchip_pcie_phy, ptr %add.ptr.i, i32 0, i32 7
  %4 = ptrtoint ptr %init_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %init_cnt, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %init_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk_pciephy_ref = getelementptr inbounds %struct.rockchip_pcie_phy, ptr %add.ptr.i, i32 0, i32 5
  %6 = ptrtoint ptr %clk_pciephy_ref to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_pciephy_ref, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end5, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %7) #5
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.21) #8
  br label %err_refclk

if.end5:                                          ; preds = %if.end.i
  %phy_rst = getelementptr inbounds %struct.rockchip_pcie_phy, ptr %add.ptr.i, i32 0, i32 4
  %8 = ptrtoint ptr %phy_rst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_rst, align 4
  %call6 = tail call i32 @reset_control_assert(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %do.end11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.24, i32 noundef %call6) #8
  %10 = ptrtoint ptr %clk_pciephy_ref to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_pciephy_ref, align 4
  tail call void @clk_disable(ptr noundef %11) #5
  tail call void @clk_unprepare(ptr noundef %11) #5
  br label %err_refclk

err_refclk:                                       ; preds = %do.end11, %do.end
  %err.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call6, %do.end11 ]
  %12 = ptrtoint ptr %init_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %init_cnt, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %init_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_refclk, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_refclk ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %pcie_mutex) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pcie_phy_exit(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %index.i = getelementptr inbounds %struct.phy_pcie_instance, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %.neg.i = mul i32 %3, -8
  %idx.neg.i = add i32 %.neg.i, -8
  %add.ptr.i = getelementptr i8, ptr %1, i32 %idx.neg.i
  %pcie_mutex = getelementptr inbounds %struct.rockchip_pcie_phy, ptr %add.ptr.i, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %pcie_mutex, i32 noundef 0) #5
  %init_cnt = getelementptr inbounds %struct.rockchip_pcie_phy, ptr %add.ptr.i, i32 0, i32 7
  %4 = ptrtoint ptr %init_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %init_cnt, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %init_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end, label %entry.err_init_cnt_crit_edge

entry.err_init_cnt_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_init_cnt

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %clk_pciephy_ref = getelementptr inbounds %struct.rockchip_pcie_phy, ptr %add.ptr.i, i32 0, i32 5
  %6 = ptrtoint ptr %clk_pciephy_ref to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_pciephy_ref, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  br label %err_init_cnt

err_init_cnt:                                     ; preds = %if.end, %entry.err_init_cnt_crit_edge
  tail call void @mutex_unlock(ptr noundef %pcie_mutex) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pcie_phy_power_on(ptr noundef %phy) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %index.i = getelementptr inbounds %struct.phy_pcie_instance, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %.neg.i = mul i32 %3, -8
  %idx.neg.i = add i32 %.neg.i, -8
  %add.ptr.i = getelementptr i8, ptr %1, i32 %idx.neg.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #5
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %status, align 4, !annotation !101
  %pcie_mutex = getelementptr inbounds %struct.rockchip_pcie_phy, ptr %add.ptr.i, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %pcie_mutex, i32 noundef 0) #5
  %pwr_cnt = getelementptr inbounds %struct.rockchip_pcie_phy, ptr %add.ptr.i, i32 0, i32 6
  %5 = ptrtoint ptr %pwr_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pwr_cnt, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %pwr_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %phy_rst = getelementptr inbounds %struct.rockchip_pcie_phy, ptr %add.ptr.i, i32 0, i32 4
  %7 = ptrtoint ptr %phy_rst to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy_rst, align 4
  %call2 = tail call i32 @reset_control_deassert(ptr noundef %8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.26, i32 noundef %call2) #8
  br label %err_pwr_cnt

if.end5:                                          ; preds = %if.end
  %reg_base = getelementptr inbounds %struct.rockchip_pcie_phy, ptr %add.ptr.i, i32 0, i32 1
  %9 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base, align 4
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef %14, i32 noundef 8257568) #5
  %15 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_base, align 4
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 4
  %pcie_laneoff = getelementptr inbounds %struct.rockchip_pcie_data, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %pcie_laneoff to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pcie_laneoff, align 4
  %21 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index.i, align 4
  %add11 = add i32 %22, 19
  %shl12 = shl nuw i32 1, %add11
  %call13 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef %20, i32 noundef %shl12) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %add15 = add i32 %23, 100
  %24 = load volatile i32, ptr @jiffies, align 128
  %sub187 = sub i32 %24, %add15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub187)
  %cmp188 = icmp slt i32 %sub187, 0
  br i1 %cmp188, label %if.end5.while.body_crit_edge, label %if.end5.err_pll_lock_crit_edge

if.end5.err_pll_lock_crit_edge:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_pll_lock

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  br label %while.body

while.body:                                       ; preds = %if.end31.while.body_crit_edge, %if.end5.while.body_crit_edge
  %25 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_base, align 4
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 4
  %pcie_status = getelementptr inbounds %struct.rockchip_pcie_data, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %pcie_status to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pcie_status, align 4
  %call18 = call i32 @regmap_read(ptr noundef %26, i32 noundef %30, ptr noundef nonnull %status) #5
  %31 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %status, align 4
  %and = and i32 %32, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.end31, label %do.body21

do.body21:                                        ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pcie_phy_power_on.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_pcie_phy_power_on, %while.end.thread)) #5
          to label %if.end38 [label %while.end.thread], !srcloc !102

while.end.thread:                                 ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pcie_phy_power_on.__UNIQUE_ID_ddebug289, ptr noundef %phy, ptr noundef nonnull @.str.28) #5
  br label %if.end38

if.end31:                                         ; preds = %while.body
  call void @msleep(i32 noundef 20) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %33, %add15
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end31.while.body_crit_edge, label %if.end31.err_pll_lock_crit_edge

if.end31.err_pll_lock_crit_edge:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_pll_lock

if.end31.while.body_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end38:                                         ; preds = %while.end.thread, %do.body21
  %34 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_base, align 4
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %call.i = call i32 @regmap_write(ptr noundef %35, i32 noundef %39, i32 noundef 134087712) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %40(i32 noundef 214748) #5
  %41 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_base, align 4
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %call7.i = call i32 @regmap_write(ptr noundef %42, i32 noundef %46, i32 noundef 65537) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %47(i32 noundef 214748) #5
  %48 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_base, align 4
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %call11.i = call i32 @regmap_write(ptr noundef %49, i32 noundef %53, i32 noundef 65537) #5
  %54 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg_base, align 4
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %call.i169 = call i32 @regmap_write(ptr noundef %55, i32 noundef %59, i32 noundef 134087716) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %60(i32 noundef 214748) #5
  %61 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reg_base, align 4
  %63 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %call7.i170 = call i32 @regmap_write(ptr noundef %62, i32 noundef %66, i32 noundef 65537) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %67(i32 noundef 214748) #5
  %68 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reg_base, align 4
  %70 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %call11.i171 = call i32 @regmap_write(ptr noundef %69, i32 noundef %73, i32 noundef 65537) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %74 = load volatile i32, ptr @jiffies, align 128
  %sub40189 = sub i32 %74, %add15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub40189)
  %cmp41190 = icmp slt i32 %sub40189, 0
  br i1 %cmp41190, label %if.end38.while.body42_crit_edge, label %if.end38.err_pll_lock_crit_edge

if.end38.err_pll_lock_crit_edge:                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_pll_lock

if.end38.while.body42_crit_edge:                  ; preds = %if.end38
  br label %while.body42

while.body42:                                     ; preds = %if.end67.while.body42_crit_edge, %if.end38.while.body42_crit_edge
  %75 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %reg_base, align 4
  %77 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %add.ptr.i, align 4
  %pcie_status45 = getelementptr inbounds %struct.rockchip_pcie_data, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %pcie_status45 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pcie_status45, align 4
  %call46 = call i32 @regmap_read(ptr noundef %76, i32 noundef %80, ptr noundef nonnull %status) #5
  %81 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %status, align 4
  %and47 = and i32 %82, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %do.body50, label %if.end67

do.body50:                                        ; preds = %while.body42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pcie_phy_power_on.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_pcie_phy_power_on, %while.end68.thread)) #5
          to label %if.end75 [label %while.end68.thread], !srcloc !102

while.end68.thread:                               ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pcie_phy_power_on.__UNIQUE_ID_ddebug290, ptr noundef %phy, ptr noundef nonnull @.str.32) #5
  br label %if.end75

if.end67:                                         ; preds = %while.body42
  call void @msleep(i32 noundef 20) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %83 = load volatile i32, ptr @jiffies, align 128
  %sub40 = sub i32 %83, %add15
  %cmp41 = icmp slt i32 %sub40, 0
  br i1 %cmp41, label %if.end67.while.body42_crit_edge, label %if.end67.err_pll_lock_crit_edge

if.end67.err_pll_lock_crit_edge:                  ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_pll_lock

if.end67.while.body42_crit_edge:                  ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body42

if.end75:                                         ; preds = %while.end68.thread, %do.body50
  %84 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %reg_base, align 4
  %86 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %add.ptr.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %call79 = call i32 @regmap_write(ptr noundef %85, i32 noundef %89, i32 noundef 8257568) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %90 = load volatile i32, ptr @jiffies, align 128
  %sub81191 = sub i32 %90, %add15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub81191)
  %cmp82192 = icmp slt i32 %sub81191, 0
  br i1 %cmp82192, label %if.end75.while.body83_crit_edge, label %if.end75.err_pll_lock_crit_edge

if.end75.err_pll_lock_crit_edge:                  ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_pll_lock

if.end75.while.body83_crit_edge:                  ; preds = %if.end75
  br label %while.body83

while.body83:                                     ; preds = %if.end108.while.body83_crit_edge, %if.end75.while.body83_crit_edge
  %91 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reg_base, align 4
  %93 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %add.ptr.i, align 4
  %pcie_status86 = getelementptr inbounds %struct.rockchip_pcie_data, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %pcie_status86 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %pcie_status86, align 4
  %call87 = call i32 @regmap_read(ptr noundef %92, i32 noundef %96, ptr noundef nonnull %status) #5
  %97 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %status, align 4
  %and88 = and i32 %98, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end108, label %do.body91

do.body91:                                        ; preds = %while.body83
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_pcie_phy_power_on.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_pcie_phy_power_on, %while.end109.thread)) #5
          to label %cleanup [label %while.end109.thread], !srcloc !102

while.end109.thread:                              ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_pcie_phy_power_on.__UNIQUE_ID_ddebug291, ptr noundef %phy, ptr noundef nonnull @.str.36) #5
  br label %cleanup

if.end108:                                        ; preds = %while.body83
  call void @msleep(i32 noundef 20) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %99 = load volatile i32, ptr @jiffies, align 128
  %sub81 = sub i32 %99, %add15
  %cmp82 = icmp slt i32 %sub81, 0
  br i1 %cmp82, label %if.end108.while.body83_crit_edge, label %if.end108.err_pll_lock_crit_edge

if.end108.err_pll_lock_crit_edge:                 ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_pll_lock

if.end108.while.body83_crit_edge:                 ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body83

err_pll_lock:                                     ; preds = %if.end108.err_pll_lock_crit_edge, %if.end75.err_pll_lock_crit_edge, %if.end67.err_pll_lock_crit_edge, %if.end38.err_pll_lock_crit_edge, %if.end31.err_pll_lock_crit_edge, %if.end5.err_pll_lock_crit_edge
  %.str.38.sink = phi ptr [ @.str.30, %if.end5.err_pll_lock_crit_edge ], [ @.str.34, %if.end38.err_pll_lock_crit_edge ], [ @.str.38, %if.end75.err_pll_lock_crit_edge ], [ @.str.38, %if.end108.err_pll_lock_crit_edge ], [ @.str.34, %if.end67.err_pll_lock_crit_edge ], [ @.str.30, %if.end31.err_pll_lock_crit_edge ]
  %err.3 = phi i32 [ -22, %if.end5.err_pll_lock_crit_edge ], [ -110, %if.end38.err_pll_lock_crit_edge ], [ -22, %if.end75.err_pll_lock_crit_edge ], [ -22, %if.end108.err_pll_lock_crit_edge ], [ -110, %if.end67.err_pll_lock_crit_edge ], [ -22, %if.end31.err_pll_lock_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull %.str.38.sink) #8
  %100 = ptrtoint ptr %phy_rst to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %phy_rst, align 4
  %call119 = call i32 @reset_control_assert(ptr noundef %101) #5
  br label %err_pwr_cnt

err_pwr_cnt:                                      ; preds = %err_pll_lock, %do.end
  %err.4 = phi i32 [ %call2, %do.end ], [ %err.3, %err_pll_lock ]
  %102 = ptrtoint ptr %pwr_cnt to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pwr_cnt, align 4
  %dec = add i32 %103, -1
  store i32 %dec, ptr %pwr_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_pwr_cnt, %while.end109.thread, %do.body91, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.4, %err_pwr_cnt ], [ 0, %do.body91 ], [ 0, %while.end109.thread ], [ 0, %entry.cleanup_crit_edge ]
  call void @mutex_unlock(ptr noundef %pcie_mutex) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pcie_phy_power_off(ptr noundef %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %index.i = getelementptr inbounds %struct.phy_pcie_instance, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %.neg.i = mul i32 %3, -8
  %idx.neg.i = add i32 %.neg.i, -8
  %add.ptr.i = getelementptr i8, ptr %1, i32 %idx.neg.i
  %pcie_mutex = getelementptr inbounds %struct.rockchip_pcie_phy, ptr %add.ptr.i, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %pcie_mutex, i32 noundef 0) #5
  %reg_base = getelementptr inbounds %struct.rockchip_pcie_phy, ptr %add.ptr.i, i32 0, i32 1
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %pcie_laneoff = getelementptr inbounds %struct.rockchip_pcie_data, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %pcie_laneoff to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pcie_laneoff, align 4
  %10 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index.i, align 4
  %add = add i32 %11, 3
  %shl = shl nuw i32 1, %add
  %add4 = add i32 %11, 19
  %shl5 = shl nuw i32 1, %add4
  %or = or i32 %shl, %shl5
  %call6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %9, i32 noundef %or) #5
  %pwr_cnt = getelementptr inbounds %struct.rockchip_pcie_phy, ptr %add.ptr.i, i32 0, i32 6
  %12 = ptrtoint ptr %pwr_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pwr_cnt, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %pwr_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %phy_rst = getelementptr inbounds %struct.rockchip_pcie_phy, ptr %add.ptr.i, i32 0, i32 4
  %14 = ptrtoint ptr %phy_rst to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy_rst, align 4
  %call7 = tail call i32 @reset_control_assert(ptr noundef %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.24, i32 noundef %call7) #8
  %16 = ptrtoint ptr %pwr_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pwr_cnt, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %pwr_cnt, align 4
  %18 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_base, align 4
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  %pcie_laneoff15 = getelementptr inbounds %struct.rockchip_pcie_data, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %pcie_laneoff15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pcie_laneoff15, align 4
  %24 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index.i, align 4
  %add21 = add i32 %25, 19
  %shl22 = shl nuw i32 1, %add21
  %call24 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef %23, i32 noundef %shl22) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %pcie_mutex) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !29, !30, !31, !33, !35, !36, !37, !39, !41, !42, !43, !45, !46, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !68, !69, !70, !72, !73, !75, !76, !77, !79, !80, !82, !83, !84, !86, !87, !88, !90}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__initcall__kmod_phy_rockchip_pcie__293_437_rockchip_pcie_driver_init6, !1, !"__initcall__kmod_phy_rockchip_pcie__293_437_rockchip_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/rockchip/phy-rockchip-pcie.c", i32 437, i32 1}
!2 = !{ptr @__exitcall_rockchip_pcie_driver_exit, !1, !"__exitcall_rockchip_pcie_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author294, !4, !"__UNIQUE_ID_author294", i1 false, i1 false}
!4 = !{!"../drivers/phy/rockchip/phy-rockchip-pcie.c", i32 439, i32 1}
!5 = !{ptr @__UNIQUE_ID_description295, !6, !"__UNIQUE_ID_description295", i1 false, i1 false}
!6 = !{!"../drivers/phy/rockchip/phy-rockchip-pcie.c", i32 440, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/phy/rockchip/phy-rockchip-pcie.c", i32 441, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/rockchip/phy-rockchip-pcie.c", i32 432, i32 11}
!12 = !{ptr @rockchip_pcie_driver, !13, !"rockchip_pcie_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/rockchip/phy-rockchip-pcie.c", i32 429, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/rockchip/phy-rockchip-pcie.c", i32 374, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rockchip_pcie_phy_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @rockchip_pcie_phy_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @rockchip_pcie_phy_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/phy/rockchip/phy-rockchip-pcie.c", i32 389, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/phy/rockchip/phy-rockchip-pcie.c", i32 391, i32 48}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/phy/rockchip/phy-rockchip-pcie.c", i32 394, i32 4}
!29 = !{ptr @rockchip_pcie_phy_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @rockchip_pcie_phy_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/phy/rockchip/phy-rockchip-pcie.c", i32 399, i32 46}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/phy/rockchip/phy-rockchip-pcie.c", i32 401, i32 3}
!35 = !{ptr @rockchip_pcie_phy_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @rockchip_pcie_phy_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/phy/rockchip/phy-rockchip-pcie.c", i32 406, i32 41}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/phy/rockchip/phy-rockchip-pcie.c", i32 410, i32 2}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @rockchip_pcie_phy_probe.__UNIQUE_ID_ddebug292, !40, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/phy/rockchip/phy-rockchip-pcie.c", i32 415, i32 4}
!45 = !{ptr @rockchip_pcie_phy_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @rockchip_pcie_phy_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @ops, !48, !"ops", i1 false, i1 false}
!48 = !{!"../drivers/phy/rockchip/phy-rockchip-pcie.c", i32 338, i32 29}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/phy/rockchip/phy-rockchip-pcie.c", i32 298, i32 3}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @rockchip_pcie_phy_init._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @rockchip_pcie_phy_init._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/phy/rockchip/phy-rockchip-pcie.c", i32 304, i32 3}
!56 = !{ptr @rockchip_pcie_phy_init._entry.23, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @rockchip_pcie_phy_init._entry_ptr.25, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/phy/rockchip/phy-rockchip-pcie.c", i32 190, i32 3}
!60 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @rockchip_pcie_phy_power_on._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @rockchip_pcie_phy_power_on._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/phy/rockchip/phy-rockchip-pcie.c", i32 218, i32 4}
!65 = !{ptr @rockchip_pcie_phy_power_on.__UNIQUE_ID_ddebug289, !64, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/phy/rockchip/phy-rockchip-pcie.c", i32 226, i32 3}
!68 = !{ptr @rockchip_pcie_phy_power_on._entry.29, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @rockchip_pcie_phy_power_on._entry_ptr.31, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/phy/rockchip/phy-rockchip-pcie.c", i32 239, i32 4}
!72 = !{ptr @rockchip_pcie_phy_power_on.__UNIQUE_ID_ddebug290, !71, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/phy/rockchip/phy-rockchip-pcie.c", i32 247, i32 3}
!75 = !{ptr @rockchip_pcie_phy_power_on._entry.33, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @rockchip_pcie_phy_power_on._entry_ptr.35, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/phy/rockchip/phy-rockchip-pcie.c", i32 261, i32 4}
!79 = !{ptr @rockchip_pcie_phy_power_on.__UNIQUE_ID_ddebug291, !78, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/phy/rockchip/phy-rockchip-pcie.c", i32 269, i32 3}
!82 = !{ptr @rockchip_pcie_phy_power_on._entry.37, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @rockchip_pcie_phy_power_on._entry_ptr.39, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/phy/rockchip/phy-rockchip-pcie.c", i32 156, i32 3}
!86 = !{ptr @rockchip_pcie_phy_power_off._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @rockchip_pcie_phy_power_off._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @rockchip_pcie_phy_dt_ids, !89, !"rockchip_pcie_phy_dt_ids", i1 false, i1 false}
!89 = !{!"../drivers/phy/rockchip/phy-rockchip-pcie.c", i32 352, i32 34}
!90 = !{ptr @rk3399_pcie_data, !91, !"rk3399_pcie_data", i1 false, i1 false}
!91 = !{!"../drivers/phy/rockchip/phy-rockchip-pcie.c", i32 346, i32 40}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{!"auto-init"}
!102 = !{i64 2148730838, i64 2148730843, i64 2148730856, i64 2148730900, i64 2148730934, i64 2148730955}
!103 = !{!"branch_weights", i32 1, i32 2000}
