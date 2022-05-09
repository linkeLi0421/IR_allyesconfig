; ModuleID = '/llk/IR_all_yes/drivers/phy/rockchip/phy-rockchip-usb.c_pt.bc'
source_filename = "../drivers/phy/rockchip/phy-rockchip-usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rockchip_usb_phy_pdata = type { ptr, ptr, i32 }
%struct.rockchip_usb_phys = type { i32, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rockchip_usb_phy_base = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.rockchip_usb_phy = type { ptr, ptr, i32, ptr, ptr, %struct.clk_hw, ptr, i8, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@__initcall__kmod_phy_rockchip_usb__290_519_rockchip_usb_driver_init6 = internal global ptr @rockchip_usb_driver_init, section ".initcall6.init", align 4
@rockchip_usb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rockchip_usb_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_usb_phy_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rockchip_usb_driver_exit = internal global ptr @rockchip_usb_driver_exit, section ".exitcall.exit", align 4
@__initcall__kmod_phy_rockchip_usb__292_569_rockchip_init_usb_uartearly = internal global ptr @rockchip_init_usb_uart, section ".initcallearly.init", align 4
@__setup_str_rockchip_usb_uart = internal constant [18 x i8] c"rockchip.usb_uart\00", section ".init.rodata", align 1
@__setup_rockchip_usb_uart = internal global %struct.obs_kernel_param { ptr @__setup_str_rockchip_usb_uart, ptr @rockchip_usb_uart, i32 1 }, section ".init.setup", align 4
@__UNIQUE_ID_author293 = internal constant [55 x i8] c"phy_rockchip_usb.author=Yunzhi Li <lyz@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [57 x i8] c"phy_rockchip_usb.description=Rockchip USB 2.0 PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [60 x i8] c"phy_rockchip_usb.file=drivers/phy/rockchip/phy-rockchip-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [32 x i8] c"phy_rockchip_usb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rockchip-usb-phy\00", [47 x i8] zeroinitializer }, align 32
@rockchip_usb_phy_dt_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3066a-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3066a_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3188-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3188_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3288_pdata }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@rockchip_usb_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 471, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"missing phy data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rockchip_usb_phy_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/phy/rockchip/phy-rockchip-usb.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rockchip_usb_phy_probe._entry_ptr = internal global ptr @rockchip_usb_phy_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rockchip,grf\00", [19 x i8] zeroinitializer }, align 32
@rockchip_usb_phy_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 486, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Missing rockchip,grf property\0A\00", [33 x i8] zeroinitializer }, align 32
@rockchip_usb_phy_probe._entry_ptr.9 = internal global ptr @rockchip_usb_phy_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@rockchip_usb_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 220, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"missing reg property in node %pOFn\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rockchip_usb_phy_init\00", [42 x i8] zeroinitializer }, align 32
@rockchip_usb_phy_init._entry_ptr = internal global ptr @rockchip_usb_phy_init._entry, section ".printk_index", align 4
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"phy-reset\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"phyclk\00", [25 x i8] zeroinitializer }, align 32
@rockchip_usb_phy_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.12, ptr @.str.3, i32 245, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"phy data not found\0A\00", [44 x i8] zeroinitializer }, align 32
@rockchip_usb_phy_init._entry_ptr.17 = internal global ptr @rockchip_usb_phy_init._entry.15, section ".printk_index", align 4
@enable_usb_uart = internal global { i1, [31 x i8] } zeroinitializer, align 32
@rockchip_usb_phy_init.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.12, ptr @.str.3, ptr @.str.19, i8 0, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"phy_rockchip_usb\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"phy%d used as uart output\0A\00", [37 x i8] zeroinitializer }, align 32
@rockchip_usb_phy480m_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @rockchip_usb_phy480m_enable, ptr @rockchip_usb_phy480m_disable, ptr @rockchip_usb_phy480m_is_enabled, ptr null, ptr null, ptr null, ptr @rockchip_usb_phy480m_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr null, ptr null, ptr @rockchip_usb_phy_power_on, ptr @rockchip_usb_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_usb_phy_reset, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@rockchip_usb_phy_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.12, ptr @.str.3, i32 286, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to create PHY\0A\00", [42 x i8] zeroinitializer }, align 32
@rockchip_usb_phy_init._entry_ptr.22 = internal global ptr @rockchip_usb_phy_init._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rk3066a_pdata = internal constant { %struct.rockchip_usb_phy_pdata, [20 x i8] } { %struct.rockchip_usb_phy_pdata { ptr @.compoundliteral, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@rk3188_pdata = internal constant { %struct.rockchip_usb_phy_pdata, [20 x i8] } { %struct.rockchip_usb_phy_pdata { ptr @.compoundliteral.26, ptr @rk3188_init_usb_uart, i32 0 }, [20 x i8] zeroinitializer }, align 32
@rk3288_pdata = internal constant { %struct.rockchip_usb_phy_pdata, [20 x i8] } { %struct.rockchip_usb_phy_pdata { ptr @.compoundliteral.28, ptr @rk3288_init_usb_uart, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sclk_otgphy0_480m\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sclk_otgphy1_480m\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [3 x %struct.rockchip_usb_phys], [40 x i8] } { [3 x %struct.rockchip_usb_phys] [%struct.rockchip_usb_phys { i32 380, ptr @.str.24 }, %struct.rockchip_usb_phys { i32 392, ptr @.str.25 }, %struct.rockchip_usb_phys zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { [3 x %struct.rockchip_usb_phys], [40 x i8] } { [3 x %struct.rockchip_usb_phys] [%struct.rockchip_usb_phys { i32 268, ptr @.str.24 }, %struct.rockchip_usb_phys { i32 284, ptr @.str.25 }, %struct.rockchip_usb_phys zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sclk_otgphy2_480m\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { [4 x %struct.rockchip_usb_phys], [32 x i8] } { [4 x %struct.rockchip_usb_phys] [%struct.rockchip_usb_phys { i32 800, ptr @.str.24 }, %struct.rockchip_usb_phys { i32 820, ptr @.str.25 }, %struct.rockchip_usb_phys { i32 840, ptr @.str.27 }, %struct.rockchip_usb_phys zeroinitializer], [32 x i8] zeroinitializer }, align 32
@rockchip_init_usb_uart._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: failed to find usbphy node\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rockchip_init_usb_uart\00", [41 x i8] zeroinitializer }, align 32
@rockchip_init_usb_uart._entry_ptr = internal global ptr @rockchip_init_usb_uart._entry, section ".printk_index", align 4
@rockchip_init_usb_uart.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 0, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: using settings for %s\0A\00", [37 x i8] zeroinitializer }, align 32
@rockchip_init_usb_uart._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.30, ptr @.str.3, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: usb-uart not available on %s\0A\00", [60 x i8] zeroinitializer }, align 32
@rockchip_init_usb_uart._entry_ptr.34 = internal global ptr @rockchip_init_usb_uart._entry.32, section ".printk_index", align 4
@rockchip_init_usb_uart._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.30, ptr @.str.3, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: Missing rockchip,grf property, %lu\0A\00", [54 x i8] zeroinitializer }, align 32
@rockchip_init_usb_uart._entry_ptr.37 = internal global ptr @rockchip_init_usb_uart._entry.35, section ".printk_index", align 4
@rockchip_init_usb_uart._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.30, ptr @.str.3, i32 562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: could not init usb_uart, %d\0A\00", [61 x i8] zeroinitializer }, align 32
@rockchip_init_usb_uart._entry_ptr.40 = internal global ptr @rockchip_init_usb_uart._entry.38, section ".printk_index", align 4
@___asan_gen_.41 = private unnamed_addr constant [20 x i8] c"rockchip_usb_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 511, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 514, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [24 x i8] c"rockchip_usb_phy_dt_ids\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 502, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 471, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 484, i32 21 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 486, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 218, i32 34 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 219, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 224, i32 46 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 230, i32 42 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 245, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [16 x i8] c"enable_usb_uart\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 250, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [25 x i8] c"rockchip_usb_phy480m_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 132, i32 29 }
@___asan_gen_.111 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 182, i32 29 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 286, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 291, i32 64 }
@___asan_gen_.123 = private unnamed_addr constant [14 x i8] c"rk3066a_pdata\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 316, i32 44 }
@___asan_gen_.126 = private unnamed_addr constant [13 x i8] c"rk3188_pdata\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 395, i32 44 }
@___asan_gen_.129 = private unnamed_addr constant [13 x i8] c"rk3288_pdata\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 445, i32 44 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 318, i32 31 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 319, i32 31 }
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 449, i32 31 }
@___asan_gen_.143 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 536, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 540, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 544, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 555, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private constant [43 x i8] c"../drivers/phy/rockchip/phy-rockchip-usb.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 562, i32 3 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_rockchip_usb_driver_exit, ptr @__initcall__kmod_phy_rockchip_usb__290_519_rockchip_usb_driver_init6, ptr @__initcall__kmod_phy_rockchip_usb__292_569_rockchip_init_usb_uartearly, ptr @__setup_rockchip_usb_uart, ptr @rockchip_init_usb_uart._entry, ptr @rockchip_init_usb_uart._entry.32, ptr @rockchip_init_usb_uart._entry.35, ptr @rockchip_init_usb_uart._entry.38, ptr @rockchip_init_usb_uart._entry_ptr, ptr @rockchip_init_usb_uart._entry_ptr.34, ptr @rockchip_init_usb_uart._entry_ptr.37, ptr @rockchip_init_usb_uart._entry_ptr.40, ptr @rockchip_usb_driver_exit, ptr @rockchip_usb_phy_init._entry, ptr @rockchip_usb_phy_init._entry.15, ptr @rockchip_usb_phy_init._entry.20, ptr @rockchip_usb_phy_init._entry_ptr, ptr @rockchip_usb_phy_init._entry_ptr.17, ptr @rockchip_usb_phy_init._entry_ptr.22, ptr @rockchip_usb_phy_probe._entry, ptr @rockchip_usb_phy_probe._entry.7, ptr @rockchip_usb_phy_probe._entry_ptr, ptr @rockchip_usb_phy_probe._entry_ptr.9, ptr @rockchip_usb_driver, ptr @.str, ptr @rockchip_usb_phy_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @enable_usb_uart, ptr @.str.18, ptr @.str.19, ptr @rockchip_usb_phy480m_ops, ptr @ops, ptr @.str.21, ptr @.str.23, ptr @rk3066a_pdata, ptr @rk3188_pdata, ptr @rk3288_pdata, ptr @.str.24, ptr @.str.25, ptr @.compoundliteral, ptr @.compoundliteral.26, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb_phy_dt_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb_phy_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb_phy_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_usb_uart to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb_phy480m_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_usb_phy_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3066a_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3188_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_init_usb_uart._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_init_usb_uart._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_init_usb_uart._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_init_usb_uart._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_usb_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @rockchip_usb_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_init_usb_uart() #0 section ".init.text" align 64 {
entry:
  %match = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match) #7
  %0 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %match, align 4, !annotation !107
  %.b = load i1, ptr @enable_usb_uart, align 4
  br i1 %.b, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @rockchip_usb_phy_dt_ids, ptr noundef nonnull %match) #7
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %do.end, label %do.body5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #10
  br label %cleanup

do.body5:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_init_usb_uart.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_init_usb_uart, %if.then11)) #7
          to label %do.end14 [label %if.then11], !srcloc !108

if.then11:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %match, align 4
  %compatible = getelementptr inbounds %struct.of_device_id, ptr %2, i32 0, i32 2
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rockchip_init_usb_uart.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, ptr noundef %compatible) #7
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body5
  %3 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %match, align 4
  %data15 = getelementptr inbounds %struct.of_device_id, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %data15 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data15, align 4
  %init_usb_uart = getelementptr inbounds %struct.rockchip_usb_phy_pdata, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %init_usb_uart to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_usb_uart, align 4
  %tobool16.not = icmp eq ptr %8, null
  br i1 %tobool16.not, label %do.end20, label %if.end25

do.end20:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  %compatible22 = getelementptr inbounds %struct.of_device_id, ptr %4, i32 0, i32 2
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.30, ptr noundef %compatible22) #10
  br label %cleanup

if.end25:                                         ; preds = %do.end14
  %parent = getelementptr inbounds %struct.device_node, ptr %call, i32 0, i32 6
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 4
  %tobool27.not = icmp eq ptr %10, null
  br i1 %tobool27.not, label %if.end25.if.then33_crit_edge, label %if.end31

if.end25.if.then33_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33

if.end31:                                         ; preds = %if.end25
  %call30 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %10) #7
  %cmp.i = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end31.if.then33_crit_edge, label %if.end31.if.end35_crit_edge

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.end31.if.then33_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33

if.then33:                                        ; preds = %if.end31.if.then33_crit_edge, %if.end25.if.then33_crit_edge
  %call34 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef nonnull %call, ptr noundef nonnull @.str.6) #7
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end31.if.end35_crit_edge
  %grf.1 = phi ptr [ %call34, %if.then33 ], [ %call30, %if.end31.if.end35_crit_edge ]
  %cmp.i71 = icmp ugt ptr %grf.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %do.end40, label %if.end45

do.end40:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %grf.1 to i32
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.30, i32 noundef %11) #10
  br label %cleanup

if.end45:                                         ; preds = %if.end35
  %12 = ptrtoint ptr %init_usb_uart to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_usb_uart, align 4
  %call47 = call i32 %13(ptr noundef %grf.1, ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end45.cleanup_crit_edge, label %do.end52

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.30, i32 noundef %call47) #10
  store i1 false, ptr @enable_usb_uart, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %if.end45.cleanup_crit_edge, %do.end40, %do.end20, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %do.end40 ], [ %call47, %do.end52 ], [ -524, %do.end20 ], [ -524, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match) #7
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @rockchip_usb_uart(ptr nocapture noundef readnone %buf) #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @enable_usb_uart, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_usb_phy_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %of_match_table = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %of_match_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_match_table, align 4
  %call2 = tail call ptr @of_match_device(ptr noundef %3, ptr noundef %dev1) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call2, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %lor.lhs.false.do.end_crit_edge, label %if.end6

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %pdata = getelementptr inbounds %struct.rockchip_usb_phy_base, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %pdata, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1, ptr %call.i, align 4
  %reg_base = getelementptr inbounds %struct.rockchip_usb_phy_base, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -19 to ptr), ptr %reg_base, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 8
  %tobool10.not = icmp eq ptr %10, null
  br i1 %tobool10.not, label %if.end6.if.then21_crit_edge, label %land.lhs.true

if.end6.if.then21_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

land.lhs.true:                                    ; preds = %if.end6
  %of_node = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %if.end18thread-pre-split, label %if.then13

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call ptr @syscon_node_to_regmap(ptr noundef nonnull %12) #7
  %13 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call16, ptr %reg_base, align 4
  br label %if.end18

if.end18thread-pre-split:                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load ptr, ptr %reg_base, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end18thread-pre-split, %if.then13
  %15 = phi ptr [ %.pr, %if.end18thread-pre-split ], [ %call16, %if.then13 ]
  %cmp.i = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end18.if.then21_crit_edge, label %if.end25thread-pre-split

if.end18.if.then21_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

if.then21:                                        ; preds = %if.end18.if.then21_crit_edge, %if.end6.if.then21_crit_edge
  %of_node22 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %16 = ptrtoint ptr %of_node22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node22, align 8
  %call23 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %17, ptr noundef nonnull @.str.6) #7
  %18 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call23, ptr %reg_base, align 4
  br label %if.end25

if.end25thread-pre-split:                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr82 = load ptr, ptr %reg_base, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end25thread-pre-split, %if.then21
  %20 = phi ptr [ %.pr82, %if.end25thread-pre-split ], [ %call23, %if.then21 ]
  %cmp.i80 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i80, label %do.end31, label %if.end35

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #10
  %21 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_base, align 4
  %23 = ptrtoint ptr %22 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.end25
  %of_node36 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %24 = ptrtoint ptr %of_node36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node36, align 8
  %call37 = tail call ptr @of_get_next_available_child(ptr noundef %25, ptr noundef null) #7
  %cmp.not84 = icmp eq ptr %call37, null
  br i1 %cmp.not84, label %if.end35.for.end_crit_edge, label %if.end35.for.body_crit_edge

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  br label %for.body

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end35.for.body_crit_edge
  %child.085 = phi ptr [ %call43, %for.inc.for.body_crit_edge ], [ %call37, %if.end35.for.body_crit_edge ]
  %call38 = tail call fastcc i32 @rockchip_usb_phy_init(ptr noundef nonnull %call.i, ptr noundef nonnull %child.085)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %for.inc, label %if.then40

if.then40:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @of_node_put(ptr noundef nonnull %child.085) #7
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %26 = ptrtoint ptr %of_node36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node36, align 8
  %call43 = tail call ptr @of_get_next_available_child(ptr noundef %27, ptr noundef nonnull %child.085) #7
  %cmp.not = icmp eq ptr %call43, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end35.for.end_crit_edge
  %call44 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #7
  %cmp.i.i = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  %28 = ptrtoint ptr %call44 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %28, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then40, %do.end31, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %23, %do.end31 ], [ %call38, %if.then40 ], [ %spec.select.i, %for.end ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_usb_phy_init(ptr noundef %base, ptr noundef %child) unnamed_addr #3 align 64 {
entry:
  %reg_offset = alloca i32, align 4
  %clk_name = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_offset) #7
  %0 = ptrtoint ptr %reg_offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_offset, align 4, !annotation !107
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #7
  %1 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %clk_name, align 4, !annotation !107
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %2 = getelementptr inbounds i8, ptr %init, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 24)
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 48, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %base, ptr %call.i, align 4
  %np = getelementptr inbounds %struct.rockchip_usb_phy, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %np to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %child, ptr %np, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %child, ptr noundef nonnull @.str.10, ptr noundef nonnull %reg_offset, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool3.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool3.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.11, ptr noundef %child) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i.i199 = call ptr @__of_reset_control_get(ptr noundef %child, ptr noundef nonnull @.str.13, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %reset = getelementptr inbounds %struct.rockchip_usb_phy, ptr %call.i, i32 0, i32 8
  %cmp.i = icmp ugt ptr %call.i.i199, inttoptr (i32 -4096 to ptr)
  %spec.store.select = select i1 %cmp.i, ptr null, ptr %call.i.i199
  %10 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %spec.store.select, ptr %reset, align 4
  %11 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_offset, align 4
  %reg_offset13 = getelementptr inbounds %struct.rockchip_usb_phy, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %reg_offset13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %reg_offset13, align 4
  %call14 = call ptr @of_clk_get_by_name(ptr noundef %child, ptr noundef nonnull @.str.14) #7
  %clk = getelementptr inbounds %struct.rockchip_usb_phy, ptr %call.i, i32 0, i32 3
  %cmp.i200 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  %spec.store.select210 = select i1 %cmp.i200, ptr null, ptr %call14
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %spec.store.select210, ptr %clk, align 4
  %15 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %init, align 4
  %pdata = getelementptr inbounds %struct.rockchip_usb_phy_base, ptr %base, i32 0, i32 2
  %16 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdata, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool20.not216 = icmp eq i32 %21, 0
  br i1 %tobool20.not216, label %if.end6.while.endthread-pre-split_crit_edge, label %while.body.lr.ph

if.end6.while.endthread-pre-split_crit_edge:      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.endthread-pre-split

while.body.lr.ph:                                 ; preds = %if.end6
  %22 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reg_offset, align 4
  br label %while.body

while.body:                                       ; preds = %if.end30.while.body_crit_edge, %while.body.lr.ph
  %24 = phi i32 [ %21, %while.body.lr.ph ], [ %29, %if.end30.while.body_crit_edge ]
  %i.0217 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end30.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %23)
  %cmp = icmp eq i32 %24, %23
  br i1 %cmp, label %if.then25, label %if.end30

if.then25:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %pll_name = getelementptr %struct.rockchip_usb_phys, ptr %19, i32 %i.0217, i32 1
  %25 = ptrtoint ptr %pll_name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pll_name, align 4
  %27 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %init, align 4
  br label %while.end

if.end30:                                         ; preds = %while.body
  %inc = add i32 %i.0217, 1
  %arrayidx = getelementptr %struct.rockchip_usb_phys, ptr %19, i32 %inc
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  %tobool20.not = icmp eq i32 %29, 0
  br i1 %tobool20.not, label %if.end30.while.endthread-pre-split_crit_edge, label %if.end30.while.body_crit_edge

if.end30.while.body_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end30.while.endthread-pre-split_crit_edge:     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.endthread-pre-split

while.endthread-pre-split:                        ; preds = %if.end30.while.endthread-pre-split_crit_edge, %if.end6.while.endthread-pre-split_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end6.while.endthread-pre-split_crit_edge ], [ %inc, %if.end30.while.endthread-pre-split_crit_edge ]
  %30 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr = load ptr, ptr %init, align 4
  br label %while.end

while.end:                                        ; preds = %while.endthread-pre-split, %if.then25
  %i.0215 = phi i32 [ %i.0.lcssa, %while.endthread-pre-split ], [ %i.0217, %if.then25 ]
  %31 = phi ptr [ %.pr, %while.endthread-pre-split ], [ %26, %if.then25 ]
  %tobool32.not = icmp eq ptr %31, null
  br i1 %tobool32.not, label %do.end36, label %if.end38

do.end36:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.16) #10
  br label %cleanup

if.end38:                                         ; preds = %while.end
  %.b = load i1, ptr @enable_usb_uart, align 4
  br i1 %.b, label %land.lhs.true, label %if.end38.if.else_crit_edge

if.end38.if.else_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end38
  %usb_uart_phy = getelementptr inbounds %struct.rockchip_usb_phy_pdata, ptr %17, i32 0, i32 2
  %34 = ptrtoint ptr %usb_uart_phy to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %usb_uart_phy, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %i.0215)
  %cmp41 = icmp eq i32 %35, %i.0215
  br i1 %cmp41, label %do.body43, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

do.body43:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_usb_phy_init.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_usb_phy_init, %if.then48)) #7
          to label %do.end52 [label %if.then48], !srcloc !108

if.then48:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_usb_phy_init.__UNIQUE_ID_ddebug289, ptr noundef %37, ptr noundef nonnull @.str.19, i32 noundef %i.0215) #7
  br label %do.end52

do.end52:                                         ; preds = %if.then48, %do.body43
  %uart_enabled = getelementptr inbounds %struct.rockchip_usb_phy, ptr %call.i, i32 0, i32 7
  %38 = ptrtoint ptr %uart_enabled to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %uart_enabled, align 4
  br label %if.end78

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end38.if.else_crit_edge
  %39 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clk, align 4
  %tobool54.not = icmp eq ptr %40, null
  br i1 %tobool54.not, label %if.else.if.end62_crit_edge, label %if.then55

if.else.if.end62_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then55:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call57 = call ptr @__clk_get_name(ptr noundef nonnull %40) #7
  %41 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call57, ptr %clk_name, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then55, %if.else.if.end62_crit_edge
  %clk_name.sink = phi ptr [ %clk_name, %if.then55 ], [ null, %if.else.if.end62_crit_edge ]
  %.sink = phi i8 [ 1, %if.then55 ], [ 0, %if.else.if.end62_crit_edge ]
  %42 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %42, align 4
  %44 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %clk_name.sink, ptr %44, align 4
  %46 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %.sink, ptr %46, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %48 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @rockchip_usb_phy480m_ops, ptr %ops, align 4
  %clk480m_hw = getelementptr inbounds %struct.rockchip_usb_phy, ptr %call.i, i32 0, i32 5
  %init63 = getelementptr inbounds %struct.rockchip_usb_phy, ptr %call.i, i32 0, i32 5, i32 2
  %49 = ptrtoint ptr %init63 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %init, ptr %init63, align 4
  %50 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base, align 4
  %call66 = call ptr @clk_register(ptr noundef %51, ptr noundef %clk480m_hw) #7
  %clk480m = getelementptr inbounds %struct.rockchip_usb_phy, ptr %call.i, i32 0, i32 4
  %52 = ptrtoint ptr %clk480m to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call66, ptr %clk480m, align 4
  %cmp.i201 = icmp ugt ptr %call66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i201, label %if.then69, label %if.end72

if.then69:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %call66 to i32
  br label %err_clk

if.end72:                                         ; preds = %if.end62
  %call74 = call i32 @of_clk_add_provider(ptr noundef %child, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call66) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %err_clk_prov, label %if.end72.if.end78_crit_edge

if.end72.if.end78_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.end78:                                         ; preds = %if.end72.if.end78_crit_edge, %do.end52
  %54 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base, align 4
  %call.i202 = call i32 @devm_add_action(ptr noundef %55, ptr noundef nonnull @rockchip_usb_phy_action, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i202)
  %tobool.not.i = icmp eq i32 %call.i202, 0
  br i1 %tobool.not.i, label %if.end83, label %if.then.i

if.then.i:                                        ; preds = %if.end78
  %uart_enabled.i.i = getelementptr inbounds %struct.rockchip_usb_phy, ptr %call.i, i32 0, i32 7
  %56 = ptrtoint ptr %uart_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %uart_enabled.i.i, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i.i = icmp eq i8 %57, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.if.end.i.i_crit_edge

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %np, align 4
  call void @of_clk_del_provider(ptr noundef %59) #7
  %clk480m.i.i = getelementptr inbounds %struct.rockchip_usb_phy, ptr %call.i, i32 0, i32 4
  %60 = ptrtoint ptr %clk480m.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %clk480m.i.i, align 4
  call void @clk_unregister(ptr noundef %61) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %62 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %clk, align 4
  %tobool1.not.i.i = icmp eq ptr %63, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.then2.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_put(ptr noundef nonnull %63) #7
  br label %cleanup

if.end83:                                         ; preds = %if.end78
  %64 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base, align 4
  %call85 = call ptr @devm_phy_create(ptr noundef %65, ptr noundef %child, ptr noundef nonnull @ops) #7
  %phy = getelementptr inbounds %struct.rockchip_usb_phy, ptr %call.i, i32 0, i32 6
  %66 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call85, ptr %phy, align 4
  %cmp.i203 = icmp ugt ptr %call85, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i203, label %do.end91, label %if.end95

do.end91:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.21) #10
  %69 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %phy, align 4
  %71 = ptrtoint ptr %70 to i32
  br label %cleanup

if.end95:                                         ; preds = %if.end83
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call85, i32 0, i32 8
  %72 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %73 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %phy, align 4
  %call99 = call ptr @devm_regulator_get_optional(ptr noundef %74, ptr noundef nonnull @.str.23) #7
  %vbus = getelementptr inbounds %struct.rockchip_usb_phy, ptr %call.i, i32 0, i32 9
  %75 = ptrtoint ptr %vbus to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call99, ptr %vbus, align 4
  %cmp.i204 = icmp ugt ptr %call99, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i204, label %if.then102, label %if.end95.if.end111_crit_edge

if.end95.if.end111_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

if.then102:                                       ; preds = %if.end95
  %cmp105 = icmp eq ptr %call99, inttoptr (i32 -517 to ptr)
  br i1 %cmp105, label %if.then102.cleanup_crit_edge, label %if.end109

if.then102.cleanup_crit_edge:                     ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end109:                                        ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %vbus to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %vbus, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.end109, %if.end95.if.end111_crit_edge
  %uart_enabled112 = getelementptr inbounds %struct.rockchip_usb_phy, ptr %call.i, i32 0, i32 7
  %77 = ptrtoint ptr %uart_enabled112 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %uart_enabled112, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool113.not = icmp eq i8 %78, 0
  br i1 %tobool113.not, label %if.else117, label %if.then114

if.then114:                                       ; preds = %if.end111
  %79 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %clk, align 4
  %call.i205 = call i32 @clk_prepare(ptr noundef %80) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205)
  %tobool.not.i206 = icmp eq i32 %call.i205, 0
  br i1 %tobool.not.i206, label %if.end.i, label %if.then114.cleanup_crit_edge

if.then114.cleanup_crit_edge:                     ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then114
  %call1.i = call i32 @clk_enable(ptr noundef %80) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %80) #7
  br label %cleanup

if.else117:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %call.i, align 4
  %reg_base.i = getelementptr inbounds %struct.rockchip_usb_phy_base, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %reg_base.i, align 4
  %85 = ptrtoint ptr %reg_offset13 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %reg_offset13, align 4
  %call.i208 = call i32 @regmap_write(ptr noundef %84, i32 noundef %86, i32 noundef 536879104) #7
  br label %cleanup

err_clk_prov:                                     ; preds = %if.end72
  %uart_enabled119 = getelementptr inbounds %struct.rockchip_usb_phy, ptr %call.i, i32 0, i32 7
  %87 = ptrtoint ptr %uart_enabled119 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %uart_enabled119, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool120.not = icmp eq i8 %88, 0
  br i1 %tobool120.not, label %if.then121, label %err_clk_prov.err_clk_crit_edge

err_clk_prov.err_clk_crit_edge:                   ; preds = %err_clk_prov
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk

if.then121:                                       ; preds = %err_clk_prov
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %clk480m to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %clk480m, align 4
  call void @clk_unregister(ptr noundef %90) #7
  br label %err_clk

err_clk:                                          ; preds = %if.then121, %err_clk_prov.err_clk_crit_edge, %if.then69
  %err.0 = phi i32 [ %53, %if.then69 ], [ %call74, %err_clk_prov.err_clk_crit_edge ], [ %call74, %if.then121 ]
  %91 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %clk, align 4
  %tobool125.not = icmp eq ptr %92, null
  br i1 %tobool125.not, label %err_clk.cleanup_crit_edge, label %if.then126

err_clk.cleanup_crit_edge:                        ; preds = %err_clk
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then126:                                       ; preds = %err_clk
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_put(ptr noundef nonnull %92) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then126, %err_clk.cleanup_crit_edge, %if.else117, %if.then3.i, %if.end.i.cleanup_crit_edge, %if.then114.cleanup_crit_edge, %if.then102.cleanup_crit_edge, %do.end91, %if.then2.i.i, %if.end.i.i.cleanup_crit_edge, %do.end36, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %71, %do.end91 ], [ %call.i208, %if.else117 ], [ -22, %do.end36 ], [ -12, %entry.cleanup_crit_edge ], [ %err.0, %if.then126 ], [ %err.0, %err_clk.cleanup_crit_edge ], [ -517, %if.then102.cleanup_crit_edge ], [ %call.i205, %if.then114.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.cleanup_crit_edge ], [ %call.i202, %if.end.i.i.cleanup_crit_edge ], [ %call.i202, %if.then2.i.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_offset) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_usb_phy_action(ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %uart_enabled = getelementptr inbounds %struct.rockchip_usb_phy, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %uart_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %uart_enabled, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %np = getelementptr inbounds %struct.rockchip_usb_phy, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %np, align 4
  tail call void @of_clk_del_provider(ptr noundef %3) #7
  %clk480m = getelementptr inbounds %struct.rockchip_usb_phy, ptr %data, i32 0, i32 4
  %4 = ptrtoint ptr %clk480m to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk480m, align 4
  tail call void @clk_unregister(ptr noundef %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %clk = getelementptr inbounds %struct.rockchip_usb_phy, ptr %data, i32 0, i32 3
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_put(ptr noundef nonnull %7) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_usb_phy480m_enable(ptr nocapture noundef readonly %hw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -20
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %reg_base.i = getelementptr inbounds %struct.rockchip_usb_phy_base, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base.i, align 4
  %reg_offset.i = getelementptr i8, ptr %hw, i32 -12
  %4 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_offset.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %5, i32 noundef 536870912) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_usb_phy480m_disable(ptr nocapture noundef readonly %hw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vbus = getelementptr i8, ptr %hw, i32 24
  %0 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vbus, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @regulator_disable(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %hw, i32 -20
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %reg_base.i = getelementptr inbounds %struct.rockchip_usb_phy_base, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i, align 4
  %reg_offset.i = getelementptr i8, ptr %hw, i32 -12
  %6 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_offset.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %7, i32 noundef 536879104) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_usb_phy480m_is_enabled(ptr nocapture noundef readonly %hw) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !107
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %reg_base = getelementptr inbounds %struct.rockchip_usb_phy_base, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_base, align 4
  %reg_offset = getelementptr i8, ptr %hw, i32 -12
  %5 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_offset, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and = lshr i32 %8, 13
  %and.lobit = and i32 %and, 1
  %9 = xor i32 %and.lobit, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rockchip_usb_phy480m_recalc_rate(ptr nocapture noundef readnone %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 480000000
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_usb_phy_power_on(ptr nocapture noundef readonly %_phy) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %_phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %uart_enabled = getelementptr inbounds %struct.rockchip_usb_phy, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %uart_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %uart_enabled, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup10_crit_edge

entry.cleanup10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

if.end:                                           ; preds = %entry
  %vbus = getelementptr inbounds %struct.rockchip_usb_phy, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vbus, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %call4 = tail call i32 @regulator_enable(ptr noundef nonnull %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then2.if.end8_crit_edge, label %if.then2.cleanup10_crit_edge

if.then2.cleanup10_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8:                                          ; preds = %if.then2.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %clk480m = getelementptr inbounds %struct.rockchip_usb_phy, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %clk480m to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk480m, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.cleanup10_crit_edge

if.end8.cleanup10_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

if.end.i:                                         ; preds = %if.end8
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup10_crit_edge, label %if.then3.i

if.end.i.cleanup10_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %7) #7
  br label %cleanup10

cleanup10:                                        ; preds = %if.then3.i, %if.end.i.cleanup10_crit_edge, %if.end8.cleanup10_crit_edge, %if.then2.cleanup10_crit_edge, %entry.cleanup10_crit_edge
  %retval.1 = phi i32 [ %call4, %if.then2.cleanup10_crit_edge ], [ -16, %entry.cleanup10_crit_edge ], [ %call.i, %if.end8.cleanup10_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.cleanup10_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_usb_phy_power_off(ptr nocapture noundef readonly %_phy) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %_phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %uart_enabled = getelementptr inbounds %struct.rockchip_usb_phy, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %uart_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %uart_enabled, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %clk480m = getelementptr inbounds %struct.rockchip_usb_phy, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %clk480m to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk480m, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_usb_phy_reset(ptr nocapture noundef readonly %_phy) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %_phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %reset = getelementptr inbounds %struct.rockchip_usb_phy, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @reset_control_assert(ptr noundef nonnull %3) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #7
  %5 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reset, align 4
  %call4 = tail call i32 @reset_control_deassert(ptr noundef %6) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3188_init_usb_uart(ptr noundef %grf, ptr nocapture noundef readonly %pdata) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rockchip_init_usb_uart_common(ptr noundef %grf, ptr noundef %pdata) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @regmap_write(ptr noundef %grf, i32 noundef 268, i32 noundef 50332416) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_init_usb_uart_common(ptr noundef %grf, ptr nocapture noundef readonly %pdata) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %usb_uart_phy = getelementptr inbounds %struct.rockchip_usb_phy_pdata, ptr %pdata, i32 0, i32 2
  %2 = ptrtoint ptr %usb_uart_phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usb_uart_phy, align 4
  %arrayidx = getelementptr %struct.rockchip_usb_phys, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 @regmap_write(ptr noundef %grf, i32 noundef %5, i32 noundef 537993233) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add1 = add i32 %5, 8
  %call2 = tail call i32 @regmap_write(ptr noundef %grf, i32 noundef %add1, i32 noundef 262148) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 @regmap_write(ptr noundef %grf, i32 noundef 12, i32 noundef 4128810) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call6, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3288_init_usb_uart(ptr noundef %grf, ptr nocapture noundef readonly %pdata) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rockchip_init_usb_uart_common(ptr noundef %grf, ptr noundef %pdata) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @regmap_write(ptr noundef %grf, i32 noundef 812, i32 noundef 12583104) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !39, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !80, !81, !82, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__initcall__kmod_phy_rockchip_usb__290_519_rockchip_usb_driver_init6, !1, !"__initcall__kmod_phy_rockchip_usb__290_519_rockchip_usb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 519, i32 1}
!2 = !{ptr @__exitcall_rockchip_usb_driver_exit, !1, !"__exitcall_rockchip_usb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_phy_rockchip_usb__292_569_rockchip_init_usb_uartearly, !4, !"__initcall__kmod_phy_rockchip_usb__292_569_rockchip_init_usb_uartearly", i1 false, i1 false}
!4 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 569, i32 1}
!5 = !{ptr @__setup_rockchip_usb_uart, !6, !"__setup_rockchip_usb_uart", i1 false, i1 false}
!6 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 576, i32 1}
!7 = !{ptr @__UNIQUE_ID_author293, !8, !"__UNIQUE_ID_author293", i1 false, i1 false}
!8 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 579, i32 1}
!9 = !{ptr @__UNIQUE_ID_description294, !10, !"__UNIQUE_ID_description294", i1 false, i1 false}
!10 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 580, i32 1}
!11 = !{ptr @__UNIQUE_ID_file295, !12, !"__UNIQUE_ID_file295", i1 false, i1 false}
!12 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 581, i32 1}
!13 = !{ptr @__UNIQUE_ID_license296, !12, !"__UNIQUE_ID_license296", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 514, i32 11}
!16 = !{ptr @rockchip_usb_driver, !17, !"rockchip_usb_driver", i1 false, i1 false}
!17 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 511, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 471, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rockchip_usb_phy_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @rockchip_usb_phy_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 484, i32 21}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 486, i32 3}
!30 = !{ptr @rockchip_usb_phy_probe._entry.7, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @rockchip_usb_phy_probe._entry_ptr.9, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 218, i32 34}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 219, i32 3}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @rockchip_usb_phy_init._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @rockchip_usb_phy_init._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 224, i32 46}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 230, i32 42}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 245, i32 3}
!45 = !{ptr @rockchip_usb_phy_init._entry.15, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @rockchip_usb_phy_init._entry_ptr.17, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 250, i32 3}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @rockchip_usb_phy_init.__UNIQUE_ID_ddebug289, !48, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 286, i32 3}
!53 = !{ptr @rockchip_usb_phy_init._entry.20, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @rockchip_usb_phy_init._entry_ptr.22, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 291, i32 64}
!57 = distinct !{null, !58, !"enable_usb_uart", i1 false, i1 false}
!58 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 26, i32 12}
!59 = !{ptr @rockchip_usb_phy480m_ops, !60, !"rockchip_usb_phy480m_ops", i1 false, i1 false}
!60 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 132, i32 29}
!61 = !{ptr @ops, !62, !"ops", i1 false, i1 false}
!62 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 182, i32 29}
!63 = !{ptr @rockchip_usb_phy_dt_ids, !64, !"rockchip_usb_phy_dt_ids", i1 false, i1 false}
!64 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 502, i32 34}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 318, i32 31}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 319, i32 31}
!69 = !{ptr @rk3066a_pdata, !70, !"rk3066a_pdata", i1 false, i1 false}
!70 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 316, i32 44}
!71 = !{ptr @rk3188_pdata, !72, !"rk3188_pdata", i1 false, i1 false}
!72 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 395, i32 44}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 449, i32 31}
!75 = !{ptr @rk3288_pdata, !76, !"rk3288_pdata", i1 false, i1 false}
!76 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 445, i32 44}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 536, i32 3}
!79 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @rockchip_init_usb_uart._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @rockchip_init_usb_uart._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 540, i32 2}
!84 = !{ptr @rockchip_init_usb_uart.__UNIQUE_ID_ddebug291, !83, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 544, i32 3}
!87 = !{ptr @rockchip_init_usb_uart._entry.32, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @rockchip_init_usb_uart._entry_ptr.34, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 555, i32 3}
!91 = !{ptr @rockchip_init_usb_uart._entry.35, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @rockchip_init_usb_uart._entry_ptr.37, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/phy/rockchip/phy-rockchip-usb.c", i32 562, i32 3}
!95 = !{ptr @rockchip_init_usb_uart._entry.38, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @rockchip_init_usb_uart._entry_ptr.40, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @__setup_str_rockchip_usb_uart, !6, !"__setup_str_rockchip_usb_uart", i1 false, i1 false}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{!"auto-init"}
!108 = !{i64 2148734370, i64 2148734375, i64 2148734388, i64 2148734432, i64 2148734466, i64 2148734487}
!109 = !{i8 0, i8 2}
