; ModuleID = '/llk/IR_all_yes/drivers/usb/cdns3/cdns3-imx.c_pt.bc'
source_filename = "../drivers/usb/cdns3/cdns3-imx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.of_dev_auxdata = type { ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cdns3_platform_data = type { ptr, i32 }
%struct.atomic_t = type { i32 }
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
%struct.cdns_imx = type { ptr, ptr, ptr, i32, ptr }
%struct.cdns = type { ptr, ptr, [2 x %struct.resource], ptr, %struct.resource, ptr, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, [3 x ptr], i32, ptr, ptr, ptr, ptr, %struct.mutex, i32, ptr, i8, i8, ptr, %struct.spinlock, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_cdns3_imx__296_426_cdns_imx_driver_init6 = internal global ptr @cdns_imx_driver_init, section ".initcall6.init", align 4
@cdns_imx_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cdns_imx_probe, ptr @cdns_imx_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cdns_imx_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdns_imx_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cdns_imx_driver_exit = internal global ptr @cdns_imx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias297 = internal constant [35 x i8] c"cdns3_imx.alias=platform:cdns3-imx\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [49 x i8] c"cdns3_imx.author=Peter Chen <peter.chen@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [43 x i8] c"cdns3_imx.file=drivers/usb/cdns3/cdns3-imx\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [25 x i8] c"cdns3_imx.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description301 = internal constant [51 x i8] c"cdns3_imx.description=Cadence USB3 i.MX Glue Layer\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cdns3-imx\00", [22 x i8] zeroinitializer }, align 32
@cdns_imx_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8qm-usb3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cdns_imx_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cdns_imx_suspend, ptr @cdns_imx_system_resume, ptr @cdns_imx_suspend, ptr @cdns_imx_system_resume, ptr @cdns_imx_suspend, ptr @cdns_imx_system_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdns_imx_suspend, ptr @cdns_imx_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@cdns_imx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 183, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't map IOMEM resource\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cdns_imx_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/usb/cdns3/cdns3-imx.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cdns_imx_probe._entry_ptr = internal global ptr @cdns_imx_probe._entry, section ".printk_index", align 4
@imx_cdns3_core_clks = internal constant { [5 x %struct.clk_bulk_data], [56 x i8] } { [5 x %struct.clk_bulk_data] [%struct.clk_bulk_data { ptr @.str.9, ptr null }, %struct.clk_bulk_data { ptr @.str.10, ptr null }, %struct.clk_bulk_data { ptr @.str.11, ptr null }, %struct.clk_bulk_data { ptr @.str.12, ptr null }, %struct.clk_bulk_data { ptr @.str.13, ptr null }], [56 x i8] zeroinitializer }, align 32
@cdns_imx_auxdata = internal constant { [2 x %struct.of_dev_auxdata], [32 x i8] } { [2 x %struct.of_dev_auxdata] [%struct.of_dev_auxdata { ptr @.str.16, i32 0, ptr null, ptr @cdns_imx_pdata }, %struct.of_dev_auxdata zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cdns_imx_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 207, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to create children: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@cdns_imx_probe._entry_ptr.8 = internal global ptr @cdns_imx_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb3_lpm_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb3_bus_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb3_aclk\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb3_ipg_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usb3_core_pclk\00", [17 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cdns_imx_noncore_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 127, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wait clkvld timeout\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cdns_imx_noncore_init\00", [42 x i8] zeroinitializer }, align 32
@cdns_imx_noncore_init._entry_ptr = internal global ptr @cdns_imx_noncore_init._entry, section ".printk_index", align 4
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cdns,usb3\00", [22 x i8] zeroinitializer }, align 32
@cdns_imx_pdata = internal global { %struct.cdns3_platform_data, [24 x i8] } { %struct.cdns3_platform_data { ptr @cdns_imx_platform_suspend, i32 1 }, [24 x i8] zeroinitializer }, align 32
@cdns_imx_platform_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 282, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wait mdctrl_clk_status timeout\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cdns_imx_platform_suspend\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cdns_imx_platform_suspend._entry_ptr = internal global ptr @cdns_imx_platform_suspend._entry, section ".printk_index", align 4
@cdns_imx_platform_suspend._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.3, i32 290, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wait lpm_clk_req timeout\0A\00", [38 x i8] zeroinitializer }, align 32
@cdns_imx_platform_suspend._entry_ptr.22 = internal global ptr @cdns_imx_platform_suspend._entry.20, section ".printk_index", align 4
@cdns_imx_platform_suspend._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.18, ptr @.str.3, i32 298, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wait phy_refclk_req timeout\0A\00", [35 x i8] zeroinitializer }, align 32
@cdns_imx_platform_suspend._entry_ptr.25 = internal global ptr @cdns_imx_platform_suspend._entry.23, section ".printk_index", align 4
@cdns_imx_platform_suspend._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.18, ptr @.str.3, i32 326, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wait CLK_125_REQ timeout\0A\00", [38 x i8] zeroinitializer }, align 32
@cdns_imx_platform_suspend._entry_ptr.28 = internal global ptr @cdns_imx_platform_suspend._entry.26, section ".printk_index", align 4
@cdns_imx_platform_suspend._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.18, ptr @.str.3, i32 334, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"wait mdctrl_clk_status cleared timeout\0A\00", [56 x i8] zeroinitializer }, align 32
@cdns_imx_platform_suspend._entry_ptr.31 = internal global ptr @cdns_imx_platform_suspend._entry.29, section ".printk_index", align 4
@cdns_imx_platform_suspend._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.18, ptr @.str.3, i32 342, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wait OTG ready timeout\0A\00", [40 x i8] zeroinitializer }, align 32
@cdns_imx_platform_suspend._entry_ptr.34 = internal global ptr @cdns_imx_platform_suspend._entry.32, section ".printk_index", align 4
@cdns_imx_system_resume.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.36, ptr @.str.3, ptr @.str.37, i8 0, i8 97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cdns3_imx\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cdns_imx_system_resume\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"resume from power lost\0A\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.38 = private unnamed_addr constant [16 x i8] c"cdns_imx_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 417, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 421, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [18 x i8] c"cdns_imx_of_match\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 411, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"cdns_imx_pm_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 406, i32 32 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 183, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [20 x i8] c"imx_cdns3_core_clks\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 107, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"cdns_imx_auxdata\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 157, i32 36 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 207, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 108, i32 10 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 109, i32 10 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 110, i32 10 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 111, i32 10 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 112, i32 10 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 127, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 159, i32 17 }
@___asan_gen_.107 = private unnamed_addr constant [15 x i8] c"cdns_imx_pdata\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 152, i32 35 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 282, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 290, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 298, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 326, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 334, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 342, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.159 = private constant [33 x i8] c"../drivers/usb/cdns3/cdns3-imx.c\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 388, i32 3 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_alias297, ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_cdns_imx_driver_exit, ptr @__initcall__kmod_cdns3_imx__296_426_cdns_imx_driver_init6, ptr @cdns_imx_driver_exit, ptr @cdns_imx_noncore_init._entry, ptr @cdns_imx_noncore_init._entry_ptr, ptr @cdns_imx_platform_suspend._entry, ptr @cdns_imx_platform_suspend._entry.20, ptr @cdns_imx_platform_suspend._entry.23, ptr @cdns_imx_platform_suspend._entry.26, ptr @cdns_imx_platform_suspend._entry.29, ptr @cdns_imx_platform_suspend._entry.32, ptr @cdns_imx_platform_suspend._entry_ptr, ptr @cdns_imx_platform_suspend._entry_ptr.22, ptr @cdns_imx_platform_suspend._entry_ptr.25, ptr @cdns_imx_platform_suspend._entry_ptr.28, ptr @cdns_imx_platform_suspend._entry_ptr.31, ptr @cdns_imx_platform_suspend._entry_ptr.34, ptr @cdns_imx_probe._entry, ptr @cdns_imx_probe._entry.6, ptr @cdns_imx_probe._entry_ptr, ptr @cdns_imx_probe._entry_ptr.8, ptr @cdns_imx_driver, ptr @.str, ptr @cdns_imx_of_match, ptr @cdns_imx_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @imx_cdns3_core_clks, ptr @cdns_imx_auxdata, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @cdns_imx_pdata, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_imx_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_imx_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_imx_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_imx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_cdns3_core_clks to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_imx_auxdata to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_imx_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_imx_noncore_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_imx_pdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_imx_platform_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_imx_platform_suspend._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_imx_platform_suspend._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_imx_platform_suspend._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_imx_platform_suspend._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_imx_platform_suspend._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_imx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cdns_imx_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cdns_imx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @cdns_imx_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_imx_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 20, i32 noundef 3520) #6
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %call.i, align 4
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %noncore = getelementptr inbounds %struct.cdns_imx, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %noncore to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call6, ptr %noncore, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  %5 = ptrtoint ptr %noncore to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %noncore, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %num_clks = getelementptr inbounds %struct.cdns_imx, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %num_clks to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 5, ptr %num_clks, align 4
  %call13 = tail call ptr @devm_kmemdup(ptr noundef %dev1, ptr noundef nonnull @imx_cdns3_core_clks, i32 noundef 40, i32 noundef 3264) #6
  %clks = getelementptr inbounds %struct.cdns_imx, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %clks to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call13, ptr %clks, align 4
  %tobool15.not = icmp eq ptr %call13, null
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %10 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_clks, align 4
  %call20 = tail call i32 @devm_clk_bulk_get(ptr noundef %dev1, i32 noundef %11, ptr noundef nonnull %call13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  %12 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_clks, align 4
  %14 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clks, align 4
  %call.i83 = tail call i32 @clk_bulk_prepare(i32 noundef %13, ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool.not.i = icmp eq i32 %call.i83, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end23
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %13, ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end29, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_bulk_unprepare(i32 noundef %13, ptr noundef %15) #6
  br label %cleanup

if.end29:                                         ; preds = %if.end.i
  %call30 = tail call fastcc i32 @cdns_imx_noncore_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.err_crit_edge

if.end29.err_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end33:                                         ; preds = %if.end29
  %call34 = tail call i32 @of_platform_populate(ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull @cdns_imx_auxdata, ptr noundef %dev1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end40, label %do.end39

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %call34) #9
  br label %err

if.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @device_set_wakeup_capable(ptr noundef %dev1, i1 noundef zeroext true) #6
  %call.i84 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #6
  tail call void @pm_runtime_enable(ptr noundef %dev1) #6
  br label %cleanup

err:                                              ; preds = %do.end39, %if.end29.err_crit_edge
  %ret.0 = phi i32 [ %call30, %if.end29.err_crit_edge ], [ %call34, %do.end39 ]
  %16 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_clks, align 4
  %18 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %17, ptr noundef %19) #6
  tail call void @clk_bulk_unprepare(i32 noundef %17, ptr noundef %19) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end40, %if.then3.i, %if.end23.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %do.end ], [ %ret.0, %err ], [ 0, %if.end40 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ], [ %call20, %if.end17.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i83, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_imx_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #6
  tail call void @of_platform_depopulate(ptr noundef %dev1) #6
  %num_clks = getelementptr inbounds %struct.cdns_imx, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.cdns_imx, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %3, ptr noundef %5) #6
  tail call void @clk_bulk_unprepare(i32 noundef %3, ptr noundef %5) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #6
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #6
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #6, !srcloc !96
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !97
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %driver_data.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_imx_noncore_init(ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  %noncore.i = getelementptr inbounds %struct.cdns_imx, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %noncore.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %noncore.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 252) #6, !srcloc !99
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #6
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 125) #6
  %5 = ptrtoint ptr %noncore.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %noncore.i, align 4
  %add.ptr87 = getelementptr i8, ptr %6, i32 76
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87) #6, !srcloc !100
  %8 = shl i32 %7, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435457, i32 %8)
  %cmp1188 = icmp ugt i32 %8, -268435457
  br i1 %cmp1188, label %entry.if.end37_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

land.lhs.true:                                    ; preds = %if.then27.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call14 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call14, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call14, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then27

if.then27:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  %9 = ptrtoint ptr %noncore.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %noncore.i, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 76
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !100
  %12 = shl i32 %11, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %cmp11 = icmp ugt i32 %12, -268435457
  br i1 %cmp11, label %if.then27.if.end37_crit_edge, label %if.then27.land.lhs.true_crit_edge

if.then27.land.lhs.true_crit_edge:                ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.then27.if.end37_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

for.end:                                          ; preds = %land.lhs.true
  %13 = ptrtoint ptr %noncore.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %noncore.i, align 4
  %add.ptr21 = getelementptr i8, ptr %14, i32 76
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #6, !srcloc !100
  %16 = shl i32 %15, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435457, i32 %16)
  %cmp31 = icmp ugt i32 %16, -268435457
  br i1 %cmp31, label %for.end.if.end37_crit_edge, label %do.end36

for.end.if.end37_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

do.end36:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.14) #9
  br label %cleanup

if.end37:                                         ; preds = %for.end.if.end37_crit_edge, %if.then27.if.end37_crit_edge, %entry.if.end37_crit_edge
  %17 = ptrtoint ptr %noncore.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %noncore.i, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  %20 = or i32 %19, 252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %noncore.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %noncore.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #6, !srcloc !99
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #6
  %24 = ptrtoint ptr %noncore.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %noncore.i, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  %27 = and i32 %26, -117571585
  %28 = or i32 %27, 16908288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %noncore.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %noncore.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #6, !srcloc !99
  %31 = ptrtoint ptr %noncore.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %noncore.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %32, i32 8
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  %34 = or i32 %33, 16973824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %noncore.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %noncore.i, align 4
  %add.ptr.i82 = getelementptr i8, ptr %36, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82, i32 %34) #6, !srcloc !99
  %37 = ptrtoint ptr %noncore.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %noncore.i, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  %40 = and i32 %39, -253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %noncore.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %noncore.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #6, !srcloc !99
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %do.end36
  %cond = phi i32 [ 0, %if.end37 ], [ -110, %do.end36 ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_imx_platform_suspend(ptr nocapture noundef readonly %dev, i1 noundef zeroext %suspend, i1 noundef zeroext %wakeup) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %parent2 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent2, align 8
  %driver_data.i487 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i487 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i487, align 4
  %otg_regs4 = getelementptr inbounds %struct.cdns, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %otg_regs4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %otg_regs4, align 4
  %xhci_regs5 = getelementptr inbounds %struct.cdns, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %xhci_regs5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xhci_regs5, align 4
  %role = getelementptr inbounds %struct.cdns, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.not = icmp eq i32 %11, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %suspend, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %9, i32 32792
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %13 = and i32 %12, -50331649
  %14 = or i32 %13, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #6, !srcloc !99
  %noncore.i = getelementptr inbounds %struct.cdns_imx, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %noncore.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %noncore.i, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  %18 = or i32 %17, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %noncore.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %noncore.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #6, !srcloc !99
  %21 = ptrtoint ptr %noncore.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %noncore.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 12
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  %call13 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call13, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 280) #6
  %24 = ptrtoint ptr %noncore.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %noncore.i, align 4
  %add.ptr29549 = getelementptr i8, ptr %25, i32 12
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29549) #6, !srcloc !100
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  %and33550 = and i32 %27, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33550)
  %cmp34.not551 = icmp eq i32 %and33550, 0
  br i1 %cmp34.not551, label %if.then6.land.lhs.true_crit_edge, label %if.then6.for.end_crit_edge

if.then6.for.end_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then6.land.lhs.true_crit_edge:                 ; preds = %if.then6
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then51.land.lhs.true_crit_edge, %if.then6.land.lhs.true_crit_edge
  %call38 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call38, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call38, %add.i
  br i1 %cmp3.i, label %if.then41, label %if.then51

if.then41:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %noncore.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %noncore.i, align 4
  %add.ptr45 = getelementptr i8, ptr %29, i32 12
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #6, !srcloc !100
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  br label %for.end

if.then51:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  %32 = ptrtoint ptr %noncore.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %noncore.i, align 4
  %add.ptr29 = getelementptr i8, ptr %33, i32 12
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #6, !srcloc !100
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  %and33 = and i32 %35, 32768
  %cmp34.not = icmp eq i32 %and33, 0
  br i1 %cmp34.not, label %if.then51.land.lhs.true_crit_edge, label %if.then51.for.end_crit_edge

if.then51.for.end_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then51.land.lhs.true_crit_edge:                ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

for.end:                                          ; preds = %if.then51.for.end_crit_edge, %if.then41, %if.then6.for.end_crit_edge
  %value.0 = phi i32 [ %31, %if.then41 ], [ %27, %if.then6.for.end_crit_edge ], [ %35, %if.then51.for.end_crit_edge ]
  %and54 = and i32 %value.0, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %cmp55.not = icmp eq i32 %and54, 0
  br i1 %cmp55.not, label %do.end60, label %for.end.if.end61_crit_edge

for.end.if.end61_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

do.end60:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.17) #9
  br label %if.end61

if.end61:                                         ; preds = %do.end60, %for.end.if.end61_crit_edge
  %36 = ptrtoint ptr %noncore.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %noncore.i, align 4
  %add.ptr.i491 = getelementptr i8, ptr %37, i32 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i491) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  %call66 = tail call i64 @ktime_get() #6
  %add.i492 = add i64 %call66, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 288) #6
  %39 = ptrtoint ptr %noncore.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %noncore.i, align 4
  %add.ptr84553 = getelementptr i8, ptr %40, i32 8
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84553) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  %42 = and i32 %41, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp89.not.not555 = icmp eq i32 %42, 0
  br i1 %cmp89.not.not555, label %if.end61.if.end121_crit_edge, label %if.end61.land.lhs.true93_crit_edge

if.end61.land.lhs.true93_crit_edge:               ; preds = %if.end61
  br label %land.lhs.true93

if.end61.if.end121_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end121

land.lhs.true93:                                  ; preds = %if.then107.land.lhs.true93_crit_edge, %if.end61.land.lhs.true93_crit_edge
  %call94 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call94, i64 %add.i492)
  %cmp3.i494 = icmp sgt i64 %call94, %add.i492
  br i1 %cmp3.i494, label %for.end111, label %if.then107

if.then107:                                       ; preds = %land.lhs.true93
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  %43 = ptrtoint ptr %noncore.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %noncore.i, align 4
  %add.ptr84 = getelementptr i8, ptr %44, i32 8
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  %46 = and i32 %45, 16
  %cmp89.not.not = icmp eq i32 %46, 0
  br i1 %cmp89.not.not, label %if.then107.if.end121_crit_edge, label %if.then107.land.lhs.true93_crit_edge

if.then107.land.lhs.true93_crit_edge:             ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true93

if.then107.if.end121_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end121

for.end111:                                       ; preds = %land.lhs.true93
  %47 = ptrtoint ptr %noncore.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %noncore.i, align 4
  %add.ptr101 = getelementptr i8, ptr %48, i32 8
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  %50 = and i32 %49, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp114.not.not = icmp eq i32 %50, 0
  br i1 %cmp114.not.not, label %for.end111.if.end121_crit_edge, label %do.end120

for.end111.if.end121_crit_edge:                   ; preds = %for.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end121

do.end120:                                        ; preds = %for.end111
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.21) #9
  br label %if.end121

if.end121:                                        ; preds = %do.end120, %for.end111.if.end121_crit_edge, %if.then107.if.end121_crit_edge, %if.end61.if.end121_crit_edge
  %51 = ptrtoint ptr %noncore.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %noncore.i, align 4
  %add.ptr.i498 = getelementptr i8, ptr %52, i32 76
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i498) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  %call126 = tail call i64 @ktime_get() #6
  %add.i499 = add i64 %call126, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 296) #6
  %54 = ptrtoint ptr %noncore.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %noncore.i, align 4
  %add.ptr144557 = getelementptr i8, ptr %55, i32 76
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr144557) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  %57 = and i32 %56, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp149.not.not559 = icmp eq i32 %57, 0
  br i1 %cmp149.not.not559, label %if.end121.if.end181_crit_edge, label %if.end121.land.lhs.true153_crit_edge

if.end121.land.lhs.true153_crit_edge:             ; preds = %if.end121
  br label %land.lhs.true153

if.end121.if.end181_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end181

land.lhs.true153:                                 ; preds = %if.then167.land.lhs.true153_crit_edge, %if.end121.land.lhs.true153_crit_edge
  %call154 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call154, i64 %add.i499)
  %cmp3.i501 = icmp sgt i64 %call154, %add.i499
  br i1 %cmp3.i501, label %for.end171, label %if.then167

if.then167:                                       ; preds = %land.lhs.true153
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  %58 = ptrtoint ptr %noncore.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %noncore.i, align 4
  %add.ptr144 = getelementptr i8, ptr %59, i32 76
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr144) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  %61 = and i32 %60, 16777216
  %cmp149.not.not = icmp eq i32 %61, 0
  br i1 %cmp149.not.not, label %if.then167.if.end181_crit_edge, label %if.then167.land.lhs.true153_crit_edge

if.then167.land.lhs.true153_crit_edge:            ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true153

if.then167.if.end181_crit_edge:                   ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end181

for.end171:                                       ; preds = %land.lhs.true153
  %62 = ptrtoint ptr %noncore.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %noncore.i, align 4
  %add.ptr161 = getelementptr i8, ptr %63, i32 76
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr161) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  %65 = and i32 %64, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp174.not.not = icmp eq i32 %65, 0
  br i1 %cmp174.not.not, label %for.end171.if.end181_crit_edge, label %do.end180

for.end171.if.end181_crit_edge:                   ; preds = %for.end171
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end181

do.end180:                                        ; preds = %for.end171
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.24) #9
  br label %if.end181

if.end181:                                        ; preds = %do.end180, %for.end171.if.end181_crit_edge, %if.then167.if.end181_crit_edge, %if.end121.if.end181_crit_edge
  %cond175574 = phi i32 [ -110, %do.end180 ], [ 0, %for.end171.if.end181_crit_edge ], [ 0, %if.end121.if.end181_crit_edge ], [ 0, %if.then167.if.end181_crit_edge ]
  %66 = ptrtoint ptr %noncore.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %noncore.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %67, i32 8
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  %69 = and i32 %68, -5242881
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #6
  %masksel.i = select i1 %wakeup, i32 20480, i32 0
  %value.0.i = or i32 %70, %masksel.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  %71 = tail call i32 @llvm.bswap.i32(i32 %value.0.i) #6
  %72 = ptrtoint ptr %noncore.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %noncore.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %73, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %71) #6, !srcloc !99
  br label %cleanup

if.else:                                          ; preds = %if.end
  %noncore.i.i504 = getelementptr inbounds %struct.cdns_imx, ptr %5, i32 0, i32 1
  %74 = ptrtoint ptr %noncore.i.i504 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %noncore.i.i504, align 4
  %add.ptr.i.i505 = getelementptr i8, ptr %75, i32 8
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i505) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  %77 = and i32 %76, -5242881
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  %78 = ptrtoint ptr %noncore.i.i504 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %noncore.i.i504, align 4
  %add.ptr.i5.i506 = getelementptr i8, ptr %79, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i506, i32 %77) #6, !srcloc !99
  %add.ptr185 = getelementptr i8, ptr %9, i32 32792
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr185) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %81 = and i32 %80, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr185, i32 %81) #6, !srcloc !99
  %add.ptr197 = getelementptr i8, ptr %9, i32 33056
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr197) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  %83 = and i32 %82, -8388609
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr197, i32 %83) #6, !srcloc !99
  %84 = ptrtoint ptr %noncore.i.i504 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %noncore.i.i504, align 4
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  %87 = and i32 %86, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  %88 = ptrtoint ptr %noncore.i.i504 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %noncore.i.i504, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %87) #6, !srcloc !99
  %90 = ptrtoint ptr %noncore.i.i504 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %noncore.i.i504, align 4
  %add.ptr.i510 = getelementptr i8, ptr %91, i32 8
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i510) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  %call212 = tail call i64 @ktime_get() #6
  %add.i511 = add i64 %call212, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 324) #6
  %93 = ptrtoint ptr %noncore.i.i504 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %noncore.i.i504, align 4
  %add.ptr230539 = getelementptr i8, ptr %94, i32 8
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr230539) #6, !srcloc !100
  %96 = tail call i32 @llvm.bswap.i32(i32 %95)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %and234540 = and i32 %96, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and234540)
  %cmp235.not541 = icmp eq i32 %and234540, 0
  br i1 %cmp235.not541, label %if.else.land.lhs.true239_crit_edge, label %if.else.for.end257_crit_edge

if.else.for.end257_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end257

if.else.land.lhs.true239_crit_edge:               ; preds = %if.else
  br label %land.lhs.true239

land.lhs.true239:                                 ; preds = %if.then253.land.lhs.true239_crit_edge, %if.else.land.lhs.true239_crit_edge
  %call240 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call240, i64 %add.i511)
  %cmp3.i513 = icmp sgt i64 %call240, %add.i511
  br i1 %cmp3.i513, label %if.then243, label %if.then253

if.then243:                                       ; preds = %land.lhs.true239
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %noncore.i.i504 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %noncore.i.i504, align 4
  %add.ptr247 = getelementptr i8, ptr %98, i32 8
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr247) #6, !srcloc !100
  %100 = tail call i32 @llvm.bswap.i32(i32 %99)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  br label %for.end257

if.then253:                                       ; preds = %land.lhs.true239
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  %101 = ptrtoint ptr %noncore.i.i504 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %noncore.i.i504, align 4
  %add.ptr230 = getelementptr i8, ptr %102, i32 8
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr230) #6, !srcloc !100
  %104 = tail call i32 @llvm.bswap.i32(i32 %103)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %and234 = and i32 %104, 536870912
  %cmp235.not = icmp eq i32 %and234, 0
  br i1 %cmp235.not, label %if.then253.land.lhs.true239_crit_edge, label %if.then253.for.end257_crit_edge

if.then253.for.end257_crit_edge:                  ; preds = %if.then253
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end257

if.then253.land.lhs.true239_crit_edge:            ; preds = %if.then253
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true239

for.end257:                                       ; preds = %if.then253.for.end257_crit_edge, %if.then243, %if.else.for.end257_crit_edge
  %value.3 = phi i32 [ %100, %if.then243 ], [ %96, %if.else.for.end257_crit_edge ], [ %104, %if.then253.for.end257_crit_edge ]
  %and259 = and i32 %value.3, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and259)
  %cmp260.not = icmp eq i32 %and259, 0
  br i1 %cmp260.not, label %do.end266, label %for.end257.if.end267_crit_edge

for.end257.if.end267_crit_edge:                   ; preds = %for.end257
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end267

do.end266:                                        ; preds = %for.end257
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.27) #9
  br label %if.end267

if.end267:                                        ; preds = %do.end266, %for.end257.if.end267_crit_edge
  %105 = ptrtoint ptr %noncore.i.i504 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %noncore.i.i504, align 4
  %add.ptr.i517 = getelementptr i8, ptr %106, i32 12
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i517) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  %call272 = tail call i64 @ktime_get() #6
  %add.i518 = add i64 %call272, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 332) #6
  %108 = ptrtoint ptr %noncore.i.i504 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %noncore.i.i504, align 4
  %add.ptr290542 = getelementptr i8, ptr %109, i32 12
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr290542) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %111 = and i32 %110, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp295.not.not544 = icmp eq i32 %111, 0
  br i1 %cmp295.not.not544, label %if.end267.if.end327_crit_edge, label %if.end267.land.lhs.true299_crit_edge

if.end267.land.lhs.true299_crit_edge:             ; preds = %if.end267
  br label %land.lhs.true299

if.end267.if.end327_crit_edge:                    ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end327

land.lhs.true299:                                 ; preds = %if.then313.land.lhs.true299_crit_edge, %if.end267.land.lhs.true299_crit_edge
  %call300 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call300, i64 %add.i518)
  %cmp3.i520 = icmp sgt i64 %call300, %add.i518
  br i1 %cmp3.i520, label %for.end317, label %if.then313

if.then313:                                       ; preds = %land.lhs.true299
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  %112 = ptrtoint ptr %noncore.i.i504 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %noncore.i.i504, align 4
  %add.ptr290 = getelementptr i8, ptr %113, i32 12
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr290) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %115 = and i32 %114, 8388608
  %cmp295.not.not = icmp eq i32 %115, 0
  br i1 %cmp295.not.not, label %if.then313.if.end327_crit_edge, label %if.then313.land.lhs.true299_crit_edge

if.then313.land.lhs.true299_crit_edge:            ; preds = %if.then313
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true299

if.then313.if.end327_crit_edge:                   ; preds = %if.then313
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end327

for.end317:                                       ; preds = %land.lhs.true299
  %116 = ptrtoint ptr %noncore.i.i504 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %noncore.i.i504, align 4
  %add.ptr307 = getelementptr i8, ptr %117, i32 12
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr307) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  %119 = and i32 %118, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp320.not.not = icmp eq i32 %119, 0
  br i1 %cmp320.not.not, label %for.end317.if.end327_crit_edge, label %do.end326

for.end317.if.end327_crit_edge:                   ; preds = %for.end317
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end327

do.end326:                                        ; preds = %for.end317
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.30) #9
  br label %if.end327

if.end327:                                        ; preds = %do.end326, %for.end317.if.end327_crit_edge, %if.then313.if.end327_crit_edge, %if.end267.if.end327_crit_edge
  %add.ptr330 = getelementptr i8, ptr %7, i32 4
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr330) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %call337 = tail call i64 @ktime_get() #6
  %add.i523 = add i64 %call337, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 340) #6
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr330) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  %122 = and i32 %121, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp359.not.not547 = icmp eq i32 %122, 0
  br i1 %cmp359.not.not547, label %if.end327.cleanup_crit_edge, label %if.end327.land.lhs.true363_crit_edge

if.end327.land.lhs.true363_crit_edge:             ; preds = %if.end327
  br label %land.lhs.true363

if.end327.cleanup_crit_edge:                      ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true363:                                 ; preds = %if.then376.land.lhs.true363_crit_edge, %if.end327.land.lhs.true363_crit_edge
  %call364 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call364, i64 %add.i523)
  %cmp3.i525 = icmp sgt i64 %call364, %add.i523
  br i1 %cmp3.i525, label %for.end380, label %if.then376

if.then376:                                       ; preds = %land.lhs.true363
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr330) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  %124 = and i32 %123, 524288
  %cmp359.not.not = icmp eq i32 %124, 0
  br i1 %cmp359.not.not, label %if.then376.cleanup_crit_edge, label %if.then376.land.lhs.true363_crit_edge

if.then376.land.lhs.true363_crit_edge:            ; preds = %if.then376
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true363

if.then376.cleanup_crit_edge:                     ; preds = %if.then376
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end380:                                       ; preds = %land.lhs.true363
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr330) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  %126 = and i32 %125, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp383.not.not = icmp eq i32 %126, 0
  br i1 %cmp383.not.not, label %for.end380.cleanup_crit_edge, label %do.end389

for.end380.cleanup_crit_edge:                     ; preds = %for.end380
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end389:                                        ; preds = %for.end380
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.33) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end389, %for.end380.cleanup_crit_edge, %if.then376.cleanup_crit_edge, %if.end327.cleanup_crit_edge, %if.end181, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %cond175574, %if.end181 ], [ -110, %do.end389 ], [ 0, %for.end380.cleanup_crit_edge ], [ 0, %if.end327.cleanup_crit_edge ], [ 0, %if.then376.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_imx_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %num_clks = getelementptr inbounds %struct.cdns_imx, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.cdns_imx, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %3, ptr noundef %5) #6
  tail call void @clk_bulk_unprepare(i32 noundef %3, ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_imx_system_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %num_clks.i = getelementptr inbounds %struct.cdns_imx, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clks.i, align 4
  %clks.i = getelementptr inbounds %struct.cdns_imx, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clks.i, align 4
  %call.i.i = tail call i32 @clk_bulk_prepare(i32 noundef %3, ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = tail call i32 @clk_bulk_enable(i32 noundef %3, ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_bulk_unprepare(i32 noundef %3, ptr noundef %5) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %noncore.i.i = getelementptr inbounds %struct.cdns_imx, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %noncore.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %noncore.i.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !100
  %9 = shl i32 %8, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  call void @__sanitizer_cov_trace_const_cmp4(i32 -67108865, i32 %9)
  %cmp.i = icmp ugt i32 %9, -67108865
  br i1 %cmp.i, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_imx_system_resume.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_imx_system_resume, %if.then8)) #6
          to label %do.end [label %if.then8], !srcloc !123

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_imx_system_resume.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.37) #6
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %call10 = tail call fastcc i32 @cdns_imx_noncore_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.end.cleanup_crit_edge, label %if.then12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i, align 4
  %num_clks.i25 = getelementptr inbounds %struct.cdns_imx, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %num_clks.i25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_clks.i25, align 4
  %clks.i26 = getelementptr inbounds %struct.cdns_imx, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %clks.i26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clks.i26, align 4
  tail call void @clk_bulk_disable(i32 noundef %13, ptr noundef %15) #6
  tail call void @clk_bulk_unprepare(i32 noundef %13, ptr noundef %15) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then3.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then12 ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_imx_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %num_clks = getelementptr inbounds %struct.cdns_imx, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.cdns_imx, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clks, align 4
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef %3, ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_bulk_prepare_enable.exit_crit_edge

entry.clk_bulk_prepare_enable.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_bulk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %3, ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_bulk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_bulk_prepare_enable.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_bulk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_bulk_unprepare(i32 noundef %3, ptr noundef %5) #6
  br label %clk_bulk_prepare_enable.exit

clk_bulk_prepare_enable.exit:                     ; preds = %if.then3.i, %if.end.i.clk_bulk_prepare_enable.exit_crit_edge, %entry.clk_bulk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_bulk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_bulk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !47, !49, !51, !53, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !81, !83, !84, !85}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__initcall__kmod_cdns3_imx__296_426_cdns_imx_driver_init6, !1, !"__initcall__kmod_cdns3_imx__296_426_cdns_imx_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/cdns3/cdns3-imx.c", i32 426, i32 1}
!2 = !{ptr @__exitcall_cdns_imx_driver_exit, !1, !"__exitcall_cdns_imx_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias297, !4, !"__UNIQUE_ID_alias297", i1 false, i1 false}
!4 = !{!"../drivers/usb/cdns3/cdns3-imx.c", i32 428, i32 1}
!5 = !{ptr @__UNIQUE_ID_author298, !6, !"__UNIQUE_ID_author298", i1 false, i1 false}
!6 = !{!"../drivers/usb/cdns3/cdns3-imx.c", i32 429, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../drivers/usb/cdns3/cdns3-imx.c", i32 430, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_description301, !11, !"__UNIQUE_ID_description301", i1 false, i1 false}
!11 = !{!"../drivers/usb/cdns3/cdns3-imx.c", i32 431, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/cdns3/cdns3-imx.c", i32 421, i32 11}
!14 = !{ptr @cdns_imx_driver, !15, !"cdns_imx_driver", i1 false, i1 false}
!15 = !{!"../drivers/usb/cdns3/cdns3-imx.c", i32 417, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/cdns3/cdns3-imx.c", i32 183, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @cdns_imx_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @cdns_imx_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/cdns3/cdns3-imx.c", i32 207, i32 3}
!26 = !{ptr @cdns_imx_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @cdns_imx_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/cdns3/cdns3-imx.c", i32 108, i32 10}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/cdns3/cdns3-imx.c", i32 109, i32 10}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/cdns3/cdns3-imx.c", i32 110, i32 10}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/cdns3/cdns3-imx.c", i32 111, i32 10}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/cdns3/cdns3-imx.c", i32 112, i32 10}
!38 = !{ptr @imx_cdns3_core_clks, !39, !"imx_cdns3_core_clks", i1 false, i1 false}
!39 = !{!"../drivers/usb/cdns3/cdns3-imx.c", i32 107, i32 35}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/cdns3/cdns3-imx.c", i32 127, i32 3}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @cdns_imx_noncore_init._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @cdns_imx_noncore_init._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/cdns3/cdns3-imx.c", i32 159, i32 17}
!47 = !{ptr @cdns_imx_auxdata, !48, !"cdns_imx_auxdata", i1 false, i1 false}
!48 = !{!"../drivers/usb/cdns3/cdns3-imx.c", i32 157, i32 36}
!49 = !{ptr @cdns_imx_pdata, !50, !"cdns_imx_pdata", i1 false, i1 false}
!50 = !{!"../drivers/usb/cdns3/cdns3-imx.c", i32 152, i32 35}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/cdns3/cdns3-imx.c", i32 282, i32 4}
!53 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @cdns_imx_platform_suspend._entry, !52, !"_entry", i1 false, i1 false}
!56 = !{ptr @cdns_imx_platform_suspend._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/cdns3/cdns3-imx.c", i32 290, i32 4}
!59 = !{ptr @cdns_imx_platform_suspend._entry.20, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @cdns_imx_platform_suspend._entry_ptr.22, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/cdns3/cdns3-imx.c", i32 298, i32 4}
!63 = !{ptr @cdns_imx_platform_suspend._entry.23, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @cdns_imx_platform_suspend._entry_ptr.25, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/cdns3/cdns3-imx.c", i32 326, i32 4}
!67 = !{ptr @cdns_imx_platform_suspend._entry.26, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @cdns_imx_platform_suspend._entry_ptr.28, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/cdns3/cdns3-imx.c", i32 334, i32 4}
!71 = !{ptr @cdns_imx_platform_suspend._entry.29, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @cdns_imx_platform_suspend._entry_ptr.31, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/cdns3/cdns3-imx.c", i32 342, i32 4}
!75 = !{ptr @cdns_imx_platform_suspend._entry.32, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @cdns_imx_platform_suspend._entry_ptr.34, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @cdns_imx_of_match, !78, !"cdns_imx_of_match", i1 false, i1 false}
!78 = !{!"../drivers/usb/cdns3/cdns3-imx.c", i32 411, i32 34}
!79 = !{ptr @cdns_imx_pm_ops, !80, !"cdns_imx_pm_ops", i1 false, i1 false}
!80 = !{!"../drivers/usb/cdns3/cdns3-imx.c", i32 406, i32 32}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/cdns3/cdns3-imx.c", i32 388, i32 3}
!83 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @cdns_imx_system_resume.__UNIQUE_ID_ddebug295, !82, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i64 2148248411}
!96 = !{i64 733234, i64 733259, i64 733281, i64 733297, i64 733309, i64 733329, i64 733353, i64 733369, i64 733381}
!97 = !{i64 2148248599}
!98 = !{i64 2155350011}
!99 = !{i64 4656403}
!100 = !{i64 4656821}
!101 = !{i64 2155352477}
!102 = !{i64 2155352975}
!103 = !{i64 2155349621}
!104 = !{i64 2155361450}
!105 = !{i64 2155362350}
!106 = !{i64 2155364635}
!107 = !{i64 2155365133}
!108 = !{i64 2155368815}
!109 = !{i64 2155369313}
!110 = !{i64 2155372631}
!111 = !{i64 2155373129}
!112 = !{i64 2155375270}
!113 = !{i64 2155376170}
!114 = !{i64 2155376849}
!115 = !{i64 2155377157}
!116 = !{i64 2155379442}
!117 = !{i64 2155379940}
!118 = !{i64 2155383568}
!119 = !{i64 2155384066}
!120 = !{i64 2155386287}
!121 = !{i64 2155388244}
!122 = !{i64 2155388718}
!123 = !{i64 2148730807, i64 2148730812, i64 2148730825, i64 2148730869, i64 2148730903, i64 2148730924}
