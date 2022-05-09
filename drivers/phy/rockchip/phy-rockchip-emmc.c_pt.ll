; ModuleID = '/llk/IR_all_yes/drivers/phy/rockchip/phy-rockchip-emmc.c_pt.bc'
source_filename = "../drivers/phy/rockchip/phy-rockchip-emmc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.rockchip_emmc_phy = type { i32, ptr, ptr, i32, i32, i32 }

@__initcall__kmod_phy_rockchip_emmc__289_422_rockchip_emmc_driver_init6 = internal global ptr @rockchip_emmc_driver_init, section ".initcall6.init", align 4
@rockchip_emmc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rockchip_emmc_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_emmc_phy_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rockchip_emmc_driver_exit = internal global ptr @rockchip_emmc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [62 x i8] c"phy_rockchip_emmc.author=Shawn Lin <shawn.lin@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [55 x i8] c"phy_rockchip_emmc.description=Rockchip EMMC PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [62 x i8] c"phy_rockchip_emmc.file=drivers/phy/rockchip/phy-rockchip-emmc\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [33 x i8] c"phy_rockchip_emmc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rockchip-emmc-phy\00", [46 x i8] zeroinitializer }, align 32
@rockchip_emmc_phy_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-emmc-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rockchip_emmc_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 362, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Missing rockchip,grf property\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rockchip_emmc_phy_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/phy/rockchip/phy-rockchip-emmc.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rockchip_emmc_phy_probe._entry_ptr = internal global ptr @rockchip_emmc_phy_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@rockchip_emmc_phy_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 372, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"missing reg property in node %pOFn\0A\00", [60 x i8] zeroinitializer }, align 32
@rockchip_emmc_phy_probe._entry_ptr.9 = internal global ptr @rockchip_emmc_phy_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drive-impedance-ohm\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rockchip,enable-strobe-pulldown\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rockchip,output-tapdelay-select\00", [32 x i8] zeroinitializer }, align 32
@rockchip_emmc_phy_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 392, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"output-tapdelay-select exceeds limit, apply default\0A\00", [43 x i8] zeroinitializer }, align 32
@rockchip_emmc_phy_probe._entry_ptr.15 = internal global ptr @rockchip_emmc_phy_probe._entry.13, section ".printk_index", align 4
@ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @rockchip_emmc_phy_init, ptr @rockchip_emmc_phy_exit, ptr @rockchip_emmc_phy_power_on, ptr @rockchip_emmc_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@rockchip_emmc_phy_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 397, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to create PHY\0A\00", [42 x i8] zeroinitializer }, align 32
@rockchip_emmc_phy_probe._entry_ptr.18 = internal global ptr @rockchip_emmc_phy_probe._entry.16, section ".printk_index", align 4
@convert_drive_impedance_ohm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 343, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Invalid value %u for drive-impedance-ohm.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"convert_drive_impedance_ohm\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@convert_drive_impedance_ohm._entry_ptr = internal global ptr @convert_drive_impedance_ohm._entry, section ".printk_index", align 4
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"emmcclk\00", [24 x i8] zeroinitializer }, align 32
@rockchip_emmc_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 261, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error getting emmcclk: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rockchip_emmc_phy_init\00", [41 x i8] zeroinitializer }, align 32
@rockchip_emmc_phy_init._entry_ptr = internal global ptr @rockchip_emmc_phy_init._entry, section ".printk_index", align 4
@rockchip_emmc_phy_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 155, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unsupported rate: %lu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rockchip_emmc_phy_power\00", [40 x i8] zeroinitializer }, align 32
@rockchip_emmc_phy_power._entry_ptr = internal global ptr @rockchip_emmc_phy_power._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rockchip_emmc_phy_power._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: caldone failed, ret=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@rockchip_emmc_phy_power._entry_ptr.29 = internal global ptr @rockchip_emmc_phy_power._entry.27, section ".printk_index", align 4
@rockchip_emmc_phy_power._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.3, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: dllrdy failed. ret=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@rockchip_emmc_phy_power._entry_ptr.32 = internal global ptr @rockchip_emmc_phy_power._entry.30, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 33, i64 40, i64 50, i64 66, i64 100]
@___asan_gen_.33 = private unnamed_addr constant [21 x i8] c"rockchip_emmc_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 414, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 417, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [25 x i8] c"rockchip_emmc_phy_dt_ids\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 407, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 362, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 370, i32 41 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 371, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 382, i32 42 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 385, i32 42 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 388, i32 42 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 392, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 319, i32 29 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 397, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 342, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 258, i32 48 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 261, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 155, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 182, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private constant [44 x i8] c"../drivers/phy/rockchip/phy-rockchip-emmc.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 230, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_rockchip_emmc_driver_exit, ptr @__initcall__kmod_phy_rockchip_emmc__289_422_rockchip_emmc_driver_init6, ptr @convert_drive_impedance_ohm._entry, ptr @convert_drive_impedance_ohm._entry_ptr, ptr @rockchip_emmc_driver_exit, ptr @rockchip_emmc_phy_init._entry, ptr @rockchip_emmc_phy_init._entry_ptr, ptr @rockchip_emmc_phy_power._entry, ptr @rockchip_emmc_phy_power._entry.27, ptr @rockchip_emmc_phy_power._entry.30, ptr @rockchip_emmc_phy_power._entry_ptr, ptr @rockchip_emmc_phy_power._entry_ptr.29, ptr @rockchip_emmc_phy_power._entry_ptr.32, ptr @rockchip_emmc_phy_probe._entry, ptr @rockchip_emmc_phy_probe._entry.13, ptr @rockchip_emmc_phy_probe._entry.16, ptr @rockchip_emmc_phy_probe._entry.7, ptr @rockchip_emmc_phy_probe._entry_ptr, ptr @rockchip_emmc_phy_probe._entry_ptr.15, ptr @rockchip_emmc_phy_probe._entry_ptr.18, ptr @rockchip_emmc_phy_probe._entry_ptr.9, ptr @rockchip_emmc_driver, ptr @.str, ptr @rockchip_emmc_phy_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @ops, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_emmc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_emmc_phy_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_emmc_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_emmc_phy_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_emmc_phy_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_emmc_phy_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @convert_drive_impedance_ohm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_emmc_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_emmc_phy_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_emmc_phy_power._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_emmc_phy_power._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_emmc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_emmc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_emmc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @rockchip_emmc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_emmc_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %reg_offset = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_offset) #5
  %0 = ptrtoint ptr %reg_offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_offset, align 4, !annotation !81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val, align 4, !annotation !81
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call ptr @syscon_node_to_regmap(ptr noundef nonnull %5) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  %6 = ptrtoint ptr %call to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 24, i32 noundef 3520) #5
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %of_node14 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %7 = ptrtoint ptr %of_node14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node14, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.6, ptr noundef nonnull %reg_offset, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool16.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool16.not, label %if.end22, label %do.end20

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %of_node14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node14, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, ptr noundef %10) #8
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  %11 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_offset, align 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %call.i, align 4
  %reg_base = getelementptr inbounds %struct.rockchip_emmc_phy, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %reg_base, align 4
  %drive_impedance = getelementptr inbounds %struct.rockchip_emmc_phy, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %drive_impedance to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %drive_impedance, align 4
  %enable_strobe_pulldown = getelementptr inbounds %struct.rockchip_emmc_phy, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %enable_strobe_pulldown to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %enable_strobe_pulldown, align 4
  %output_tapdelay_select = getelementptr inbounds %struct.rockchip_emmc_phy, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %output_tapdelay_select to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %output_tapdelay_select, align 4
  %18 = ptrtoint ptr %of_node14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node14, align 8
  %call.i.i95 = call i32 @of_property_read_variable_u32_array(ptr noundef %19, ptr noundef nonnull @.str.10, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i95)
  %tobool26.not = icmp sgt i32 %call.i.i95, -1
  br i1 %tobool26.not, label %if.then27, label %if.end22.if.end30_crit_edge

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then27:                                        ; preds = %if.end22
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %do.end.i [
    i32 100, label %if.then27.convert_drive_impedance_ohm.exit_crit_edge
    i32 66, label %sw.bb1.i
    i32 50, label %sw.bb2.i
    i32 40, label %sw.bb3.i
    i32 33, label %sw.bb4.i
  ]

if.then27.convert_drive_impedance_ohm.exit_crit_edge: ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %convert_drive_impedance_ohm.exit

sw.bb1.i:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %convert_drive_impedance_ohm.exit

sw.bb2.i:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %convert_drive_impedance_ohm.exit

sw.bb3.i:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %convert_drive_impedance_ohm.exit

sw.bb4.i:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %convert_drive_impedance_ohm.exit

do.end.i:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %21) #8
  br label %convert_drive_impedance_ohm.exit

convert_drive_impedance_ohm.exit:                 ; preds = %do.end.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.then27.convert_drive_impedance_ohm.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ 1, %sw.bb4.i ], [ 4, %sw.bb3.i ], [ 0, %sw.bb2.i ], [ 2, %sw.bb1.i ], [ 3, %if.then27.convert_drive_impedance_ohm.exit_crit_edge ]
  %23 = ptrtoint ptr %drive_impedance to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i, ptr %drive_impedance, align 4
  br label %if.end30

if.end30:                                         ; preds = %convert_drive_impedance_ohm.exit, %if.end22.if.end30_crit_edge
  %24 = ptrtoint ptr %of_node14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node14, align 8
  %call.i96 = call ptr @of_find_property(ptr noundef %25, ptr noundef nonnull @.str.11, ptr noundef null) #5
  %tobool.i.not = icmp eq ptr %call.i96, null
  br i1 %tobool.i.not, label %if.end30.if.end35_crit_edge, label %if.then33

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %enable_strobe_pulldown to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %enable_strobe_pulldown, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end30.if.end35_crit_edge
  %27 = ptrtoint ptr %of_node14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %of_node14, align 8
  %call.i.i97 = call i32 @of_property_read_variable_u32_array(ptr noundef %28, ptr noundef nonnull @.str.12, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i97)
  %tobool38.not = icmp sgt i32 %call.i.i97, -1
  br i1 %tobool38.not, label %if.then39, label %if.end35.if.end46_crit_edge

if.end35.if.end46_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then39:                                        ; preds = %if.end35
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %30)
  %cmp = icmp ult i32 %30, 16
  br i1 %cmp, label %if.then40, label %do.end44

if.then40:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %output_tapdelay_select to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %output_tapdelay_select, align 4
  br label %if.end46

do.end44:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #8
  br label %if.end46

if.end46:                                         ; preds = %do.end44, %if.then40, %if.end35.if.end46_crit_edge
  %32 = ptrtoint ptr %of_node14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node14, align 8
  %call48 = call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef %33, ptr noundef nonnull @ops) #5
  %cmp.i98 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i98, label %do.end53, label %if.end55

do.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #8
  %34 = ptrtoint ptr %call48 to i32
  br label %cleanup

if.end55:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call48, i32 0, i32 8
  %35 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call56 = call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #5
  %cmp.i.i = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  %36 = ptrtoint ptr %call56 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %36, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %do.end53, %do.end20, %if.end9.cleanup_crit_edge, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %do.end ], [ -22, %do.end20 ], [ %34, %do.end53 ], [ %spec.select.i, %if.end55 ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_offset) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_emmc_phy_init(ptr noundef %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call.i = tail call ptr @clk_get(ptr noundef %phy, ptr noundef nonnull @.str.22) #5
  %cmp.i = icmp eq ptr %call.i, inttoptr (i32 -2 to ptr)
  %.call.i = select i1 %cmp.i, ptr null, ptr %call.i
  %emmcclk = getelementptr inbounds %struct.rockchip_emmc_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %emmcclk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %.call.i, ptr %emmcclk, align 4
  %cmp.i14 = icmp ugt ptr %.call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i14, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %.call.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.23, i32 noundef %3) #8
  %4 = ptrtoint ptr %emmcclk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %emmcclk, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %3, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_emmc_phy_exit(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %emmcclk = getelementptr inbounds %struct.rockchip_emmc_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %emmcclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %emmcclk, align 4
  tail call void @clk_put(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_emmc_phy_power_on(ptr noundef %phy) #2 align 64 {
entry:
  %caldone.i = alloca i32, align 4
  %dllrdy.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %reg_base = getelementptr inbounds %struct.rockchip_emmc_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %add = add i32 %5, 24
  %drive_impedance = getelementptr inbounds %struct.rockchip_emmc_phy, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %drive_impedance to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %drive_impedance, align 4
  %shl = shl i32 %7, 4
  %or = or i32 %shl, 7340032
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %add, i32 noundef %or) #5
  %8 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %11, i32 noundef 134219776) #5
  %12 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  %output_tapdelay_select = getelementptr inbounds %struct.rockchip_emmc_phy, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %output_tapdelay_select to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %output_tapdelay_select, align 4
  %shl9 = shl i32 %17, 7
  %or10 = or i32 %shl9, 125829120
  %call11 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef %15, i32 noundef %or10) #5
  %18 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_base, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 4
  %add14 = add i32 %21, 8
  %enable_strobe_pulldown = getelementptr inbounds %struct.rockchip_emmc_phy, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %enable_strobe_pulldown to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %enable_strobe_pulldown, align 4
  %shl15 = shl i32 %23, 9
  %or16 = or i32 %shl15, 33554432
  %call17 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef %add14, i32 noundef %or16) #5
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %caldone.i) #5
  %26 = ptrtoint ptr %caldone.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %caldone.i, align 4, !annotation !81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dllrdy.i) #5
  %27 = ptrtoint ptr %dllrdy.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %dllrdy.i, align 4, !annotation !81
  %reg_base.i = getelementptr inbounds %struct.rockchip_emmc_phy, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_base.i, align 4
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %25, align 4
  %add.i = add i32 %31, 24
  %call1.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef %add.i, i32 noundef 65536) #5
  %32 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_base.i, align 4
  %34 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %25, align 4
  %add4.i = add i32 %35, 24
  %call5.i = tail call i32 @regmap_write(ptr noundef %33, i32 noundef %add4.i, i32 noundef 131072) #5
  %emmcclk.i = getelementptr inbounds %struct.rockchip_emmc_phy, ptr %25, i32 0, i32 2
  %36 = ptrtoint ptr %emmcclk.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %emmcclk.i, align 4
  %call7.i = tail call i32 @clk_get_rate(ptr noundef %37) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.not.i = icmp eq i32 %call7.i, 0
  br i1 %cmp8.not.i, label %entry.if.end28.i_crit_edge, label %if.then10.i

entry.if.end28.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i

if.then10.i:                                      ; preds = %entry
  %38 = add i32 %call7.i, -125000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000000, i32 %38)
  %inbounds16.i = icmp ult i32 %38, 50000000
  br i1 %inbounds16.i, label %if.then10.i.sw.epilog.i_crit_edge, label %sw.caserange12.i

if.then10.i.sw.epilog.i_crit_edge:                ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.caserange.i:                                   ; preds = %sw.caserange12.i
  call void @__sanitizer_cov_trace_pc() #7
  %39 = add i32 %call7.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 74999999, i32 %39)
  %inbounds.i = icmp ult i32 %39, 74999999
  %spec.select.i = select i1 %inbounds.i, i32 50000000, i32 200000000
  %spec.select233.i = select i1 %inbounds.i, i32 4096, i32 0
  br label %sw.epilog.i

sw.caserange12.i:                                 ; preds = %if.then10.i
  %40 = add i32 %call7.i, -75000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000000, i32 %40)
  %inbounds13.i = icmp ult i32 %40, 50000000
  br i1 %inbounds13.i, label %sw.caserange12.i.sw.epilog.i_crit_edge, label %sw.caserange.i

sw.caserange12.i.sw.epilog.i_crit_edge:           ; preds = %sw.caserange12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.caserange12.i.sw.epilog.i_crit_edge, %sw.caserange.i, %if.then10.i.sw.epilog.i_crit_edge
  %ideal_rate.0.i = phi i32 [ 100000000, %sw.caserange12.i.sw.epilog.i_crit_edge ], [ 150000000, %if.then10.i.sw.epilog.i_crit_edge ], [ %spec.select.i, %sw.caserange.i ]
  %freqsel.0.i = phi i32 [ 8192, %sw.caserange12.i.sw.epilog.i_crit_edge ], [ 12288, %if.then10.i.sw.epilog.i_crit_edge ], [ %spec.select233.i, %sw.caserange.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i, i32 %ideal_rate.0.i)
  %cmp17.i = icmp ugt i32 %call7.i, %ideal_rate.0.i
  %sub.i = sub i32 %call7.i, %ideal_rate.0.i
  %sub19.i = sub i32 %ideal_rate.0.i, %call7.i
  %cond.i = select i1 %cmp17.i, i32 %sub.i, i32 %sub19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000000, i32 %call7.i)
  %cmp20.i = icmp ugt i32 %call7.i, 50000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000000, i32 %cond.i)
  %cmp22.i = icmp ugt i32 %cond.i, 15000000
  %or.cond.i = select i1 %cmp20.i, i1 %cmp22.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000000, i32 %call7.i)
  %cmp24.i = icmp ugt i32 %call7.i, 200000000
  %or.cond234.i = or i1 %cmp24.i, %or.cond.i
  br i1 %or.cond234.i, label %do.end.i, label %sw.epilog.i.if.end28.i_crit_edge

sw.epilog.i.if.end28.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i

do.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %phy, ptr noundef nonnull @.str.25, i32 noundef %call7.i) #8
  br label %if.end28.i

if.end28.i:                                       ; preds = %do.end.i, %sw.epilog.i.if.end28.i_crit_edge, %entry.if.end28.i_crit_edge
  %freqsel.1.i = phi i32 [ 0, %entry.if.end28.i_crit_edge ], [ %freqsel.0.i, %sw.epilog.i.if.end28.i_crit_edge ], [ %freqsel.0.i, %do.end.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 644244) #5
  %42 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_base.i, align 4
  %44 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %25, align 4
  %add31.i = add i32 %45, 24
  %call32.i = tail call i32 @regmap_write(ptr noundef %43, i32 noundef %add31.i, i32 noundef 65537) #5
  %call33.i = tail call i64 @ktime_get() #5
  %add.i.i = add i64 %call33.i, 50000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true59.i.for.cond.i_crit_edge, %if.end28.i
  %46 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg_base.i, align 4
  %48 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %25, align 4
  %add50.i = add i32 %49, 32
  %call51.i = call i32 @regmap_read(ptr noundef %47, i32 noundef %add50.i, ptr noundef nonnull %caldone.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %lor.lhs.false53.i, label %for.cond.i.do.end91.i_crit_edge

for.cond.i.do.end91.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end91.i

lor.lhs.false53.i:                                ; preds = %for.cond.i
  %50 = ptrtoint ptr %caldone.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %caldone.i, align 4
  %52 = and i32 %51, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp54.not.i = icmp eq i32 %52, 0
  br i1 %cmp54.not.i, label %land.lhs.true59.i, label %lor.lhs.false53.i.lor.rhs.i_crit_edge

lor.lhs.false53.i.lor.rhs.i_crit_edge:            ; preds = %lor.lhs.false53.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs.i

land.lhs.true59.i:                                ; preds = %lor.lhs.false53.i
  %call60.i = call i64 @ktime_get() #5
  %cmp3.i.i = icmp sgt i64 %call60.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %land.lhs.true59.i.for.cond.i_crit_edge

land.lhs.true59.i.for.cond.i_crit_edge:           ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

for.end.i:                                        ; preds = %land.lhs.true59.i
  %53 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_base.i, align 4
  %55 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %25, align 4
  %add67.i = add i32 %56, 32
  %call68.i = call i32 @regmap_read(ptr noundef %54, i32 noundef %add67.i, ptr noundef nonnull %caldone.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %tobool75.not.i = icmp eq i32 %call68.i, 0
  br i1 %tobool75.not.i, label %for.end.i.lor.rhs.i_crit_edge, label %for.end.i.do.end91.i_crit_edge

for.end.i.do.end91.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end91.i

for.end.i.lor.rhs.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %for.end.i.lor.rhs.i_crit_edge, %lor.lhs.false53.i.lor.rhs.i_crit_edge
  %57 = ptrtoint ptr %caldone.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %caldone.i, align 4
  %59 = and i32 %58, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp78.not.i = icmp eq i32 %59, 0
  br i1 %cmp78.not.i, label %lor.rhs.i.do.end91.i_crit_edge, label %if.end94.i

lor.rhs.i.do.end91.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end91.i

do.end91.i:                                       ; preds = %lor.rhs.i.do.end91.i_crit_edge, %for.end.i.do.end91.i_crit_edge, %for.cond.i.do.end91.i_crit_edge
  %tobool75.not246.ph.i = phi i32 [ %call68.i, %for.end.i.do.end91.i_crit_edge ], [ -110, %lor.rhs.i.do.end91.i_crit_edge ], [ %call51.i, %for.cond.i.do.end91.i_crit_edge ]
  %call93.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, i32 noundef %tobool75.not246.ph.i) #8
  br label %rockchip_emmc_phy_power.exit

if.end94.i:                                       ; preds = %lor.rhs.i
  %60 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg_base.i, align 4
  %62 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %25, align 4
  %or.i = or i32 %freqsel.1.i, 805306368
  %call98.i = call i32 @regmap_write(ptr noundef %61, i32 noundef %63, i32 noundef %or.i) #5
  %64 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg_base.i, align 4
  %66 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %25, align 4
  %add101.i = add i32 %67, 24
  %call102.i = call i32 @regmap_write(ptr noundef %65, i32 noundef %add101.i, i32 noundef 131074) #5
  br i1 %cmp8.not.i, label %if.end94.i.rockchip_emmc_phy_power.exit_crit_edge, label %if.end106.i

if.end94.i.rockchip_emmc_phy_power.exit_crit_edge: ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rockchip_emmc_phy_power.exit

if.end106.i:                                      ; preds = %if.end94.i
  %call112.i = call i64 @ktime_get() #5
  %add.i237.i = add i64 %call112.i, 50000000
  br label %for.cond127.i

for.cond127.i:                                    ; preds = %land.lhs.true141.i.for.cond127.i_crit_edge, %if.end106.i
  %68 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reg_base.i, align 4
  %70 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %25, align 4
  %add130.i = add i32 %71, 32
  %call131.i = call i32 @regmap_read(ptr noundef %69, i32 noundef %add130.i, ptr noundef nonnull %dllrdy.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131.i)
  %tobool132.not.i = icmp eq i32 %call131.i, 0
  br i1 %tobool132.not.i, label %lor.lhs.false133.i, label %for.cond127.i.do.end177.i_crit_edge

for.cond127.i.do.end177.i_crit_edge:              ; preds = %for.cond127.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end177.i

lor.lhs.false133.i:                               ; preds = %for.cond127.i
  %72 = ptrtoint ptr %dllrdy.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dllrdy.i, align 4
  %74 = and i32 %73, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp136.not.i = icmp eq i32 %74, 0
  br i1 %cmp136.not.i, label %land.lhs.true141.i, label %lor.lhs.false133.i.lor.rhs160.i_crit_edge

lor.lhs.false133.i.lor.rhs160.i_crit_edge:        ; preds = %lor.lhs.false133.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs160.i

land.lhs.true141.i:                               ; preds = %lor.lhs.false133.i
  %call142.i = call i64 @ktime_get() #5
  %cmp3.i239.i = icmp sgt i64 %call142.i, %add.i237.i
  br i1 %cmp3.i239.i, label %for.end157.i, label %land.lhs.true141.i.for.cond127.i_crit_edge

land.lhs.true141.i.for.cond127.i_crit_edge:       ; preds = %land.lhs.true141.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond127.i

for.end157.i:                                     ; preds = %land.lhs.true141.i
  %75 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %reg_base.i, align 4
  %77 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %25, align 4
  %add149.i = add i32 %78, 32
  %call150.i = call i32 @regmap_read(ptr noundef %76, i32 noundef %add149.i, ptr noundef nonnull %dllrdy.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150.i)
  %tobool159.not.i = icmp eq i32 %call150.i, 0
  br i1 %tobool159.not.i, label %for.end157.i.lor.rhs160.i_crit_edge, label %for.end157.i.do.end177.i_crit_edge

for.end157.i.do.end177.i_crit_edge:               ; preds = %for.end157.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end177.i

for.end157.i.lor.rhs160.i_crit_edge:              ; preds = %for.end157.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs160.i

lor.rhs160.i:                                     ; preds = %for.end157.i.lor.rhs160.i_crit_edge, %lor.lhs.false133.i.lor.rhs160.i_crit_edge
  %79 = ptrtoint ptr %dllrdy.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dllrdy.i, align 4
  %81 = and i32 %80, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp163.not.i = icmp eq i32 %81, 0
  br i1 %cmp163.not.i, label %lor.rhs160.i.do.end177.i_crit_edge, label %lor.rhs160.i.rockchip_emmc_phy_power.exit_crit_edge

lor.rhs160.i.rockchip_emmc_phy_power.exit_crit_edge: ; preds = %lor.rhs160.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rockchip_emmc_phy_power.exit

lor.rhs160.i.do.end177.i_crit_edge:               ; preds = %lor.rhs160.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end177.i

do.end177.i:                                      ; preds = %lor.rhs160.i.do.end177.i_crit_edge, %for.end157.i.do.end177.i_crit_edge, %for.cond127.i.do.end177.i_crit_edge
  %tobool159.not255.ph.i = phi i32 [ %call150.i, %for.end157.i.do.end177.i_crit_edge ], [ -110, %lor.rhs160.i.do.end177.i_crit_edge ], [ %call131.i, %for.cond127.i.do.end177.i_crit_edge ]
  %call179.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.26, i32 noundef %tobool159.not255.ph.i) #8
  br label %rockchip_emmc_phy_power.exit

rockchip_emmc_phy_power.exit:                     ; preds = %do.end177.i, %lor.rhs160.i.rockchip_emmc_phy_power.exit_crit_edge, %if.end94.i.rockchip_emmc_phy_power.exit_crit_edge, %do.end91.i
  %retval.0.i = phi i32 [ %tobool75.not246.ph.i, %do.end91.i ], [ %tobool159.not255.ph.i, %do.end177.i ], [ 0, %if.end94.i.rockchip_emmc_phy_power.exit_crit_edge ], [ 0, %lor.rhs160.i.rockchip_emmc_phy_power.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dllrdy.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %caldone.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_emmc_phy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %reg_base.i = getelementptr inbounds %struct.rockchip_emmc_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %add.i = add i32 %5, 24
  %call1.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %add.i, i32 noundef 65536) #5
  %6 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %add4.i = add i32 %9, 24
  %call5.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %add4.i, i32 noundef 131072) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !48, !50, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__initcall__kmod_phy_rockchip_emmc__289_422_rockchip_emmc_driver_init6, !1, !"__initcall__kmod_phy_rockchip_emmc__289_422_rockchip_emmc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/rockchip/phy-rockchip-emmc.c", i32 422, i32 1}
!2 = !{ptr @__exitcall_rockchip_emmc_driver_exit, !1, !"__exitcall_rockchip_emmc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/phy/rockchip/phy-rockchip-emmc.c", i32 424, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/phy/rockchip/phy-rockchip-emmc.c", i32 425, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/phy/rockchip/phy-rockchip-emmc.c", i32 426, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/rockchip/phy-rockchip-emmc.c", i32 417, i32 11}
!12 = !{ptr @rockchip_emmc_driver, !13, !"rockchip_emmc_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/rockchip/phy-rockchip-emmc.c", i32 414, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/rockchip/phy-rockchip-emmc.c", i32 362, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rockchip_emmc_phy_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @rockchip_emmc_phy_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/phy/rockchip/phy-rockchip-emmc.c", i32 370, i32 41}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/rockchip/phy-rockchip-emmc.c", i32 371, i32 3}
!26 = !{ptr @rockchip_emmc_phy_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @rockchip_emmc_phy_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/phy/rockchip/phy-rockchip-emmc.c", i32 382, i32 42}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/phy/rockchip/phy-rockchip-emmc.c", i32 385, i32 42}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/phy/rockchip/phy-rockchip-emmc.c", i32 388, i32 42}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/phy/rockchip/phy-rockchip-emmc.c", i32 392, i32 4}
!36 = !{ptr @rockchip_emmc_phy_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @rockchip_emmc_phy_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/phy/rockchip/phy-rockchip-emmc.c", i32 397, i32 3}
!40 = !{ptr @rockchip_emmc_phy_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @rockchip_emmc_phy_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/phy/rockchip/phy-rockchip-emmc.c", i32 342, i32 2}
!44 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @convert_drive_impedance_ohm._entry, !43, !"_entry", i1 false, i1 false}
!47 = !{ptr @convert_drive_impedance_ohm._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @ops, !49, !"ops", i1 false, i1 false}
!49 = !{!"../drivers/phy/rockchip/phy-rockchip-emmc.c", i32 319, i32 29}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/phy/rockchip/phy-rockchip-emmc.c", i32 258, i32 48}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/phy/rockchip/phy-rockchip-emmc.c", i32 261, i32 3}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @rockchip_emmc_phy_init._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @rockchip_emmc_phy_init._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/phy/rockchip/phy-rockchip-emmc.c", i32 155, i32 4}
!59 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @rockchip_emmc_phy_power._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @rockchip_emmc_phy_power._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/phy/rockchip/phy-rockchip-emmc.c", i32 182, i32 3}
!64 = !{ptr @rockchip_emmc_phy_power._entry.27, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @rockchip_emmc_phy_power._entry_ptr.29, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/phy/rockchip/phy-rockchip-emmc.c", i32 230, i32 3}
!68 = !{ptr @rockchip_emmc_phy_power._entry.30, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @rockchip_emmc_phy_power._entry_ptr.32, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @rockchip_emmc_phy_dt_ids, !71, !"rockchip_emmc_phy_dt_ids", i1 false, i1 false}
!71 = !{!"../drivers/phy/rockchip/phy-rockchip-emmc.c", i32 407, i32 34}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{!"auto-init"}
