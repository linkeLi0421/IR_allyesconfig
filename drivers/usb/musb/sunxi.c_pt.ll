; ModuleID = '/llk/IR_all_yes/drivers/usb/musb/sunxi.c_pt.bc'
source_filename = "../drivers/usb/musb/sunxi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.musb_platform_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_hdrc_config = type { ptr, i32, i8, i8, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.musb_fifo_cfg = type { i8, i8, i8, i16 }
%struct.musb_hdrc_platform_data = type { i8, ptr, ptr, i8, i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
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
%struct.sunxi_glue = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, ptr, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.musb = type { %struct.spinlock, %struct.spinlock, %struct.musb_io, ptr, %struct.musb_context_registers, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i16, i16, i16, i32, i32, i8, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.timer_list, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, i32, ptr, i8, i8, i16, i16, ptr, ptr, i32, i8, [16 x %struct.musb_hw_ep], i16, i16, i8, ptr, i8, i32, i8, i32, i8, i32, i32, [3 x i8], i8, i8, i16, i8, %struct.usb_gadget, ptr, ptr, ptr, i32, ptr }
%struct.musb_io = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_context_registers = type { i8, i8, i16, i8, i8, i8, i8, i8, i32, [16 x %struct.musb_csr_regs] }
%struct.musb_csr_regs = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.musb_hw_ep = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, i8, %struct.musb_ep, %struct.musb_ep }
%struct.musb_ep = type { %struct.usb_ep, [12 x i8], ptr, ptr, i8, i8, i8, i16, ptr, ptr, %struct.list_head, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_sunxi__293_841_sunxi_musb_driver_init6 = internal global ptr @sunxi_musb_driver_init, section ".initcall6.init", align 4
@sunxi_musb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sunxi_musb_probe, ptr @sunxi_musb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sunxi_musb_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sunxi_musb_driver_exit = internal global ptr @sunxi_musb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description294 = internal constant [50 x i8] c"sunxi.description=Allwinner sunxi MUSB Glue Layer\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [49 x i8] c"sunxi.author=Hans de Goede <hdegoede@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [34 x i8] c"sunxi.file=drivers/usb/musb/sunxi\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [21 x i8] c"sunxi.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"musb-sunxi\00", [21 x i8] zeroinitializer }, align 32
@sunxi_musb_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-musb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-musb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a33-musb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-musb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@sunxi_musb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 683, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error no device tree node found\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sunxi_musb_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/usb/musb/sunxi.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sunxi_musb_probe._entry_ptr = internal global ptr @sunxi_musb_probe._entry, section ".printk_index", align 4
@sunxi_musb_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 712, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid or missing 'dr_mode' property\0A\00", [57 x i8] zeroinitializer }, align 32
@sunxi_musb_probe._entry_ptr.8 = internal global ptr @sunxi_musb_probe._entry.6, section ".printk_index", align 4
@sunxi_musb_ops = internal constant { %struct.musb_platform_ops, [36 x i8] } { %struct.musb_platform_ops { i32 1, ptr @sunxi_musb_init, ptr @sunxi_musb_exit, ptr @sunxi_musb_enable, ptr @sunxi_musb_disable, ptr @sunxi_musb_ep_offset, ptr null, i16 0, ptr @sunxi_musb_fifo_offset, ptr @sunxi_musb_busctl_offset, ptr @sunxi_musb_readb, ptr @sunxi_musb_writeb, ptr null, ptr @sunxi_musb_readw, ptr @sunxi_musb_writew, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sunxi_musb_dma_controller_create, ptr @sunxi_musb_dma_controller_destroy, ptr @sunxi_musb_set_mode, ptr null, ptr @sunxi_musb_recover, ptr null, ptr @sunxi_musb_set_vbus, ptr @sunxi_musb_pre_root_reset_end, ptr @sunxi_musb_post_root_reset_end, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"allwinner,sun8i-h3-musb\00", [40 x i8] zeroinitializer }, align 32
@sunxi_musb_hdrc_config = internal constant { %struct.musb_hdrc_config, [16 x i8] } { %struct.musb_hdrc_config { ptr @sunxi_musb_mode_cfg, i32 10, i8 -64, i8 6, i8 11, i32 0 }, [16 x i8] zeroinitializer }, align 32
@sunxi_musb_hdrc_config_h3 = internal global { %struct.musb_hdrc_config, [16 x i8] } { %struct.musb_hdrc_config { ptr @sunxi_musb_mode_cfg_h3, i32 8, i8 -64, i8 5, i8 11, i32 0 }, [16 x i8] zeroinitializer }, align 32
@sunxi_musb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&glue->work)\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"allwinner,sun4i-a10-musb\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"allwinner,sun6i-a31-musb\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"allwinner,sun8i-a33-musb\00", [39 x i8] zeroinitializer }, align 32
@sunxi_musb_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 740, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error getting clock: %ld\0A\00", [38 x i8] zeroinitializer }, align 32
@sunxi_musb_probe._entry_ptr.16 = internal global ptr @sunxi_musb_probe._entry.14, section ".printk_index", align 4
@sunxi_musb_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 750, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error getting reset %ld\0A\00", [39 x i8] zeroinitializer }, align 32
@sunxi_musb_probe._entry_ptr.19 = internal global ptr @sunxi_musb_probe._entry.17, section ".printk_index", align 4
@sunxi_musb_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 759, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid or missing extcon\0A\00", [37 x i8] zeroinitializer }, align 32
@sunxi_musb_probe._entry_ptr.22 = internal global ptr @sunxi_musb_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@sunxi_musb_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 768, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error getting phy %ld\0A\00", [41 x i8] zeroinitializer }, align 32
@sunxi_musb_probe._entry_ptr.26 = internal global ptr @sunxi_musb_probe._entry.24, section ".printk_index", align 4
@sunxi_musb_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 775, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error registering usb-phy %ld\0A\00", [33 x i8] zeroinitializer }, align 32
@sunxi_musb_probe._entry_ptr.29 = internal global ptr @sunxi_musb_probe._entry.27, section ".printk_index", align 4
@sunxi_musb_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 782, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error getting usb-phy %d\0A\00", [38 x i8] zeroinitializer }, align 32
@sunxi_musb_probe._entry_ptr.32 = internal global ptr @sunxi_musb_probe._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"musb-hdrc\00", [22 x i8] zeroinitializer }, align 32
@sunxi_musb_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.2, ptr @.str.3, i32 802, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error registering musb dev: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@sunxi_musb_probe._entry_ptr.36 = internal global ptr @sunxi_musb_probe._entry.34, section ".printk_index", align 4
@sunxi_musb = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@musb_writeb = external dso_local local_unnamed_addr global ptr, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@sunxi_musb_ep_offset.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"sunxi_musb_ep_offset called with non 0 offset\0A\00", [49 x i8] zeroinitializer }, align 32
@sunxi_musb_readb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 445, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"sunxi-musb does not have ULPI bus control register\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sunxi_musb_readb\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sunxi_musb_readb._entry_ptr = internal global ptr @sunxi_musb_readb._entry, section ".printk_index", align 4
@sunxi_musb_readb._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.39, ptr @.str.3, i32 458, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error unknown readb offset %u\0A\00", [33 x i8] zeroinitializer }, align 32
@sunxi_musb_readb._entry_ptr.43 = internal global ptr @sunxi_musb_readb._entry.41, section ".printk_index", align 4
@sunxi_musb_readb._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.39, ptr @.str.3, i32 471, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Error unknown readb at 0x%x bytes offset\0A\00", [54 x i8] zeroinitializer }, align 32
@sunxi_musb_readb._entry_ptr.46 = internal global ptr @sunxi_musb_readb._entry.44, section ".printk_index", align 4
@sunxi_musb_writeb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 493, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sunxi-musb does not have testmode\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sunxi_musb_writeb\00", [46 x i8] zeroinitializer }, align 32
@sunxi_musb_writeb._entry_ptr = internal global ptr @sunxi_musb_writeb._entry, section ".printk_index", align 4
@sunxi_musb_writeb._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.48, ptr @.str.3, i32 503, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@sunxi_musb_writeb._entry_ptr.50 = internal global ptr @sunxi_musb_writeb._entry.49, section ".printk_index", align 4
@sunxi_musb_writeb._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.48, ptr @.str.3, i32 516, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error unknown writeb offset %u\0A\00", [32 x i8] zeroinitializer }, align 32
@sunxi_musb_writeb._entry_ptr.53 = internal global ptr @sunxi_musb_writeb._entry.51, section ".printk_index", align 4
@sunxi_musb_writeb._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.48, ptr @.str.3, i32 528, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error unknown writeb at 0x%x bytes offset\0A\00", [53 x i8] zeroinitializer }, align 32
@sunxi_musb_writeb._entry_ptr.56 = internal global ptr @sunxi_musb_writeb._entry.54, section ".printk_index", align 4
@sunxi_musb_readw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 554, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error unknown readw offset %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sunxi_musb_readw\00", [47 x i8] zeroinitializer }, align 32
@sunxi_musb_readw._entry_ptr = internal global ptr @sunxi_musb_readw._entry, section ".printk_index", align 4
@sunxi_musb_readw._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.3, i32 564, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Error unknown readw at 0x%x bytes offset\0A\00", [54 x i8] zeroinitializer }, align 32
@sunxi_musb_readw._entry_ptr.61 = internal global ptr @sunxi_musb_readw._entry.59, section ".printk_index", align 4
@sunxi_musb_writew._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 589, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error unknown writew offset %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sunxi_musb_writew\00", [46 x i8] zeroinitializer }, align 32
@sunxi_musb_writew._entry_ptr = internal global ptr @sunxi_musb_writew._entry, section ".printk_index", align 4
@sunxi_musb_writew._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.3, i32 599, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error unknown writew at 0x%x bytes offset\0A\00", [53 x i8] zeroinitializer }, align 32
@sunxi_musb_writew._entry_ptr.66 = internal global ptr @sunxi_musb_writew._entry.64, section ".printk_index", align 4
@sunxi_musb_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.3, i32 341, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Error requested mode not supported by this kernel\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sunxi_musb_set_mode\00", [44 x i8] zeroinitializer }, align 32
@sunxi_musb_set_mode._entry_ptr = internal global ptr @sunxi_musb_set_mode._entry, section ".printk_index", align 4
@sunxi_musb_set_mode._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.3, i32 350, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Error changing modes is only supported in dual role mode\0A\00", [38 x i8] zeroinitializer }, align 32
@sunxi_musb_set_mode._entry_ptr.71 = internal global ptr @sunxi_musb_set_mode._entry.69, section ".printk_index", align 4
@sunxi_musb_mode_cfg = internal global { [10 x %struct.musb_fifo_cfg], [36 x i8] } { [10 x %struct.musb_fifo_cfg] [%struct.musb_fifo_cfg { i8 1, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 1, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 2, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 2, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 3, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 3, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 4, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 4, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 5, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 5, i8 2, i8 0, i16 512 }], [36 x i8] zeroinitializer }, align 32
@sunxi_musb_mode_cfg_h3 = internal global { [8 x %struct.musb_fifo_cfg], [48 x i8] } { [8 x %struct.musb_fifo_cfg] [%struct.musb_fifo_cfg { i8 1, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 1, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 2, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 2, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 3, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 3, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 4, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 4, i8 2, i8 0, i16 512 }], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.72 = internal global [19 x i64] [i64 17, i64 32, i64 0, i64 1, i64 10, i64 11, i64 14, i64 15, i64 31, i64 96, i64 98, i64 99, i64 112, i64 152, i64 154, i64 155, i64 156, i64 158, i64 159]
@__sancov_gen_cov_switch_values.73 = internal global [18 x i64] [i64 16, i64 32, i64 0, i64 1, i64 10, i64 11, i64 14, i64 15, i64 96, i64 98, i64 99, i64 112, i64 152, i64 154, i64 155, i64 156, i64 158, i64 159]
@__sancov_gen_cov_switch_values.74 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 4, i64 6, i64 8, i64 12, i64 100, i64 102, i64 108]
@__sancov_gen_cov_switch_values.75 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 6, i64 8, i64 12, i64 100, i64 102]
@___asan_gen_.76 = private unnamed_addr constant [18 x i8] c"sunxi_musb_driver\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 833, i32 31 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 837, i32 11 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"sunxi_musb_match\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 824, i32 34 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 683, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 712, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [15 x i8] c"sunxi_musb_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 602, i32 39 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 716, i32 35 }
@___asan_gen_.115 = private unnamed_addr constant [23 x i8] c"sunxi_musb_hdrc_config\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 655, i32 38 }
@___asan_gen_.118 = private unnamed_addr constant [26 x i8] c"sunxi_musb_hdrc_config_h3\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 664, i32 32 }
@___asan_gen_.121 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 722, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 725, i32 34 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 728, i32 34 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 731, i32 34 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 739, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 749, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 759, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 763, i32 39 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 767, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 774, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 782, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 789, i32 16 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 802, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [11 x i8] c"sunxi_musb\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 71, i32 21 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 399, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 444, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 457, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 469, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 492, i32 5 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 502, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 515, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 526, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 553, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 562, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 588, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 597, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 340, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 349, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant [20 x i8] c"sunxi_musb_mode_cfg\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 628, i32 29 }
@___asan_gen_.286 = private unnamed_addr constant [23 x i8] c"sunxi_musb_mode_cfg_h3\00", align 1
@___asan_gen_.287 = private constant [28 x i8] c"../drivers/usb/musb/sunxi.c\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 644, i32 29 }
@llvm.compiler.used = appending global [100 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_sunxi_musb_driver_exit, ptr @__initcall__kmod_sunxi__293_841_sunxi_musb_driver_init6, ptr @sunxi_musb_driver_exit, ptr @sunxi_musb_probe._entry, ptr @sunxi_musb_probe._entry.14, ptr @sunxi_musb_probe._entry.17, ptr @sunxi_musb_probe._entry.20, ptr @sunxi_musb_probe._entry.24, ptr @sunxi_musb_probe._entry.27, ptr @sunxi_musb_probe._entry.30, ptr @sunxi_musb_probe._entry.34, ptr @sunxi_musb_probe._entry.6, ptr @sunxi_musb_probe._entry_ptr, ptr @sunxi_musb_probe._entry_ptr.16, ptr @sunxi_musb_probe._entry_ptr.19, ptr @sunxi_musb_probe._entry_ptr.22, ptr @sunxi_musb_probe._entry_ptr.26, ptr @sunxi_musb_probe._entry_ptr.29, ptr @sunxi_musb_probe._entry_ptr.32, ptr @sunxi_musb_probe._entry_ptr.36, ptr @sunxi_musb_probe._entry_ptr.8, ptr @sunxi_musb_readb._entry, ptr @sunxi_musb_readb._entry.41, ptr @sunxi_musb_readb._entry.44, ptr @sunxi_musb_readb._entry_ptr, ptr @sunxi_musb_readb._entry_ptr.43, ptr @sunxi_musb_readb._entry_ptr.46, ptr @sunxi_musb_readw._entry, ptr @sunxi_musb_readw._entry.59, ptr @sunxi_musb_readw._entry_ptr, ptr @sunxi_musb_readw._entry_ptr.61, ptr @sunxi_musb_set_mode._entry, ptr @sunxi_musb_set_mode._entry.69, ptr @sunxi_musb_set_mode._entry_ptr, ptr @sunxi_musb_set_mode._entry_ptr.71, ptr @sunxi_musb_writeb._entry, ptr @sunxi_musb_writeb._entry.49, ptr @sunxi_musb_writeb._entry.51, ptr @sunxi_musb_writeb._entry.54, ptr @sunxi_musb_writeb._entry_ptr, ptr @sunxi_musb_writeb._entry_ptr.50, ptr @sunxi_musb_writeb._entry_ptr.53, ptr @sunxi_musb_writeb._entry_ptr.56, ptr @sunxi_musb_writew._entry, ptr @sunxi_musb_writew._entry.64, ptr @sunxi_musb_writew._entry_ptr, ptr @sunxi_musb_writew._entry_ptr.66, ptr @sunxi_musb_driver, ptr @.str, ptr @sunxi_musb_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @sunxi_musb_ops, ptr @.str.9, ptr @sunxi_musb_hdrc_config, ptr @sunxi_musb_hdrc_config_h3, ptr @sunxi_musb_probe.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @sunxi_musb, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @sunxi_musb_mode_cfg, ptr @sunxi_musb_mode_cfg_h3], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_musb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_musb_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_musb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_musb_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_musb_ops to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_musb_hdrc_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_musb_hdrc_config_h3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_musb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_musb_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_musb_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_musb_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_musb_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_musb_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_musb_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_musb_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_musb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_musb_readb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_musb_readb._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_musb_readb._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_musb_writeb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_musb_writeb._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_musb_writeb._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_musb_writeb._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_musb_readw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_musb_readw._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_musb_writew._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_musb_writew._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_musb_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_musb_set_mode._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_musb_mode_cfg to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_musb_mode_cfg_h3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_musb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sunxi_musb_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_musb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @sunxi_musb_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_musb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pdata = alloca %struct.musb_hdrc_platform_data, align 4
  %pinfo = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pdata) #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pinfo) #7
  %0 = call ptr @memset(ptr %pinfo, i32 255, i32 56)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 100, i32 noundef 3520) #7
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = call ptr @memset(ptr %pdata, i32 0, i32 28)
  %call7 = tail call i32 @usb_get_dr_mode(ptr noundef %dev) #7
  %4 = zext i32 %call7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call7, label %do.end16 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb8
    i32 3, label %sw.bb11
  ]

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %pdata to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %pdata, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %pdata, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %pdata to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %pdata, align 4
  br label %sw.epilog

do.end16:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb8, %sw.bb
  %.sink = phi i32 [ 11, %sw.bb11 ], [ 6, %sw.bb8 ], [ 1, %sw.bb ]
  %phy_mode13 = getelementptr inbounds %struct.sunxi_glue, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %phy_mode13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %phy_mode13, align 4
  %platform_ops = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %pdata, i32 0, i32 10
  %9 = ptrtoint ptr %platform_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sunxi_musb_ops, ptr %platform_ops, align 4
  %call18 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %2, ptr noundef nonnull @.str.9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  %sunxi_musb_hdrc_config_h3.sink = select i1 %tobool19.not, ptr @sunxi_musb_hdrc_config, ptr @sunxi_musb_hdrc_config_h3
  %10 = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %pdata, i32 0, i32 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %sunxi_musb_hdrc_config_h3.sink, ptr %10, align 4
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %call.i, align 4
  %work = getelementptr inbounds %struct.sunxi_glue, ptr %call.i, i32 0, i32 10
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #7
  %13 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.sunxi_glue, ptr %call.i, i32 0, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @sunxi_musb_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry29 = getelementptr inbounds %struct.sunxi_glue, ptr %call.i, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %entry29 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry29, ptr %entry29, align 4
  %prev.i = getelementptr inbounds %struct.sunxi_glue, ptr %call.i, i32 0, i32 10, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry29, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.sunxi_glue, ptr %call.i, i32 0, i32 10, i32 2
  %16 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @sunxi_musb_work, ptr %func, align 4
  %host_nb = getelementptr inbounds %struct.sunxi_glue, ptr %call.i, i32 0, i32 12
  %17 = ptrtoint ptr %host_nb to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sunxi_musb_host_notifier, ptr %host_nb, align 4
  %call33 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %2, ptr noundef nonnull @.str.11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %sw.epilog.if.end36_crit_edge, label %if.then35

sw.epilog.if.end36_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then35:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.sunxi_glue, ptr %call.i, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %sw.epilog.if.end36_crit_edge
  %call37 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %2, ptr noundef nonnull @.str.12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end36.if.end41_crit_edge, label %if.then39

if.end36.if.end41_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %flags40 = getelementptr inbounds %struct.sunxi_glue, ptr %call.i, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags40) #7
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end36.if.end41_crit_edge
  %call42 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %2, ptr noundef nonnull @.str.13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %lor.lhs.false, label %if.end41.if.then46_crit_edge

if.end41.if.then46_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46

lor.lhs.false:                                    ; preds = %if.end41
  %call44 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %2, ptr noundef nonnull @.str.9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %lor.lhs.false.if.end49_crit_edge, label %lor.lhs.false.if.then46_crit_edge

lor.lhs.false.if.then46_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46

lor.lhs.false.if.end49_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then46:                                        ; preds = %lor.lhs.false.if.then46_crit_edge, %if.end41.if.then46_crit_edge
  %flags47 = getelementptr inbounds %struct.sunxi_glue, ptr %call.i, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags47) #7
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags47) #7
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %lor.lhs.false.if.end49_crit_edge
  %call51 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.sunxi_glue, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call51, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end57, label %if.end63

do.end57:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %call51 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %19) #10
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk, align 4
  %22 = ptrtoint ptr %21 to i32
  br label %cleanup

if.end63:                                         ; preds = %if.end49
  %flags64 = getelementptr inbounds %struct.sunxi_glue, ptr %call.i, i32 0, i32 9
  %23 = ptrtoint ptr %flags64 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags64, align 4
  %25 = and i32 %24, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool66.not = icmp eq i32 %25, 0
  br i1 %tobool66.not, label %if.end63.if.end86_crit_edge, label %if.then67

if.end63.if.end86_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

if.then67:                                        ; preds = %if.end63
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %rst = getelementptr inbounds %struct.sunxi_glue, ptr %call.i, i32 0, i32 4
  %26 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i.i, ptr %rst, align 4
  %cmp.i246 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i246, label %if.then72, label %if.then67.if.end86_crit_edge

if.then67.if.end86_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

if.then72:                                        ; preds = %if.then67
  %cmp = icmp eq ptr %call.i.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.then72.cleanup_crit_edge, label %do.end79

if.then72.cleanup_crit_edge:                      ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end79:                                         ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %call.i.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %27) #10
  %28 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rst, align 4
  %30 = ptrtoint ptr %29 to i32
  br label %cleanup

if.end86:                                         ; preds = %if.then67.if.end86_crit_edge, %if.end63.if.end86_crit_edge
  %call88 = tail call ptr @extcon_get_edev_by_phandle(ptr noundef %dev, i32 noundef 0) #7
  %extcon = getelementptr inbounds %struct.sunxi_glue, ptr %call.i, i32 0, i32 11
  %31 = ptrtoint ptr %extcon to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call88, ptr %extcon, align 4
  %cmp.i247 = icmp ugt ptr %call88, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i247, label %if.then91, label %if.end103

if.then91:                                        ; preds = %if.end86
  %cmp94 = icmp eq ptr %call88, inttoptr (i32 -517 to ptr)
  br i1 %cmp94, label %if.then91.cleanup_crit_edge, label %do.end99

if.then91.cleanup_crit_edge:                      ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end99:                                         ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #10
  %32 = ptrtoint ptr %extcon to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %extcon, align 4
  %34 = ptrtoint ptr %33 to i32
  br label %cleanup

if.end103:                                        ; preds = %if.end86
  %call105 = tail call ptr @devm_phy_get(ptr noundef %dev, ptr noundef nonnull @.str.23) #7
  %phy = getelementptr inbounds %struct.sunxi_glue, ptr %call.i, i32 0, i32 5
  %35 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call105, ptr %phy, align 4
  %cmp.i248 = icmp ugt ptr %call105, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i248, label %if.then108, label %if.end122

if.then108:                                       ; preds = %if.end103
  %cmp111 = icmp eq ptr %call105, inttoptr (i32 -517 to ptr)
  br i1 %cmp111, label %if.then108.cleanup_crit_edge, label %do.end116

if.then108.cleanup_crit_edge:                     ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end116:                                        ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %call105 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %36) #10
  %37 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %phy, align 4
  %39 = ptrtoint ptr %38 to i32
  br label %cleanup

if.end122:                                        ; preds = %if.end103
  %call123 = tail call ptr @usb_phy_generic_register() #7
  %usb_phy = getelementptr inbounds %struct.sunxi_glue, ptr %call.i, i32 0, i32 6
  %40 = ptrtoint ptr %usb_phy to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call123, ptr %usb_phy, align 4
  %cmp.i249 = icmp ugt ptr %call123, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i249, label %do.end129, label %if.end135

do.end129:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %call123 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %41) #10
  %42 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %usb_phy, align 4
  %44 = ptrtoint ptr %43 to i32
  br label %cleanup

if.end135:                                        ; preds = %if.end122
  %call137 = tail call ptr @devm_usb_get_phy(ptr noundef %dev, i32 noundef 1) #7
  %xceiv = getelementptr inbounds %struct.sunxi_glue, ptr %call.i, i32 0, i32 7
  %45 = ptrtoint ptr %xceiv to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call137, ptr %xceiv, align 4
  %cmp.i250 = icmp ugt ptr %call137, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i250, label %if.then140, label %if.end147

if.then140:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %call137 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %46) #10
  br label %err_unregister_usb_phy

if.end147:                                        ; preds = %if.end135
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %47 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %48 = getelementptr inbounds i8, ptr %pinfo, i32 8
  %49 = call ptr @memset(ptr %48, i32 0, i32 48)
  %name = getelementptr inbounds %struct.platform_device_info, ptr %pinfo, i32 0, i32 3
  %50 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.33, ptr %name, align 4
  %id = getelementptr inbounds %struct.platform_device_info, ptr %pinfo, i32 0, i32 4
  %51 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -2, ptr %id, align 8
  %52 = ptrtoint ptr %pinfo to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %dev, ptr %pinfo, align 8
  %53 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %of_node, align 8
  %tobool151.not = icmp eq ptr %54, null
  %fwnode = getelementptr inbounds %struct.device_node, ptr %54, i32 0, i32 3
  %spec.select = select i1 %tobool151.not, ptr null, ptr %fwnode
  %fwnode152 = getelementptr inbounds %struct.platform_device_info, ptr %pinfo, i32 0, i32 1
  %55 = ptrtoint ptr %fwnode152 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %spec.select, ptr %fwnode152, align 4
  %of_node_reused = getelementptr inbounds %struct.platform_device_info, ptr %pinfo, i32 0, i32 2
  %56 = ptrtoint ptr %of_node_reused to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %of_node_reused, align 8
  %resource = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 7
  %57 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %resource, align 8
  %res = getelementptr inbounds %struct.platform_device_info, ptr %pinfo, i32 0, i32 5
  %59 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %res, align 4
  %num_resources = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 6
  %60 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_resources, align 4
  %num_res = getelementptr inbounds %struct.platform_device_info, ptr %pinfo, i32 0, i32 6
  %62 = ptrtoint ptr %num_res to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %num_res, align 8
  %data153 = getelementptr inbounds %struct.platform_device_info, ptr %pinfo, i32 0, i32 7
  %63 = ptrtoint ptr %data153 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %pdata, ptr %data153, align 4
  %size_data = getelementptr inbounds %struct.platform_device_info, ptr %pinfo, i32 0, i32 8
  %64 = ptrtoint ptr %size_data to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 32, ptr %size_data, align 8
  %call154 = call ptr @platform_device_register_full(ptr noundef nonnull %pinfo) #7
  %musb_pdev = getelementptr inbounds %struct.sunxi_glue, ptr %call.i, i32 0, i32 2
  %65 = ptrtoint ptr %musb_pdev to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call154, ptr %musb_pdev, align 4
  %cmp.i251 = icmp ugt ptr %call154, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i251, label %if.then157, label %if.end147.cleanup_crit_edge

if.end147.cleanup_crit_edge:                      ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then157:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %call154 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %66) #10
  br label %err_unregister_usb_phy

err_unregister_usb_phy:                           ; preds = %if.then157, %if.then140
  %ret.0 = phi i32 [ %46, %if.then140 ], [ %66, %if.then157 ]
  %67 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %usb_phy, align 4
  call void @usb_phy_generic_unregister(ptr noundef %68) #7
  br label %cleanup

cleanup:                                          ; preds = %err_unregister_usb_phy, %if.end147.cleanup_crit_edge, %do.end129, %do.end116, %if.then108.cleanup_crit_edge, %do.end99, %if.then91.cleanup_crit_edge, %do.end79, %if.then72.cleanup_crit_edge, %do.end57, %do.end16, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end16 ], [ %22, %do.end57 ], [ %30, %do.end79 ], [ %34, %do.end99 ], [ %39, %do.end116 ], [ %44, %do.end129 ], [ %ret.0, %err_unregister_usb_phy ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -517, %if.then72.cleanup_crit_edge ], [ -517, %if.then91.cleanup_crit_edge ], [ -517, %if.then108.cleanup_crit_edge ], [ 0, %if.end147.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pinfo) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pdata) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_musb_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %usb_phy1 = getelementptr inbounds %struct.sunxi_glue, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %usb_phy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_phy1, align 4
  %musb_pdev = getelementptr inbounds %struct.sunxi_glue, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %musb_pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %musb_pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %5) #7
  tail call void @usb_phy_generic_unregister(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_dr_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_musb_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %flags) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.end38_crit_edge, label %if.then4

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then4:                                         ; preds = %if.end
  %musb5 = getelementptr i8, ptr %work, i32 -36
  %2 = ptrtoint ptr %musb5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %musb5, align 4
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #7
  %mregs = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mregs, align 8
  %add.ptr13 = getelementptr i8, ptr %5, i32 65
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr13) #7, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool19.not = icmp eq i32 %9, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #7
  %xceiv = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 35
  %10 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xceiv, align 8
  %otg = getelementptr inbounds %struct.usb_phy, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 7, ptr %state, align 4
  %15 = or i8 %6, 1
  br label %do.body32

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #7
  %xceiv25 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 35
  %16 = ptrtoint ptr %xceiv25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xceiv25, align 8
  %otg26 = getelementptr inbounds %struct.usb_phy, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %otg26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %otg26, align 4
  %state27 = getelementptr inbounds %struct.usb_otg, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %state27 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %state27, align 4
  %21 = and i8 %6, -2
  br label %do.body32

do.body32:                                        ; preds = %if.else, %if.then20
  %.sink = phi i8 [ 0, %if.else ], [ 1, %if.then20 ]
  %devctl.0 = phi i8 [ %21, %if.else ], [ %15, %if.then20 ]
  %22 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 48
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.sink, ptr %22, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mregs, align 8
  %add.ptr36 = getelementptr i8, ptr %25, i32 65
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr36, i8 %devctl.0) #7, !srcloc !155
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call10) #7
  br label %if.end38

if.end38:                                         ; preds = %do.body32, %if.end.if.end38_crit_edge
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags, align 4
  %28 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool41 = icmp ne i32 %28, 0
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %flags, align 4
  %31 = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool44 = icmp eq i32 %31, 0
  %cmp50.not = xor i1 %tobool41, %tobool44
  br i1 %cmp50.not, label %if.end38.if.end62_crit_edge, label %if.then52

if.end38.if.end62_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then52:                                        ; preds = %if.end38
  %phy = getelementptr i8, ptr %work, i32 -20
  %32 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phy, align 4
  br i1 %tobool41, label %if.then54, label %if.else57

if.then54:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  %call55 = tail call i32 @phy_power_on(ptr noundef %33) #7
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #7
  br label %if.end62

if.else57:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  %call59 = tail call i32 @phy_power_off(ptr noundef %33) #7
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags) #7
  br label %if.end62

if.end62:                                         ; preds = %if.else57, %if.then54, %if.end38.if.end62_crit_edge
  %call64 = tail call i32 @_test_and_clear_bit(i32 noundef 8, ptr noundef %flags) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end62.cleanup_crit_edge, label %if.then66

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %phy67 = getelementptr i8, ptr %work, i32 -20
  %34 = ptrtoint ptr %phy67 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %phy67, align 4
  %phy_mode = getelementptr i8, ptr %work, i32 -8
  %36 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %phy_mode, align 4
  %call68 = tail call i32 @phy_set_mode_ext(ptr noundef %35, i32 noundef %37, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then66, %if.end62.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_musb_host_notifier(ptr noundef %nb, i32 noundef %event, ptr nocapture noundef readnone %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %event)
  %tobool.not = icmp eq i32 %event, 0
  %flags1 = getelementptr i8, ptr %nb, i32 -52
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags1) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags1) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %flags2 = getelementptr i8, ptr %nb, i32 -52
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags2) #7
  %work = getelementptr i8, ptr %nb, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extcon_get_edev_by_phandle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_phy_generic_register() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_phy_generic_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_musb_init(ptr noundef %musb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  store ptr %musb, ptr @sunxi_musb, align 4
  %phy = getelementptr inbounds %struct.sunxi_glue, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  %phy1 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 36
  %8 = ptrtoint ptr %phy1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %phy1, align 4
  %xceiv = getelementptr inbounds %struct.sunxi_glue, ptr %5, i32 0, i32 7
  %9 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xceiv, align 4
  %xceiv2 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %11 = ptrtoint ptr %xceiv2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %xceiv2, align 8
  %flags = getelementptr inbounds %struct.sunxi_glue, ptr %5, i32 0, i32 9
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %entry
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent, align 8
  %call6 = tail call i32 @sunxi_sram_claim(ptr noundef %16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then.if.end9_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end9:                                          ; preds = %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  %clk = getelementptr inbounds %struct.sunxi_glue, ptr %5, i32 0, i32 3
  %17 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end9.error_sram_release_crit_edge

if.end9.error_sram_release_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_sram_release

if.end.i:                                         ; preds = %if.end9
  %call1.i = tail call i32 @clk_enable(ptr noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end13, label %if.end.i.error_sram_release.sink.split_crit_edge

if.end.i.error_sram_release.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_sram_release.sink.split

if.end13:                                         ; preds = %if.end.i
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags, align 4
  %21 = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool16.not = icmp eq i32 %21, 0
  br i1 %tobool16.not, label %if.end13.do.body_crit_edge, label %if.then17

if.end13.do.body_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then17:                                        ; preds = %if.end13
  %rst = getelementptr inbounds %struct.sunxi_glue, ptr %5, i32 0, i32 4
  %22 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rst, align 4
  %call18 = tail call i32 @reset_control_deassert(ptr noundef %23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then17.do.body_crit_edge, label %if.then17.error_clk_disable_crit_edge

if.then17.error_clk_disable_crit_edge:            ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_clk_disable

if.then17.do.body_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %if.then17.do.body_crit_edge, %if.end13.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  tail call void @arm_heavy_mb() #7
  %mregs = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 27
  %24 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mregs, align 8
  %add.ptr = getelementptr i8, ptr %25, i32 67
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #7, !srcloc !155
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %5, align 4
  %extcon = getelementptr inbounds %struct.sunxi_glue, ptr %5, i32 0, i32 11
  %28 = ptrtoint ptr %extcon to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %extcon, align 4
  %host_nb = getelementptr inbounds %struct.sunxi_glue, ptr %5, i32 0, i32 12
  %call23 = tail call i32 @devm_extcon_register_notifier(ptr noundef %27, ptr noundef %29, i32 noundef 2, ptr noundef %host_nb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %do.body.error_reset_assert_crit_edge

do.body.error_reset_assert_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_reset_assert

if.end26:                                         ; preds = %do.body
  %30 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phy, align 4
  %call28 = tail call i32 @phy_init(ptr noundef %31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end26.error_reset_assert_crit_edge

if.end26.error_reset_assert_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_reset_assert

if.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %isr = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 5
  %32 = ptrtoint ptr %isr to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @sunxi_musb_interrupt, ptr %isr, align 4
  %33 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %controller, align 8
  %call.i84 = tail call i32 @__pm_runtime_resume(ptr noundef %34, i32 noundef 5) #7
  br label %cleanup

error_reset_assert:                               ; preds = %if.end26.error_reset_assert_crit_edge, %do.body.error_reset_assert_crit_edge
  %ret.0 = phi i32 [ %call23, %do.body.error_reset_assert_crit_edge ], [ %call28, %if.end26.error_reset_assert_crit_edge ]
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %flags, align 4
  %37 = and i32 %36, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool36.not = icmp eq i32 %37, 0
  br i1 %tobool36.not, label %error_reset_assert.error_clk_disable_crit_edge, label %if.then37

error_reset_assert.error_clk_disable_crit_edge:   ; preds = %error_reset_assert
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_clk_disable

if.then37:                                        ; preds = %error_reset_assert
  call void @__sanitizer_cov_trace_pc() #9
  %rst38 = getelementptr inbounds %struct.sunxi_glue, ptr %5, i32 0, i32 4
  %38 = ptrtoint ptr %rst38 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rst38, align 4
  %call39 = tail call i32 @reset_control_assert(ptr noundef %39) #7
  br label %error_clk_disable

error_clk_disable:                                ; preds = %if.then37, %error_reset_assert.error_clk_disable_crit_edge, %if.then17.error_clk_disable_crit_edge
  %ret.1 = phi i32 [ %call18, %if.then17.error_clk_disable_crit_edge ], [ %ret.0, %if.then37 ], [ %ret.0, %error_reset_assert.error_clk_disable_crit_edge ]
  %40 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %41) #7
  br label %error_sram_release.sink.split

error_sram_release.sink.split:                    ; preds = %error_clk_disable, %if.end.i.error_sram_release.sink.split_crit_edge
  %.sink = phi ptr [ %41, %error_clk_disable ], [ %18, %if.end.i.error_sram_release.sink.split_crit_edge ]
  %ret.2.ph = phi i32 [ %ret.1, %error_clk_disable ], [ %call1.i, %if.end.i.error_sram_release.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #7
  br label %error_sram_release

error_sram_release:                               ; preds = %error_sram_release.sink.split, %if.end9.error_sram_release_crit_edge
  %ret.2 = phi i32 [ %call.i, %if.end9.error_sram_release_crit_edge ], [ %ret.2.ph, %error_sram_release.sink.split ]
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %flags, align 4
  %44 = and i32 %43, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool44.not = icmp eq i32 %44, 0
  br i1 %tobool44.not, label %error_sram_release.cleanup_crit_edge, label %if.then45

error_sram_release.cleanup_crit_edge:             ; preds = %error_sram_release
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then45:                                        ; preds = %error_sram_release
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %controller, align 8
  %parent47 = getelementptr inbounds %struct.device, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %parent47 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %parent47, align 8
  %call48 = tail call i32 @sunxi_sram_release(ptr noundef %48) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %error_sram_release.cleanup_crit_edge, %if.end31, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end31 ], [ %call6, %if.then.cleanup_crit_edge ], [ %ret.2, %if.then45 ], [ %ret.2, %error_sram_release.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_musb_exit(ptr nocapture noundef readonly %musb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %1, i32 noundef 5) #7
  %work = getelementptr inbounds %struct.sunxi_glue, ptr %5, i32 0, i32 10
  %call3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #7
  %flags = getelementptr inbounds %struct.sunxi_glue, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %phy = getelementptr inbounds %struct.sunxi_glue, ptr %5, i32 0, i32 5
  %9 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy, align 4
  %call5 = tail call i32 @phy_power_off(ptr noundef %10) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %phy6 = getelementptr inbounds %struct.sunxi_glue, ptr %5, i32 0, i32 5
  %11 = ptrtoint ptr %phy6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phy6, align 4
  %call7 = tail call i32 @phy_exit(ptr noundef %12) #7
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags, align 4
  %15 = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not = icmp eq i32 %15, 0
  br i1 %tobool10.not, label %if.end.if.end13_crit_edge, label %if.then11

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rst = getelementptr inbounds %struct.sunxi_glue, ptr %5, i32 0, i32 4
  %16 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rst, align 4
  %call12 = tail call i32 @reset_control_assert(ptr noundef %17) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end.if.end13_crit_edge
  %clk = getelementptr inbounds %struct.sunxi_glue, ptr %5, i32 0, i32 3
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %19) #7
  tail call void @clk_unprepare(ptr noundef %19) #7
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags, align 4
  %22 = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool16.not = icmp eq i32 %22, 0
  br i1 %tobool16.not, label %if.end13.if.end21_crit_edge, label %if.then17

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %controller, align 8
  %parent19 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %parent19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent19, align 8
  %call20 = tail call i32 @sunxi_sram_release(ptr noundef %26) #7
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end13.if.end21_crit_edge
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %5, align 4
  %xceiv = getelementptr inbounds %struct.sunxi_glue, ptr %5, i32 0, i32 7
  %29 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %xceiv, align 4
  tail call void @devm_usb_put_phy(ptr noundef %28, ptr noundef %30) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_musb_enable(ptr noundef %musb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %musb1 = getelementptr inbounds %struct.sunxi_glue, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %musb1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %musb, ptr %musb1, align 4
  %flags = getelementptr inbounds %struct.sunxi_glue, ptr %5, i32 0, i32 9
  %call2 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %work = getelementptr inbounds %struct.sunxi_glue, ptr %5, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %work) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_musb_disable(ptr nocapture noundef readonly %musb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %flags = getelementptr inbounds %struct.sunxi_glue, ptr %5, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_musb_ep_offset(i8 noundef zeroext %epnum, i16 noundef zeroext %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %offset)
  %cmp.not = icmp eq i16 %offset, 0
  br i1 %cmp.not, label %entry.if.end29_crit_edge, label %land.rhs

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b39 = load i1, ptr @sunxi_musb_ep_offset.__already_done, align 1
  br i1 %.b39, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !157

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @sunxi_musb_ep_offset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 400, i32 noundef 9, ptr noundef nonnull @.str.37) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  ret i32 128
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sunxi_musb_fifo_offset(i8 noundef zeroext %epnum) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %epnum to i32
  %mul = shl nuw nsw i32 %conv, 2
  ret i32 %mul
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sunxi_musb_busctl_offset(i8 noundef zeroext %epnum, i16 noundef zeroext %offset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %offset to i32
  %add = add nuw nsw i32 %conv, 152
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @sunxi_musb_readb(ptr noundef %addr, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sunxi_musb, align 4
  %mregs = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %1 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mregs, align 8
  %cmp = icmp eq ptr %2, %addr
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = zext i32 %offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %offset, label %do.end74 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 10, label %sw.bb9
    i32 11, label %sw.bb16
    i32 14, label %sw.bb23
    i32 15, label %if.then.cleanup_crit_edge
    i32 96, label %sw.bb31
    i32 98, label %sw.bb38
    i32 99, label %sw.bb45
    i32 31, label %sw.bb52
    i32 112, label %do.end
    i32 152, label %if.then.sw.bb65_crit_edge
    i32 154, label %if.then.sw.bb65_crit_edge116
    i32 155, label %if.then.sw.bb65_crit_edge117
    i32 156, label %if.then.sw.bb65_crit_edge118
    i32 158, label %if.then.sw.bb65_crit_edge119
    i32 159, label %if.then.sw.bb65_crit_edge120
  ]

if.then.sw.bb65_crit_edge120:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb65

if.then.sw.bb65_crit_edge119:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb65

if.then.sw.bb65_crit_edge118:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb65

if.then.sw.bb65_crit_edge117:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb65

if.then.sw.bb65_crit_edge116:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb65

if.then.sw.bb65_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb65

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %addr, i32 152
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  br label %cleanup

sw.bb2:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5 = getelementptr i8, ptr %addr, i32 64
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5) #7, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  br label %cleanup

sw.bb9:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr12 = getelementptr i8, ptr %addr, i32 76
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12) #7, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  br label %cleanup

sw.bb16:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr19 = getelementptr i8, ptr %addr, i32 80
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr19) #7, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  br label %cleanup

sw.bb23:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr26 = getelementptr i8, ptr %addr, i32 66
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr26) #7, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  br label %cleanup

sw.bb31:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr34 = getelementptr i8, ptr %addr, i32 65
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr34) #7, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  br label %cleanup

sw.bb38:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr41 = getelementptr i8, ptr %addr, i32 144
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr41) #7, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  br label %cleanup

sw.bb45:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr48 = getelementptr i8, ptr %addr, i32 148
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr48) #7, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  br label %cleanup

sw.bb52:                                          ; preds = %if.then
  %controller = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %12 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %controller, align 8
  %parent = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i, align 4
  %flags = getelementptr inbounds %struct.sunxi_glue, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags, align 4
  %20 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %if.end, label %sw.bb52.cleanup_crit_edge

sw.bb52.cleanup_crit_edge:                        ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr58 = getelementptr i8, ptr %addr, i32 192
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr58) #7, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !166
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %controller63 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %22 = ptrtoint ptr %controller63 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %controller63, align 8
  %parent64 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %parent64 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent64, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.38) #10
  br label %cleanup

sw.bb65:                                          ; preds = %if.then.sw.bb65_crit_edge, %if.then.sw.bb65_crit_edge116, %if.then.sw.bb65_crit_edge117, %if.then.sw.bb65_crit_edge118, %if.then.sw.bb65_crit_edge119, %if.then.sw.bb65_crit_edge120
  %add.ptr68 = getelementptr i8, ptr %addr, i32 %offset
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr68) #7, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !167
  br label %cleanup

do.end74:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %controller75 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %27 = ptrtoint ptr %controller75 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %controller75, align 8
  %parent76 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %parent76 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent76, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.42, i32 noundef %offset) #10
  br label %cleanup

if.else:                                          ; preds = %entry
  %add.ptr78 = getelementptr i8, ptr %2, i32 128
  %cmp79 = icmp eq ptr %add.ptr78, %addr
  br i1 %cmp79, label %if.then80, label %do.end94

if.then80:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %offset)
  %cmp81 = icmp ugt i32 %offset, 9
  %add = add i32 %offset, 2
  %spec.select = select i1 %cmp81, i32 %add, i32 %offset
  %add.ptr86 = getelementptr i8, ptr %addr, i32 %spec.select
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr86) #7, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  br label %cleanup

do.end94:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %controller95 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %32 = ptrtoint ptr %controller95 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %controller95, align 8
  %parent96 = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %parent96 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent96, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %addr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.45, i32 noundef %sub.ptr.sub) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end94, %if.then80, %do.end74, %sw.bb65, %do.end, %if.end, %sw.bb52.cleanup_crit_edge, %sw.bb45, %sw.bb38, %sw.bb31, %sw.bb23, %sw.bb16, %sw.bb9, %sw.bb2, %sw.bb, %if.then.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %do.end74 ], [ %26, %sw.bb65 ], [ 0, %do.end ], [ %21, %if.end ], [ %11, %sw.bb45 ], [ %10, %sw.bb38 ], [ %9, %sw.bb31 ], [ %8, %sw.bb23 ], [ %7, %sw.bb16 ], [ %6, %sw.bb9 ], [ %5, %sw.bb2 ], [ %4, %sw.bb ], [ %31, %if.then80 ], [ 0, %do.end94 ], [ 0, %if.then.cleanup_crit_edge ], [ -34, %sw.bb52.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_musb_writeb(ptr noundef %addr, i32 noundef %offset, i8 noundef zeroext %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sunxi_musb, align 4
  %mregs = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %1 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mregs, align 8
  %cmp = icmp eq ptr %2, %addr
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = zext i32 %offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %offset, label %do.end43 [
    i32 0, label %do.body
    i32 1, label %do.body2
    i32 10, label %do.body6
    i32 11, label %do.body10
    i32 14, label %do.body14
    i32 15, label %sw.bb17
    i32 96, label %do.body22
    i32 98, label %do.body26
    i32 99, label %do.body30
    i32 112, label %do.end35
    i32 152, label %if.then.do.body39_crit_edge
    i32 154, label %if.then.do.body39_crit_edge90
    i32 155, label %if.then.do.body39_crit_edge91
    i32 156, label %if.then.do.body39_crit_edge92
    i32 158, label %if.then.do.body39_crit_edge93
    i32 159, label %if.then.do.body39_crit_edge94
  ]

if.then.do.body39_crit_edge94:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

if.then.do.body39_crit_edge93:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

if.then.do.body39_crit_edge92:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

if.then.do.body39_crit_edge91:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

if.then.do.body39_crit_edge90:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

if.then.do.body39_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  tail call void @arm_heavy_mb() #7
  %add.ptr = getelementptr i8, ptr %addr, i32 152
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %data) #7, !srcloc !155
  br label %return

do.body2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %add.ptr4 = getelementptr i8, ptr %addr, i32 64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 %data) #7, !srcloc !155
  br label %return

do.body6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  tail call void @arm_heavy_mb() #7
  %add.ptr8 = getelementptr i8, ptr %addr, i32 76
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8, i8 %data) #7, !srcloc !155
  br label %return

do.body10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  tail call void @arm_heavy_mb() #7
  %add.ptr12 = getelementptr i8, ptr %addr, i32 80
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12, i8 %data) #7, !srcloc !155
  br label %return

do.body14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %add.ptr16 = getelementptr i8, ptr %addr, i32 66
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16, i8 %data) #7, !srcloc !155
  br label %return

sw.bb17:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %data)
  %tobool.not = icmp eq i8 %data, 0
  br i1 %tobool.not, label %sw.bb17.return_crit_edge, label %do.end20

sw.bb17.return_crit_edge:                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end20:                                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  %controller = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %4 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %controller, align 8
  %parent = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.47) #10
  br label %return

do.body22:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !174
  tail call void @arm_heavy_mb() #7
  %add.ptr24 = getelementptr i8, ptr %addr, i32 65
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24, i8 %data) #7, !srcloc !155
  br label %return

do.body26:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !175
  tail call void @arm_heavy_mb() #7
  %add.ptr28 = getelementptr i8, ptr %addr, i32 144
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28, i8 %data) #7, !srcloc !155
  br label %return

do.body30:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  tail call void @arm_heavy_mb() #7
  %add.ptr32 = getelementptr i8, ptr %addr, i32 148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr32, i8 %data) #7, !srcloc !155
  br label %return

do.end35:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %controller36 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %8 = ptrtoint ptr %controller36 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %controller36, align 8
  %parent37 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %parent37 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent37, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.38) #10
  br label %return

do.body39:                                        ; preds = %if.then.do.body39_crit_edge, %if.then.do.body39_crit_edge90, %if.then.do.body39_crit_edge91, %if.then.do.body39_crit_edge92, %if.then.do.body39_crit_edge93, %if.then.do.body39_crit_edge94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !177
  tail call void @arm_heavy_mb() #7
  %add.ptr41 = getelementptr i8, ptr %addr, i32 %offset
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr41, i8 %data) #7, !srcloc !155
  br label %return

do.end43:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %controller44 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %12 = ptrtoint ptr %controller44 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %controller44, align 8
  %parent45 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %parent45 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent45, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.52, i32 noundef %offset) #10
  br label %return

if.else:                                          ; preds = %entry
  %add.ptr47 = getelementptr i8, ptr %2, i32 128
  %cmp48 = icmp eq ptr %add.ptr47, %addr
  br i1 %cmp48, label %if.then49, label %do.end59

if.then49:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %offset)
  %cmp50 = icmp ugt i32 %offset, 9
  %add = add i32 %offset, 2
  %spec.select = select i1 %cmp50, i32 %add, i32 %offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  tail call void @arm_heavy_mb() #7
  %add.ptr55 = getelementptr i8, ptr %addr, i32 %spec.select
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr55, i8 %data) #7, !srcloc !155
  br label %return

do.end59:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %controller60 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %16 = ptrtoint ptr %controller60 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %controller60, align 8
  %parent61 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %parent61 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent61, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %addr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.55, i32 noundef %sub.ptr.sub) #10
  br label %return

return:                                           ; preds = %do.end59, %if.then49, %do.end43, %do.body39, %do.end35, %do.body30, %do.body26, %do.body22, %do.end20, %sw.bb17.return_crit_edge, %do.body14, %do.body10, %do.body6, %do.body2, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @sunxi_musb_readw(ptr noundef %addr, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sunxi_musb, align 4
  %mregs = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %1 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mregs, align 8
  %cmp = icmp eq ptr %2, %addr
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = zext i32 %offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %offset, label %do.end [
    i32 2, label %sw.bb
    i32 4, label %sw.bb2
    i32 6, label %sw.bb9
    i32 8, label %sw.bb16
    i32 12, label %sw.bb23
    i32 100, label %sw.bb30
    i32 102, label %sw.bb37
    i32 108, label %if.then.return_crit_edge
  ]

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %addr, i32 68
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #7, !srcloc !179
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !180
  br label %return

sw.bb2:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5 = getelementptr i8, ptr %addr, i32 70
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr5) #7, !srcloc !179
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !181
  br label %return

sw.bb9:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr12 = getelementptr i8, ptr %addr, i32 72
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr12) #7, !srcloc !179
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !182
  br label %return

sw.bb16:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr19 = getelementptr i8, ptr %addr, i32 74
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr19) #7, !srcloc !179
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !183
  br label %return

sw.bb23:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr26 = getelementptr i8, ptr %addr, i32 84
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr26) #7, !srcloc !179
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  br label %return

sw.bb30:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr33 = getelementptr i8, ptr %addr, i32 146
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr33) #7, !srcloc !179
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !185
  br label %return

sw.bb37:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr40 = getelementptr i8, ptr %addr, i32 150
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr40) #7, !srcloc !179
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  br label %return

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %controller = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %18 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %controller, align 8
  %parent = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.57, i32 noundef %offset) #10
  br label %return

if.else:                                          ; preds = %entry
  %add.ptr46 = getelementptr i8, ptr %2, i32 128
  %cmp47 = icmp eq ptr %add.ptr46, %addr
  br i1 %cmp47, label %if.then48, label %do.end57

if.then48:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr51 = getelementptr i8, ptr %addr, i32 %offset
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr51) #7, !srcloc !179
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !187
  br label %return

do.end57:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %controller58 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %24 = ptrtoint ptr %controller58 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %controller58, align 8
  %parent59 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %parent59 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent59, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %addr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.60, i32 noundef %sub.ptr.sub) #10
  br label %return

return:                                           ; preds = %do.end57, %if.then48, %do.end, %sw.bb37, %sw.bb30, %sw.bb23, %sw.bb16, %sw.bb9, %sw.bb2, %sw.bb, %if.then.return_crit_edge
  %retval.0 = phi i16 [ 0, %do.end ], [ %17, %sw.bb37 ], [ %15, %sw.bb30 ], [ %13, %sw.bb23 ], [ %11, %sw.bb16 ], [ %9, %sw.bb9 ], [ %7, %sw.bb2 ], [ %5, %sw.bb ], [ %23, %if.then48 ], [ 0, %do.end57 ], [ 0, %if.then.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_musb_writew(ptr noundef %addr, i32 noundef %offset, i16 noundef zeroext %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sunxi_musb, align 4
  %mregs = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %1 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mregs, align 8
  %cmp = icmp eq ptr %2, %addr
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = zext i32 %offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %offset, label %do.end26 [
    i32 2, label %do.body
    i32 4, label %do.body2
    i32 6, label %do.body6
    i32 8, label %do.body10
    i32 12, label %do.body14
    i32 100, label %do.body18
    i32 102, label %do.body22
  ]

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !188
  tail call void @arm_heavy_mb() #7
  %4 = tail call i16 @llvm.bswap.i16(i16 %data)
  %add.ptr = getelementptr i8, ptr %addr, i32 68
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %4) #7, !srcloc !189
  br label %return

do.body2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  %5 = tail call i16 @llvm.bswap.i16(i16 %data)
  %add.ptr4 = getelementptr i8, ptr %addr, i32 70
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4, i16 %5) #7, !srcloc !189
  br label %return

do.body6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !191
  tail call void @arm_heavy_mb() #7
  %6 = tail call i16 @llvm.bswap.i16(i16 %data)
  %add.ptr8 = getelementptr i8, ptr %addr, i32 72
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8, i16 %6) #7, !srcloc !189
  br label %return

do.body10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  tail call void @arm_heavy_mb() #7
  %7 = tail call i16 @llvm.bswap.i16(i16 %data)
  %add.ptr12 = getelementptr i8, ptr %addr, i32 74
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr12, i16 %7) #7, !srcloc !189
  br label %return

do.body14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  %8 = tail call i16 @llvm.bswap.i16(i16 %data)
  %add.ptr16 = getelementptr i8, ptr %addr, i32 84
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr16, i16 %8) #7, !srcloc !189
  br label %return

do.body18:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  tail call void @arm_heavy_mb() #7
  %9 = tail call i16 @llvm.bswap.i16(i16 %data)
  %add.ptr20 = getelementptr i8, ptr %addr, i32 146
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr20, i16 %9) #7, !srcloc !189
  br label %return

do.body22:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  tail call void @arm_heavy_mb() #7
  %10 = tail call i16 @llvm.bswap.i16(i16 %data)
  %add.ptr24 = getelementptr i8, ptr %addr, i32 150
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr24, i16 %10) #7, !srcloc !189
  br label %return

do.end26:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %controller = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %11 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %controller, align 8
  %parent = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.62, i32 noundef %offset) #10
  br label %return

if.else:                                          ; preds = %entry
  %add.ptr28 = getelementptr i8, ptr %2, i32 128
  %cmp29 = icmp eq ptr %add.ptr28, %addr
  br i1 %cmp29, label %do.body31, label %do.end36

do.body31:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  tail call void @arm_heavy_mb() #7
  %15 = tail call i16 @llvm.bswap.i16(i16 %data)
  %add.ptr33 = getelementptr i8, ptr %addr, i32 %offset
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr33, i16 %15) #7, !srcloc !189
  br label %return

do.end36:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %controller37 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %16 = ptrtoint ptr %controller37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %controller37, align 8
  %parent38 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %parent38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent38, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %addr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.65, i32 noundef %sub.ptr.sub) #10
  br label %return

return:                                           ; preds = %do.end36, %do.body31, %do.end26, %do.body22, %do.body18, %do.body14, %do.body10, %do.body6, %do.body2, %do.body
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal noalias ptr @sunxi_musb_dma_controller_create(ptr nocapture noundef readnone %musb, ptr nocapture noundef readnone %base) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sunxi_musb_dma_controller_destroy(ptr nocapture noundef %c) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_musb_set_mode(ptr noundef %musb, i8 noundef zeroext %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.67) #10
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %switch.idx.mult = mul nuw nsw i32 %switch.idx.cast, 5
  %switch.offset = add nuw nsw i32 %switch.idx.mult, 1
  %phy_mode = getelementptr inbounds %struct.sunxi_glue, ptr %5, i32 0, i32 8
  %7 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %phy_mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %switch.offset)
  %cmp = icmp eq i32 %8, %switch.offset
  br i1 %cmp, label %switch.lookup.cleanup_crit_edge, label %if.end

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  %port_mode = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 45
  %9 = ptrtoint ptr %port_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp6.not = icmp eq i32 %10, 3
  br i1 %cmp6.not, label %if.end14, label %do.end11

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.70) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %port1_status = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 13
  %11 = ptrtoint ptr %port1_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port1_status, align 8
  %and = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end14.if.end16_crit_edge, label %if.then15

if.end14.if.end16_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then15:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @musb_root_disconnect(ptr noundef %musb) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end14.if.end16_crit_edge
  %13 = ptrtoint ptr %phy_mode to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %switch.offset, ptr %phy_mode, align 4
  %flags = getelementptr inbounds %struct.sunxi_glue, ptr %5, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flags) #7
  %work = getelementptr inbounds %struct.sunxi_glue, ptr %5, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %14 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %work) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end11, %switch.lookup.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end11 ], [ 0, %if.end16 ], [ 0, %switch.lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_musb_recover(ptr nocapture noundef readonly %musb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %flags = getelementptr inbounds %struct.sunxi_glue, ptr %5, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flags) #7
  %work = getelementptr inbounds %struct.sunxi_glue, ptr %5, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %work) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_musb_set_vbus(ptr nocapture noundef readonly %musb, i32 noundef %is_on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool.not = icmp eq i32 %is_on, 0
  %flags1 = getelementptr inbounds %struct.sunxi_glue, ptr %5, i32 0, i32 9
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags1) #7
  %xceiv = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %6 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xceiv, align 8
  %otg = getelementptr inbounds %struct.usb_phy, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 7, ptr %state, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags1) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %work = getelementptr inbounds %struct.sunxi_glue, ptr %5, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %work) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_musb_pre_root_reset_end(ptr nocapture noundef readonly %musb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %phy = getelementptr inbounds %struct.sunxi_glue, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  tail call void @sun4i_usb_phy_set_squelch_detect(ptr noundef %7, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_musb_post_root_reset_end(ptr nocapture noundef readonly %musb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %phy = getelementptr inbounds %struct.sunxi_glue, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  tail call void @sun4i_usb_phy_set_squelch_detect(ptr noundef %7, i1 noundef zeroext true) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sunxi_sram_claim(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_register_notifier(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_musb_interrupt(i32 noundef %irq, ptr noundef %__hci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %__hci) #7
  %mregs = getelementptr inbounds %struct.musb, ptr %__hci, i32 0, i32 27
  %0 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mregs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 76
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  %int_usb = getelementptr inbounds %struct.musb, ptr %__hci, i32 0, i32 32
  %3 = ptrtoint ptr %int_usb to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %int_usb, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body9

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !198
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %int_usb to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %int_usb, align 1
  %6 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mregs, align 8
  %add.ptr14 = getelementptr i8, ptr %7, i32 76
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14, i8 %5) #7, !srcloc !155
  br label %if.end

if.end:                                           ; preds = %do.body9, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %int_usb to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %int_usb, align 1
  %10 = and i8 %9, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool17.not = icmp eq i8 %10, 0
  br i1 %tobool17.not, label %if.end.if.end22_crit_edge, label %land.lhs.true

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end
  %is_host = getelementptr inbounds %struct.musb, ptr %__hci, i32 0, i32 48
  %11 = ptrtoint ptr %is_host to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_host, align 4, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool18.not = icmp eq i8 %12, 0
  br i1 %tobool18.not, label %if.then19, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %ep_select = getelementptr inbounds %struct.musb, ptr %__hci, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %ep_select to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ep_select, align 4
  %15 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mregs, align 8
  tail call void %14(ptr noundef %16, i8 noundef zeroext 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %17 = load ptr, ptr @musb_writeb, align 4
  %18 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mregs, align 8
  tail call void %17(ptr noundef %19, i32 noundef 0, i8 noundef zeroext 0) #7
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %land.lhs.true.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %20 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mregs, align 8
  %add.ptr26 = getelementptr i8, ptr %21, i32 68
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr26) #7, !srcloc !179
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  %int_tx = getelementptr inbounds %struct.musb, ptr %__hci, i32 0, i32 34
  %24 = ptrtoint ptr %int_tx to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %int_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool31.not = icmp eq i16 %22, 0
  br i1 %tobool31.not, label %if.end22.if.end39_crit_edge, label %do.body33

if.end22.if.end39_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

do.body33:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %int_tx to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %int_tx, align 4
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  %28 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mregs, align 8
  %add.ptr38 = getelementptr i8, ptr %29, i32 68
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr38, i16 %27) #7, !srcloc !189
  br label %if.end39

if.end39:                                         ; preds = %do.body33, %if.end22.if.end39_crit_edge
  %30 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mregs, align 8
  %add.ptr43 = getelementptr i8, ptr %31, i32 70
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr43) #7, !srcloc !179
  %33 = tail call i16 @llvm.bswap.i16(i16 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !202
  %int_rx = getelementptr inbounds %struct.musb, ptr %__hci, i32 0, i32 33
  %34 = ptrtoint ptr %int_rx to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %int_rx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool48.not = icmp eq i16 %32, 0
  br i1 %tobool48.not, label %if.end39.if.end56_crit_edge, label %do.body50

if.end39.if.end56_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

do.body50:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  tail call void @arm_heavy_mb() #7
  %35 = ptrtoint ptr %int_rx to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %int_rx, align 2
  %37 = tail call i16 @llvm.bswap.i16(i16 %36)
  %38 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mregs, align 8
  %add.ptr55 = getelementptr i8, ptr %39, i32 70
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr55, i16 %37) #7, !srcloc !189
  br label %if.end56

if.end56:                                         ; preds = %do.body50, %if.end39.if.end56_crit_edge
  %call57 = tail call i32 @musb_interrupt(ptr noundef %__hci) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %__hci, i32 noundef %call2) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sunxi_sram_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_usb_put_phy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_root_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun4i_usb_phy_set_squelch_detect(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !33, !35, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !67, !68, !69, !71, !73, !75, !76, !78, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !137, !139, !141}
!llvm.module.flags = !{!143, !144, !145, !146, !147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = !{ptr @__initcall__kmod_sunxi__293_841_sunxi_musb_driver_init6, !1, !"__initcall__kmod_sunxi__293_841_sunxi_musb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/musb/sunxi.c", i32 841, i32 1}
!2 = !{ptr @__exitcall_sunxi_musb_driver_exit, !1, !"__exitcall_sunxi_musb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description294, !4, !"__UNIQUE_ID_description294", i1 false, i1 false}
!4 = !{!"../drivers/usb/musb/sunxi.c", i32 843, i32 1}
!5 = !{ptr @__UNIQUE_ID_author295, !6, !"__UNIQUE_ID_author295", i1 false, i1 false}
!6 = !{!"../drivers/usb/musb/sunxi.c", i32 844, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/usb/musb/sunxi.c", i32 845, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/musb/sunxi.c", i32 837, i32 11}
!12 = !{ptr @sunxi_musb_driver, !13, !"sunxi_musb_driver", i1 false, i1 false}
!13 = !{!"../drivers/usb/musb/sunxi.c", i32 833, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/musb/sunxi.c", i32 683, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sunxi_musb_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sunxi_musb_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/musb/sunxi.c", i32 712, i32 3}
!24 = !{ptr @sunxi_musb_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sunxi_musb_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/musb/sunxi.c", i32 716, i32 35}
!28 = !{ptr @sunxi_musb_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/usb/musb/sunxi.c", i32 722, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/musb/sunxi.c", i32 725, i32 34}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/musb/sunxi.c", i32 728, i32 34}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/musb/sunxi.c", i32 731, i32 34}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/musb/sunxi.c", i32 739, i32 3}
!39 = !{ptr @sunxi_musb_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @sunxi_musb_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/musb/sunxi.c", i32 749, i32 4}
!43 = !{ptr @sunxi_musb_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @sunxi_musb_probe._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/musb/sunxi.c", i32 759, i32 3}
!47 = !{ptr @sunxi_musb_probe._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @sunxi_musb_probe._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/musb/sunxi.c", i32 763, i32 39}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/musb/sunxi.c", i32 767, i32 3}
!53 = !{ptr @sunxi_musb_probe._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @sunxi_musb_probe._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/musb/sunxi.c", i32 774, i32 3}
!57 = !{ptr @sunxi_musb_probe._entry.27, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @sunxi_musb_probe._entry_ptr.29, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/musb/sunxi.c", i32 782, i32 3}
!61 = !{ptr @sunxi_musb_probe._entry.30, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @sunxi_musb_probe._entry_ptr.32, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/musb/sunxi.c", i32 789, i32 16}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/musb/sunxi.c", i32 802, i32 3}
!67 = !{ptr @sunxi_musb_probe._entry.34, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @sunxi_musb_probe._entry_ptr.36, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @sunxi_musb_ops, !70, !"sunxi_musb_ops", i1 false, i1 false}
!70 = !{!"../drivers/usb/musb/sunxi.c", i32 602, i32 39}
!71 = !{ptr @sunxi_musb, !72, !"sunxi_musb", i1 false, i1 false}
!72 = !{!"../drivers/usb/musb/sunxi.c", i32 71, i32 21}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../drivers/usb/musb/sunxi.c", i32 399, i32 2}
!75 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/musb/sunxi.c", i32 444, i32 4}
!78 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @sunxi_musb_readb._entry, !77, !"_entry", i1 false, i1 false}
!81 = !{ptr @sunxi_musb_readb._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/musb/sunxi.c", i32 457, i32 4}
!84 = !{ptr @sunxi_musb_readb._entry.41, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @sunxi_musb_readb._entry_ptr.43, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/musb/sunxi.c", i32 469, i32 2}
!88 = !{ptr @sunxi_musb_readb._entry.44, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @sunxi_musb_readb._entry_ptr.46, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/musb/sunxi.c", i32 492, i32 5}
!92 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @sunxi_musb_writeb._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @sunxi_musb_writeb._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @sunxi_musb_writeb._entry.49, !96, !"_entry", i1 false, i1 false}
!96 = !{!"../drivers/usb/musb/sunxi.c", i32 502, i32 4}
!97 = !{ptr @sunxi_musb_writeb._entry_ptr.50, !96, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/musb/sunxi.c", i32 515, i32 4}
!100 = !{ptr @sunxi_musb_writeb._entry.51, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @sunxi_musb_writeb._entry_ptr.53, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/musb/sunxi.c", i32 526, i32 2}
!104 = !{ptr @sunxi_musb_writeb._entry.54, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @sunxi_musb_writeb._entry_ptr.56, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.57, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/musb/sunxi.c", i32 553, i32 4}
!108 = !{ptr @.str.58, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @sunxi_musb_readw._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @sunxi_musb_readw._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.60, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/musb/sunxi.c", i32 562, i32 2}
!113 = !{ptr @sunxi_musb_readw._entry.59, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @sunxi_musb_readw._entry_ptr.61, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.62, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/musb/sunxi.c", i32 588, i32 4}
!117 = !{ptr @.str.63, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @sunxi_musb_writew._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @sunxi_musb_writew._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.65, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/musb/sunxi.c", i32 597, i32 2}
!122 = !{ptr @sunxi_musb_writew._entry.64, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @sunxi_musb_writew._entry_ptr.66, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.67, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/musb/sunxi.c", i32 340, i32 3}
!126 = !{ptr @.str.68, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @sunxi_musb_set_mode._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @sunxi_musb_set_mode._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.70, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/musb/sunxi.c", i32 349, i32 3}
!131 = !{ptr @sunxi_musb_set_mode._entry.69, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @sunxi_musb_set_mode._entry_ptr.71, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @sunxi_musb_hdrc_config, !134, !"sunxi_musb_hdrc_config", i1 false, i1 false}
!134 = !{!"../drivers/usb/musb/sunxi.c", i32 655, i32 38}
!135 = !{ptr @sunxi_musb_mode_cfg, !136, !"sunxi_musb_mode_cfg", i1 false, i1 false}
!136 = !{!"../drivers/usb/musb/sunxi.c", i32 628, i32 29}
!137 = !{ptr @sunxi_musb_hdrc_config_h3, !138, !"sunxi_musb_hdrc_config_h3", i1 false, i1 false}
!138 = !{!"../drivers/usb/musb/sunxi.c", i32 664, i32 32}
!139 = !{ptr @sunxi_musb_mode_cfg_h3, !140, !"sunxi_musb_mode_cfg_h3", i1 false, i1 false}
!140 = !{!"../drivers/usb/musb/sunxi.c", i32 644, i32 29}
!141 = !{ptr @sunxi_musb_match, !142, !"sunxi_musb_match", i1 false, i1 false}
!142 = !{!"../drivers/usb/musb/sunxi.c", i32 824, i32 34}
!143 = !{i32 1, !"wchar_size", i32 2}
!144 = !{i32 1, !"min_enum_size", i32 4}
!145 = !{i32 8, !"branch-target-enforcement", i32 0}
!146 = !{i32 8, !"sign-return-address", i32 0}
!147 = !{i32 8, !"sign-return-address-all", i32 0}
!148 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!149 = !{i32 7, !"uwtable", i32 1}
!150 = !{i32 7, !"frame-pointer", i32 2}
!151 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!152 = !{i64 4835495}
!153 = !{i64 2155474132}
!154 = !{i64 2155474640}
!155 = !{i64 4835100}
!156 = !{i64 2155479848}
!157 = !{!"branch_weights", i32 2000, i32 1}
!158 = !{i64 2155485597}
!159 = !{i64 2155485833}
!160 = !{i64 2155486069}
!161 = !{i64 2155486305}
!162 = !{i64 2155486541}
!163 = !{i64 2155486782}
!164 = !{i64 2155487018}
!165 = !{i64 2155487254}
!166 = !{i64 2155487520}
!167 = !{i64 2155489681}
!168 = !{i64 2155491619}
!169 = !{i64 2155493700}
!170 = !{i64 2155493973}
!171 = !{i64 2155494246}
!172 = !{i64 2155494519}
!173 = !{i64 2155494792}
!174 = !{i64 2155496807}
!175 = !{i64 2155497080}
!176 = !{i64 2155497353}
!177 = !{i64 2155499551}
!178 = !{i64 2155501535}
!179 = !{i64 4834877}
!180 = !{i64 2155503934}
!181 = !{i64 2155504416}
!182 = !{i64 2155504898}
!183 = !{i64 2155505380}
!184 = !{i64 2155505862}
!185 = !{i64 2155506344}
!186 = !{i64 2155506826}
!187 = !{i64 2155509010}
!188 = !{i64 2155511091}
!189 = !{i64 4834677}
!190 = !{i64 2155511488}
!191 = !{i64 2155511885}
!192 = !{i64 2155512282}
!193 = !{i64 2155512679}
!194 = !{i64 2155513076}
!195 = !{i64 2155513473}
!196 = !{i64 2155515576}
!197 = !{i64 2155475881}
!198 = !{i64 2155476115}
!199 = !{i8 0, i8 2}
!200 = !{i64 2155476769}
!201 = !{i64 2155477002}
!202 = !{i64 2155477712}
!203 = !{i64 2155477945}
