; ModuleID = '/llk/IR_all_yes/drivers/usb/chipidea/ci_hdrc_imx.c_pt.bc'
source_filename = "../drivers/usb/chipidea/ci_hdrc_imx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ci_hdrc_imx_platform_flag = type { i32 }
%struct.atomic_t = type { i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.ci_hdrc_platform_data = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, %struct.usb_otg_caps, i8, i32, i32, i32, i32, %struct.ci_hdrc_cable, %struct.ci_hdrc_cable, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.ci_hdrc_cable = type { i8, i8, i8, ptr, ptr, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.ci_hdrc_imx_data = type { ptr, ptr, ptr, ptr, i8, i8, i8, ptr, ptr, ptr, i8, ptr, ptr, ptr, %struct.pm_qos_request, ptr }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.imx_usbmisc_data = type { ptr, i32, i16, ptr, i32, i32, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.ci_hdrc = type { ptr, %struct.spinlock, %struct.hw_bank, i32, [2 x ptr], i32, i8, %struct.usb_otg, %struct.otg_fsm, %struct.hrtimer, [12 x i64], i32, i32, ptr, %struct.work_struct, ptr, ptr, ptr, %struct.usb_gadget, ptr, i32, i32, [32 x %struct.ci_hw_ep], i32, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, ptr, %struct.ulpi_ops, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i32 }
%struct.hw_bank = type { i32, i32, ptr, ptr, ptr, i32, [38 x ptr] }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.otg_fsm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.mutex, ptr, %struct.delayed_work, i8, i8 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.ci_hw_ep = type { %struct.usb_ep, i8, i8, i8, [16 x i8], %struct.anon.85, i32, ptr, ptr, ptr, ptr }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.anon.85 = type { %struct.list_head, ptr, i32 }
%struct.ulpi_ops = type { ptr, ptr }

@__initcall__kmod_ci_hdrc_imx__295_686_ci_hdrc_imx_driver_init6 = internal global ptr @ci_hdrc_imx_driver_init, section ".initcall6.init", align 4
@ci_hdrc_imx_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ci_hdrc_imx_probe, ptr @ci_hdrc_imx_remove, ptr @ci_hdrc_imx_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ci_hdrc_imx_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ci_hdrc_imx_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ci_hdrc_imx_driver_exit = internal global ptr @ci_hdrc_imx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias296 = internal constant [35 x i8] c"ci_hdrc_imx.alias=platform:imx-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [50 x i8] c"ci_hdrc_imx.file=drivers/usb/chipidea/ci_hdrc_imx\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [24 x i8] c"ci_hdrc_imx.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description299 = internal constant [49 x i8] c"ci_hdrc_imx.description=CI HDRC i.MX USB binding\00", section ".modinfo", align 1
@__UNIQUE_ID_author300 = internal constant [47 x i8] c"ci_hdrc_imx.author=Marek Vasut <marex@denx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author301 = internal constant [61 x i8] c"ci_hdrc_imx.author=Richard Zhao <richard.zhao@freescale.com>\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"imx_usb\00", [24 x i8] zeroinitializer }, align 32
@ci_hdrc_imx_dt_ids = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx23-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx23_usb_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx28-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx28_usb_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx27-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx27_usb_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6q_usb_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sl-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6sl_usb_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sx-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6sx_usb_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6ul-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6ul_usb_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7d-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx7d_usb_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7ulp-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx7ulp_usb_data }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@ci_hdrc_imx_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ci_hdrc_imx_suspend, ptr @ci_hdrc_imx_resume, ptr @ci_hdrc_imx_suspend, ptr @ci_hdrc_imx_resume, ptr @ci_hdrc_imx_suspend, ptr @ci_hdrc_imx_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ci_hdrc_imx_runtime_suspend, ptr @ci_hdrc_imx_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@ci_hdrc_imx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 354, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pinctrl get failed, err=%ld\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ci_hdrc_imx_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/usb/chipidea/ci_hdrc_imx.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ci_hdrc_imx_probe._entry_ptr = internal global ptr @ci_hdrc_imx_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hsic\00", [27 x i8] zeroinitializer }, align 32
@ci_hdrc_imx_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 367, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Get HSIC pad regulator error: %ld\0A\00", [61 x i8] zeroinitializer }, align 32
@ci_hdrc_imx_probe._entry_ptr.9 = internal global ptr @ci_hdrc_imx_probe._entry.7, section ".printk_index", align 4
@ci_hdrc_imx_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 375, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to enable HSIC pad regulator\0A\00", [59 x i8] zeroinitializer }, align 32
@ci_hdrc_imx_probe._entry_ptr.12 = internal global ptr @ci_hdrc_imx_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"idle\00", [27 x i8] zeroinitializer }, align 32
@ci_hdrc_imx_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 389, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"pinctrl_hsic_idle lookup failed, err=%ld\0A\00", [54 x i8] zeroinitializer }, align 32
@ci_hdrc_imx_probe._entry_ptr.16 = internal global ptr @ci_hdrc_imx_probe._entry.14, section ".printk_index", align 4
@ci_hdrc_imx_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 395, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"hsic_idle select failed, err=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@ci_hdrc_imx_probe._entry_ptr.19 = internal global ptr @ci_hdrc_imx_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"active\00", [25 x i8] zeroinitializer }, align 32
@ci_hdrc_imx_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 404, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"pinctrl_hsic_active lookup failed, err=%ld\0A\00", [52 x i8] zeroinitializer }, align 32
@ci_hdrc_imx_probe._entry_ptr.23 = internal global ptr @ci_hdrc_imx_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsl,usbphy\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"phys\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl,imx53-usb\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl,imx51-usb\00", [18 x i8] zeroinitializer }, align 32
@ci_hdrc_imx_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 452, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"usbmisc init failed, ret=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@ci_hdrc_imx_probe._entry_ptr.30 = internal global ptr @ci_hdrc_imx_probe._entry.28, section ".printk_index", align 4
@ci_hdrc_imx_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 463, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ci_hdrc_add_device failed, err=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@ci_hdrc_imx_probe._entry_ptr.33 = internal global ptr @ci_hdrc_imx_probe._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb-role-switch\00", [16 x i8] zeroinitializer }, align 32
@ci_hdrc_imx_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.2, ptr @.str.3, i32 483, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"usbmisc post failed, ret=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@ci_hdrc_imx_probe._entry_ptr.37 = internal global ptr @ci_hdrc_imx_probe._entry.35, section ".printk_index", align 4
@ci_hdrc_imx_notify_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 294, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"hsic_active select failed, err=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ci_hdrc_imx_notify_event\00", [39 x i8] zeroinitializer }, align 32
@ci_hdrc_imx_notify_event._entry_ptr = internal global ptr @ci_hdrc_imx_notify_event._entry, section ".printk_index", align 4
@ci_hdrc_imx_notify_event._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.3, i32 301, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"hsic_set_connect failed, err=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@ci_hdrc_imx_notify_event._entry_ptr.42 = internal global ptr @ci_hdrc_imx_notify_event._entry.40, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fsl,usbmisc\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"#index-cells\00", [19 x i8] zeroinitializer }, align 32
@usbmisc_get_init_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 133, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to parse property fsl,usbmisc, errno %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usbmisc_get_init_data\00", [42 x i8] zeroinitializer }, align 32
@usbmisc_get_init_data._entry_ptr = internal global ptr @usbmisc_get_init_data._entry, section ".printk_index", align 4
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"disable-over-current\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"over-current-active-high\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"over-current-active-low\00", [40 x i8] zeroinitializer }, align 32
@usbmisc_get_init_data._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.3, i32 164, ptr @.str.52, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"No over current polarity defined\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@usbmisc_get_init_data._entry_ptr.53 = internal global ptr @usbmisc_get_init_data._entry.50, section ".printk_index", align 4
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"power-active-high\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"external-vbus-divider\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"samsung,picophy-pre-emp-curr-control\00", [59 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"samsung,picophy-dc-vol-level-adjust\00", [60 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@imx_get_clks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 195, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get clks, err=%ld,%ld\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"imx_get_clks\00", [19 x i8] zeroinitializer }, align 32
@imx_get_clks._entry_ptr = internal global ptr @imx_get_clks._entry, section ".printk_index", align 4
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@imx_get_clks._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.60, ptr @.str.3, i32 205, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get ahb clock, err=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@imx_get_clks._entry_ptr.64 = internal global ptr @imx_get_clks._entry.62, section ".printk_index", align 4
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"per\00", [28 x i8] zeroinitializer }, align 32
@imx_get_clks._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.60, ptr @.str.3, i32 213, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get per clock, err=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@imx_get_clks._entry_ptr.68 = internal global ptr @imx_get_clks._entry.66, section ".printk_index", align 4
@imx_prepare_enable_clks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 231, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to prepare/enable ipg clk, err=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"imx_prepare_enable_clks\00", [40 x i8] zeroinitializer }, align 32
@imx_prepare_enable_clks._entry_ptr = internal global ptr @imx_prepare_enable_clks._entry, section ".printk_index", align 4
@imx_prepare_enable_clks._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.3, i32 239, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to prepare/enable ahb clk, err=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@imx_prepare_enable_clks._entry_ptr.73 = internal global ptr @imx_prepare_enable_clks._entry.71, section ".printk_index", align 4
@imx_prepare_enable_clks._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.70, ptr @.str.3, i32 248, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to prepare/enable per clk, err=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@imx_prepare_enable_clks._entry_ptr.76 = internal global ptr @imx_prepare_enable_clks._entry.74, section ".printk_index", align 4
@imx_prepare_enable_clks._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.70, ptr @.str.3, i32 258, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to prepare/enable clk, err=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@imx_prepare_enable_clks._entry_ptr.79 = internal global ptr @imx_prepare_enable_clks._entry.77, section ".printk_index", align 4
@imx23_usb_data = internal constant { %struct.ci_hdrc_imx_platform_flag, [28 x i8] } { %struct.ci_hdrc_imx_platform_flag { i32 138 }, [28 x i8] zeroinitializer }, align 32
@imx28_usb_data = internal constant { %struct.ci_hdrc_imx_platform_flag, [28 x i8] } { %struct.ci_hdrc_imx_platform_flag { i32 170 }, [28 x i8] zeroinitializer }, align 32
@imx27_usb_data = internal constant { %struct.ci_hdrc_imx_platform_flag, [28 x i8] } { %struct.ci_hdrc_imx_platform_flag { i32 10 }, [28 x i8] zeroinitializer }, align 32
@imx6q_usb_data = internal constant { %struct.ci_hdrc_imx_platform_flag, [28 x i8] } { %struct.ci_hdrc_imx_platform_flag { i32 142 }, [28 x i8] zeroinitializer }, align 32
@imx6sl_usb_data = internal constant { %struct.ci_hdrc_imx_platform_flag, [28 x i8] } { %struct.ci_hdrc_imx_platform_flag { i32 140 }, [28 x i8] zeroinitializer }, align 32
@imx6sx_usb_data = internal constant { %struct.ci_hdrc_imx_platform_flag, [28 x i8] } { %struct.ci_hdrc_imx_platform_flag { i32 140 }, [28 x i8] zeroinitializer }, align 32
@imx6ul_usb_data = internal constant { %struct.ci_hdrc_imx_platform_flag, [28 x i8] } { %struct.ci_hdrc_imx_platform_flag { i32 134 }, [28 x i8] zeroinitializer }, align 32
@imx7d_usb_data = internal constant { %struct.ci_hdrc_imx_platform_flag, [28 x i8] } { %struct.ci_hdrc_imx_platform_flag { i32 4 }, [28 x i8] zeroinitializer }, align 32
@imx7ulp_usb_data = internal constant { %struct.ci_hdrc_imx_platform_flag, [28 x i8] } { %struct.ci_hdrc_imx_platform_flag { i32 32772 }, [28 x i8] zeroinitializer }, align 32
@ci_hdrc_imx_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.3, i32 617, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"usbmisc set_wakeup failed, ret=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ci_hdrc_imx_suspend\00", [44 x i8] zeroinitializer }, align 32
@ci_hdrc_imx_suspend._entry_ptr = internal global ptr @ci_hdrc_imx_suspend._entry, section ".printk_index", align 4
@imx_controller_suspend.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.82, ptr @.str.83, ptr @.str.3, ptr @.str.84, i8 0, i8 -120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ci_hdrc_imx\00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imx_controller_suspend\00", [41 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"at %s\0A\00", [25 x i8] zeroinitializer }, align 32
@imx_controller_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.3, i32 548, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"usbmisc hsic_set_clk failed, ret=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@imx_controller_suspend._entry_ptr = internal global ptr @imx_controller_suspend._entry, section ".printk_index", align 4
@imx_controller_resume.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.82, ptr @.str.86, ptr @.str.3, ptr @.str.84, i8 0, i8 -115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"imx_controller_resume\00", [42 x i8] zeroinitializer }, align 32
@imx_controller_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.86, ptr @.str.3, i32 584, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@imx_controller_resume._entry_ptr = internal global ptr @imx_controller_resume._entry, section ".printk_index", align 4
@imx_controller_resume._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.3, i32 590, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@imx_controller_resume._entry_ptr.88 = internal global ptr @imx_controller_resume._entry.87, section ".printk_index", align 4
@ci_hdrc_imx_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.89, ptr @.str.3, i32 658, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ci_hdrc_imx_runtime_suspend\00", [36 x i8] zeroinitializer }, align 32
@ci_hdrc_imx_runtime_suspend._entry_ptr = internal global ptr @ci_hdrc_imx_runtime_suspend._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@___asan_gen_.90 = private unnamed_addr constant [19 x i8] c"ci_hdrc_imx_driver\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 675, i32 31 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 680, i32 11 }
@___asan_gen_.96 = private unnamed_addr constant [19 x i8] c"ci_hdrc_imx_dt_ids\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 73, i32 34 }
@___asan_gen_.99 = private unnamed_addr constant [19 x i8] c"ci_hdrc_imx_pm_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 670, i32 32 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 353, i32 5 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 359, i32 38 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 365, i32 5 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 374, i32 5 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 385, i32 59 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 387, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 395, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 400, i32 9 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 402, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 420, i32 47 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 425, i32 48 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 439, i32 35 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 440, i32 35 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 452, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 462, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 469, i32 33 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 483, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 292, i32 5 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 300, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 122, i32 27 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 129, i32 54 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 132, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 155, i32 27 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 157, i32 34 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 160, i32 34 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 164, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 167, i32 44 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 168, i32 41 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 173, i32 27 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 175, i32 27 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 187, i32 36 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 193, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 201, i32 36 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 204, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 209, i32 36 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 212, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 229, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 237, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 246, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 256, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant [15 x i8] c"imx23_usb_data\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 25, i32 47 }
@___asan_gen_.312 = private unnamed_addr constant [15 x i8] c"imx28_usb_data\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 34, i32 47 }
@___asan_gen_.315 = private unnamed_addr constant [15 x i8] c"imx27_usb_data\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 30, i32 47 }
@___asan_gen_.318 = private unnamed_addr constant [15 x i8] c"imx6q_usb_data\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 40, i32 47 }
@___asan_gen_.321 = private unnamed_addr constant [16 x i8] c"imx6sl_usb_data\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 46, i32 47 }
@___asan_gen_.324 = private unnamed_addr constant [16 x i8] c"imx6sx_usb_data\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 52, i32 47 }
@___asan_gen_.327 = private unnamed_addr constant [16 x i8] c"imx6ul_usb_data\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 58, i32 47 }
@___asan_gen_.330 = private unnamed_addr constant [15 x i8] c"imx7d_usb_data\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 64, i32 47 }
@___asan_gen_.333 = private unnamed_addr constant [17 x i8] c"imx7ulp_usb_data\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 68, i32 47 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 616, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 544, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 548, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 566, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 584, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 590, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.372 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.373 = private constant [38 x i8] c"../drivers/usb/chipidea/ci_hdrc_imx.c\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 658, i32 3 }
@llvm.compiler.used = appending global [129 x ptr] [ptr @__UNIQUE_ID_alias296, ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_ci_hdrc_imx_driver_exit, ptr @__initcall__kmod_ci_hdrc_imx__295_686_ci_hdrc_imx_driver_init6, ptr @ci_hdrc_imx_driver_exit, ptr @ci_hdrc_imx_notify_event._entry, ptr @ci_hdrc_imx_notify_event._entry.40, ptr @ci_hdrc_imx_notify_event._entry_ptr, ptr @ci_hdrc_imx_notify_event._entry_ptr.42, ptr @ci_hdrc_imx_probe._entry, ptr @ci_hdrc_imx_probe._entry.10, ptr @ci_hdrc_imx_probe._entry.14, ptr @ci_hdrc_imx_probe._entry.17, ptr @ci_hdrc_imx_probe._entry.21, ptr @ci_hdrc_imx_probe._entry.28, ptr @ci_hdrc_imx_probe._entry.31, ptr @ci_hdrc_imx_probe._entry.35, ptr @ci_hdrc_imx_probe._entry.7, ptr @ci_hdrc_imx_probe._entry_ptr, ptr @ci_hdrc_imx_probe._entry_ptr.12, ptr @ci_hdrc_imx_probe._entry_ptr.16, ptr @ci_hdrc_imx_probe._entry_ptr.19, ptr @ci_hdrc_imx_probe._entry_ptr.23, ptr @ci_hdrc_imx_probe._entry_ptr.30, ptr @ci_hdrc_imx_probe._entry_ptr.33, ptr @ci_hdrc_imx_probe._entry_ptr.37, ptr @ci_hdrc_imx_probe._entry_ptr.9, ptr @ci_hdrc_imx_runtime_suspend._entry, ptr @ci_hdrc_imx_runtime_suspend._entry_ptr, ptr @ci_hdrc_imx_suspend._entry, ptr @ci_hdrc_imx_suspend._entry_ptr, ptr @imx_controller_resume._entry, ptr @imx_controller_resume._entry.87, ptr @imx_controller_resume._entry_ptr, ptr @imx_controller_resume._entry_ptr.88, ptr @imx_controller_suspend._entry, ptr @imx_controller_suspend._entry_ptr, ptr @imx_get_clks._entry, ptr @imx_get_clks._entry.62, ptr @imx_get_clks._entry.66, ptr @imx_get_clks._entry_ptr, ptr @imx_get_clks._entry_ptr.64, ptr @imx_get_clks._entry_ptr.68, ptr @imx_prepare_enable_clks._entry, ptr @imx_prepare_enable_clks._entry.71, ptr @imx_prepare_enable_clks._entry.74, ptr @imx_prepare_enable_clks._entry.77, ptr @imx_prepare_enable_clks._entry_ptr, ptr @imx_prepare_enable_clks._entry_ptr.73, ptr @imx_prepare_enable_clks._entry_ptr.76, ptr @imx_prepare_enable_clks._entry_ptr.79, ptr @usbmisc_get_init_data._entry, ptr @usbmisc_get_init_data._entry.50, ptr @usbmisc_get_init_data._entry_ptr, ptr @usbmisc_get_init_data._entry_ptr.53, ptr @ci_hdrc_imx_driver, ptr @.str, ptr @ci_hdrc_imx_dt_ids, ptr @ci_hdrc_imx_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @imx23_usb_data, ptr @imx28_usb_data, ptr @imx27_usb_data, ptr @imx6q_usb_data, ptr @imx6sl_usb_data, ptr @imx6sx_usb_data, ptr @imx6ul_usb_data, ptr @imx7d_usb_data, ptr @imx7ulp_usb_data, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.89], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_imx_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_imx_dt_ids to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_imx_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_imx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_imx_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_imx_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_imx_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_imx_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_imx_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_imx_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_imx_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_imx_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_imx_notify_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_imx_notify_event._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbmisc_get_init_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbmisc_get_init_data._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_get_clks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_get_clks._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_get_clks._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_prepare_enable_clks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_prepare_enable_clks._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_prepare_enable_clks._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_prepare_enable_clks._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx23_usb_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx28_usb_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx27_usb_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_usb_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6sl_usb_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6sx_usb_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6ul_usb_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7d_usb_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7ulp_usb_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_imx_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_controller_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_controller_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_controller_resume._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_hdrc_imx_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_hdrc_imx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ci_hdrc_imx_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ci_hdrc_imx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ci_hdrc_imx_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_hdrc_imx_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %pdata = alloca %struct.ci_hdrc_platform_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %pdata) #6
  %0 = getelementptr inbounds i8, ptr %pdata, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 132)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %retval.0.i, ptr %pdata, align 4
  %capoffset = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %pdata, i32 0, i32 1
  %7 = ptrtoint ptr %capoffset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 256, ptr %capoffset, align 4
  %notify_event = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %pdata, i32 0, i32 8
  %8 = ptrtoint ptr %notify_event to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ci_hdrc_imx_notify_event, ptr %notify_event, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call5 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 76, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %dev_name.exit.cleanup254_crit_edge, label %if.end

dev_name.exit.cleanup254_crit_edge:               ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup254

if.end:                                           ; preds = %dev_name.exit
  %plat_data = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %call.i, i32 0, i32 15
  %11 = ptrtoint ptr %plat_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5, ptr %plat_data, align 4
  %12 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call5, align 4
  %flags8 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %pdata, i32 0, i32 6
  %14 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags8, align 4
  %or = or i32 %15, %13
  store i32 %or, ptr %flags8, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #6
  %19 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i375 = tail call ptr @of_get_property(ptr noundef %18, ptr noundef nonnull @.str.43, ptr noundef null) #6
  %tobool.not.i376 = icmp eq ptr %call.i375, null
  br i1 %tobool.not.i376, label %usbmisc_get_init_data.exit.thread407, label %if.end.i377

usbmisc_get_init_data.exit.thread407:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  %usbmisc_data409 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %usbmisc_data409 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %usbmisc_data409, align 4
  br label %if.end15

if.end.i377:                                      ; preds = %if.end
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #6
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %if.end.i377.usbmisc_get_init_data.exit.thread_crit_edge, label %if.end5.i

if.end.i377.usbmisc_get_init_data.exit.thread_crit_edge: ; preds = %if.end.i377
  call void @__sanitizer_cov_trace_pc() #8
  br label %usbmisc_get_init_data.exit.thread

if.end5.i:                                        ; preds = %if.end.i377
  %call.i113.i = call i32 @__of_parse_phandle_with_args(ptr noundef %18, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %args.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113.i)
  %tobool7.not.i = icmp eq i32 %call.i113.i, 0
  br i1 %tobool7.not.i, label %if.end10.i, label %do.end.i

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %call.i113.i) #9
  %21 = inttoptr i32 %call.i113.i to ptr
  br label %usbmisc_get_init_data.exit

if.end10.i:                                       ; preds = %if.end5.i
  %args11.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 2
  %22 = ptrtoint ptr %args11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %args11.i, align 4
  %index.i = getelementptr inbounds %struct.imx_usbmisc_data, ptr %call.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %index.i, align 4
  %25 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %args.i, align 4
  %call13.i = call ptr @of_find_device_by_node(ptr noundef %26) #6
  %27 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %args.i, align 4
  call void @of_node_put(ptr noundef %28) #6
  %tobool15.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool15.not.i, label %if.end10.i.usbmisc_get_init_data.exit.thread_crit_edge, label %if.end18.i

if.end10.i.usbmisc_get_init_data.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usbmisc_get_init_data.exit.thread

if.end18.i:                                       ; preds = %if.end10.i
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %call13.i, i32 0, i32 3, i32 8
  %29 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool20.not.i = icmp eq ptr %30, null
  %dev22.i = getelementptr inbounds %struct.platform_device, ptr %call13.i, i32 0, i32 3
  br i1 %tobool20.not.i, label %if.then21.i, label %if.end24.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @put_device(ptr noundef %dev22.i) #6
  br label %usbmisc_get_init_data.exit.thread

if.end24.i:                                       ; preds = %if.end18.i
  %31 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dev22.i, ptr %call.i.i, align 4
  %call27.i = call ptr @of_find_property(ptr noundef %18, ptr noundef nonnull @.str.47, ptr noundef null) #6
  %tobool28.not.i = icmp eq ptr %call27.i, null
  br i1 %tobool28.not.i, label %if.else.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  %disable_oc.i = getelementptr inbounds %struct.imx_usbmisc_data, ptr %call.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %disable_oc.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load.i = load i16, ptr %disable_oc.i, align 4
  %bf.set.i = or i16 %bf.load.i, -32768
  store i16 %bf.set.i, ptr %disable_oc.i, align 4
  br label %if.end57.i

if.else.i:                                        ; preds = %if.end24.i
  %call30.i = call ptr @of_find_property(ptr noundef %18, ptr noundef nonnull @.str.48, ptr noundef null) #6
  %tobool31.not.i = icmp eq ptr %call30.i, null
  br i1 %tobool31.not.i, label %if.else39.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %oc_pol_active_low.i = getelementptr inbounds %struct.imx_usbmisc_data, ptr %call.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %oc_pol_active_low.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load33.i = load i16, ptr %oc_pol_active_low.i, align 4
  %bf.clear37.i = and i16 %bf.load33.i, -24577
  %bf.set38.i = or i16 %bf.clear37.i, 8192
  store i16 %bf.set38.i, ptr %oc_pol_active_low.i, align 4
  br label %if.end57.i

if.else39.i:                                      ; preds = %if.else.i
  %call40.i = call ptr @of_find_property(ptr noundef %18, ptr noundef nonnull @.str.49, ptr noundef null) #6
  %tobool41.not.i = icmp eq ptr %call40.i, null
  br i1 %tobool41.not.i, label %do.end54.i, label %if.then42.i

if.then42.i:                                      ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #8
  %oc_pol_active_low43.i = getelementptr inbounds %struct.imx_usbmisc_data, ptr %call.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %oc_pol_active_low43.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load44.i = load i16, ptr %oc_pol_active_low43.i, align 4
  %bf.set50.i = or i16 %bf.load44.i, 24576
  store i16 %bf.set50.i, ptr %oc_pol_active_low43.i, align 4
  br label %if.end57.i

do.end54.i:                                       ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.51) #9
  br label %if.end57.i

if.end57.i:                                       ; preds = %do.end54.i, %if.then42.i, %if.then32.i, %if.then29.i
  %call.i114.i = call ptr @of_find_property(ptr noundef %18, ptr noundef nonnull @.str.54, ptr noundef null) #6
  %tobool.i.not.i = icmp eq ptr %call.i114.i, null
  %pwr_pol.i = getelementptr inbounds %struct.imx_usbmisc_data, ptr %call.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %pwr_pol.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load59.i = load i16, ptr %pwr_pol.i, align 4
  %bf.shl.i = select i1 %tobool.i.not.i, i16 0, i16 4096
  %bf.clear60.i = and i16 %bf.load59.i, -6145
  %bf.set61.i = or i16 %bf.clear60.i, %bf.shl.i
  %call.i115.i = call ptr @of_find_property(ptr noundef %18, ptr noundef nonnull @.str.55, ptr noundef null) #6
  %tobool.i116.not.i = icmp eq ptr %call.i115.i, null
  %bf.shl66.i = select i1 %tobool.i116.not.i, i16 0, i16 2048
  %bf.set68.i = or i16 %bf.set61.i, %bf.shl66.i
  %36 = ptrtoint ptr %pwr_pol.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %bf.set68.i, ptr %pwr_pol.i, align 4
  %call70.i = call i32 @of_usb_get_phy_mode(ptr noundef %18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call70.i)
  %cmp.i = icmp eq i32 %call70.i, 3
  br i1 %cmp.i, label %if.then72.i, label %if.end57.i.if.end76.i_crit_edge

if.end57.i.if.end76.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76.i

if.then72.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %pwr_pol.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load73.i = load i16, ptr %pwr_pol.i, align 4
  %bf.set75.i = or i16 %bf.load73.i, 1024
  store i16 %bf.set75.i, ptr %pwr_pol.i, align 4
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then72.i, %if.end57.i.if.end76.i_crit_edge
  %emp_curr_control.i = getelementptr inbounds %struct.imx_usbmisc_data, ptr %call.i.i, i32 0, i32 5
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.56, ptr noundef %emp_curr_control.i, i32 noundef 1, i32 noundef 0) #6
  %dc_vol_level_adjust.i = getelementptr inbounds %struct.imx_usbmisc_data, ptr %call.i.i, i32 0, i32 6
  %call.i.i117.i = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.57, ptr noundef %dc_vol_level_adjust.i, i32 noundef 1, i32 noundef 0) #6
  br label %usbmisc_get_init_data.exit

usbmisc_get_init_data.exit.thread:                ; preds = %if.then21.i, %if.end10.i.usbmisc_get_init_data.exit.thread_crit_edge, %if.end.i377.usbmisc_get_init_data.exit.thread_crit_edge
  %retval.0.i378.ph = phi ptr [ inttoptr (i32 -517 to ptr), %if.end10.i.usbmisc_get_init_data.exit.thread_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i377.usbmisc_get_init_data.exit.thread_crit_edge ], [ inttoptr (i32 -517 to ptr), %if.then21.i ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  %usbmisc_data400 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %call.i, i32 0, i32 3
  %38 = ptrtoint ptr %usbmisc_data400 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %retval.0.i378.ph, ptr %usbmisc_data400, align 4
  br label %if.then12

usbmisc_get_init_data.exit:                       ; preds = %if.end76.i, %do.end.i
  %retval.0.i378 = phi ptr [ %21, %do.end.i ], [ %call.i.i, %if.end76.i ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  %usbmisc_data = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %call.i, i32 0, i32 3
  %39 = ptrtoint ptr %usbmisc_data to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %retval.0.i378, ptr %usbmisc_data, align 4
  %cmp.i379 = icmp ugt ptr %retval.0.i378, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i379, label %usbmisc_get_init_data.exit.if.then12_crit_edge, label %usbmisc_get_init_data.exit.if.end15_crit_edge

usbmisc_get_init_data.exit.if.end15_crit_edge:    ; preds = %usbmisc_get_init_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

usbmisc_get_init_data.exit.if.then12_crit_edge:   ; preds = %usbmisc_get_init_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

if.then12:                                        ; preds = %usbmisc_get_init_data.exit.if.then12_crit_edge, %usbmisc_get_init_data.exit.thread
  %retval.0.i378402 = phi ptr [ %retval.0.i378.ph, %usbmisc_get_init_data.exit.thread ], [ %retval.0.i378, %usbmisc_get_init_data.exit.if.then12_crit_edge ]
  %40 = ptrtoint ptr %retval.0.i378402 to i32
  br label %cleanup254

if.end15:                                         ; preds = %usbmisc_get_init_data.exit.if.end15_crit_edge, %usbmisc_get_init_data.exit.thread407
  %usbmisc_data411 = phi ptr [ %usbmisc_data409, %usbmisc_get_init_data.exit.thread407 ], [ %usbmisc_data, %usbmisc_get_init_data.exit.if.end15_crit_edge ]
  %41 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %of_node, align 8
  %call17 = call i32 @of_usb_get_phy_mode(ptr noundef %42) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call17)
  %cmp = icmp eq i32 %call17, 5
  br i1 %cmp, label %land.lhs.true, label %if.end15.if.end80_crit_edge

if.end15.if.end80_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

land.lhs.true:                                    ; preds = %if.end15
  %43 = ptrtoint ptr %usbmisc_data411 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %usbmisc_data411, align 4
  %tobool19.not = icmp eq ptr %44, null
  br i1 %tobool19.not, label %land.lhs.true.if.end80_crit_edge, label %if.then20

land.lhs.true.if.end80_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

if.then20:                                        ; preds = %land.lhs.true
  %45 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags8, align 4
  %or22 = or i32 %46, 16384
  store i32 %or22, ptr %flags8, align 4
  %hsic = getelementptr inbounds %struct.imx_usbmisc_data, ptr %44, i32 0, i32 2
  %47 = ptrtoint ptr %hsic to i32
  call void @__asan_load2_noabort(i32 %47)
  %bf.load = load i16, ptr %hsic, align 4
  %bf.set = or i16 %bf.load, 512
  store i16 %bf.set, ptr %hsic, align 4
  %call24 = call ptr @devm_pinctrl_get(ptr noundef %dev) #6
  %pinctrl = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %call.i, i32 0, i32 7
  %48 = ptrtoint ptr %pinctrl to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call24, ptr %pinctrl, align 4
  %49 = ptrtoint ptr %call24 to i32
  %cmp27 = icmp eq ptr %call24, inttoptr (i32 -19 to ptr)
  br i1 %cmp27, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %pinctrl to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %pinctrl, align 4
  br label %if.end43

if.else:                                          ; preds = %if.then20
  %cmp.i380 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i380, label %if.then32, label %if.else.if.end43_crit_edge

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then32:                                        ; preds = %if.else
  %cmp35.not = icmp eq ptr %call24, inttoptr (i32 -517 to ptr)
  br i1 %cmp35.not, label %if.then32.if.end39_crit_edge, label %do.end

if.then32.if.end39_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

do.end:                                           ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %49) #9
  br label %if.end39

if.end39:                                         ; preds = %do.end, %if.then32.if.end39_crit_edge
  %51 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pinctrl, align 4
  %53 = ptrtoint ptr %52 to i32
  br label %cleanup254

if.end43:                                         ; preds = %if.else.if.end43_crit_edge, %if.then28
  %call44 = call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.6) #6
  %hsic_pad_regulator = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %call.i, i32 0, i32 9
  %54 = ptrtoint ptr %hsic_pad_regulator to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call44, ptr %hsic_pad_regulator, align 4
  %55 = ptrtoint ptr %call44 to i32
  %cmp47 = icmp eq ptr %call44, inttoptr (i32 -19 to ptr)
  br i1 %cmp47, label %if.end67.thread, label %if.else50

if.end67.thread:                                  ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %hsic_pad_regulator to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %hsic_pad_regulator, align 4
  br label %if.end80

if.else50:                                        ; preds = %if.end43
  %cmp.i381 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i381, label %if.then53, label %if.end67

if.then53:                                        ; preds = %if.else50
  %cmp56.not = icmp eq ptr %call44, inttoptr (i32 -517 to ptr)
  br i1 %cmp56.not, label %if.then53.if.end63_crit_edge, label %do.end60

if.then53.if.end63_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

do.end60:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %55) #9
  br label %if.end63

if.end63:                                         ; preds = %do.end60, %if.then53.if.end63_crit_edge
  %57 = ptrtoint ptr %hsic_pad_regulator to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hsic_pad_regulator, align 4
  %59 = ptrtoint ptr %58 to i32
  br label %cleanup254

if.end67:                                         ; preds = %if.else50
  %tobool69.not = icmp eq ptr %call44, null
  br i1 %tobool69.not, label %if.end67.if.end80_crit_edge, label %if.then70

if.end67.if.end80_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

if.then70:                                        ; preds = %if.end67
  %call72 = call i32 @regulator_enable(ptr noundef nonnull %call44) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then70.if.end80_crit_edge, label %do.end77

if.then70.if.end80_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

do.end77:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  br label %cleanup254

if.end80:                                         ; preds = %if.then70.if.end80_crit_edge, %if.end67.if.end80_crit_edge, %if.end67.thread, %land.lhs.true.if.end80_crit_edge, %if.end15.if.end80_crit_edge
  %pinctrl81 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %call.i, i32 0, i32 7
  %60 = ptrtoint ptr %pinctrl81 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pinctrl81, align 4
  %tobool82.not = icmp eq ptr %61, null
  br i1 %tobool82.not, label %if.end80.if.end115_crit_edge, label %if.then83

if.end80.if.end115_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

if.then83:                                        ; preds = %if.end80
  %call85 = call ptr @pinctrl_lookup_state(ptr noundef nonnull %61, ptr noundef nonnull @.str.13) #6
  %cmp.i382 = icmp ugt ptr %call85, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i382, label %do.end90, label %if.end93

do.end90:                                         ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %call85 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %62) #9
  br label %cleanup254

if.end93:                                         ; preds = %if.then83
  %63 = ptrtoint ptr %pinctrl81 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pinctrl81, align 4
  %call95 = call i32 @pinctrl_select_state(ptr noundef %64, ptr noundef %call85) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end101, label %do.end100

do.end100:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call95) #9
  br label %cleanup254

if.end101:                                        ; preds = %if.end93
  %65 = ptrtoint ptr %pinctrl81 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pinctrl81, align 4
  %call103 = call ptr @pinctrl_lookup_state(ptr noundef %66, ptr noundef nonnull @.str.20) #6
  %pinctrl_hsic_active = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %call.i, i32 0, i32 8
  %67 = ptrtoint ptr %pinctrl_hsic_active to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call103, ptr %pinctrl_hsic_active, align 4
  %cmp.i383 = icmp ugt ptr %call103, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i383, label %do.end109, label %if.end101.if.end115_crit_edge

if.end101.if.end115_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

do.end109:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %call103 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %68) #9
  %69 = ptrtoint ptr %pinctrl_hsic_active to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pinctrl_hsic_active, align 4
  %71 = ptrtoint ptr %70 to i32
  br label %cleanup254

if.end115:                                        ; preds = %if.end101.if.end115_crit_edge, %if.end80.if.end115_crit_edge
  %72 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags8, align 4
  %and = and i32 %73, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool117.not = icmp eq i32 %and, 0
  br i1 %tobool117.not, label %if.end115.if.end119_crit_edge, label %if.then118

if.end115.if.end119_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end119

if.then118:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  %pm_qos_req = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %call.i, i32 0, i32 14
  call void @cpu_latency_qos_add_request(ptr noundef %pm_qos_req, i32 noundef 0) #6
  br label %if.end119

if.end119:                                        ; preds = %if.then118, %if.end115.if.end119_crit_edge
  %74 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %driver_data.i.i, align 4
  %call1.i = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.58) #6
  %clk_ipg.i = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %75, i32 0, i32 11
  %76 = ptrtoint ptr %clk_ipg.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call1.i, ptr %clk_ipg.i, align 4
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end14.i

if.then.i:                                        ; preds = %if.end119
  %call4.i = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %clk.i = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %75, i32 0, i32 2
  %77 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call4.i, ptr %clk.i, align 4
  %cmp.i62.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i62.i, label %if.then7.i, label %if.then.i.if.end123_crit_edge

if.then.i.if.end123_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %call4.i to i32
  %79 = ptrtoint ptr %clk_ipg.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %clk_ipg.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.59, i32 noundef %78, i32 noundef %81) #9
  br label %disable_hsic_regulator

if.end14.i:                                       ; preds = %if.end119
  %call15.i = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.61) #6
  %clk_ahb.i = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %75, i32 0, i32 12
  %82 = ptrtoint ptr %clk_ahb.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call15.i, ptr %clk_ahb.i, align 4
  %cmp.i63.i = icmp ugt ptr %call15.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63.i, label %if.then18.i, label %if.end24.i385

if.then18.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %call15.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63, i32 noundef %83) #9
  br label %disable_hsic_regulator

if.end24.i385:                                    ; preds = %if.end14.i
  %call25.i = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.65) #6
  %clk_per.i = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %75, i32 0, i32 13
  %84 = ptrtoint ptr %clk_per.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call25.i, ptr %clk_per.i, align 4
  %cmp.i64.i = icmp ugt ptr %call25.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i64.i, label %if.then28.i, label %if.end34.i

if.then28.i:                                      ; preds = %if.end24.i385
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %call25.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.67, i32 noundef %85) #9
  br label %disable_hsic_regulator

if.end34.i:                                       ; preds = %if.end24.i385
  call void @__sanitizer_cov_trace_pc() #8
  %need_three_clks.i = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %75, i32 0, i32 10
  %86 = ptrtoint ptr %need_three_clks.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %need_three_clks.i, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.end34.i, %if.then.i.if.end123_crit_edge
  %call124 = call fastcc i32 @imx_prepare_enable_clks(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end127, label %if.end123.disable_hsic_regulator_crit_edge

if.end123.disable_hsic_regulator_crit_edge:       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_hsic_regulator

if.end127:                                        ; preds = %if.end123
  %call128 = call ptr @devm_usb_get_phy_by_phandle(ptr noundef %dev, ptr noundef nonnull @.str.24, i8 noundef zeroext 0) #6
  %87 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call128, ptr %call.i, align 4
  %cmp.i387 = icmp ugt ptr %call128, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i387, label %if.then131, label %if.end127.if.end150_crit_edge

if.end127.if.end150_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end150

if.then131:                                       ; preds = %if.end127
  %88 = ptrtoint ptr %call128 to i32
  %cmp134.not = icmp eq ptr %call128, inttoptr (i32 -19 to ptr)
  br i1 %cmp134.not, label %if.end136, label %if.then131.err_clk_crit_edge

if.then131.err_clk_crit_edge:                     ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_clk

if.end136:                                        ; preds = %if.then131
  %call137 = call ptr @devm_usb_get_phy_by_phandle(ptr noundef %dev, ptr noundef nonnull @.str.25, i8 noundef zeroext 0) #6
  %89 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call137, ptr %call.i, align 4
  %cmp.i388 = icmp ugt ptr %call137, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i388, label %if.then141, label %if.end136.if.end150_crit_edge

if.end136.if.end150_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end150

if.then141:                                       ; preds = %if.end136
  %90 = ptrtoint ptr %call137 to i32
  %cmp144 = icmp eq ptr %call137, inttoptr (i32 -19 to ptr)
  br i1 %cmp144, label %if.then145, label %if.then141.err_clk_crit_edge

if.then141.err_clk_crit_edge:                     ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_clk

if.then145:                                       ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #8
  %91 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %call.i, align 4
  br label %if.end150

if.end150:                                        ; preds = %if.then145, %if.end136.if.end150_crit_edge, %if.end127.if.end150_crit_edge
  %92 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %call.i, align 4
  %usb_phy = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %pdata, i32 0, i32 4
  %94 = ptrtoint ptr %usb_phy to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %93, ptr %usb_phy, align 4
  %95 = ptrtoint ptr %usbmisc_data411 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %usbmisc_data411, align 4
  %tobool153.not = icmp eq ptr %96, null
  br i1 %tobool153.not, label %if.end150.if.end158_crit_edge, label %if.then154

if.end150.if.end158_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end158

if.then154:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #8
  %usb_phy157 = getelementptr inbounds %struct.imx_usbmisc_data, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %usb_phy157 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %93, ptr %usb_phy157, align 4
  br label %if.end158

if.end158:                                        ; preds = %if.then154, %if.end150.if.end158_crit_edge
  %call159 = call i32 @of_device_is_compatible(ptr noundef %10, ptr noundef nonnull @.str.26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %lor.lhs.false, label %if.end158.land.lhs.true163_crit_edge

if.end158.land.lhs.true163_crit_edge:             ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true163

lor.lhs.false:                                    ; preds = %if.end158
  %call161 = call i32 @of_device_is_compatible(ptr noundef %10, ptr noundef nonnull @.str.27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %lor.lhs.false.if.end174_crit_edge, label %lor.lhs.false.land.lhs.true163_crit_edge

lor.lhs.false.land.lhs.true163_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true163

lor.lhs.false.if.end174_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end174

land.lhs.true163:                                 ; preds = %lor.lhs.false.land.lhs.true163_crit_edge, %if.end158.land.lhs.true163_crit_edge
  %98 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %usb_phy, align 4
  %tobool165.not = icmp eq ptr %99, null
  br i1 %tobool165.not, label %land.lhs.true163.if.end174_crit_edge, label %land.lhs.true166

land.lhs.true163.if.end174_crit_edge:             ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end174

land.lhs.true166:                                 ; preds = %land.lhs.true163
  %call167 = call i32 @of_usb_get_phy_mode(ptr noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call167)
  %cmp168 = icmp eq i32 %call167, 3
  br i1 %cmp168, label %if.then169, label %land.lhs.true166.if.end174_crit_edge

land.lhs.true166.if.end174_crit_edge:             ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end174

if.then169:                                       ; preds = %land.lhs.true166
  %100 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %flags8, align 4
  %or171 = or i32 %101, 4096
  store i32 %or171, ptr %flags8, align 4
  %override_phy_control = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %call.i, i32 0, i32 5
  %102 = ptrtoint ptr %override_phy_control to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %override_phy_control, align 1
  %103 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %usb_phy, align 4
  %tobool.not.i389 = icmp eq ptr %104, null
  br i1 %tobool.not.i389, label %if.then169.if.end174_crit_edge, label %land.lhs.true.i

if.then169.if.end174_crit_edge:                   ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end174

land.lhs.true.i:                                  ; preds = %if.then169
  %init.i = getelementptr inbounds %struct.usb_phy, ptr %104, i32 0, i32 22
  %105 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %init.i, align 4
  %tobool1.not.i = icmp eq ptr %106, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end174_crit_edge, label %if.then.i391

land.lhs.true.i.if.end174_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end174

if.then.i391:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i390 = call i32 %106(ptr noundef nonnull %104) #6
  br label %if.end174

if.end174:                                        ; preds = %if.then.i391, %land.lhs.true.i.if.end174_crit_edge, %if.then169.if.end174_crit_edge, %land.lhs.true166.if.end174_crit_edge, %land.lhs.true163.if.end174_crit_edge, %lor.lhs.false.if.end174_crit_edge
  %107 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %flags8, align 4
  %and176 = and i32 %108, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176)
  %tobool177.not = icmp eq i32 %and176, 0
  br i1 %tobool177.not, label %if.end174.if.end179_crit_edge, label %if.then178

if.end174.if.end179_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end179

if.then178:                                       ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #8
  %supports_runtime_pm = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %call.i, i32 0, i32 4
  %109 = ptrtoint ptr %supports_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 1, ptr %supports_runtime_pm, align 4
  br label %if.end179

if.end179:                                        ; preds = %if.then178, %if.end174.if.end179_crit_edge
  %110 = ptrtoint ptr %usbmisc_data411 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %usbmisc_data411, align 4
  %call181 = call i32 @imx_usbmisc_init(ptr noundef %111) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %if.end187, label %do.end186

do.end186:                                        ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %call181) #9
  br label %err_clk

if.end187:                                        ; preds = %if.end179
  %resource = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 7
  %112 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %resource, align 8
  %num_resources = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 6
  %114 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %num_resources, align 4
  %call188 = call ptr @ci_hdrc_add_device(ptr noundef %dev, ptr noundef %113, i32 noundef %115, ptr noundef nonnull %pdata) #6
  %ci_pdev = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %call.i, i32 0, i32 1
  %116 = ptrtoint ptr %ci_pdev to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call188, ptr %ci_pdev, align 4
  %cmp.i392 = icmp ugt ptr %call188, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i392, label %if.then191, label %if.end200

if.then191:                                       ; preds = %if.end187
  %cmp194.not = icmp eq ptr %call188, inttoptr (i32 -517 to ptr)
  br i1 %cmp194.not, label %if.then191.err_clk_crit_edge, label %do.end198

if.then191.err_clk_crit_edge:                     ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_clk

do.end198:                                        ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #8
  %117 = ptrtoint ptr %call188 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %117) #9
  br label %err_clk

if.end200:                                        ; preds = %if.end187
  %118 = ptrtoint ptr %usbmisc_data411 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %usbmisc_data411, align 4
  %tobool202.not = icmp eq ptr %119, null
  br i1 %tobool202.not, label %if.end200.if.end226_crit_edge, label %if.then203

if.end200.if.end226_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end226

if.then203:                                       ; preds = %if.end200
  %edev = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %pdata, i32 0, i32 17, i32 3
  %120 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %edev, align 4
  %cmp.i393 = icmp ugt ptr %121, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i393, label %lor.lhs.false205, label %if.then203.if.then207_crit_edge

if.then203.if.then207_crit_edge:                  ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then207

lor.lhs.false205:                                 ; preds = %if.then203
  %call.i394 = call ptr @of_find_property(ptr noundef %10, ptr noundef nonnull @.str.34, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i394, null
  br i1 %tobool.i.not, label %lor.lhs.false205.if.end212_crit_edge, label %lor.lhs.false205.if.then207_crit_edge

lor.lhs.false205.if.then207_crit_edge:            ; preds = %lor.lhs.false205
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then207

lor.lhs.false205.if.end212_crit_edge:             ; preds = %lor.lhs.false205
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end212

if.then207:                                       ; preds = %lor.lhs.false205.if.then207_crit_edge, %if.then203.if.then207_crit_edge
  %122 = ptrtoint ptr %usbmisc_data411 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %usbmisc_data411, align 4
  %ext_id = getelementptr inbounds %struct.imx_usbmisc_data, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %ext_id to i32
  call void @__asan_load2_noabort(i32 %124)
  %bf.load209 = load i16, ptr %ext_id, align 4
  %bf.set211 = or i16 %bf.load209, 256
  store i16 %bf.set211, ptr %ext_id, align 4
  br label %if.end212

if.end212:                                        ; preds = %if.then207, %lor.lhs.false205.if.end212_crit_edge
  %edev213 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %pdata, i32 0, i32 16, i32 3
  %125 = ptrtoint ptr %edev213 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %edev213, align 4
  %cmp.i395 = icmp ugt ptr %126, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i395, label %lor.lhs.false215, label %if.end212.if.then217_crit_edge

if.end212.if.then217_crit_edge:                   ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then217

lor.lhs.false215:                                 ; preds = %if.end212
  %call.i396 = call ptr @of_find_property(ptr noundef %10, ptr noundef nonnull @.str.34, ptr noundef null) #6
  %tobool.i397.not = icmp eq ptr %call.i396, null
  br i1 %tobool.i397.not, label %lor.lhs.false215.if.end222_crit_edge, label %lor.lhs.false215.if.then217_crit_edge

lor.lhs.false215.if.then217_crit_edge:            ; preds = %lor.lhs.false215
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then217

lor.lhs.false215.if.end222_crit_edge:             ; preds = %lor.lhs.false215
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end222

if.then217:                                       ; preds = %lor.lhs.false215.if.then217_crit_edge, %if.end212.if.then217_crit_edge
  %127 = ptrtoint ptr %usbmisc_data411 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %usbmisc_data411, align 4
  %ext_vbus = getelementptr inbounds %struct.imx_usbmisc_data, ptr %128, i32 0, i32 2
  %129 = ptrtoint ptr %ext_vbus to i32
  call void @__asan_load2_noabort(i32 %129)
  %bf.load219 = load i16, ptr %ext_vbus, align 4
  %bf.set221 = or i16 %bf.load219, 128
  store i16 %bf.set221, ptr %ext_vbus, align 4
  br label %if.end222

if.end222:                                        ; preds = %if.then217, %lor.lhs.false215.if.end222_crit_edge
  %130 = ptrtoint ptr %ci_pdev to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ci_pdev, align 4
  %call224 = call i32 @ci_hdrc_query_available_role(ptr noundef %131) #6
  %132 = ptrtoint ptr %usbmisc_data411 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %usbmisc_data411, align 4
  %available_role = getelementptr inbounds %struct.imx_usbmisc_data, ptr %133, i32 0, i32 4
  %134 = ptrtoint ptr %available_role to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %call224, ptr %available_role, align 4
  br label %if.end226

if.end226:                                        ; preds = %if.end222, %if.end200.if.end226_crit_edge
  %135 = ptrtoint ptr %usbmisc_data411 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %usbmisc_data411, align 4
  %call228 = call i32 @imx_usbmisc_init_post(ptr noundef %136) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228)
  %tobool229.not = icmp eq i32 %call228, 0
  br i1 %tobool229.not, label %if.end234, label %do.end233

do.end233:                                        ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %call228) #9
  %137 = ptrtoint ptr %ci_pdev to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ci_pdev, align 4
  call void @ci_hdrc_remove_device(ptr noundef %138) #6
  br label %err_clk

if.end234:                                        ; preds = %if.end226
  %supports_runtime_pm235 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %call.i, i32 0, i32 4
  %139 = ptrtoint ptr %supports_runtime_pm235 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %supports_runtime_pm235, align 4, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool236.not = icmp eq i8 %140, 0
  br i1 %tobool236.not, label %if.end234.if.end239_crit_edge, label %if.then237

if.end234.if.end239_crit_edge:                    ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end239

if.then237:                                       ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #8
  %call.i398 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #6
  call void @pm_runtime_enable(ptr noundef %dev) #6
  br label %if.end239

if.end239:                                        ; preds = %if.then237, %if.end234.if.end239_crit_edge
  call void @device_set_wakeup_capable(ptr noundef %dev, i1 noundef zeroext true) #6
  br label %cleanup254

err_clk:                                          ; preds = %do.end233, %do.end198, %if.then191.err_clk_crit_edge, %do.end186, %if.then141.err_clk_crit_edge, %if.then131.err_clk_crit_edge
  %ret.0 = phi i32 [ %88, %if.then131.err_clk_crit_edge ], [ %call181, %do.end186 ], [ %117, %do.end198 ], [ -517, %if.then191.err_clk_crit_edge ], [ %call228, %do.end233 ], [ %90, %if.then141.err_clk_crit_edge ]
  call fastcc void @imx_disable_unprepare_clks(ptr noundef %dev)
  br label %disable_hsic_regulator

disable_hsic_regulator:                           ; preds = %err_clk, %if.end123.disable_hsic_regulator_crit_edge, %if.then28.i, %if.then18.i, %if.then7.i
  %ret.1 = phi i32 [ %call124, %if.end123.disable_hsic_regulator_crit_edge ], [ %ret.0, %err_clk ], [ %78, %if.then7.i ], [ %83, %if.then18.i ], [ %85, %if.then28.i ]
  %hsic_pad_regulator241 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %call.i, i32 0, i32 9
  %141 = ptrtoint ptr %hsic_pad_regulator241 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %hsic_pad_regulator241, align 4
  %tobool242.not = icmp eq ptr %142, null
  br i1 %tobool242.not, label %disable_hsic_regulator.if.end246_crit_edge, label %if.then243

disable_hsic_regulator.if.end246_crit_edge:       ; preds = %disable_hsic_regulator
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end246

if.then243:                                       ; preds = %disable_hsic_regulator
  call void @__sanitizer_cov_trace_pc() #8
  %call245 = call i32 @regulator_disable(ptr noundef nonnull %142) #6
  br label %if.end246

if.end246:                                        ; preds = %if.then243, %disable_hsic_regulator.if.end246_crit_edge
  %143 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %flags8, align 4
  %and248 = and i32 %144, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and248)
  %tobool249.not = icmp eq i32 %and248, 0
  br i1 %tobool249.not, label %if.end246.if.end252_crit_edge, label %if.then250

if.end246.if.end252_crit_edge:                    ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end252

if.then250:                                       ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #8
  %pm_qos_req251 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %call.i, i32 0, i32 14
  call void @cpu_latency_qos_remove_request(ptr noundef %pm_qos_req251) #6
  br label %if.end252

if.end252:                                        ; preds = %if.then250, %if.end246.if.end252_crit_edge
  %ci_pdev253 = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %call.i, i32 0, i32 1
  %145 = ptrtoint ptr %ci_pdev253 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr null, ptr %ci_pdev253, align 4
  br label %cleanup254

cleanup254:                                       ; preds = %if.end252, %if.end239, %do.end109, %do.end100, %do.end90, %do.end77, %if.end63, %if.end39, %if.then12, %dev_name.exit.cleanup254_crit_edge
  %retval.1 = phi i32 [ %40, %if.then12 ], [ %call72, %do.end77 ], [ %ret.1, %if.end252 ], [ 0, %if.end239 ], [ %59, %if.end63 ], [ %53, %if.end39 ], [ -12, %dev_name.exit.cleanup254_crit_edge ], [ %71, %do.end109 ], [ %call95, %do.end100 ], [ %62, %do.end90 ]
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %pdata) #6
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_hdrc_imx_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %supports_runtime_pm = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %supports_runtime_pm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %supports_runtime_pm, align 4, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !206
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #6
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #6, !srcloc !207
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.if.end_crit_edge, label %do.end11.i.i.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !208
  br label %if.end

if.end:                                           ; preds = %do.end11.i.i.i.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %ci_pdev = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %ci_pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ci_pdev, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ci_hdrc_remove_device(ptr noundef nonnull %6) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %override_phy_control = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %override_phy_control to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %override_phy_control, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  br i1 %tobool8.not, label %if.end7.if.end10_crit_edge, label %if.then9

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then9:                                         ; preds = %if.end7
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.then9.if.end10_crit_edge, label %land.lhs.true.i

if.then9.if.end10_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

land.lhs.true.i:                                  ; preds = %if.then9
  %shutdown.i = getelementptr inbounds %struct.usb_phy, ptr %10, i32 0, i32 23
  %11 = ptrtoint ptr %shutdown.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %shutdown.i, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end10_crit_edge, label %if.then.i

land.lhs.true.i.if.end10_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %12(ptr noundef nonnull %10) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end10_crit_edge, %if.then9.if.end10_crit_edge, %if.end7.if.end10_crit_edge
  %13 = ptrtoint ptr %ci_pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ci_pdev, align 4
  %tobool12.not = icmp eq ptr %14, null
  br i1 %tobool12.not, label %if.end10.if.end23_crit_edge, label %if.then13

if.end10.if.end23_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then13:                                        ; preds = %if.end10
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i, align 4
  %need_three_clks.i = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %need_three_clks.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %need_three_clks.i, align 4, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i39 = icmp eq i8 %18, 0
  br i1 %tobool.not.i39, label %if.else.i, label %if.then.i40

if.then.i40:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  %clk_per.i = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %16, i32 0, i32 13
  %19 = ptrtoint ptr %clk_per.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk_per.i, align 4
  tail call void @clk_disable(ptr noundef %20) #6
  tail call void @clk_unprepare(ptr noundef %20) #6
  %clk_ahb.i = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %16, i32 0, i32 12
  %21 = ptrtoint ptr %clk_ahb.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk_ahb.i, align 4
  tail call void @clk_disable(ptr noundef %22) #6
  tail call void @clk_unprepare(ptr noundef %22) #6
  %clk_ipg.i = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %16, i32 0, i32 11
  br label %imx_disable_unprepare_clks.exit

if.else.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  %clk.i = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %16, i32 0, i32 2
  br label %imx_disable_unprepare_clks.exit

imx_disable_unprepare_clks.exit:                  ; preds = %if.else.i, %if.then.i40
  %clk.sink.i = phi ptr [ %clk.i, %if.else.i ], [ %clk_ipg.i, %if.then.i40 ]
  %23 = ptrtoint ptr %clk.sink.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk.sink.i, align 4
  tail call void @clk_disable(ptr noundef %24) #6
  tail call void @clk_unprepare(ptr noundef %24) #6
  %plat_data = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %1, i32 0, i32 15
  %25 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %plat_data, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %and = and i32 %28, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %imx_disable_unprepare_clks.exit.if.end17_crit_edge, label %if.then16

imx_disable_unprepare_clks.exit.if.end17_crit_edge: ; preds = %imx_disable_unprepare_clks.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then16:                                        ; preds = %imx_disable_unprepare_clks.exit
  call void @__sanitizer_cov_trace_pc() #8
  %pm_qos_req = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %1, i32 0, i32 14
  tail call void @cpu_latency_qos_remove_request(ptr noundef %pm_qos_req) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %imx_disable_unprepare_clks.exit.if.end17_crit_edge
  %hsic_pad_regulator = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %1, i32 0, i32 9
  %29 = ptrtoint ptr %hsic_pad_regulator to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hsic_pad_regulator, align 4
  %tobool18.not = icmp eq ptr %30, null
  br i1 %tobool18.not, label %if.end17.if.end23_crit_edge, label %if.then19

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = tail call i32 @regulator_disable(ptr noundef nonnull %30) #6
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end17.if.end23_crit_edge, %if.end10.if.end23_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ci_hdrc_imx_shutdown(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ci_hdrc_imx_remove(ptr noundef %pdev)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_hdrc_imx_notify_event(ptr nocapture noundef readonly %ci, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci, align 8
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %usbmisc_data = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %usbmisc_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usbmisc_data, align 4
  %8 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb7
    i32 4, label %sw.bb15
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %pinctrl = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %5, i32 0, i32 7
  %9 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pinctrl, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %pinctrl_hsic_active = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %5, i32 0, i32 8
  %11 = ptrtoint ptr %pinctrl_hsic_active to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pinctrl_hsic_active, align 4
  %call3 = tail call i32 @pinctrl_select_state(ptr noundef nonnull %10, ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.sw.epilog_crit_edge, label %do.end

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.38, i32 noundef %call3) #9
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %call8 = tail call i32 @imx_usbmisc_hsic_set_connect(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %sw.bb7.sw.epilog_crit_edge, label %do.end13

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end13:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.41, i32 noundef %call8) #9
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %vbus_active = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 33
  %13 = ptrtoint ptr %vbus_active to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vbus_active, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool16.not = icmp ne i32 %14, 0
  %call19 = tail call i32 @imx_usbmisc_charger_detection(ptr noundef %7, i1 noundef zeroext %tobool16.not) #6
  %usb_phy = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 37
  %15 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usb_phy, align 4
  %tobool21.not = icmp eq ptr %16, null
  br i1 %tobool21.not, label %sw.bb15.sw.epilog_crit_edge, label %if.then22

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then22:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  %chg_work = getelementptr inbounds %struct.usb_phy, ptr %16, i32 0, i32 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %17 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %chg_work) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then22, %sw.bb15.sw.epilog_crit_edge, %do.end13, %sw.bb7.sw.epilog_crit_edge, %do.end, %if.then.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.1 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %call19, %if.then22 ], [ %call19, %sw.bb15.sw.epilog_crit_edge ], [ %call8, %do.end13 ], [ 0, %sw.bb7.sw.epilog_crit_edge ], [ %call3, %do.end ], [ 0, %if.then.sw.epilog_crit_edge ], [ 0, %sw.bb.sw.epilog_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_usb_get_phy_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_add_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx_prepare_enable_clks(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %need_three_clks = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %need_three_clks to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %need_three_clks, align 4, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %clk_ipg = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_ipg, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.69, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %clk_ahb = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_ahb, align 4
  %call.i53 = tail call i32 @clk_prepare(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %tobool.not.i54 = icmp eq i32 %call.i53, 0
  br i1 %tobool.not.i54, label %if.end.i57, label %if.end.do.end9_crit_edge

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

if.end.i57:                                       ; preds = %if.end
  %call1.i55 = tail call i32 @clk_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i55)
  %tobool2.not.i56 = icmp eq i32 %call1.i55, 0
  br i1 %tobool2.not.i56, label %if.end11, label %if.then3.i58

if.then3.i58:                                     ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %do.end9

do.end9:                                          ; preds = %if.then3.i58, %if.end.do.end9_crit_edge
  %retval.0.i59.ph = phi i32 [ %call1.i55, %if.then3.i58 ], [ %call.i53, %if.end.do.end9_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.72, i32 noundef %retval.0.i59.ph) #9
  %8 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_ipg, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  br label %cleanup

if.end11:                                         ; preds = %if.end.i57
  %clk_per = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_per, align 4
  %call.i61 = tail call i32 @clk_prepare(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool.not.i62 = icmp eq i32 %call.i61, 0
  br i1 %tobool.not.i62, label %if.end.i65, label %if.end11.do.end17_crit_edge

if.end11.do.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

if.end.i65:                                       ; preds = %if.end11
  %call1.i63 = tail call i32 @clk_enable(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63)
  %tobool2.not.i64 = icmp eq i32 %call1.i63, 0
  br i1 %tobool2.not.i64, label %if.end.i65.cleanup_crit_edge, label %if.then3.i66

if.end.i65.cleanup_crit_edge:                     ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.i66:                                     ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %11) #6
  br label %do.end17

do.end17:                                         ; preds = %if.then3.i66, %if.end11.do.end17_crit_edge
  %retval.0.i67.ph = phi i32 [ %call1.i63, %if.then3.i66 ], [ %call.i61, %if.end11.do.end17_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.75, i32 noundef %retval.0.i67.ph) #9
  %12 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_ahb, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  tail call void @clk_unprepare(ptr noundef %13) #6
  %14 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_ipg, align 4
  tail call void @clk_disable(ptr noundef %15) #6
  tail call void @clk_unprepare(ptr noundef %15) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  %clk = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk, align 4
  %call.i69 = tail call i32 @clk_prepare(ptr noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool.not.i70 = icmp eq i32 %call.i69, 0
  br i1 %tobool.not.i70, label %if.end.i73, label %if.else.do.end26_crit_edge

if.else.do.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end26

if.end.i73:                                       ; preds = %if.else
  %call1.i71 = tail call i32 @clk_enable(ptr noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i71)
  %tobool2.not.i72 = icmp eq i32 %call1.i71, 0
  br i1 %tobool2.not.i72, label %if.end.i73.cleanup_crit_edge, label %if.then3.i74

if.end.i73.cleanup_crit_edge:                     ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.i74:                                     ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %17) #6
  br label %do.end26

do.end26:                                         ; preds = %if.then3.i74, %if.else.do.end26_crit_edge
  %retval.0.i75.ph = phi i32 [ %call1.i71, %if.then3.i74 ], [ %call.i69, %if.else.do.end26_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.78, i32 noundef %retval.0.i75.ph) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %if.end.i73.cleanup_crit_edge, %do.end17, %if.end.i65.cleanup_crit_edge, %do.end9, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %retval.0.i59.ph, %do.end9 ], [ %retval.0.i67.ph, %do.end17 ], [ %retval.0.i75.ph, %do.end26 ], [ 0, %if.end.i65.cleanup_crit_edge ], [ 0, %if.end.i73.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy_by_phandle(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_usbmisc_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ci_hdrc_add_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ci_hdrc_query_available_role(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_usbmisc_init_post(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_hdrc_remove_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imx_disable_unprepare_clks(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %need_three_clks = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %need_three_clks to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %need_three_clks, align 4, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %clk_per = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_per, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  %clk_ahb = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_ahb, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  %clk_ipg = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %1, i32 0, i32 11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %clk = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %1, i32 0, i32 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %clk.sink = phi ptr [ %clk, %if.else ], [ %clk_ipg, %if.then ]
  %8 = ptrtoint ptr %clk.sink to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk.sink, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_remove_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_usbmisc_hsic_set_connect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_usbmisc_charger_detection(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_hdrc_imx_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %in_lpm = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %in_lpm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %in_lpm, align 2, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.if.end7_crit_edge, label %device_may_wakeup.exit

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

device_may_wakeup.exit:                           ; preds = %if.end
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end7_crit_edge, label %if.then2

device_may_wakeup.exit.if.end7_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then2:                                         ; preds = %device_may_wakeup.exit
  %usbmisc_data = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %usbmisc_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usbmisc_data, align 4
  %call3 = tail call i32 @imx_usbmisc_set_wakeup(ptr noundef %8, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.if.end7_crit_edge, label %do.end

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.80, i32 noundef %call3) #9
  br label %cleanup

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %device_may_wakeup.exit.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %call8 = tail call fastcc i32 @imx_controller_suspend(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end7.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end ], [ 0, %if.end11 ], [ 0, %entry.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_hdrc_imx_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #6
  %call2 = tail call fastcc i32 @imx_controller_resume(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %supports_runtime_pm = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %supports_runtime_pm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %supports_runtime_pm, align 4, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #6
  tail call void @pm_runtime_enable(ptr noundef %dev) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_hdrc_imx_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %in_lpm = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %in_lpm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %in_lpm, align 2, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end17, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 652, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end17:                                         ; preds = %entry
  %usbmisc_data = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %usbmisc_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usbmisc_data, align 4
  %call18 = tail call i32 @imx_usbmisc_set_wakeup(ptr noundef %5, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end24, label %do.end23

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.80, i32 noundef %call18) #9
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %call25 = tail call fastcc i32 @imx_controller_suspend(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end23, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call18, %do.end23 ], [ %call25, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_hdrc_imx_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @imx_controller_resume(ptr noundef %dev)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_usbmisc_set_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx_controller_suspend(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_controller_suspend.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_controller_suspend, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !209

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_controller_suspend.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.83) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %usbmisc_data = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %usbmisc_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usbmisc_data, align 4
  %call4 = tail call i32 @imx_usbmisc_hsic_set_clk(ptr noundef %3, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end10, label %do.end9

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.85, i32 noundef %call4) #9
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %need_three_clks.i = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %need_three_clks.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %need_three_clks.i, align 4, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %clk_per.i = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %5, i32 0, i32 13
  %8 = ptrtoint ptr %clk_per.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_per.i, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  %clk_ahb.i = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %5, i32 0, i32 12
  %10 = ptrtoint ptr %clk_ahb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_ahb.i, align 4
  tail call void @clk_disable(ptr noundef %11) #6
  tail call void @clk_unprepare(ptr noundef %11) #6
  %clk_ipg.i = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %5, i32 0, i32 11
  br label %imx_disable_unprepare_clks.exit

if.else.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %clk.i = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %5, i32 0, i32 2
  br label %imx_disable_unprepare_clks.exit

imx_disable_unprepare_clks.exit:                  ; preds = %if.else.i, %if.then.i
  %clk.sink.i = phi ptr [ %clk.i, %if.else.i ], [ %clk_ipg.i, %if.then.i ]
  %12 = ptrtoint ptr %clk.sink.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk.sink.i, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  tail call void @clk_unprepare(ptr noundef %13) #6
  %plat_data = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %1, i32 0, i32 15
  %14 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %plat_data, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %and = and i32 %17, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %imx_disable_unprepare_clks.exit.if.end13_crit_edge, label %if.then12

imx_disable_unprepare_clks.exit.if.end13_crit_edge: ; preds = %imx_disable_unprepare_clks.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then12:                                        ; preds = %imx_disable_unprepare_clks.exit
  call void @__sanitizer_cov_trace_pc() #8
  %pm_qos_req = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %1, i32 0, i32 14
  tail call void @cpu_latency_qos_remove_request(ptr noundef %pm_qos_req) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %imx_disable_unprepare_clks.exit.if.end13_crit_edge
  %in_lpm = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %in_lpm to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %in_lpm, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end9
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_usbmisc_hsic_set_clk(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx_controller_resume(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_controller_resume.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_controller_resume, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !209

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_controller_resume.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.86) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %in_lpm = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %in_lpm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %in_lpm, align 2, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %do.end17, label %if.end31

do.end17:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 569, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end31:                                         ; preds = %do.end
  %plat_data = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat_data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %if.end31.if.end34_crit_edge, label %if.then33

if.end31.if.end34_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %pm_qos_req = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %1, i32 0, i32 14
  tail call void @cpu_latency_qos_add_request(ptr noundef %pm_qos_req, i32 noundef 0) #6
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end31.if.end34_crit_edge
  %call35 = tail call fastcc i32 @imx_prepare_enable_clks(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %8 = ptrtoint ptr %in_lpm to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %in_lpm, align 2
  %usbmisc_data = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %usbmisc_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usbmisc_data, align 4
  %call40 = tail call i32 @imx_usbmisc_set_wakeup(ptr noundef %10, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end46, label %do.end45

do.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.80, i32 noundef %call40) #9
  br label %clk_disable

if.end46:                                         ; preds = %if.end38
  %11 = ptrtoint ptr %usbmisc_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usbmisc_data, align 4
  %call48 = tail call i32 @imx_usbmisc_hsic_set_clk(ptr noundef %12, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end46.cleanup_crit_edge, label %do.end53

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.85, i32 noundef %call48) #9
  %13 = ptrtoint ptr %usbmisc_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usbmisc_data, align 4
  %call56 = tail call i32 @imx_usbmisc_set_wakeup(ptr noundef %14, i1 noundef zeroext true) #6
  br label %clk_disable

clk_disable:                                      ; preds = %do.end53, %do.end45
  %ret.0 = phi i32 [ %call40, %do.end45 ], [ %call48, %do.end53 ]
  %15 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i, align 4
  %need_three_clks.i = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %need_three_clks.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %need_three_clks.i, align 4, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %clk_disable
  call void @__sanitizer_cov_trace_pc() #8
  %clk_per.i = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %16, i32 0, i32 13
  %19 = ptrtoint ptr %clk_per.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk_per.i, align 4
  tail call void @clk_disable(ptr noundef %20) #6
  tail call void @clk_unprepare(ptr noundef %20) #6
  %clk_ahb.i = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %16, i32 0, i32 12
  %21 = ptrtoint ptr %clk_ahb.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk_ahb.i, align 4
  tail call void @clk_disable(ptr noundef %22) #6
  tail call void @clk_unprepare(ptr noundef %22) #6
  %clk_ipg.i = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %16, i32 0, i32 11
  br label %imx_disable_unprepare_clks.exit

if.else.i:                                        ; preds = %clk_disable
  call void @__sanitizer_cov_trace_pc() #8
  %clk.i = getelementptr inbounds %struct.ci_hdrc_imx_data, ptr %16, i32 0, i32 2
  br label %imx_disable_unprepare_clks.exit

imx_disable_unprepare_clks.exit:                  ; preds = %if.else.i, %if.then.i
  %clk.sink.i = phi ptr [ %clk.i, %if.else.i ], [ %clk_ipg.i, %if.then.i ]
  %23 = ptrtoint ptr %clk.sink.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk.sink.i, align 4
  tail call void @clk_disable(ptr noundef %24) #6
  tail call void @clk_unprepare(ptr noundef %24) #6
  br label %cleanup

cleanup:                                          ; preds = %imx_disable_unprepare_clks.exit, %if.end46.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %do.end17
  %retval.0 = phi i32 [ %ret.0, %imx_disable_unprepare_clks.exit ], [ 0, %do.end17 ], [ %call35, %if.end34.cleanup_crit_edge ], [ 0, %if.end46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !54, !56, !58, !60, !62, !63, !64, !66, !67, !68, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !87, !89, !90, !91, !92, !94, !96, !98, !100, !101, !102, !103, !105, !107, !109, !111, !113, !115, !116, !117, !118, !120, !122, !123, !124, !126, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !172, !173, !174, !176, !177, !178, !179, !181, !182, !183, !185, !186, !188, !189, !191, !192, !194, !195}
!llvm.module.flags = !{!196, !197, !198, !199, !200, !201, !202, !203}
!llvm.ident = !{!204}

!0 = !{ptr @__initcall__kmod_ci_hdrc_imx__295_686_ci_hdrc_imx_driver_init6, !1, !"__initcall__kmod_ci_hdrc_imx__295_686_ci_hdrc_imx_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 686, i32 1}
!2 = !{ptr @__exitcall_ci_hdrc_imx_driver_exit, !1, !"__exitcall_ci_hdrc_imx_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias296, !4, !"__UNIQUE_ID_alias296", i1 false, i1 false}
!4 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 688, i32 1}
!5 = !{ptr @__UNIQUE_ID_file297, !6, !"__UNIQUE_ID_file297", i1 false, i1 false}
!6 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 689, i32 1}
!7 = !{ptr @__UNIQUE_ID_license298, !6, !"__UNIQUE_ID_license298", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description299, !9, !"__UNIQUE_ID_description299", i1 false, i1 false}
!9 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 690, i32 1}
!10 = !{ptr @__UNIQUE_ID_author300, !11, !"__UNIQUE_ID_author300", i1 false, i1 false}
!11 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 691, i32 1}
!12 = !{ptr @__UNIQUE_ID_author301, !13, !"__UNIQUE_ID_author301", i1 false, i1 false}
!13 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 692, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 680, i32 11}
!16 = !{ptr @ci_hdrc_imx_driver, !17, !"ci_hdrc_imx_driver", i1 false, i1 false}
!17 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 675, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 353, i32 5}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ci_hdrc_imx_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @ci_hdrc_imx_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 359, i32 38}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 365, i32 5}
!30 = !{ptr @ci_hdrc_imx_probe._entry.7, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ci_hdrc_imx_probe._entry_ptr.9, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 374, i32 5}
!34 = !{ptr @ci_hdrc_imx_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ci_hdrc_imx_probe._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 385, i32 59}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 387, i32 4}
!40 = !{ptr @ci_hdrc_imx_probe._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ci_hdrc_imx_probe._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 395, i32 4}
!44 = !{ptr @ci_hdrc_imx_probe._entry.17, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ci_hdrc_imx_probe._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 400, i32 9}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 402, i32 4}
!50 = !{ptr @ci_hdrc_imx_probe._entry.21, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @ci_hdrc_imx_probe._entry_ptr.23, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 420, i32 47}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 425, i32 48}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 439, i32 35}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 440, i32 35}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 452, i32 3}
!62 = !{ptr @ci_hdrc_imx_probe._entry.28, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ci_hdrc_imx_probe._entry_ptr.30, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 462, i32 4}
!66 = !{ptr @ci_hdrc_imx_probe._entry.31, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ci_hdrc_imx_probe._entry_ptr.33, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 469, i32 33}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 483, i32 3}
!72 = !{ptr @ci_hdrc_imx_probe._entry.35, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @ci_hdrc_imx_probe._entry_ptr.37, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 292, i32 5}
!76 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ci_hdrc_imx_notify_event._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @ci_hdrc_imx_notify_event._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 300, i32 4}
!81 = !{ptr @ci_hdrc_imx_notify_event._entry.40, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @ci_hdrc_imx_notify_event._entry_ptr.42, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 122, i32 27}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 129, i32 54}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 132, i32 3}
!89 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @usbmisc_get_init_data._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @usbmisc_get_init_data._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 155, i32 27}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 157, i32 34}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 160, i32 34}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 164, i32 3}
!100 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @usbmisc_get_init_data._entry.50, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @usbmisc_get_init_data._entry_ptr.53, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 167, i32 44}
!105 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 168, i32 41}
!107 = !{ptr @.str.56, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 173, i32 27}
!109 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 175, i32 27}
!111 = !{ptr @.str.58, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 187, i32 36}
!113 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 193, i32 4}
!115 = !{ptr @.str.60, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @imx_get_clks._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @imx_get_clks._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.61, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 201, i32 36}
!120 = !{ptr @.str.63, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 204, i32 3}
!122 = !{ptr @imx_get_clks._entry.62, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @imx_get_clks._entry_ptr.64, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.65, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 209, i32 36}
!126 = !{ptr @.str.67, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 212, i32 3}
!128 = !{ptr @imx_get_clks._entry.66, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @imx_get_clks._entry_ptr.68, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.69, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 229, i32 4}
!132 = !{ptr @.str.70, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @imx_prepare_enable_clks._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @imx_prepare_enable_clks._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.72, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 237, i32 4}
!137 = !{ptr @imx_prepare_enable_clks._entry.71, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @imx_prepare_enable_clks._entry_ptr.73, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.75, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 246, i32 4}
!141 = !{ptr @imx_prepare_enable_clks._entry.74, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @imx_prepare_enable_clks._entry_ptr.76, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.78, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 256, i32 4}
!145 = !{ptr @imx_prepare_enable_clks._entry.77, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @imx_prepare_enable_clks._entry_ptr.79, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @ci_hdrc_imx_dt_ids, !148, !"ci_hdrc_imx_dt_ids", i1 false, i1 false}
!148 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 73, i32 34}
!149 = !{ptr @imx23_usb_data, !150, !"imx23_usb_data", i1 false, i1 false}
!150 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 25, i32 47}
!151 = !{ptr @imx28_usb_data, !152, !"imx28_usb_data", i1 false, i1 false}
!152 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 34, i32 47}
!153 = !{ptr @imx27_usb_data, !154, !"imx27_usb_data", i1 false, i1 false}
!154 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 30, i32 47}
!155 = !{ptr @imx6q_usb_data, !156, !"imx6q_usb_data", i1 false, i1 false}
!156 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 40, i32 47}
!157 = !{ptr @imx6sl_usb_data, !158, !"imx6sl_usb_data", i1 false, i1 false}
!158 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 46, i32 47}
!159 = !{ptr @imx6sx_usb_data, !160, !"imx6sx_usb_data", i1 false, i1 false}
!160 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 52, i32 47}
!161 = !{ptr @imx6ul_usb_data, !162, !"imx6ul_usb_data", i1 false, i1 false}
!162 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 58, i32 47}
!163 = !{ptr @imx7d_usb_data, !164, !"imx7d_usb_data", i1 false, i1 false}
!164 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 64, i32 47}
!165 = !{ptr @imx7ulp_usb_data, !166, !"imx7ulp_usb_data", i1 false, i1 false}
!166 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 68, i32 47}
!167 = !{ptr @ci_hdrc_imx_pm_ops, !168, !"ci_hdrc_imx_pm_ops", i1 false, i1 false}
!168 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 670, i32 32}
!169 = !{ptr @.str.80, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 616, i32 4}
!171 = !{ptr @.str.81, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @ci_hdrc_imx_suspend._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @ci_hdrc_imx_suspend._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.82, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 544, i32 2}
!176 = !{ptr @.str.83, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.84, !175, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @imx_controller_suspend.__UNIQUE_ID_ddebug293, !175, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!179 = !{ptr @.str.85, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 548, i32 3}
!181 = !{ptr @imx_controller_suspend._entry, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @imx_controller_suspend._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.86, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 566, i32 2}
!185 = !{ptr @imx_controller_resume.__UNIQUE_ID_ddebug294, !184, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!186 = !{ptr @imx_controller_resume._entry, !187, !"_entry", i1 false, i1 false}
!187 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 584, i32 3}
!188 = !{ptr @imx_controller_resume._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @imx_controller_resume._entry.87, !190, !"_entry", i1 false, i1 false}
!190 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 590, i32 3}
!191 = !{ptr @imx_controller_resume._entry_ptr.88, !190, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.89, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/usb/chipidea/ci_hdrc_imx.c", i32 658, i32 3}
!194 = !{ptr @ci_hdrc_imx_runtime_suspend._entry, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @ci_hdrc_imx_runtime_suspend._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{i32 1, !"wchar_size", i32 2}
!197 = !{i32 1, !"min_enum_size", i32 4}
!198 = !{i32 8, !"branch-target-enforcement", i32 0}
!199 = !{i32 8, !"sign-return-address", i32 0}
!200 = !{i32 8, !"sign-return-address-all", i32 0}
!201 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!202 = !{i32 7, !"uwtable", i32 1}
!203 = !{i32 7, !"frame-pointer", i32 2}
!204 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!205 = !{i8 0, i8 2}
!206 = !{i64 2148355349}
!207 = !{i64 840969, i64 840994, i64 841016, i64 841032, i64 841044, i64 841064, i64 841088, i64 841104, i64 841116}
!208 = !{i64 2148355537}
!209 = !{i64 2148969307, i64 2148969312, i64 2148969325, i64 2148969369, i64 2148969403, i64 2148969424}
