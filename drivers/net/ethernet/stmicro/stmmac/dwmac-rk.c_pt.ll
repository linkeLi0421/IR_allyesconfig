; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rk_gmac_ops = type { ptr, ptr, ptr, ptr, ptr, i8, [0 x i32] }
%struct.stmmac_resources = type { ptr, [6 x i8], i32, i32, i32, i32, i32, [8 x i32], [8 x i32] }
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
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }
%struct.rk_priv_data = type { ptr, i32, i32, ptr, i8, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }

@__initcall__kmod_dwmac_rk__384_1697_rk_gmac_dwmac_driver_init6 = internal global ptr @rk_gmac_dwmac_driver_init, section ".initcall6.init", align 4
@rk_gmac_dwmac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rk_gmac_probe, ptr @rk_gmac_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rk_gmac_dwmac_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk_gmac_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rk_gmac_dwmac_driver_exit = internal global ptr @rk_gmac_dwmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author385 = internal constant [66 x i8] c"dwmac_rk.author=Chen-Zhi (Roger Chen) <roger.chen@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description386 = internal constant [63 x i8] c"dwmac_rk.description=Rockchip RK3288 DWMAC specific glue layer\00", section ".modinfo", align 1
@__UNIQUE_ID_file387 = internal constant [59 x i8] c"dwmac_rk.file=drivers/net/ethernet/stmicro/stmmac/dwmac-rk\00", section ".modinfo", align 1
@__UNIQUE_ID_license388 = internal constant [21 x i8] c"dwmac_rk.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rk_gmac-dwmac\00", [18 x i8] zeroinitializer }, align 32
@rk_gmac_dwmac_match = internal constant { [12 x %struct.of_device_id], [592 x i8] } { [12 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,px30-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @px30_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3128-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3128_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3228-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3228_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3288_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3308-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3308_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3328-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3328_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3366-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3366_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3368-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3368_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3399_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3568-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3568_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rv1108-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rv1108_ops }, %struct.of_device_id zeroinitializer], [592 x i8] zeroinitializer }, align 32
@rk_gmac_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rk_gmac_suspend, ptr @rk_gmac_resume, ptr @rk_gmac_suspend, ptr @rk_gmac_resume, ptr @rk_gmac_suspend, ptr @rk_gmac_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rk_gmac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1584, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no of match data provided\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rk_gmac_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rk_gmac_probe._entry_ptr = internal global ptr @rk_gmac_probe._entry, section ".printk_index", align 4
@rk_fix_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 1571, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unsupported interface %d\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rk_fix_speed\00", [19 x i8] zeroinitializer }, align 32
@rk_fix_speed._entry_ptr = internal global ptr @rk_fix_speed._entry, section ".printk_index", align 4
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@rk_gmac_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 1403, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"phy regulator is not available yet, deferred probing\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rk_gmac_setup\00", [18 x i8] zeroinitializer }, align 32
@rk_gmac_setup._entry_ptr = internal global ptr @rk_gmac_setup._entry, section ".printk_index", align 4
@rk_gmac_setup._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 1406, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no regulator found\0A\00", [44 x i8] zeroinitializer }, align 32
@rk_gmac_setup._entry_ptr.13 = internal global ptr @rk_gmac_setup._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clock_in_out\00", [19 x i8] zeroinitializer }, align 32
@rk_gmac_setup._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.3, i32 1412, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Can not read property: clock_in_out.\0A\00", [58 x i8] zeroinitializer }, align 32
@rk_gmac_setup._entry_ptr.17 = internal global ptr @rk_gmac_setup._entry.15, section ".printk_index", align 4
@rk_gmac_setup._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.3, i32 1416, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"clock input or output? (%s).\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rk_gmac_setup._entry_ptr.21 = internal global ptr @rk_gmac_setup._entry.18, section ".printk_index", align 4
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"input\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_delay\00", [23 x i8] zeroinitializer }, align 32
@rk_gmac_setup._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.10, ptr @.str.3, i32 1426, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Can not read property: tx_delay.\00", [63 x i8] zeroinitializer }, align 32
@rk_gmac_setup._entry_ptr.26 = internal global ptr @rk_gmac_setup._entry.24, section ".printk_index", align 4
@rk_gmac_setup._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.10, ptr @.str.3, i32 1428, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"set tx_delay to 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@rk_gmac_setup._entry_ptr.29 = internal global ptr @rk_gmac_setup._entry.27, section ".printk_index", align 4
@rk_gmac_setup._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.10, ptr @.str.3, i32 1430, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TX delay(0x%x).\0A\00", [47 x i8] zeroinitializer }, align 32
@rk_gmac_setup._entry_ptr.32 = internal global ptr @rk_gmac_setup._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rx_delay\00", [23 x i8] zeroinitializer }, align 32
@rk_gmac_setup._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.10, ptr @.str.3, i32 1437, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Can not read property: rx_delay.\00", [63 x i8] zeroinitializer }, align 32
@rk_gmac_setup._entry_ptr.36 = internal global ptr @rk_gmac_setup._entry.34, section ".printk_index", align 4
@rk_gmac_setup._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.10, ptr @.str.3, i32 1439, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"set rx_delay to 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@rk_gmac_setup._entry_ptr.39 = internal global ptr @rk_gmac_setup._entry.37, section ".printk_index", align 4
@rk_gmac_setup._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.10, ptr @.str.3, i32 1441, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX delay(0x%x).\0A\00", [47 x i8] zeroinitializer }, align 32
@rk_gmac_setup._entry_ptr.42 = internal global ptr @rk_gmac_setup._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rockchip,grf\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"phy-is-integrated\00", [46 x i8] zeroinitializer }, align 32
@rk_gmac_setup._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.10, ptr @.str.3, i32 1454, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No PHY reset control found.\0A\00", [35 x i8] zeroinitializer }, align 32
@rk_gmac_setup._entry_ptr.47 = internal global ptr @rk_gmac_setup._entry.45, section ".printk_index", align 4
@rk_gmac_setup._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.10, ptr @.str.3, i32 1460, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"integrated PHY? (%s).\0A\00", [41 x i8] zeroinitializer }, align 32
@rk_gmac_setup._entry_ptr.50 = internal global ptr @rk_gmac_setup._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mac_clk_rx\00", [21 x i8] zeroinitializer }, align 32
@rk_gmac_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 1211, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cannot get clock %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rk_gmac_clk_init\00", [47 x i8] zeroinitializer }, align 32
@rk_gmac_clk_init._entry_ptr = internal global ptr @rk_gmac_clk_init._entry, section ".printk_index", align 4
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mac_clk_tx\00", [21 x i8] zeroinitializer }, align 32
@rk_gmac_clk_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 1216, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rk_gmac_clk_init._entry_ptr.58 = internal global ptr @rk_gmac_clk_init._entry.57, section ".printk_index", align 4
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aclk_mac\00", [23 x i8] zeroinitializer }, align 32
@rk_gmac_clk_init._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 1221, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rk_gmac_clk_init._entry_ptr.61 = internal global ptr @rk_gmac_clk_init._entry.60, section ".printk_index", align 4
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pclk_mac\00", [23 x i8] zeroinitializer }, align 32
@rk_gmac_clk_init._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 1226, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rk_gmac_clk_init._entry_ptr.64 = internal global ptr @rk_gmac_clk_init._entry.63, section ".printk_index", align 4
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stmmaceth\00", [22 x i8] zeroinitializer }, align 32
@rk_gmac_clk_init._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 1231, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rk_gmac_clk_init._entry_ptr.67 = internal global ptr @rk_gmac_clk_init._entry.66, section ".printk_index", align 4
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_mac_ref\00", [20 x i8] zeroinitializer }, align 32
@rk_gmac_clk_init._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 1237, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rk_gmac_clk_init._entry_ptr.70 = internal global ptr @rk_gmac_clk_init._entry.69, section ".printk_index", align 4
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_mac_refout\00", [17 x i8] zeroinitializer }, align 32
@rk_gmac_clk_init._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 1244, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rk_gmac_clk_init._entry_ptr.73 = internal global ptr @rk_gmac_clk_init._entry.72, section ".printk_index", align 4
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_mac_speed\00", [18 x i8] zeroinitializer }, align 32
@rk_gmac_clk_init._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 1250, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rk_gmac_clk_init._entry_ptr.76 = internal global ptr @rk_gmac_clk_init._entry.75, section ".printk_index", align 4
@rk_gmac_clk_init._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.55, ptr @.str.3, i32 1253, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"clock input from PHY\0A\00", [42 x i8] zeroinitializer }, align 32
@rk_gmac_clk_init._entry_ptr.79 = internal global ptr @rk_gmac_clk_init._entry.77, section ".printk_index", align 4
@rk_gmac_clk_init._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.55, ptr @.str.3, i32 1263, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot get PHY clock: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@rk_gmac_clk_init._entry_ptr.82 = internal global ptr @rk_gmac_clk_init._entry.80, section ".printk_index", align 4
@rk_gmac_powerup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 1504, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"init for RGMII\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rk_gmac_powerup\00", [16 x i8] zeroinitializer }, align 32
@rk_gmac_powerup._entry_ptr = internal global ptr @rk_gmac_powerup._entry, section ".printk_index", align 4
@rk_gmac_powerup._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.3, i32 1509, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"init for RGMII_ID\0A\00", [45 x i8] zeroinitializer }, align 32
@rk_gmac_powerup._entry_ptr.87 = internal global ptr @rk_gmac_powerup._entry.85, section ".printk_index", align 4
@rk_gmac_powerup._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.84, ptr @.str.3, i32 1513, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"init for RGMII_RXID\0A\00", [43 x i8] zeroinitializer }, align 32
@rk_gmac_powerup._entry_ptr.90 = internal global ptr @rk_gmac_powerup._entry.88, section ".printk_index", align 4
@rk_gmac_powerup._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.84, ptr @.str.3, i32 1517, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"init for RGMII_TXID\0A\00", [43 x i8] zeroinitializer }, align 32
@rk_gmac_powerup._entry_ptr.93 = internal global ptr @rk_gmac_powerup._entry.91, section ".printk_index", align 4
@rk_gmac_powerup._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.84, ptr @.str.3, i32 1521, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"init for RMII\0A\00", [17 x i8] zeroinitializer }, align 32
@rk_gmac_powerup._entry_ptr.96 = internal global ptr @rk_gmac_powerup._entry.94, section ".printk_index", align 4
@rk_gmac_powerup._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.84, ptr @.str.3, i32 1525, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NO interface defined!\0A\00", [41 x i8] zeroinitializer }, align 32
@rk_gmac_powerup._entry_ptr.99 = internal global ptr @rk_gmac_powerup._entry.97, section ".printk_index", align 4
@rk_gmac_check_ops._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.100, ptr @.str.3, i32 1483, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rk_gmac_check_ops\00", [46 x i8] zeroinitializer }, align 32
@rk_gmac_check_ops._entry_ptr = internal global ptr @rk_gmac_check_ops._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@phy_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.3, i32 1356, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fail to enable phy-supply\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"phy_power_on\00", [19 x i8] zeroinitializer }, align 32
@phy_power_on._entry_ptr = internal global ptr @phy_power_on._entry, section ".printk_index", align 4
@phy_power_on._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.102, ptr @.str.3, i32 1360, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fail to disable phy-supply\0A\00", [36 x i8] zeroinitializer }, align 32
@phy_power_on._entry_ptr.105 = internal global ptr @phy_power_on._entry.103, section ".printk_index", align 4
@px30_ops = internal constant { %struct.rk_gmac_ops, [40 x i8] } { %struct.rk_gmac_ops { ptr null, ptr @px30_set_to_rmii, ptr null, ptr @px30_set_rmii_speed, ptr null, i8 0, [0 x i32] zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@rk3128_ops = internal constant { %struct.rk_gmac_ops, [40 x i8] } { %struct.rk_gmac_ops { ptr @rk3128_set_to_rgmii, ptr @rk3128_set_to_rmii, ptr @rk3128_set_rgmii_speed, ptr @rk3128_set_rmii_speed, ptr null, i8 0, [0 x i32] zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@rk3228_ops = internal constant { %struct.rk_gmac_ops, [40 x i8] } { %struct.rk_gmac_ops { ptr @rk3228_set_to_rgmii, ptr @rk3228_set_to_rmii, ptr @rk3228_set_rgmii_speed, ptr @rk3228_set_rmii_speed, ptr @rk3228_integrated_phy_powerup, i8 0, [0 x i32] zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@rk3288_ops = internal constant { %struct.rk_gmac_ops, [40 x i8] } { %struct.rk_gmac_ops { ptr @rk3288_set_to_rgmii, ptr @rk3288_set_to_rmii, ptr @rk3288_set_rgmii_speed, ptr @rk3288_set_rmii_speed, ptr null, i8 0, [0 x i32] zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@rk3308_ops = internal constant { %struct.rk_gmac_ops, [40 x i8] } { %struct.rk_gmac_ops { ptr null, ptr @rk3308_set_to_rmii, ptr null, ptr @rk3308_set_rmii_speed, ptr null, i8 0, [0 x i32] zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@rk3328_ops = internal constant { %struct.rk_gmac_ops, [40 x i8] } { %struct.rk_gmac_ops { ptr @rk3328_set_to_rgmii, ptr @rk3328_set_to_rmii, ptr @rk3328_set_rgmii_speed, ptr @rk3328_set_rmii_speed, ptr @rk3328_integrated_phy_powerup, i8 0, [0 x i32] zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@rk3366_ops = internal constant { %struct.rk_gmac_ops, [40 x i8] } { %struct.rk_gmac_ops { ptr @rk3366_set_to_rgmii, ptr @rk3366_set_to_rmii, ptr @rk3366_set_rgmii_speed, ptr @rk3366_set_rmii_speed, ptr null, i8 0, [0 x i32] zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@rk3368_ops = internal constant { %struct.rk_gmac_ops, [40 x i8] } { %struct.rk_gmac_ops { ptr @rk3368_set_to_rgmii, ptr @rk3368_set_to_rmii, ptr @rk3368_set_rgmii_speed, ptr @rk3368_set_rmii_speed, ptr null, i8 0, [0 x i32] zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@rk3399_ops = internal constant { %struct.rk_gmac_ops, [40 x i8] } { %struct.rk_gmac_ops { ptr @rk3399_set_to_rgmii, ptr @rk3399_set_to_rmii, ptr @rk3399_set_rgmii_speed, ptr @rk3399_set_rmii_speed, ptr null, i8 0, [0 x i32] zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@rv1108_ops = internal constant { %struct.rk_gmac_ops, [40 x i8] } { %struct.rk_gmac_ops { ptr null, ptr @rv1108_set_to_rmii, ptr null, ptr @rv1108_set_rmii_speed, ptr null, i8 0, [0 x i32] zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@px30_set_to_rmii._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.3, i32 94, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Missing rockchip,grf property\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"px30_set_to_rmii\00", [47 x i8] zeroinitializer }, align 32
@px30_set_to_rmii._entry_ptr = internal global ptr @px30_set_to_rmii._entry, section ".printk_index", align 4
@px30_set_rmii_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.3, i32 108, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Missing clk_mac_speed clock\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"px30_set_rmii_speed\00", [44 x i8] zeroinitializer }, align 32
@px30_set_rmii_speed._entry_ptr = internal global ptr @px30_set_rmii_speed._entry, section ".printk_index", align 4
@px30_set_rmii_speed._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.3, i32 119, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: set clk_mac_speed rate 2500000 failed: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@px30_set_rmii_speed._entry_ptr.112 = internal global ptr @px30_set_rmii_speed._entry.110, section ".printk_index", align 4
@px30_set_rmii_speed._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.109, ptr @.str.3, i32 127, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: set clk_mac_speed rate 25000000 failed: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@px30_set_rmii_speed._entry_ptr.115 = internal global ptr @px30_set_rmii_speed._entry.113, section ".printk_index", align 4
@px30_set_rmii_speed._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.109, ptr @.str.3, i32 130, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unknown speed value for RMII! speed=%d\00", [57 x i8] zeroinitializer }, align 32
@px30_set_rmii_speed._entry_ptr.118 = internal global ptr @px30_set_rmii_speed._entry.116, section ".printk_index", align 4
@rk3128_set_to_rgmii._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.3, i32 173, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Missing rockchip,grf property\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rk3128_set_to_rgmii\00", [44 x i8] zeroinitializer }, align 32
@rk3128_set_to_rgmii._entry_ptr = internal global ptr @rk3128_set_to_rgmii._entry, section ".printk_index", align 4
@rk3128_set_to_rmii._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.121, ptr @.str.3, i32 191, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rk3128_set_to_rmii\00", [45 x i8] zeroinitializer }, align 32
@rk3128_set_to_rmii._entry_ptr = internal global ptr @rk3128_set_to_rmii._entry, section ".printk_index", align 4
@rk3128_set_rgmii_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.122, ptr @.str.3, i32 204, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rk3128_set_rgmii_speed\00", [41 x i8] zeroinitializer }, align 32
@rk3128_set_rgmii_speed._entry_ptr = internal global ptr @rk3128_set_rgmii_speed._entry, section ".printk_index", align 4
@rk3128_set_rgmii_speed._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.122, ptr @.str.3, i32 218, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"unknown speed value for RGMII! speed=%d\00", [56 x i8] zeroinitializer }, align 32
@rk3128_set_rgmii_speed._entry_ptr.125 = internal global ptr @rk3128_set_rgmii_speed._entry.123, section ".printk_index", align 4
@rk3128_set_rmii_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.126, ptr @.str.3, i32 226, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rk3128_set_rmii_speed\00", [42 x i8] zeroinitializer }, align 32
@rk3128_set_rmii_speed._entry_ptr = internal global ptr @rk3128_set_rmii_speed._entry, section ".printk_index", align 4
@rk3128_set_rmii_speed._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.126, ptr @.str.3, i32 239, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rk3128_set_rmii_speed._entry_ptr.128 = internal global ptr @rk3128_set_rmii_speed._entry.127, section ".printk_index", align 4
@rk3228_set_to_rgmii._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.129, ptr @.str.3, i32 289, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rk3228_set_to_rgmii\00", [44 x i8] zeroinitializer }, align 32
@rk3228_set_to_rgmii._entry_ptr = internal global ptr @rk3228_set_to_rgmii._entry, section ".printk_index", align 4
@rk3228_set_to_rmii._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.130, ptr @.str.3, i32 308, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rk3228_set_to_rmii\00", [45 x i8] zeroinitializer }, align 32
@rk3228_set_to_rmii._entry_ptr = internal global ptr @rk3228_set_to_rmii._entry, section ".printk_index", align 4
@rk3228_set_rgmii_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.131, ptr @.str.3, i32 325, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rk3228_set_rgmii_speed\00", [41 x i8] zeroinitializer }, align 32
@rk3228_set_rgmii_speed._entry_ptr = internal global ptr @rk3228_set_rgmii_speed._entry, section ".printk_index", align 4
@rk3228_set_rgmii_speed._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.131, ptr @.str.3, i32 339, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rk3228_set_rgmii_speed._entry_ptr.133 = internal global ptr @rk3228_set_rgmii_speed._entry.132, section ".printk_index", align 4
@rk3228_set_rmii_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.134, ptr @.str.3, i32 347, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rk3228_set_rmii_speed\00", [42 x i8] zeroinitializer }, align 32
@rk3228_set_rmii_speed._entry_ptr = internal global ptr @rk3228_set_rmii_speed._entry, section ".printk_index", align 4
@rk3228_set_rmii_speed._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.134, ptr @.str.3, i32 360, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rk3228_set_rmii_speed._entry_ptr.136 = internal global ptr @rk3228_set_rmii_speed._entry.135, section ".printk_index", align 4
@rk3288_set_to_rgmii._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.137, ptr @.str.3, i32 411, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rk3288_set_to_rgmii\00", [44 x i8] zeroinitializer }, align 32
@rk3288_set_to_rgmii._entry_ptr = internal global ptr @rk3288_set_to_rgmii._entry, section ".printk_index", align 4
@rk3288_set_to_rmii._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.138, ptr @.str.3, i32 429, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rk3288_set_to_rmii\00", [45 x i8] zeroinitializer }, align 32
@rk3288_set_to_rmii._entry_ptr = internal global ptr @rk3288_set_to_rmii._entry, section ".printk_index", align 4
@rk3288_set_rgmii_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.139, ptr @.str.3, i32 442, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rk3288_set_rgmii_speed\00", [41 x i8] zeroinitializer }, align 32
@rk3288_set_rgmii_speed._entry_ptr = internal global ptr @rk3288_set_rgmii_speed._entry, section ".printk_index", align 4
@rk3288_set_rgmii_speed._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.139, ptr @.str.3, i32 456, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rk3288_set_rgmii_speed._entry_ptr.141 = internal global ptr @rk3288_set_rgmii_speed._entry.140, section ".printk_index", align 4
@rk3288_set_rmii_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.142, ptr @.str.3, i32 464, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rk3288_set_rmii_speed\00", [42 x i8] zeroinitializer }, align 32
@rk3288_set_rmii_speed._entry_ptr = internal global ptr @rk3288_set_rmii_speed._entry, section ".printk_index", align 4
@rk3288_set_rmii_speed._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.142, ptr @.str.3, i32 477, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rk3288_set_rmii_speed._entry_ptr.144 = internal global ptr @rk3288_set_rmii_speed._entry.143, section ".printk_index", align 4
@rk3308_set_to_rmii._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.145, ptr @.str.3, i32 503, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rk3308_set_to_rmii\00", [45 x i8] zeroinitializer }, align 32
@rk3308_set_to_rmii._entry_ptr = internal global ptr @rk3308_set_to_rmii._entry, section ".printk_index", align 4
@rk3308_set_rmii_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.146, ptr @.str.3, i32 516, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rk3308_set_rmii_speed\00", [42 x i8] zeroinitializer }, align 32
@rk3308_set_rmii_speed._entry_ptr = internal global ptr @rk3308_set_rmii_speed._entry, section ".printk_index", align 4
@rk3308_set_rmii_speed._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.146, ptr @.str.3, i32 527, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rk3308_set_rmii_speed._entry_ptr.148 = internal global ptr @rk3308_set_rmii_speed._entry.147, section ".printk_index", align 4
@rk3328_set_to_rgmii._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.149, ptr @.str.3, i32 575, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rk3328_set_to_rgmii\00", [44 x i8] zeroinitializer }, align 32
@rk3328_set_to_rgmii._entry_ptr = internal global ptr @rk3328_set_to_rgmii._entry, section ".printk_index", align 4
@rk3328_set_to_rmii._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.150, ptr @.str.3, i32 596, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rk3328_set_to_rmii\00", [45 x i8] zeroinitializer }, align 32
@rk3328_set_to_rmii._entry_ptr = internal global ptr @rk3328_set_to_rmii._entry, section ".printk_index", align 4
@rk3328_set_rgmii_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.151, ptr @.str.3, i32 613, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rk3328_set_rgmii_speed\00", [41 x i8] zeroinitializer }, align 32
@rk3328_set_rgmii_speed._entry_ptr = internal global ptr @rk3328_set_rgmii_speed._entry, section ".printk_index", align 4
@rk3328_set_rgmii_speed._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.151, ptr @.str.3, i32 627, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rk3328_set_rgmii_speed._entry_ptr.153 = internal global ptr @rk3328_set_rgmii_speed._entry.152, section ".printk_index", align 4
@rk3328_set_rmii_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.154, ptr @.str.3, i32 636, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rk3328_set_rmii_speed\00", [42 x i8] zeroinitializer }, align 32
@rk3328_set_rmii_speed._entry_ptr = internal global ptr @rk3328_set_rmii_speed._entry, section ".printk_index", align 4
@rk3328_set_rmii_speed._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.154, ptr @.str.3, i32 652, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rk3328_set_rmii_speed._entry_ptr.156 = internal global ptr @rk3328_set_rmii_speed._entry.155, section ".printk_index", align 4
@rk3366_set_to_rgmii._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.157, ptr @.str.3, i32 703, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rk3366_set_to_rgmii\00", [44 x i8] zeroinitializer }, align 32
@rk3366_set_to_rgmii._entry_ptr = internal global ptr @rk3366_set_to_rgmii._entry, section ".printk_index", align 4
@rk3366_set_to_rmii._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.158, ptr @.str.3, i32 721, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rk3366_set_to_rmii\00", [45 x i8] zeroinitializer }, align 32
@rk3366_set_to_rmii._entry_ptr = internal global ptr @rk3366_set_to_rmii._entry, section ".printk_index", align 4
@rk3366_set_rgmii_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.159, ptr @.str.3, i32 734, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rk3366_set_rgmii_speed\00", [41 x i8] zeroinitializer }, align 32
@rk3366_set_rgmii_speed._entry_ptr = internal global ptr @rk3366_set_rgmii_speed._entry, section ".printk_index", align 4
@rk3366_set_rgmii_speed._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.159, ptr @.str.3, i32 748, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rk3366_set_rgmii_speed._entry_ptr.161 = internal global ptr @rk3366_set_rgmii_speed._entry.160, section ".printk_index", align 4
@rk3366_set_rmii_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.162, ptr @.str.3, i32 756, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rk3366_set_rmii_speed\00", [42 x i8] zeroinitializer }, align 32
@rk3366_set_rmii_speed._entry_ptr = internal global ptr @rk3366_set_rmii_speed._entry, section ".printk_index", align 4
@rk3366_set_rmii_speed._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.162, ptr @.str.3, i32 769, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rk3366_set_rmii_speed._entry_ptr.164 = internal global ptr @rk3366_set_rmii_speed._entry.163, section ".printk_index", align 4
@rk3368_set_to_rgmii._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.165, ptr @.str.3, i32 814, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rk3368_set_to_rgmii\00", [44 x i8] zeroinitializer }, align 32
@rk3368_set_to_rgmii._entry_ptr = internal global ptr @rk3368_set_to_rgmii._entry, section ".printk_index", align 4
@rk3368_set_to_rmii._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.166, ptr @.str.3, i32 832, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rk3368_set_to_rmii\00", [45 x i8] zeroinitializer }, align 32
@rk3368_set_to_rmii._entry_ptr = internal global ptr @rk3368_set_to_rmii._entry, section ".printk_index", align 4
@rk3368_set_rgmii_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.167, ptr @.str.3, i32 845, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rk3368_set_rgmii_speed\00", [41 x i8] zeroinitializer }, align 32
@rk3368_set_rgmii_speed._entry_ptr = internal global ptr @rk3368_set_rgmii_speed._entry, section ".printk_index", align 4
@rk3368_set_rgmii_speed._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.167, ptr @.str.3, i32 859, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rk3368_set_rgmii_speed._entry_ptr.169 = internal global ptr @rk3368_set_rgmii_speed._entry.168, section ".printk_index", align 4
@rk3368_set_rmii_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.170, ptr @.str.3, i32 867, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rk3368_set_rmii_speed\00", [42 x i8] zeroinitializer }, align 32
@rk3368_set_rmii_speed._entry_ptr = internal global ptr @rk3368_set_rmii_speed._entry, section ".printk_index", align 4
@rk3368_set_rmii_speed._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.170, ptr @.str.3, i32 880, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rk3368_set_rmii_speed._entry_ptr.172 = internal global ptr @rk3368_set_rmii_speed._entry.171, section ".printk_index", align 4
@rk3399_set_to_rgmii._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.173, ptr @.str.3, i32 925, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rk3399_set_to_rgmii\00", [44 x i8] zeroinitializer }, align 32
@rk3399_set_to_rgmii._entry_ptr = internal global ptr @rk3399_set_to_rgmii._entry, section ".printk_index", align 4
@rk3399_set_to_rmii._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.174, ptr @.str.3, i32 943, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rk3399_set_to_rmii\00", [45 x i8] zeroinitializer }, align 32
@rk3399_set_to_rmii._entry_ptr = internal global ptr @rk3399_set_to_rmii._entry, section ".printk_index", align 4
@rk3399_set_rgmii_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.175, ptr @.str.3, i32 956, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rk3399_set_rgmii_speed\00", [41 x i8] zeroinitializer }, align 32
@rk3399_set_rgmii_speed._entry_ptr = internal global ptr @rk3399_set_rgmii_speed._entry, section ".printk_index", align 4
@rk3399_set_rgmii_speed._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.175, ptr @.str.3, i32 970, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rk3399_set_rgmii_speed._entry_ptr.177 = internal global ptr @rk3399_set_rgmii_speed._entry.176, section ".printk_index", align 4
@rk3399_set_rmii_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.178, ptr @.str.3, i32 978, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rk3399_set_rmii_speed\00", [42 x i8] zeroinitializer }, align 32
@rk3399_set_rmii_speed._entry_ptr = internal global ptr @rk3399_set_rmii_speed._entry, section ".printk_index", align 4
@rk3399_set_rmii_speed._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.178, ptr @.str.3, i32 991, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rk3399_set_rmii_speed._entry_ptr.180 = internal global ptr @rk3399_set_rmii_speed._entry.179, section ".printk_index", align 4
@rk3568_ops = internal constant { { ptr, ptr, ptr, ptr, ptr, i8, [3 x i32] }, [60 x i8] } { { ptr, ptr, ptr, ptr, ptr, i8, [3 x i32] } { ptr @rk3568_set_to_rgmii, ptr @rk3568_set_to_rmii, ptr @rk3568_set_gmac_speed, ptr @rk3568_set_gmac_speed, ptr null, i8 1, [3 x i32] [i32 -30801920, i32 -33488896, i32 0] }, [60 x i8] zeroinitializer }, align 32
@rk3568_set_to_rgmii._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.182, ptr @.str.3, i32 1030, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rk3568_set_to_rgmii\00", [44 x i8] zeroinitializer }, align 32
@rk3568_set_to_rgmii._entry_ptr = internal global ptr @rk3568_set_to_rgmii._entry, section ".printk_index", align 4
@rk3568_set_to_rmii._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.183, ptr @.str.3, i32 1055, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rk3568_set_to_rmii\00", [45 x i8] zeroinitializer }, align 32
@rk3568_set_to_rmii._entry_ptr = internal global ptr @rk3568_set_to_rmii._entry, section ".printk_index", align 4
@rk3568_set_gmac_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.185, ptr @.str.3, i32 1081, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unknown speed value for GMAC speed=%d\00", [58 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rk3568_set_gmac_speed\00", [42 x i8] zeroinitializer }, align 32
@rk3568_set_gmac_speed._entry_ptr = internal global ptr @rk3568_set_gmac_speed._entry, section ".printk_index", align 4
@rk3568_set_gmac_speed._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.185, ptr @.str.3, i32 1088, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: set clk_mac_speed rate %ld failed %d\0A\00", [54 x i8] zeroinitializer }, align 32
@rk3568_set_gmac_speed._entry_ptr.188 = internal global ptr @rk3568_set_gmac_speed._entry.186, section ".printk_index", align 4
@rv1108_set_to_rmii._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.189, ptr @.str.3, i32 1121, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rv1108_set_to_rmii\00", [45 x i8] zeroinitializer }, align 32
@rv1108_set_to_rmii._entry_ptr = internal global ptr @rv1108_set_to_rmii._entry, section ".printk_index", align 4
@rv1108_set_rmii_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.190, ptr @.str.3, i32 1134, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rv1108_set_rmii_speed\00", [42 x i8] zeroinitializer }, align 32
@rv1108_set_rmii_speed._entry_ptr = internal global ptr @rv1108_set_rmii_speed._entry, section ".printk_index", align 4
@rv1108_set_rmii_speed._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.190, ptr @.str.3, i32 1147, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rv1108_set_rmii_speed._entry_ptr.192 = internal global ptr @rv1108_set_rmii_speed._entry.191, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 7, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.193 = internal global [7 x i64] [i64 5, i64 32, i64 7, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.194 = internal global [7 x i64] [i64 5, i64 32, i64 7, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.195 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@__sancov_gen_cov_switch_values.196 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.197 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@__sancov_gen_cov_switch_values.198 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.199 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@__sancov_gen_cov_switch_values.200 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.201 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@__sancov_gen_cov_switch_values.202 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@__sancov_gen_cov_switch_values.203 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.204 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@__sancov_gen_cov_switch_values.205 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.206 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@__sancov_gen_cov_switch_values.207 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.208 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@__sancov_gen_cov_switch_values.209 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.210 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@__sancov_gen_cov_switch_values.211 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.212 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@___asan_gen_.213 = private unnamed_addr constant [21 x i8] c"rk_gmac_dwmac_driver\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1688, i32 31 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1692, i32 21 }
@___asan_gen_.219 = private unnamed_addr constant [20 x i8] c"rk_gmac_dwmac_match\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1672, i32 34 }
@___asan_gen_.222 = private unnamed_addr constant [15 x i8] c"rk_gmac_pm_ops\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1670, i32 8 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1584, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1571, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1400, i32 57 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1403, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1406, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1410, i32 46 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1412, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1415, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1417, i32 24 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1423, i32 43 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1426, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1427, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1430, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1434, i32 43 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1437, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1438, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1441, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1446, i32 8 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1450, i32 10 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1454, i32 5 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1459, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1208, i32 43 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1210, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1213, i32 43 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1215, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1218, i32 41 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1220, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1223, i32 41 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1225, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1228, i32 40 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1230, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1234, i32 45 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1236, i32 4 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1241, i32 23 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1243, i32 5 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1248, i32 46 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1250, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1253, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1263, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1504, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1509, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1513, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1517, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1521, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1525, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1482, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1356, i32 4 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1360, i32 4 }
@___asan_gen_.483 = private unnamed_addr constant [9 x i8] c"px30_ops\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 134, i32 33 }
@___asan_gen_.486 = private unnamed_addr constant [11 x i8] c"rk3128_ops\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 243, i32 33 }
@___asan_gen_.489 = private unnamed_addr constant [11 x i8] c"rk3228_ops\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 369, i32 33 }
@___asan_gen_.492 = private unnamed_addr constant [11 x i8] c"rk3288_ops\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 481, i32 33 }
@___asan_gen_.495 = private unnamed_addr constant [11 x i8] c"rk3308_ops\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 531, i32 33 }
@___asan_gen_.498 = private unnamed_addr constant [11 x i8] c"rk3328_ops\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 661, i32 33 }
@___asan_gen_.501 = private unnamed_addr constant [11 x i8] c"rk3366_ops\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 773, i32 33 }
@___asan_gen_.504 = private unnamed_addr constant [11 x i8] c"rk3368_ops\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 884, i32 33 }
@___asan_gen_.507 = private unnamed_addr constant [11 x i8] c"rk3399_ops\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 995, i32 33 }
@___asan_gen_.510 = private unnamed_addr constant [11 x i8] c"rv1108_ops\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1151, i32 33 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 94, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 108, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 118, i32 4 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 126, i32 4 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 130, i32 3 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 173, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 191, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 204, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 218, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 226, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 239, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 289, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 308, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 325, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 339, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 347, i32 3 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 360, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 411, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 429, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 442, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 456, i32 3 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 464, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 477, i32 3 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 503, i32 3 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 516, i32 3 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 527, i32 3 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 575, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 596, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 613, i32 3 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 627, i32 3 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 636, i32 3 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 652, i32 3 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 703, i32 3 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 721, i32 3 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 734, i32 3 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 748, i32 3 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 756, i32 3 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 769, i32 3 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 814, i32 3 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 832, i32 3 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 845, i32 3 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 859, i32 3 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 867, i32 3 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 880, i32 3 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 925, i32 3 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 943, i32 3 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 956, i32 3 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 970, i32 3 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 978, i32 3 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 991, i32 3 }
@___asan_gen_.780 = private unnamed_addr constant [11 x i8] c"rk3568_ops\00", align 1
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1091, i32 33 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1030, i32 3 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1055, i32 3 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1081, i32 3 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1087, i32 3 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1121, i32 3 }
@___asan_gen_.819 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1134, i32 3 }
@___asan_gen_.822 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.823 = private constant [50 x i8] c"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c\00", align 1
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1147, i32 3 }
@llvm.compiler.used = appending global [301 x ptr] [ptr @__UNIQUE_ID_author385, ptr @__UNIQUE_ID_description386, ptr @__UNIQUE_ID_file387, ptr @__UNIQUE_ID_license388, ptr @__exitcall_rk_gmac_dwmac_driver_exit, ptr @__initcall__kmod_dwmac_rk__384_1697_rk_gmac_dwmac_driver_init6, ptr @phy_power_on._entry, ptr @phy_power_on._entry.103, ptr @phy_power_on._entry_ptr, ptr @phy_power_on._entry_ptr.105, ptr @px30_set_rmii_speed._entry, ptr @px30_set_rmii_speed._entry.110, ptr @px30_set_rmii_speed._entry.113, ptr @px30_set_rmii_speed._entry.116, ptr @px30_set_rmii_speed._entry_ptr, ptr @px30_set_rmii_speed._entry_ptr.112, ptr @px30_set_rmii_speed._entry_ptr.115, ptr @px30_set_rmii_speed._entry_ptr.118, ptr @px30_set_to_rmii._entry, ptr @px30_set_to_rmii._entry_ptr, ptr @rk3128_set_rgmii_speed._entry, ptr @rk3128_set_rgmii_speed._entry.123, ptr @rk3128_set_rgmii_speed._entry_ptr, ptr @rk3128_set_rgmii_speed._entry_ptr.125, ptr @rk3128_set_rmii_speed._entry, ptr @rk3128_set_rmii_speed._entry.127, ptr @rk3128_set_rmii_speed._entry_ptr, ptr @rk3128_set_rmii_speed._entry_ptr.128, ptr @rk3128_set_to_rgmii._entry, ptr @rk3128_set_to_rgmii._entry_ptr, ptr @rk3128_set_to_rmii._entry, ptr @rk3128_set_to_rmii._entry_ptr, ptr @rk3228_set_rgmii_speed._entry, ptr @rk3228_set_rgmii_speed._entry.132, ptr @rk3228_set_rgmii_speed._entry_ptr, ptr @rk3228_set_rgmii_speed._entry_ptr.133, ptr @rk3228_set_rmii_speed._entry, ptr @rk3228_set_rmii_speed._entry.135, ptr @rk3228_set_rmii_speed._entry_ptr, ptr @rk3228_set_rmii_speed._entry_ptr.136, ptr @rk3228_set_to_rgmii._entry, ptr @rk3228_set_to_rgmii._entry_ptr, ptr @rk3228_set_to_rmii._entry, ptr @rk3228_set_to_rmii._entry_ptr, ptr @rk3288_set_rgmii_speed._entry, ptr @rk3288_set_rgmii_speed._entry.140, ptr @rk3288_set_rgmii_speed._entry_ptr, ptr @rk3288_set_rgmii_speed._entry_ptr.141, ptr @rk3288_set_rmii_speed._entry, ptr @rk3288_set_rmii_speed._entry.143, ptr @rk3288_set_rmii_speed._entry_ptr, ptr @rk3288_set_rmii_speed._entry_ptr.144, ptr @rk3288_set_to_rgmii._entry, ptr @rk3288_set_to_rgmii._entry_ptr, ptr @rk3288_set_to_rmii._entry, ptr @rk3288_set_to_rmii._entry_ptr, ptr @rk3308_set_rmii_speed._entry, ptr @rk3308_set_rmii_speed._entry.147, ptr @rk3308_set_rmii_speed._entry_ptr, ptr @rk3308_set_rmii_speed._entry_ptr.148, ptr @rk3308_set_to_rmii._entry, ptr @rk3308_set_to_rmii._entry_ptr, ptr @rk3328_set_rgmii_speed._entry, ptr @rk3328_set_rgmii_speed._entry.152, ptr @rk3328_set_rgmii_speed._entry_ptr, ptr @rk3328_set_rgmii_speed._entry_ptr.153, ptr @rk3328_set_rmii_speed._entry, ptr @rk3328_set_rmii_speed._entry.155, ptr @rk3328_set_rmii_speed._entry_ptr, ptr @rk3328_set_rmii_speed._entry_ptr.156, ptr @rk3328_set_to_rgmii._entry, ptr @rk3328_set_to_rgmii._entry_ptr, ptr @rk3328_set_to_rmii._entry, ptr @rk3328_set_to_rmii._entry_ptr, ptr @rk3366_set_rgmii_speed._entry, ptr @rk3366_set_rgmii_speed._entry.160, ptr @rk3366_set_rgmii_speed._entry_ptr, ptr @rk3366_set_rgmii_speed._entry_ptr.161, ptr @rk3366_set_rmii_speed._entry, ptr @rk3366_set_rmii_speed._entry.163, ptr @rk3366_set_rmii_speed._entry_ptr, ptr @rk3366_set_rmii_speed._entry_ptr.164, ptr @rk3366_set_to_rgmii._entry, ptr @rk3366_set_to_rgmii._entry_ptr, ptr @rk3366_set_to_rmii._entry, ptr @rk3366_set_to_rmii._entry_ptr, ptr @rk3368_set_rgmii_speed._entry, ptr @rk3368_set_rgmii_speed._entry.168, ptr @rk3368_set_rgmii_speed._entry_ptr, ptr @rk3368_set_rgmii_speed._entry_ptr.169, ptr @rk3368_set_rmii_speed._entry, ptr @rk3368_set_rmii_speed._entry.171, ptr @rk3368_set_rmii_speed._entry_ptr, ptr @rk3368_set_rmii_speed._entry_ptr.172, ptr @rk3368_set_to_rgmii._entry, ptr @rk3368_set_to_rgmii._entry_ptr, ptr @rk3368_set_to_rmii._entry, ptr @rk3368_set_to_rmii._entry_ptr, ptr @rk3399_set_rgmii_speed._entry, ptr @rk3399_set_rgmii_speed._entry.176, ptr @rk3399_set_rgmii_speed._entry_ptr, ptr @rk3399_set_rgmii_speed._entry_ptr.177, ptr @rk3399_set_rmii_speed._entry, ptr @rk3399_set_rmii_speed._entry.179, ptr @rk3399_set_rmii_speed._entry_ptr, ptr @rk3399_set_rmii_speed._entry_ptr.180, ptr @rk3399_set_to_rgmii._entry, ptr @rk3399_set_to_rgmii._entry_ptr, ptr @rk3399_set_to_rmii._entry, ptr @rk3399_set_to_rmii._entry_ptr, ptr @rk3568_set_gmac_speed._entry, ptr @rk3568_set_gmac_speed._entry.186, ptr @rk3568_set_gmac_speed._entry_ptr, ptr @rk3568_set_gmac_speed._entry_ptr.188, ptr @rk3568_set_to_rgmii._entry, ptr @rk3568_set_to_rgmii._entry_ptr, ptr @rk3568_set_to_rmii._entry, ptr @rk3568_set_to_rmii._entry_ptr, ptr @rk_fix_speed._entry, ptr @rk_fix_speed._entry_ptr, ptr @rk_gmac_check_ops._entry, ptr @rk_gmac_check_ops._entry_ptr, ptr @rk_gmac_clk_init._entry, ptr @rk_gmac_clk_init._entry.57, ptr @rk_gmac_clk_init._entry.60, ptr @rk_gmac_clk_init._entry.63, ptr @rk_gmac_clk_init._entry.66, ptr @rk_gmac_clk_init._entry.69, ptr @rk_gmac_clk_init._entry.72, ptr @rk_gmac_clk_init._entry.75, ptr @rk_gmac_clk_init._entry.77, ptr @rk_gmac_clk_init._entry.80, ptr @rk_gmac_clk_init._entry_ptr, ptr @rk_gmac_clk_init._entry_ptr.58, ptr @rk_gmac_clk_init._entry_ptr.61, ptr @rk_gmac_clk_init._entry_ptr.64, ptr @rk_gmac_clk_init._entry_ptr.67, ptr @rk_gmac_clk_init._entry_ptr.70, ptr @rk_gmac_clk_init._entry_ptr.73, ptr @rk_gmac_clk_init._entry_ptr.76, ptr @rk_gmac_clk_init._entry_ptr.79, ptr @rk_gmac_clk_init._entry_ptr.82, ptr @rk_gmac_dwmac_driver_exit, ptr @rk_gmac_powerup._entry, ptr @rk_gmac_powerup._entry.85, ptr @rk_gmac_powerup._entry.88, ptr @rk_gmac_powerup._entry.91, ptr @rk_gmac_powerup._entry.94, ptr @rk_gmac_powerup._entry.97, ptr @rk_gmac_powerup._entry_ptr, ptr @rk_gmac_powerup._entry_ptr.87, ptr @rk_gmac_powerup._entry_ptr.90, ptr @rk_gmac_powerup._entry_ptr.93, ptr @rk_gmac_powerup._entry_ptr.96, ptr @rk_gmac_powerup._entry_ptr.99, ptr @rk_gmac_probe._entry, ptr @rk_gmac_probe._entry_ptr, ptr @rk_gmac_setup._entry, ptr @rk_gmac_setup._entry.11, ptr @rk_gmac_setup._entry.15, ptr @rk_gmac_setup._entry.18, ptr @rk_gmac_setup._entry.24, ptr @rk_gmac_setup._entry.27, ptr @rk_gmac_setup._entry.30, ptr @rk_gmac_setup._entry.34, ptr @rk_gmac_setup._entry.37, ptr @rk_gmac_setup._entry.40, ptr @rk_gmac_setup._entry.45, ptr @rk_gmac_setup._entry.48, ptr @rk_gmac_setup._entry_ptr, ptr @rk_gmac_setup._entry_ptr.13, ptr @rk_gmac_setup._entry_ptr.17, ptr @rk_gmac_setup._entry_ptr.21, ptr @rk_gmac_setup._entry_ptr.26, ptr @rk_gmac_setup._entry_ptr.29, ptr @rk_gmac_setup._entry_ptr.32, ptr @rk_gmac_setup._entry_ptr.36, ptr @rk_gmac_setup._entry_ptr.39, ptr @rk_gmac_setup._entry_ptr.42, ptr @rk_gmac_setup._entry_ptr.47, ptr @rk_gmac_setup._entry_ptr.50, ptr @rv1108_set_rmii_speed._entry, ptr @rv1108_set_rmii_speed._entry.191, ptr @rv1108_set_rmii_speed._entry_ptr, ptr @rv1108_set_rmii_speed._entry_ptr.192, ptr @rv1108_set_to_rmii._entry, ptr @rv1108_set_to_rmii._entry_ptr, ptr @rk_gmac_dwmac_driver, ptr @.str, ptr @rk_gmac_dwmac_match, ptr @rk_gmac_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.78, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @px30_ops, ptr @rk3128_ops, ptr @rk3228_ops, ptr @rk3288_ops, ptr @rk3308_ops, ptr @rk3328_ops, ptr @rk3366_ops, ptr @rk3368_ops, ptr @rk3399_ops, ptr @rv1108_ops, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.124, ptr @.str.126, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.134, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.142, ptr @.str.145, ptr @.str.146, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.154, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.162, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.170, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.178, ptr @rk3568_ops, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.187, ptr @.str.189, ptr @.str.190], section "llvm.metadata"
@0 = internal global [204 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_dwmac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_dwmac_match to i32), i32 2352, i32 2944, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_fix_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_setup._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_setup._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_setup._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_setup._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_setup._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_setup._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_setup._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_setup._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_setup._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_setup._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_setup._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_clk_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_clk_init._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_clk_init._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_clk_init._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_clk_init._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_clk_init._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_clk_init._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_clk_init._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_clk_init._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_powerup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_powerup._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_powerup._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_powerup._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_powerup._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_powerup._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_gmac_check_ops._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_power_on._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @px30_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3128_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3228_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3308_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3328_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3366_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3368_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv1108_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @px30_set_to_rmii._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @px30_set_rmii_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @px30_set_rmii_speed._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @px30_set_rmii_speed._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @px30_set_rmii_speed._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3128_set_to_rgmii._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3128_set_to_rmii._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3128_set_rgmii_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3128_set_rgmii_speed._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3128_set_rmii_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3128_set_rmii_speed._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3228_set_to_rgmii._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3228_set_to_rmii._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3228_set_rgmii_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3228_set_rgmii_speed._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3228_set_rmii_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3228_set_rmii_speed._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_set_to_rgmii._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_set_to_rmii._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_set_rgmii_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_set_rgmii_speed._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_set_rmii_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_set_rmii_speed._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3308_set_to_rmii._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3308_set_rmii_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3308_set_rmii_speed._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3328_set_to_rgmii._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3328_set_to_rmii._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3328_set_rgmii_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3328_set_rgmii_speed._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3328_set_rmii_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3328_set_rmii_speed._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3366_set_to_rgmii._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3366_set_to_rmii._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3366_set_rgmii_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3366_set_rgmii_speed._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3366_set_rmii_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3366_set_rmii_speed._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3368_set_to_rgmii._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3368_set_to_rmii._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3368_set_rgmii_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3368_set_rgmii_speed._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3368_set_rmii_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3368_set_rmii_speed._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_set_to_rgmii._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_set_to_rmii._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_set_rgmii_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_set_rgmii_speed._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_set_rmii_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_set_rmii_speed._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3568_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3568_set_to_rgmii._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3568_set_to_rmii._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3568_set_gmac_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3568_set_gmac_speed._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv1108_set_to_rmii._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv1108_set_rmii_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv1108_set_rmii_speed._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_gmac_dwmac_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rk_gmac_dwmac_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rk_gmac_dwmac_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @rk_gmac_dwmac_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_gmac_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %strings.i = alloca ptr, align 4
  %value.i = alloca i32, align 4
  %stmmac_res = alloca %struct.stmmac_resources, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %stmmac_res) #6
  %0 = call ptr @memset(ptr %stmmac_res, i32 255, i32 96)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @stmmac_get_platform_resources(ptr noundef %pdev, ptr noundef nonnull %stmmac_res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %mac = getelementptr inbounds %struct.stmmac_resources, ptr %stmmac_res, i32 0, i32 1
  %call6 = call ptr @stmmac_probe_config_dt(ptr noundef %pdev, ptr noundef %mac) #6
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %has_gmac4 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call6, i32 0, i32 58
  %2 = ptrtoint ptr %has_gmac4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %has_gmac4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool11.not = icmp eq i32 %3, 0
  br i1 %tobool11.not, label %if.then12, label %if.end10.if.end13_crit_edge

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %has_gmac = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call6, i32 0, i32 13
  %4 = ptrtoint ptr %has_gmac to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %has_gmac, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10.if.end13_crit_edge
  %fix_mac_speed = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call6, i32 0, i32 35
  %5 = ptrtoint ptr %fix_mac_speed to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @rk_fix_speed, ptr %fix_mac_speed, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %strings.i) #6
  %6 = ptrtoint ptr %strings.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %strings.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #6
  %7 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %value.i, align 4, !annotation !433
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 84, i32 noundef 3520) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end13.rk_gmac_setup.exit.thread_crit_edge, label %if.end.i

if.end13.rk_gmac_setup.exit.thread_crit_edge:     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %rk_gmac_setup.exit.thread

if.end.i:                                         ; preds = %if.end13
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %8 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node.i, align 8
  %phy_iface.i = getelementptr inbounds %struct.rk_priv_data, ptr %call.i.i, i32 0, i32 1
  %call3.i = call i32 @of_get_phy_mode(ptr noundef %9, ptr noundef %phy_iface.i) #6
  %ops4.i = getelementptr inbounds %struct.rk_priv_data, ptr %call.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %ops4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %ops4.i, align 4
  %call5.i = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.end.i.if.end14.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %regs_valid.i = getelementptr inbounds %struct.rk_gmac_ops, ptr %call, i32 0, i32 5
  %11 = ptrtoint ptr %regs_valid.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %regs_valid.i, align 4, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.not.i = icmp eq i8 %12, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.if.end14.i_crit_edge, label %while.cond.preheader.i

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

while.cond.preheader.i:                           ; preds = %land.lhs.true.i
  %arrayidx177.i = getelementptr %struct.rk_gmac_ops, ptr %call, i32 0, i32 6, i32 0
  %13 = ptrtoint ptr %arrayidx177.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx177.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool9.not178.i = icmp eq i32 %14, 0
  br i1 %tobool9.not178.i, label %while.cond.preheader.i.if.end14.i_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.if.end14.i_crit_edge:      ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %15 = ptrtoint ptr %call5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call5.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end13.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %17 = phi i32 [ %14, %while.body.lr.ph.i ], [ %20, %if.end13.i.while.body.i_crit_edge ]
  %i.0179.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc.i, %if.end13.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %16)
  %cmp.i64 = icmp eq i32 %17, %16
  br i1 %cmp.i64, label %if.then12.i, label %if.end13.i

if.then12.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %id.i = getelementptr inbounds %struct.rk_priv_data, ptr %call.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %i.0179.i, ptr %id.i, align 4
  br label %if.end14.i

if.end13.i:                                       ; preds = %while.body.i
  %inc.i = add i32 %i.0179.i, 1
  %arrayidx.i = getelementptr %struct.rk_gmac_ops, ptr %call, i32 0, i32 6, i32 %inc.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %tobool9.not.i = icmp eq i32 %20, 0
  br i1 %tobool9.not.i, label %if.end13.i.if.end14.i_crit_edge, label %if.end13.i.while.body.i_crit_edge

if.end13.i.while.body.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end13.i.if.end14.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end13.i.if.end14.i_crit_edge, %if.then12.i, %while.cond.preheader.i.if.end14.i_crit_edge, %land.lhs.true.i.if.end14.i_crit_edge, %if.end.i.if.end14.i_crit_edge
  %call15.i = call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.8) #6
  %regulator.i = getelementptr inbounds %struct.rk_priv_data, ptr %call.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %regulator.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call15.i, ptr %regulator.i, align 4
  %cmp.i.i = icmp ugt ptr %call15.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then18.i, label %if.end14.i.if.end29.i_crit_edge

if.end14.i.if.end29.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

if.then18.i:                                      ; preds = %if.end14.i
  %cmp21.i = icmp eq ptr %call15.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp21.i, label %do.end.i, label %do.end27.i

do.end.i:                                         ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  br label %rk_gmac_setup.exit.thread

do.end27.i:                                       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #9
  %22 = ptrtoint ptr %regulator.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %regulator.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.end27.i, %if.end14.i.if.end29.i_crit_edge
  %23 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node.i, align 8
  %call31.i = call i32 @of_property_read_string(ptr noundef %24, ptr noundef nonnull @.str.14, ptr noundef nonnull %strings.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %do.end39.i, label %do.end36.i

do.end36.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #9
  %clock_input.i = getelementptr inbounds %struct.rk_priv_data, ptr %call.i.i, i32 0, i32 7
  %25 = ptrtoint ptr %clock_input.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %clock_input.i, align 1
  br label %if.end47.i

do.end39.i:                                       ; preds = %if.end29.i
  %26 = ptrtoint ptr %strings.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %strings.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef %27) #9
  %28 = ptrtoint ptr %strings.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %strings.i, align 4
  %call40.i = call i32 @strcmp(ptr noundef %29, ptr noundef nonnull dereferenceable(6) @.str.22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  %clock_input43.i = getelementptr inbounds %struct.rk_priv_data, ptr %call.i.i, i32 0, i32 7
  br i1 %tobool41.not.i, label %if.then42.i, label %if.else44.i

if.then42.i:                                      ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %clock_input43.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %clock_input43.i, align 1
  br label %if.end47.i

if.else44.i:                                      ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %clock_input43.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %clock_input43.i, align 1
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.else44.i, %if.then42.i, %do.end36.i
  %32 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node.i, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %33, ptr noundef nonnull @.str.23, ptr noundef nonnull %value.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool50.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool50.not.i, label %do.end62.i, label %if.then51.i

if.then51.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  %tx_delay.i = getelementptr inbounds %struct.rk_priv_data, ptr %call.i.i, i32 0, i32 20
  %34 = ptrtoint ptr %tx_delay.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 48, ptr %tx_delay.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #9
  %35 = ptrtoint ptr %tx_delay.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_delay.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %36) #9
  br label %if.end64.i

do.end62.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %value.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %38) #9
  %39 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %value.i, align 4
  %tx_delay63.i = getelementptr inbounds %struct.rk_priv_data, ptr %call.i.i, i32 0, i32 20
  %41 = ptrtoint ptr %tx_delay63.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %tx_delay63.i, align 4
  br label %if.end64.i

if.end64.i:                                       ; preds = %do.end62.i, %if.then51.i
  %42 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %of_node.i, align 8
  %call.i.i172.i = call i32 @of_property_read_variable_u32_array(ptr noundef %43, ptr noundef nonnull @.str.33, ptr noundef nonnull %value.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i172.i)
  %tobool67.not.i = icmp sgt i32 %call.i.i172.i, -1
  br i1 %tobool67.not.i, label %do.end79.i, label %if.then68.i

if.then68.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #8
  %rx_delay.i = getelementptr inbounds %struct.rk_priv_data, ptr %call.i.i, i32 0, i32 21
  %44 = ptrtoint ptr %rx_delay.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 16, ptr %rx_delay.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #9
  %45 = ptrtoint ptr %rx_delay.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_delay.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %46) #9
  br label %if.end81.i

do.end79.i:                                       ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %value.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %48) #9
  %49 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %value.i, align 4
  %rx_delay80.i = getelementptr inbounds %struct.rk_priv_data, ptr %call.i.i, i32 0, i32 21
  %51 = ptrtoint ptr %rx_delay80.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %rx_delay80.i, align 4
  br label %if.end81.i

if.end81.i:                                       ; preds = %do.end79.i, %if.then68.i
  %52 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %of_node.i, align 8
  %call83.i = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %53, ptr noundef nonnull @.str.43) #6
  %grf.i = getelementptr inbounds %struct.rk_priv_data, ptr %call.i.i, i32 0, i32 22
  %54 = ptrtoint ptr %grf.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call83.i, ptr %grf.i, align 4
  %phy_node.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call6, i32 0, i32 5
  %55 = ptrtoint ptr %phy_node.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %phy_node.i, align 4
  %tobool84.not.i = icmp eq ptr %56, null
  br i1 %tobool84.not.i, label %if.end81.i.rk_gmac_setup.exit_crit_edge, label %if.then85.i

if.end81.i.rk_gmac_setup.exit_crit_edge:          ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rk_gmac_setup.exit

if.then85.i:                                      ; preds = %if.end81.i
  %call.i173.i = call ptr @of_find_property(ptr noundef nonnull %56, ptr noundef nonnull @.str.44, ptr noundef null) #6
  %tobool.i.i = icmp ne ptr %call.i173.i, null
  %integrated_phy.i = getelementptr inbounds %struct.rk_priv_data, ptr %call.i.i, i32 0, i32 8
  %frombool.i = zext i1 %tobool.i.i to i8
  %57 = ptrtoint ptr %integrated_phy.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %frombool.i, ptr %integrated_phy.i, align 2
  br i1 %tobool.i.i, label %if.then90.i, label %if.then85.i.rk_gmac_setup.exit_crit_edge

if.then85.i.rk_gmac_setup.exit_crit_edge:         ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rk_gmac_setup.exit

if.then90.i:                                      ; preds = %if.then85.i
  %58 = ptrtoint ptr %phy_node.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %phy_node.i, align 4
  %call.i.i174.i = call ptr @__of_reset_control_get(ptr noundef %59, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %phy_reset.i = getelementptr inbounds %struct.rk_priv_data, ptr %call.i.i, i32 0, i32 19
  %60 = ptrtoint ptr %phy_reset.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i.i174.i, ptr %phy_reset.i, align 4
  %cmp.i175.i = icmp ugt ptr %call.i.i174.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i175.i, label %do.end98.i, label %if.then90.i.rk_gmac_setup.exit_crit_edge

if.then90.i.rk_gmac_setup.exit_crit_edge:         ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rk_gmac_setup.exit

do.end98.i:                                       ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46) #9
  %61 = ptrtoint ptr %phy_reset.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %phy_reset.i, align 4
  br label %rk_gmac_setup.exit

rk_gmac_setup.exit.thread:                        ; preds = %do.end.i, %if.end13.rk_gmac_setup.exit.thread_crit_edge
  %retval.0.i.ph = phi ptr [ inttoptr (i32 -12 to ptr), %if.end13.rk_gmac_setup.exit.thread_crit_edge ], [ inttoptr (i32 -517 to ptr), %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %strings.i) #6
  %bsp_priv82 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call6, i32 0, i32 46
  %62 = ptrtoint ptr %bsp_priv82 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %retval.0.i.ph, ptr %bsp_priv82, align 4
  br label %if.then17

rk_gmac_setup.exit:                               ; preds = %do.end98.i, %if.then90.i.rk_gmac_setup.exit_crit_edge, %if.then85.i.rk_gmac_setup.exit_crit_edge, %if.end81.i.rk_gmac_setup.exit_crit_edge
  %integrated_phy107.i = getelementptr inbounds %struct.rk_priv_data, ptr %call.i.i, i32 0, i32 8
  %63 = ptrtoint ptr %integrated_phy107.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %integrated_phy107.i, align 2, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool108.not.i = icmp eq i8 %64, 0
  %cond.i = select i1 %tobool108.not.i, ptr @.str.52, ptr @.str.51
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull %cond.i) #9
  %65 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %pdev, ptr %call.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %strings.i) #6
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call6, i32 0, i32 46
  %66 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call.i.i, ptr %bsp_priv, align 4
  %cmp.i65 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i65, label %rk_gmac_setup.exit.if.then17_crit_edge, label %if.end20

rk_gmac_setup.exit.if.then17_crit_edge:           ; preds = %rk_gmac_setup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

if.then17:                                        ; preds = %rk_gmac_setup.exit.if.then17_crit_edge, %rk_gmac_setup.exit.thread
  %retval.0.i84 = phi ptr [ %retval.0.i.ph, %rk_gmac_setup.exit.thread ], [ %call.i.i, %rk_gmac_setup.exit.if.then17_crit_edge ]
  %67 = ptrtoint ptr %retval.0.i84 to i32
  br label %err_remove_config_dt

if.end20:                                         ; preds = %rk_gmac_setup.exit
  %68 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call.i.i, align 4
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %69, i32 0, i32 3
  %clk_enabled.i = getelementptr inbounds %struct.rk_priv_data, ptr %call.i.i, i32 0, i32 6
  %70 = ptrtoint ptr %clk_enabled.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %clk_enabled.i, align 4
  %call.i = call ptr @devm_clk_get(ptr noundef %dev2.i, ptr noundef nonnull @.str.53) #6
  %mac_clk_rx.i = getelementptr inbounds %struct.rk_priv_data, ptr %call.i.i, i32 0, i32 11
  %71 = ptrtoint ptr %mac_clk_rx.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call.i, ptr %mac_clk_rx.i, align 4
  %cmp.i.i66 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i66, label %do.end.i67, label %if.end20.if.end.i69_crit_edge

if.end20.if.end.i69_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i69

do.end.i67:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.53) #9
  br label %if.end.i69

if.end.i69:                                       ; preds = %do.end.i67, %if.end20.if.end.i69_crit_edge
  %call5.i68 = call ptr @devm_clk_get(ptr noundef %dev2.i, ptr noundef nonnull @.str.56) #6
  %mac_clk_tx.i = getelementptr inbounds %struct.rk_priv_data, ptr %call.i.i, i32 0, i32 12
  %72 = ptrtoint ptr %mac_clk_tx.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call5.i68, ptr %mac_clk_tx.i, align 4
  %cmp.i143.i = icmp ugt ptr %call5.i68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i143.i, label %do.end11.i, label %if.end.i69.if.end12.i_crit_edge

if.end.i69.if.end12.i_crit_edge:                  ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

do.end11.i:                                       ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.56) #9
  br label %if.end12.i

if.end12.i:                                       ; preds = %do.end11.i, %if.end.i69.if.end12.i_crit_edge
  %call13.i = call ptr @devm_clk_get(ptr noundef %dev2.i, ptr noundef nonnull @.str.59) #6
  %aclk_mac.i = getelementptr inbounds %struct.rk_priv_data, ptr %call.i.i, i32 0, i32 16
  %73 = ptrtoint ptr %aclk_mac.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call13.i, ptr %aclk_mac.i, align 4
  %cmp.i144.i = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i144.i, label %do.end19.i, label %if.end12.i.if.end20.i_crit_edge

if.end12.i.if.end20.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

do.end19.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.59) #9
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.end19.i, %if.end12.i.if.end20.i_crit_edge
  %call21.i = call ptr @devm_clk_get(ptr noundef %dev2.i, ptr noundef nonnull @.str.62) #6
  %pclk_mac.i = getelementptr inbounds %struct.rk_priv_data, ptr %call.i.i, i32 0, i32 17
  %74 = ptrtoint ptr %pclk_mac.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call21.i, ptr %pclk_mac.i, align 4
  %cmp.i145.i = icmp ugt ptr %call21.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i145.i, label %do.end27.i70, label %if.end20.i.if.end28.i_crit_edge

if.end20.i.if.end28.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

do.end27.i70:                                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.62) #9
  br label %if.end28.i

if.end28.i:                                       ; preds = %do.end27.i70, %if.end20.i.if.end28.i_crit_edge
  %call29.i = call ptr @devm_clk_get(ptr noundef %dev2.i, ptr noundef nonnull @.str.65) #6
  %clk_mac.i = getelementptr inbounds %struct.rk_priv_data, ptr %call.i.i, i32 0, i32 9
  %75 = ptrtoint ptr %clk_mac.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call29.i, ptr %clk_mac.i, align 4
  %cmp.i146.i = icmp ugt ptr %call29.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i146.i, label %do.end35.i, label %if.end28.i.if.end36.i_crit_edge

if.end28.i.if.end36.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

do.end35.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.65) #9
  br label %if.end36.i

if.end36.i:                                       ; preds = %do.end35.i, %if.end28.i.if.end36.i_crit_edge
  %76 = ptrtoint ptr %phy_iface.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %phy_iface.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %77)
  %cmp.i72 = icmp eq i32 %77, 7
  br i1 %cmp.i72, label %if.then37.i, label %if.end36.i.if.end56.i_crit_edge

if.end36.i.if.end56.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i

if.then37.i:                                      ; preds = %if.end36.i
  %call38.i = call ptr @devm_clk_get(ptr noundef %dev2.i, ptr noundef nonnull @.str.68) #6
  %clk_mac_ref.i = getelementptr inbounds %struct.rk_priv_data, ptr %call.i.i, i32 0, i32 13
  %78 = ptrtoint ptr %clk_mac_ref.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call38.i, ptr %clk_mac_ref.i, align 4
  %cmp.i147.i = icmp ugt ptr %call38.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i147.i, label %do.end44.i, label %if.then37.i.if.end45.i_crit_edge

if.then37.i.if.end45.i_crit_edge:                 ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.i

do.end44.i:                                       ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.68) #9
  br label %if.end45.i

if.end45.i:                                       ; preds = %do.end44.i, %if.then37.i.if.end45.i_crit_edge
  %clock_input.i73 = getelementptr inbounds %struct.rk_priv_data, ptr %call.i.i, i32 0, i32 7
  %79 = ptrtoint ptr %clock_input.i73 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %clock_input.i73, align 1, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i74 = icmp eq i8 %80, 0
  br i1 %tobool.not.i74, label %if.then46.i, label %if.end45.i.if.end56.i_crit_edge

if.end45.i.if.end56.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i

if.then46.i:                                      ; preds = %if.end45.i
  %call47.i = call ptr @devm_clk_get(ptr noundef %dev2.i, ptr noundef nonnull @.str.71) #6
  %clk_mac_refout.i = getelementptr inbounds %struct.rk_priv_data, ptr %call.i.i, i32 0, i32 14
  %81 = ptrtoint ptr %clk_mac_refout.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call47.i, ptr %clk_mac_refout.i, align 4
  %cmp.i148.i = icmp ugt ptr %call47.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i148.i, label %do.end53.i, label %if.then46.i.if.end56.i_crit_edge

if.then46.i.if.end56.i_crit_edge:                 ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i

do.end53.i:                                       ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.71) #9
  br label %if.end56.i

if.end56.i:                                       ; preds = %do.end53.i, %if.then46.i.if.end56.i_crit_edge, %if.end45.i.if.end56.i_crit_edge, %if.end36.i.if.end56.i_crit_edge
  %call57.i = call ptr @devm_clk_get(ptr noundef %dev2.i, ptr noundef nonnull @.str.74) #6
  %clk_mac_speed.i = getelementptr inbounds %struct.rk_priv_data, ptr %call.i.i, i32 0, i32 15
  %82 = ptrtoint ptr %clk_mac_speed.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call57.i, ptr %clk_mac_speed.i, align 4
  %cmp.i149.i = icmp ugt ptr %call57.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i149.i, label %do.end63.i, label %if.end56.i.if.end64.i75_crit_edge

if.end56.i.if.end64.i75_crit_edge:                ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.i75

do.end63.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.74) #9
  br label %if.end64.i75

if.end64.i75:                                     ; preds = %do.end63.i, %if.end56.i.if.end64.i75_crit_edge
  %clock_input65.i = getelementptr inbounds %struct.rk_priv_data, ptr %call.i.i, i32 0, i32 7
  %83 = ptrtoint ptr %clock_input65.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %clock_input65.i, align 1, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool66.not.i = icmp eq i8 %84, 0
  br i1 %tobool66.not.i, label %if.else.i, label %do.end70.i

do.end70.i:                                       ; preds = %if.end64.i75
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.78) #9
  br label %if.end77.i

if.else.i:                                        ; preds = %if.end64.i75
  %85 = ptrtoint ptr %phy_iface.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %phy_iface.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %86)
  %cmp72.i = icmp eq i32 %86, 7
  br i1 %cmp72.i, label %if.then73.i, label %if.else.i.if.end77.i_crit_edge

if.else.i.if.end77.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77.i

if.then73.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %clk_mac.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %clk_mac.i, align 4
  %call75.i = call i32 @clk_set_rate(ptr noundef %88, i32 noundef 50000000) #6
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then73.i, %if.else.i.if.end77.i_crit_edge, %do.end70.i
  %89 = ptrtoint ptr %phy_node.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %phy_node.i, align 4
  %tobool78.not.i = icmp eq ptr %90, null
  br i1 %tobool78.not.i, label %if.end77.i.if.end24_crit_edge, label %land.lhs.true.i78

if.end77.i.if.end24_crit_edge:                    ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

land.lhs.true.i78:                                ; preds = %if.end77.i
  %91 = ptrtoint ptr %integrated_phy107.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %integrated_phy107.i, align 2, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool79.not.i = icmp eq i8 %92, 0
  br i1 %tobool79.not.i, label %land.lhs.true.i78.if.end24_crit_edge, label %if.then80.i

land.lhs.true.i78.if.end24_crit_edge:             ; preds = %land.lhs.true.i78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then80.i:                                      ; preds = %land.lhs.true.i78
  %call82.i = call ptr @of_clk_get(ptr noundef nonnull %90, i32 noundef 0) #6
  %clk_phy.i = getelementptr inbounds %struct.rk_priv_data, ptr %call.i.i, i32 0, i32 18
  %93 = ptrtoint ptr %clk_phy.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call82.i, ptr %clk_phy.i, align 4
  %cmp.i150.i = icmp ugt ptr %call82.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i150.i, label %rk_gmac_clk_init.exit, label %if.end91.i

if.end91.i:                                       ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #8
  %call93.i = call i32 @clk_set_rate(ptr noundef %call82.i, i32 noundef 50000000) #6
  br label %if.end24

rk_gmac_clk_init.exit:                            ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #8
  %94 = ptrtoint ptr %call82.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.81, i32 noundef %94) #9
  br label %err_remove_config_dt

if.end24:                                         ; preds = %if.end91.i, %land.lhs.true.i78.if.end24_crit_edge, %if.end77.i.if.end24_crit_edge
  %95 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bsp_priv, align 4
  %call26 = call fastcc i32 @rk_gmac_powerup(ptr noundef %96)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end24.err_remove_config_dt_crit_edge

if.end24.err_remove_config_dt_crit_edge:          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_remove_config_dt

if.end29:                                         ; preds = %if.end24
  %call31 = call i32 @stmmac_dvr_probe(ptr noundef %dev, ptr noundef %call6, ptr noundef nonnull %stmmac_res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end29.cleanup_crit_edge, label %err_gmac_powerdown

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_gmac_powerdown:                               ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bsp_priv, align 4
  call fastcc void @rk_gmac_powerdown(ptr noundef %98)
  br label %err_remove_config_dt

err_remove_config_dt:                             ; preds = %err_gmac_powerdown, %if.end24.err_remove_config_dt_crit_edge, %rk_gmac_clk_init.exit, %if.then17
  %ret.0 = phi i32 [ %67, %if.then17 ], [ -22, %rk_gmac_clk_init.exit ], [ %call26, %if.end24.err_remove_config_dt_crit_edge ], [ %call31, %err_gmac_powerdown ]
  call void @stmmac_remove_config_dt(ptr noundef %pdev, ptr noundef %call6) #6
  br label %cleanup

cleanup:                                          ; preds = %err_remove_config_dt, %if.end29.cleanup_crit_edge, %if.then8, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %1, %if.then8 ], [ %ret.0, %err_remove_config_dt ], [ -22, %do.end ], [ %call2, %if.end.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %stmmac_res) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_gmac_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %plat.i = getelementptr i8, ptr %1, i32 17408
  %2 = ptrtoint ptr %plat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat.i, align 128
  %bsp_priv.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %bsp_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bsp_priv.i, align 4
  %call2 = tail call i32 @stmmac_dvr_remove(ptr noundef %dev) #6
  tail call fastcc void @rk_gmac_powerdown(ptr noundef %5)
  ret i32 %call2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_get_platform_resources(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @stmmac_probe_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk_fix_speed(ptr noundef %priv, i32 noundef %speed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_iface = getelementptr inbounds %struct.rk_priv_data, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %phy_iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_iface, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end [
    i32 9, label %entry.sw.bb_crit_edge
    i32 10, label %entry.sw.bb_crit_edge22
    i32 11, label %entry.sw.bb_crit_edge23
    i32 12, label %entry.sw.bb_crit_edge24
    i32 7, label %sw.bb4
  ]

entry.sw.bb_crit_edge24:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge23:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge22:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge22, %entry.sw.bb_crit_edge23, %entry.sw.bb_crit_edge24
  %ops = getelementptr inbounds %struct.rk_priv_data, ptr %priv, i32 0, i32 5
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %set_rgmii_speed = getelementptr inbounds %struct.rk_gmac_ops, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %set_rgmii_speed to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_rgmii_speed, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %6(ptr noundef %priv, i32 noundef %speed) #6
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %ops5 = getelementptr inbounds %struct.rk_priv_data, ptr %priv, i32 0, i32 5
  %7 = ptrtoint ptr %ops5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops5, align 4
  %set_rmii_speed = getelementptr inbounds %struct.rk_gmac_ops, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %set_rmii_speed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_rmii_speed, align 4
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %sw.bb4.sw.epilog_crit_edge, label %if.then7

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then7:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %10(ptr noundef %priv, i32 noundef %speed) #6
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef %1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then7, %sw.bb4.sw.epilog_crit_edge, %if.then, %sw.bb.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rk_gmac_powerup(ptr noundef %bsp_priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %phy_iface.i = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 1
  %2 = ptrtoint ptr %phy_iface.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_iface.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.193)
  switch i32 %3, label %do.end.i [
    i32 9, label %entry.sw.bb.i_crit_edge
    i32 10, label %entry.sw.bb.i_crit_edge84
    i32 11, label %entry.sw.bb.i_crit_edge85
    i32 12, label %entry.sw.bb.i_crit_edge86
    i32 7, label %sw.bb1.i
  ]

entry.sw.bb.i_crit_edge86:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge85:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge84:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge84, %entry.sw.bb.i_crit_edge85, %entry.sw.bb.i_crit_edge86
  %ops.i = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 5
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %sw.bb.i.cleanup_crit_edge, label %sw.bb.i.if.end_crit_edge

sw.bb.i.if.end_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1.i:                                         ; preds = %entry
  %ops2.i = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 5
  %9 = ptrtoint ptr %ops2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops2.i, align 4
  %set_to_rmii.i = getelementptr inbounds %struct.rk_gmac_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %set_to_rmii.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_to_rmii.i, align 4
  %tobool3.not.i = icmp eq ptr %12, null
  br i1 %tobool3.not.i, label %sw.bb1.i.cleanup_crit_edge, label %sw.bb1.i.if.end_crit_edge

sw.bb1.i.if.end_crit_edge:                        ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb1.i.cleanup_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef %3) #9
  br label %if.end

if.end:                                           ; preds = %do.end.i, %sw.bb1.i.if.end_crit_edge, %sw.bb.i.if.end_crit_edge
  tail call fastcc void @gmac_clk_enable(ptr noundef %bsp_priv, i1 noundef zeroext true)
  %13 = ptrtoint ptr %phy_iface.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %phy_iface.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %14, label %do.end33 [
    i32 9, label %do.end
    i32 10, label %do.end9
    i32 11, label %do.end15
    i32 12, label %do.end22
    i32 7, label %do.end29
  ]

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.83) #9
  %ops = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 5
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tx_delay = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 20
  %20 = ptrtoint ptr %tx_delay to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_delay, align 4
  %rx_delay = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 21
  %22 = ptrtoint ptr %rx_delay to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_delay, align 4
  tail call void %19(ptr noundef %bsp_priv, i32 noundef %21, i32 noundef %23) #6
  br label %sw.epilog

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.86) #9
  %ops10 = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 5
  %24 = ptrtoint ptr %ops10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops10, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  tail call void %27(ptr noundef %bsp_priv, i32 noundef 0, i32 noundef 0) #6
  br label %sw.epilog

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.89) #9
  %ops16 = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 5
  %28 = ptrtoint ptr %ops16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops16, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %tx_delay18 = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 20
  %32 = ptrtoint ptr %tx_delay18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_delay18, align 4
  tail call void %31(ptr noundef %bsp_priv, i32 noundef %33, i32 noundef 0) #6
  br label %sw.epilog

do.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.92) #9
  %ops23 = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 5
  %34 = ptrtoint ptr %ops23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops23, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %rx_delay25 = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 21
  %38 = ptrtoint ptr %rx_delay25 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_delay25, align 4
  tail call void %37(ptr noundef %bsp_priv, i32 noundef 0, i32 noundef %39) #6
  br label %sw.epilog

do.end29:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.95) #9
  %ops30 = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 5
  %40 = ptrtoint ptr %ops30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops30, align 4
  %set_to_rmii = getelementptr inbounds %struct.rk_gmac_ops, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %set_to_rmii to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %set_to_rmii, align 4
  tail call void %43(ptr noundef %bsp_priv) #6
  br label %sw.epilog

do.end33:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.98) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end33, %do.end29, %do.end22, %do.end15, %do.end9, %do.end
  %regulator.i = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 3
  %44 = ptrtoint ptr %regulator.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regulator.i, align 4
  %46 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bsp_priv, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %47, i32 0, i32 3
  %tobool.not.i76 = icmp eq ptr %45, null
  br i1 %tobool.not.i76, label %sw.epilog.phy_power_on.exit_crit_edge, label %if.end.i

sw.epilog.phy_power_on.exit_crit_edge:            ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_power_on.exit

if.end.i:                                         ; preds = %sw.epilog
  %call.i = tail call i32 @regulator_enable(ptr noundef nonnull %45) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end.i.phy_power_on.exit_crit_edge, label %cleanup.sink.split.i

if.end.i.phy_power_on.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_power_on.exit

cleanup.sink.split.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.101) #9
  br label %phy_power_on.exit

phy_power_on.exit:                                ; preds = %cleanup.sink.split.i, %if.end.i.phy_power_on.exit_crit_edge, %sw.epilog.phy_power_on.exit_crit_edge
  %call.i77 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #6
  %integrated_phy = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 8
  %48 = ptrtoint ptr %integrated_phy to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %integrated_phy, align 2, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool40.not = icmp eq i8 %49, 0
  br i1 %tobool40.not, label %phy_power_on.exit.cleanup_crit_edge, label %if.then41

phy_power_on.exit.cleanup_crit_edge:              ; preds = %phy_power_on.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then41:                                        ; preds = %phy_power_on.exit
  %ops.i78 = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 5
  %50 = ptrtoint ptr %ops.i78 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops.i78, align 4
  %integrated_phy_powerup.i = getelementptr inbounds %struct.rk_gmac_ops, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %integrated_phy_powerup.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %integrated_phy_powerup.i, align 4
  %tobool.not.i79 = icmp eq ptr %53, null
  br i1 %tobool.not.i79, label %if.then41.if.end.i81_crit_edge, label %if.then.i

if.then41.if.end.i81_crit_edge:                   ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i81

if.then.i:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %53(ptr noundef %bsp_priv) #6
  br label %if.end.i81

if.end.i81:                                       ; preds = %if.then.i, %if.then41.if.end.i81_crit_edge
  %grf.i = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %54 = ptrtoint ptr %grf.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %grf.i, align 4
  %call.i80 = tail call i32 @regmap_write(ptr noundef %55, i32 noundef 2816, i32 noundef 1073758208) #6
  %56 = ptrtoint ptr %grf.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %grf.i, align 4
  %call4.i = tail call i32 @regmap_write(ptr noundef %57, i32 noundef 2816, i32 noundef 12582976) #6
  %58 = ptrtoint ptr %grf.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %grf.i, align 4
  %call6.i = tail call i32 @regmap_write(ptr noundef %59, i32 noundef 2824, i32 noundef -60876) #6
  %60 = ptrtoint ptr %grf.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %grf.i, align 4
  %call8.i = tail call i32 @regmap_write(ptr noundef %61, i32 noundef 2828, i32 noundef 4128821) #6
  %phy_reset.i = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 19
  %62 = ptrtoint ptr %phy_reset.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %phy_reset.i, align 4
  %tobool9.not.i = icmp eq ptr %63, null
  br i1 %tobool9.not.i, label %if.end.i81.cleanup_crit_edge, label %if.then10.i

if.end.i81.cleanup_crit_edge:                     ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.i:                                      ; preds = %if.end.i81
  %64 = ptrtoint ptr %grf.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %grf.i, align 4
  %call12.i = tail call i32 @regmap_write(ptr noundef %65, i32 noundef 2816, i32 noundef 65536) #6
  %66 = ptrtoint ptr %phy_reset.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %phy_reset.i, align 4
  %tobool14.not.i = icmp eq ptr %67, null
  br i1 %tobool14.not.i, label %if.then10.i.if.end18.i_crit_edge, label %if.then15.i

if.then10.i.if.end18.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.then15.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  %call17.i = tail call i32 @reset_control_assert(ptr noundef nonnull %67) #6
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %if.then10.i.if.end18.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  %68 = ptrtoint ptr %phy_reset.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %phy_reset.i, align 4
  %tobool20.not.i = icmp eq ptr %69, null
  br i1 %tobool20.not.i, label %if.end18.i.if.end24.i_crit_edge, label %if.then21.i

if.end18.i.if.end24.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  %call23.i = tail call i32 @reset_control_deassert(ptr noundef nonnull %69) #6
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then21.i, %if.end18.i.if.end24.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  %70 = ptrtoint ptr %grf.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %grf.i, align 4
  %call26.i = tail call i32 @regmap_write(ptr noundef %71, i32 noundef 2816, i32 noundef 65537) #6
  tail call void @msleep(i32 noundef 30) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end24.i, %if.end.i81.cleanup_crit_edge, %phy_power_on.exit.cleanup_crit_edge, %sw.bb1.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %phy_power_on.exit.cleanup_crit_edge ], [ 0, %if.end.i81.cleanup_crit_edge ], [ 0, %if.end24.i ], [ -22, %sw.bb.i.cleanup_crit_edge ], [ -22, %sw.bb1.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_dvr_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rk_gmac_powerdown(ptr nocapture noundef %gmac) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %integrated_phy = getelementptr inbounds %struct.rk_priv_data, ptr %gmac, i32 0, i32 8
  %0 = ptrtoint ptr %integrated_phy to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %integrated_phy, align 2, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %grf.i = getelementptr inbounds %struct.rk_priv_data, ptr %gmac, i32 0, i32 22
  %2 = ptrtoint ptr %grf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grf.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 2816, i32 noundef 65536) #6
  %phy_reset.i = getelementptr inbounds %struct.rk_priv_data, ptr %gmac, i32 0, i32 19
  %4 = ptrtoint ptr %phy_reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_reset.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = tail call i32 @reset_control_assert(ptr noundef nonnull %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %gmac to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gmac, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %call.i7 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #6
  %regulator.i = getelementptr inbounds %struct.rk_priv_data, ptr %gmac, i32 0, i32 3
  %8 = ptrtoint ptr %regulator.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regulator.i, align 4
  %10 = ptrtoint ptr %gmac to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gmac, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %tobool.not.i8 = icmp eq ptr %9, null
  br i1 %tobool.not.i8, label %if.end.phy_power_on.exit_crit_edge, label %if.end.i

if.end.phy_power_on.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_power_on.exit

if.end.i:                                         ; preds = %if.end
  %call7.i = tail call i32 @regulator_disable(ptr noundef nonnull %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end.i.phy_power_on.exit_crit_edge, label %cleanup.sink.split.i

if.end.i.phy_power_on.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_power_on.exit

cleanup.sink.split.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.104) #9
  br label %phy_power_on.exit

phy_power_on.exit:                                ; preds = %cleanup.sink.split.i, %if.end.i.phy_power_on.exit_crit_edge, %if.end.phy_power_on.exit_crit_edge
  tail call fastcc void @gmac_clk_enable(ptr noundef %gmac, i1 noundef zeroext false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_remove_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gmac_clk_enable(ptr nocapture noundef %bsp_priv, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_iface1 = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 1
  %0 = ptrtoint ptr %phy_iface1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_iface1, align 4
  %clk_enabled = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 6
  %2 = ptrtoint ptr %clk_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %clk_enabled, align 4, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end63_crit_edge

if.then.if.end63_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp = icmp eq i32 %1, 7
  br i1 %cmp, label %if.then4, label %if.then3.if.end18_crit_edge

if.then3.if.end18_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then4:                                         ; preds = %if.then3
  %mac_clk_rx = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 11
  %4 = ptrtoint ptr %mac_clk_rx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_clk_rx, align 4
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4.if.end_crit_edge, label %if.then5

if.then4.if.end_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then5:                                         ; preds = %if.then4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then5.if.end_crit_edge

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %if.then5
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %if.end.i.if.end_crit_edge, %if.then5.if.end_crit_edge, %if.then4.if.end_crit_edge
  %clk_mac_ref = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 13
  %6 = ptrtoint ptr %clk_mac_ref to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_mac_ref, align 4
  %cmp.i1 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1, label %if.end.if.end12_crit_edge, label %if.then9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then9:                                         ; preds = %if.end
  %call.i2 = tail call i32 @clk_prepare(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool.not.i3 = icmp eq i32 %call.i2, 0
  br i1 %tobool.not.i3, label %if.end.i6, label %if.then9.if.end12_crit_edge

if.then9.if.end12_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.end.i6:                                        ; preds = %if.then9
  %call1.i4 = tail call i32 @clk_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4)
  %tobool2.not.i5 = icmp eq i32 %call1.i4, 0
  br i1 %tobool2.not.i5, label %if.end.i6.if.end12_crit_edge, label %if.then3.i7

if.end.i6.if.end12_crit_edge:                     ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then3.i7:                                      ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then3.i7, %if.end.i6.if.end12_crit_edge, %if.then9.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %clk_mac_refout = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 14
  %8 = ptrtoint ptr %clk_mac_refout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_mac_refout, align 4
  %cmp.i9 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i9, label %if.end12.if.end18_crit_edge, label %if.then14

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then14:                                        ; preds = %if.end12
  %call.i10 = tail call i32 @clk_prepare(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %tobool.not.i11 = icmp eq i32 %call.i10, 0
  br i1 %tobool.not.i11, label %if.end.i14, label %if.then14.if.end18_crit_edge

if.then14.if.end18_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.end.i14:                                       ; preds = %if.then14
  %call1.i12 = tail call i32 @clk_enable(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool2.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool2.not.i13, label %if.end.i14.if.end18_crit_edge, label %if.then3.i15

if.end.i14.if.end18_crit_edge:                    ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then3.i15:                                     ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %9) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then3.i15, %if.end.i14.if.end18_crit_edge, %if.then14.if.end18_crit_edge, %if.end12.if.end18_crit_edge, %if.then3.if.end18_crit_edge
  %clk_phy = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 18
  %10 = ptrtoint ptr %clk_phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_phy, align 4
  %cmp.i17 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i17, label %if.end18.if.end23_crit_edge, label %if.then20

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then20:                                        ; preds = %if.end18
  %call.i18 = tail call i32 @clk_prepare(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool.not.i19 = icmp eq i32 %call.i18, 0
  br i1 %tobool.not.i19, label %if.end.i22, label %if.then20.if.end23_crit_edge

if.then20.if.end23_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.end.i22:                                       ; preds = %if.then20
  %call1.i20 = tail call i32 @clk_enable(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %tobool2.not.i21 = icmp eq i32 %call1.i20, 0
  br i1 %tobool2.not.i21, label %if.end.i22.if.end23_crit_edge, label %if.then3.i23

if.end.i22.if.end23_crit_edge:                    ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then3.i23:                                     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %11) #6
  br label %if.end23

if.end23:                                         ; preds = %if.then3.i23, %if.end.i22.if.end23_crit_edge, %if.then20.if.end23_crit_edge, %if.end18.if.end23_crit_edge
  %aclk_mac = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 16
  %12 = ptrtoint ptr %aclk_mac to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aclk_mac, align 4
  %cmp.i25 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i25, label %if.end23.if.end28_crit_edge, label %if.then25

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then25:                                        ; preds = %if.end23
  %call.i26 = tail call i32 @clk_prepare(ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool.not.i27 = icmp eq i32 %call.i26, 0
  br i1 %tobool.not.i27, label %if.end.i30, label %if.then25.if.end28_crit_edge

if.then25.if.end28_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end.i30:                                       ; preds = %if.then25
  %call1.i28 = tail call i32 @clk_enable(ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i28)
  %tobool2.not.i29 = icmp eq i32 %call1.i28, 0
  br i1 %tobool2.not.i29, label %if.end.i30.if.end28_crit_edge, label %if.then3.i31

if.end.i30.if.end28_crit_edge:                    ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then3.i31:                                     ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %13) #6
  br label %if.end28

if.end28:                                         ; preds = %if.then3.i31, %if.end.i30.if.end28_crit_edge, %if.then25.if.end28_crit_edge, %if.end23.if.end28_crit_edge
  %pclk_mac = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 17
  %14 = ptrtoint ptr %pclk_mac to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pclk_mac, align 4
  %cmp.i33 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i33, label %if.end28.if.end33_crit_edge, label %if.then30

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then30:                                        ; preds = %if.end28
  %call.i34 = tail call i32 @clk_prepare(ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool.not.i35 = icmp eq i32 %call.i34, 0
  br i1 %tobool.not.i35, label %if.end.i38, label %if.then30.if.end33_crit_edge

if.then30.if.end33_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.end.i38:                                       ; preds = %if.then30
  %call1.i36 = tail call i32 @clk_enable(ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36)
  %tobool2.not.i37 = icmp eq i32 %call1.i36, 0
  br i1 %tobool2.not.i37, label %if.end.i38.if.end33_crit_edge, label %if.then3.i39

if.end.i38.if.end33_crit_edge:                    ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then3.i39:                                     ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %15) #6
  br label %if.end33

if.end33:                                         ; preds = %if.then3.i39, %if.end.i38.if.end33_crit_edge, %if.then30.if.end33_crit_edge, %if.end28.if.end33_crit_edge
  %mac_clk_tx = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 12
  %16 = ptrtoint ptr %mac_clk_tx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mac_clk_tx, align 4
  %cmp.i41 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i41, label %if.end33.if.end38_crit_edge, label %if.then35

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then35:                                        ; preds = %if.end33
  %call.i42 = tail call i32 @clk_prepare(ptr noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %tobool.not.i43 = icmp eq i32 %call.i42, 0
  br i1 %tobool.not.i43, label %if.end.i46, label %if.then35.if.end38_crit_edge

if.then35.if.end38_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.end.i46:                                       ; preds = %if.then35
  %call1.i44 = tail call i32 @clk_enable(ptr noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44)
  %tobool2.not.i45 = icmp eq i32 %call1.i44, 0
  br i1 %tobool2.not.i45, label %if.end.i46.if.end38_crit_edge, label %if.then3.i47

if.end.i46.if.end38_crit_edge:                    ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then3.i47:                                     ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %17) #6
  br label %if.end38

if.end38:                                         ; preds = %if.then3.i47, %if.end.i46.if.end38_crit_edge, %if.then35.if.end38_crit_edge, %if.end33.if.end38_crit_edge
  %clk_mac_speed = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 15
  %18 = ptrtoint ptr %clk_mac_speed to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_mac_speed, align 4
  %cmp.i49 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i49, label %if.end38.if.end43_crit_edge, label %if.then40

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then40:                                        ; preds = %if.end38
  %call.i50 = tail call i32 @clk_prepare(ptr noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool.not.i51 = icmp eq i32 %call.i50, 0
  br i1 %tobool.not.i51, label %if.end.i54, label %if.then40.if.end43_crit_edge

if.then40.if.end43_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.end.i54:                                       ; preds = %if.then40
  %call1.i52 = tail call i32 @clk_enable(ptr noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52)
  %tobool2.not.i53 = icmp eq i32 %call1.i52, 0
  br i1 %tobool2.not.i53, label %if.end.i54.if.end43_crit_edge, label %if.then3.i55

if.end.i54.if.end43_crit_edge:                    ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then3.i55:                                     ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %19) #6
  br label %if.end43

if.end43:                                         ; preds = %if.then3.i55, %if.end.i54.if.end43_crit_edge, %if.then40.if.end43_crit_edge, %if.end38.if.end43_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #6
  br label %if.end63.sink.split

if.else:                                          ; preds = %entry
  br i1 %tobool2.not, label %if.else.if.end63_crit_edge, label %if.then49

if.else.if.end63_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then49:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp50 = icmp eq i32 %1, 7
  br i1 %cmp50, label %if.then51, label %if.then49.if.end55_crit_edge

if.then49.if.end55_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then51:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  %mac_clk_rx52 = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 11
  %25 = ptrtoint ptr %mac_clk_rx52 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mac_clk_rx52, align 4
  tail call void @clk_disable(ptr noundef %26) #6
  tail call void @clk_unprepare(ptr noundef %26) #6
  %clk_mac_ref53 = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 13
  %27 = ptrtoint ptr %clk_mac_ref53 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk_mac_ref53, align 4
  tail call void @clk_disable(ptr noundef %28) #6
  tail call void @clk_unprepare(ptr noundef %28) #6
  %clk_mac_refout54 = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 14
  %29 = ptrtoint ptr %clk_mac_refout54 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk_mac_refout54, align 4
  tail call void @clk_disable(ptr noundef %30) #6
  tail call void @clk_unprepare(ptr noundef %30) #6
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %if.then49.if.end55_crit_edge
  %clk_phy56 = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 18
  %31 = ptrtoint ptr %clk_phy56 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk_phy56, align 4
  tail call void @clk_disable(ptr noundef %32) #6
  tail call void @clk_unprepare(ptr noundef %32) #6
  %aclk_mac57 = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 16
  %33 = ptrtoint ptr %aclk_mac57 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %aclk_mac57, align 4
  tail call void @clk_disable(ptr noundef %34) #6
  tail call void @clk_unprepare(ptr noundef %34) #6
  %pclk_mac58 = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 17
  %35 = ptrtoint ptr %pclk_mac58 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pclk_mac58, align 4
  tail call void @clk_disable(ptr noundef %36) #6
  tail call void @clk_unprepare(ptr noundef %36) #6
  %mac_clk_tx59 = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 12
  %37 = ptrtoint ptr %mac_clk_tx59 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mac_clk_tx59, align 4
  tail call void @clk_disable(ptr noundef %38) #6
  tail call void @clk_unprepare(ptr noundef %38) #6
  %clk_mac_speed60 = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 15
  %39 = ptrtoint ptr %clk_mac_speed60 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clk_mac_speed60, align 4
  tail call void @clk_disable(ptr noundef %40) #6
  tail call void @clk_unprepare(ptr noundef %40) #6
  br label %if.end63.sink.split

if.end63.sink.split:                              ; preds = %if.end55, %if.end43
  %.sink = phi i8 [ 0, %if.end55 ], [ 1, %if.end43 ]
  %41 = ptrtoint ptr %clk_enabled to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %.sink, ptr %clk_enabled, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.end63.sink.split, %if.else.if.end63_crit_edge, %if.then.if.end63_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_dvr_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @px30_set_to_rmii(ptr nocapture noundef readonly %bsp_priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %0 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.107) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 2308, i32 noundef 7340096) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @px30_set_rmii_speed(ptr nocapture noundef readonly %bsp_priv, i32 noundef %speed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %clk_mac_speed = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 15
  %2 = ptrtoint ptr %clk_mac_speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_mac_speed, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %speed, label %do.end26 [
    i32 10, label %if.then2
    i32 100, label %if.then12
  ]

if.then2:                                         ; preds = %if.end
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %5 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %grf, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 2308, i32 noundef 262144) #6
  %7 = ptrtoint ptr %clk_mac_speed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk_mac_speed, align 4
  %call5 = tail call i32 @clk_set_rate(ptr noundef %8, i32 noundef 2500000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then2.cleanup_crit_edge, label %do.end9

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end9:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.109, i32 noundef %call5) #9
  br label %cleanup

if.then12:                                        ; preds = %if.end
  %grf13 = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %9 = ptrtoint ptr %grf13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %grf13, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 2308, i32 noundef 262148) #6
  %11 = ptrtoint ptr %clk_mac_speed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk_mac_speed, align 4
  %call16 = tail call i32 @clk_set_rate(ptr noundef %12, i32 noundef 25000000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then12.cleanup_crit_edge, label %do.end21

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end21:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.109, i32 noundef %call16) #9
  br label %cleanup

do.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.117, i32 noundef %speed) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %do.end21, %if.then12.cleanup_crit_edge, %do.end9, %if.then2.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3128_set_to_rgmii(ptr nocapture noundef readonly %bsp_priv, i32 noundef %tx_delay, i32 noundef %rx_delay) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %0 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.119) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 364, i32 noundef 1103102016) #6
  %4 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %grf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_delay)
  %tobool.not = icmp eq i32 %tx_delay, 0
  %cond = select i1 %tobool.not, i32 1073741824, i32 1073758208
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_delay)
  %tobool5.not = icmp eq i32 %rx_delay, 0
  %cond6 = select i1 %tobool5.not, i32 -2147483648, i32 -2147450880
  %shl = shl i32 %rx_delay, 7
  %or7 = or i32 %shl, %tx_delay
  %or8 = or i32 %or7, %cond
  %or10 = or i32 %or8, %cond6
  %or11 = or i32 %or10, 1073676288
  %call12 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 360, i32 noundef %or11) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3128_set_to_rmii(ptr nocapture noundef readonly %bsp_priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %0 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.119) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 364, i32 noundef 1103118592) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3128_set_rgmii_speed(ptr nocapture noundef readonly %bsp_priv, i32 noundef %speed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %2 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.119) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %speed, label %do.end17 [
    i32 10, label %if.then2
    i32 100, label %if.then6
    i32 1000, label %if.then11
  ]

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 364, i32 noundef 805314560) #6
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 364, i32 noundef 805318656) #6
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 364, i32 noundef 805306368) #6
  br label %cleanup

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.124, i32 noundef %speed) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.then11, %if.then6, %if.then2, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3128_set_rmii_speed(ptr nocapture noundef readonly %bsp_priv, i32 noundef %speed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %2 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.119) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %speed, label %do.end12 [
    i32 10, label %if.then2
    i32 100, label %if.then6
  ]

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 364, i32 noundef 201326592) #6
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 364, i32 noundef 201329664) #6
  br label %cleanup

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.117, i32 noundef %speed) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.then6, %if.then2, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3228_set_to_rgmii(ptr nocapture noundef readonly %bsp_priv, i32 noundef %tx_delay, i32 noundef %rx_delay) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %0 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.119) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_delay)
  %tobool.not = icmp eq i32 %tx_delay, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_delay)
  %tobool3.not = icmp eq i32 %rx_delay, 0
  %cond4 = select i1 %tobool3.not, i32 131072, i32 131074
  %or = select i1 %tobool.not, i32 74514448, i32 74514449
  %or5 = or i32 %or, %cond4
  %call6 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 2308, i32 noundef %or5) #6
  %4 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %grf, align 4
  %shl = shl i32 %rx_delay, 7
  %or10 = or i32 %shl, %tx_delay
  %or11 = or i32 %or10, 1073676288
  %call12 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 2304, i32 noundef %or11) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3228_set_to_rmii(ptr nocapture noundef readonly %bsp_priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %0 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.119) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 2308, i32 noundef 74449984) #6
  %4 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %grf, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 2308, i32 noundef 134219776) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3228_set_rgmii_speed(ptr nocapture noundef readonly %bsp_priv, i32 noundef %speed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %2 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.119) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %speed, label %do.end17 [
    i32 10, label %if.then2
    i32 100, label %if.then6
    i32 1000, label %if.then11
  ]

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 2308, i32 noundef 50332160) #6
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 2308, i32 noundef 50332416) #6
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 2308, i32 noundef 50331648) #6
  br label %cleanup

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.124, i32 noundef %speed) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.then11, %if.then6, %if.then2, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3228_set_rmii_speed(ptr nocapture noundef readonly %bsp_priv, i32 noundef %speed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %2 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.119) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.199)
  switch i32 %speed, label %do.end12 [
    i32 10, label %if.then2
    i32 100, label %if.then6
  ]

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 2308, i32 noundef 8650752) #6
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 2308, i32 noundef 8650884) #6
  br label %cleanup

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.117, i32 noundef %speed) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.then6, %if.then2, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3228_integrated_phy_powerup(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %priv, i32 0, i32 22
  %0 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %grf, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 80, i32 noundef -2147450880) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3288_set_to_rgmii(ptr nocapture noundef readonly %bsp_priv, i32 noundef %tx_delay, i32 noundef %rx_delay) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %0 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.119) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 584, i32 noundef 1103102016) #6
  %4 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %grf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_delay)
  %tobool.not = icmp eq i32 %tx_delay, 0
  %cond = select i1 %tobool.not, i32 1073741824, i32 1073758208
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_delay)
  %tobool5.not = icmp eq i32 %rx_delay, 0
  %cond6 = select i1 %tobool5.not, i32 -2147483648, i32 -2147450880
  %shl = shl i32 %rx_delay, 7
  %or7 = or i32 %shl, %tx_delay
  %or8 = or i32 %or7, %cond
  %or10 = or i32 %or8, %cond6
  %or11 = or i32 %or10, 1073676288
  %call12 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 592, i32 noundef %or11) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3288_set_to_rmii(ptr nocapture noundef readonly %bsp_priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %0 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.119) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 584, i32 noundef 1103118592) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3288_set_rgmii_speed(ptr nocapture noundef readonly %bsp_priv, i32 noundef %speed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %2 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.119) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %speed, label %do.end17 [
    i32 10, label %if.then2
    i32 100, label %if.then6
    i32 1000, label %if.then11
  ]

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 584, i32 noundef 805314560) #6
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 584, i32 noundef 805318656) #6
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 584, i32 noundef 805306368) #6
  br label %cleanup

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.124, i32 noundef %speed) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.then11, %if.then6, %if.then2, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3288_set_rmii_speed(ptr nocapture noundef readonly %bsp_priv, i32 noundef %speed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %2 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.119) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.201)
  switch i32 %speed, label %do.end12 [
    i32 10, label %if.then2
    i32 100, label %if.then6
  ]

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 584, i32 noundef 201326592) #6
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 584, i32 noundef 201329664) #6
  br label %cleanup

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.117, i32 noundef %speed) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.then6, %if.then2, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3308_set_to_rmii(ptr nocapture noundef readonly %bsp_priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %0 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.119) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 1184, i32 noundef 1835024) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3308_set_rmii_speed(ptr nocapture noundef readonly %bsp_priv, i32 noundef %speed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %2 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.119) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.202)
  switch i32 %speed, label %do.end12 [
    i32 10, label %if.then2
    i32 100, label %if.then6
  ]

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 1184, i32 noundef 65536) #6
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 1184, i32 noundef 65537) #6
  br label %cleanup

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.117, i32 noundef %speed) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.then6, %if.then2, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3328_set_to_rgmii(ptr nocapture noundef readonly %bsp_priv, i32 noundef %tx_delay, i32 noundef %rx_delay) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %0 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.119) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 2308, i32 noundef 41091091) #6
  %4 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %grf, align 4
  %shl = shl i32 %rx_delay, 7
  %or6 = or i32 %shl, %tx_delay
  %or7 = or i32 %or6, 1073676288
  %call8 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 2304, i32 noundef %or7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3328_set_to_rmii(ptr nocapture noundef readonly %bsp_priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %0 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.119) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %integrated_phy = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 8
  %4 = ptrtoint ptr %integrated_phy to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %integrated_phy, align 2, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %cond = select i1 %tobool.not, i32 2308, i32 2312
  %call3 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %cond, i32 noundef 40895040) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3328_set_rgmii_speed(ptr nocapture noundef readonly %bsp_priv, i32 noundef %speed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %2 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.119) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %speed, label %do.end17 [
    i32 10, label %if.then2
    i32 100, label %if.then6
    i32 1000, label %if.then11
  ]

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 2308, i32 noundef 402657280) #6
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 2308, i32 noundef 402659328) #6
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 2308, i32 noundef 402653184) #6
  br label %cleanup

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.124, i32 noundef %speed) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.then11, %if.then6, %if.then2, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3328_set_rmii_speed(ptr nocapture noundef readonly %bsp_priv, i32 noundef %speed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %2 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.119) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %integrated_phy = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 8
  %4 = ptrtoint ptr %integrated_phy to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %integrated_phy, align 2, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %cond = select i1 %tobool.not, i32 2308, i32 2312
  %6 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.204)
  switch i32 %speed, label %do.end12 [
    i32 10, label %if.then2
    i32 100, label %if.then6
  ]

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %cond, i32 noundef 8650752) #6
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %cond, i32 noundef 8650884) #6
  br label %cleanup

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.117, i32 noundef %speed) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.then6, %if.then2, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3328_integrated_phy_powerup(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %priv, i32 0, i32 22
  %0 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %grf, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 2820, i32 noundef 33554944) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3366_set_to_rgmii(ptr nocapture noundef readonly %bsp_priv, i32 noundef %tx_delay, i32 noundef %rx_delay) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %0 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.157) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 1048, i32 noundef 239075840) #6
  %4 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %grf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_delay)
  %tobool.not = icmp eq i32 %tx_delay, 0
  %cond = select i1 %tobool.not, i32 8388608, i32 8388736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_delay)
  %tobool5.not = icmp eq i32 %rx_delay, 0
  %cond6 = select i1 %tobool5.not, i32 -2147483648, i32 -2147450880
  %shl = shl i32 %rx_delay, 8
  %or7 = or i32 %shl, %tx_delay
  %or8 = or i32 %or7, %cond
  %or10 = or i32 %or8, %cond6
  %or11 = or i32 %or10, 2139029504
  %call12 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 1052, i32 noundef %or11) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3366_set_to_rmii(ptr nocapture noundef readonly %bsp_priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %0 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.158) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 1048, i32 noundef 239077440) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3366_set_rgmii_speed(ptr nocapture noundef readonly %bsp_priv, i32 noundef %speed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %2 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.159) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.205)
  switch i32 %speed, label %do.end17 [
    i32 10, label %if.then2
    i32 100, label %if.then6
    i32 1000, label %if.then11
  ]

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 1048, i32 noundef 3145760) #6
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 1048, i32 noundef 3145776) #6
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 1048, i32 noundef 3145728) #6
  br label %cleanup

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.124, i32 noundef %speed) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.then11, %if.then6, %if.then2, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3366_set_rmii_speed(ptr nocapture noundef readonly %bsp_priv, i32 noundef %speed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %2 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.162) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.206)
  switch i32 %speed, label %do.end12 [
    i32 10, label %if.then2
    i32 100, label %if.then6
  ]

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 1048, i32 noundef 8912896) #6
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 1048, i32 noundef 8913032) #6
  br label %cleanup

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.117, i32 noundef %speed) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.then6, %if.then2, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3368_set_to_rgmii(ptr nocapture noundef readonly %bsp_priv, i32 noundef %tx_delay, i32 noundef %rx_delay) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %0 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.165) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 1084, i32 noundef 239075840) #6
  %4 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %grf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_delay)
  %tobool.not = icmp eq i32 %tx_delay, 0
  %cond = select i1 %tobool.not, i32 8388608, i32 8388736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_delay)
  %tobool5.not = icmp eq i32 %rx_delay, 0
  %cond6 = select i1 %tobool5.not, i32 -2147483648, i32 -2147450880
  %shl = shl i32 %rx_delay, 8
  %or7 = or i32 %shl, %tx_delay
  %or8 = or i32 %or7, %cond
  %or10 = or i32 %or8, %cond6
  %or11 = or i32 %or10, 2139029504
  %call12 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 1088, i32 noundef %or11) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3368_set_to_rmii(ptr nocapture noundef readonly %bsp_priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %0 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.166) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 1084, i32 noundef 239077440) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3368_set_rgmii_speed(ptr nocapture noundef readonly %bsp_priv, i32 noundef %speed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %2 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.167) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.207)
  switch i32 %speed, label %do.end17 [
    i32 10, label %if.then2
    i32 100, label %if.then6
    i32 1000, label %if.then11
  ]

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 1084, i32 noundef 3145760) #6
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 1084, i32 noundef 3145776) #6
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 1084, i32 noundef 3145728) #6
  br label %cleanup

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.124, i32 noundef %speed) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.then11, %if.then6, %if.then2, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3368_set_rmii_speed(ptr nocapture noundef readonly %bsp_priv, i32 noundef %speed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %2 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.170) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.208)
  switch i32 %speed, label %do.end12 [
    i32 10, label %if.then2
    i32 100, label %if.then6
  ]

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 1084, i32 noundef 8912896) #6
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 1084, i32 noundef 8913032) #6
  br label %cleanup

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.117, i32 noundef %speed) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.then6, %if.then2, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3399_set_to_rgmii(ptr nocapture noundef readonly %bsp_priv, i32 noundef %tx_delay, i32 noundef %rx_delay) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %0 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.173) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 49684, i32 noundef 239075840) #6
  %4 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %grf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_delay)
  %tobool.not = icmp eq i32 %tx_delay, 0
  %cond = select i1 %tobool.not, i32 8388608, i32 8388736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_delay)
  %tobool5.not = icmp eq i32 %rx_delay, 0
  %cond6 = select i1 %tobool5.not, i32 -2147483648, i32 -2147450880
  %shl = shl i32 %rx_delay, 8
  %or7 = or i32 %shl, %tx_delay
  %or8 = or i32 %or7, %cond
  %or10 = or i32 %or8, %cond6
  %or11 = or i32 %or10, 2139029504
  %call12 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 49688, i32 noundef %or11) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3399_set_to_rmii(ptr nocapture noundef readonly %bsp_priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %0 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.174) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 49684, i32 noundef 239077440) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3399_set_rgmii_speed(ptr nocapture noundef readonly %bsp_priv, i32 noundef %speed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %2 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.175) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.209)
  switch i32 %speed, label %do.end17 [
    i32 10, label %if.then2
    i32 100, label %if.then6
    i32 1000, label %if.then11
  ]

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 49684, i32 noundef 3145760) #6
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 49684, i32 noundef 3145776) #6
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 49684, i32 noundef 3145728) #6
  br label %cleanup

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.124, i32 noundef %speed) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.then11, %if.then6, %if.then2, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3399_set_rmii_speed(ptr nocapture noundef readonly %bsp_priv, i32 noundef %speed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %2 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.178) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.210)
  switch i32 %speed, label %do.end12 [
    i32 10, label %if.then2
    i32 100, label %if.then6
  ]

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 49684, i32 noundef 8912896) #6
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 49684, i32 noundef 8913032) #6
  br label %cleanup

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.117, i32 noundef %speed) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.then6, %if.then2, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3568_set_to_rgmii(ptr nocapture noundef readonly %bsp_priv, i32 noundef %tx_delay, i32 noundef %rx_delay) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %0 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.119) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %id = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  %cond = select i1 %cmp, i32 904, i32 896
  %cond4 = select i1 %cmp, i32 908, i32 900
  %shl = shl i32 %rx_delay, 8
  %or7 = or i32 %shl, %tx_delay
  %or8 = or i32 %or7, 2139029504
  %call9 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %cond, i32 noundef %or8) #6
  %6 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %grf, align 4
  %call11 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %cond4, i32 noundef 7536659) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3568_set_to_rmii(ptr nocapture noundef readonly %bsp_priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %0 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.183) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %id = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  %cond = select i1 %cmp, i32 908, i32 900
  %call3 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %cond, i32 noundef 7340096) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3568_set_gmac_speed(ptr nocapture noundef readonly %bsp_priv, i32 noundef %speed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %2 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.211)
  switch i32 %speed, label %do.end [
    i32 10, label %entry.sw.epilog_crit_edge
    i32 100, label %sw.bb2
    i32 1000, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.184, i32 noundef %speed) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge
  %rate.0 = phi i32 [ 125000000, %sw.bb3 ], [ 25000000, %sw.bb2 ], [ 2500000, %entry.sw.epilog_crit_edge ]
  %clk_mac_speed = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 15
  %3 = ptrtoint ptr %clk_mac_speed to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk_mac_speed, align 4
  %call = tail call i32 @clk_set_rate(ptr noundef %4, i32 noundef %rate.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %do.end6

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end6:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.185, i32 noundef %rate.0, i32 noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %sw.epilog.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rv1108_set_to_rmii(ptr nocapture noundef readonly %bsp_priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %0 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.189) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 2304, i32 noundef 7340096) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rv1108_set_rmii_speed(ptr nocapture noundef readonly %bsp_priv, i32 noundef %speed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsp_priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %grf = getelementptr inbounds %struct.rk_priv_data, ptr %bsp_priv, i32 0, i32 22
  %2 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.190) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.212)
  switch i32 %speed, label %do.end12 [
    i32 10, label %if.then2
    i32 100, label %if.then6
  ]

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 2304, i32 noundef 8650752) #6
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 2304, i32 noundef 8650884) #6
  br label %cleanup

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.117, i32 noundef %speed) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.then6, %if.then2, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_gmac_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %plat.i = getelementptr i8, ptr %1, i32 17408
  %2 = ptrtoint ptr %plat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat.i, align 128
  %bsp_priv.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %bsp_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bsp_priv.i, align 4
  %call1 = tail call i32 @stmmac_suspend(ptr noundef %dev) #6
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %device_may_wakeup.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %7 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %8, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.then_crit_edge, label %device_may_wakeup.exit.if.end_crit_edge

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit.if.then_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %device_may_wakeup.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call fastcc void @rk_gmac_powerdown(ptr noundef %5)
  %suspended = getelementptr inbounds %struct.rk_priv_data, ptr %5, i32 0, i32 4
  %9 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %suspended, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_gmac_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %plat.i = getelementptr i8, ptr %1, i32 17408
  %2 = ptrtoint ptr %plat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat.i, align 128
  %bsp_priv.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %bsp_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bsp_priv.i, align 4
  %suspended = getelementptr inbounds %struct.rk_priv_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %suspended, align 4, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call fastcc i32 @rk_gmac_powerup(ptr noundef %5)
  %8 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %suspended, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call i32 @stmmac_resume(ptr noundef %dev) #6
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 204)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 204)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !31, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !46, !47, !48, !49, !51, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !83, !85, !86, !87, !89, !90, !91, !92, !93, !95, !97, !98, !99, !100, !102, !104, !105, !107, !109, !110, !112, !114, !115, !117, !119, !120, !122, !124, !125, !127, !129, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !177, !179, !180, !181, !183, !185, !187, !188, !189, !190, !192, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !211, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !252, !253, !254, !256, !257, !259, !261, !262, !263, !265, !266, !267, !269, !270, !271, !273, !274, !276, !277, !278, !280, !281, !283, !285, !286, !287, !289, !290, !291, !293, !294, !296, !298, !299, !300, !302, !303, !304, !306, !307, !308, !310, !311, !313, !314, !315, !317, !318, !320, !322, !323, !324, !326, !327, !328, !330, !331, !332, !334, !335, !337, !338, !339, !341, !342, !344, !346, !347, !348, !350, !351, !352, !354, !355, !356, !358, !359, !361, !362, !363, !365, !366, !368, !370, !371, !372, !374, !375, !376, !378, !379, !380, !382, !383, !385, !386, !387, !389, !390, !392, !394, !395, !396, !398, !399, !400, !402, !403, !404, !405, !407, !408, !409, !411, !413, !414, !415, !417, !418, !419, !421, !422}
!llvm.module.flags = !{!424, !425, !426, !427, !428, !429, !430, !431}
!llvm.ident = !{!432}

!0 = !{ptr @__initcall__kmod_dwmac_rk__384_1697_rk_gmac_dwmac_driver_init6, !1, !"__initcall__kmod_dwmac_rk__384_1697_rk_gmac_dwmac_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1697, i32 1}
!2 = !{ptr @__exitcall_rk_gmac_dwmac_driver_exit, !1, !"__exitcall_rk_gmac_dwmac_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author385, !4, !"__UNIQUE_ID_author385", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1699, i32 1}
!5 = !{ptr @__UNIQUE_ID_description386, !6, !"__UNIQUE_ID_description386", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1700, i32 1}
!7 = !{ptr @__UNIQUE_ID_file387, !8, !"__UNIQUE_ID_file387", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1701, i32 1}
!9 = !{ptr @__UNIQUE_ID_license388, !8, !"__UNIQUE_ID_license388", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1692, i32 21}
!12 = !{ptr @rk_gmac_dwmac_driver, !13, !"rk_gmac_dwmac_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1688, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1584, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rk_gmac_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @rk_gmac_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1571, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rk_fix_speed._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @rk_fix_speed._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1400, i32 57}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1403, i32 4}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rk_gmac_setup._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @rk_gmac_setup._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1406, i32 3}
!36 = !{ptr @rk_gmac_setup._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @rk_gmac_setup._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1410, i32 46}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1412, i32 3}
!42 = !{ptr @rk_gmac_setup._entry.15, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @rk_gmac_setup._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1415, i32 3}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @rk_gmac_setup._entry.18, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @rk_gmac_setup._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1417, i32 24}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1423, i32 43}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1426, i32 3}
!55 = !{ptr @rk_gmac_setup._entry.24, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @rk_gmac_setup._entry_ptr.26, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1427, i32 3}
!59 = !{ptr @rk_gmac_setup._entry.27, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @rk_gmac_setup._entry_ptr.29, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1430, i32 3}
!63 = !{ptr @rk_gmac_setup._entry.30, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @rk_gmac_setup._entry_ptr.32, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1434, i32 43}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1437, i32 3}
!69 = !{ptr @rk_gmac_setup._entry.34, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @rk_gmac_setup._entry_ptr.36, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1438, i32 3}
!73 = !{ptr @rk_gmac_setup._entry.37, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @rk_gmac_setup._entry_ptr.39, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1441, i32 3}
!77 = !{ptr @rk_gmac_setup._entry.40, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @rk_gmac_setup._entry_ptr.42, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1446, i32 8}
!81 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1450, i32 10}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1454, i32 5}
!85 = !{ptr @rk_gmac_setup._entry.45, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @rk_gmac_setup._entry_ptr.47, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.49, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1459, i32 2}
!89 = !{ptr @rk_gmac_setup._entry.48, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @rk_gmac_setup._entry_ptr.50, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.51, !88, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.52, !88, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.53, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1208, i32 43}
!95 = !{ptr @.str.54, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1210, i32 3}
!97 = !{ptr @.str.55, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @rk_gmac_clk_init._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @rk_gmac_clk_init._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.56, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1213, i32 43}
!102 = !{ptr @rk_gmac_clk_init._entry.57, !103, !"_entry", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1215, i32 3}
!104 = !{ptr @rk_gmac_clk_init._entry_ptr.58, !103, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.59, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1218, i32 41}
!107 = !{ptr @rk_gmac_clk_init._entry.60, !108, !"_entry", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1220, i32 3}
!109 = !{ptr @rk_gmac_clk_init._entry_ptr.61, !108, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.62, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1223, i32 41}
!112 = !{ptr @rk_gmac_clk_init._entry.63, !113, !"_entry", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1225, i32 3}
!114 = !{ptr @rk_gmac_clk_init._entry_ptr.64, !113, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.65, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1228, i32 40}
!117 = !{ptr @rk_gmac_clk_init._entry.66, !118, !"_entry", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1230, i32 3}
!119 = !{ptr @rk_gmac_clk_init._entry_ptr.67, !118, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.68, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1234, i32 45}
!122 = !{ptr @rk_gmac_clk_init._entry.69, !123, !"_entry", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1236, i32 4}
!124 = !{ptr @rk_gmac_clk_init._entry_ptr.70, !123, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.71, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1241, i32 23}
!127 = !{ptr @rk_gmac_clk_init._entry.72, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1243, i32 5}
!129 = !{ptr @rk_gmac_clk_init._entry_ptr.73, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.74, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1248, i32 46}
!132 = !{ptr @rk_gmac_clk_init._entry.75, !133, !"_entry", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1250, i32 3}
!134 = !{ptr @rk_gmac_clk_init._entry_ptr.76, !133, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.78, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1253, i32 3}
!137 = !{ptr @rk_gmac_clk_init._entry.77, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @rk_gmac_clk_init._entry_ptr.79, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.81, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1263, i32 4}
!141 = !{ptr @rk_gmac_clk_init._entry.80, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @rk_gmac_clk_init._entry_ptr.82, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.83, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1504, i32 3}
!145 = !{ptr @.str.84, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @rk_gmac_powerup._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @rk_gmac_powerup._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.86, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1509, i32 3}
!150 = !{ptr @rk_gmac_powerup._entry.85, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @rk_gmac_powerup._entry_ptr.87, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.89, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1513, i32 3}
!154 = !{ptr @rk_gmac_powerup._entry.88, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @rk_gmac_powerup._entry_ptr.90, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.92, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1517, i32 3}
!158 = !{ptr @rk_gmac_powerup._entry.91, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @rk_gmac_powerup._entry_ptr.93, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.95, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1521, i32 3}
!162 = !{ptr @rk_gmac_powerup._entry.94, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @rk_gmac_powerup._entry_ptr.96, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.98, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1525, i32 3}
!166 = !{ptr @rk_gmac_powerup._entry.97, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @rk_gmac_powerup._entry_ptr.99, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.100, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1482, i32 3}
!170 = !{ptr @rk_gmac_check_ops._entry, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @rk_gmac_check_ops._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.101, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1356, i32 4}
!174 = !{ptr @.str.102, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @phy_power_on._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @phy_power_on._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.104, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1360, i32 4}
!179 = !{ptr @phy_power_on._entry.103, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @phy_power_on._entry_ptr.105, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @rk_gmac_dwmac_match, !182, !"rk_gmac_dwmac_match", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1672, i32 34}
!183 = !{ptr @px30_ops, !184, !"px30_ops", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 134, i32 33}
!185 = !{ptr @.str.106, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 94, i32 3}
!187 = !{ptr @.str.107, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @px30_set_to_rmii._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @px30_set_to_rmii._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.108, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 108, i32 3}
!192 = !{ptr @.str.109, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @px30_set_rmii_speed._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @px30_set_rmii_speed._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.111, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 118, i32 4}
!197 = !{ptr @px30_set_rmii_speed._entry.110, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @px30_set_rmii_speed._entry_ptr.112, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.114, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 126, i32 4}
!201 = !{ptr @px30_set_rmii_speed._entry.113, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @px30_set_rmii_speed._entry_ptr.115, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.117, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 130, i32 3}
!205 = !{ptr @px30_set_rmii_speed._entry.116, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @px30_set_rmii_speed._entry_ptr.118, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @rk3128_ops, !208, !"rk3128_ops", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 243, i32 33}
!209 = !{ptr @.str.119, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 173, i32 3}
!211 = !{ptr @.str.120, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @rk3128_set_to_rgmii._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @rk3128_set_to_rgmii._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.121, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 191, i32 3}
!216 = !{ptr @rk3128_set_to_rmii._entry, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @rk3128_set_to_rmii._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.122, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 204, i32 3}
!220 = !{ptr @rk3128_set_rgmii_speed._entry, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @rk3128_set_rgmii_speed._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.124, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 218, i32 3}
!224 = !{ptr @rk3128_set_rgmii_speed._entry.123, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @rk3128_set_rgmii_speed._entry_ptr.125, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.126, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 226, i32 3}
!228 = !{ptr @rk3128_set_rmii_speed._entry, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @rk3128_set_rmii_speed._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @rk3128_set_rmii_speed._entry.127, !231, !"_entry", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 239, i32 3}
!232 = !{ptr @rk3128_set_rmii_speed._entry_ptr.128, !231, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @rk3228_ops, !234, !"rk3228_ops", i1 false, i1 false}
!234 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 369, i32 33}
!235 = !{ptr @.str.129, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 289, i32 3}
!237 = !{ptr @rk3228_set_to_rgmii._entry, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @rk3228_set_to_rgmii._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.130, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 308, i32 3}
!241 = !{ptr @rk3228_set_to_rmii._entry, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @rk3228_set_to_rmii._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.131, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 325, i32 3}
!245 = !{ptr @rk3228_set_rgmii_speed._entry, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @rk3228_set_rgmii_speed._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @rk3228_set_rgmii_speed._entry.132, !248, !"_entry", i1 false, i1 false}
!248 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 339, i32 3}
!249 = !{ptr @rk3228_set_rgmii_speed._entry_ptr.133, !248, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.134, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 347, i32 3}
!252 = !{ptr @rk3228_set_rmii_speed._entry, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @rk3228_set_rmii_speed._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @rk3228_set_rmii_speed._entry.135, !255, !"_entry", i1 false, i1 false}
!255 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 360, i32 3}
!256 = !{ptr @rk3228_set_rmii_speed._entry_ptr.136, !255, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @rk3288_ops, !258, !"rk3288_ops", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 481, i32 33}
!259 = !{ptr @.str.137, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 411, i32 3}
!261 = !{ptr @rk3288_set_to_rgmii._entry, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @rk3288_set_to_rgmii._entry_ptr, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.138, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 429, i32 3}
!265 = !{ptr @rk3288_set_to_rmii._entry, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @rk3288_set_to_rmii._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.139, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 442, i32 3}
!269 = !{ptr @rk3288_set_rgmii_speed._entry, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @rk3288_set_rgmii_speed._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @rk3288_set_rgmii_speed._entry.140, !272, !"_entry", i1 false, i1 false}
!272 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 456, i32 3}
!273 = !{ptr @rk3288_set_rgmii_speed._entry_ptr.141, !272, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.142, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 464, i32 3}
!276 = !{ptr @rk3288_set_rmii_speed._entry, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @rk3288_set_rmii_speed._entry_ptr, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @rk3288_set_rmii_speed._entry.143, !279, !"_entry", i1 false, i1 false}
!279 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 477, i32 3}
!280 = !{ptr @rk3288_set_rmii_speed._entry_ptr.144, !279, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @rk3308_ops, !282, !"rk3308_ops", i1 false, i1 false}
!282 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 531, i32 33}
!283 = !{ptr @.str.145, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 503, i32 3}
!285 = !{ptr @rk3308_set_to_rmii._entry, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @rk3308_set_to_rmii._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.146, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 516, i32 3}
!289 = !{ptr @rk3308_set_rmii_speed._entry, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @rk3308_set_rmii_speed._entry_ptr, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @rk3308_set_rmii_speed._entry.147, !292, !"_entry", i1 false, i1 false}
!292 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 527, i32 3}
!293 = !{ptr @rk3308_set_rmii_speed._entry_ptr.148, !292, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @rk3328_ops, !295, !"rk3328_ops", i1 false, i1 false}
!295 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 661, i32 33}
!296 = !{ptr @.str.149, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 575, i32 3}
!298 = !{ptr @rk3328_set_to_rgmii._entry, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @rk3328_set_to_rgmii._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.150, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 596, i32 3}
!302 = !{ptr @rk3328_set_to_rmii._entry, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @rk3328_set_to_rmii._entry_ptr, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.151, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 613, i32 3}
!306 = !{ptr @rk3328_set_rgmii_speed._entry, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @rk3328_set_rgmii_speed._entry_ptr, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @rk3328_set_rgmii_speed._entry.152, !309, !"_entry", i1 false, i1 false}
!309 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 627, i32 3}
!310 = !{ptr @rk3328_set_rgmii_speed._entry_ptr.153, !309, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.154, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 636, i32 3}
!313 = !{ptr @rk3328_set_rmii_speed._entry, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @rk3328_set_rmii_speed._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @rk3328_set_rmii_speed._entry.155, !316, !"_entry", i1 false, i1 false}
!316 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 652, i32 3}
!317 = !{ptr @rk3328_set_rmii_speed._entry_ptr.156, !316, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @rk3366_ops, !319, !"rk3366_ops", i1 false, i1 false}
!319 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 773, i32 33}
!320 = !{ptr @.str.157, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 703, i32 3}
!322 = !{ptr @rk3366_set_to_rgmii._entry, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @rk3366_set_to_rgmii._entry_ptr, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.158, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 721, i32 3}
!326 = !{ptr @rk3366_set_to_rmii._entry, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @rk3366_set_to_rmii._entry_ptr, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.159, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 734, i32 3}
!330 = !{ptr @rk3366_set_rgmii_speed._entry, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @rk3366_set_rgmii_speed._entry_ptr, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @rk3366_set_rgmii_speed._entry.160, !333, !"_entry", i1 false, i1 false}
!333 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 748, i32 3}
!334 = !{ptr @rk3366_set_rgmii_speed._entry_ptr.161, !333, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.162, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 756, i32 3}
!337 = !{ptr @rk3366_set_rmii_speed._entry, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @rk3366_set_rmii_speed._entry_ptr, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @rk3366_set_rmii_speed._entry.163, !340, !"_entry", i1 false, i1 false}
!340 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 769, i32 3}
!341 = !{ptr @rk3366_set_rmii_speed._entry_ptr.164, !340, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @rk3368_ops, !343, !"rk3368_ops", i1 false, i1 false}
!343 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 884, i32 33}
!344 = !{ptr @.str.165, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 814, i32 3}
!346 = !{ptr @rk3368_set_to_rgmii._entry, !345, !"_entry", i1 false, i1 false}
!347 = !{ptr @rk3368_set_to_rgmii._entry_ptr, !345, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.166, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 832, i32 3}
!350 = !{ptr @rk3368_set_to_rmii._entry, !349, !"_entry", i1 false, i1 false}
!351 = !{ptr @rk3368_set_to_rmii._entry_ptr, !349, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @.str.167, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 845, i32 3}
!354 = !{ptr @rk3368_set_rgmii_speed._entry, !353, !"_entry", i1 false, i1 false}
!355 = !{ptr @rk3368_set_rgmii_speed._entry_ptr, !353, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @rk3368_set_rgmii_speed._entry.168, !357, !"_entry", i1 false, i1 false}
!357 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 859, i32 3}
!358 = !{ptr @rk3368_set_rgmii_speed._entry_ptr.169, !357, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.170, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 867, i32 3}
!361 = !{ptr @rk3368_set_rmii_speed._entry, !360, !"_entry", i1 false, i1 false}
!362 = !{ptr @rk3368_set_rmii_speed._entry_ptr, !360, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @rk3368_set_rmii_speed._entry.171, !364, !"_entry", i1 false, i1 false}
!364 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 880, i32 3}
!365 = !{ptr @rk3368_set_rmii_speed._entry_ptr.172, !364, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @rk3399_ops, !367, !"rk3399_ops", i1 false, i1 false}
!367 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 995, i32 33}
!368 = !{ptr @.str.173, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 925, i32 3}
!370 = !{ptr @rk3399_set_to_rgmii._entry, !369, !"_entry", i1 false, i1 false}
!371 = !{ptr @rk3399_set_to_rgmii._entry_ptr, !369, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @.str.174, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 943, i32 3}
!374 = !{ptr @rk3399_set_to_rmii._entry, !373, !"_entry", i1 false, i1 false}
!375 = !{ptr @rk3399_set_to_rmii._entry_ptr, !373, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.175, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 956, i32 3}
!378 = !{ptr @rk3399_set_rgmii_speed._entry, !377, !"_entry", i1 false, i1 false}
!379 = !{ptr @rk3399_set_rgmii_speed._entry_ptr, !377, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @rk3399_set_rgmii_speed._entry.176, !381, !"_entry", i1 false, i1 false}
!381 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 970, i32 3}
!382 = !{ptr @rk3399_set_rgmii_speed._entry_ptr.177, !381, !"_entry_ptr", i1 false, i1 false}
!383 = !{ptr @.str.178, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 978, i32 3}
!385 = !{ptr @rk3399_set_rmii_speed._entry, !384, !"_entry", i1 false, i1 false}
!386 = !{ptr @rk3399_set_rmii_speed._entry_ptr, !384, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @rk3399_set_rmii_speed._entry.179, !388, !"_entry", i1 false, i1 false}
!388 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 991, i32 3}
!389 = !{ptr @rk3399_set_rmii_speed._entry_ptr.180, !388, !"_entry_ptr", i1 false, i1 false}
!390 = !{ptr @rk3568_ops, !391, !"rk3568_ops", i1 false, i1 false}
!391 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1091, i32 33}
!392 = !{ptr @.str.182, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1030, i32 3}
!394 = !{ptr @rk3568_set_to_rgmii._entry, !393, !"_entry", i1 false, i1 false}
!395 = !{ptr @rk3568_set_to_rgmii._entry_ptr, !393, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @.str.183, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1055, i32 3}
!398 = !{ptr @rk3568_set_to_rmii._entry, !397, !"_entry", i1 false, i1 false}
!399 = !{ptr @rk3568_set_to_rmii._entry_ptr, !397, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @.str.184, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1081, i32 3}
!402 = !{ptr @.str.185, !401, !"<string literal>", i1 false, i1 false}
!403 = !{ptr @rk3568_set_gmac_speed._entry, !401, !"_entry", i1 false, i1 false}
!404 = !{ptr @rk3568_set_gmac_speed._entry_ptr, !401, !"_entry_ptr", i1 false, i1 false}
!405 = !{ptr @.str.187, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1087, i32 3}
!407 = !{ptr @rk3568_set_gmac_speed._entry.186, !406, !"_entry", i1 false, i1 false}
!408 = !{ptr @rk3568_set_gmac_speed._entry_ptr.188, !406, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @rv1108_ops, !410, !"rv1108_ops", i1 false, i1 false}
!410 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1151, i32 33}
!411 = !{ptr @.str.189, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1121, i32 3}
!413 = !{ptr @rv1108_set_to_rmii._entry, !412, !"_entry", i1 false, i1 false}
!414 = !{ptr @rv1108_set_to_rmii._entry_ptr, !412, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @.str.190, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1134, i32 3}
!417 = !{ptr @rv1108_set_rmii_speed._entry, !416, !"_entry", i1 false, i1 false}
!418 = !{ptr @rv1108_set_rmii_speed._entry_ptr, !416, !"_entry_ptr", i1 false, i1 false}
!419 = !{ptr @rv1108_set_rmii_speed._entry.191, !420, !"_entry", i1 false, i1 false}
!420 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1147, i32 3}
!421 = !{ptr @rv1108_set_rmii_speed._entry_ptr.192, !420, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @rk_gmac_pm_ops, !423, !"rk_gmac_pm_ops", i1 false, i1 false}
!423 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c", i32 1670, i32 8}
!424 = !{i32 1, !"wchar_size", i32 2}
!425 = !{i32 1, !"min_enum_size", i32 4}
!426 = !{i32 8, !"branch-target-enforcement", i32 0}
!427 = !{i32 8, !"sign-return-address", i32 0}
!428 = !{i32 8, !"sign-return-address-all", i32 0}
!429 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!430 = !{i32 7, !"uwtable", i32 1}
!431 = !{i32 7, !"frame-pointer", i32 2}
!432 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!433 = !{!"auto-init"}
!434 = !{i8 0, i8 2}
