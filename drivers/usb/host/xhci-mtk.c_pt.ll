; ModuleID = '/llk/IR_all_yes/drivers/usb/host/xhci-mtk.c_pt.bc'
source_filename = "../drivers/usb/host/xhci-mtk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xhci_driver_overrides = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.xhci_hcd_mtk = type { ptr, ptr, ptr, %struct.list_head, [32 x %struct.hlist_head], ptr, i32, i32, i32, i32, ptr, ptr, [5 x %struct.clk_bulk_data], i8, ptr, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
%struct.mu3c_ippc_regs = type { i32, i32, i32, i32, i32, i32, [3 x i32], i32, [2 x i32], [4 x i64], [5 x i64], i32, i32, [33 x i32] }
%struct.xhci_hcd = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, i32, %struct.delayed_work, %struct.completion, ptr, ptr, %struct.xhci_erst, ptr, %struct.list_head, %struct.mutex, ptr, [256 x ptr], ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.s3_save, i64, i32, i32, ptr, %struct.xhci_hub, %struct.xhci_hub, i8, ptr, i32, ptr, i32, %struct.timer_list, i32, i16, ptr, ptr, %struct.list_head, ptr, [4 x i8], [0 x i32] }
%struct.xhci_erst = type { ptr, i32, i32, i32 }
%struct.s3_save = type { i32, i32, i64, i32, i32, i32, i32, i64, i64 }
%struct.xhci_hub = type { ptr, i32, ptr, %struct.xhci_bus_state, i8, i8 }
%struct.xhci_bus_state = type { i32, i32, i32, i32, i32, [31 x i32], i32, i32, [31 x %struct.completion], [31 x %struct.completion] }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_xhci_mtk_hcd__299_798_xhci_mtk_init6 = internal global ptr @xhci_mtk_init, section ".initcall6.init", align 4
@mtk_xhci_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xhci_mtk_probe, ptr @xhci_mtk_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.9, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_xhci_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xhci_mtk_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xhci_mtk_exit = internal global ptr @xhci_mtk_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author300 = internal constant [61 x i8] c"xhci_mtk_hcd.author=Chunfeng Yun <chunfeng.yun@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description301 = internal constant [62 x i8] c"xhci_mtk_hcd.description=MediaTek xHCI Host Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [48 x i8] c"xhci_mtk_hcd.file=drivers/usb/host/xhci-mtk-hcd\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [28 x i8] c"xhci_mtk_hcd.license=GPL v2\00", section ".modinfo", align 1
@xhci_mtk_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@xhci_mtk_overrides = internal constant %struct.xhci_driver_overrides { i32 0, ptr @xhci_mtk_setup, ptr null, ptr @xhci_mtk_add_ep, ptr @xhci_mtk_drop_ep, ptr @xhci_mtk_check_bandwidth, ptr @xhci_mtk_reset_bandwidth }, section ".init.rodata", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@xhci_mtk_ssusb_config.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xhci_mtk_hcd\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xhci_mtk_ssusb_config\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/host/xhci-mtk.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s u2p:%d, u3p:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@xhci_mtk_host_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 203, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"clocks are not stable (0x%x)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xhci_mtk_host_enable\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xhci_mtk_host_enable._entry_ptr = internal global ptr @xhci_mtk_host_enable._entry, section ".printk_index", align 4
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mediatek,mt8195-xhci\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xhci-mtk\00", [23 x i8] zeroinitializer }, align 32
@mtk_xhci_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-xhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8195-xhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mtk-xhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@xhci_mtk_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @xhci_mtk_suspend, ptr @xhci_mtk_resume, ptr @xhci_mtk_suspend, ptr @xhci_mtk_resume, ptr @xhci_mtk_suspend, ptr @xhci_mtk_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xhci_mtk_runtime_suspend, ptr @xhci_mtk_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@xhci_mtk_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 481, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fail to get vbus\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xhci_mtk_probe\00", [17 x i8] zeroinitializer }, align 32
@xhci_mtk_probe._entry_ptr = internal global ptr @xhci_mtk_probe._entry, section ".printk_index", align 4
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vusb33\00", [25 x i8] zeroinitializer }, align 32
@xhci_mtk_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.2, i32 487, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fail to get vusb33\0A\00", [44 x i8] zeroinitializer }, align 32
@xhci_mtk_probe._entry_ptr.16 = internal global ptr @xhci_mtk_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"host\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wakeup\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usb3-lpm-capable\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usb2-lpm-disable\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mediatek,u3p-dis-msk\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mediatek,u2p-dis-msk\00", [43 x i8] zeroinitializer }, align 32
@xhci_mtk_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.12, ptr @.str.2, i32 520, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to parse uwk property\0A\00", [34 x i8] zeroinitializer }, align 32
@xhci_mtk_probe._entry_ptr.25 = internal global ptr @xhci_mtk_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mac\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ippc\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imod-interval-ns\00", [47 x i8] zeroinitializer }, align 32
@xhci_mtk_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.12, ptr @.str.2, i32 605, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"set wakeup irq %d failed\0A\00", [38 x i8] zeroinitializer }, align 32
@xhci_mtk_probe._entry_ptr.31 = internal global ptr @xhci_mtk_probe._entry.29, section ".printk_index", align 4
@xhci_mtk_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.12, ptr @.str.2, i32 608, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wakeup irq %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@xhci_mtk_probe._entry_ptr.35 = internal global ptr @xhci_mtk_probe._entry.32, section ".printk_index", align 4
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sys_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"xhci_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ref_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mcu_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dma_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakeup-source\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mediatek,syscon-wakeup\00", [41 x i8] zeroinitializer }, align 32
@usb_wakeup_of_property_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 343, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"uwk - reg:0x%x, version:%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"usb_wakeup_of_property_parse\00", [35 x i8] zeroinitializer }, align 32
@usb_wakeup_of_property_parse._entry_ptr = internal global ptr @usb_wakeup_of_property_parse._entry, section ".printk_index", align 4
@xhci_mtk_ldos_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 373, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to enable vbus\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xhci_mtk_ldos_enable\00", [43 x i8] zeroinitializer }, align 32
@xhci_mtk_ldos_enable._entry_ptr = internal global ptr @xhci_mtk_ldos_enable._entry, section ".printk_index", align 4
@xhci_mtk_ldos_enable._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 379, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to enable vusb33\0A\00", [39 x i8] zeroinitializer }, align 32
@xhci_mtk_ldos_enable._entry_ptr.49 = internal global ptr @xhci_mtk_ldos_enable._entry.47, section ".printk_index", align 4
@xhci_mtk_suspend.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 -86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xhci_mtk_suspend\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: stop port polling\0A\00", [41 x i8] zeroinitializer }, align 32
@xhci_mtk_suspend.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.52, i8 0, i8 -82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: restart port polling\0A\00", [38 x i8] zeroinitializer }, align 32
@xhci_mtk_host_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 249, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ip sleep failed!!!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xhci_mtk_host_disable\00", [42 x i8] zeroinitializer }, align 32
@xhci_mtk_host_disable._entry_ptr = internal global ptr @xhci_mtk_host_disable._entry, section ".printk_index", align 4
@xhci_mtk_resume.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.52, i8 0, i8 -76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xhci_mtk_resume\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 101, i64 102]
@__sancov_gen_cov_switch_values.56 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 101, i64 102]
@__sancov_gen_cov_switch_values.57 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 101, i64 102]
@___asan_gen_.58 = private unnamed_addr constant [16 x i8] c"mtk_xhci_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 783, i32 31 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 284, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 203, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 121, i32 45 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 787, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant [18 x i8] c"mtk_xhci_of_match\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 775, i32 34 }
@___asan_gen_.97 = private unnamed_addr constant [16 x i8] c"xhci_mtk_pm_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 767, i32 32 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 479, i32 38 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 481, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 485, i32 40 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 487, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 495, i32 47 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 506, i32 54 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 510, i32 49 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 511, i32 52 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 513, i32 29 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 515, i32 29 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 520, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 551, i32 59 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 560, i32 59 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 581, i32 32 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 605, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 608, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 358, i32 15 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 359, i32 15 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 360, i32 15 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 361, i32 15 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 362, i32 15 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 329, i32 42 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 334, i32 5 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 342, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 373, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 379, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 683, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 698, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 249, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.233 = private constant [31 x i8] c"../drivers/usb/host/xhci-mtk.c\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 722, i32 2 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_xhci_mtk_exit, ptr @__initcall__kmod_xhci_mtk_hcd__299_798_xhci_mtk_init6, ptr @usb_wakeup_of_property_parse._entry, ptr @usb_wakeup_of_property_parse._entry_ptr, ptr @xhci_mtk_exit, ptr @xhci_mtk_host_disable._entry, ptr @xhci_mtk_host_disable._entry_ptr, ptr @xhci_mtk_host_enable._entry, ptr @xhci_mtk_host_enable._entry_ptr, ptr @xhci_mtk_ldos_enable._entry, ptr @xhci_mtk_ldos_enable._entry.47, ptr @xhci_mtk_ldos_enable._entry_ptr, ptr @xhci_mtk_ldos_enable._entry_ptr.49, ptr @xhci_mtk_probe._entry, ptr @xhci_mtk_probe._entry.14, ptr @xhci_mtk_probe._entry.23, ptr @xhci_mtk_probe._entry.29, ptr @xhci_mtk_probe._entry.32, ptr @xhci_mtk_probe._entry_ptr, ptr @xhci_mtk_probe._entry_ptr.16, ptr @xhci_mtk_probe._entry_ptr.25, ptr @xhci_mtk_probe._entry_ptr.31, ptr @xhci_mtk_probe._entry_ptr.35, ptr @mtk_xhci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @mtk_xhci_of_match, ptr @xhci_mtk_pm_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_xhci_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_mtk_host_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_xhci_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_mtk_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_mtk_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_mtk_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_mtk_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_mtk_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_mtk_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_wakeup_of_property_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_mtk_ldos_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_mtk_ldos_enable._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_mtk_host_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_mtk_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xhci_init_driver(ptr noundef nonnull @xhci_mtk_hc_driver, ptr noundef nonnull @xhci_mtk_overrides) #9
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_xhci_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xhci_mtk_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_xhci_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_init_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_mtk_setup(ptr noundef %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %hcd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc i32 @xhci_mtk_ssusb_config(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %hcd2.i = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %hcd2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hcd2.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %8 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call i32 @of_device_is_compatible(ptr noundef %9, ptr noundef nonnull @.str.8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.if.end5_crit_edge, label %if.end.i

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %regs.i = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 0, i32 16
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 2372
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !135
  %13 = and i32 %12, -1056902913
  %14 = or i32 %13, 338362624
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  tail call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %16, i32 2372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %14) #9, !srcloc !137
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %18, i32 2352
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  %20 = and i32 %19, 15794175
  %21 = or i32 %20, -1996488704
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %23, i32 2352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %21) #9, !srcloc !137
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %25, i32 2356
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !140
  %27 = and i32 %26, 15794175
  %28 = or i32 %27, 771751936
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  tail call void @arm_heavy_mb() #9
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %30, i32 2356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 %28) #9, !srcloc !137
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %add.ptr38.i = getelementptr i8, ptr %32, i32 2364
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38.i) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !142
  %34 = and i32 %33, 15794175
  %35 = or i32 %34, 2013265920
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  tail call void @arm_heavy_mb() #9
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 4
  %add.ptr48.i = getelementptr i8, ptr %37, i32 2364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i, i32 %35) #9, !srcloc !137
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 4
  %add.ptr52.i = getelementptr i8, ptr %39, i32 2448
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52.i) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  %41 = and i32 %40, 15794175
  %42 = or i32 %41, 1006632960
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !145
  tail call void @arm_heavy_mb() #9
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 4
  %add.ptr62.i = getelementptr i8, ptr %44, i32 2448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62.i, i32 %42) #9, !srcloc !137
  br label %if.end5

if.end5:                                          ; preds = %if.end.i, %if.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call6 = tail call i32 @xhci_gen_setup(ptr noundef %hcd, ptr noundef nonnull @xhci_mtk_quirks) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %hcd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.then12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 @xhci_mtk_sch_init(ptr noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %call13, %if.then12 ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_mtk_add_ep(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_mtk_drop_ep(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_mtk_check_bandwidth(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_mtk_reset_bandwidth(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_is_primary_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xhci_mtk_ssusb_config(ptr nocapture noundef %mtk) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %has_ippc = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %mtk, i32 0, i32 13
  %0 = ptrtoint ptr %has_ippc to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %has_ippc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ippc_regs = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %mtk, i32 0, i32 5
  %1 = ptrtoint ptr %ippc_regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ippc_regs, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  %4 = or i32 %3, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %4) #9, !srcloc !137
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #9
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !148
  %7 = and i32 %6, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %7) #9, !srcloc !137
  %ip_pw_ctr2 = getelementptr inbounds %struct.mu3c_ippc_regs, ptr %2, i32 0, i32 2
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ip_pw_ctr2) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  %9 = or i32 %8, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !151
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ip_pw_ctr2, i32 %9) #9, !srcloc !137
  %ip_xhci_cap = getelementptr inbounds %struct.mu3c_ippc_regs, ptr %2, i32 0, i32 7
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ip_xhci_cap) #9, !srcloc !134
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  %and28 = and i32 %11, 255
  %num_u3_ports = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %mtk, i32 0, i32 7
  %12 = ptrtoint ptr %num_u3_ports to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and28, ptr %num_u3_ports, align 4
  %shr = lshr i32 %11, 8
  %and29 = and i32 %shr, 255
  %num_u2_ports = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %mtk, i32 0, i32 6
  %13 = ptrtoint ptr %num_u2_ports to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and29, ptr %num_u2_ports, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_mtk_ssusb_config.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_mtk_ssusb_config, %if.then36)) #9
          to label %do.end41 [label %if.then36], !srcloc !153

if.then36:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %mtk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mtk, align 4
  %16 = ptrtoint ptr %num_u2_ports to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_u2_ports, align 4
  %18 = ptrtoint ptr %num_u3_ports to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_u3_ports, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_mtk_ssusb_config.__UNIQUE_ID_ddebug295, ptr noundef %15, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %17, i32 noundef %19) #9
  br label %do.end41

do.end41:                                         ; preds = %if.then36, %if.end
  %call42 = tail call fastcc i32 @xhci_mtk_host_enable(ptr noundef %mtk)
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %do.end41 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_gen_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xhci_mtk_quirks(ptr nocapture noundef readnone %dev, ptr nocapture noundef %xhci) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xhci, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %quirks = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %6 = ptrtoint ptr %quirks to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %quirks, align 8
  %or5 = or i64 %7, 2162704
  store i64 %or5, ptr %quirks, align 8
  %lpm_support = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %5, i32 0, i32 13
  %8 = ptrtoint ptr %lpm_support to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %lpm_support, align 4
  %9 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or7 = or i64 %7, 2164752
  %10 = ptrtoint ptr %quirks to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %or7, ptr %quirks, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %lpm_support to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load8 = load i8, ptr %lpm_support, align 4
  %12 = and i8 %bf.load8, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool12.not = icmp eq i8 %12, 0
  br i1 %tobool12.not, label %if.end.if.end16_crit_edge, label %if.then13

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %quirks to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %quirks, align 8
  %or15 = or i64 %14, 536870912
  store i64 %or15, ptr %quirks, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end.if.end16_crit_edge
  %hci_version = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 14
  %15 = ptrtoint ptr %hci_version to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %hci_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %16)
  %cmp = icmp ult i16 %16, 256
  br i1 %cmp, label %land.lhs.true, label %if.end16.if.end23_crit_edge

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end16
  %hcc_params = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 10
  %17 = ptrtoint ptr %hcc_params to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hcc_params, align 8
  %19 = and i32 %18, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %19)
  %cmp18 = icmp eq i32 %19, 4096
  br i1 %cmp18, label %if.then20, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %quirks to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %quirks, align 8
  %or22 = or i64 %21, 524288
  store i64 %or22, ptr %quirks, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %land.lhs.true.if.end23_crit_edge, %if.end16.if.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_mtk_sch_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xhci_mtk_host_enable(ptr nocapture noundef readonly %mtk) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ippc_regs = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %mtk, i32 0, i32 5
  %0 = ptrtoint ptr %ippc_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ippc_regs, align 4
  %has_ippc = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %mtk, i32 0, i32 13
  %2 = ptrtoint ptr %has_ippc to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %has_ippc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ip_pw_ctr1 = getelementptr inbounds %struct.mu3c_ippc_regs, ptr %1, i32 0, i32 1
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ip_pw_ctr1) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  %4 = and i32 %3, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !155
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ip_pw_ctr1, i32 %4) #9, !srcloc !137
  %num_u3_ports = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %mtk, i32 0, i32 7
  %5 = ptrtoint ptr %num_u3_ports to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_u3_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp147 = icmp sgt i32 %6, 0
  br i1 %cmp147, label %for.body.lr.ph, label %if.end.for.cond19.preheader_crit_edge

if.end.for.cond19.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond19.preheader

for.body.lr.ph:                                   ; preds = %if.end
  %u3p_dis_msk = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %mtk, i32 0, i32 9
  br label %for.body

for.cond19.preheader:                             ; preds = %for.inc.for.cond19.preheader_crit_edge, %if.end.for.cond19.preheader_crit_edge
  %u3_ports_disabled.0.lcssa = phi i32 [ 0, %if.end.for.cond19.preheader_crit_edge ], [ %u3_ports_disabled.1, %for.inc.for.cond19.preheader_crit_edge ]
  %num_u2_ports = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %mtk, i32 0, i32 6
  %7 = ptrtoint ptr %num_u2_ports to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_u2_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp20151 = icmp sgt i32 %8, 0
  br i1 %cmp20151, label %for.body21.lr.ph, label %for.cond19.preheader.for.end42_crit_edge

for.cond19.preheader.for.end42_crit_edge:         ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end42

for.body21.lr.ph:                                 ; preds = %for.cond19.preheader
  %u2p_dis_msk = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %mtk, i32 0, i32 8
  br label %for.body21

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %u3_ports_disabled.0150 = phi i32 [ 0, %for.body.lr.ph ], [ %u3_ports_disabled.1, %for.inc.for.body_crit_edge ]
  %i.0148 = phi i32 [ 0, %for.body.lr.ph ], [ %inc18, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.0148
  %9 = ptrtoint ptr %u3p_dis_msk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %u3p_dis_msk, align 4
  %and3 = and i32 %10, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add i32 %u3_ports_disabled.0150, 1
  br label %for.inc

if.end6:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.mu3c_ippc_regs, ptr %1, i32 0, i32 9, i32 %i.0148
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  %12 = and i32 %11, -117440513
  %13 = or i32 %12, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %13) #9, !srcloc !137
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %if.then5
  %u3_ports_disabled.1 = phi i32 [ %inc, %if.then5 ], [ %u3_ports_disabled.0150, %if.end6 ]
  %inc18 = add nuw nsw i32 %i.0148, 1
  %14 = ptrtoint ptr %num_u3_ports to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_u3_ports, align 4
  %cmp = icmp slt i32 %inc18, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond19.preheader_crit_edge

for.inc.for.cond19.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond19.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body21:                                       ; preds = %for.inc40.for.body21_crit_edge, %for.body21.lr.ph
  %i.1152 = phi i32 [ 0, %for.body21.lr.ph ], [ %inc41, %for.inc40.for.body21_crit_edge ]
  %shl22 = shl nuw i32 1, %i.1152
  %16 = ptrtoint ptr %u2p_dis_msk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %u2p_dis_msk, align 4
  %and23 = and i32 %17, %shl22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end26, label %for.body21.for.inc40_crit_edge

for.body21.for.inc40_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc40

if.end26:                                         ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx29 = getelementptr %struct.mu3c_ippc_regs, ptr %1, i32 0, i32 10, i32 %i.1152
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx29) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %19 = and i32 %18, -117440513
  %20 = or i32 %19, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx29, i32 %20) #9, !srcloc !137
  br label %for.inc40

for.inc40:                                        ; preds = %if.end26, %for.body21.for.inc40_crit_edge
  %inc41 = add nuw nsw i32 %i.1152, 1
  %21 = ptrtoint ptr %num_u2_ports to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_u2_ports, align 4
  %cmp20 = icmp slt i32 %inc41, %22
  br i1 %cmp20, label %for.inc40.for.body21_crit_edge, label %for.inc40.for.end42_crit_edge

for.inc40.for.end42_crit_edge:                    ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end42

for.inc40.for.body21_crit_edge:                   ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body21

for.end42:                                        ; preds = %for.inc40.for.end42_crit_edge, %for.cond19.preheader.for.end42_crit_edge
  %23 = ptrtoint ptr %num_u3_ports to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_u3_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %u3_ports_disabled.0.lcssa)
  %cmp44 = icmp sgt i32 %24, %u3_ports_disabled.0.lcssa
  %spec.select = select i1 %cmp44, i32 68865, i32 3329
  %call48 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call48, 20000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 201) #9
  %ip_pw_sts1 = getelementptr inbounds %struct.mu3c_ippc_regs, ptr %1, i32 0, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ip_pw_sts1) #9, !srcloc !134
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  %and68154 = and i32 %26, %spec.select
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %and68154)
  %cmp69155 = icmp eq i32 %spec.select, %and68154
  br i1 %cmp69155, label %for.end42.for.end87_crit_edge, label %for.end42.land.lhs.true_crit_edge

for.end42.land.lhs.true_crit_edge:                ; preds = %for.end42
  br label %land.lhs.true

for.end42.for.end87_crit_edge:                    ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end87

land.lhs.true:                                    ; preds = %if.then85.land.lhs.true_crit_edge, %for.end42.land.lhs.true_crit_edge
  %call73 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call73, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call73, %add.i
  br i1 %cmp3.i, label %if.then76, label %if.then85

if.then76:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ip_pw_sts1) #9, !srcloc !134
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !161
  %.pre = and i32 %28, %spec.select
  br label %for.end87

if.then85:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #9
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ip_pw_sts1) #9, !srcloc !134
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  %and68 = and i32 %30, %spec.select
  %cmp69 = icmp eq i32 %spec.select, %and68
  br i1 %cmp69, label %if.then85.for.end87_crit_edge, label %if.then85.land.lhs.true_crit_edge

if.then85.land.lhs.true_crit_edge:                ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.then85.for.end87_crit_edge:                    ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end87

for.end87:                                        ; preds = %if.then85.for.end87_crit_edge, %if.then76, %for.end42.for.end87_crit_edge
  %and89.pre-phi = phi i32 [ %and68154, %for.end42.for.end87_crit_edge ], [ %.pre, %if.then76 ], [ %and68, %if.then85.for.end87_crit_edge ]
  %value.0 = phi i32 [ %26, %for.end42.for.end87_crit_edge ], [ %28, %if.then76 ], [ %30, %if.then85.for.end87_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %and89.pre-phi)
  %cmp90 = icmp eq i32 %spec.select, %and89.pre-phi
  br i1 %cmp90, label %for.end87.cleanup_crit_edge, label %do.end95

for.end87.cleanup_crit_edge:                      ; preds = %for.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end95:                                         ; preds = %for.end87
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %mtk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mtk, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.4, i32 noundef %value.0) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end95, %for.end87.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end95 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.end87.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_mtk_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @usb_disabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 232, i32 noundef 3520) #9
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  %call7 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  %vbus = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %call.i, i32 0, i32 11
  %3 = ptrtoint ptr %vbus to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7, ptr %vbus, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #12
  %4 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vbus, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %call14 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.13) #9
  %vusb33 = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %call.i, i32 0, i32 10
  %7 = ptrtoint ptr %vusb33 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call14, ptr %vusb33, align 4
  %cmp.i271 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i271, label %do.end20, label %if.end23

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #12
  %8 = ptrtoint ptr %vusb33 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vusb33, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end13
  %clks1.i = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %call.i, i32 0, i32 12
  %11 = ptrtoint ptr %clks1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.36, ptr %clks1.i, align 4
  %arrayidx2.i = getelementptr %struct.xhci_hcd_mtk, ptr %call.i, i32 0, i32 12, i32 1
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.37, ptr %arrayidx2.i, align 4
  %arrayidx4.i = getelementptr %struct.xhci_hcd_mtk, ptr %call.i, i32 0, i32 12, i32 2
  %13 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.38, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr %struct.xhci_hcd_mtk, ptr %call.i, i32 0, i32 12, i32 3
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.39, ptr %arrayidx6.i, align 4
  %arrayidx8.i = getelementptr %struct.xhci_hcd_mtk, ptr %call.i, i32 0, i32 12, i32 4
  %15 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.40, ptr %arrayidx8.i, align 4
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %call.i272 = tail call i32 @devm_clk_bulk_get_optional(ptr noundef %17, i32 noundef 5, ptr noundef %clks1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i272)
  %tobool25.not = icmp eq i32 %call.i272, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %call28 = tail call i32 @platform_get_irq_byname_optional(ptr noundef %pdev, ptr noundef nonnull @.str.17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp = icmp slt i32 %call28, 0
  br i1 %cmp, label %if.then29, label %if.end27.if.end37_crit_edge

if.end27.if.end37_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call28)
  %cmp30 = icmp eq i32 %call28, -517
  br i1 %cmp30, label %if.then29.cleanup_crit_edge, label %if.end32

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32:                                         ; preds = %if.then29
  %call33 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end32.cleanup_crit_edge, label %if.end32.if.end37_crit_edge

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end37:                                         ; preds = %if.end32.if.end37_crit_edge, %if.end27.if.end37_crit_edge
  %irq.0 = phi i32 [ %call33, %if.end32.if.end37_crit_edge ], [ %call28, %if.end27.if.end37_crit_edge ]
  %call38 = tail call i32 @platform_get_irq_byname_optional(ptr noundef %pdev, ptr noundef nonnull @.str.18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call38)
  %cmp39 = icmp eq i32 %call38, -517
  br i1 %cmp39, label %if.end37.cleanup_crit_edge, label %if.end41

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %call.i273 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef null) #9
  %tobool.i.not = icmp eq ptr %call.i273, null
  %lpm_support = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %call.i, i32 0, i32 13
  %18 = ptrtoint ptr %lpm_support to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %lpm_support, align 4
  %bf.shl = select i1 %tobool.i.not, i8 0, i8 64
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %lpm_support, align 4
  %call.i274 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.20, ptr noundef null) #9
  %tobool.i275.not = icmp eq ptr %call.i274, null
  %19 = ptrtoint ptr %lpm_support to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load45 = load i8, ptr %lpm_support, align 4
  %bf.shl47 = select i1 %tobool.i275.not, i8 0, i8 32
  %bf.clear48 = and i8 %bf.load45, -33
  %bf.set49 = or i8 %bf.clear48, %bf.shl47
  store i8 %bf.set49, ptr %lpm_support, align 4
  %u3p_dis_msk = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %call.i, i32 0, i32 9
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.21, ptr noundef %u3p_dis_msk, i32 noundef 1, i32 noundef 0) #9
  %u2p_dis_msk = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %call.i, i32 0, i32 8
  %call.i.i276 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef %u2p_dis_msk, i32 noundef 1, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #9
  %20 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i.i277 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.41, ptr noundef null) #9
  %tobool.i.not.i = icmp eq ptr %call.i.i277, null
  %21 = ptrtoint ptr %lpm_support to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i = load i8, ptr %lpm_support, align 4
  %bf.shl.i = select i1 %tobool.i.not.i, i8 0, i8 16
  %bf.clear.i = and i8 %bf.load.i, -17
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %lpm_support, align 4
  br i1 %tobool.i.not.i, label %if.end41.usb_wakeup_of_property_parse.exit.thread_crit_edge, label %if.end.i

if.end41.usb_wakeup_of_property_parse.exit.thread_crit_edge: ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_wakeup_of_property_parse.exit.thread

if.end.i:                                         ; preds = %if.end41
  %call.i28.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.42, ptr noundef null, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %args.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i)
  %tobool5.not.i = icmp eq i32 %call.i28.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %usb_wakeup_of_property_parse.exit.thread305

usb_wakeup_of_property_parse.exit.thread305:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #9
  br label %do.end58

if.end7.i:                                        ; preds = %if.end.i
  %args8.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 2
  %22 = ptrtoint ptr %args8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %args8.i, align 4
  %uwk_reg_base.i = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %call.i, i32 0, i32 15
  %24 = ptrtoint ptr %uwk_reg_base.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %uwk_reg_base.i, align 4
  %arrayidx10.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx10.i, align 4
  %uwk_vers.i = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %call.i, i32 0, i32 16
  %27 = ptrtoint ptr %uwk_vers.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %uwk_vers.i, align 4
  %28 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %args.i, align 4
  %call11.i = call ptr @syscon_node_to_regmap(ptr noundef %29) #9
  %uwk.i = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %call.i, i32 0, i32 14
  %30 = ptrtoint ptr %uwk.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call11.i, ptr %uwk.i, align 4
  %31 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %args.i, align 4
  call void @of_node_put(ptr noundef %32) #9
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 4
  %35 = ptrtoint ptr %uwk_reg_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %uwk_reg_base.i, align 4
  %37 = ptrtoint ptr %uwk_vers.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %uwk_vers.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.43, i32 noundef %36, i32 noundef %38) #12
  %39 = ptrtoint ptr %uwk.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %uwk.i, align 4
  %cmp.i.i.i = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %usb_wakeup_of_property_parse.exit, label %if.end7.i.usb_wakeup_of_property_parse.exit.thread_crit_edge

if.end7.i.usb_wakeup_of_property_parse.exit.thread_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_wakeup_of_property_parse.exit.thread

usb_wakeup_of_property_parse.exit.thread:         ; preds = %if.end7.i.usb_wakeup_of_property_parse.exit.thread_crit_edge, %if.end41.usb_wakeup_of_property_parse.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #9
  %call.i278 = call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #9
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #9
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 4000) #9
  call void @pm_runtime_enable(ptr noundef %dev1) #9
  %call.i279 = call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #9
  %41 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vbus, align 4
  %call.i280 = call i32 @regulator_enable(ptr noundef %42) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i280)
  %tobool.not.i = icmp eq i32 %call.i280, 0
  br i1 %tobool.not.i, label %if.end.i281, label %do.end.i

usb_wakeup_of_property_parse.exit:                ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %40 to i32
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #9
  br label %do.end58

do.end58:                                         ; preds = %usb_wakeup_of_property_parse.exit, %usb_wakeup_of_property_parse.exit.thread305
  %retval.0.i308 = phi i32 [ %call.i28.i, %usb_wakeup_of_property_parse.exit.thread305 ], [ %43, %usb_wakeup_of_property_parse.exit ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #12
  br label %cleanup

do.end.i:                                         ; preds = %usb_wakeup_of_property_parse.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.45) #12
  br label %disable_pm

if.end.i281:                                      ; preds = %usb_wakeup_of_property_parse.exit.thread
  %46 = ptrtoint ptr %vusb33 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vusb33, align 4
  %call1.i = call i32 @regulator_enable(ptr noundef %47) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end65, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.48) #12
  %50 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vbus, align 4
  %call9.i = call i32 @regulator_disable(ptr noundef %51) #9
  br label %disable_pm

if.end65:                                         ; preds = %if.end.i281
  %call66 = call fastcc i32 @clk_bulk_prepare_enable(ptr noundef %clks1.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.end65.disable_ldos_crit_edge

if.end65.disable_ldos_crit_edge:                  ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %disable_ldos

if.end69:                                         ; preds = %if.end65
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %52 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i283 = icmp eq ptr %53, null
  br i1 %tobool.not.i283, label %if.end.i284, label %if.end69.dev_name.exit_crit_edge

if.end69.dev_name.exit_crit_edge:                 ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i284:                                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i284, %if.end69.dev_name.exit_crit_edge
  %retval.0.i285 = phi ptr [ %55, %if.end.i284 ], [ %53, %if.end69.dev_name.exit_crit_edge ]
  %call71 = call ptr @usb_create_hcd(ptr noundef nonnull @xhci_mtk_hc_driver, ptr noundef %dev1, ptr noundef %retval.0.i285) #9
  %tobool72.not = icmp eq ptr %call71, null
  br i1 %tobool72.not, label %dev_name.exit.disable_clk_crit_edge, label %if.end74

dev_name.exit.disable_clk_crit_edge:              ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %disable_clk

if.end74:                                         ; preds = %dev_name.exit
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %56 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %driver_data.i.i, align 4
  %hcd76 = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %call.i, i32 0, i32 1
  %58 = ptrtoint ptr %hcd76 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %hcd76, align 4
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call77 = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.26) #9
  %call78 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call77) #9
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %call71, i32 0, i32 16
  %59 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call78, ptr %regs, align 4
  %cmp.i287 = icmp ugt ptr %call78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i287, label %if.then81, label %if.end84

if.then81:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %call78 to i32
  br label %put_usb2_hcd

if.end84:                                         ; preds = %if.end74
  %61 = ptrtoint ptr %call77 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %call77, align 4
  %rsrc_start = getelementptr inbounds %struct.usb_hcd, ptr %call71, i32 0, i32 17
  %63 = ptrtoint ptr %rsrc_start to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %rsrc_start, align 8
  %end.i = getelementptr inbounds %struct.resource, ptr %call77, i32 0, i32 1
  %64 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %end.i, align 4
  %66 = load i32, ptr %call77, align 4
  %sub.i = add i32 %65, 1
  %add.i = sub i32 %sub.i, %66
  %rsrc_len = getelementptr inbounds %struct.usb_hcd, ptr %call71, i32 0, i32 18
  %67 = ptrtoint ptr %rsrc_len to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %add.i, ptr %rsrc_len, align 4
  %call86 = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.27) #9
  %tobool87.not = icmp eq ptr %call86, null
  br i1 %tobool87.not, label %if.end84.if.end99_crit_edge, label %if.then88

if.end84.if.end99_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

if.then88:                                        ; preds = %if.end84
  %call89 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call86) #9
  %ippc_regs = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %call.i, i32 0, i32 5
  %68 = ptrtoint ptr %ippc_regs to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call89, ptr %ippc_regs, align 4
  %cmp.i288 = icmp ugt ptr %call89, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i288, label %if.then92, label %if.end95

if.then92:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %call89 to i32
  br label %put_usb2_hcd

if.end95:                                         ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %lpm_support to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load96 = load i8, ptr %lpm_support, align 4
  %bf.set98 = or i8 %bf.load96, -128
  store i8 %bf.set98, ptr %lpm_support, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.end95, %if.end84.if.end99_crit_edge
  %call100 = call i32 @device_init_wakeup(ptr noundef %dev1, i1 noundef zeroext true) #9
  %call.i289 = call i32 @usb_hcd_is_primary_hcd(ptr noundef nonnull %call71) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i289)
  %tobool.not.i290 = icmp eq i32 %call.i289, 0
  br i1 %tobool.not.i290, label %if.else.i, label %if.end99.hcd_to_xhci.exit_crit_edge

if.end99.hcd_to_xhci.exit_crit_edge:              ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %call71, i32 0, i32 25
  %71 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %if.end99.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %72, %if.else.i ], [ %call71, %if.end99.hcd_to_xhci.exit_crit_edge ]
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 0, i32 30
  %73 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call71, ptr %hcd_priv.i, align 8
  %imod_interval = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 9, i32 5, i32 1, i32 1
  %74 = ptrtoint ptr %imod_interval to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 5000, ptr %imod_interval, align 4
  %call.i292 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.28, ptr noundef %imod_interval, i32 noundef 1) #9
  %75 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i294 = icmp eq ptr %76, null
  br i1 %tobool.not.i294, label %if.end.i295, label %hcd_to_xhci.exit.dev_name.exit297_crit_edge

hcd_to_xhci.exit.dev_name.exit297_crit_edge:      ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit297

if.end.i295:                                      ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit297

dev_name.exit297:                                 ; preds = %if.end.i295, %hcd_to_xhci.exit.dev_name.exit297_crit_edge
  %retval.0.i296 = phi ptr [ %78, %if.end.i295 ], [ %76, %hcd_to_xhci.exit.dev_name.exit297_crit_edge ]
  %call105 = call ptr @usb_create_shared_hcd(ptr noundef nonnull @xhci_mtk_hc_driver, ptr noundef %dev1, ptr noundef %retval.0.i296, ptr noundef nonnull %call71) #9
  %shared_hcd = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 1
  %79 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call105, ptr %shared_hcd, align 4
  %tobool107.not = icmp eq ptr %call105, null
  br i1 %tobool107.not, label %dev_name.exit297.disable_device_wakeup_crit_edge, label %if.end109

dev_name.exit297.disable_device_wakeup_crit_edge: ; preds = %dev_name.exit297
  call void @__sanitizer_cov_trace_pc() #11
  br label %disable_device_wakeup

if.end109:                                        ; preds = %dev_name.exit297
  %call110 = call i32 @usb_add_hcd(ptr noundef nonnull %call71, i32 noundef %irq.0, i32 noundef 128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %if.end109.put_usb3_hcd_crit_edge

if.end109.put_usb3_hcd_crit_edge:                 ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_usb3_hcd

if.end113:                                        ; preds = %if.end109
  %hcc_params = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 9, i32 1, i32 2
  %80 = ptrtoint ptr %hcc_params to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %hcc_params, align 8
  %shr = lshr i32 %81, 12
  %and = and i32 %shr, 15
  %shl = shl nuw nsw i32 2, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shl)
  %cmp114 = icmp ugt i32 %shl, 3
  br i1 %cmp114, label %land.lhs.true, label %if.end113.if.end123_crit_edge

if.end113.if.end123_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123

land.lhs.true:                                    ; preds = %if.end113
  %quirks = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 3, i32 11
  %82 = ptrtoint ptr %quirks to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %quirks, align 8
  %and116 = and i64 %83, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and116)
  %tobool117.not = icmp eq i64 %and116, 0
  br i1 %tobool117.not, label %if.then118, label %land.lhs.true.if.end123_crit_edge

land.lhs.true.if.end123_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123

if.then118:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %shared_hcd, align 4
  %can_do_streams = getelementptr inbounds %struct.usb_hcd, ptr %85, i32 0, i32 14
  %86 = ptrtoint ptr %can_do_streams to i32
  call void @__asan_load2_noabort(i32 %86)
  %bf.load120 = load i16, ptr %can_do_streams, align 4
  %bf.set122 = or i16 %bf.load120, 64
  store i16 %bf.set122, ptr %can_do_streams, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.then118, %land.lhs.true.if.end123_crit_edge, %if.end113.if.end123_crit_edge
  %87 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %shared_hcd, align 4
  %call125 = call i32 @usb_add_hcd(ptr noundef %88, i32 noundef %irq.0, i32 noundef 128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.end128, label %if.end123.dealloc_usb2_hcd_crit_edge

if.end123.dealloc_usb2_hcd_crit_edge:             ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %dealloc_usb2_hcd

if.end128:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp129 = icmp sgt i32 %call38, 0
  br i1 %cmp129, label %if.then131, label %if.end128.if.end142_crit_edge

if.end128.if.end142_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end142

if.then131:                                       ; preds = %if.end128
  %call132 = call i32 @dev_pm_set_dedicated_wake_irq_reverse(ptr noundef %dev1, i32 noundef %call38) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %do.end141, label %do.end137

do.end137:                                        ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30, i32 noundef %call38) #12
  %89 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %shared_hcd, align 4
  call void @usb_remove_hcd(ptr noundef %90) #9
  %91 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %shared_hcd, align 4
  br label %dealloc_usb2_hcd

do.end141:                                        ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.33, i32 noundef %call38) #12
  br label %if.end142

if.end142:                                        ; preds = %do.end141, %if.end128.if.end142_crit_edge
  %is_prepared.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 1
  %92 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %bf.load.i298 = load i16, ptr %is_prepared.i, align 4
  %93 = and i16 %bf.load.i298, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %bf.cast.not.i = icmp eq i16 %93, 0
  br i1 %bf.cast.not.i, label %if.then.i, label %if.end142.device_enable_async_suspend.exit_crit_edge

if.end142.device_enable_async_suspend.exit_crit_edge: ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #11
  br label %device_enable_async_suspend.exit

if.then.i:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set.i299 = or i16 %bf.load.i298, 16384
  %94 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %bf.set.i299, ptr %is_prepared.i, align 4
  br label %device_enable_async_suspend.exit

device_enable_async_suspend.exit:                 ; preds = %if.then.i, %if.end142.device_enable_async_suspend.exit_crit_edge
  %call.i301 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %95 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store volatile i64 %call.i301, ptr %last_busy.i, align 8
  %call.i302 = call i32 @__pm_runtime_suspend(ptr noundef %dev1, i32 noundef 13) #9
  call void @pm_runtime_forbid(ptr noundef %dev1) #9
  br label %cleanup

dealloc_usb2_hcd:                                 ; preds = %do.end137, %if.end123.dealloc_usb2_hcd_crit_edge
  %ret.0 = phi i32 [ %call125, %if.end123.dealloc_usb2_hcd_crit_edge ], [ %call132, %do.end137 ]
  call void @usb_remove_hcd(ptr noundef nonnull %call71) #9
  br label %put_usb3_hcd

put_usb3_hcd:                                     ; preds = %dealloc_usb2_hcd, %if.end109.put_usb3_hcd_crit_edge
  %ret.1 = phi i32 [ %call110, %if.end109.put_usb3_hcd_crit_edge ], [ %ret.0, %dealloc_usb2_hcd ]
  call void @xhci_mtk_sch_exit(ptr noundef nonnull %call.i) #9
  %96 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %shared_hcd, align 4
  call void @usb_put_hcd(ptr noundef %97) #9
  br label %disable_device_wakeup

disable_device_wakeup:                            ; preds = %put_usb3_hcd, %dev_name.exit297.disable_device_wakeup_crit_edge
  %ret.2 = phi i32 [ %ret.1, %put_usb3_hcd ], [ -12, %dev_name.exit297.disable_device_wakeup_crit_edge ]
  %call147 = call i32 @device_init_wakeup(ptr noundef %dev1, i1 noundef zeroext false) #9
  br label %put_usb2_hcd

put_usb2_hcd:                                     ; preds = %disable_device_wakeup, %if.then92, %if.then81
  %ret.3 = phi i32 [ %60, %if.then81 ], [ %69, %if.then92 ], [ %ret.2, %disable_device_wakeup ]
  call void @usb_put_hcd(ptr noundef nonnull %call71) #9
  br label %disable_clk

disable_clk:                                      ; preds = %put_usb2_hcd, %dev_name.exit.disable_clk_crit_edge
  %ret.4 = phi i32 [ %ret.3, %put_usb2_hcd ], [ -12, %dev_name.exit.disable_clk_crit_edge ]
  call fastcc void @clk_bulk_disable_unprepare(ptr noundef %clks1.i)
  br label %disable_ldos

disable_ldos:                                     ; preds = %disable_clk, %if.end65.disable_ldos_crit_edge
  %ret.5 = phi i32 [ %call66, %if.end65.disable_ldos_crit_edge ], [ %ret.4, %disable_clk ]
  call fastcc void @xhci_mtk_ldos_disable(ptr noundef nonnull %call.i)
  br label %disable_pm

disable_pm:                                       ; preds = %disable_ldos, %do.end6.i, %do.end.i
  %ret.6 = phi i32 [ %ret.5, %disable_ldos ], [ %call1.i, %do.end6.i ], [ %call.i280, %do.end.i ]
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !162
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %98 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !163
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %98, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %disable_pm.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

disable_pm.pm_runtime_put_noidle.exit_crit_edge:  ; preds = %disable_pm
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %disable_pm
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !164
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %disable_pm.pm_runtime_put_noidle.exit_crit_edge
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #9
  br label %cleanup

cleanup:                                          ; preds = %pm_runtime_put_noidle.exit, %device_enable_async_suspend.exit, %do.end58, %if.end37.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.then29.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end20, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %do.end ], [ %10, %do.end20 ], [ %retval.0.i308, %do.end58 ], [ %ret.6, %pm_runtime_put_noidle.exit ], [ 0, %device_enable_async_suspend.exit ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i272, %if.end23.cleanup_crit_edge ], [ -517, %if.then29.cleanup_crit_edge ], [ %call33, %if.end32.cleanup_crit_edge ], [ -517, %if.end37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_mtk_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hcd1 = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hcd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcd1, align 4
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %5, %if.else.i ], [ %3, %entry.hcd_to_xhci.exit_crit_edge ]
  %shared_hcd3 = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %shared_hcd3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shared_hcd3, align 4
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i23 = tail call i32 @__pm_runtime_resume(ptr noundef %dev4, i32 noundef 4) #9
  %xhc_state = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 3, i32 7, i32 3, i32 6
  %8 = ptrtoint ptr %xhc_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xhc_state, align 4
  %or = or i32 %9, 4
  store i32 %or, ptr %xhc_state, align 4
  tail call void @dev_pm_clear_wake_irq(ptr noundef %dev4) #9
  %call6 = tail call i32 @device_init_wakeup(ptr noundef %dev4, i1 noundef zeroext false) #9
  tail call void @usb_remove_hcd(ptr noundef %7) #9
  %10 = ptrtoint ptr %shared_hcd3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %shared_hcd3, align 4
  tail call void @usb_remove_hcd(ptr noundef %3) #9
  tail call void @usb_put_hcd(ptr noundef %7) #9
  tail call void @usb_put_hcd(ptr noundef %3) #9
  tail call void @xhci_mtk_sch_exit(ptr noundef %1) #9
  %clks = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 12
  tail call void @clk_bulk_disable(i32 noundef 5, ptr noundef %clks) #9
  tail call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef %clks) #9
  %vbus.i = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %vbus.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vbus.i, align 4
  %call.i24 = tail call i32 @regulator_disable(ptr noundef %12) #9
  %vusb33.i = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %vusb33.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vusb33.i, align 4
  %call1.i = tail call i32 @regulator_disable(ptr noundef %14) #9
  tail call void @__pm_runtime_disable(ptr noundef %dev4, i1 noundef zeroext true) #9
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !162
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !163
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %hcd_to_xhci.exit.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

hcd_to_xhci.exit.pm_runtime_put_noidle.exit_crit_edge: ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !164
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %hcd_to_xhci.exit.pm_runtime_put_noidle.exit_crit_edge
  %call.i25 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev4, i32 noundef 2) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_bulk_prepare_enable(ptr noundef %clks) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @clk_bulk_prepare(i32 noundef 5, ptr noundef %clks) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_bulk_enable(i32 noundef 5, ptr noundef %clks) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef %clks) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_shared_hcd(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_dedicated_wake_irq_reverse(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_mtk_sch_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clk_bulk_disable_unprepare(ptr noundef %clks) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_bulk_disable(i32 noundef 5, ptr noundef %clks) #9
  tail call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef %clks) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xhci_mtk_ldos_disable(ptr nocapture noundef readonly %mtk) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vbus = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %mtk, i32 0, i32 11
  %0 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vbus, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %1) #9
  %vusb33 = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %mtk, i32 0, i32 10
  %2 = ptrtoint ptr %vusb33 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vusb33, align 4
  %call1 = tail call i32 @regulator_disable(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_optional(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_clear_wake_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_mtk_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hcd1 = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hcd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcd1, align 4
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %5, %if.else.i ], [ %3, %entry.hcd_to_xhci.exit_crit_edge ]
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 0, i32 30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_mtk_suspend.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_mtk_suspend, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !153

if.then:                                          ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hcd_priv.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_mtk_suspend.__UNIQUE_ID_ddebug296, ptr noundef %9, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %hcd_to_xhci.exit
  %flags = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #9
  %rh_timer = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 5
  %call7 = tail call i32 @del_timer_sync(ptr noundef %rh_timer) #9
  %shared_hcd = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shared_hcd, align 4
  %flags8 = getelementptr inbounds %struct.usb_hcd, ptr %11, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags8) #9
  %12 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %shared_hcd, align 4
  %rh_timer10 = getelementptr inbounds %struct.usb_hcd, ptr %13, i32 0, i32 5
  %call11 = tail call i32 @del_timer_sync(ptr noundef %rh_timer10) #9
  %ippc_regs.i = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %ippc_regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ippc_regs.i, align 4
  %has_ippc.i = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 13
  %16 = ptrtoint ptr %has_ippc.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %has_ippc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i58 = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i58, label %do.end.if.end15_crit_edge, label %for.cond.preheader.i

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

for.cond.preheader.i:                             ; preds = %do.end
  %num_u3_ports.i = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %num_u3_ports.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_u3_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp128.i = icmp sgt i32 %18, 0
  br i1 %cmp128.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.cond7.preheader.i_crit_edge

for.cond.preheader.i.for.cond7.preheader.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond7.preheader.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %u3p_dis_msk.i = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 9
  br label %for.body.i

for.cond7.preheader.i:                            ; preds = %for.inc.i.for.cond7.preheader.i_crit_edge, %for.cond.preheader.i.for.cond7.preheader.i_crit_edge
  %num_u2_ports.i = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %num_u2_ports.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_u2_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp8131.i = icmp sgt i32 %20, 0
  br i1 %cmp8131.i, label %for.body9.lr.ph.i, label %for.cond7.preheader.i.for.end29.i_crit_edge

for.cond7.preheader.i.for.end29.i_crit_edge:      ; preds = %for.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end29.i

for.body9.lr.ph.i:                                ; preds = %for.cond7.preheader.i
  %u2p_dis_msk.i = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 8
  br label %for.body9.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0129.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %i.0129.i
  %21 = ptrtoint ptr %u3p_dis_msk.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %u3p_dis_msk.i, align 4
  %and.i = and i32 %22, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end3.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.mu3c_ippc_regs, ptr %15, i32 0, i32 9, i32 %i.0129.i
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  %24 = or i32 %23, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %24) #9, !srcloc !137
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end3.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0129.i, 1
  %25 = ptrtoint ptr %num_u3_ports.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_u3_ports.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %26
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.cond7.preheader.i_crit_edge

for.inc.i.for.cond7.preheader.i_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond7.preheader.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body9.i:                                      ; preds = %for.inc27.i.for.body9.i_crit_edge, %for.body9.lr.ph.i
  %i.1132.i = phi i32 [ 0, %for.body9.lr.ph.i ], [ %inc28.i, %for.inc27.i.for.body9.i_crit_edge ]
  %shl10.i = shl nuw i32 1, %i.1132.i
  %27 = ptrtoint ptr %u2p_dis_msk.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %u2p_dis_msk.i, align 4
  %and11.i = and i32 %28, %shl10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %for.body9.i.for.inc27.i_crit_edge

for.body9.i.for.inc27.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc27.i

if.end14.i:                                       ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx17.i = getelementptr %struct.mu3c_ippc_regs, ptr %15, i32 0, i32 10, i32 %i.1132.i
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx17.i) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  %30 = or i32 %29, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !168
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx17.i, i32 %30) #9, !srcloc !137
  br label %for.inc27.i

for.inc27.i:                                      ; preds = %if.end14.i, %for.body9.i.for.inc27.i_crit_edge
  %inc28.i = add nuw nsw i32 %i.1132.i, 1
  %31 = ptrtoint ptr %num_u2_ports.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_u2_ports.i, align 4
  %cmp8.i = icmp slt i32 %inc28.i, %32
  br i1 %cmp8.i, label %for.inc27.i.for.body9.i_crit_edge, label %for.inc27.i.for.end29.i_crit_edge

for.inc27.i.for.end29.i_crit_edge:                ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end29.i

for.inc27.i.for.body9.i_crit_edge:                ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body9.i

for.end29.i:                                      ; preds = %for.inc27.i.for.end29.i_crit_edge, %for.cond7.preheader.i.for.end29.i_crit_edge
  %ip_pw_ctr1.i = getelementptr inbounds %struct.mu3c_ippc_regs, ptr %15, i32 0, i32 1
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ip_pw_ctr1.i) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  %34 = or i32 %33, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ip_pw_ctr1.i, i32 %34) #9, !srcloc !137
  %call40.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call40.i, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 247) #9
  %ip_pw_sts1.i = getelementptr inbounds %struct.mu3c_ippc_regs, ptr %15, i32 0, i32 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ip_pw_sts1.i) #9, !srcloc !134
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  %and60134.i = and i32 %36, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60134.i)
  %tobool61.not135.i = icmp eq i32 %and60134.i, 0
  br i1 %tobool61.not135.i, label %for.end29.i.land.lhs.true.i_crit_edge, label %for.end29.i.for.end79.i_crit_edge

for.end29.i.for.end79.i_crit_edge:                ; preds = %for.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end79.i

for.end29.i.land.lhs.true.i_crit_edge:            ; preds = %for.end29.i
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then77.i.land.lhs.true.i_crit_edge, %for.end29.i.land.lhs.true.i_crit_edge
  %call65.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call65.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call65.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then68.i, label %if.then77.i

if.then68.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ip_pw_sts1.i) #9, !srcloc !134
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  br label %for.end79.i

if.then77.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #9
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ip_pw_sts1.i) #9, !srcloc !134
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  %and60.i = and i32 %40, 1073741824
  %tobool61.not.i = icmp eq i32 %and60.i, 0
  br i1 %tobool61.not.i, label %if.then77.i.land.lhs.true.i_crit_edge, label %if.then77.i.for.end79.i_crit_edge

if.then77.i.for.end79.i_crit_edge:                ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end79.i

if.then77.i.land.lhs.true.i_crit_edge:            ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

for.end79.i:                                      ; preds = %if.then77.i.for.end79.i_crit_edge, %if.then68.i, %for.end29.i.for.end79.i_crit_edge
  %value.0.i = phi i32 [ %38, %if.then68.i ], [ %36, %for.end29.i.for.end79.i_crit_edge ], [ %40, %if.then77.i.for.end79.i_crit_edge ]
  %and81.i = and i32 %value.0.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.i)
  %tobool82.not.i = icmp eq i32 %and81.i, 0
  br i1 %tobool82.not.i, label %do.body16, label %if.else.i59

if.else.i59:                                      ; preds = %for.end79.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #9
  br label %if.end15

if.end15:                                         ; preds = %if.else.i59, %do.end.if.end15_crit_edge
  %clks = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 12
  tail call void @clk_bulk_disable(i32 noundef 5, ptr noundef %clks) #9
  tail call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef %clks) #9
  %41 = ptrtoint ptr %has_ippc.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load.i61 = load i8, ptr %has_ippc.i, align 4
  %42 = and i8 %bf.load.i61, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i62 = icmp eq i8 %42, 0
  br i1 %tobool.not.i62, label %if.end15.cleanup_crit_edge, label %if.then.i

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end15
  %uwk_vers.i.i = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 16
  %43 = ptrtoint ptr %uwk_vers.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %uwk_vers.i.i, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %44, label %if.then.i.cleanup_crit_edge [
    i32 1, label %sw.bb.i.i
    i32 101, label %sw.bb1.i.i
    i32 102, label %sw.bb6.i.i
    i32 2, label %sw.bb11.i.i
  ]

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %uwk_reg_base.i.i = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 15
  %46 = ptrtoint ptr %uwk_reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %uwk_reg_base.i.i, align 4
  %add.i.i63 = add i32 %47, 4
  br label %sw.epilog.i.i

sw.bb1.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %uwk_reg_base2.i.i = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 15
  %48 = ptrtoint ptr %uwk_reg_base2.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %uwk_reg_base2.i.i, align 4
  br label %sw.epilog.i.i

sw.bb6.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %uwk_reg_base7.i.i = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 15
  %50 = ptrtoint ptr %uwk_reg_base7.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %uwk_reg_base7.i.i, align 4
  br label %sw.epilog.i.i

sw.bb11.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %uwk_reg_base12.i.i = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 15
  %52 = ptrtoint ptr %uwk_reg_base12.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %uwk_reg_base12.i.i, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb11.i.i, %sw.bb6.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %.sink.i.i = phi i32 [ 18, %sw.bb11.i.i ], [ 66, %sw.bb6.i.i ], [ 268435520, %sw.bb1.i.i ], [ 570425344, %sw.bb.i.i ]
  %reg.0.i.i = phi i32 [ %53, %sw.bb11.i.i ], [ %51, %sw.bb6.i.i ], [ %49, %sw.bb1.i.i ], [ %add.i.i63, %sw.bb.i.i ]
  %msk.0.i.i = phi i32 [ 18, %sw.bb11.i.i ], [ 66, %sw.bb6.i.i ], [ -268431296, %sw.bb1.i.i ], [ 1040187456, %sw.bb.i.i ]
  %uwk.i.i = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 14
  %54 = ptrtoint ptr %uwk.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %uwk.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef %reg.0.i.i, i32 noundef %msk.0.i.i, i32 noundef %.sink.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

do.body16:                                        ; preds = %for.end79.i
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.53) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_mtk_suspend.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_mtk_suspend, %if.then28)) #9
          to label %do.end34 [label %if.then28], !srcloc !153

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hcd_priv.i, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_mtk_suspend.__UNIQUE_ID_ddebug297, ptr noundef %61, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50) #9
  br label %do.end34

do.end34:                                         ; preds = %if.then28, %do.body16
  %62 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %shared_hcd, align 4
  %flags36 = getelementptr inbounds %struct.usb_hcd, ptr %63, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags36) #9
  %64 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %shared_hcd, align 4
  tail call void @usb_hcd_poll_rh_status(ptr noundef %65) #9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #9
  tail call void @usb_hcd_poll_rh_status(ptr noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %sw.epilog.i.i, %if.then.i.cleanup_crit_edge, %if.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end34 ], [ 0, %if.end15.cleanup_crit_edge ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %sw.epilog.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_mtk_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hcd1 = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hcd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcd1, align 4
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %5, %if.else.i ], [ %3, %entry.hcd_to_xhci.exit_crit_edge ]
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 0, i32 30
  %uwk_en.i = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %uwk_en.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %uwk_en.i, align 4
  %7 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i33 = icmp eq i8 %7, 0
  br i1 %tobool.not.i33, label %hcd_to_xhci.exit.usb_wakeup_set.exit_crit_edge, label %if.then.i

hcd_to_xhci.exit.usb_wakeup_set.exit_crit_edge:   ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_wakeup_set.exit

if.then.i:                                        ; preds = %hcd_to_xhci.exit
  %uwk_vers.i.i = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %uwk_vers.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %uwk_vers.i.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %9, label %if.then.i.usb_wakeup_set.exit_crit_edge [
    i32 1, label %sw.bb.i.i
    i32 101, label %sw.bb1.i.i
    i32 102, label %sw.bb6.i.i
    i32 2, label %sw.bb11.i.i
  ]

if.then.i.usb_wakeup_set.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_wakeup_set.exit

sw.bb.i.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %uwk_reg_base.i.i = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %uwk_reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %uwk_reg_base.i.i, align 4
  %add.i.i = add i32 %12, 4
  br label %sw.epilog.i.i

sw.bb1.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %uwk_reg_base2.i.i = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 15
  %13 = ptrtoint ptr %uwk_reg_base2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %uwk_reg_base2.i.i, align 4
  br label %sw.epilog.i.i

sw.bb6.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %uwk_reg_base7.i.i = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 15
  %15 = ptrtoint ptr %uwk_reg_base7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %uwk_reg_base7.i.i, align 4
  br label %sw.epilog.i.i

sw.bb11.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %uwk_reg_base12.i.i = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 15
  %17 = ptrtoint ptr %uwk_reg_base12.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %uwk_reg_base12.i.i, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb11.i.i, %sw.bb6.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %reg.0.i.i = phi i32 [ %18, %sw.bb11.i.i ], [ %16, %sw.bb6.i.i ], [ %14, %sw.bb1.i.i ], [ %add.i.i, %sw.bb.i.i ]
  %msk.0.i.i = phi i32 [ 18, %sw.bb11.i.i ], [ 66, %sw.bb6.i.i ], [ -268431296, %sw.bb1.i.i ], [ 1040187456, %sw.bb.i.i ]
  %uwk.i.i = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 14
  %19 = ptrtoint ptr %uwk.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %uwk.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %reg.0.i.i, i32 noundef %msk.0.i.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %usb_wakeup_set.exit

usb_wakeup_set.exit:                              ; preds = %sw.epilog.i.i, %if.then.i.usb_wakeup_set.exit_crit_edge, %hcd_to_xhci.exit.usb_wakeup_set.exit_crit_edge
  %clks = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 12
  %call.i34 = tail call i32 @clk_bulk_prepare(i32 noundef 5, ptr noundef %clks) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool.not.i35 = icmp eq i32 %call.i34, 0
  br i1 %tobool.not.i35, label %if.end.i, label %usb_wakeup_set.exit.enable_wakeup_crit_edge

usb_wakeup_set.exit.enable_wakeup_crit_edge:      ; preds = %usb_wakeup_set.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %enable_wakeup

if.end.i:                                         ; preds = %usb_wakeup_set.exit
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef 5, ptr noundef %clks) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.enable_wakeup.sink.split_crit_edge

if.end.i.enable_wakeup.sink.split_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %enable_wakeup.sink.split

if.end:                                           ; preds = %if.end.i
  %call4 = tail call fastcc i32 @xhci_mtk_host_enable(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body, label %disable_clks

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_mtk_resume.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_mtk_resume, %if.then12)) #9
          to label %do.end [label %if.then12], !srcloc !153

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hcd_priv.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_mtk_resume.__UNIQUE_ID_ddebug298, ptr noundef %24, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.55) #9
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %shared_hcd = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %shared_hcd, align 4
  %flags = getelementptr inbounds %struct.usb_hcd, ptr %26, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #9
  %27 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %shared_hcd, align 4
  tail call void @usb_hcd_poll_rh_status(ptr noundef %28) #9
  %flags16 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags16) #9
  tail call void @usb_hcd_poll_rh_status(ptr noundef %3) #9
  br label %cleanup

disable_clks:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_bulk_disable(i32 noundef 5, ptr noundef %clks) #9
  br label %enable_wakeup.sink.split

enable_wakeup.sink.split:                         ; preds = %disable_clks, %if.end.i.enable_wakeup.sink.split_crit_edge
  %ret.0.ph = phi i32 [ %call4, %disable_clks ], [ %call1.i, %if.end.i.enable_wakeup.sink.split_crit_edge ]
  tail call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef %clks) #9
  br label %enable_wakeup

enable_wakeup:                                    ; preds = %enable_wakeup.sink.split, %usb_wakeup_set.exit.enable_wakeup_crit_edge
  %ret.0 = phi i32 [ %call.i34, %usb_wakeup_set.exit.enable_wakeup_crit_edge ], [ %ret.0.ph, %enable_wakeup.sink.split ]
  %29 = ptrtoint ptr %uwk_en.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i38 = load i8, ptr %uwk_en.i, align 4
  %30 = and i8 %bf.load.i38, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i39 = icmp eq i8 %30, 0
  br i1 %tobool.not.i39, label %enable_wakeup.cleanup_crit_edge, label %if.then.i41

enable_wakeup.cleanup_crit_edge:                  ; preds = %enable_wakeup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i41:                                      ; preds = %enable_wakeup
  %uwk_vers.i.i40 = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 16
  %31 = ptrtoint ptr %uwk_vers.i.i40 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %uwk_vers.i.i40, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %32, label %if.then.i41.cleanup_crit_edge [
    i32 1, label %sw.bb.i.i44
    i32 101, label %sw.bb1.i.i46
    i32 102, label %sw.bb6.i.i48
    i32 2, label %sw.bb11.i.i50
  ]

if.then.i41.cleanup_crit_edge:                    ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i.i44:                                      ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #11
  %uwk_reg_base.i.i42 = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 15
  %34 = ptrtoint ptr %uwk_reg_base.i.i42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %uwk_reg_base.i.i42, align 4
  %add.i.i43 = add i32 %35, 4
  br label %sw.epilog.i.i56

sw.bb1.i.i46:                                     ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #11
  %uwk_reg_base2.i.i45 = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 15
  %36 = ptrtoint ptr %uwk_reg_base2.i.i45 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %uwk_reg_base2.i.i45, align 4
  br label %sw.epilog.i.i56

sw.bb6.i.i48:                                     ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #11
  %uwk_reg_base7.i.i47 = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 15
  %38 = ptrtoint ptr %uwk_reg_base7.i.i47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %uwk_reg_base7.i.i47, align 4
  br label %sw.epilog.i.i56

sw.bb11.i.i50:                                    ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #11
  %uwk_reg_base12.i.i49 = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 15
  %40 = ptrtoint ptr %uwk_reg_base12.i.i49 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %uwk_reg_base12.i.i49, align 4
  br label %sw.epilog.i.i56

sw.epilog.i.i56:                                  ; preds = %sw.bb11.i.i50, %sw.bb6.i.i48, %sw.bb1.i.i46, %sw.bb.i.i44
  %.sink.i.i51 = phi i32 [ 18, %sw.bb11.i.i50 ], [ 66, %sw.bb6.i.i48 ], [ 268435520, %sw.bb1.i.i46 ], [ 570425344, %sw.bb.i.i44 ]
  %reg.0.i.i52 = phi i32 [ %41, %sw.bb11.i.i50 ], [ %39, %sw.bb6.i.i48 ], [ %37, %sw.bb1.i.i46 ], [ %add.i.i43, %sw.bb.i.i44 ]
  %msk.0.i.i53 = phi i32 [ 18, %sw.bb11.i.i50 ], [ 66, %sw.bb6.i.i48 ], [ -268431296, %sw.bb1.i.i46 ], [ 1040187456, %sw.bb.i.i44 ]
  %uwk.i.i54 = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 14
  %42 = ptrtoint ptr %uwk.i.i54 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %uwk.i.i54, align 4
  %call.i.i.i55 = tail call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef %reg.0.i.i52, i32 noundef %msk.0.i.i53, i32 noundef %.sink.i.i51, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.i.i56, %if.then.i41.cleanup_crit_edge, %enable_wakeup.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %ret.0, %enable_wakeup.cleanup_crit_edge ], [ %ret.0, %if.then.i41.cleanup_crit_edge ], [ %ret.0, %sw.epilog.i.i56 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_mtk_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hcd = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcd, align 4
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %5, %if.else.i ], [ %3, %entry.hcd_to_xhci.exit_crit_edge ]
  %xhc_state = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 3, i32 7, i32 3, i32 6
  %6 = ptrtoint ptr %xhc_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xhc_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %hcd_to_xhci.exit.cleanup_crit_edge

hcd_to_xhci.exit.cleanup_crit_edge:               ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %hcd_to_xhci.exit
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i11 = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i11, label %if.end.cleanup_crit_edge, label %device_may_wakeup.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

device_may_wakeup.exit:                           ; preds = %if.end
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %9 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %10, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.cleanup_crit_edge, label %if.then3

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 @xhci_mtk_suspend(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %phi.cmp = icmp eq i32 %call4, 0
  %phi.sel = select i1 %phi.cmp, i32 0, i32 -16
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %device_may_wakeup.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %hcd_to_xhci.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -108, %hcd_to_xhci.exit.cleanup_crit_edge ], [ %phi.sel, %if.then3 ], [ 0, %device_may_wakeup.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_mtk_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hcd = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcd, align 4
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %5, %if.else.i ], [ %3, %entry.hcd_to_xhci.exit_crit_edge ]
  %xhc_state = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 3, i32 7, i32 3, i32 6
  %6 = ptrtoint ptr %xhc_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xhc_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %hcd_to_xhci.exit.cleanup_crit_edge

hcd_to_xhci.exit.cleanup_crit_edge:               ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %hcd_to_xhci.exit
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i10 = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i10, label %if.end.cleanup_crit_edge, label %device_may_wakeup.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

device_may_wakeup.exit:                           ; preds = %if.end
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %9 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %10, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.cleanup_crit_edge, label %if.then3

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 @xhci_mtk_resume(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %device_may_wakeup.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %hcd_to_xhci.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -108, %hcd_to_xhci.exit.cleanup_crit_edge ], [ %call4, %if.then3 ], [ 0, %device_may_wakeup.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_poll_rh_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !26, !27, !28, !30, !32, !34, !36, !38, !39, !40, !41, !43, !45, !46, !47, !49, !51, !53, !55, !57, !59, !61, !62, !63, !65, !67, !69, !71, !72, !73, !75, !76, !77, !78, !80, !82, !84, !86, !88, !90, !92, !94, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !108, !110, !112, !113, !114, !116, !117, !119, !120, !121, !122, !124}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @__initcall__kmod_xhci_mtk_hcd__299_798_xhci_mtk_init6, !1, !"__initcall__kmod_xhci_mtk_hcd__299_798_xhci_mtk_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/xhci-mtk.c", i32 798, i32 1}
!2 = !{ptr @__exitcall_xhci_mtk_exit, !3, !"__exitcall_xhci_mtk_exit", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/xhci-mtk.c", i32 804, i32 1}
!4 = !{ptr @__UNIQUE_ID_author300, !5, !"__UNIQUE_ID_author300", i1 false, i1 false}
!5 = !{!"../drivers/usb/host/xhci-mtk.c", i32 806, i32 1}
!6 = !{ptr @__UNIQUE_ID_description301, !7, !"__UNIQUE_ID_description301", i1 false, i1 false}
!7 = !{!"../drivers/usb/host/xhci-mtk.c", i32 807, i32 1}
!8 = !{ptr @__UNIQUE_ID_file302, !9, !"__UNIQUE_ID_file302", i1 false, i1 false}
!9 = !{!"../drivers/usb/host/xhci-mtk.c", i32 808, i32 1}
!10 = !{ptr @__UNIQUE_ID_license303, !9, !"__UNIQUE_ID_license303", i1 false, i1 false}
!11 = !{ptr @xhci_mtk_hc_driver, !12, !"xhci_mtk_hc_driver", i1 false, i1 false}
!12 = !{!"../drivers/usb/host/xhci-mtk.c", i32 455, i32 39}
!13 = !{ptr @xhci_mtk_overrides, !14, !"xhci_mtk_overrides", i1 false, i1 false}
!14 = !{!"../drivers/usb/host/xhci-mtk.c", i32 447, i32 43}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/host/xhci-mtk.c", i32 284, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @xhci_mtk_ssusb_config.__UNIQUE_ID_ddebug295, !16, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/host/xhci-mtk.c", i32 203, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @xhci_mtk_host_enable._entry, !22, !"_entry", i1 false, i1 false}
!27 = !{ptr @xhci_mtk_host_enable._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/host/xhci-mtk.c", i32 121, i32 45}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/host/xhci-mtk.c", i32 787, i32 11}
!32 = !{ptr @mtk_xhci_driver, !33, !"mtk_xhci_driver", i1 false, i1 false}
!33 = !{!"../drivers/usb/host/xhci-mtk.c", i32 783, i32 31}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/host/xhci-mtk.c", i32 479, i32 38}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/host/xhci-mtk.c", i32 481, i32 3}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @xhci_mtk_probe._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @xhci_mtk_probe._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/host/xhci-mtk.c", i32 485, i32 40}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/host/xhci-mtk.c", i32 487, i32 3}
!45 = !{ptr @xhci_mtk_probe._entry.14, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @xhci_mtk_probe._entry_ptr.16, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/host/xhci-mtk.c", i32 495, i32 47}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/host/xhci-mtk.c", i32 506, i32 54}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/host/xhci-mtk.c", i32 510, i32 49}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/host/xhci-mtk.c", i32 511, i32 52}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/host/xhci-mtk.c", i32 513, i32 29}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/host/xhci-mtk.c", i32 515, i32 29}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/host/xhci-mtk.c", i32 520, i32 3}
!61 = !{ptr @xhci_mtk_probe._entry.23, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @xhci_mtk_probe._entry_ptr.25, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/host/xhci-mtk.c", i32 551, i32 59}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/host/xhci-mtk.c", i32 560, i32 59}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/host/xhci-mtk.c", i32 581, i32 32}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/host/xhci-mtk.c", i32 605, i32 4}
!71 = !{ptr @xhci_mtk_probe._entry.29, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @xhci_mtk_probe._entry_ptr.31, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/host/xhci-mtk.c", i32 608, i32 3}
!75 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @xhci_mtk_probe._entry.32, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @xhci_mtk_probe._entry_ptr.35, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/host/xhci-mtk.c", i32 358, i32 15}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/host/xhci-mtk.c", i32 359, i32 15}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/host/xhci-mtk.c", i32 360, i32 15}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/host/xhci-mtk.c", i32 361, i32 15}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/host/xhci-mtk.c", i32 362, i32 15}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/host/xhci-mtk.c", i32 329, i32 42}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/host/xhci-mtk.c", i32 334, i32 5}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/host/xhci-mtk.c", i32 342, i32 2}
!94 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @usb_wakeup_of_property_parse._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @usb_wakeup_of_property_parse._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/host/xhci-mtk.c", i32 373, i32 3}
!99 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @xhci_mtk_ldos_enable._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @xhci_mtk_ldos_enable._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/host/xhci-mtk.c", i32 379, i32 3}
!104 = !{ptr @xhci_mtk_ldos_enable._entry.47, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @xhci_mtk_ldos_enable._entry_ptr.49, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @mtk_xhci_of_match, !107, !"mtk_xhci_of_match", i1 false, i1 false}
!107 = !{!"../drivers/usb/host/xhci-mtk.c", i32 775, i32 34}
!108 = !{ptr @xhci_mtk_pm_ops, !109, !"xhci_mtk_pm_ops", i1 false, i1 false}
!109 = !{!"../drivers/usb/host/xhci-mtk.c", i32 767, i32 32}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/host/xhci-mtk.c", i32 683, i32 2}
!112 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @xhci_mtk_suspend.__UNIQUE_ID_ddebug296, !111, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/host/xhci-mtk.c", i32 698, i32 2}
!116 = !{ptr @xhci_mtk_suspend.__UNIQUE_ID_ddebug297, !115, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/host/xhci-mtk.c", i32 249, i32 3}
!119 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @xhci_mtk_host_disable._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @xhci_mtk_host_disable._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/host/xhci-mtk.c", i32 722, i32 2}
!124 = !{ptr @xhci_mtk_resume.__UNIQUE_ID_ddebug298, !123, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!134 = !{i64 6235221}
!135 = !{i64 2155494906}
!136 = !{i64 2155496509}
!137 = !{i64 6234803}
!138 = !{i64 2155497182}
!139 = !{i64 2155498092}
!140 = !{i64 2155498765}
!141 = !{i64 2155499675}
!142 = !{i64 2155500348}
!143 = !{i64 2155501258}
!144 = !{i64 2155501931}
!145 = !{i64 2155502841}
!146 = !{i64 2155517857}
!147 = !{i64 2155518155}
!148 = !{i64 2155519358}
!149 = !{i64 2155519656}
!150 = !{i64 2155520323}
!151 = !{i64 2155520621}
!152 = !{i64 2155521292}
!153 = !{i64 2148339738, i64 2148339743, i64 2148339756, i64 2148339800, i64 2148339834, i64 2148339855}
!154 = !{i64 2155503508}
!155 = !{i64 2155503806}
!156 = !{i64 2155504481}
!157 = !{i64 2155504945}
!158 = !{i64 2155505697}
!159 = !{i64 2155506161}
!160 = !{i64 2155508419}
!161 = !{i64 2155508905}
!162 = !{i64 2148525764}
!163 = !{i64 1012364, i64 1012389, i64 1012411, i64 1012427, i64 1012439, i64 1012459, i64 1012483, i64 1012499, i64 1012511}
!164 = !{i64 2148525952}
!165 = !{i64 2155511060}
!166 = !{i64 2155511360}
!167 = !{i64 2155512112}
!168 = !{i64 2155512412}
!169 = !{i64 2155513081}
!170 = !{i64 2155513379}
!171 = !{i64 2155515326}
!172 = !{i64 2155515812}
