; ModuleID = '/llk/IR_all_yes/drivers/usb/musb/mediatek.c_pt.bc'
source_filename = "../drivers/usb/musb/mediatek.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.musb_hdrc_config = type { ptr, i32, i8, i8, i8, i32 }
%struct.musb_platform_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.musb_fifo_cfg = type { i8, i8, i8, i16 }
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
%struct.mtk_glue = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr }
%struct.musb_hdrc_platform_data = type { i8, ptr, ptr, i8, i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.usb_role_switch_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.musb = type { %struct.spinlock, %struct.spinlock, %struct.musb_io, ptr, %struct.musb_context_registers, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i16, i16, i16, i32, i32, i8, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.timer_list, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, i32, ptr, i8, i8, i16, i16, ptr, ptr, i32, i8, [16 x %struct.musb_hw_ep], i16, i16, i8, ptr, i8, i32, i8, i32, i8, i32, i32, [3 x i8], i8, i8, i16, i8, %struct.usb_gadget, ptr, ptr, ptr, i32, ptr }
%struct.musb_io = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_context_registers = type { i8, i8, i16, i8, i8, i8, i8, i8, i32, [16 x %struct.musb_csr_regs] }
%struct.musb_csr_regs = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.musb_hw_ep = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, i8, %struct.musb_ep, %struct.musb_ep }
%struct.musb_ep = type { %struct.usb_ep, [12 x i8], ptr, ptr, i8, i8, i8, i16, ptr, ptr, %struct.list_head, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.musb_qh = type { ptr, ptr, ptr, %struct.list_head, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, %struct.sg_mapping_iter, i8 }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_mediatek__295_591_mtk_musb_driver_init6 = internal global ptr @mtk_musb_driver_init, section ".initcall6.init", align 4
@mtk_musb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_musb_probe, ptr @mtk_musb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_musb_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk_musb_driver_exit = internal global ptr @mtk_musb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description296 = internal constant [46 x i8] c"mediatek.description=MediaTek MUSB Glue Layer\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [47 x i8] c"mediatek.author=Min Guo <min.guo@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [40 x i8] c"mediatek.file=drivers/usb/musb/mediatek\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [24 x i8] c"mediatek.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"musb-mtk\00", [23 x i8] zeroinitializer }, align 32
@mtk_musb_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mtk-musb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mtk_musb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 471, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to create child devices at %p\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk_musb_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/musb/mediatek.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_musb_probe._entry_ptr = internal global ptr @mtk_musb_probe._entry, section ".printk_index", align 4
@mtk_musb_hdrc_config = internal constant { %struct.musb_hdrc_config, [16 x i8] } { %struct.musb_hdrc_config { ptr @mtk_musb_mode_cfg, i32 14, i8 -64, i8 8, i8 11, i32 0 }, [16 x i8] zeroinitializer }, align 32
@mtk_musb_ops = internal constant { %struct.musb_platform_ops, [36 x i8] } { %struct.musb_platform_ops { i32 4, ptr @mtk_musb_init, ptr @mtk_musb_exit, ptr null, ptr null, ptr null, ptr null, i16 0, ptr null, ptr @mtk_musb_busctl_offset, ptr null, ptr null, ptr @mtk_musb_clearb, ptr null, ptr null, ptr @mtk_musb_clearw, ptr null, ptr null, ptr @mtk_musb_get_toggle, ptr @mtk_musb_set_toggle, ptr null, ptr null, ptr @mtk_musb_set_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mtk_musb_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 502, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error 'dr_mode' property\0A\00", [38 x i8] zeroinitializer }, align 32
@mtk_musb_probe._entry_ptr.8 = internal global ptr @mtk_musb_probe._entry.6, section ".printk_index", align 4
@mtk_musb_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 509, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fail to getting phy %ld\0A\00", [39 x i8] zeroinitializer }, align 32
@mtk_musb_probe._entry_ptr.11 = internal global ptr @mtk_musb_probe._entry.9, section ".printk_index", align 4
@mtk_musb_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 516, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fail to registering usb-phy %ld\0A\00", [63 x i8] zeroinitializer }, align 32
@mtk_musb_probe._entry_ptr.14 = internal global ptr @mtk_musb_probe._entry.12, section ".printk_index", align 4
@mtk_musb_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 523, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fail to getting usb-phy %d\0A\00", [36 x i8] zeroinitializer }, align 32
@mtk_musb_probe._entry_ptr.17 = internal global ptr @mtk_musb_probe._entry.15, section ".printk_index", align 4
@mtk_dev_info = internal constant { %struct.platform_device_info, [40 x i8] } { %struct.platform_device_info { ptr null, ptr null, i8 0, ptr @.str.47, i32 -2, ptr null, i32 0, ptr null, i32 0, i64 4294967295, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtk_musb_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 547, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register musb device: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@mtk_musb_probe._entry_ptr.20 = internal global ptr @mtk_musb_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"main\00", [27 x i8] zeroinitializer }, align 32
@mtk_musb_clks_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 60, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fail to get main clock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtk_musb_clks_get\00", [46 x i8] zeroinitializer }, align 32
@mtk_musb_clks_get._entry_ptr = internal global ptr @mtk_musb_clks_get._entry, section ".printk_index", align 4
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mcu\00", [28 x i8] zeroinitializer }, align 32
@mtk_musb_clks_get._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.3, i32 66, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fail to get mcu clock\0A\00", [41 x i8] zeroinitializer }, align 32
@mtk_musb_clks_get._entry_ptr.27 = internal global ptr @mtk_musb_clks_get._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"univpll\00", [24 x i8] zeroinitializer }, align 32
@mtk_musb_clks_get._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.23, ptr @.str.3, i32 72, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fail to get univpll clock\0A\00", [37 x i8] zeroinitializer }, align 32
@mtk_musb_clks_get._entry_ptr.31 = internal global ptr @mtk_musb_clks_get._entry.29, section ".printk_index", align 4
@mtk_musb_mode_cfg = internal global { [14 x %struct.musb_fifo_cfg], [44 x i8] } { [14 x %struct.musb_fifo_cfg] [%struct.musb_fifo_cfg { i8 1, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 1, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 2, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 2, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 3, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 3, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 4, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 4, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 5, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 5, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 6, i8 1, i8 0, i16 1024 }, %struct.musb_fifo_cfg { i8 6, i8 2, i8 0, i16 1024 }, %struct.musb_fifo_cfg { i8 7, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 7, i8 2, i8 0, i16 64 }], [44 x i8] zeroinitializer }, align 32
@musb_writew = external dso_local local_unnamed_addr global ptr, align 4
@musb_clearb = external dso_local local_unnamed_addr global ptr, align 4
@musb_clearw = external dso_local local_unnamed_addr global ptr, align 4
@musb_writeb = external dso_local local_unnamed_addr global ptr, align 4
@mtk_otg_switch_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 160, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Invalid State\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtk_otg_switch_set\00", [45 x i8] zeroinitializer }, align 32
@mtk_otg_switch_set._entry_ptr = internal global ptr @mtk_otg_switch_set._entry, section ".printk_index", align 4
@musb_readb = external dso_local local_unnamed_addr global ptr, align 4
@musb_readw = external dso_local local_unnamed_addr global ptr, align 4
@mtk_musb_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 291, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid mode request\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtk_musb_set_mode\00", [46 x i8] zeroinitializer }, align 32
@mtk_musb_set_mode._entry_ptr = internal global ptr @mtk_musb_set_mode._entry, section ".printk_index", align 4
@mtk_musb_set_mode._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 299, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Does not support changing modes\0A\00", [63 x i8] zeroinitializer }, align 32
@mtk_musb_set_mode._entry_ptr.38 = internal global ptr @mtk_musb_set_mode._entry.36, section ".printk_index", align 4
@mtk_musb_clks_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 85, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable main clock\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mtk_musb_clks_enable\00", [43 x i8] zeroinitializer }, align 32
@mtk_musb_clks_enable._entry_ptr = internal global ptr @mtk_musb_clks_enable._entry, section ".printk_index", align 4
@mtk_musb_clks_enable._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.3, i32 91, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable mcu clock\0A\00", [36 x i8] zeroinitializer }, align 32
@mtk_musb_clks_enable._entry_ptr.43 = internal global ptr @mtk_musb_clks_enable._entry.41, section ".printk_index", align 4
@mtk_musb_clks_enable._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.3, i32 97, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable univpll clock\0A\00", [32 x i8] zeroinitializer }, align 32
@mtk_musb_clks_enable._entry_ptr.46 = internal global ptr @mtk_musb_clks_enable._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"musb-hdrc\00", [22 x i8] zeroinitializer }, align 32
@switch.table.mtk_musb_probe = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 0], [20 x i8] zeroinitializer }, align 32
@switch.table.mtk_musb_set_mode = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 0], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.48 = private unnamed_addr constant [16 x i8] c"mtk_musb_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 582, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 586, i32 14 }
@___asan_gen_.54 = private unnamed_addr constant [15 x i8] c"mtk_musb_match\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 575, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 471, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [21 x i8] c"mtk_musb_hdrc_config\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 436, i32 38 }
@___asan_gen_.78 = private unnamed_addr constant [13 x i8] c"mtk_musb_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 400, i32 39 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 502, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 508, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 515, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 523, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [13 x i8] c"mtk_dev_info\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 445, i32 42 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 547, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 58, i32 33 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 60, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 64, i32 32 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 66, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 70, i32 36 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 72, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [18 x i8] c"mtk_musb_mode_cfg\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 419, i32 29 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 160, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 291, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 299, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 85, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 91, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 97, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.193 = private constant [31 x i8] c"../drivers/usb/musb/mediatek.c\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 446, i32 10 }
@___asan_gen_.195 = private unnamed_addr constant [28 x i8] c"switch.table.mtk_musb_probe\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [31 x i8] c"switch.table.mtk_musb_set_mode\00", align 1
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_mtk_musb_driver_exit, ptr @__initcall__kmod_mediatek__295_591_mtk_musb_driver_init6, ptr @mtk_musb_clks_enable._entry, ptr @mtk_musb_clks_enable._entry.41, ptr @mtk_musb_clks_enable._entry.44, ptr @mtk_musb_clks_enable._entry_ptr, ptr @mtk_musb_clks_enable._entry_ptr.43, ptr @mtk_musb_clks_enable._entry_ptr.46, ptr @mtk_musb_clks_get._entry, ptr @mtk_musb_clks_get._entry.25, ptr @mtk_musb_clks_get._entry.29, ptr @mtk_musb_clks_get._entry_ptr, ptr @mtk_musb_clks_get._entry_ptr.27, ptr @mtk_musb_clks_get._entry_ptr.31, ptr @mtk_musb_driver_exit, ptr @mtk_musb_probe._entry, ptr @mtk_musb_probe._entry.12, ptr @mtk_musb_probe._entry.15, ptr @mtk_musb_probe._entry.18, ptr @mtk_musb_probe._entry.6, ptr @mtk_musb_probe._entry.9, ptr @mtk_musb_probe._entry_ptr, ptr @mtk_musb_probe._entry_ptr.11, ptr @mtk_musb_probe._entry_ptr.14, ptr @mtk_musb_probe._entry_ptr.17, ptr @mtk_musb_probe._entry_ptr.20, ptr @mtk_musb_probe._entry_ptr.8, ptr @mtk_musb_set_mode._entry, ptr @mtk_musb_set_mode._entry.36, ptr @mtk_musb_set_mode._entry_ptr, ptr @mtk_musb_set_mode._entry_ptr.38, ptr @mtk_otg_switch_set._entry, ptr @mtk_otg_switch_set._entry_ptr, ptr @mtk_musb_driver, ptr @.str, ptr @mtk_musb_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mtk_musb_hdrc_config, ptr @mtk_musb_ops, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @mtk_dev_info, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @mtk_musb_mode_cfg, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @switch.table.mtk_musb_probe, ptr @switch.table.mtk_musb_set_mode], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_musb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_musb_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_musb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_musb_hdrc_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_musb_ops to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_musb_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_musb_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_musb_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_musb_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dev_info to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_musb_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_musb_clks_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_musb_clks_get._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_musb_clks_get._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_musb_mode_cfg to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_otg_switch_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_musb_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_musb_set_mode._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_musb_clks_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_musb_clks_enable._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_musb_clks_enable._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_musb_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_musb_set_mode to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_musb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_musb_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_musb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_musb_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_musb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pinfo = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pinfo) #6
  %0 = call ptr @memset(ptr %pinfo, i32 255, i32 56)
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 48, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %call.i, align 4
  %call.i149 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #6
  %tobool4.not = icmp eq ptr %call.i149, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @of_platform_populate(ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef %dev1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef %2) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  %call.i150 = tail call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.21) #6
  %main.i = getelementptr inbounds %struct.mtk_glue, ptr %call.i, i32 0, i32 7
  %6 = ptrtoint ptr %main.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i150, ptr %main.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i150, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end10.mtk_musb_clks_get.exit_crit_edge, label %if.end.i

if.end10.mtk_musb_clks_get.exit_crit_edge:        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_musb_clks_get.exit

if.end.i:                                         ; preds = %if.end10
  %call6.i = tail call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.24) #6
  %mcu.i = getelementptr inbounds %struct.mtk_glue, ptr %call.i, i32 0, i32 8
  %7 = ptrtoint ptr %mcu.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6.i, ptr %mcu.i, align 4
  %cmp.i40.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i40.i, label %if.end.i.mtk_musb_clks_get.exit_crit_edge, label %if.end15.i

if.end.i.mtk_musb_clks_get.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_musb_clks_get.exit

if.end15.i:                                       ; preds = %if.end.i
  %call16.i = tail call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.28) #6
  %univpll.i = getelementptr inbounds %struct.mtk_glue, ptr %call.i, i32 0, i32 9
  %8 = ptrtoint ptr %univpll.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call16.i, ptr %univpll.i, align 4
  %cmp.i41.i = icmp ugt ptr %call16.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i41.i, label %if.end15.i.mtk_musb_clks_get.exit_crit_edge, label %if.end15.i.if.end14_crit_edge

if.end15.i.if.end14_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.end15.i.mtk_musb_clks_get.exit_crit_edge:      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_musb_clks_get.exit

mtk_musb_clks_get.exit:                           ; preds = %if.end15.i.mtk_musb_clks_get.exit_crit_edge, %if.end.i.mtk_musb_clks_get.exit_crit_edge, %if.end10.mtk_musb_clks_get.exit_crit_edge
  %.str.30.sink.i = phi ptr [ @.str.22, %if.end10.mtk_musb_clks_get.exit_crit_edge ], [ @.str.26, %if.end.i.mtk_musb_clks_get.exit_crit_edge ], [ @.str.30, %if.end15.i.mtk_musb_clks_get.exit_crit_edge ]
  %univpll.sink.i = phi ptr [ %main.i, %if.end10.mtk_musb_clks_get.exit_crit_edge ], [ %mcu.i, %if.end.i.mtk_musb_clks_get.exit_crit_edge ], [ %univpll.i, %if.end15.i.mtk_musb_clks_get.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull %.str.30.sink.i) #9
  %9 = ptrtoint ptr %univpll.sink.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %univpll.sink.i, align 4
  %11 = ptrtoint ptr %10 to i32
  %tobool12.not = icmp eq ptr %10, null
  br i1 %tobool12.not, label %mtk_musb_clks_get.exit.if.end14_crit_edge, label %mtk_musb_clks_get.exit.cleanup_crit_edge

mtk_musb_clks_get.exit.cleanup_crit_edge:         ; preds = %mtk_musb_clks_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mtk_musb_clks_get.exit.if.end14_crit_edge:        ; preds = %mtk_musb_clks_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.end14:                                         ; preds = %mtk_musb_clks_get.exit.if.end14_crit_edge, %if.end15.i.if.end14_crit_edge
  %config = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %call.i149, i32 0, i32 8
  %12 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mtk_musb_hdrc_config, ptr %config, align 4
  %platform_ops = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %call.i149, i32 0, i32 10
  %13 = ptrtoint ptr %platform_ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mtk_musb_ops, ptr %platform_ops, align 4
  %call15 = tail call i32 @usb_get_dr_mode(ptr noundef %dev1) #6
  %conv = trunc i32 %call15 to i8
  %14 = ptrtoint ptr %call.i149 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %call.i149, align 4
  %switch.tableidx = add i8 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %15 = icmp ult i8 %switch.tableidx, 3
  br i1 %15, label %switch.lookup, label %do.end26

do.end26:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %cleanup

switch.lookup:                                    ; preds = %if.end14
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %switch.idx.mult = mul nuw nsw i32 %switch.idx.cast, 5
  %switch.offset = add nuw nsw i32 %switch.idx.mult, 1
  %16 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.mtk_musb_probe, i32 0, i32 %16
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load i32, ptr %switch.gep, align 4
  %phy_mode22 = getelementptr inbounds %struct.mtk_glue, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %phy_mode22 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %switch.offset, ptr %phy_mode22, align 4
  %role23 = getelementptr inbounds %struct.mtk_glue, ptr %call.i, i32 0, i32 10
  %19 = ptrtoint ptr %role23 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %switch.load, ptr %role23, align 4
  %call28 = tail call ptr @devm_of_phy_get_by_index(ptr noundef %dev1, ptr noundef %2, i32 noundef 0) #6
  %phy = getelementptr inbounds %struct.mtk_glue, ptr %call.i, i32 0, i32 4
  %20 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call28, ptr %phy, align 4
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end34, label %if.end39

do.end34:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %call28 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %21) #9
  %22 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy, align 4
  %24 = ptrtoint ptr %23 to i32
  br label %cleanup

if.end39:                                         ; preds = %switch.lookup
  %call40 = tail call ptr @usb_phy_generic_register() #6
  %usb_phy = getelementptr inbounds %struct.mtk_glue, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %usb_phy to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call40, ptr %usb_phy, align 4
  %cmp.i151 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i151, label %do.end46, label %if.end51

do.end46:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %call40 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %26) #9
  %27 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %usb_phy, align 4
  %29 = ptrtoint ptr %28 to i32
  br label %cleanup

if.end51:                                         ; preds = %if.end39
  %call52 = tail call ptr @devm_usb_get_phy(ptr noundef %dev1, i32 noundef 1) #6
  %xceiv = getelementptr inbounds %struct.mtk_glue, ptr %call.i, i32 0, i32 5
  %30 = ptrtoint ptr %xceiv to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call52, ptr %xceiv, align 4
  %cmp.i152 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i152, label %if.then55, label %if.end61

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %call52 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %31) #9
  br label %err_unregister_usb_phy

if.end61:                                         ; preds = %if.end51
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %32 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev1) #6
  %call.i153 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #6
  %33 = ptrtoint ptr %main.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %main.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end61.do.end.i_crit_edge

if.end61.do.end.i_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.end61
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i156, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %34) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then3.i.i, %if.end61.do.end.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end61.do.end.i_crit_edge ]
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.39) #9
  br label %err_enable_clk

if.end.i156:                                      ; preds = %if.end.i.i
  %mcu.i155 = getelementptr inbounds %struct.mtk_glue, ptr %call.i, i32 0, i32 8
  %37 = ptrtoint ptr %mcu.i155 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mcu.i155, align 4
  %call.i29.i = tail call i32 @clk_prepare(ptr noundef %38) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29.i)
  %tobool.not.i30.i = icmp eq i32 %call.i29.i, 0
  br i1 %tobool.not.i30.i, label %if.end.i33.i, label %if.end.i156.do.end6.i_crit_edge

if.end.i156.do.end6.i_crit_edge:                  ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

if.end.i33.i:                                     ; preds = %if.end.i156
  %call1.i31.i = tail call i32 @clk_enable(ptr noundef %38) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i31.i)
  %tobool2.not.i32.i = icmp eq i32 %call1.i31.i, 0
  br i1 %tobool2.not.i32.i, label %if.end8.i, label %if.then3.i34.i

if.then3.i34.i:                                   ; preds = %if.end.i33.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %38) #6
  br label %do.end6.i

do.end6.i:                                        ; preds = %if.then3.i34.i, %if.end.i156.do.end6.i_crit_edge
  %retval.0.i35.ph.i = phi i32 [ %call1.i31.i, %if.then3.i34.i ], [ %call.i29.i, %if.end.i156.do.end6.i_crit_edge ]
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.42) #9
  br label %err_mcu_clk.i

if.end8.i:                                        ; preds = %if.end.i33.i
  %univpll.i157 = getelementptr inbounds %struct.mtk_glue, ptr %call.i, i32 0, i32 9
  %41 = ptrtoint ptr %univpll.i157 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %univpll.i157, align 4
  %call.i37.i = tail call i32 @clk_prepare(ptr noundef %42) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.i)
  %tobool.not.i38.i = icmp eq i32 %call.i37.i, 0
  br i1 %tobool.not.i38.i, label %if.end.i41.i, label %if.end8.i.do.end14.i_crit_edge

if.end8.i.do.end14.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14.i

if.end.i41.i:                                     ; preds = %if.end8.i
  %call1.i39.i = tail call i32 @clk_enable(ptr noundef %42) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i39.i)
  %tobool2.not.i40.i = icmp eq i32 %call1.i39.i, 0
  br i1 %tobool2.not.i40.i, label %if.end66, label %if.then3.i42.i

if.then3.i42.i:                                   ; preds = %if.end.i41.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %42) #6
  br label %do.end14.i

do.end14.i:                                       ; preds = %if.then3.i42.i, %if.end8.i.do.end14.i_crit_edge
  %retval.0.i43.ph.i = phi i32 [ %call1.i39.i, %if.then3.i42.i ], [ %call.i37.i, %if.end8.i.do.end14.i_crit_edge ]
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.45) #9
  %45 = ptrtoint ptr %mcu.i155 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mcu.i155, align 4
  tail call void @clk_disable(ptr noundef %46) #6
  tail call void @clk_unprepare(ptr noundef %46) #6
  br label %err_mcu_clk.i

err_mcu_clk.i:                                    ; preds = %do.end14.i, %do.end6.i
  %ret.0.i = phi i32 [ %retval.0.i35.ph.i, %do.end6.i ], [ %retval.0.i43.ph.i, %do.end14.i ]
  %47 = ptrtoint ptr %main.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %main.i, align 4
  tail call void @clk_disable(ptr noundef %48) #6
  tail call void @clk_unprepare(ptr noundef %48) #6
  br label %err_enable_clk

if.end66:                                         ; preds = %if.end.i41.i
  %49 = call ptr @memcpy(ptr %pinfo, ptr @mtk_dev_info, i32 56)
  %50 = ptrtoint ptr %pinfo to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %dev1, ptr %pinfo, align 8
  %resource = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 7
  %51 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %resource, align 8
  %res = getelementptr inbounds %struct.platform_device_info, ptr %pinfo, i32 0, i32 5
  %53 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %res, align 4
  %num_resources = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 6
  %54 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_resources, align 4
  %num_res = getelementptr inbounds %struct.platform_device_info, ptr %pinfo, i32 0, i32 6
  %56 = ptrtoint ptr %num_res to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %num_res, align 8
  %data = getelementptr inbounds %struct.platform_device_info, ptr %pinfo, i32 0, i32 7
  %57 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i149, ptr %data, align 4
  %size_data = getelementptr inbounds %struct.platform_device_info, ptr %pinfo, i32 0, i32 8
  %58 = ptrtoint ptr %size_data to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 32, ptr %size_data, align 8
  %tobool67.not = icmp eq ptr %2, null
  %fwnode = getelementptr inbounds %struct.device_node, ptr %2, i32 0, i32 3
  %spec.select = select i1 %tobool67.not, ptr null, ptr %fwnode
  %fwnode68 = getelementptr inbounds %struct.platform_device_info, ptr %pinfo, i32 0, i32 1
  %59 = ptrtoint ptr %fwnode68 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %spec.select, ptr %fwnode68, align 4
  %of_node_reused = getelementptr inbounds %struct.platform_device_info, ptr %pinfo, i32 0, i32 2
  %60 = ptrtoint ptr %of_node_reused to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %of_node_reused, align 8
  %call69 = call ptr @platform_device_register_full(ptr noundef nonnull %pinfo) #6
  %musb_pdev = getelementptr inbounds %struct.mtk_glue, ptr %call.i, i32 0, i32 2
  %61 = ptrtoint ptr %musb_pdev to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call69, ptr %musb_pdev, align 4
  %cmp.i159 = icmp ugt ptr %call69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i159, label %if.then72, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then72:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %call69 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %62) #9
  call fastcc void @mtk_musb_clks_disable(ptr noundef nonnull %call.i)
  br label %err_enable_clk

err_enable_clk:                                   ; preds = %if.then72, %err_mcu_clk.i, %do.end.i
  %ret.0 = phi i32 [ %62, %if.then72 ], [ %ret.0.i, %err_mcu_clk.i ], [ %retval.0.i.ph.i, %do.end.i ]
  %call.i160 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #6
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #6
  br label %err_unregister_usb_phy

err_unregister_usb_phy:                           ; preds = %err_enable_clk, %if.then55
  %ret.1 = phi i32 [ %31, %if.then55 ], [ %ret.0, %err_enable_clk ]
  %63 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %usb_phy, align 4
  call void @usb_phy_generic_unregister(ptr noundef %64) #6
  br label %cleanup

cleanup:                                          ; preds = %err_unregister_usb_phy, %if.end66.cleanup_crit_edge, %do.end46, %do.end34, %do.end26, %mtk_musb_clks_get.exit.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end ], [ -22, %do.end26 ], [ %24, %do.end34 ], [ %29, %do.end46 ], [ %ret.1, %err_unregister_usb_phy ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %11, %mtk_musb_clks_get.exit.cleanup_crit_edge ], [ 0, %if.end66.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pinfo) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_musb_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %usb_phy1 = getelementptr inbounds %struct.mtk_glue, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %usb_phy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_phy1, align 4
  %musb_pdev = getelementptr inbounds %struct.mtk_glue, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %musb_pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %musb_pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %5) #6
  tail call void @usb_phy_generic_unregister(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_dr_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_phy_get_by_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_phy_generic_register() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_musb_clks_disable(ptr nocapture noundef readonly %glue) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %univpll = getelementptr inbounds %struct.mtk_glue, ptr %glue, i32 0, i32 9
  %0 = ptrtoint ptr %univpll to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %univpll, align 4
  tail call void @clk_disable(ptr noundef %1) #6
  tail call void @clk_unprepare(ptr noundef %1) #6
  %mcu = getelementptr inbounds %struct.mtk_glue, ptr %glue, i32 0, i32 8
  %2 = ptrtoint ptr %mcu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mcu, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  %main = getelementptr inbounds %struct.mtk_glue, ptr %glue, i32 0, i32 7
  %4 = ptrtoint ptr %main to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %main, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_phy_generic_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_musb_init(ptr noundef %musb) #2 align 64 {
entry:
  %role_sx_desc.i = alloca %struct.usb_role_switch_desc, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 8
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %musb1 = getelementptr inbounds %struct.mtk_glue, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %musb1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %musb, ptr %musb1, align 4
  %phy = getelementptr inbounds %struct.mtk_glue, ptr %5, i32 0, i32 4
  %7 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy, align 4
  %phy2 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 36
  %9 = ptrtoint ptr %phy2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %phy2, align 4
  %xceiv = getelementptr inbounds %struct.mtk_glue, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xceiv, align 4
  %xceiv3 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %12 = ptrtoint ptr %xceiv3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %xceiv3, align 8
  %is_host = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 48
  %13 = ptrtoint ptr %is_host to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %is_host, align 4
  %isr = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 5
  %14 = ptrtoint ptr %isr to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mtk_musb_interrupt, ptr %isr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %15 = load ptr, ptr @musb_writew, align 4
  %mregs = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 27
  %16 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mregs, align 8
  tail call void %15(ptr noundef %17, i32 noundef 134, i16 noundef zeroext -1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %18 = load ptr, ptr @musb_writew, align 4
  %19 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mregs, align 8
  tail call void %18(ptr noundef %20, i32 noundef 130, i16 noundef zeroext -1) #6
  %port_mode = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 45
  %21 = ptrtoint ptr %port_mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp = icmp eq i32 %22, 3
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %role_sx_desc.i) #6
  %23 = getelementptr inbounds i8, ptr %role_sx_desc.i, i32 4
  %24 = call ptr @memset(ptr %23, i32 0, i32 32)
  %set.i = getelementptr inbounds %struct.usb_role_switch_desc, ptr %role_sx_desc.i, i32 0, i32 4
  %25 = ptrtoint ptr %set.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @musb_usb_role_sx_set, ptr %set.i, align 4
  %get.i = getelementptr inbounds %struct.usb_role_switch_desc, ptr %role_sx_desc.i, i32 0, i32 5
  %26 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @musb_usb_role_sx_get, ptr %get.i, align 4
  %allow_userspace_control.i = getelementptr inbounds %struct.usb_role_switch_desc, ptr %role_sx_desc.i, i32 0, i32 6
  %27 = ptrtoint ptr %allow_userspace_control.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %allow_userspace_control.i, align 4
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %5, align 4
  %call.i = tail call ptr @dev_fwnode(ptr noundef %29) #6
  %30 = ptrtoint ptr %role_sx_desc.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %role_sx_desc.i, align 4
  %driver_data.i47 = getelementptr inbounds %struct.usb_role_switch_desc, ptr %role_sx_desc.i, i32 0, i32 7
  %31 = ptrtoint ptr %driver_data.i47 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %5, ptr %driver_data.i47, align 4
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  %call2.i = call ptr @usb_role_switch_register(ptr noundef %33, ptr noundef nonnull %role_sx_desc.i) #6
  %role_sw.i = getelementptr inbounds %struct.mtk_glue, ptr %5, i32 0, i32 11
  %34 = ptrtoint ptr %role_sw.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call2.i, ptr %role_sw.i, align 4
  %cmp.i.i.i.not = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  %35 = ptrtoint ptr %call2.i to i32
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %role_sx_desc.i) #6
  br i1 %cmp.i.i.i.not, label %if.then.cleanup_crit_edge, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %36 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %phy, align 4
  %call9 = call i32 @phy_init(ptr noundef %37) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.err_phy_init_crit_edge

if.end7.err_phy_init_crit_edge:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_phy_init

if.end12:                                         ; preds = %if.end7
  %38 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %phy, align 4
  %call14 = call i32 @phy_power_on(ptr noundef %39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  %40 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %phy, align 4
  br i1 %tobool15.not, label %if.end17, label %err_phy_power_on

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %phy_mode = getelementptr inbounds %struct.mtk_glue, ptr %5, i32 0, i32 6
  %42 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %phy_mode, align 4
  %call19 = call i32 @phy_set_mode_ext(ptr noundef %41, i32 noundef %43, i32 noundef 0) #6
  %44 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mregs, align 8
  call void @musb_writel(ptr noundef %45, i32 noundef 164, i32 noundef 15) #6
  br label %cleanup

err_phy_power_on:                                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call22 = call i32 @phy_exit(ptr noundef %41) #6
  br label %err_phy_init

err_phy_init:                                     ; preds = %err_phy_power_on, %if.end7.err_phy_init_crit_edge
  %ret.0 = phi i32 [ %call9, %if.end7.err_phy_init_crit_edge ], [ %call14, %err_phy_power_on ]
  %role_sw.i48 = getelementptr inbounds %struct.mtk_glue, ptr %5, i32 0, i32 11
  %46 = ptrtoint ptr %role_sw.i48 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %role_sw.i48, align 4
  call void @usb_role_switch_unregister(ptr noundef %47) #6
  br label %cleanup

cleanup:                                          ; preds = %err_phy_init, %if.end17, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_phy_init ], [ 0, %if.end17 ], [ %35, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_musb_exit(ptr nocapture noundef readonly %musb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 8
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %role_sw.i = getelementptr inbounds %struct.mtk_glue, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %role_sw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %role_sw.i, align 4
  tail call void @usb_role_switch_unregister(ptr noundef %7) #6
  %phy = getelementptr inbounds %struct.mtk_glue, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy, align 4
  %call1 = tail call i32 @phy_power_off(ptr noundef %9) #6
  %10 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy, align 4
  %call3 = tail call i32 @phy_exit(ptr noundef %11) #6
  %univpll.i = getelementptr inbounds %struct.mtk_glue, ptr %5, i32 0, i32 9
  %12 = ptrtoint ptr %univpll.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %univpll.i, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  tail call void @clk_unprepare(ptr noundef %13) #6
  %mcu.i = getelementptr inbounds %struct.mtk_glue, ptr %5, i32 0, i32 8
  %14 = ptrtoint ptr %mcu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mcu.i, align 4
  tail call void @clk_disable(ptr noundef %15) #6
  tail call void @clk_unprepare(ptr noundef %15) #6
  %main.i = getelementptr inbounds %struct.mtk_glue, ptr %5, i32 0, i32 7
  %16 = ptrtoint ptr %main.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %main.i, align 4
  tail call void @clk_disable(ptr noundef %17) #6
  tail call void @clk_unprepare(ptr noundef %17) #6
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %1, i32 noundef 4) #6
  tail call void @__pm_runtime_disable(ptr noundef %1, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_musb_busctl_offset(i8 noundef zeroext %epnum, i16 noundef zeroext %offset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %offset to i32
  %add = add nuw nsw i32 %conv, 1152
  %conv1 = zext i8 %epnum to i32
  %mul = shl nuw nsw i32 %conv1, 3
  %add2 = add nuw nsw i32 %add, %mul
  ret i32 %add2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @mtk_musb_clearb(ptr noundef %addr, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %0 = load ptr, ptr @musb_readb, align 4
  %call = tail call zeroext i8 %0(ptr noundef %addr, i32 noundef %offset) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %1 = load ptr, ptr @musb_writeb, align 4
  tail call void %1(ptr noundef %addr, i32 noundef %offset, i8 noundef zeroext %call) #6
  ret i8 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @mtk_musb_clearw(ptr noundef %addr, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %0 = load ptr, ptr @musb_readw, align 4
  %call = tail call zeroext i16 %0(ptr noundef %addr, i32 noundef %offset) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %1 = load ptr, ptr @musb_writew, align 4
  tail call void %1(ptr noundef %addr, i32 noundef %offset, i16 noundef zeroext %call) #6
  ret i16 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @mtk_musb_get_toggle(ptr nocapture noundef readonly %qh, i32 noundef %is_out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_ep = getelementptr inbounds %struct.musb_qh, ptr %qh, i32 0, i32 2
  %0 = ptrtoint ptr %hw_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_ep, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %epnum3 = getelementptr inbounds %struct.musb_hw_ep, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %epnum3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %epnum3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %6 = load ptr, ptr @musb_readw, align 4
  %mregs = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 27
  %7 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mregs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_out)
  %tobool.not = icmp eq i32 %is_out, 0
  %cond = select i1 %tobool.not, i32 128, i32 132
  %call = tail call zeroext i16 %6(ptr noundef %8, i32 noundef %cond) #6
  %conv4 = zext i8 %5 to i32
  %shl = shl nuw i32 1, %conv4
  %9 = trunc i32 %shl to i16
  %conv5 = and i16 %call, %9
  ret i16 %conv5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @mtk_musb_set_toggle(ptr nocapture noundef readonly %qh, i32 noundef %is_out, ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_ep = getelementptr inbounds %struct.musb_qh, ptr %qh, i32 0, i32 2
  %0 = ptrtoint ptr %hw_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_ep, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %epnum3 = getelementptr inbounds %struct.musb_hw_ep, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %epnum3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %epnum3, align 4
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %arrayidx = getelementptr %struct.usb_device, ptr %7, i32 0, i32 10, i32 %is_out
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %epnum5 = getelementptr inbounds %struct.musb_qh, ptr %qh, i32 0, i32 14
  %10 = ptrtoint ptr %epnum5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %epnum5, align 1
  %conv = zext i8 %11 to i32
  %shr = lshr i32 %9, %conv
  %conv6 = and i32 %shr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_out)
  %tobool.not = icmp eq i32 %is_out, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %12 = load ptr, ptr @musb_readw, align 4
  %mregs12 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 27
  %13 = ptrtoint ptr %mregs12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mregs12, align 8
  %. = select i1 %tobool.not, i32 128, i32 132
  %call13 = tail call zeroext i16 %12(ptr noundef %14, i32 noundef %.) #6
  %conv15 = zext i8 %5 to i32
  %shl16 = shl nuw i32 %conv6, %conv15
  %15 = trunc i32 %shl16 to i16
  %conv19 = or i16 %call13, %15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %16 = load ptr, ptr @musb_writew, align 4
  %17 = ptrtoint ptr %mregs12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mregs12, align 8
  tail call void %16(ptr noundef %18, i32 noundef %., i16 noundef zeroext %conv19) #6
  ret i16 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_musb_set_mode(ptr nocapture noundef readonly %musb, i8 noundef zeroext %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 8
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %switch.tableidx = add i8 %mode, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %6 = icmp ult i8 %switch.tableidx, 3
  br i1 %6, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.34) #9
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %switch.idx.mult = mul nuw nsw i32 %switch.idx.cast, 5
  %switch.offset = add nuw nsw i32 %switch.idx.mult, 1
  %9 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.mtk_musb_set_mode, i32 0, i32 %9
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  %phy_mode = getelementptr inbounds %struct.mtk_glue, ptr %5, i32 0, i32 6
  %11 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %phy_mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %switch.offset)
  %cmp = icmp eq i32 %12, %switch.offset
  br i1 %cmp, label %switch.lookup.cleanup_crit_edge, label %if.end

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  %port_mode = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 45
  %13 = ptrtoint ptr %port_mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp5.not = icmp eq i32 %14, 3
  br i1 %cmp5.not, label %if.end12, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.37) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call fastcc i32 @mtk_otg_switch_set(ptr noundef %5, i32 noundef %switch.load)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end10, %switch.lookup.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end10 ], [ 0, %if.end12 ], [ 0, %switch.lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_musb_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mregs = getelementptr inbounds %struct.musb, ptr %dev_id, i32 0, i32 27
  %0 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mregs, align 8
  %call = tail call i32 @musb_readl(ptr noundef %1, i32 noundef 160) #6
  %2 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mregs, align 8
  %call3 = tail call i32 @musb_readl(ptr noundef %3, i32 noundef 164) #6
  %and = and i32 %call, 7
  %and4 = and i32 %and, %call3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_id) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_clearb to i32))
  %4 = load ptr, ptr @musb_clearb, align 4
  %5 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mregs, align 8
  %call6.i = tail call zeroext i8 %4(ptr noundef %6, i32 noundef 10) #6
  %int_usb.i = getelementptr inbounds %struct.musb, ptr %dev_id, i32 0, i32 32
  %7 = ptrtoint ptr %int_usb.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %call6.i, ptr %int_usb.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_clearw to i32))
  %8 = load ptr, ptr @musb_clearw, align 4
  %9 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mregs, align 8
  %call8.i = tail call zeroext i16 %8(ptr noundef %10, i32 noundef 4) #6
  %int_rx.i = getelementptr inbounds %struct.musb, ptr %dev_id, i32 0, i32 33
  %11 = ptrtoint ptr %int_rx.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %call8.i, ptr %int_rx.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_clearw to i32))
  %12 = load ptr, ptr @musb_clearw, align 4
  %13 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mregs, align 8
  %call10.i = tail call zeroext i16 %12(ptr noundef %14, i32 noundef 2) #6
  %int_tx.i = getelementptr inbounds %struct.musb, ptr %dev_id, i32 0, i32 34
  %15 = ptrtoint ptr %int_tx.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %call10.i, ptr %int_tx.i, align 4
  %16 = ptrtoint ptr %int_usb.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %int_usb.i, align 1
  %18 = and i8 %17, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %land.lhs.true.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then
  %is_host.i = getelementptr inbounds %struct.musb, ptr %dev_id, i32 0, i32 48
  %19 = ptrtoint ptr %is_host.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %is_host.i, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool13.not.i = icmp eq i8 %20, 0
  br i1 %tobool13.not.i, label %if.then.i, label %land.lhs.true.i.if.endthread-pre-split.i_crit_edge

land.lhs.true.i.if.endthread-pre-split.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.endthread-pre-split.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %ep_select.i = getelementptr inbounds %struct.musb, ptr %dev_id, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %ep_select.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ep_select.i, align 4
  %23 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mregs, align 8
  tail call void %22(ptr noundef %24, i8 noundef zeroext 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %25 = load ptr, ptr @musb_writeb, align 4
  %26 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mregs, align 8
  tail call void %25(ptr noundef %27, i32 noundef 0, i8 noundef zeroext 0) #6
  br label %if.endthread-pre-split.i

if.endthread-pre-split.i:                         ; preds = %if.then.i, %land.lhs.true.i.if.endthread-pre-split.i_crit_edge
  %28 = ptrtoint ptr %int_usb.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %.pr.i = load i8, ptr %int_usb.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.endthread-pre-split.i, %if.then.if.end.i_crit_edge
  %29 = phi i8 [ %.pr.i, %if.endthread-pre-split.i ], [ %17, %if.then.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool18.not.i = icmp eq i8 %29, 0
  br i1 %tobool18.not.i, label %lor.lhs.false.i, label %if.end.i.if.then26.i_crit_edge

if.end.i.if.then26.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %30 = ptrtoint ptr %int_tx.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %int_tx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool21.not.i = icmp eq i16 %31, 0
  br i1 %tobool21.not.i, label %lor.lhs.false22.i, label %lor.lhs.false.i.if.then26.i_crit_edge

lor.lhs.false.i.if.then26.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.i

lor.lhs.false22.i:                                ; preds = %lor.lhs.false.i
  %32 = ptrtoint ptr %int_rx.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %int_rx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool25.not.i = icmp eq i16 %33, 0
  br i1 %tobool25.not.i, label %lor.lhs.false22.i.generic_interrupt.exit_crit_edge, label %lor.lhs.false22.i.if.then26.i_crit_edge

lor.lhs.false22.i.if.then26.i_crit_edge:          ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.i

lor.lhs.false22.i.generic_interrupt.exit_crit_edge: ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %generic_interrupt.exit

if.then26.i:                                      ; preds = %lor.lhs.false22.i.if.then26.i_crit_edge, %lor.lhs.false.i.if.then26.i_crit_edge, %if.end.i.if.then26.i_crit_edge
  %call27.i = tail call i32 @musb_interrupt(ptr noundef %dev_id) #6
  br label %generic_interrupt.exit

generic_interrupt.exit:                           ; preds = %if.then26.i, %lor.lhs.false22.i.generic_interrupt.exit_crit_edge
  %retval1.0.i = phi i32 [ %call27.i, %if.then26.i ], [ 0, %lor.lhs.false22.i.generic_interrupt.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_id, i32 noundef %call3.i) #6
  br label %if.end

if.end:                                           ; preds = %generic_interrupt.exit, %entry.if.end_crit_edge
  %retval1.0 = phi i32 [ %retval1.0.i, %generic_interrupt.exit ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_writel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_readl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @musb_usb_role_sx_set(ptr noundef %sw, i32 noundef %role) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_role_switch_get_drvdata(ptr noundef %sw) #6
  %call1 = tail call fastcc i32 @mtk_otg_switch_set(ptr noundef %call, i32 noundef %role)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @musb_usb_role_sx_get(ptr noundef %sw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_role_switch_get_drvdata(ptr noundef %sw) #6
  %role = getelementptr inbounds %struct.mtk_glue, ptr %call, i32 0, i32 10
  %0 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %role, align 4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_switch_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_otg_switch_set(ptr nocapture noundef %glue, i32 noundef %role) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %musb1 = getelementptr inbounds %struct.mtk_glue, ptr %glue, i32 0, i32 1
  %0 = ptrtoint ptr %musb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %musb1, align 4
  %mregs = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mregs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 96
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  %role3 = getelementptr inbounds %struct.mtk_glue, ptr %glue, i32 0, i32 10
  %5 = ptrtoint ptr %role3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %role3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %role)
  %cmp = icmp eq i32 %6, %role
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = zext i32 %role to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %role, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
    i32 0, label %sw.bb27
  ]

sw.bb:                                            ; preds = %if.end
  %xceiv = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 35
  %8 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xceiv, align 8
  %otg = getelementptr inbounds %struct.usb_phy, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 7, ptr %state, align 4
  %phy_mode = getelementptr inbounds %struct.mtk_glue, ptr %glue, i32 0, i32 6
  %13 = ptrtoint ptr %phy_mode to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %phy_mode, align 4
  %14 = ptrtoint ptr %role3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %role3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp5 = icmp eq i32 %15, 0
  br i1 %cmp5, label %if.then6, label %sw.bb.if.end8_crit_edge

sw.bb.if.end8_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %phy = getelementptr inbounds %struct.mtk_glue, ptr %glue, i32 0, i32 4
  %16 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy, align 4
  %call7 = tail call i32 @phy_power_on(ptr noundef %17) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %sw.bb.if.end8_crit_edge
  %18 = or i8 %4, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %19 = load ptr, ptr @musb_writeb, align 4
  %20 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mregs, align 8
  tail call void %19(ptr noundef %21, i32 noundef 96, i8 noundef zeroext %18) #6
  %is_host = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 48
  %22 = ptrtoint ptr %is_host to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %is_host, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %xceiv12 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 35
  %23 = ptrtoint ptr %xceiv12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xceiv12, align 8
  %otg13 = getelementptr inbounds %struct.usb_phy, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %otg13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %otg13, align 4
  %state14 = getelementptr inbounds %struct.usb_otg, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %state14 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %state14, align 4
  %phy_mode15 = getelementptr inbounds %struct.mtk_glue, ptr %glue, i32 0, i32 6
  %28 = ptrtoint ptr %phy_mode15 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 6, ptr %phy_mode15, align 4
  %29 = and i8 %4, -2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %30 = load ptr, ptr @musb_writeb, align 4
  %31 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mregs, align 8
  tail call void %30(ptr noundef %32, i32 noundef 96, i8 noundef zeroext %29) #6
  %33 = ptrtoint ptr %role3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %role3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp20 = icmp eq i32 %34, 0
  br i1 %cmp20, label %if.then22, label %sw.bb11.if.end25_crit_edge

sw.bb11.if.end25_crit_edge:                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then22:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  %phy23 = getelementptr inbounds %struct.mtk_glue, ptr %glue, i32 0, i32 4
  %35 = ptrtoint ptr %phy23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %phy23, align 4
  %call24 = tail call i32 @phy_power_on(ptr noundef %36) #6
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %sw.bb11.if.end25_crit_edge
  %is_host26 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 48
  %37 = ptrtoint ptr %is_host26 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %is_host26, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end
  %phy_mode28 = getelementptr inbounds %struct.mtk_glue, ptr %glue, i32 0, i32 6
  %38 = ptrtoint ptr %phy_mode28 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 11, ptr %phy_mode28, align 4
  %39 = and i8 %4, -2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %40 = load ptr, ptr @musb_writeb, align 4
  %41 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mregs, align 8
  tail call void %40(ptr noundef %42, i32 noundef 96, i8 noundef zeroext %39) #6
  %43 = ptrtoint ptr %role3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %role3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp34.not = icmp eq i32 %44, 0
  br i1 %cmp34.not, label %sw.bb27.sw.epilog_crit_edge, label %if.then36

sw.bb27.sw.epilog_crit_edge:                      ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then36:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #8
  %phy37 = getelementptr inbounds %struct.mtk_glue, ptr %glue, i32 0, i32 4
  %45 = ptrtoint ptr %phy37 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %phy37, align 4
  %call38 = tail call i32 @phy_power_off(ptr noundef %46) #6
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %glue to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %glue, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.32) #9
  br label %cleanup

sw.epilog:                                        ; preds = %if.then36, %sw.bb27.sw.epilog_crit_edge, %if.end25, %if.end8
  %49 = ptrtoint ptr %role3 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %role, ptr %role3, align 4
  %phy41 = getelementptr inbounds %struct.mtk_glue, ptr %glue, i32 0, i32 4
  %50 = ptrtoint ptr %phy41 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %phy41, align 4
  %phy_mode42 = getelementptr inbounds %struct.mtk_glue, ptr %glue, i32 0, i32 6
  %52 = ptrtoint ptr %phy_mode42 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %phy_mode42, align 4
  %call43 = tail call i32 @phy_set_mode_ext(ptr noundef %51, i32 noundef %53, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_switch_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_role_switch_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48, !49, !51, !53, !54, !55, !57, !59, !60, !61, !63, !65, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !98}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @__initcall__kmod_mediatek__295_591_mtk_musb_driver_init6, !1, !"__initcall__kmod_mediatek__295_591_mtk_musb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/musb/mediatek.c", i32 591, i32 1}
!2 = !{ptr @__exitcall_mtk_musb_driver_exit, !1, !"__exitcall_mtk_musb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description296, !4, !"__UNIQUE_ID_description296", i1 false, i1 false}
!4 = !{!"../drivers/usb/musb/mediatek.c", i32 593, i32 1}
!5 = !{ptr @__UNIQUE_ID_author297, !6, !"__UNIQUE_ID_author297", i1 false, i1 false}
!6 = !{!"../drivers/usb/musb/mediatek.c", i32 594, i32 1}
!7 = !{ptr @__UNIQUE_ID_file298, !8, !"__UNIQUE_ID_file298", i1 false, i1 false}
!8 = !{!"../drivers/usb/musb/mediatek.c", i32 595, i32 1}
!9 = !{ptr @__UNIQUE_ID_license299, !8, !"__UNIQUE_ID_license299", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/musb/mediatek.c", i32 586, i32 14}
!12 = !{ptr @mtk_musb_driver, !13, !"mtk_musb_driver", i1 false, i1 false}
!13 = !{!"../drivers/usb/musb/mediatek.c", i32 582, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/musb/mediatek.c", i32 471, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mtk_musb_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mtk_musb_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/musb/mediatek.c", i32 502, i32 3}
!24 = !{ptr @mtk_musb_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @mtk_musb_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/musb/mediatek.c", i32 508, i32 3}
!28 = !{ptr @mtk_musb_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mtk_musb_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/musb/mediatek.c", i32 515, i32 3}
!32 = !{ptr @mtk_musb_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mtk_musb_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/musb/mediatek.c", i32 523, i32 3}
!36 = !{ptr @mtk_musb_probe._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mtk_musb_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/musb/mediatek.c", i32 547, i32 3}
!40 = !{ptr @mtk_musb_probe._entry.18, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @mtk_musb_probe._entry_ptr.20, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/musb/mediatek.c", i32 58, i32 33}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/musb/mediatek.c", i32 60, i32 3}
!46 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @mtk_musb_clks_get._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @mtk_musb_clks_get._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/musb/mediatek.c", i32 64, i32 32}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/musb/mediatek.c", i32 66, i32 3}
!53 = !{ptr @mtk_musb_clks_get._entry.25, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @mtk_musb_clks_get._entry_ptr.27, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/musb/mediatek.c", i32 70, i32 36}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/musb/mediatek.c", i32 72, i32 3}
!59 = !{ptr @mtk_musb_clks_get._entry.29, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @mtk_musb_clks_get._entry_ptr.31, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @mtk_musb_hdrc_config, !62, !"mtk_musb_hdrc_config", i1 false, i1 false}
!62 = !{!"../drivers/usb/musb/mediatek.c", i32 436, i32 38}
!63 = !{ptr @mtk_musb_mode_cfg, !64, !"mtk_musb_mode_cfg", i1 false, i1 false}
!64 = !{!"../drivers/usb/musb/mediatek.c", i32 419, i32 29}
!65 = !{ptr @mtk_musb_ops, !66, !"mtk_musb_ops", i1 false, i1 false}
!66 = !{!"../drivers/usb/musb/mediatek.c", i32 400, i32 39}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/musb/mediatek.c", i32 160, i32 3}
!69 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @mtk_otg_switch_set._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @mtk_otg_switch_set._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/musb/mediatek.c", i32 291, i32 3}
!74 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @mtk_musb_set_mode._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @mtk_musb_set_mode._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/musb/mediatek.c", i32 299, i32 3}
!79 = !{ptr @mtk_musb_set_mode._entry.36, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @mtk_musb_set_mode._entry_ptr.38, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/musb/mediatek.c", i32 85, i32 3}
!83 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @mtk_musb_clks_enable._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @mtk_musb_clks_enable._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/musb/mediatek.c", i32 91, i32 3}
!88 = !{ptr @mtk_musb_clks_enable._entry.41, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @mtk_musb_clks_enable._entry_ptr.43, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/musb/mediatek.c", i32 97, i32 3}
!92 = !{ptr @mtk_musb_clks_enable._entry.44, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @mtk_musb_clks_enable._entry_ptr.46, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/musb/mediatek.c", i32 446, i32 10}
!96 = !{ptr @mtk_dev_info, !97, !"mtk_dev_info", i1 false, i1 false}
!97 = !{!"../drivers/usb/musb/mediatek.c", i32 445, i32 42}
!98 = !{ptr @mtk_musb_match, !99, !"mtk_musb_match", i1 false, i1 false}
!99 = !{!"../drivers/usb/musb/mediatek.c", i32 575, i32 34}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{i8 0, i8 2}
!110 = !{i64 6261113}
!111 = !{i64 2155505107}
