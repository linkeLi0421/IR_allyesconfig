; ModuleID = '/llk/IR_all_yes/drivers/usb/mtu3/mtu3_plat.c_pt.bc'
source_filename = "../drivers/usb/mtu3/mtu3_plat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.ssusb_mtk = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, [4 x %struct.clk_bulk_data], %struct.otg_switch_mtk, i32, i8, i32, i32, i32, i32, ptr, i8, ptr, i32, i32 }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.otg_switch_mtk = type { ptr, ptr, %struct.notifier_block, %struct.work_struct, i32, i32, ptr, i8, i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/mtu3/mtu3_plat.c\00", [35 x i8] zeroinitializer }, align 32
@ssusb_check_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 34, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"clks of sts1 are not stable!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ssusb_check_clocks\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ssusb_check_clocks._entry_ptr = internal global ptr @ssusb_check_clocks._entry, section ".printk_index", align 4
@ssusb_check_clocks._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str, i32 41, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mac2 clock is not stable\0A\00", [38 x i8] zeroinitializer }, align 32
@ssusb_check_clocks._entry_ptr.7 = internal global ptr @ssusb_check_clocks._entry.5, section ".printk_index", align 4
@__initcall__kmod_mtu3__298_590_mtu3_driver_init6 = internal global ptr @mtu3_driver_init, section ".initcall6.init", align 4
@mtu3_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtu3_probe, ptr @mtu3_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.8, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtu3_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtu3_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtu3_driver_exit = internal global ptr @mtu3_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author299 = internal constant [53 x i8] c"mtu3.author=Chunfeng Yun <chunfeng.yun@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [32 x i8] c"mtu3.file=drivers/usb/mtu3/mtu3\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [20 x i8] c"mtu3.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [53 x i8] c"mtu3.description=MediaTek USB3 DRD Controller Driver\00", section ".modinfo", align 1
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mtu3\00", [27 x i8] zeroinitializer }, align 32
@mtu3_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-mtu3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mtu3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@mtu3_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mtu3_suspend, ptr @mtu3_resume, ptr @mtu3_suspend, ptr @mtu3_resume, ptr @mtu3_suspend, ptr @mtu3_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtu3_runtime_suspend, ptr @mtu3_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@mtu3_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 315, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"No suitable DMA config available\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mtu3_probe\00", [21 x i8] zeroinitializer }, align 32
@mtu3_probe._entry_ptr = internal global ptr @mtu3_probe._entry, section ".printk_index", align 4
@mtu3_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str, i32 342, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to set wakeup irq %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mtu3_probe._entry_ptr.13 = internal global ptr @mtu3_probe._entry.11, section ".printk_index", align 4
@mtu3_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str, i32 345, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wakeup irq %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mtu3_probe._entry_ptr.17 = internal global ptr @mtu3_probe._entry.14, section ".printk_index", align 4
@mtu3_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str, i32 362, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to initialize gadget\0A\00", [35 x i8] zeroinitializer }, align 32
@mtu3_probe._entry_ptr.20 = internal global ptr @mtu3_probe._entry.18, section ".printk_index", align 4
@mtu3_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.10, ptr @.str, i32 369, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to initialize host\0A\00", [37 x i8] zeroinitializer }, align 32
@mtu3_probe._entry_ptr.23 = internal global ptr @mtu3_probe._entry.21, section ".printk_index", align 4
@mtu3_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str, i32 376, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mtu3_probe._entry_ptr.25 = internal global ptr @mtu3_probe._entry.24, section ".printk_index", align 4
@mtu3_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.10, ptr @.str, i32 382, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mtu3_probe._entry_ptr.27 = internal global ptr @mtu3_probe._entry.26, section ".printk_index", align 4
@mtu3_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.10, ptr @.str, i32 388, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to initialize switch\0A\00", [35 x i8] zeroinitializer }, align 32
@mtu3_probe._entry_ptr.30 = internal global ptr @mtu3_probe._entry.28, section ".printk_index", align 4
@mtu3_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.10, ptr @.str, i32 393, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unsupported mode: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@mtu3_probe._entry_ptr.33 = internal global ptr @mtu3_probe._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vusb33\00", [25 x i8] zeroinitializer }, align 32
@get_ssusb_rscs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str, i32 203, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to get vusb33\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"get_ssusb_rscs\00", [17 x i8] zeroinitializer }, align 32
@get_ssusb_rscs._entry_ptr = internal global ptr @get_ssusb_rscs._entry, section ".printk_index", align 4
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sys_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ref_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mcu_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dma_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"phys\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"#phy-cells\00", [21 x i8] zeroinitializer }, align 32
@get_ssusb_rscs._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.36, ptr @.str, i32 229, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to get phy-%d\0A\00", [42 x i8] zeroinitializer }, align 32
@get_ssusb_rscs._entry_ptr.45 = internal global ptr @get_ssusb_rscs._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ippc\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wakeup\00", [25 x i8] zeroinitializer }, align 32
@get_ssusb_rscs._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.36, ptr @.str, i32 252, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to parse uwk property\0A\00", [34 x i8] zeroinitializer }, align 32
@get_ssusb_rscs._entry_ptr.50 = internal global ptr @get_ssusb_rscs._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mediatek,u3p-dis-msk\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mediatek,u2p-dis-msk\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@get_ssusb_rscs._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.36, ptr @.str, i32 264, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to get vbus\0A\00", [44 x i8] zeroinitializer }, align 32
@get_ssusb_rscs._entry_ptr.56 = internal global ptr @get_ssusb_rscs._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek,usb3-drd\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"enable-manual-drd\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb-role-switch\00", [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"extcon\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"couldn't get extcon device\0A\00", [36 x i8] zeroinitializer }, align 32
@get_ssusb_rscs._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.36, ptr @.str, i32 294, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"dr_mode: %d, is_u3_dr: %d, drd: %s\0A\00", [60 x i8] zeroinitializer }, align 32
@get_ssusb_rscs._entry_ptr.64 = internal global ptr @get_ssusb_rscs._entry.62, section ".printk_index", align 4
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"manual\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@get_ssusb_rscs._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.36, ptr @.str, i32 296, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"u2p_dis_msk: %x, u3p_dis_msk: %x\0A\00", [62 x i8] zeroinitializer }, align 32
@get_ssusb_rscs._entry_ptr.69 = internal global ptr @get_ssusb_rscs._entry.67, section ".printk_index", align 4
@ssusb_rscs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str, i32 136, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to enable vusb33\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ssusb_rscs_init\00", [16 x i8] zeroinitializer }, align 32
@ssusb_rscs_init._entry_ptr = internal global ptr @ssusb_rscs_init._entry, section ".printk_index", align 4
@ssusb_rscs_init._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str, i32 146, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to init phy\0A\00", [44 x i8] zeroinitializer }, align 32
@ssusb_rscs_init._entry_ptr.74 = internal global ptr @ssusb_rscs_init._entry.72, section ".printk_index", align 4
@ssusb_rscs_init._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.71, ptr @.str, i32 152, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to power on phy\0A\00", [40 x i8] zeroinitializer }, align 32
@ssusb_rscs_init._entry_ptr.77 = internal global ptr @ssusb_rscs_init._entry.75, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mtu3_suspend_common.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.78, ptr @.str, ptr @.str.79, i8 0, i8 119, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtu3_suspend_common\00", [44 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@wait_for_ip_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str, i32 64, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ip sleep failed!!!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wait_for_ip_sleep\00", [46 x i8] zeroinitializer }, align 32
@wait_for_ip_sleep._entry_ptr = internal global ptr @wait_for_ip_sleep._entry, section ".printk_index", align 4
@mtu3_resume_common.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.82, ptr @.str, ptr @.str.79, i8 0, i8 -126, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtu3_resume_common\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 31, i32 8 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 34, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 41, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [12 x i8] c"mtu3_driver\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 581, i32 31 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 585, i32 11 }
@___asan_gen_.117 = private unnamed_addr constant [14 x i8] c"mtu3_of_match\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 574, i32 34 }
@___asan_gen_.120 = private unnamed_addr constant [12 x i8] c"mtu3_pm_ops\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 566, i32 32 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 315, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 342, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 345, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 362, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 369, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 376, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 382, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 388, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 393, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 201, i32 42 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 203, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 207, i32 15 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 208, i32 15 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 209, i32 15 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 210, i32 15 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 216, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 216, i32 12 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 229, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 234, i32 65 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 238, i32 61 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 252, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 257, i32 29 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 259, i32 29 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 262, i32 41 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 264, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 272, i32 50 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 274, i32 31 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 275, i32 53 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 283, i32 34 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 287, i32 11 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 292, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 295, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 136, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 146, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 152, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 477, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 64, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.310 = private constant [32 x i8] c"../drivers/usb/mtu3/mtu3_plat.c\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 521, i32 2 }
@llvm.compiler.used = appending global [103 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_mtu3_driver_exit, ptr @__initcall__kmod_mtu3__298_590_mtu3_driver_init6, ptr @get_ssusb_rscs._entry, ptr @get_ssusb_rscs._entry.43, ptr @get_ssusb_rscs._entry.48, ptr @get_ssusb_rscs._entry.54, ptr @get_ssusb_rscs._entry.62, ptr @get_ssusb_rscs._entry.67, ptr @get_ssusb_rscs._entry_ptr, ptr @get_ssusb_rscs._entry_ptr.45, ptr @get_ssusb_rscs._entry_ptr.50, ptr @get_ssusb_rscs._entry_ptr.56, ptr @get_ssusb_rscs._entry_ptr.64, ptr @get_ssusb_rscs._entry_ptr.69, ptr @mtu3_driver_exit, ptr @mtu3_probe._entry, ptr @mtu3_probe._entry.11, ptr @mtu3_probe._entry.14, ptr @mtu3_probe._entry.18, ptr @mtu3_probe._entry.21, ptr @mtu3_probe._entry.24, ptr @mtu3_probe._entry.26, ptr @mtu3_probe._entry.28, ptr @mtu3_probe._entry.31, ptr @mtu3_probe._entry_ptr, ptr @mtu3_probe._entry_ptr.13, ptr @mtu3_probe._entry_ptr.17, ptr @mtu3_probe._entry_ptr.20, ptr @mtu3_probe._entry_ptr.23, ptr @mtu3_probe._entry_ptr.25, ptr @mtu3_probe._entry_ptr.27, ptr @mtu3_probe._entry_ptr.30, ptr @mtu3_probe._entry_ptr.33, ptr @ssusb_check_clocks._entry, ptr @ssusb_check_clocks._entry.5, ptr @ssusb_check_clocks._entry_ptr, ptr @ssusb_check_clocks._entry_ptr.7, ptr @ssusb_rscs_init._entry, ptr @ssusb_rscs_init._entry.72, ptr @ssusb_rscs_init._entry.75, ptr @ssusb_rscs_init._entry_ptr, ptr @ssusb_rscs_init._entry_ptr.74, ptr @ssusb_rscs_init._entry_ptr.77, ptr @wait_for_ip_sleep._entry, ptr @wait_for_ip_sleep._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @mtu3_driver, ptr @.str.8, ptr @mtu3_of_match, ptr @mtu3_pm_ops, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssusb_check_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssusb_check_clocks._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu3_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_ssusb_rscs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_ssusb_rscs._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_ssusb_rscs._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_ssusb_rscs._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_ssusb_rscs._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_ssusb_rscs._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssusb_rscs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssusb_rscs_init._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssusb_rscs_init._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_ip_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssusb_check_clocks(ptr nocapture noundef readonly %ssusb, i32 noundef %ex_clks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ippc_base = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 3
  %0 = ptrtoint ptr %ippc_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ippc_base, align 4
  %or2 = or i32 %ex_clks, 1281
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 20000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 32) #6
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !162
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  %and131 = and i32 %3, %or2
  call void @__sanitizer_cov_trace_cmp4(i32 %or2, i32 %and131)
  %cmp12132 = icmp eq i32 %or2, %and131
  br i1 %cmp12132, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true:                                    ; preds = %if.then27.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call15 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call15, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call15, %add.i
  br i1 %cmp3.i, label %if.then18, label %if.then27

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !162
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !164
  %.pre = and i32 %5, %or2
  br label %for.end

if.then27:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #6
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !162
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  %and = and i32 %7, %or2
  %cmp12 = icmp eq i32 %or2, %and
  br i1 %cmp12, label %if.then27.for.end_crit_edge, label %if.then27.land.lhs.true_crit_edge

if.then27.land.lhs.true_crit_edge:                ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.then27.for.end_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.then27.for.end_crit_edge, %if.then18, %entry.for.end_crit_edge
  %and30.pre-phi = phi i32 [ %and131, %entry.for.end_crit_edge ], [ %.pre, %if.then18 ], [ %and, %if.then27.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %or2, i32 %and30.pre-phi)
  %cmp31 = icmp eq i32 %or2, %and30.pre-phi
  br i1 %cmp31, label %if.end37, label %for.end.cleanup.sink.split_crit_edge

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end37:                                         ; preds = %for.end
  %call41 = tail call i64 @ktime_get() #6
  %add.i121 = add i64 %call41, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 39) #6
  %add.ptr58 = getelementptr i8, ptr %1, i32 20
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #6, !srcloc !162
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !165
  %and62133 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62133)
  %tobool63.not134 = icmp eq i32 %and62133, 0
  br i1 %tobool63.not134, label %if.end37.land.lhs.true67_crit_edge, label %if.end37.for.end84_crit_edge

if.end37.for.end84_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end84

if.end37.land.lhs.true67_crit_edge:               ; preds = %if.end37
  br label %land.lhs.true67

land.lhs.true67:                                  ; preds = %if.then80.land.lhs.true67_crit_edge, %if.end37.land.lhs.true67_crit_edge
  %call68 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call68, i64 %add.i121)
  %cmp3.i123 = icmp sgt i64 %call68, %add.i121
  br i1 %cmp3.i123, label %if.then71, label %if.then80

if.then71:                                        ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #6, !srcloc !162
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !166
  br label %for.end84

if.then80:                                        ; preds = %land.lhs.true67
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #6
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #6, !srcloc !162
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !165
  %and62 = and i32 %13, 1
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.then80.land.lhs.true67_crit_edge, label %if.then80.for.end84_crit_edge

if.then80.for.end84_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end84

if.then80.land.lhs.true67_crit_edge:              ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true67

for.end84:                                        ; preds = %if.then80.for.end84_crit_edge, %if.then71, %if.end37.for.end84_crit_edge
  %value.1 = phi i32 [ %11, %if.then71 ], [ %9, %if.end37.for.end84_crit_edge ], [ %13, %if.then80.for.end84_crit_edge ]
  %and86 = and i32 %value.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %for.end84.cleanup.sink.split_crit_edge, label %for.end84.cleanup_crit_edge

for.end84.cleanup_crit_edge:                      ; preds = %for.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end84.cleanup.sink.split_crit_edge:           ; preds = %for.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end84.cleanup.sink.split_crit_edge, %for.end.cleanup.sink.split_crit_edge
  %.str.6.sink = phi ptr [ @.str.1, %for.end.cleanup.sink.split_crit_edge ], [ @.str.6, %for.end84.cleanup.sink.split_crit_edge ]
  %14 = ptrtoint ptr %ssusb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ssusb, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull %.str.6.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end84.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end84.cleanup_crit_edge ], [ -110, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtu3_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtu3_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtu3_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 188, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i140 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %cmp.i = icmp eq i32 %call.i140, 0
  br i1 %cmp.i, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call.i, align 4
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %otg_switch.i = getelementptr inbounds %struct.ssusb_mtk, ptr %call.i, i32 0, i32 9
  %call.i141 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.34) #6
  %vusb33.i = getelementptr inbounds %struct.ssusb_mtk, ptr %call.i, i32 0, i32 7
  %6 = ptrtoint ptr %vusb33.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i141, ptr %vusb33.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i141, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #9
  %7 = ptrtoint ptr %vusb33.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vusb33.i, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %get_ssusb_rscs.exit

if.end.i:                                         ; preds = %if.end6
  %clks1.i = getelementptr inbounds %struct.ssusb_mtk, ptr %call.i, i32 0, i32 8
  %10 = ptrtoint ptr %clks1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.37, ptr %clks1.i, align 4
  %arrayidx8.i = getelementptr %struct.ssusb_mtk, ptr %call.i, i32 0, i32 8, i32 1
  %11 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.38, ptr %arrayidx8.i, align 4
  %arrayidx10.i = getelementptr %struct.ssusb_mtk, ptr %call.i, i32 0, i32 8, i32 2
  %12 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.39, ptr %arrayidx10.i, align 4
  %arrayidx12.i = getelementptr %struct.ssusb_mtk, ptr %call.i, i32 0, i32 8, i32 3
  %13 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.40, ptr %arrayidx12.i, align 4
  %call14.i = tail call i32 @devm_clk_bulk_get_optional(ptr noundef %dev, i32 noundef 4, ptr noundef %clks1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool.not.i, label %if.end16.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16.i:                                       ; preds = %if.end.i
  %call17.i = tail call i32 @of_count_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42) #6
  %num_phys.i = getelementptr inbounds %struct.ssusb_mtk, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call17.i, ptr %num_phys.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp.i142 = icmp sgt i32 %call17.i, 0
  br i1 %cmp.i142, label %if.then19.i, label %if.end27.thread.i

if.then19.i:                                      ; preds = %if.end16.i
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call17.i, i32 4) #6
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !167

devm_kcalloc.exit.thread.i:                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  %phys226.i = getelementptr inbounds %struct.ssusb_mtk, ptr %call.i, i32 0, i32 4
  %17 = ptrtoint ptr %phys226.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %phys226.i, align 4
  br label %cleanup

devm_kcalloc.exit.i:                              ; preds = %if.then19.i
  %18 = extractvalue { i32, i1 } %15, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %18, i32 noundef 3520) #6
  %phys.i = getelementptr inbounds %struct.ssusb_mtk, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call5.i.i.i, ptr %phys.i, align 4
  %tobool23.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool23.not.i, label %devm_kcalloc.exit.i.cleanup_crit_edge, label %if.end27.i

devm_kcalloc.exit.i.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27.thread.i:                                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %num_phys.i, align 4
  br label %for.end.i

if.end27.i:                                       ; preds = %devm_kcalloc.exit.i
  %21 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr.i = load i32, ptr %num_phys.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp29229.i = icmp sgt i32 %.pr.i, 0
  br i1 %cmp29229.i, label %if.end27.i.for.body.i_crit_edge, label %if.end27.i.for.end.i_crit_edge

if.end27.i.for.end.i_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end27.i.for.body.i_crit_edge:                  ; preds = %if.end27.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end27.i.for.body.i_crit_edge
  %i.0230.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end27.i.for.body.i_crit_edge ]
  %call30.i = tail call ptr @devm_of_phy_get_by_index(ptr noundef %dev, ptr noundef %5, i32 noundef %i.0230.i) #6
  %22 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phys.i, align 4
  %arrayidx32.i = getelementptr ptr, ptr %23, i32 %i.0230.i
  %24 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call30.i, ptr %arrayidx32.i, align 4
  %25 = load ptr, ptr %phys.i, align 4
  %arrayidx34.i = getelementptr ptr, ptr %25, i32 %i.0230.i
  %26 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx34.i, align 4
  %cmp.i214.i = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i214.i, label %do.end39.i, label %for.inc.i

do.end39.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %i.0230.i) #9
  %28 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %phys.i, align 4
  %arrayidx41.i = getelementptr ptr, ptr %29, i32 %i.0230.i
  %30 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx41.i, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %get_ssusb_rscs.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.0230.i, 1
  %33 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_phys.i, align 4
  %cmp29.i = icmp slt i32 %inc.i, %34
  br i1 %cmp29.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end27.i.for.end.i_crit_edge, %if.end27.thread.i
  %call44.i = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.46) #6
  %ippc_base.i = getelementptr inbounds %struct.ssusb_mtk, ptr %call.i, i32 0, i32 3
  %35 = ptrtoint ptr %ippc_base.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call44.i, ptr %ippc_base.i, align 4
  %cmp.i215.i = icmp ugt ptr %call44.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i215.i, label %if.then47.i, label %if.end50.i

if.then47.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %call44.i to i32
  br label %get_ssusb_rscs.exit

if.end50.i:                                       ; preds = %for.end.i
  %call51.i = tail call i32 @platform_get_irq_byname_optional(ptr noundef %pdev, ptr noundef nonnull @.str.47) #6
  %wakeup_irq.i = getelementptr inbounds %struct.ssusb_mtk, ptr %call.i, i32 0, i32 6
  %37 = ptrtoint ptr %wakeup_irq.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call51.i, ptr %wakeup_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call51.i)
  %cmp53.i = icmp eq i32 %call51.i, -517
  br i1 %cmp53.i, label %if.end50.i.cleanup_crit_edge, label %if.end56.i

if.end50.i.cleanup_crit_edge:                     ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end56.i:                                       ; preds = %if.end50.i
  %call57.i = tail call i32 @usb_get_dr_mode(ptr noundef %dev) #6
  %dr_mode.i = getelementptr inbounds %struct.ssusb_mtk, ptr %call.i, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %cmp59.i = icmp eq i32 %call57.i, 0
  %spec.select.i = select i1 %cmp59.i, i32 3, i32 %call57.i
  %38 = ptrtoint ptr %dr_mode.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %spec.select.i, ptr %dr_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %spec.select.i)
  %cmp64.i = icmp eq i32 %spec.select.i, 2
  br i1 %cmp64.i, label %if.end56.i.get_ssusb_rscs.exit.thread161_crit_edge, label %if.end66.i

if.end56.i.get_ssusb_rscs.exit.thread161_crit_edge: ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_ssusb_rscs.exit.thread161

if.end66.i:                                       ; preds = %if.end56.i
  %call67.i = tail call i32 @ssusb_wakeup_of_property_parse(ptr noundef %call.i, ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %if.end73.i, label %do.end72.i

do.end72.i:                                       ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #9
  br label %cleanup

if.end73.i:                                       ; preds = %if.end66.i
  %u3p_dis_msk.i = getelementptr inbounds %struct.ssusb_mtk, ptr %call.i, i32 0, i32 15
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.51, ptr noundef %u3p_dis_msk.i, i32 noundef 1, i32 noundef 0) #6
  %u2p_dis_msk.i = getelementptr inbounds %struct.ssusb_mtk, ptr %call.i, i32 0, i32 14
  %call.i.i216.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.52, ptr noundef %u2p_dis_msk.i, i32 noundef 1, i32 noundef 0) #6
  %call76.i = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.53) #6
  %39 = ptrtoint ptr %otg_switch.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call76.i, ptr %otg_switch.i, align 4
  %cmp.i217.i = icmp ugt ptr %call76.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i217.i, label %do.end82.i, label %if.end85.i

do.end82.i:                                       ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55) #9
  %40 = ptrtoint ptr %otg_switch.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %otg_switch.i, align 4
  %42 = ptrtoint ptr %41 to i32
  br label %get_ssusb_rscs.exit

if.end85.i:                                       ; preds = %if.end73.i
  %43 = ptrtoint ptr %dr_mode.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dr_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp87.i = icmp eq i32 %44, 1
  br i1 %cmp87.i, label %if.end85.i.get_ssusb_rscs.exit.thread161_crit_edge, label %if.end89.i

if.end85.i.get_ssusb_rscs.exit.thread161_crit_edge: ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_ssusb_rscs.exit.thread161

if.end89.i:                                       ; preds = %if.end85.i
  %call.i.i = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.57, ptr noundef null) #6
  %tobool.i.i = icmp ne ptr %call.i.i, null
  %is_u3_drd.i = getelementptr inbounds %struct.ssusb_mtk, ptr %call.i, i32 0, i32 9, i32 8
  %frombool.i = zext i1 %tobool.i.i to i8
  %45 = ptrtoint ptr %is_u3_drd.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %frombool.i, ptr %is_u3_drd.i, align 1
  %call.i218.i = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.58, ptr noundef null) #6
  %tobool.i219.i = icmp ne ptr %call.i218.i, null
  %manual_drd_enabled.i = getelementptr inbounds %struct.ssusb_mtk, ptr %call.i, i32 0, i32 9, i32 9
  %frombool92.i = zext i1 %tobool.i219.i to i8
  %46 = ptrtoint ptr %manual_drd_enabled.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %frombool92.i, ptr %manual_drd_enabled.i, align 2
  %call.i220.i = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.59, ptr noundef null) #6
  %tobool.i221.i = icmp ne ptr %call.i220.i, null
  %role_sw_used.i = getelementptr inbounds %struct.ssusb_mtk, ptr %call.i, i32 0, i32 9, i32 7
  %frombool94.i = zext i1 %tobool.i221.i to i8
  %47 = ptrtoint ptr %role_sw_used.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %frombool94.i, ptr %role_sw_used.i, align 4
  %48 = ptrtoint ptr %u2p_dis_msk.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %u2p_dis_msk.i, align 4
  %and.i = and i32 %49, -2
  store i32 %and.i, ptr %u2p_dis_msk.i, align 4
  br i1 %tobool.i221.i, label %if.end89.i.get_ssusb_rscs.exit.thread161_crit_edge, label %lor.lhs.false.i

if.end89.i.get_ssusb_rscs.exit.thread161_crit_edge: ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_ssusb_rscs.exit.thread161

lor.lhs.false.i:                                  ; preds = %if.end89.i
  %50 = ptrtoint ptr %manual_drd_enabled.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %manual_drd_enabled.i, align 2, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool99.not.i = icmp eq i8 %51, 0
  br i1 %tobool99.not.i, label %if.end101.i, label %lor.lhs.false.i.get_ssusb_rscs.exit.thread161_crit_edge

lor.lhs.false.i.get_ssusb_rscs.exit.thread161_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_ssusb_rscs.exit.thread161

if.end101.i:                                      ; preds = %lor.lhs.false.i
  %call.i222.i = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.60, ptr noundef null) #6
  %tobool.i223.not.i = icmp eq ptr %call.i222.i, null
  br i1 %tobool.i223.not.i, label %if.end101.i.get_ssusb_rscs.exit.thread161_crit_edge, label %if.then103.i

if.end101.i.get_ssusb_rscs.exit.thread161_crit_edge: ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_ssusb_rscs.exit.thread161

if.then103.i:                                     ; preds = %if.end101.i
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i, align 4
  %call105.i = tail call ptr @extcon_get_edev_by_phandle(ptr noundef %53, i32 noundef 0) #6
  %edev.i = getelementptr inbounds %struct.ssusb_mtk, ptr %call.i, i32 0, i32 9, i32 1
  %54 = ptrtoint ptr %edev.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call105.i, ptr %edev.i, align 4
  %cmp.i224.i = icmp ugt ptr %call105.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i224.i, label %if.then108.i, label %if.then103.i.get_ssusb_rscs.exit.thread161_crit_edge

if.then103.i.get_ssusb_rscs.exit.thread161_crit_edge: ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_ssusb_rscs.exit.thread161

if.then108.i:                                     ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %call105.i to i32
  %call111.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %55, ptr noundef nonnull @.str.61) #6
  br label %get_ssusb_rscs.exit

get_ssusb_rscs.exit.thread161:                    ; preds = %if.then103.i.get_ssusb_rscs.exit.thread161_crit_edge, %if.end101.i.get_ssusb_rscs.exit.thread161_crit_edge, %lor.lhs.false.i.get_ssusb_rscs.exit.thread161_crit_edge, %if.end89.i.get_ssusb_rscs.exit.thread161_crit_edge, %if.end85.i.get_ssusb_rscs.exit.thread161_crit_edge, %if.end56.i.get_ssusb_rscs.exit.thread161_crit_edge
  %56 = ptrtoint ptr %dr_mode.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dr_mode.i, align 4
  %is_u3_drd118.i = getelementptr inbounds %struct.ssusb_mtk, ptr %call.i, i32 0, i32 9, i32 8
  %58 = ptrtoint ptr %is_u3_drd118.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %is_u3_drd118.i, align 1, !range !168
  %60 = zext i8 %59 to i32
  %manual_drd_enabled120.i = getelementptr inbounds %struct.ssusb_mtk, ptr %call.i, i32 0, i32 9, i32 9
  %61 = ptrtoint ptr %manual_drd_enabled120.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %manual_drd_enabled120.i, align 2, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool121.not.i = icmp eq i8 %62, 0
  %cond.i = select i1 %tobool121.not.i, ptr @.str.66, ptr @.str.65
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.63, i32 noundef %57, i32 noundef %60, ptr noundef nonnull %cond.i) #9
  %u2p_dis_msk126.i = getelementptr inbounds %struct.ssusb_mtk, ptr %call.i, i32 0, i32 14
  %63 = ptrtoint ptr %u2p_dis_msk126.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %u2p_dis_msk126.i, align 4
  %u3p_dis_msk127.i = getelementptr inbounds %struct.ssusb_mtk, ptr %call.i, i32 0, i32 15
  %65 = ptrtoint ptr %u3p_dis_msk127.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %u3p_dis_msk127.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.68, i32 noundef %64, i32 noundef %66) #9
  br label %if.end11

get_ssusb_rscs.exit:                              ; preds = %if.then108.i, %do.end82.i, %if.then47.i, %do.end39.i, %do.end.i
  %retval.0.i = phi i32 [ %9, %do.end.i ], [ %32, %do.end39.i ], [ %36, %if.then47.i ], [ %42, %do.end82.i ], [ %call111.i, %if.then108.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool9.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool9.not, label %get_ssusb_rscs.exit.if.end11_crit_edge, label %get_ssusb_rscs.exit.cleanup_crit_edge

get_ssusb_rscs.exit.cleanup_crit_edge:            ; preds = %get_ssusb_rscs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

get_ssusb_rscs.exit.if.end11_crit_edge:           ; preds = %get_ssusb_rscs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end11:                                         ; preds = %get_ssusb_rscs.exit.if.end11_crit_edge, %get_ssusb_rscs.exit.thread161
  tail call void @ssusb_debugfs_create_root(ptr noundef nonnull %call.i) #6
  %call.i143 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #6
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #6
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 4000) #6
  tail call void @pm_runtime_enable(ptr noundef %dev) #6
  %call.i144 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #6
  %67 = ptrtoint ptr %vusb33.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %vusb33.i, align 4
  %call.i146 = tail call i32 @regulator_enable(ptr noundef %68) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool.not.i147 = icmp eq i32 %call.i146, 0
  br i1 %tobool.not.i147, label %if.end.i150, label %ssusb_rscs_init.exit.thread166

ssusb_rscs_init.exit.thread166:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.70) #9
  br label %comm_init_err

if.end.i150:                                      ; preds = %if.end11
  %clks.i = getelementptr inbounds %struct.ssusb_mtk, ptr %call.i, i32 0, i32 8
  %call.i.i149 = tail call i32 @clk_bulk_prepare(i32 noundef 4, ptr noundef %clks.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i149)
  %tobool.not.i.i = icmp eq i32 %call.i.i149, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %ssusb_rscs_init.exit.thread169

ssusb_rscs_init.exit.thread169:                   ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %vusb33.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %vusb33.i, align 4
  %call25.i171 = tail call i32 @regulator_disable(ptr noundef %72) #6
  br label %comm_init_err

if.end.i.i:                                       ; preds = %if.end.i150
  %call1.i.i = tail call i32 @clk_bulk_enable(i32 noundef 4, ptr noundef %clks.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i, label %if.end.i.i.ssusb_rscs_init.exit_crit_edge

if.end.i.i.ssusb_rscs_init.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ssusb_rscs_init.exit

if.end4.i:                                        ; preds = %if.end.i.i
  %num_phys.i.i = getelementptr inbounds %struct.ssusb_mtk, ptr %call.i, i32 0, i32 5
  %73 = ptrtoint ptr %num_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_phys.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp20.i.i = icmp sgt i32 %74, 0
  br i1 %cmp20.i.i, label %for.body.lr.ph.i.i, label %if.end4.i.if.end17_crit_edge

if.end4.i.if.end17_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

for.body.lr.ph.i.i:                               ; preds = %if.end4.i
  %phys.i.i = getelementptr inbounds %struct.ssusb_mtk, ptr %call.i, i32 0, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.021.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %75 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %phys.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %76, i32 %i.021.i.i
  %77 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i39.i = tail call i32 @phy_init(ptr noundef %78) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39.i)
  %tobool.not.i40.i = icmp eq i32 %call.i39.i, 0
  br i1 %tobool.not.i40.i, label %for.inc.i.i, label %for.cond1.preheader.i.i

for.cond1.preheader.i.i:                          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.021.i.i)
  %cmp222.not.i.i = icmp eq i32 %i.021.i.i, 0
  br i1 %cmp222.not.i.i, label %for.cond1.preheader.i.i.do.end10.i_crit_edge, label %for.cond1.preheader.i.i.for.body3.i.i_crit_edge

for.cond1.preheader.i.i.for.body3.i.i_crit_edge:  ; preds = %for.cond1.preheader.i.i
  br label %for.body3.i.i

for.cond1.preheader.i.i.do.end10.i_crit_edge:     ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.021.i.i, 1
  %79 = ptrtoint ptr %num_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %num_phys.i.i, align 4
  %cmp.i.i151 = icmp slt i32 %inc.i.i, %80
  br i1 %cmp.i.i151, label %for.inc.i.i.for.body.i.i_crit_edge, label %if.end12.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body3.i.i:                                    ; preds = %for.body3.i.i.for.body3.i.i_crit_edge, %for.cond1.preheader.i.i.for.body3.i.i_crit_edge
  %i.123.i.i = phi i32 [ %sub.i.i, %for.body3.i.i.for.body3.i.i_crit_edge ], [ %i.021.i.i, %for.cond1.preheader.i.i.for.body3.i.i_crit_edge ]
  %81 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %phys.i.i, align 4
  %sub.i.i = add nsw i32 %i.123.i.i, -1
  %arrayidx5.i.i = getelementptr ptr, ptr %82, i32 %sub.i.i
  %83 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx5.i.i, align 4
  %call6.i.i = tail call i32 @phy_exit(ptr noundef %84) #6
  %cmp2.i.i = icmp sgt i32 %i.123.i.i, 1
  br i1 %cmp2.i.i, label %for.body3.i.i.for.body3.i.i_crit_edge, label %for.body3.i.i.do.end10.i_crit_edge

for.body3.i.i.do.end10.i_crit_edge:               ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10.i

for.body3.i.i.for.body3.i.i_crit_edge:            ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.i.i

do.end10.i:                                       ; preds = %for.body3.i.i.do.end10.i_crit_edge, %for.cond1.preheader.i.i.do.end10.i_crit_edge
  %85 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.73) #9
  br label %phy_init_err.i

if.end12.i:                                       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp20.i43.i = icmp sgt i32 %80, 0
  br i1 %cmp20.i43.i, label %if.end12.i.for.body.i50.i_crit_edge, label %if.end12.i.if.end17_crit_edge

if.end12.i.if.end17_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.end12.i.for.body.i50.i_crit_edge:              ; preds = %if.end12.i
  br label %for.body.i50.i

for.body.i50.i:                                   ; preds = %for.inc.i55.i.for.body.i50.i_crit_edge, %if.end12.i.for.body.i50.i_crit_edge
  %i.021.i46.i = phi i32 [ %inc.i53.i, %for.inc.i55.i.for.body.i50.i_crit_edge ], [ 0, %if.end12.i.for.body.i50.i_crit_edge ]
  %87 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %phys.i.i, align 4
  %arrayidx.i47.i = getelementptr ptr, ptr %88, i32 %i.021.i46.i
  %89 = ptrtoint ptr %arrayidx.i47.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i47.i, align 4
  %call.i48.i = tail call i32 @phy_power_on(ptr noundef %90) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.i)
  %tobool.not.i49.i = icmp eq i32 %call.i48.i, 0
  br i1 %tobool.not.i49.i, label %for.inc.i55.i, label %for.cond1.preheader.i52.i

for.cond1.preheader.i52.i:                        ; preds = %for.body.i50.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.021.i46.i)
  %cmp222.not.i51.i = icmp eq i32 %i.021.i46.i, 0
  br i1 %cmp222.not.i51.i, label %for.cond1.preheader.i52.i.do.end18.i_crit_edge, label %for.cond1.preheader.i52.i.for.body3.i61.i_crit_edge

for.cond1.preheader.i52.i.for.body3.i61.i_crit_edge: ; preds = %for.cond1.preheader.i52.i
  br label %for.body3.i61.i

for.cond1.preheader.i52.i.do.end18.i_crit_edge:   ; preds = %for.cond1.preheader.i52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18.i

for.inc.i55.i:                                    ; preds = %for.body.i50.i
  %inc.i53.i = add nuw nsw i32 %i.021.i46.i, 1
  %91 = ptrtoint ptr %num_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %num_phys.i.i, align 4
  %cmp.i54.i = icmp slt i32 %inc.i53.i, %92
  br i1 %cmp.i54.i, label %for.inc.i55.i.for.body.i50.i_crit_edge, label %for.inc.i55.i.if.end17_crit_edge

for.inc.i55.i.if.end17_crit_edge:                 ; preds = %for.inc.i55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

for.inc.i55.i.for.body.i50.i_crit_edge:           ; preds = %for.inc.i55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i50.i

for.body3.i61.i:                                  ; preds = %for.body3.i61.i.for.body3.i61.i_crit_edge, %for.cond1.preheader.i52.i.for.body3.i61.i_crit_edge
  %i.123.i56.i = phi i32 [ %sub.i57.i, %for.body3.i61.i.for.body3.i61.i_crit_edge ], [ %i.021.i46.i, %for.cond1.preheader.i52.i.for.body3.i61.i_crit_edge ]
  %93 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %phys.i.i, align 4
  %sub.i57.i = add nsw i32 %i.123.i56.i, -1
  %arrayidx5.i58.i = getelementptr ptr, ptr %94, i32 %sub.i57.i
  %95 = ptrtoint ptr %arrayidx5.i58.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx5.i58.i, align 4
  %call6.i59.i = tail call i32 @phy_power_off(ptr noundef %96) #6
  %cmp2.i60.i = icmp sgt i32 %i.123.i56.i, 1
  br i1 %cmp2.i60.i, label %for.body3.i61.i.for.body3.i61.i_crit_edge, label %for.body3.i61.i.do.end18.i_crit_edge

for.body3.i61.i.do.end18.i_crit_edge:             ; preds = %for.body3.i61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18.i

for.body3.i61.i.for.body3.i61.i_crit_edge:        ; preds = %for.body3.i61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.i61.i

do.end18.i:                                       ; preds = %for.body3.i61.i.do.end18.i_crit_edge, %for.cond1.preheader.i52.i.do.end18.i_crit_edge
  %97 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.76) #9
  %99 = ptrtoint ptr %num_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %num_phys.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp1.i.i = icmp sgt i32 %100, 0
  br i1 %cmp1.i.i, label %do.end18.i.for.body.i70.i_crit_edge, label %do.end18.i.phy_init_err.i_crit_edge

do.end18.i.phy_init_err.i_crit_edge:              ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_init_err.i

do.end18.i.for.body.i70.i_crit_edge:              ; preds = %do.end18.i
  br label %for.body.i70.i

for.body.i70.i:                                   ; preds = %for.body.i70.i.for.body.i70.i_crit_edge, %do.end18.i.for.body.i70.i_crit_edge
  %i.02.i.i = phi i32 [ %inc.i68.i, %for.body.i70.i.for.body.i70.i_crit_edge ], [ 0, %do.end18.i.for.body.i70.i_crit_edge ]
  %101 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %phys.i.i, align 4
  %arrayidx.i66.i = getelementptr ptr, ptr %102, i32 %i.02.i.i
  %103 = ptrtoint ptr %arrayidx.i66.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx.i66.i, align 4
  %call.i67.i = tail call i32 @phy_exit(ptr noundef %104) #6
  %inc.i68.i = add nuw nsw i32 %i.02.i.i, 1
  %105 = ptrtoint ptr %num_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %num_phys.i.i, align 4
  %cmp.i69.i = icmp slt i32 %inc.i68.i, %106
  br i1 %cmp.i69.i, label %for.body.i70.i.for.body.i70.i_crit_edge, label %for.body.i70.i.phy_init_err.i_crit_edge

for.body.i70.i.phy_init_err.i_crit_edge:          ; preds = %for.body.i70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_init_err.i

for.body.i70.i.for.body.i70.i_crit_edge:          ; preds = %for.body.i70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i70.i

phy_init_err.i:                                   ; preds = %for.body.i70.i.phy_init_err.i_crit_edge, %do.end18.i.phy_init_err.i_crit_edge, %do.end10.i
  %ret.0.i = phi i32 [ %call.i39.i, %do.end10.i ], [ %call.i48.i, %do.end18.i.phy_init_err.i_crit_edge ], [ %call.i48.i, %for.body.i70.i.phy_init_err.i_crit_edge ]
  tail call void @clk_bulk_disable(i32 noundef 4, ptr noundef %clks.i) #6
  br label %ssusb_rscs_init.exit

ssusb_rscs_init.exit:                             ; preds = %phy_init_err.i, %if.end.i.i.ssusb_rscs_init.exit_crit_edge
  %ret.1.ph.i = phi i32 [ %ret.0.i, %phy_init_err.i ], [ %call1.i.i, %if.end.i.i.ssusb_rscs_init.exit_crit_edge ]
  tail call void @clk_bulk_unprepare(i32 noundef 4, ptr noundef %clks.i) #6
  %107 = ptrtoint ptr %vusb33.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %vusb33.i, align 4
  %call25.i = tail call i32 @regulator_disable(ptr noundef %108) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.ph.i)
  %tobool15.not = icmp eq i32 %ret.1.ph.i, 0
  br i1 %tobool15.not, label %ssusb_rscs_init.exit.if.end17_crit_edge, label %ssusb_rscs_init.exit.comm_init_err_crit_edge

ssusb_rscs_init.exit.comm_init_err_crit_edge:     ; preds = %ssusb_rscs_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %comm_init_err

ssusb_rscs_init.exit.if.end17_crit_edge:          ; preds = %ssusb_rscs_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.end17:                                         ; preds = %ssusb_rscs_init.exit.if.end17_crit_edge, %for.inc.i55.i.if.end17_crit_edge, %if.end12.i.if.end17_crit_edge, %if.end4.i.if.end17_crit_edge
  %wakeup_irq = getelementptr inbounds %struct.ssusb_mtk, ptr %call.i, i32 0, i32 6
  %109 = ptrtoint ptr %wakeup_irq to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %wakeup_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp = icmp sgt i32 %110, 0
  br i1 %cmp, label %if.then18, label %if.end17.if.end32_crit_edge

if.end17.if.end32_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then18:                                        ; preds = %if.end17
  %call20 = tail call i32 @dev_pm_set_dedicated_wake_irq_reverse(ptr noundef %dev, i32 noundef %110) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  %111 = ptrtoint ptr %wakeup_irq to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %wakeup_irq, align 4
  br i1 %tobool21.not, label %do.end30, label %do.end25

do.end25:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %112) #9
  br label %comm_exit

do.end30:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %112) #9
  br label %if.end32

if.end32:                                         ; preds = %do.end30, %if.end17.if.end32_crit_edge
  %ippc_base.i153 = getelementptr inbounds %struct.ssusb_mtk, ptr %call.i, i32 0, i32 3
  %113 = ptrtoint ptr %ippc_base.i153 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ippc_base.i153, align 4
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %114) #6, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !170
  tail call void @arm_heavy_mb() #6
  %116 = or i32 %115, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %116) #6, !srcloc !171
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %117(i32 noundef 214748) #6
  %118 = ptrtoint ptr %ippc_base.i153 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ippc_base.i153, align 4
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #6, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !173
  tail call void @arm_heavy_mb() #6
  %121 = and i32 %120, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %121) #6, !srcloc !171
  %122 = ptrtoint ptr %ippc_base.i153 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ippc_base.i153, align 4
  %add.ptr.i.i = getelementptr i8, ptr %123, i32 8
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !170
  tail call void @arm_heavy_mb() #6
  %125 = or i32 %124, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %125) #6, !srcloc !171
  %dr_mode = getelementptr inbounds %struct.ssusb_mtk, ptr %call.i, i32 0, i32 10
  %126 = ptrtoint ptr %dr_mode to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %dr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %127)
  %cmp33 = icmp ne i32 %127, 2
  %is_host = getelementptr inbounds %struct.ssusb_mtk, ptr %call.i, i32 0, i32 11
  %frombool = zext i1 %cmp33 to i8
  %128 = ptrtoint ptr %is_host to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %frombool, ptr %is_host, align 4
  %129 = zext i32 %127 to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values)
  switch i32 %127, label %do.end74 [
    i32 2, label %sw.bb
    i32 1, label %sw.bb42
    i32 3, label %sw.bb50
  ]

sw.bb:                                            ; preds = %if.end32
  %call35 = tail call i32 @ssusb_gadget_init(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %sw.bb.sw.epilog_crit_edge, label %do.end40

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end40:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  br label %comm_exit

sw.bb42:                                          ; preds = %if.end32
  %call43 = tail call i32 @ssusb_host_init(ptr noundef nonnull %call.i, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %sw.bb42.sw.epilog_crit_edge, label %do.end48

sw.bb42.sw.epilog_crit_edge:                      ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end48:                                         ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #9
  br label %comm_exit

sw.bb50:                                          ; preds = %if.end32
  %call51 = tail call i32 @ssusb_gadget_init(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end57, label %do.end56

do.end56:                                         ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  br label %comm_exit

if.end57:                                         ; preds = %sw.bb50
  %call58 = tail call i32 @ssusb_host_init(ptr noundef nonnull %call.i, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end64, label %do.end63

do.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #9
  br label %gadget_exit

if.end64:                                         ; preds = %if.end57
  %call65 = tail call i32 @ssusb_otg_switch_init(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end64.sw.epilog_crit_edge, label %do.end70

if.end64.sw.epilog_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end70:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #9
  tail call void @ssusb_host_exit(ptr noundef nonnull %call.i) #6
  br label %gadget_exit

do.end74:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %127) #9
  br label %comm_exit

sw.epilog:                                        ; preds = %if.end64.sw.epilog_crit_edge, %sw.bb42.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %is_prepared.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 1
  %130 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %bf.load.i = load i16, ptr %is_prepared.i, align 4
  %131 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %bf.cast.not.i = icmp eq i16 %131, 0
  br i1 %bf.cast.not.i, label %if.then.i154, label %sw.epilog.device_enable_async_suspend.exit_crit_edge

sw.epilog.device_enable_async_suspend.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %device_enable_async_suspend.exit

if.then.i154:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %bf.set.i = or i16 %bf.load.i, 16384
  %132 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %bf.set.i, ptr %is_prepared.i, align 4
  br label %device_enable_async_suspend.exit

device_enable_async_suspend.exit:                 ; preds = %if.then.i154, %sw.epilog.device_enable_async_suspend.exit_crit_edge
  %call.i156 = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %133 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %133)
  store volatile i64 %call.i156, ptr %last_busy.i, align 8
  %call.i157 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #6
  tail call void @pm_runtime_forbid(ptr noundef %dev) #6
  br label %cleanup

gadget_exit:                                      ; preds = %do.end70, %do.end63
  %ret.0 = phi i32 [ %call58, %do.end63 ], [ %call65, %do.end70 ]
  tail call void @ssusb_gadget_exit(ptr noundef nonnull %call.i) #6
  br label %comm_exit

comm_exit:                                        ; preds = %gadget_exit, %do.end74, %do.end56, %do.end48, %do.end40, %do.end25
  %ret.1 = phi i32 [ %call20, %do.end25 ], [ -22, %do.end74 ], [ %call51, %do.end56 ], [ %ret.0, %gadget_exit ], [ %call43, %do.end48 ], [ %call35, %do.end40 ]
  tail call fastcc void @ssusb_rscs_exit(ptr noundef nonnull %call.i)
  br label %comm_init_err

comm_init_err:                                    ; preds = %comm_exit, %ssusb_rscs_init.exit.comm_init_err_crit_edge, %ssusb_rscs_init.exit.thread169, %ssusb_rscs_init.exit.thread166
  %ret.2 = phi i32 [ %ret.1.ph.i, %ssusb_rscs_init.exit.comm_init_err_crit_edge ], [ %ret.1, %comm_exit ], [ %call.i146, %ssusb_rscs_init.exit.thread166 ], [ %call.i.i149, %ssusb_rscs_init.exit.thread169 ]
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i158 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !174
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #6
  %134 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #6, !srcloc !175
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %134, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %comm_init_err.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

comm_init_err.pm_runtime_put_noidle.exit_crit_edge: ; preds = %comm_init_err
  call void @__sanitizer_cov_trace_pc() #8
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %comm_init_err
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !176
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %comm_init_err.pm_runtime_put_noidle.exit_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  tail call void @ssusb_debugfs_remove_root(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %pm_runtime_put_noidle.exit, %device_enable_async_suspend.exit, %get_ssusb_rscs.exit.cleanup_crit_edge, %do.end72.i, %if.end50.i.cleanup_crit_edge, %devm_kcalloc.exit.i.cleanup_crit_edge, %devm_kcalloc.exit.thread.i, %if.end.i.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %do.end ], [ %ret.2, %pm_runtime_put_noidle.exit ], [ 0, %device_enable_async_suspend.exit ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %get_ssusb_rscs.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread.i ], [ -517, %if.end50.i.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.i.cleanup_crit_edge ], [ %call14.i, %if.end.i.cleanup_crit_edge ], [ %call67.i, %do.end72.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #6
  %dr_mode = getelementptr inbounds %struct.ssusb_mtk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %dr_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dr_mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb2
    i32 3, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ssusb_gadget_exit(ptr noundef %1) #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ssusb_host_exit(ptr noundef %1) #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ssusb_otg_switch_exit(ptr noundef %1) #6
  tail call void @ssusb_gadget_exit(ptr noundef %1) #6
  tail call void @ssusb_host_exit(ptr noundef %1) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb
  tail call fastcc void @ssusb_rscs_exit(ptr noundef %1)
  tail call void @ssusb_debugfs_remove_root(ptr noundef %1) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !174
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #6
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #6, !srcloc !175
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %sw.epilog.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

sw.epilog.pm_runtime_put_noidle.exit_crit_edge:   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !176
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %sw.epilog.pm_runtime_put_noidle.exit_crit_edge
  %call.i19 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %pm_runtime_put_noidle.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pm_runtime_put_noidle.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssusb_debugfs_create_root(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_dedicated_wake_irq_reverse(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssusb_gadget_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssusb_host_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssusb_otg_switch_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssusb_host_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssusb_gadget_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ssusb_rscs_exit(ptr noundef %ssusb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clks = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 8
  tail call void @clk_bulk_disable(i32 noundef 4, ptr noundef %clks) #6
  tail call void @clk_bulk_unprepare(i32 noundef 4, ptr noundef %clks) #6
  %vusb33 = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 7
  %0 = ptrtoint ptr %vusb33 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vusb33, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %1) #6
  %num_phys.i = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 5
  %2 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_phys.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4.not.i = icmp eq i32 %3, 0
  br i1 %cmp4.not.i, label %entry.ssusb_phy_exit.exit_crit_edge, label %for.body.lr.ph.i

entry.ssusb_phy_exit.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ssusb_phy_exit.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %phys.i = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phys.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %i.05.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @phy_power_off(ptr noundef %7) #6
  %inc.i = add nuw i32 %i.05.i, 1
  %8 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_phys.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %9
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %ssusb_phy_power_off.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

ssusb_phy_power_off.exit:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1.i = icmp sgt i32 %9, 0
  br i1 %cmp1.i, label %ssusb_phy_power_off.exit.for.body.i12_crit_edge, label %ssusb_phy_power_off.exit.ssusb_phy_exit.exit_crit_edge

ssusb_phy_power_off.exit.ssusb_phy_exit.exit_crit_edge: ; preds = %ssusb_phy_power_off.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ssusb_phy_exit.exit

ssusb_phy_power_off.exit.for.body.i12_crit_edge:  ; preds = %ssusb_phy_power_off.exit
  br label %for.body.i12

for.body.i12:                                     ; preds = %for.body.i12.for.body.i12_crit_edge, %ssusb_phy_power_off.exit.for.body.i12_crit_edge
  %i.02.i = phi i32 [ %inc.i10, %for.body.i12.for.body.i12_crit_edge ], [ 0, %ssusb_phy_power_off.exit.for.body.i12_crit_edge ]
  %10 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phys.i, align 4
  %arrayidx.i8 = getelementptr ptr, ptr %11, i32 %i.02.i
  %12 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i8, align 4
  %call.i9 = tail call i32 @phy_exit(ptr noundef %13) #6
  %inc.i10 = add nuw nsw i32 %i.02.i, 1
  %14 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_phys.i, align 4
  %cmp.i11 = icmp slt i32 %inc.i10, %15
  br i1 %cmp.i11, label %for.body.i12.for.body.i12_crit_edge, label %for.body.i12.ssusb_phy_exit.exit_crit_edge

for.body.i12.ssusb_phy_exit.exit_crit_edge:       ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #8
  br label %ssusb_phy_exit.exit

for.body.i12.for.body.i12_crit_edge:              ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i12

ssusb_phy_exit.exit:                              ; preds = %for.body.i12.ssusb_phy_exit.exit_crit_edge, %ssusb_phy_power_off.exit.ssusb_phy_exit.exit_crit_edge, %entry.ssusb_phy_exit.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssusb_debugfs_remove_root(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_optional(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_phy_get_by_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_dr_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssusb_wakeup_of_property_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extcon_get_edev_by_phandle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssusb_otg_switch_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mtu3_suspend_common(ptr noundef %dev, [1 x i32] [i32 2])
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mtu3_resume_common(ptr noundef %dev, [1 x i32] [i32 2])
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_runtime_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %device_may_wakeup.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %1 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %2, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.return_crit_edge, label %if.end

device_may_wakeup.exit.return_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call fastcc i32 @mtu3_suspend_common(ptr noundef %dev, [1 x i32] [i32 1026])
  br label %return

return:                                           ; preds = %if.end, %device_may_wakeup.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %device_may_wakeup.exit.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtu3_runtime_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %device_may_wakeup.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %1 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %2, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.return_crit_edge, label %if.end

device_may_wakeup.exit.return_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call fastcc i32 @mtu3_resume_common(ptr noundef %dev, [1 x i32] [i32 1026])
  br label %return

return:                                           ; preds = %if.end, %device_may_wakeup.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %device_may_wakeup.exit.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtu3_suspend_common(ptr noundef %dev, [1 x i32] %msg.coerce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_suspend_common.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_suspend_common, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !177

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_suspend_common.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.78) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dr_mode = getelementptr inbounds %struct.ssusb_mtk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %dr_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dr_mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %3, label %do.end.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %do.end.sw.epilog.sink.split_crit_edge
    i32 3, label %sw.bb12
  ]

do.end.sw.epilog.sink.split_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  %call6 = tail call i32 @ssusb_gadget_suspend(ptr noundef %1, [1 x i32] %msg.coerce) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.end
  %is_host = getelementptr inbounds %struct.ssusb_mtk, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %is_host to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_host, align 4, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool13.not = icmp eq i8 %6, 0
  br i1 %tobool13.not, label %if.then14, label %sw.bb12.sw.epilog.sink.split_crit_edge

sw.bb12.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

if.then14:                                        ; preds = %sw.bb12
  %call16 = tail call i32 @ssusb_gadget_suspend(ptr noundef %1, [1 x i32] %msg.coerce) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then14.sw.epilog.sink.split_crit_edge, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14.sw.epilog.sink.split_crit_edge:         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then14.sw.epilog.sink.split_crit_edge, %sw.bb12.sw.epilog.sink.split_crit_edge, %do.end.sw.epilog.sink.split_crit_edge
  %call21 = tail call i32 @ssusb_host_suspend(ptr noundef %1) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb.sw.epilog_crit_edge
  %is_host.i = getelementptr inbounds %struct.ssusb_mtk, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %is_host.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_host.i, align 4, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.epilog.if.end3.i_crit_edge

sw.epilog.if.end3.i_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.then.i:                                        ; preds = %sw.epilog
  %call.i = tail call zeroext i1 @ssusb_gadget_ip_sleep_check(ptr noundef %1) #6
  br i1 %call.i, label %if.then.i.if.end3.i_crit_edge, label %if.then.i.if.end25_crit_edge

if.then.i.if.end25_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %sw.epilog.if.end3.i_crit_edge
  %call4.i = tail call i64 @ktime_get() #6
  %add.i.i = add i64 %call4.i, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 62) #6
  %ippc_base.i = getelementptr inbounds %struct.ssusb_mtk, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %ippc_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ippc_base.i, align 4
  %add.ptr58.i = getelementptr i8, ptr %10, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58.i) #6, !srcloc !162
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !178
  %and59.i = and i32 %12, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %tobool16.not60.i = icmp eq i32 %and59.i, 0
  br i1 %tobool16.not60.i, label %if.end3.i.land.lhs.true.i_crit_edge, label %if.end3.i.for.end.i_crit_edge

if.end3.i.for.end.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end3.i.land.lhs.true.i_crit_edge:              ; preds = %if.end3.i
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then33.i.land.lhs.true.i_crit_edge, %if.end3.i.land.lhs.true.i_crit_edge
  %call20.i = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call20.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call20.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then23.i, label %if.then33.i

if.then23.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %ippc_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ippc_base.i, align 4
  %add.ptr27.i = getelementptr i8, ptr %14, i32 16
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #6, !srcloc !162
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !179
  br label %for.end.i

if.then33.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #6
  %17 = ptrtoint ptr %ippc_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ippc_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !162
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !178
  %and.i = and i32 %20, 1073741824
  %tobool16.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool16.not.i, label %if.then33.i.land.lhs.true.i_crit_edge, label %if.then33.i.for.end.i_crit_edge

if.then33.i.for.end.i_crit_edge:                  ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.then33.i.land.lhs.true.i_crit_edge:            ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %if.then33.i.for.end.i_crit_edge, %if.then23.i, %if.end3.i.for.end.i_crit_edge
  %value.0.i = phi i32 [ %16, %if.then23.i ], [ %12, %if.end3.i.for.end.i_crit_edge ], [ %20, %if.then33.i.for.end.i_crit_edge ]
  %and36.i = and i32 %value.0.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %sleep_err, label %if.else.i

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  br label %if.end25

if.end25:                                         ; preds = %if.else.i, %if.then.i.if.end25_crit_edge
  %num_phys.i = getelementptr inbounds %struct.ssusb_mtk, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_phys.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp4.not.i = icmp eq i32 %22, 0
  br i1 %cmp4.not.i, label %if.end25.ssusb_phy_power_off.exit_crit_edge, label %for.body.lr.ph.i

if.end25.ssusb_phy_power_off.exit_crit_edge:      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %ssusb_phy_power_off.exit

for.body.lr.ph.i:                                 ; preds = %if.end25
  %phys.i = getelementptr inbounds %struct.ssusb_mtk, ptr %1, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phys.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %24, i32 %i.05.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %call.i52 = tail call i32 @phy_power_off(ptr noundef %26) #6
  %inc.i = add nuw i32 %i.05.i, 1
  %27 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_phys.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %28
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ssusb_phy_power_off.exit_crit_edge

for.body.i.ssusb_phy_power_off.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ssusb_phy_power_off.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

ssusb_phy_power_off.exit:                         ; preds = %for.body.i.ssusb_phy_power_off.exit_crit_edge, %if.end25.ssusb_phy_power_off.exit_crit_edge
  %clks = getelementptr inbounds %struct.ssusb_mtk, ptr %1, i32 0, i32 8
  tail call void @clk_bulk_disable(i32 noundef 4, ptr noundef %clks) #6
  tail call void @clk_bulk_unprepare(i32 noundef 4, ptr noundef %clks) #6
  tail call void @ssusb_wakeup_set(ptr noundef %1, i1 noundef zeroext true) #6
  br label %cleanup

sleep_err:                                        ; preds = %for.end.i
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.80) #9
  %31 = ptrtoint ptr %dr_mode to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dr_mode, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %32, label %sleep_err.cleanup_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 3, label %sw.bb4.i
  ]

sleep_err.cleanup_crit_edge:                      ; preds = %sleep_err
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i:                                          ; preds = %sleep_err
  call void @__sanitizer_cov_trace_pc() #8
  %call.i54 = tail call i32 @ssusb_gadget_resume(ptr noundef %1, [1 x i32] %msg.coerce) #6
  br label %cleanup

sw.bb2.i:                                         ; preds = %sleep_err
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 @ssusb_host_resume(ptr noundef %1, i1 noundef zeroext false) #6
  br label %cleanup

sw.bb4.i:                                         ; preds = %sleep_err
  %34 = ptrtoint ptr %is_host.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %is_host.i, align 4, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i56 = icmp eq i8 %35, 0
  %call5.i = tail call i32 @ssusb_host_resume(ptr noundef %1, i1 noundef zeroext %tobool.not.i56) #6
  %36 = ptrtoint ptr %is_host.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %is_host.i, align 4, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool7.not.i = icmp eq i8 %37, 0
  br i1 %tobool7.not.i, label %if.then.i57, label %sw.bb4.i.cleanup_crit_edge

sw.bb4.i.cleanup_crit_edge:                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i57:                                      ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = tail call i32 @ssusb_gadget_resume(ptr noundef %1, [1 x i32] %msg.coerce) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i57, %sw.bb4.i.cleanup_crit_edge, %sw.bb2.i, %sw.bb.i, %sleep_err.cleanup_crit_edge, %ssusb_phy_power_off.exit, %if.then14.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ssusb_phy_power_off.exit ], [ -22, %do.end.cleanup_crit_edge ], [ %call16, %if.then14.cleanup_crit_edge ], [ %call6, %sw.bb.cleanup_crit_edge ], [ -16, %sleep_err.cleanup_crit_edge ], [ -16, %sw.bb.i ], [ -16, %sw.bb2.i ], [ -16, %sw.bb4.i.cleanup_crit_edge ], [ -16, %if.then.i57 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssusb_gadget_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssusb_host_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssusb_wakeup_set(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ssusb_gadget_ip_sleep_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssusb_gadget_resume(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssusb_host_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtu3_resume_common(ptr noundef %dev, [1 x i32] %msg.coerce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtu3_resume_common.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtu3_resume_common, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !177

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtu3_resume_common.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.82) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @ssusb_wakeup_set(ptr noundef %1, i1 noundef zeroext false) #6
  %clks = getelementptr inbounds %struct.ssusb_mtk, ptr %1, i32 0, i32 8
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef 4, ptr noundef %clks) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %do.end
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef 4, ptr noundef %clks) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end8, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_bulk_unprepare(i32 noundef 4, ptr noundef %clks) #6
  br label %cleanup

if.end8:                                          ; preds = %if.end.i
  %num_phys.i = getelementptr inbounds %struct.ssusb_mtk, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_phys.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp20.i = icmp sgt i32 %3, 0
  br i1 %cmp20.i, label %for.body.lr.ph.i, label %if.end8.if.end12_crit_edge

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.body.lr.ph.i:                                 ; preds = %if.end8
  %phys.i = getelementptr inbounds %struct.ssusb_mtk, ptr %1, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phys.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %i.021.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call.i26 = tail call i32 @phy_power_on(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool.not.i27 = icmp eq i32 %call.i26, 0
  br i1 %tobool.not.i27, label %for.inc.i, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.021.i)
  %cmp222.not.i = icmp eq i32 %i.021.i, 0
  br i1 %cmp222.not.i, label %for.cond1.preheader.i.phy_err_crit_edge, label %for.cond1.preheader.i.for.body3.i_crit_edge

for.cond1.preheader.i.for.body3.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body3.i

for.cond1.preheader.i.phy_err_crit_edge:          ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_err

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %8 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_phys.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %9
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end12_crit_edge

for.inc.i.if.end12_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.cond1.preheader.i.for.body3.i_crit_edge
  %i.123.i = phi i32 [ %sub.i, %for.body3.i.for.body3.i_crit_edge ], [ %i.021.i, %for.cond1.preheader.i.for.body3.i_crit_edge ]
  %10 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phys.i, align 4
  %sub.i = add nsw i32 %i.123.i, -1
  %arrayidx5.i = getelementptr ptr, ptr %11, i32 %sub.i
  %12 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx5.i, align 4
  %call6.i = tail call i32 @phy_power_off(ptr noundef %13) #6
  %cmp2.i = icmp sgt i32 %i.123.i, 1
  br i1 %cmp2.i, label %for.body3.i.for.body3.i_crit_edge, label %for.body3.i.phy_err_crit_edge

for.body3.i.phy_err_crit_edge:                    ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_err

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.i

if.end12:                                         ; preds = %for.inc.i.if.end12_crit_edge, %if.end8.if.end12_crit_edge
  %dr_mode.i = getelementptr inbounds %struct.ssusb_mtk, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %dr_mode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dr_mode.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %15, label %if.end12.cleanup_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 3, label %sw.bb4.i
  ]

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call.i29 = tail call i32 @ssusb_gadget_resume(ptr noundef %1, [1 x i32] %msg.coerce) #6
  br label %cleanup

sw.bb2.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 @ssusb_host_resume(ptr noundef %1, i1 noundef zeroext false) #6
  br label %cleanup

sw.bb4.i:                                         ; preds = %if.end12
  %is_host.i = getelementptr inbounds %struct.ssusb_mtk, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %is_host.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %is_host.i, align 4, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i30 = icmp eq i8 %18, 0
  %call5.i = tail call i32 @ssusb_host_resume(ptr noundef %1, i1 noundef zeroext %tobool.not.i30) #6
  %19 = ptrtoint ptr %is_host.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %is_host.i, align 4, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool7.not.i = icmp eq i8 %20, 0
  br i1 %tobool7.not.i, label %if.then.i, label %sw.bb4.i.cleanup_crit_edge

sw.bb4.i.cleanup_crit_edge:                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = tail call i32 @ssusb_gadget_resume(ptr noundef %1, [1 x i32] %msg.coerce) #6
  br label %cleanup

phy_err:                                          ; preds = %for.body3.i.phy_err_crit_edge, %for.cond1.preheader.i.phy_err_crit_edge
  tail call void @clk_bulk_disable(i32 noundef 4, ptr noundef %clks) #6
  tail call void @clk_bulk_unprepare(i32 noundef 4, ptr noundef %clks) #6
  br label %cleanup

cleanup:                                          ; preds = %phy_err, %if.then.i, %sw.bb4.i.cleanup_crit_edge, %sw.bb2.i, %sw.bb.i, %if.end12.cleanup_crit_edge, %if.then3.i, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i26, %phy_err ], [ -22, %if.end12.cleanup_crit_edge ], [ 0, %sw.bb4.i.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %sw.bb2.i ], [ 0, %sw.bb.i ], [ %call1.i, %if.then3.i ], [ %call.i, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !15, !16, !18, !20, !21, !23, !25, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !54, !55, !57, !58, !59, !61, !62, !63, !65, !67, !68, !69, !70, !72, !74, !76, !78, !80, !82, !84, !85, !86, !88, !90, !92, !93, !94, !96, !98, !100, !102, !103, !104, !106, !108, !110, !112, !114, !116, !117, !118, !119, !120, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !141, !143, !144, !145, !147, !148, !149, !150, !152}
!llvm.module.flags = !{!153, !154, !155, !156, !157, !158, !159, !160}
!llvm.ident = !{!161}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 31, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 34, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @ssusb_check_clocks._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @ssusb_check_clocks._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 41, i32 3}
!11 = !{ptr @ssusb_check_clocks._entry.5, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @ssusb_check_clocks._entry_ptr.7, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__initcall__kmod_mtu3__298_590_mtu3_driver_init6, !14, !"__initcall__kmod_mtu3__298_590_mtu3_driver_init6", i1 false, i1 false}
!14 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 590, i32 1}
!15 = !{ptr @__exitcall_mtu3_driver_exit, !14, !"__exitcall_mtu3_driver_exit", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_author299, !17, !"__UNIQUE_ID_author299", i1 false, i1 false}
!17 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 592, i32 1}
!18 = !{ptr @__UNIQUE_ID_file300, !19, !"__UNIQUE_ID_file300", i1 false, i1 false}
!19 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 593, i32 1}
!20 = !{ptr @__UNIQUE_ID_license301, !19, !"__UNIQUE_ID_license301", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_description302, !22, !"__UNIQUE_ID_description302", i1 false, i1 false}
!22 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 594, i32 1}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 585, i32 11}
!25 = !{ptr @mtu3_driver, !26, !"mtu3_driver", i1 false, i1 false}
!26 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 581, i32 31}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 315, i32 3}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mtu3_probe._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @mtu3_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 342, i32 4}
!34 = !{ptr @mtu3_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mtu3_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 345, i32 3}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mtu3_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @mtu3_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 362, i32 4}
!43 = !{ptr @mtu3_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @mtu3_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 369, i32 4}
!47 = !{ptr @mtu3_probe._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @mtu3_probe._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @mtu3_probe._entry.24, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 376, i32 4}
!51 = !{ptr @mtu3_probe._entry_ptr.25, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @mtu3_probe._entry.26, !53, !"_entry", i1 false, i1 false}
!53 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 382, i32 4}
!54 = !{ptr @mtu3_probe._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 388, i32 4}
!57 = !{ptr @mtu3_probe._entry.28, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @mtu3_probe._entry_ptr.30, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 393, i32 3}
!61 = !{ptr @mtu3_probe._entry.31, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @mtu3_probe._entry_ptr.33, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 201, i32 42}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 203, i32 3}
!67 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @get_ssusb_rscs._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @get_ssusb_rscs._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 207, i32 15}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 208, i32 15}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 209, i32 15}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 210, i32 15}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 216, i32 4}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 216, i32 12}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 229, i32 4}
!84 = !{ptr @get_ssusb_rscs._entry.43, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @get_ssusb_rscs._entry_ptr.45, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 234, i32 65}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 238, i32 61}
!90 = !{ptr @.str.49, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 252, i32 3}
!92 = !{ptr @get_ssusb_rscs._entry.48, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @get_ssusb_rscs._entry_ptr.50, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 257, i32 29}
!96 = !{ptr @.str.52, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 259, i32 29}
!98 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 262, i32 41}
!100 = !{ptr @.str.55, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 264, i32 3}
!102 = !{ptr @get_ssusb_rscs._entry.54, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @get_ssusb_rscs._entry_ptr.56, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.57, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 272, i32 50}
!106 = !{ptr @.str.58, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 274, i32 31}
!108 = !{ptr @.str.59, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 275, i32 53}
!110 = !{ptr @.str.60, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 283, i32 34}
!112 = !{ptr @.str.61, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 287, i32 11}
!114 = !{ptr @.str.63, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 292, i32 2}
!116 = !{ptr @get_ssusb_rscs._entry.62, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @get_ssusb_rscs._entry_ptr.64, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.65, !115, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.66, !115, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.68, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 295, i32 2}
!122 = !{ptr @get_ssusb_rscs._entry.67, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @get_ssusb_rscs._entry_ptr.69, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.70, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 136, i32 3}
!126 = !{ptr @.str.71, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @ssusb_rscs_init._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @ssusb_rscs_init._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.73, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 146, i32 3}
!131 = !{ptr @ssusb_rscs_init._entry.72, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @ssusb_rscs_init._entry_ptr.74, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.76, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 152, i32 3}
!135 = !{ptr @ssusb_rscs_init._entry.75, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @ssusb_rscs_init._entry_ptr.77, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @mtu3_of_match, !138, !"mtu3_of_match", i1 false, i1 false}
!138 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 574, i32 34}
!139 = !{ptr @mtu3_pm_ops, !140, !"mtu3_pm_ops", i1 false, i1 false}
!140 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 566, i32 32}
!141 = !{ptr @.str.78, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 477, i32 2}
!143 = !{ptr @.str.79, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @mtu3_suspend_common.__UNIQUE_ID_ddebug296, !142, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!145 = !{ptr @.str.80, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 64, i32 3}
!147 = !{ptr @.str.81, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @wait_for_ip_sleep._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @wait_for_ip_sleep._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.82, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/mtu3/mtu3_plat.c", i32 521, i32 2}
!152 = !{ptr @mtu3_resume_common.__UNIQUE_ID_ddebug297, !151, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!153 = !{i32 1, !"wchar_size", i32 2}
!154 = !{i32 1, !"min_enum_size", i32 4}
!155 = !{i32 8, !"branch-target-enforcement", i32 0}
!156 = !{i32 8, !"sign-return-address", i32 0}
!157 = !{i32 8, !"sign-return-address-all", i32 0}
!158 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!159 = !{i32 7, !"uwtable", i32 1}
!160 = !{i32 7, !"frame-pointer", i32 2}
!161 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!162 = !{i64 6228625}
!163 = !{i64 2155451275}
!164 = !{i64 2155451797}
!165 = !{i64 2155455320}
!166 = !{i64 2155455842}
!167 = !{!"branch_weights", i32 1, i32 2000}
!168 = !{i8 0, i8 2}
!169 = !{i64 2155427614}
!170 = !{i64 2155427826}
!171 = !{i64 6228207}
!172 = !{i64 2155428624}
!173 = !{i64 2155428837}
!174 = !{i64 2148519168}
!175 = !{i64 1005768, i64 1005793, i64 1005815, i64 1005831, i64 1005843, i64 1005863, i64 1005887, i64 1005903, i64 1005915}
!176 = !{i64 2148519356}
!177 = !{i64 2148333142, i64 2148333147, i64 2148333160, i64 2148333204, i64 2148333238, i64 2148333259}
!178 = !{i64 2155459426}
!179 = !{i64 2155459992}
