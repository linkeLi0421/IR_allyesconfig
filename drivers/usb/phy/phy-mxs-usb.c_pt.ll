; ModuleID = '/llk/IR_all_yes/drivers/usb/phy/phy-mxs-usb.c_pt.bc'
source_filename = "../drivers/usb/phy/phy-mxs-usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mxs_phy_data = type { i32 }
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
%struct.mxs_phy = type { %struct.usb_phy, ptr, ptr, ptr, i32, i32, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }

@__initcall__kmod_phy_mxs_usb__300_868_mxs_phy_module_init2 = internal global ptr @mxs_phy_module_init, section ".initcall2.init", align 4
@mxs_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mxs_phy_probe, ptr @mxs_phy_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mxs_phy_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxs_phy_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mxs_phy_module_exit = internal global ptr @mxs_phy_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias301 = internal constant [39 x i8] c"phy_mxs_usb.alias=platform:mxs-usb-phy\00", section ".modinfo", align 1
@__UNIQUE_ID_author302 = internal constant [47 x i8] c"phy_mxs_usb.author=Marek Vasut <marex@denx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [61 x i8] c"phy_mxs_usb.author=Richard Zhao <richard.zhao@freescale.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [53 x i8] c"phy_mxs_usb.description=Freescale MXS USB PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [45 x i8] c"phy_mxs_usb.file=drivers/usb/phy/phy-mxs-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [24 x i8] c"phy_mxs_usb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mxs_phy\00", [24 x i8] zeroinitializer }, align 32
@mxs_phy_dt_ids = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sx-usbphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6sx_phy_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sl-usbphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6sl_phy_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-usbphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6q_phy_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx23-usbphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx23_phy_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-usbphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vf610_phy_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6ul-usbphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6ul_phy_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7ulp-usbphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx7ulp_phy_data }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@mxs_phy_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mxs_phy_system_suspend, ptr @mxs_phy_system_resume, ptr @mxs_phy_system_suspend, ptr @mxs_phy_system_resume, ptr @mxs_phy_system_suspend, ptr @mxs_phy_system_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mxs_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 727, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"can't get the clock, err=%ld\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mxs_phy_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/usb/phy/phy-mxs-usb.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mxs_phy_probe._entry_ptr = internal global ptr @mxs_phy_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsl,anatop\00", [21 x i8] zeroinitializer }, align 32
@mxs_phy_probe.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 -71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"phy_mxs_usb\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to find regmap for anatop\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fsl,tx-cal-45-dn-ohms\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fsl,tx-cal-45-dp-ohms\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl,tx-d-cal\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usbphy\00", [25 x i8] zeroinitializer }, align 32
@mxs_phy_probe.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 0, i8 -62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get alias id, errno %d\0A\00", [62 x i8] zeroinitializer }, align 32
@imx7ulp_phy_data = internal constant { %struct.mxs_phy_data, [28 x i8] } zeroinitializer, align 32
@mxs_phy_on_connect.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 0, i8 -120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mxs_phy_on_connect\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s device has connected\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HS\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FS/LS\00", [26 x i8] zeroinitializer }, align 32
@mxs_phy_on_disconnect.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 0, i8 -117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mxs_phy_on_disconnect\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s device has disconnected\0A\00", [36 x i8] zeroinitializer }, align 32
@mxs_charger_data_contact_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 580, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vbus is not valid\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mxs_charger_data_contact_detect\00", [32 x i8] zeroinitializer }, align 32
@mxs_charger_data_contact_detect._entry_ptr = internal global ptr @mxs_charger_data_contact_detect._entry, section ".printk_index", align 4
@mxs_charger_data_contact_detect._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.3, i32 613, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Data pin can't make good contact.\0A\00", [61 x i8] zeroinitializer }, align 32
@mxs_charger_data_contact_detect._entry_ptr.24 = internal global ptr @mxs_charger_data_contact_detect._entry.22, section ".printk_index", align 4
@mxs_charger_primary_detection.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 -95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mxs_charger_primary_detection\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"It is a standard downstream port\0A\00", [62 x i8] zeroinitializer }, align 32
@mxs_charger_secondary_detection.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 -89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mxs_charger_secondary_detection\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"It is a dedicate charging port\0A\00", [32 x i8] zeroinitializer }, align 32
@mxs_charger_secondary_detection.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.27, ptr @.str.3, ptr @.str.29, i8 0, i8 -88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"It is a charging downstream port\0A\00", [62 x i8] zeroinitializer }, align 32
@imx6sx_phy_data = internal constant { %struct.mxs_phy_data, [28 x i8] } { %struct.mxs_phy_data { i32 1 }, [28 x i8] zeroinitializer }, align 32
@imx6sl_phy_data = internal constant { %struct.mxs_phy_data, [28 x i8] } { %struct.mxs_phy_data { i32 9 }, [28 x i8] zeroinitializer }, align 32
@imx6q_phy_data = internal constant { %struct.mxs_phy_data, [28 x i8] } { %struct.mxs_phy_data { i32 13 }, [28 x i8] zeroinitializer }, align 32
@imx23_phy_data = internal constant { %struct.mxs_phy_data, [28 x i8] } { %struct.mxs_phy_data { i32 6 }, [28 x i8] zeroinitializer }, align 32
@vf610_phy_data = internal constant { %struct.mxs_phy_data, [28 x i8] } { %struct.mxs_phy_data { i32 9 }, [28 x i8] zeroinitializer }, align 32
@imx6ul_phy_data = internal constant { %struct.mxs_phy_data, [28 x i8] } { %struct.mxs_phy_data { i32 1 }, [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.35 = private unnamed_addr constant [15 x i8] c"mxs_phy_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 854, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 858, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [15 x i8] c"mxs_phy_dt_ids\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 187, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant [11 x i8] c"mxs_phy_pm\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 851, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 726, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 736, i32 26 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 740, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 747, i32 32 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 756, i32 32 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 765, i32 32 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 777, i32 28 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 779, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"imx7ulp_phy_data\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 184, i32 34 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 545, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 558, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 580, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 612, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 645, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 669, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 672, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [16 x i8] c"imx6sx_phy_data\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 176, i32 34 }
@___asan_gen_.143 = private unnamed_addr constant [16 x i8] c"imx6sl_phy_data\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 166, i32 34 }
@___asan_gen_.146 = private unnamed_addr constant [15 x i8] c"imx6q_phy_data\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 160, i32 34 }
@___asan_gen_.149 = private unnamed_addr constant [15 x i8] c"imx23_phy_data\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 156, i32 34 }
@___asan_gen_.152 = private unnamed_addr constant [15 x i8] c"vf610_phy_data\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 171, i32 34 }
@___asan_gen_.155 = private unnamed_addr constant [16 x i8] c"imx6ul_phy_data\00", align 1
@___asan_gen_.156 = private constant [33 x i8] c"../drivers/usb/phy/phy-mxs-usb.c\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 180, i32 34 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_alias301, ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_mxs_phy_module_exit, ptr @__initcall__kmod_phy_mxs_usb__300_868_mxs_phy_module_init2, ptr @mxs_charger_data_contact_detect._entry, ptr @mxs_charger_data_contact_detect._entry.22, ptr @mxs_charger_data_contact_detect._entry_ptr, ptr @mxs_charger_data_contact_detect._entry_ptr.24, ptr @mxs_phy_module_exit, ptr @mxs_phy_probe._entry, ptr @mxs_phy_probe._entry_ptr, ptr @mxs_phy_driver, ptr @.str, ptr @mxs_phy_dt_ids, ptr @mxs_phy_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @imx7ulp_phy_data, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @imx6sx_phy_data, ptr @imx6sl_phy_data, ptr @imx6q_phy_data, ptr @imx23_phy_data, ptr @vf610_phy_data, ptr @imx6ul_phy_data], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_phy_dt_ids to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_phy_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7ulp_phy_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_charger_data_contact_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_charger_data_contact_detect._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6sx_phy_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6sl_phy_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_phy_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx23_phy_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_phy_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6ul_phy_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_phy_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mxs_phy_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mxs_phy_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mxs_phy_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !101
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %cmp.i175 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i175, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call4 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %4) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 284, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %call15 = tail call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef null) #6
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end14.if.end35_crit_edge, label %if.then17

if.end14.if.end35_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then17:                                        ; preds = %if.end14
  %call18 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.6) #6
  %regmap_anatop = getelementptr inbounds %struct.mxs_phy, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %regmap_anatop to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call18, ptr %regmap_anatop, align 4
  %cmp.i176 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i176, label %do.body22, label %if.then17.if.end35_crit_edge

if.then17.if.end35_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

do.body22:                                        ; preds = %if.then17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxs_phy_probe.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxs_phy_probe, %if.then27)) #6
          to label %do.end31 [label %if.then27], !srcloc !102

if.then27:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxs_phy_probe.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.8) #6
  br label %do.end31

do.end31:                                         ; preds = %if.then27, %do.body22
  %6 = ptrtoint ptr %regmap_anatop to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap_anatop, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.then17.if.end35_crit_edge, %if.end14.if.end35_crit_edge
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool37.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool37.not, label %land.lhs.true, label %if.end35.if.end42_crit_edge

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

land.lhs.true:                                    ; preds = %if.end35
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %11 = add i32 %10, -30
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %11)
  %12 = icmp ult i32 %11, 26
  br i1 %12, label %if.then40, label %land.lhs.true.if.end42_crit_edge

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then40:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %13 = trunc i32 %10 to i16
  %14 = sub nuw nsw i16 55, %13
  %div.lhs.trunc = mul nuw nsw i16 %14, 15
  %div181 = udiv i16 %div.lhs.trunc, 25
  %div.zext = zext i16 %div181 to i32
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div.zext, ptr %val, align 4
  %tx_reg_mask = getelementptr inbounds %struct.mxs_phy, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %tx_reg_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_reg_mask, align 4
  %or = or i32 %17, 3840
  store i32 %or, ptr %tx_reg_mask, align 4
  %and = shl nuw nsw i32 %div.zext, 8
  %shl = and i32 %and, 3840
  %tx_reg_set = getelementptr inbounds %struct.mxs_phy, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %tx_reg_set to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_reg_set, align 4
  %or41 = or i32 %19, %shl
  store i32 %or41, ptr %tx_reg_set, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %land.lhs.true.if.end42_crit_edge, %if.end35.if.end42_crit_edge
  %call.i.i177 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i177)
  %tobool44.not = icmp sgt i32 %call.i.i177, -1
  br i1 %tobool44.not, label %land.lhs.true45, label %if.end42.if.end59_crit_edge

if.end42.if.end59_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

land.lhs.true45:                                  ; preds = %if.end42
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  %22 = add i32 %21, -30
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %22)
  %23 = icmp ult i32 %22, 26
  br i1 %23, label %if.then49, label %land.lhs.true45.if.end59_crit_edge

land.lhs.true45.if.end59_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then49:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #8
  %24 = trunc i32 %21 to i16
  %25 = sub nuw nsw i16 55, %24
  %div52.lhs.trunc = mul nuw nsw i16 %25, 15
  %div52182 = udiv i16 %div52.lhs.trunc, 25
  %div52.zext = zext i16 %div52182 to i32
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div52.zext, ptr %val, align 4
  %tx_reg_mask53 = getelementptr inbounds %struct.mxs_phy, ptr %call.i, i32 0, i32 6
  %27 = ptrtoint ptr %tx_reg_mask53 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_reg_mask53, align 4
  %or54 = or i32 %28, 983040
  store i32 %or54, ptr %tx_reg_mask53, align 4
  %and55 = shl nuw nsw i32 %div52.zext, 16
  %shl56 = and i32 %and55, 983040
  %tx_reg_set57 = getelementptr inbounds %struct.mxs_phy, ptr %call.i, i32 0, i32 5
  %29 = ptrtoint ptr %tx_reg_set57 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_reg_set57, align 4
  %or58 = or i32 %30, %shl56
  store i32 %or58, ptr %tx_reg_set57, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then49, %land.lhs.true45.if.end59_crit_edge, %if.end42.if.end59_crit_edge
  %call.i.i178 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i178)
  %tobool61.not = icmp sgt i32 %call.i.i178, -1
  br i1 %tobool61.not, label %land.lhs.true62, label %if.end59.if.end76_crit_edge

if.end59.if.end76_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

land.lhs.true62:                                  ; preds = %if.end59
  %31 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val, align 4
  %33 = add i32 %32, -79
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %33)
  %34 = icmp ult i32 %33, 41
  br i1 %34, label %if.then66, label %land.lhs.true62.if.end76_crit_edge

land.lhs.true62.if.end76_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then66:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  %35 = trunc i32 %32 to i16
  %36 = sub nuw nsw i16 119, %35
  %37 = mul nuw nsw i16 %36, 15
  %div69.lhs.trunc = add nuw nsw i16 %37, 26
  %div69183 = udiv i16 %div69.lhs.trunc, 40
  %div69.zext = zext i16 %div69183 to i32
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %div69.zext, ptr %val, align 4
  %tx_reg_mask70 = getelementptr inbounds %struct.mxs_phy, ptr %call.i, i32 0, i32 6
  %39 = ptrtoint ptr %tx_reg_mask70 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_reg_mask70, align 4
  %or71 = or i32 %40, 15
  store i32 %or71, ptr %tx_reg_mask70, align 4
  %tx_reg_set74 = getelementptr inbounds %struct.mxs_phy, ptr %call.i, i32 0, i32 5
  %41 = ptrtoint ptr %tx_reg_set74 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_reg_set74, align 4
  %or75 = or i32 %42, %div69.zext
  store i32 %or75, ptr %tx_reg_set74, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then66, %land.lhs.true62.if.end76_crit_edge, %if.end59.if.end76_crit_edge
  %call77 = call i32 @of_alias_get_id(ptr noundef %1, ptr noundef nonnull @.str.12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %do.body80, label %if.end76.if.end97_crit_edge

if.end76.if.end97_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

do.body80:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxs_phy_probe.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxs_phy_probe, %if.then92)) #6
          to label %if.end97 [label %if.then92], !srcloc !102

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxs_phy_probe.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call77) #6
  br label %if.end97

if.end97:                                         ; preds = %if.then92, %do.body80, %if.end76.if.end97_crit_edge
  %port_id = getelementptr inbounds %struct.mxs_phy, ptr %call.i, i32 0, i32 4
  %43 = ptrtoint ptr %port_id to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call77, ptr %port_id, align 4
  %io_priv = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 8
  %44 = ptrtoint ptr %io_priv to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call, ptr %io_priv, align 4
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %dev, ptr %call.i, align 4
  %label = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 1
  %46 = ptrtoint ptr %label to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str, ptr %label, align 4
  %init = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 22
  %47 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @mxs_phy_init, ptr %init, align 4
  %shutdown = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 23
  %48 = ptrtoint ptr %shutdown to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @mxs_phy_shutdown, ptr %shutdown, align 4
  %set_suspend = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 26
  %49 = ptrtoint ptr %set_suspend to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @mxs_phy_suspend, ptr %set_suspend, align 4
  %notify_connect = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 28
  %50 = ptrtoint ptr %notify_connect to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @mxs_phy_on_connect, ptr %notify_connect, align 4
  %notify_disconnect = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 29
  %51 = ptrtoint ptr %notify_disconnect to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @mxs_phy_on_disconnect, ptr %notify_disconnect, align 4
  %type = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 3
  %52 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %type, align 4
  %set_wakeup = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 27
  %53 = ptrtoint ptr %set_wakeup to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @mxs_phy_set_wakeup, ptr %set_wakeup, align 4
  %charger_detect = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 30
  %54 = ptrtoint ptr %charger_detect to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @mxs_phy_charger_detect, ptr %charger_detect, align 4
  %clk110 = getelementptr inbounds %struct.mxs_phy, ptr %call.i, i32 0, i32 1
  %55 = ptrtoint ptr %clk110 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call4, ptr %clk110, align 4
  %call112 = call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %data = getelementptr inbounds %struct.mxs_phy, ptr %call.i, i32 0, i32 2
  %56 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call112, ptr %data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %57 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @device_set_wakeup_capable(ptr noundef %dev, i1 noundef zeroext true) #6
  %call115 = call i32 @usb_add_phy_dev(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %do.end31, %if.end10.cleanup_crit_edge, %do.end, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %4, %do.end ], [ %8, %do.end31 ], [ %call115, %if.end97 ], [ -12, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_phy_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @usb_remove_phy(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_phy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usleep_range_state(i32 noundef 300, i32 noundef 400, i32 noundef 2) #6
  %clk = getelementptr inbounds %struct.mxs_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %1) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %io_priv.i = getelementptr inbounds %struct.usb_phy, ptr %phy, i32 0, i32 8
  %2 = ptrtoint ptr %io_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_priv.i, align 4
  %data.i.i = getelementptr inbounds %struct.mxs_phy, ptr %phy, i32 0, i32 2
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp eq ptr %5, @imx7ulp_phy_data
  br i1 %cmp.i.i, label %if.then.i, label %if.end.if.end3.i_crit_edge

if.end.if.end3.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.then.i:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %add.ptr.i8 = getelementptr i8, ptr %3, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 8192) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  %add.ptr4.i = getelementptr i8, ptr %3, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 256) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 1048576) #6, !srcloc !103
  %call.i9 = tail call i64 @ktime_get() #6
  %add.i.i = add i64 %call.i9, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 259) #6
  %add.ptr20.i = getelementptr i8, ptr %3, i32 160
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #6, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  %.mask92.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask92.i)
  %cmp23.not93.i = icmp eq i32 %.mask92.i, 0
  br i1 %cmp23.not93.i, label %if.then.i.land.lhs.true.i_crit_edge, label %if.then.i.mxs_phy_pll_enable.exit.thread_crit_edge

if.then.i.mxs_phy_pll_enable.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxs_phy_pll_enable.exit.thread

if.then.i.land.lhs.true.i_crit_edge:              ; preds = %if.then.i
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then39.i.land.lhs.true.i_crit_edge, %if.then.i.land.lhs.true.i_crit_edge
  %call27.i = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call27.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call27.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then39.i

if.then39.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #6
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #6, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  %.mask.i = and i32 %7, 128
  %cmp23.not.i = icmp eq i32 %.mask.i, 0
  br i1 %cmp23.not.i, label %if.then39.i.land.lhs.true.i_crit_edge, label %if.then39.i.mxs_phy_pll_enable.exit.thread_crit_edge

if.then39.i.mxs_phy_pll_enable.exit.thread_crit_edge: ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxs_phy_pll_enable.exit.thread

if.then39.i.land.lhs.true.i_crit_edge:            ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #6, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  %.mask90.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask90.i)
  %cmp43.not.inv.not.i = icmp eq i32 %.mask90.i, 0
  br i1 %cmp43.not.inv.not.i, label %for.end.i.cleanup_crit_edge, label %for.end.i.mxs_phy_pll_enable.exit.thread_crit_edge

for.end.i.mxs_phy_pll_enable.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxs_phy_pll_enable.exit.thread

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mxs_phy_pll_enable.exit.thread:                   ; preds = %for.end.i.mxs_phy_pll_enable.exit.thread_crit_edge, %if.then39.i.mxs_phy_pll_enable.exit.thread_crit_edge, %if.then.i.mxs_phy_pll_enable.exit.thread_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 1073741824) #6, !srcloc !103
  br label %if.end3.i

if.end3.i:                                        ; preds = %mxs_phy_pll_enable.exit.thread, %if.end.if.end3.i_crit_edge
  %add.ptr.i = getelementptr i8, ptr %3, i32 48
  %call4.i = tail call i32 @stmp_reset_block(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %do.body.i, label %disable_pll.i

do.body.i:                                        ; preds = %if.end3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %add.ptr12.i = getelementptr i8, ptr %3, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 12590086) #6, !srcloc !103
  %9 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %and.i = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %do.body.i.if.end19.i_crit_edge, label %do.body15.i

do.body.i.if.end19.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

do.body15.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
  %add.ptr18.i = getelementptr i8, ptr %3, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 1536) #6, !srcloc !103
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.body15.i, %do.body.i.if.end19.i_crit_edge
  %regmap_anatop.i = getelementptr inbounds %struct.mxs_phy, ptr %phy, i32 0, i32 3
  %13 = ptrtoint ptr %regmap_anatop.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap_anatop.i, align 4
  %tobool20.not.i = icmp eq ptr %14, null
  br i1 %tobool20.not.i, label %if.end19.i.if.end25.i_crit_edge, label %if.then21.i

if.end19.i.if.end25.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %port_id.i = getelementptr inbounds %struct.mxs_phy, ptr %phy, i32 0, i32 4
  %15 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool22.not.i = icmp eq i32 %16, 0
  %cond.i = select i1 %tobool22.not.i, i32 532, i32 436
  %call24.i = tail call i32 @regmap_write(ptr noundef nonnull %14, i32 noundef %cond.i, i32 noundef 1572864) #6
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then21.i, %if.end19.i.if.end25.i_crit_edge
  %tx_reg_mask.i.i = getelementptr inbounds %struct.mxs_phy, ptr %phy, i32 0, i32 6
  %17 = ptrtoint ptr %tx_reg_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_reg_mask.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i, label %if.end25.i.cleanup_crit_edge, label %if.then.i.i

if.end25.i.cleanup_crit_edge:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %io_priv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io_priv.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 16
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !106
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  %23 = ptrtoint ptr %tx_reg_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_reg_mask.i.i, align 4
  %neg.i.i = xor i32 %24, -1
  %and.i.i = and i32 %22, %neg.i.i
  %tx_reg_set.i.i = getelementptr inbounds %struct.mxs_phy, ptr %phy, i32 0, i32 5
  %25 = ptrtoint ptr %tx_reg_set.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_reg_set.i.i, align 4
  %or.i.i = or i32 %and.i.i, %26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %27 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %27) #6, !srcloc !103
  br label %cleanup

disable_pll.i:                                    ; preds = %if.end3.i
  %28 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i, align 4
  %cmp.i47.i = icmp eq ptr %29, @imx7ulp_phy_data
  br i1 %cmp.i47.i, label %if.then27.i, label %disable_pll.i.cleanup_crit_edge

disable_pll.i.cleanup_crit_edge:                  ; preds = %disable_pll.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then27.i:                                      ; preds = %disable_pll.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %add.ptr54.i.i = getelementptr i8, ptr %3, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i.i, i32 1073741824) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i.i, i32 1048576) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void @arm_heavy_mb() #6
  %add.ptr62.i.i = getelementptr i8, ptr %3, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62.i.i, i32 256) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i.i, i32 8192) #6, !srcloc !103
  br label %cleanup

cleanup:                                          ; preds = %if.then27.i, %disable_pll.i.cleanup_crit_edge, %if.then.i.i, %if.end25.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4.i, %if.then27.i ], [ %call4.i, %disable_pll.i.cleanup_crit_edge ], [ 0, %if.end25.i.cleanup_crit_edge ], [ 0, %if.then.i.i ], [ -110, %for.end.i.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxs_phy_shutdown(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  %io_priv = getelementptr inbounds %struct.usb_phy, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %io_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_priv, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 64518) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %io_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_priv, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 -1) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %io_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_priv, align 4
  %add.ptr11 = getelementptr i8, ptr %5, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 64) #6, !srcloc !103
  %data.i = getelementptr inbounds %struct.mxs_phy, ptr %phy, i32 0, i32 2
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp eq ptr %7, @imx7ulp_phy_data
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %io_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_priv, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %add.ptr54.i = getelementptr i8, ptr %9, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i, i32 1073741824) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i, i32 1048576) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void @arm_heavy_mb() #6
  %add.ptr62.i = getelementptr i8, ptr %9, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62.i, i32 256) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i, i32 8192) #6, !srcloc !103
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %clk = getelementptr inbounds %struct.mxs_phy, ptr %phy, i32 0, i32 1
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %11) #6
  tail call void @clk_unprepare(ptr noundef %11) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_phy_suspend(ptr nocapture noundef readonly %x, i32 noundef %suspend) #2 align 64 {
entry:
  %vbus_value.i = alloca i32, align 4
  %line_state.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %line_state.i) #6
  %0 = ptrtoint ptr %line_state.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %line_state.i, align 4, !annotation !101
  %regmap_anatop.i = getelementptr inbounds %struct.mxs_phy, ptr %x, i32 0, i32 3
  %1 = ptrtoint ptr %regmap_anatop.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap_anatop.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %mxs_phy_is_low_speed_connection.exit.thread, label %mxs_phy_is_low_speed_connection.exit

mxs_phy_is_low_speed_connection.exit.thread:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %line_state.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vbus_value.i) #6
  br label %mxs_phy_get_vbus_status.exit

mxs_phy_is_low_speed_connection.exit:             ; preds = %entry
  %port_id.i = getelementptr inbounds %struct.mxs_phy, ptr %x, i32 0, i32 4
  %3 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cond.i = icmp eq i32 %4, 1
  %spec.select.i = select i1 %cond.i, i32 592, i32 496
  %call.i = call i32 @regmap_read(ptr noundef nonnull %2, i32 noundef %spec.select.i, ptr noundef nonnull %line_state.i) #6
  %5 = ptrtoint ptr %line_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %line_state.i, align 4
  %and.i = and i32 %6, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %and.i)
  %cmp8.i = icmp eq i32 %and.i, 268435456
  %7 = ptrtoint ptr %regmap_anatop.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load ptr, ptr %regmap_anatop.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %line_state.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vbus_value.i) #6
  %8 = ptrtoint ptr %vbus_value.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %vbus_value.i, align 4
  %tobool.not.i50 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i50, label %mxs_phy_is_low_speed_connection.exit.mxs_phy_get_vbus_status.exit_crit_edge, label %if.end.i52

mxs_phy_is_low_speed_connection.exit.mxs_phy_get_vbus_status.exit_crit_edge: ; preds = %mxs_phy_is_low_speed_connection.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxs_phy_get_vbus_status.exit

if.end.i52:                                       ; preds = %mxs_phy_is_low_speed_connection.exit
  %9 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port_id.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.end.i52.if.end9.i_crit_edge [
    i32 0, label %if.end.i52.if.end9.sink.split.i_crit_edge
    i32 1, label %if.then5.i
  ]

if.end.i52.if.end9.sink.split.i_crit_edge:        ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.sink.split.i

if.end.i52.if.end9.i_crit_edge:                   ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.then5.i:                                       ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.sink.split.i

if.end9.sink.split.i:                             ; preds = %if.then5.i, %if.end.i52.if.end9.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 544, %if.then5.i ], [ 448, %if.end.i52.if.end9.sink.split.i_crit_edge ]
  %call7.i = call i32 @regmap_read(ptr noundef nonnull %.pr, i32 noundef %.sink.i, ptr noundef nonnull %vbus_value.i) #6
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end9.sink.split.i, %if.end.i52.if.end9.i_crit_edge
  %12 = ptrtoint ptr %vbus_value.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vbus_value.i, align 4
  %and.i53 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53)
  %tobool10.not.i = icmp ne i32 %and.i53, 0
  br label %mxs_phy_get_vbus_status.exit

mxs_phy_get_vbus_status.exit:                     ; preds = %if.end9.i, %mxs_phy_is_low_speed_connection.exit.mxs_phy_get_vbus_status.exit_crit_edge, %mxs_phy_is_low_speed_connection.exit.thread
  %retval.0.i61 = phi i1 [ %cmp8.i, %mxs_phy_is_low_speed_connection.exit.mxs_phy_get_vbus_status.exit_crit_edge ], [ %cmp8.i, %if.end9.i ], [ false, %mxs_phy_is_low_speed_connection.exit.thread ]
  %retval.0.i54 = phi i1 [ false, %mxs_phy_is_low_speed_connection.exit.mxs_phy_get_vbus_status.exit_crit_edge ], [ %tobool10.not.i, %if.end9.i ], [ false, %mxs_phy_is_low_speed_connection.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vbus_value.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %suspend)
  %tobool.not = icmp eq i32 %suspend, 0
  br i1 %tobool.not, label %if.else19, label %if.then

if.then:                                          ; preds = %mxs_phy_get_vbus_status.exit
  %and48 = and i1 %retval.0.i61, %retval.0.i54
  br i1 %and48, label %if.then7, label %do.body9

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @usleep_range_state(i32 noundef 300, i32 noundef 400, i32 noundef 2) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  call void @arm_heavy_mb() #6
  %io_priv = getelementptr inbounds %struct.usb_phy, ptr %x, i32 0, i32 8
  %14 = ptrtoint ptr %io_priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_priv, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 -16385) #6, !srcloc !103
  br label %do.body14

do.body9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  call void @arm_heavy_mb() #6
  %io_priv12 = getelementptr inbounds %struct.usb_phy, ptr %x, i32 0, i32 8
  %16 = ptrtoint ptr %io_priv12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_priv12, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 -1) #6, !srcloc !103
  br label %do.body14

do.body14:                                        ; preds = %do.body9, %if.then7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  call void @arm_heavy_mb() #6
  %io_priv17 = getelementptr inbounds %struct.usb_phy, ptr %x, i32 0, i32 8
  %18 = ptrtoint ptr %io_priv17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_priv17, align 4
  %add.ptr18 = getelementptr i8, ptr %19, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 64) #6, !srcloc !103
  %clk = getelementptr inbounds %struct.mxs_phy, ptr %x, i32 0, i32 1
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %21) #6
  call void @clk_unprepare(ptr noundef %21) #6
  br label %cleanup

if.else19:                                        ; preds = %mxs_phy_get_vbus_status.exit
  call void @usleep_range_state(i32 noundef 300, i32 noundef 400, i32 noundef 2) #6
  %clk20 = getelementptr inbounds %struct.mxs_phy, ptr %x, i32 0, i32 1
  %22 = ptrtoint ptr %clk20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk20, align 4
  %call.i55 = call i32 @clk_prepare(ptr noundef %23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool.not.i56 = icmp eq i32 %call.i55, 0
  br i1 %tobool.not.i56, label %if.end.i57, label %if.else19.cleanup_crit_edge

if.else19.cleanup_crit_edge:                      ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i57:                                       ; preds = %if.else19
  %call1.i = call i32 @clk_enable(ptr noundef %23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.body25, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %23) #6
  br label %cleanup

do.body25:                                        ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  call void @arm_heavy_mb() #6
  %io_priv28 = getelementptr inbounds %struct.usb_phy, ptr %x, i32 0, i32 8
  %24 = ptrtoint ptr %io_priv28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_priv28, align 4
  %add.ptr29 = getelementptr i8, ptr %25, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 64) #6, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %io_priv28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_priv28, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 0) #6, !srcloc !103
  br label %cleanup

cleanup:                                          ; preds = %do.body25, %if.then3.i, %if.else19.cleanup_crit_edge, %do.body14
  %retval.0 = phi i32 [ 0, %do.body25 ], [ 0, %do.body14 ], [ %call1.i, %if.then3.i ], [ %call.i55, %if.else19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_phy_on_connect(ptr nocapture noundef readonly %phy, i32 noundef %speed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxs_phy_on_connect.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxs_phy_on_connect, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !102

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %speed)
  %cmp = icmp eq i32 %speed, 3
  %cond = select i1 %cmp, ptr @.str.16, ptr @.str.17
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxs_phy_on_connect.__UNIQUE_ID_ddebug293, ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef nonnull %cond) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %speed)
  %cmp3 = icmp eq i32 %speed, 3
  br i1 %cmp3, label %do.body5, label %do.end.if.end7_crit_edge

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

do.body5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  tail call void @arm_heavy_mb() #6
  %io_priv = getelementptr inbounds %struct.usb_phy, ptr %phy, i32 0, i32 8
  %2 = ptrtoint ptr %io_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_priv, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #6, !srcloc !103
  br label %if.end7

if.end7:                                          ; preds = %do.body5, %do.end.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_phy_on_disconnect(ptr nocapture noundef readonly %phy, i32 noundef %speed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxs_phy_on_disconnect.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxs_phy_on_disconnect, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !102

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %speed)
  %cmp = icmp eq i32 %speed, 3
  %cond = select i1 %cmp, ptr @.str.16, ptr @.str.17
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxs_phy_on_disconnect.__UNIQUE_ID_ddebug294, ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef nonnull %cond) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %io_priv = getelementptr inbounds %struct.usb_phy, ptr %phy, i32 0, i32 8
  %2 = ptrtoint ptr %io_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_priv, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 48
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  %5 = and i32 %4, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %do.end.if.end12_crit_edge, label %do.body8

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.body8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %io_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_priv, align 4
  %add.ptr11 = getelementptr i8, ptr %7, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 33554432) #6, !srcloc !103
  br label %if.end12

if.end12:                                         ; preds = %do.body8, %do.end.if.end12_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_phy_set_wakeup(ptr nocapture noundef readonly %x, i1 noundef zeroext %enabled) #2 align 64 {
entry:
  %vbus_value.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enabled, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @mxs_phy_disconnect_line(ptr noundef %x, i1 noundef zeroext true)
  %io_priv = getelementptr inbounds %struct.usb_phy, ptr %x, i32 0, i32 8
  %0 = ptrtoint ptr %io_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_priv, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 57344) #6, !srcloc !103
  br label %if.end

if.else:                                          ; preds = %entry
  %io_priv2 = getelementptr inbounds %struct.usb_phy, ptr %x, i32 0, i32 8
  %2 = ptrtoint ptr %io_priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_priv2, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 57344) #6, !srcloc !103
  %data.i = getelementptr inbounds %struct.mxs_phy, ptr %x, i32 0, i32 2
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.if.end_crit_edge, label %if.end.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %if.else
  %regmap_anatop.i = getelementptr inbounds %struct.mxs_phy, ptr %x, i32 0, i32 3
  %8 = ptrtoint ptr %regmap_anatop.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap_anatop.i, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %if.end.i.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vbus_value.i.i) #6
  %10 = ptrtoint ptr %vbus_value.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %vbus_value.i.i, align 4
  %port_id.i.i = getelementptr inbounds %struct.mxs_phy, ptr %x, i32 0, i32 4
  %11 = ptrtoint ptr %port_id.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port_id.i.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %12, label %if.end.i.i.mxs_phy_get_vbus_status.exit.i_crit_edge [
    i32 0, label %if.end.i.i.if.end9.sink.split.i.i_crit_edge
    i32 1, label %if.then5.i.i
  ]

if.end.i.i.if.end9.sink.split.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.sink.split.i.i

if.end.i.i.mxs_phy_get_vbus_status.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxs_phy_get_vbus_status.exit.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.sink.split.i.i

if.end9.sink.split.i.i:                           ; preds = %if.then5.i.i, %if.end.i.i.if.end9.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 544, %if.then5.i.i ], [ 448, %if.end.i.i.if.end9.sink.split.i.i_crit_edge ]
  %call7.i.i = call i32 @regmap_read(ptr noundef nonnull %9, i32 noundef %.sink.i.i, ptr noundef nonnull %vbus_value.i.i) #6
  %14 = ptrtoint ptr %port_id.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %port_id.i.i, align 4
  br label %mxs_phy_get_vbus_status.exit.i

mxs_phy_get_vbus_status.exit.i:                   ; preds = %if.end9.sink.split.i.i, %if.end.i.i.mxs_phy_get_vbus_status.exit.i_crit_edge
  %15 = phi i32 [ %.pr, %if.end9.sink.split.i.i ], [ %12, %if.end.i.i.mxs_phy_get_vbus_status.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vbus_value.i.i) #6
  %16 = ptrtoint ptr %io_priv2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_priv2, align 4
  %18 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %15, label %mxs_phy_get_vbus_status.exit.i.__mxs_phy_disconnect_line.exit31.i_crit_edge [
    i32 0, label %mxs_phy_get_vbus_status.exit.i.if.end11.sink.split.i30.i_crit_edge
    i32 1, label %if.then5.i26.i
  ]

mxs_phy_get_vbus_status.exit.i.if.end11.sink.split.i30.i_crit_edge: ; preds = %mxs_phy_get_vbus_status.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.sink.split.i30.i

mxs_phy_get_vbus_status.exit.i.__mxs_phy_disconnect_line.exit31.i_crit_edge: ; preds = %mxs_phy_get_vbus_status.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__mxs_phy_disconnect_line.exit31.i

if.then5.i26.i:                                   ; preds = %mxs_phy_get_vbus_status.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.sink.split.i30.i

if.end11.sink.split.i30.i:                        ; preds = %if.then5.i26.i, %mxs_phy_get_vbus_status.exit.i.if.end11.sink.split.i30.i_crit_edge
  %cond7.sink.i27.i = phi i32 [ 584, %if.then5.i26.i ], [ 488, %mxs_phy_get_vbus_status.exit.i.if.end11.sink.split.i30.i_crit_edge ]
  %19 = ptrtoint ptr %regmap_anatop.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap_anatop.i, align 4
  %call9.i29.i = call i32 @regmap_write(ptr noundef %20, i32 noundef %cond7.sink.i27.i, i32 noundef 36) #6
  br label %__mxs_phy_disconnect_line.exit31.i

__mxs_phy_disconnect_line.exit31.i:               ; preds = %if.end11.sink.split.i30.i, %mxs_phy_get_vbus_status.exit.i.__mxs_phy_disconnect_line.exit31.i_crit_edge
  %add.ptr14.i.i = getelementptr i8, ptr %17, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i.i, i32 64) #6, !srcloc !103
  br label %if.end

if.end:                                           ; preds = %__mxs_phy_disconnect_line.exit31.i, %if.end.i.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_phy_charger_detect(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  %val.i24 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap_anatop = getelementptr inbounds %struct.mxs_phy, ptr %phy, i32 0, i32 3
  %0 = ptrtoint ptr %regmap_anatop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap_anatop, align 4
  %io_priv = getelementptr inbounds %struct.usb_phy, ptr %phy, i32 0, i32 8
  %2 = ptrtoint ptr %io_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !101
  %call.i = call i32 @regmap_read(ptr noundef nonnull %1, i32 noundef 448, ptr noundef nonnull %val.i) #6
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %and.i = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.20) #9
  br label %mxs_charger_data_contact_detect.exit.thread

if.end.i:                                         ; preds = %if.end
  %call1.i = call i32 @regmap_write(ptr noundef nonnull %1, i32 noundef 440, i32 noundef 1048576) #6
  %call2.i = call i32 @regmap_write(ptr noundef nonnull %1, i32 noundef 436, i32 noundef 786432) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i
  %stable_contact_count.037.i = phi i32 [ 0, %if.end.i ], [ %stable_contact_count.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.036.i = phi i32 [ 0, %if.end.i ], [ %inc12.i, %for.inc.i.for.body.i_crit_edge ]
  %call3.i = call i32 @regmap_read(ptr noundef nonnull %1, i32 noundef 464, ptr noundef nonnull %val.i) #6
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  %and4.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then6.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i
  %inc.i = add i32 %stable_contact_count.037.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc.i)
  %cmp7.i = icmp sgt i32 %inc.i, 5
  br i1 %cmp7.i, label %if.end3, label %if.then6.i.for.inc.i_crit_edge

if.then6.i.for.inc.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %.sink.i = phi i32 [ 10000, %if.then6.i.for.inc.i_crit_edge ], [ 6000, %for.body.i.for.inc.i_crit_edge ]
  %stable_contact_count.1.i = phi i32 [ %inc.i, %if.then6.i.for.inc.i_crit_edge ], [ 0, %for.body.i.for.inc.i_crit_edge ]
  call void @usleep_range_state(i32 noundef 5000, i32 noundef %.sink.i, i32 noundef 2) #6
  %inc12.i = add nuw nsw i32 %i.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc12.i, 100
  br i1 %exitcond.not.i, label %do.end17.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

do.end17.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phy, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.23) #9
  %call20.i = call i32 @regmap_write(ptr noundef nonnull %1, i32 noundef 436, i32 noundef 1572864) #6
  br label %mxs_charger_data_contact_detect.exit.thread

mxs_charger_data_contact_detect.exit.thread:      ; preds = %do.end17.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

if.end3:                                          ; preds = %if.then6.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %call4 = call fastcc i32 @mxs_charger_primary_detection(ptr noundef %phy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 1
  br i1 %cmp.not, label %if.end3.cleanup_crit_edge, label %if.then5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %if.end3
  %add.ptr6 = getelementptr i8, ptr %3, i32 88
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 64) #6, !srcloc !103
  %call7 = call i32 @regmap_write(ptr noundef nonnull %1, i32 noundef 484, i32 noundef 1) #6
  %13 = ptrtoint ptr %regmap_anatop to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap_anatop, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i24) #6
  %15 = ptrtoint ptr %val.i24 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %val.i24, align 4, !annotation !101
  call void @msleep(i32 noundef 80) #6
  %call.i26 = call i32 @regmap_read(ptr noundef %14, i32 noundef 464, ptr noundef nonnull %val.i24) #6
  %16 = ptrtoint ptr %val.i24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i24, align 4
  %and.i27 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27)
  %tobool.not.i28 = icmp eq i32 %and.i27, 0
  br i1 %tobool.not.i28, label %do.body6.i, label %do.body.i

do.body.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxs_charger_secondary_detection.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxs_phy_charger_detect, %if.then5.i)) #6
          to label %mxs_charger_secondary_detection.exit [label %if.then5.i], !srcloc !102

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxs_charger_secondary_detection.__UNIQUE_ID_ddebug296, ptr noundef %19, ptr noundef nonnull @.str.28) #6
  br label %mxs_charger_secondary_detection.exit

do.body6.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxs_charger_secondary_detection.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxs_phy_charger_detect, %if.then18.i)) #6
          to label %mxs_charger_secondary_detection.exit [label %if.then18.i], !srcloc !102

if.then18.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phy, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxs_charger_secondary_detection.__UNIQUE_ID_ddebug297, ptr noundef %21, ptr noundef nonnull @.str.29) #6
  br label %mxs_charger_secondary_detection.exit

mxs_charger_secondary_detection.exit:             ; preds = %if.then18.i, %do.body6.i, %if.then5.i, %do.body.i
  %retval.0.i29 = phi i32 [ 2, %if.then5.i ], [ 3, %if.then18.i ], [ 2, %do.body.i ], [ 3, %do.body6.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i24) #6
  %call9 = call i32 @regmap_write(ptr noundef nonnull %1, i32 noundef 488, i32 noundef 1) #6
  %add.ptr10 = getelementptr i8, ptr %3, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 64) #6, !srcloc !103
  br label %cleanup

cleanup:                                          ; preds = %mxs_charger_secondary_detection.exit, %if.end3.cleanup_crit_edge, %mxs_charger_data_contact_detect.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i29, %mxs_charger_secondary_detection.exit ], [ 1, %if.end3.cleanup_crit_edge ], [ 0, %mxs_charger_data_contact_detect.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_phy_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmp_reset_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxs_phy_disconnect_line(ptr nocapture noundef readonly %mxs_phy, i1 noundef zeroext %on) unnamed_addr #2 align 64 {
entry:
  %vbus_value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.mxs_phy, ptr %mxs_phy, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap_anatop = getelementptr inbounds %struct.mxs_phy, ptr %mxs_phy, i32 0, i32 3
  %4 = ptrtoint ptr %regmap_anatop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap_anatop, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vbus_value.i) #6
  %6 = ptrtoint ptr %vbus_value.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %vbus_value.i, align 4
  %port_id.i = getelementptr inbounds %struct.mxs_phy, ptr %mxs_phy, i32 0, i32 4
  %7 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port_id.i, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %8, label %if.end.i.mxs_phy_get_vbus_status.exit_crit_edge [
    i32 0, label %if.end.i.if.end9.sink.split.i_crit_edge
    i32 1, label %if.then5.i
  ]

if.end.i.if.end9.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.sink.split.i

if.end.i.mxs_phy_get_vbus_status.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxs_phy_get_vbus_status.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.sink.split.i

if.end9.sink.split.i:                             ; preds = %if.then5.i, %if.end.i.if.end9.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 544, %if.then5.i ], [ 448, %if.end.i.if.end9.sink.split.i_crit_edge ]
  %call7.i = call i32 @regmap_read(ptr noundef nonnull %5, i32 noundef %.sink.i, ptr noundef nonnull %vbus_value.i) #6
  br label %mxs_phy_get_vbus_status.exit

mxs_phy_get_vbus_status.exit:                     ; preds = %if.end9.sink.split.i, %if.end.i.mxs_phy_get_vbus_status.exit_crit_edge
  %10 = ptrtoint ptr %vbus_value.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vbus_value.i, align 4
  %and.i = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp ne i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vbus_value.i) #6
  %on.not = xor i1 %on, true
  %brmerge = select i1 %on.not, i1 true, i1 %tobool10.not.i
  br i1 %brmerge, label %mxs_phy_get_vbus_status.exit.if.else_crit_edge, label %land.lhs.true7

mxs_phy_get_vbus_status.exit.if.else_crit_edge:   ; preds = %mxs_phy_get_vbus_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true7:                                   ; preds = %mxs_phy_get_vbus_status.exit
  %io_priv.i = getelementptr inbounds %struct.usb_phy, ptr %mxs_phy, i32 0, i32 8
  %12 = ptrtoint ptr %io_priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_priv.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 48
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  %15 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i16 = icmp eq i32 %15, 0
  br i1 %tobool.not.i16, label %land.lhs.true7.if.else_crit_edge, label %if.then9

land.lhs.true7.if.else_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then9:                                         ; preds = %land.lhs.true7
  %16 = ptrtoint ptr %io_priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_priv.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %17, i32 88
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 64) #6, !srcloc !103
  %18 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_id.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %19, label %if.then9.__mxs_phy_disconnect_line.exit_crit_edge [
    i32 0, label %if.then9.if.end11.sink.split.i_crit_edge
    i32 1, label %if.then5.i21
  ]

if.then9.if.end11.sink.split.i_crit_edge:         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.sink.split.i

if.then9.__mxs_phy_disconnect_line.exit_crit_edge: ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %__mxs_phy_disconnect_line.exit

if.then5.i21:                                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.sink.split.i

if.end11.sink.split.i:                            ; preds = %if.then5.i21, %if.then9.if.end11.sink.split.i_crit_edge
  %cond7.sink.i = phi i32 [ 580, %if.then5.i21 ], [ 484, %if.then9.if.end11.sink.split.i_crit_edge ]
  %21 = ptrtoint ptr %regmap_anatop to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap_anatop, align 4
  %call9.i = call i32 @regmap_write(ptr noundef %22, i32 noundef %cond7.sink.i, i32 noundef 36) #6
  br label %__mxs_phy_disconnect_line.exit

__mxs_phy_disconnect_line.exit:                   ; preds = %if.end11.sink.split.i, %if.then9.__mxs_phy_disconnect_line.exit_crit_edge
  call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #6
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true7.if.else_crit_edge, %mxs_phy_get_vbus_status.exit.if.else_crit_edge
  %io_priv.i22 = getelementptr inbounds %struct.usb_phy, ptr %mxs_phy, i32 0, i32 8
  %23 = ptrtoint ptr %io_priv.i22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io_priv.i22, align 4
  %25 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port_id.i, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %26, label %if.else.__mxs_phy_disconnect_line.exit31_crit_edge [
    i32 0, label %if.else.if.end11.sink.split.i30_crit_edge
    i32 1, label %if.then5.i26
  ]

if.else.if.end11.sink.split.i30_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.sink.split.i30

if.else.__mxs_phy_disconnect_line.exit31_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %__mxs_phy_disconnect_line.exit31

if.then5.i26:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.sink.split.i30

if.end11.sink.split.i30:                          ; preds = %if.then5.i26, %if.else.if.end11.sink.split.i30_crit_edge
  %cond7.sink.i27 = phi i32 [ 584, %if.then5.i26 ], [ 488, %if.else.if.end11.sink.split.i30_crit_edge ]
  %28 = ptrtoint ptr %regmap_anatop to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap_anatop, align 4
  %call9.i29 = call i32 @regmap_write(ptr noundef %29, i32 noundef %cond7.sink.i27, i32 noundef 36) #6
  br label %__mxs_phy_disconnect_line.exit31

__mxs_phy_disconnect_line.exit31:                 ; preds = %if.end11.sink.split.i30, %if.else.__mxs_phy_disconnect_line.exit31_crit_edge
  %add.ptr14.i = getelementptr i8, ptr %24, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 64) #6, !srcloc !103
  br label %cleanup

cleanup:                                          ; preds = %__mxs_phy_disconnect_line.exit31, %__mxs_phy_disconnect_line.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxs_charger_primary_detection(ptr nocapture noundef readonly %x) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap_anatop = getelementptr inbounds %struct.mxs_phy, ptr %x, i32 0, i32 3
  %0 = ptrtoint ptr %regmap_anatop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap_anatop, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !101
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 440, i32 noundef 786432) #6
  tail call void @msleep(i32 noundef 100) #6
  %call1 = call i32 @regmap_read(ptr noundef %1, i32 noundef 464, ptr noundef nonnull %val) #6
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxs_charger_primary_detection.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxs_charger_primary_detection, %if.then6)) #6
          to label %if.end7 [label %if.then6], !srcloc !102

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %x, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxs_charger_primary_detection.__UNIQUE_ID_ddebug295, ptr noundef %6, ptr noundef nonnull @.str.26) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then, %entry.if.end7_crit_edge
  %chgr_type.0 = phi i32 [ 0, %entry.if.end7_crit_edge ], [ 1, %if.then6 ], [ 1, %if.then ]
  %call8 = call i32 @regmap_write(ptr noundef %1, i32 noundef 436, i32 noundef 1572864) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %chgr_type.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_phy_system_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  %regmap_anatop.i = getelementptr inbounds %struct.mxs_phy, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %regmap_anatop.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap_anatop.i, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %data.i.i = getelementptr inbounds %struct.mxs_phy, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp eq ptr %8, @imx6q_phy_data
  br i1 %cmp.i.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.else.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  %cmp.i17.i = icmp eq ptr %8, @imx6sl_phy_data
  br i1 %cmp.i17.i, label %if.else.i.cleanup.sink.split.i_crit_edge, label %if.else.i.if.end_crit_edge

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 4096, %if.end.i.cleanup.sink.split.i_crit_edge ], [ 2048, %if.else.i.cleanup.sink.split.i_crit_edge ]
  %call4.i = tail call i32 @regmap_write(ptr noundef nonnull %6, i32 noundef 340, i32 noundef %.sink.i) #6
  br label %if.end

if.end:                                           ; preds = %cleanup.sink.split.i, %if.else.i.if.end_crit_edge, %if.then.if.end_crit_edge, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_phy_system_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  %regmap_anatop.i = getelementptr inbounds %struct.mxs_phy, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %regmap_anatop.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap_anatop.i, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %data.i.i = getelementptr inbounds %struct.mxs_phy, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp eq ptr %8, @imx6q_phy_data
  br i1 %cmp.i.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.else.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  %cmp.i17.i = icmp eq ptr %8, @imx6sl_phy_data
  br i1 %cmp.i17.i, label %if.else.i.cleanup.sink.split.i_crit_edge, label %if.else.i.if.end_crit_edge

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 4096, %if.end.i.cleanup.sink.split.i_crit_edge ], [ 2048, %if.else.i.cleanup.sink.split.i_crit_edge ]
  %call4.i = tail call i32 @regmap_write(ptr noundef nonnull %6, i32 noundef 344, i32 noundef %.sink.i) #6
  br label %if.end

if.end:                                           ; preds = %cleanup.sink.split.i, %if.else.i.if.end_crit_edge, %if.then.if.end_crit_edge, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

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
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !33, !35, !37, !39, !41, !43, !44, !46, !48, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !78, !80, !82, !84, !86, !88, !90}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__initcall__kmod_phy_mxs_usb__300_868_mxs_phy_module_init2, !1, !"__initcall__kmod_phy_mxs_usb__300_868_mxs_phy_module_init2", i1 false, i1 false}
!1 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 868, i32 1}
!2 = !{ptr @__exitcall_mxs_phy_module_exit, !3, !"__exitcall_mxs_phy_module_exit", i1 false, i1 false}
!3 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 874, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias301, !5, !"__UNIQUE_ID_alias301", i1 false, i1 false}
!5 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 876, i32 1}
!6 = !{ptr @__UNIQUE_ID_author302, !7, !"__UNIQUE_ID_author302", i1 false, i1 false}
!7 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 877, i32 1}
!8 = !{ptr @__UNIQUE_ID_author303, !9, !"__UNIQUE_ID_author303", i1 false, i1 false}
!9 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 878, i32 1}
!10 = !{ptr @__UNIQUE_ID_description304, !11, !"__UNIQUE_ID_description304", i1 false, i1 false}
!11 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 879, i32 1}
!12 = !{ptr @__UNIQUE_ID_file305, !13, !"__UNIQUE_ID_file305", i1 false, i1 false}
!13 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 880, i32 1}
!14 = !{ptr @__UNIQUE_ID_license306, !13, !"__UNIQUE_ID_license306", i1 false, i1 false}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 858, i32 11}
!17 = !{ptr @mxs_phy_driver, !18, !"mxs_phy_driver", i1 false, i1 false}
!18 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 854, i32 31}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 726, i32 3}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mxs_phy_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @mxs_phy_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 736, i32 26}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 740, i32 4}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @mxs_phy_probe.__UNIQUE_ID_ddebug298, !30, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 747, i32 32}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 756, i32 32}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 765, i32 32}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 777, i32 28}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 779, i32 3}
!43 = !{ptr @mxs_phy_probe.__UNIQUE_ID_ddebug299, !42, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!44 = !{ptr @imx7ulp_phy_data, !45, !"imx7ulp_phy_data", i1 false, i1 false}
!45 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 184, i32 34}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 545, i32 2}
!48 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @mxs_phy_on_connect.__UNIQUE_ID_ddebug293, !47, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!50 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 558, i32 2}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mxs_phy_on_disconnect.__UNIQUE_ID_ddebug294, !53, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 580, i32 3}
!58 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @mxs_charger_data_contact_detect._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @mxs_charger_data_contact_detect._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 612, i32 3}
!63 = !{ptr @mxs_charger_data_contact_detect._entry.22, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @mxs_charger_data_contact_detect._entry_ptr.24, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 645, i32 3}
!67 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @mxs_charger_primary_detection.__UNIQUE_ID_ddebug295, !66, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 669, i32 3}
!71 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @mxs_charger_secondary_detection.__UNIQUE_ID_ddebug296, !70, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 672, i32 3}
!75 = !{ptr @mxs_charger_secondary_detection.__UNIQUE_ID_ddebug297, !74, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!76 = !{ptr @mxs_phy_dt_ids, !77, !"mxs_phy_dt_ids", i1 false, i1 false}
!77 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 187, i32 34}
!78 = !{ptr @imx6sx_phy_data, !79, !"imx6sx_phy_data", i1 false, i1 false}
!79 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 176, i32 34}
!80 = !{ptr @imx6sl_phy_data, !81, !"imx6sl_phy_data", i1 false, i1 false}
!81 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 166, i32 34}
!82 = !{ptr @imx6q_phy_data, !83, !"imx6q_phy_data", i1 false, i1 false}
!83 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 160, i32 34}
!84 = !{ptr @imx23_phy_data, !85, !"imx23_phy_data", i1 false, i1 false}
!85 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 156, i32 34}
!86 = !{ptr @vf610_phy_data, !87, !"vf610_phy_data", i1 false, i1 false}
!87 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 171, i32 34}
!88 = !{ptr @imx6ul_phy_data, !89, !"imx6ul_phy_data", i1 false, i1 false}
!89 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 180, i32 34}
!90 = !{ptr @mxs_phy_pm, !91, !"mxs_phy_pm", i1 false, i1 false}
!91 = !{!"../drivers/usb/phy/phy-mxs-usb.c", i32 851, i32 8}
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
!102 = !{i64 2148975855, i64 2148975860, i64 2148975873, i64 2148975917, i64 2148975951, i64 2148975972}
!103 = !{i64 5998832}
!104 = !{i64 2155364356}
!105 = !{i64 2155364922}
!106 = !{i64 5999250}
!107 = !{i64 2155366908}
!108 = !{i64 2155367370}
!109 = !{i64 2155367693}
!110 = !{i64 2155370408}
!111 = !{i64 2155371583}
!112 = !{i64 2155372912}
!113 = !{i64 2155363078}
!114 = !{i64 2155363293}
!115 = !{i64 2155368816}
!116 = !{i64 2155369382}
!117 = !{i64 2155369948}
!118 = !{i64 2155379009}
!119 = !{i64 2155379420}
!120 = !{i64 2155379948}
!121 = !{i64 2155381782}
!122 = !{i64 2155382204}
!123 = !{i64 2155382728}
!124 = !{i64 2155383306}
!125 = !{i64 2155383773}
!126 = !{i64 2155388500}
!127 = !{i64 2155391712}
!128 = !{i64 2155392121}
!129 = !{i64 2155375020}
