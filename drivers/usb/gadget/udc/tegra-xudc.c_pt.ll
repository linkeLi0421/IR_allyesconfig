; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/tegra-xudc.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/tegra-xudc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_xudc_soc = type { ptr, i32, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.tegra_xudc = type { ptr, ptr, ptr, %struct.spinlock, %struct.usb_gadget, ptr, [2 x ptr], [2 x i32], i32, i32, i8, [32 x %struct.tegra_xudc_ep], ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, %struct.tegra_xudc_setup_packet, i32, i16, i16, i16, %struct.tegra_xudc_sel_timing, i8, i16, ptr, i8, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, i8, %struct.work_struct, ptr, ptr, ptr, ptr, %struct.tegra_xudc_save_regs, i8, i8, ptr, ptr, %struct.notifier_block, %struct.completion, i8, %struct.delayed_work, i8, %struct.delayed_work, i8 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.tegra_xudc_ep = type { ptr, %struct.usb_ep, i32, [8 x i8], ptr, ptr, i32, i32, i32, i8, i8, i8, %struct.list_head, ptr, ptr }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.tegra_xudc_setup_packet = type { %struct.usb_ctrlrequest, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.tegra_xudc_sel_timing = type { i8, i8, i16, i16 }
%struct.tegra_xudc_save_regs = type { i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.tegra_xudc_trb = type { i32, i32, i32, i32 }
%struct.tegra_xudc_ep_context = type { i32, i32, i32, i32, i32, [11 x i32] }
%struct.tegra_xudc_request = type { %struct.usb_request, i32, i32, i32, i8, ptr, ptr, %struct.list_head }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_tegra_xudc__341_4036_tegra_xudc_driver_init6 = internal global ptr @tegra_xudc_driver_init, section ".initcall6.init", align 4
@tegra_xudc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_xudc_probe, ptr @tegra_xudc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_xudc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_xudc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra_xudc_driver_exit = internal global ptr @tegra_xudc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description342 = internal constant [59 x i8] c"tegra_xudc.description=NVIDIA Tegra XUSB Device Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author343 = internal constant [60 x i8] c"tegra_xudc.author=Andrew Bresticker <abrestic@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author344 = internal constant [42 x i8] c"tegra_xudc.author=Hui Fu <hfu@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author345 = internal constant [58 x i8] c"tegra_xudc.author=Nagarjuna Kristam <nkristam@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file346 = internal constant [50 x i8] c"tegra_xudc.file=drivers/usb/gadget/udc/tegra-xudc\00", section ".modinfo", align 1
@__UNIQUE_ID_license347 = internal constant [26 x i8] c"tegra_xudc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tegra-xudc\00", [21 x i8] zeroinitializer }, align 32
@tegra_xudc_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-xudc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_xudc_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-xudc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra186_xudc_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-xudc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra194_xudc_soc_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@tegra_xudc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_xudc_suspend, ptr @tegra_xudc_resume, ptr @tegra_xudc_suspend, ptr @tegra_xudc_resume, ptr @tegra_xudc_suspend, ptr @tegra_xudc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_xudc_runtime_suspend, ptr @tegra_xudc_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"base\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fpci\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ipfs\00", [27 x i8] zeroinitializer }, align 32
@tegra_xudc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 3766, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to claim IRQ#%u: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tegra_xudc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/usb/gadget/udc/tegra-xudc.c\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_xudc_probe._entry_ptr = internal global ptr @tegra_xudc_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to request clocks\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to request regulators\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_xudc_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.6, i32 3805, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable regulators: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_xudc_probe._entry_ptr.13 = internal global ptr @tegra_xudc_probe._entry.11, section ".printk_index", align 4
@tegra_xudc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&xudc->lock\00", [20 x i8] zeroinitializer }, align 32
@tegra_xudc_probe.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&xudc->usb_role_sw_work)\00", [53 x i8] zeroinitializer }, align 32
@tegra_xudc_probe.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&(&xudc->plc_reset_work)->work)\00", [46 x i8] zeroinitializer }, align 32
@tegra_xudc_probe.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&(&xudc->plc_reset_work)->timer\00", [32 x i8] zeroinitializer }, align 32
@tegra_xudc_probe.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"(work_completion)(&(&xudc->port_reset_war_work)->work)\00", [41 x i8] zeroinitializer }, align 32
@tegra_xudc_probe.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"&(&xudc->port_reset_war_work)->timer\00", [59 x i8] zeroinitializer }, align 32
@tegra_xudc_gadget_ops = internal constant { %struct.usb_gadget_ops, [36 x i8] } { %struct.usb_gadget_ops { ptr @tegra_xudc_gadget_get_frame, ptr @tegra_xudc_gadget_wakeup, ptr @tegra_xudc_set_selfpowered, ptr null, ptr @tegra_xudc_gadget_vbus_draw, ptr @tegra_xudc_gadget_pullup, ptr null, ptr null, ptr @tegra_xudc_gadget_start, ptr @tegra_xudc_gadget_stop, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_xudc_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.5, ptr @.str.6, i32 3849, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to add USB gadget: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_xudc_probe._entry_ptr.27 = internal global ptr @tegra_xudc_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EVENT\00", [26 x i8] zeroinitializer }, align 32
@tegra_xudc_handle_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.6, i32 3079, ptr @.str.31, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unrecognized TRB type = %#x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_xudc_handle_event\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tegra_xudc_handle_event._entry_ptr = internal global ptr @tegra_xudc_handle_event._entry, section ".printk_index", align 4
@dump_trb.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.33, ptr @.str.6, ptr @.str.34, i8 0, i8 -100, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tegra_xudc\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dump_trb\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: %p, lo = %#x, hi = %#x, status = %#x, control = %#x\0A\00", [39 x i8] zeroinitializer }, align 32
@__tegra_xudc_handle_port_status.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.35, ptr @.str.6, ptr @.str.36, i8 2, i8 -26, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"__tegra_xudc_handle_port_status\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"STCHG_REQ, PORTHALT = %#x\0A\00", [37 x i8] zeroinitializer }, align 32
@__tegra_xudc_handle_port_status.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.35, ptr @.str.6, ptr @.str.37, i8 2, i8 -24, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PRC, PR, PORTSC = %#x\0A\00", [41 x i8] zeroinitializer }, align 32
@__tegra_xudc_handle_port_status.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.35, ptr @.str.6, ptr @.str.38, i8 2, i8 -22, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PRC, Not PR, PORTSC = %#x\0A\00", [37 x i8] zeroinitializer }, align 32
@__tegra_xudc_handle_port_status.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.35, ptr @.str.6, ptr @.str.39, i8 2, i8 -19, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WRC, PORTSC = %#x\0A\00", [45 x i8] zeroinitializer }, align 32
@__tegra_xudc_handle_port_status.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.35, ptr @.str.6, ptr @.str.40, i8 2, i8 -17, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CSC, PORTSC = %#x\0A\00", [45 x i8] zeroinitializer }, align 32
@__tegra_xudc_handle_port_status.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.35, ptr @.str.6, ptr @.str.41, i8 2, i8 -13, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PLC, PORTSC = %#x\0A\00", [45 x i8] zeroinitializer }, align 32
@__tegra_xudc_handle_port_status._entry = internal constant %struct.pi_entry { ptr @.str.42, ptr @.str.35, ptr @.str.6, i32 3047, ptr @.str.43, ptr @.str.8 }, align 1
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CEC, PORTSC = %#x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@__tegra_xudc_handle_port_status._entry_ptr = internal global ptr @__tegra_xudc_handle_port_status._entry, section ".printk_index", align 4
@__tegra_xudc_handle_port_status.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.35, ptr @.str.6, ptr @.str.44, i8 2, i8 -6, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PORTSC = %#x\0A\00", [18 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tegra_xudc_req_done.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.45, ptr @.str.6, ptr @.str.46, i8 1, i8 0, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tegra_xudc_req_done\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"completing request %p on EP %u with status %d\0A\00", [49 x i8] zeroinitializer }, align 32
@tegra_xudc_ep0_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 0, i16 16384, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@tegra_xudc_port_suspend.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.47, ptr @.str.6, ptr @.str.48, i8 2, i8 -37, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_xudc_port_suspend\00", [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"port suspend\0A\00", [18 x i8] zeroinitializer }, align 32
@tegra_xudc_port_resume.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.49, ptr @.str.6, ptr @.str.50, i8 2, i8 -33, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tegra_xudc_port_resume\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"port resume\0A\00", [19 x i8] zeroinitializer }, align 32
@tegra_xudc_ep_ring_doorbell.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.51, ptr @.str.6, ptr @.str.52, i8 1, i8 49, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tegra_xudc_ep_ring_doorbell\00", [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ring doorbell: %#x\0A\00", [44 x i8] zeroinitializer }, align 32
@tegra_xudc_handle_transfer_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.6, i32 2698, ptr @.str.43, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"transfer event on disabled EP %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tegra_xudc_handle_transfer_event\00", [63 x i8] zeroinitializer }, align 32
@tegra_xudc_handle_transfer_event._entry_ptr = internal global ptr @tegra_xudc_handle_transfer_event._entry, section ".printk_index", align 4
@tegra_xudc_handle_transfer_event._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.6, i32 2719, ptr @.str.31, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stream rejected on EP %u\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_xudc_handle_transfer_event._entry_ptr.57 = internal global ptr @tegra_xudc_handle_transfer_event._entry.55, section ".printk_index", align 4
@tegra_xudc_handle_transfer_event._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.6, i32 2724, ptr @.str.31, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"prime pipe received on EP %u\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_xudc_handle_transfer_event._entry_ptr.60 = internal global ptr @tegra_xudc_handle_transfer_event._entry.58, section ".printk_index", align 4
@tegra_xudc_handle_transfer_event._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.54, ptr @.str.6, i32 2755, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"completion error %#x on EP %u\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_xudc_handle_transfer_event._entry_ptr.63 = internal global ptr @tegra_xudc_handle_transfer_event._entry.61, section ".printk_index", align 4
@tegra_xudc_handle_transfer_event._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.54, ptr @.str.6, i32 2760, ptr @.str.31, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sequence number error\0A\00", [41 x i8] zeroinitializer }, align 32
@tegra_xudc_handle_transfer_event._entry_ptr.66 = internal global ptr @tegra_xudc_handle_transfer_event._entry.64, section ".printk_index", align 4
@tegra_xudc_handle_transfer_event.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.54, ptr @.str.6, ptr @.str.67, i8 2, i8 -74, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"stop completion code on EP %u\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_xudc_handle_transfer_event.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.54, ptr @.str.6, ptr @.str.68, i8 2, i8 -72, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"completion event %#x on EP %u\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_xudc_handle_transfer_completion.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.69, ptr @.str.6, ptr @.str.70, i8 2, i8 -102, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"tegra_xudc_handle_transfer_completion\00", [58 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bytes transferred %u / %u\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra_xudc_handle_transfer_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.6, i32 2681, ptr @.str.43, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"transfer event on dequeued request\0A\00", [60 x i8] zeroinitializer }, align 32
@tegra_xudc_handle_transfer_completion._entry_ptr = internal global ptr @tegra_xudc_handle_transfer_completion._entry, section ".printk_index", align 4
@trb_in_request.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.72, ptr @.str.6, ptr @.str.73, i8 1, i8 87, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"trb_in_request\00", [17 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: request %p -> %p; trb %p\0A\00", [34 x i8] zeroinitializer }, align 32
@__tegra_xudc_ep_queue._entry = internal constant %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.6, i32 1251, ptr @.str.7, ptr @.str.8 }, align 1
@.str.74 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"control EP has pending transfers\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__tegra_xudc_ep_queue\00", [42 x i8] zeroinitializer }, align 32
@__tegra_xudc_ep_queue._entry_ptr = internal global ptr @__tegra_xudc_ep_queue._entry, section ".printk_index", align 4
@__tegra_xudc_ep_queue._entry.76 = internal constant %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.6, i32 1265, ptr @.str.7, ptr @.str.8 }, align 1
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to map request: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@__tegra_xudc_ep_queue._entry_ptr.78 = internal global ptr @__tegra_xudc_ep_queue._entry.76, section ".printk_index", align 4
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TRANSFER\00", [23 x i8] zeroinitializer }, align 32
@tegra_xudc_handle_ep0_setup_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.6, i32 2577, ptr @.str.43, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid sequence number detected\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"tegra_xudc_handle_ep0_setup_packet\00", [61 x i8] zeroinitializer }, align 32
@tegra_xudc_handle_ep0_setup_packet._entry_ptr = internal global ptr @tegra_xudc_handle_ep0_setup_packet._entry, section ".printk_index", align 4
@tegra_xudc_handle_ep0_setup_packet._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.6, i32 2594, ptr @.str.43, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"setup request failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_xudc_handle_ep0_setup_packet._entry_ptr.84 = internal global ptr @tegra_xudc_handle_ep0_setup_packet._entry.82, section ".printk_index", align 4
@tegra_xudc_ep0_standard_req.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.85, ptr @.str.6, ptr @.str.86, i8 2, i8 119, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tegra_xudc_ep0_standard_req\00", [36 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"USB_REQ_GET_STATUS\0A\00", [44 x i8] zeroinitializer }, align 32
@tegra_xudc_ep0_standard_req.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.85, ptr @.str.6, ptr @.str.87, i8 2, i8 120, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"USB_REQ_SET_ADDRESS\0A\00", [43 x i8] zeroinitializer }, align 32
@tegra_xudc_ep0_standard_req.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.85, ptr @.str.6, ptr @.str.88, i8 2, i8 121, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"USB_REQ_SET_SEL\0A\00", [47 x i8] zeroinitializer }, align 32
@tegra_xudc_ep0_standard_req.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.85, ptr @.str.6, ptr @.str.89, i8 2, i8 122, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"USB_REQ_SET_ISOCH_DELAY\0A\00", [39 x i8] zeroinitializer }, align 32
@tegra_xudc_ep0_standard_req.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.85, ptr @.str.6, ptr @.str.90, i8 2, i8 123, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"USB_REQ_CLEAR/SET_FEATURE\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra_xudc_ep0_standard_req.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.85, ptr @.str.6, ptr @.str.91, i8 2, i8 124, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"USB_REQ_SET_CONFIGURATION\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra_xudc_ep0_set_address.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.92, ptr @.str.6, ptr @.str.93, i8 2, i8 114, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra_xudc_ep0_set_address\00", [37 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"set address: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@__tegra_xudc_ep_set_halt._entry = internal constant %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.6, i32 1542, ptr @.str.7, ptr @.str.8 }, align 1
@.str.94 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"can't halt isochronous EP\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"__tegra_xudc_ep_set_halt\00", [39 x i8] zeroinitializer }, align 32
@__tegra_xudc_ep_set_halt._entry_ptr = internal global ptr @__tegra_xudc_ep_set_halt._entry, section ".printk_index", align 4
@__tegra_xudc_ep_set_halt.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.95, ptr @.str.6, ptr @.str.96, i8 1, i8 -125, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EP %u already %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"halted\00", [25 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"not halted\00", [21 x i8] zeroinitializer }, align 32
@__const.tegra_xudc_phy_get.phy_name = private unnamed_addr constant [7 x i8] c"usb.-.\00", align 1
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb2-%d\00", [24 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get usb2-%d PHY\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get usbphy-%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb3-%d\00", [24 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get usb3-%d PHY\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra_xudc_phy_get.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.104, ptr @.str.6, ptr @.str.105, i8 3, i8 117, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra_xudc_phy_get\00", [45 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usb3-%d PHY registered\00", [41 x i8] zeroinitializer }, align 32
@tegra_xudc_vbus_notify.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.106, ptr @.str.6, ptr @.str.107, i8 0, i8 -55, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tegra_xudc_vbus_notify\00", [41 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s(): event is %d\0A\00", [45 x i8] zeroinitializer }, align 32
@tegra_xudc_vbus_notify.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.106, ptr @.str.6, ptr @.str.108, i8 0, i8 -54, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Same role(%d) received. Ignore\00", [33 x i8] zeroinitializer }, align 32
@tegra_xudc_vbus_notify.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.106, ptr @.str.6, ptr @.str.109, i8 0, i8 -52, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(): current phy index is %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_xudc_get_phy_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.6, i32 792, ptr @.str.31, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"phy index could not be found for shared USB PHY\00", [48 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_xudc_get_phy_index\00", [39 x i8] zeroinitializer }, align 32
@tegra_xudc_get_phy_index._entry_ptr = internal global ptr @tegra_xudc_get_phy_index._entry, section ".printk_index", align 4
@.str.112 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dev\00", [28 x i8] zeroinitializer }, align 32
@tegra_xudc_powerdomain_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.6, i32 3694, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to get device power domain: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tegra_xudc_powerdomain_init\00", [36 x i8] zeroinitializer }, align 32
@tegra_xudc_powerdomain_init._entry_ptr = internal global ptr @tegra_xudc_powerdomain_init._entry, section ".printk_index", align 4
@.str.115 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ss\00", [29 x i8] zeroinitializer }, align 32
@tegra_xudc_powerdomain_init._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.114, ptr @.str.6, i32 3701, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to get SuperSpeed power domain: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@tegra_xudc_powerdomain_init._entry_ptr.118 = internal global ptr @tegra_xudc_powerdomain_init._entry.116, section ".printk_index", align 4
@tegra_xudc_powerdomain_init._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.114, ptr @.str.6, i32 3709, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to add USB device link\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_xudc_powerdomain_init._entry_ptr.121 = internal global ptr @tegra_xudc_powerdomain_init._entry.119, section ".printk_index", align 4
@tegra_xudc_powerdomain_init._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.114, ptr @.str.6, i32 3717, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to add SuperSpeed device link\0A\00", [58 x i8] zeroinitializer }, align 32
@tegra_xudc_powerdomain_init._entry_ptr.124 = internal global ptr @tegra_xudc_powerdomain_init._entry.122, section ".printk_index", align 4
@tegra_xudc_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.6, i32 3576, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"UTMI PHY #%u initialization failed: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tegra_xudc_phy_init\00", [44 x i8] zeroinitializer }, align 32
@tegra_xudc_phy_init._entry_ptr = internal global ptr @tegra_xudc_phy_init._entry, section ".printk_index", align 4
@tegra_xudc_phy_init._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.6, i32 3582, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"USB3 PHY #%u initialization failed: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@tegra_xudc_phy_init._entry_ptr.129 = internal global ptr @tegra_xudc_phy_init._entry.127, section ".printk_index", align 4
@.str.130 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep%u%s\00", [25 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@tegra_xudc_ep_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @tegra_xudc_ep_enable, ptr @tegra_xudc_ep_disable, ptr null, ptr @tegra_xudc_ep_alloc_request, ptr @tegra_xudc_ep_free_request, ptr @tegra_xudc_ep_queue, ptr @tegra_xudc_ep_dequeue, ptr @tegra_xudc_ep_set_halt, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep0\00", [28 x i8] zeroinitializer }, align 32
@tegra_xudc_ep0_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @tegra_xudc_ep0_enable, ptr @tegra_xudc_ep0_disable, ptr null, ptr @tegra_xudc_ep_alloc_request, ptr @tegra_xudc_ep_free_request, ptr @tegra_xudc_ep_queue, ptr @tegra_xudc_ep_dequeue, ptr @tegra_xudc_ep_set_halt, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__tegra_xudc_ep_enable._entry = internal constant %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.6, i32 1791, ptr @.str.7, ptr @.str.8 }, align 1
@.str.134 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"too many isochronous endpoints\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__tegra_xudc_ep_enable\00", [41 x i8] zeroinitializer }, align 32
@__tegra_xudc_ep_enable._entry_ptr = internal global ptr @__tegra_xudc_ep_enable._entry, section ".printk_index", align 4
@__tegra_xudc_ep_enable._entry.136 = internal constant %struct.pi_entry { ptr @.str.137, ptr @.str.135, ptr @.str.6, i32 1856, ptr @.str.31, ptr @.str.8 }, align 1
@.str.137 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"EP %u (type: %s, dir: %s) enabled\0A\00", [61 x i8] zeroinitializer }, align 32
@__tegra_xudc_ep_enable._entry_ptr.138 = internal global ptr @__tegra_xudc_ep_enable._entry.136, section ".printk_index", align 4
@__tegra_xudc_ep_disable._entry = internal constant %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.6, i32 1700, ptr @.str.7, ptr @.str.8 }, align 1
@.str.139 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"endpoint %u already disabled\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__tegra_xudc_ep_disable\00", [40 x i8] zeroinitializer }, align 32
@__tegra_xudc_ep_disable._entry_ptr = internal global ptr @__tegra_xudc_ep_disable._entry, section ".printk_index", align 4
@__tegra_xudc_ep_disable._entry.141 = internal constant %struct.pi_entry { ptr @.str.142, ptr @.str.140, ptr @.str.6, i32 1740, ptr @.str.31, ptr @.str.8 }, align 1
@.str.142 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ep %u disabled\0A\00", [16 x i8] zeroinitializer }, align 32
@__tegra_xudc_ep_disable._entry_ptr.143 = internal global ptr @__tegra_xudc_ep_disable._entry.141, section ".printk_index", align 4
@tegra_xudc_ep_context_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.6, i32 1627, ptr @.str.43, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid endpoint maxburst\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tegra_xudc_ep_context_setup\00", [36 x i8] zeroinitializer }, align 32
@tegra_xudc_ep_context_setup._entry_ptr = internal global ptr @tegra_xudc_ep_context_setup._entry, section ".printk_index", align 4
@trb_before_request.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.146, ptr @.str.6, ptr @.str.147, i8 1, i8 93, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"trb_before_request\00", [45 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: request %p -> %p; enq ptr: %p; trb %p\0A\00", [53 x i8] zeroinitializer }, align 32
@tegra_xudc_ep_set_halt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.6, i32 1593, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"can't halt EP with requests pending\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tegra_xudc_ep_set_halt\00", [41 x i8] zeroinitializer }, align 32
@tegra_xudc_ep_set_halt._entry_ptr = internal global ptr @tegra_xudc_ep_set_halt._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.150 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@tegra_xudc_device_mode_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.6, i32 708, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"UTMI power on failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra_xudc_device_mode_on\00", [38 x i8] zeroinitializer }, align 32
@tegra_xudc_device_mode_on._entry_ptr = internal global ptr @tegra_xudc_device_mode_on._entry, section ".printk_index", align 4
@tegra_xudc_device_mode_on._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.152, ptr @.str.6, i32 712, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"USB3 PHY power on failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_xudc_device_mode_on._entry_ptr.155 = internal global ptr @tegra_xudc_device_mode_on._entry.153, section ".printk_index", align 4
@tegra_xudc_device_mode_on.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.152, ptr @.str.6, ptr @.str.156, i8 0, i8 -78, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.156 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"device mode on\0A\00", [16 x i8] zeroinitializer }, align 32
@tegra_xudc_device_mode_off.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.157, ptr @.str.6, ptr @.str.158, i8 0, i8 -75, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.157 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra_xudc_device_mode_off\00", [37 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"device mode off\0A\00", [47 x i8] zeroinitializer }, align 32
@tegra_xudc_device_mode_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.157, ptr @.str.6, i32 762, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"UTMI PHY power off failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_xudc_device_mode_off._entry_ptr = internal global ptr @tegra_xudc_device_mode_off._entry, section ".printk_index", align 4
@tegra_xudc_device_mode_off._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.157, ptr @.str.6, i32 766, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"USB3 PHY power off failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_xudc_device_mode_off._entry_ptr.162 = internal global ptr @tegra_xudc_device_mode_off._entry.160, section ".printk_index", align 4
@tegra_xudc_plc_reset_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.164, ptr @.str.6, i32 844, ptr @.str.31, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PLS = Inactive. Toggle VBUS\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra_xudc_plc_reset_work\00", [38 x i8] zeroinitializer }, align 32
@tegra_xudc_plc_reset_work._entry_ptr = internal global ptr @tegra_xudc_plc_reset_work._entry, section ".printk_index", align 4
@tegra_xudc_port_reset_war_work.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.165, ptr @.str.6, ptr @.str.166, i8 0, i8 -39, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.165 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tegra_xudc_port_reset_war_work\00", [33 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pls = %x\0A\00", [22 x i8] zeroinitializer }, align 32
@tegra_xudc_port_reset_war_work.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.165, ptr @.str.6, ptr @.str.167, i8 0, i8 -38, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.167 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"toggle vbus\0A\00", [19 x i8] zeroinitializer }, align 32
@tegra_xudc_gadget_wakeup.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.168, ptr @.str.6, ptr @.str.169, i8 1, i8 -11, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.168 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_xudc_gadget_wakeup\00", [39 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: PORTPM=%#x, speed=%x\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_xudc_gadget_wakeup.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.168, ptr @.str.6, ptr @.str.170, i8 1, i8 -6, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.170 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: ret value is %d\00", [44 x i8] zeroinitializer }, align 32
@tegra_xudc_set_selfpowered.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.171, ptr @.str.6, ptr @.str.172, i8 2, i8 29, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.171 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra_xudc_set_selfpowered\00", [37 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %d\0A\00", [24 x i8] zeroinitializer }, align 32
@tegra_xudc_gadget_vbus_draw.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.173, ptr @.str.6, ptr @.str.174, i8 2, i8 26, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.173 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tegra_xudc_gadget_vbus_draw\00", [36 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: %u mA\0A\00", [21 x i8] zeroinitializer }, align 32
@tegra_xudc_gadget_pullup.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.175, ptr @.str.6, ptr @.str.176, i8 2, i8 0, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.175 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_xudc_gadget_pullup\00", [39 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: pullup:%d\00", [18 x i8] zeroinitializer }, align 32
@tegra_xudc_gadget_start.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.177, ptr @.str.6, ptr @.str.170, i8 2, i8 15, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.177 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_xudc_gadget_start\00", [40 x i8] zeroinitializer }, align 32
@tegra_xudc_gadget_stop.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.178, ptr @.str.6, ptr @.str.179, i8 2, i8 22, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.178 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tegra_xudc_gadget_stop\00", [41 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Gadget stopped\00", [17 x i8] zeroinitializer }, align 32
@tegra210_xudc_soc_data = internal global { %struct.tegra_xudc_soc, [36 x i8] } { %struct.tegra_xudc_soc { ptr @tegra210_xudc_supply_names, i32 2, ptr @tegra210_xudc_clock_names, i32 5, i32 4, i8 0, i8 1, i8 0, i8 1, i8 1, i8 1, i8 0, i8 1 }, [36 x i8] zeroinitializer }, align 32
@tegra186_xudc_soc_data = internal global { %struct.tegra_xudc_soc, [36 x i8] } { %struct.tegra_xudc_soc { ptr null, i32 0, ptr @tegra186_xudc_clock_names, i32 4, i32 4, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [36 x i8] zeroinitializer }, align 32
@tegra194_xudc_soc_data = internal global { %struct.tegra_xudc_soc, [36 x i8] } { %struct.tegra_xudc_soc { ptr null, i32 0, ptr @tegra186_xudc_clock_names, i32 4, i32 4, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0 }, [36 x i8] zeroinitializer }, align 32
@tegra210_xudc_supply_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.180, ptr @.str.181], [24 x i8] zeroinitializer }, align 32
@tegra210_xudc_clock_names = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.112, ptr @.str.115, ptr @.str.182, ptr @.str.183, ptr @.str.184], [44 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hvdd-usb\00", [23 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"avddio-usb\00", [21 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ss_src\00", [25 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hs_src\00", [25 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fs_src\00", [25 x i8] zeroinitializer }, align 32
@tegra186_xudc_clock_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.112, ptr @.str.115, ptr @.str.182, ptr @.str.184], [16 x i8] zeroinitializer }, align 32
@tegra_xudc_powergate.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.185, ptr @.str.6, ptr @.str.186, i8 3, i8 -47, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.185 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tegra_xudc_powergate\00", [43 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"entering ELPG\0A\00", [17 x i8] zeroinitializer }, align 32
@tegra_xudc_powergate.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.185, ptr @.str.6, ptr @.str.187, i8 3, i8 -43, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.187 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"entering ELPG done\0A\00", [44 x i8] zeroinitializer }, align 32
@tegra_xudc_unpowergate.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.188, ptr @.str.6, ptr @.str.189, i8 3, i8 -41, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.188 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tegra_xudc_unpowergate\00", [41 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"exiting ELPG\0A\00", [18 x i8] zeroinitializer }, align 32
@tegra_xudc_unpowergate.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.188, ptr @.str.6, ptr @.str.190, i8 3, i8 -34, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.190 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"exiting ELPG done\0A\00", [45 x i8] zeroinitializer }, align 32
@switch.table.tegra_xudc_port_connect = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 1, i32 3, i32 5], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 34, i64 63]
@__sancov_gen_cov_switch_values.191 = internal global [17 x i64] [i64 15, i64 8, i64 1, i64 3, i64 4, i64 5, i64 10, i64 13, i64 14, i64 15, i64 26, i64 31, i64 219, i64 220, i64 221, i64 222, i64 223]
@__sancov_gen_cov_switch_values.192 = internal global [4 x i64] [i64 2, i64 32, i64 2097152, i64 2097168]
@__sancov_gen_cov_switch_values.193 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 3, i64 6, i64 15]
@__sancov_gen_cov_switch_values.194 = internal global [4 x i64] [i64 2, i64 5, i64 0, i64 31]
@__sancov_gen_cov_switch_values.195 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.196 = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 1]
@__sancov_gen_cov_switch_values.197 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.198 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 3, i64 5, i64 9, i64 48, i64 49]
@__sancov_gen_cov_switch_values.199 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.200 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@__sancov_gen_cov_switch_values.201 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.202 = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 2, i64 48, i64 49]
@__sancov_gen_cov_switch_values.203 = internal global [4 x i64] [i64 2, i64 16, i64 12288, i64 12544]
@__sancov_gen_cov_switch_values.204 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.205 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.206 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@__sancov_gen_cov_switch_values.207 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@__sancov_gen_cov_switch_values.208 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 15]
@___asan_gen_.209 = private unnamed_addr constant [18 x i8] c"tegra_xudc_driver\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 4027, i32 31 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 4031, i32 11 }
@___asan_gen_.215 = private unnamed_addr constant [20 x i8] c"tegra_xudc_of_match\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3657, i32 34 }
@___asan_gen_.218 = private unnamed_addr constant [18 x i8] c"tegra_xudc_pm_ops\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 4021, i32 32 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3742, i32 59 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3748, i32 59 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3753, i32 60 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3765, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3780, i32 33 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3795, i32 33 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3805, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3829, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3833, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3835, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3837, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant [22 x i8] c"tegra_xudc_gadget_ops\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 2171, i32 36 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3849, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3066, i32 17 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3079, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 622, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 2969, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 2976, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 2987, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 2996, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3004, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3022, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3047, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3051, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 1026, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant [20 x i8] c"tegra_xudc_ep0_desc\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 538, i32 39 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 2926, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 2941, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 1223, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 2697, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 2719, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 2724, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 2754, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 2760, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 2777, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 2784, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 2663, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 2681, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 1374, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 1251, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 1265, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 1136, i32 17 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 2577, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 2594, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 2524, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 2528, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 2532, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 2536, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 2541, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 2545, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 2504, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 1542, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 1547, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3507, i32 40 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3512, i32 11 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3522, i32 12 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3535, i32 40 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3540, i32 11 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3543, i32 4 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 804, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 808, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 817, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 792, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3691, i32 61 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3694, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3698, i32 57 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3701, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3709, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3717, i32 3 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3576, i32 4 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3582, i32 4 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3158, i32 40 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3159, i32 24 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3159, i32 32 }
@___asan_gen_.611 = private unnamed_addr constant [18 x i8] c"tegra_xudc_ep_ops\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 1910, i32 32 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3172, i32 21 }
@___asan_gen_.617 = private unnamed_addr constant [19 x i8] c"tegra_xudc_ep0_ops\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 1931, i32 32 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 1791, i32 4 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 1854, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 1699, i32 3 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 1740, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 1626, i32 5 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 1398, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 1593, i32 3 }
@___asan_gen_.662 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.666 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.666, i32 87, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 708, i32 3 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 712, i32 3 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 714, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 726, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 762, i32 3 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 766, i32 3 }
@___asan_gen_.704 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 844, i32 4 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 871, i32 3 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 874, i32 4 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 2005, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 2024, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 2165, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 2153, i32 2 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 2050, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 2108, i32 2 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 2138, i32 2 }
@___asan_gen_.758 = private unnamed_addr constant [23 x i8] c"tegra210_xudc_soc_data\00", align 1
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3613, i32 30 }
@___asan_gen_.761 = private unnamed_addr constant [23 x i8] c"tegra186_xudc_soc_data\00", align 1
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3629, i32 30 }
@___asan_gen_.764 = private unnamed_addr constant [23 x i8] c"tegra194_xudc_soc_data\00", align 1
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3643, i32 30 }
@___asan_gen_.767 = private unnamed_addr constant [27 x i8] c"tegra210_xudc_supply_names\00", align 1
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3593, i32 27 }
@___asan_gen_.770 = private unnamed_addr constant [26 x i8] c"tegra210_xudc_clock_names\00", align 1
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3598, i32 27 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3594, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3595, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3601, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3602, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3603, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant [26 x i8] c"tegra186_xudc_clock_names\00", align 1
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3606, i32 27 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3910, i32 2 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3925, i32 2 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3934, i32 2 }
@___asan_gen_.806 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.807 = private constant [39 x i8] c"../drivers/usb/gadget/udc/tegra-xudc.c\00", align 1
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 3960, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant [37 x i8] c"switch.table.tegra_xudc_port_connect\00", align 1
@llvm.compiler.used = appending global [252 x ptr] [ptr @__UNIQUE_ID_author343, ptr @__UNIQUE_ID_author344, ptr @__UNIQUE_ID_author345, ptr @__UNIQUE_ID_description342, ptr @__UNIQUE_ID_file346, ptr @__UNIQUE_ID_license347, ptr @__exitcall_tegra_xudc_driver_exit, ptr @__initcall__kmod_tegra_xudc__341_4036_tegra_xudc_driver_init6, ptr @__tegra_xudc_ep_disable._entry, ptr @__tegra_xudc_ep_disable._entry.141, ptr @__tegra_xudc_ep_disable._entry_ptr, ptr @__tegra_xudc_ep_disable._entry_ptr.143, ptr @__tegra_xudc_ep_enable._entry, ptr @__tegra_xudc_ep_enable._entry.136, ptr @__tegra_xudc_ep_enable._entry_ptr, ptr @__tegra_xudc_ep_enable._entry_ptr.138, ptr @__tegra_xudc_ep_queue._entry, ptr @__tegra_xudc_ep_queue._entry.76, ptr @__tegra_xudc_ep_queue._entry_ptr, ptr @__tegra_xudc_ep_queue._entry_ptr.78, ptr @__tegra_xudc_ep_set_halt._entry, ptr @__tegra_xudc_ep_set_halt._entry_ptr, ptr @__tegra_xudc_handle_port_status._entry, ptr @__tegra_xudc_handle_port_status._entry_ptr, ptr @tegra_xudc_device_mode_off._entry, ptr @tegra_xudc_device_mode_off._entry.160, ptr @tegra_xudc_device_mode_off._entry_ptr, ptr @tegra_xudc_device_mode_off._entry_ptr.162, ptr @tegra_xudc_device_mode_on._entry, ptr @tegra_xudc_device_mode_on._entry.153, ptr @tegra_xudc_device_mode_on._entry_ptr, ptr @tegra_xudc_device_mode_on._entry_ptr.155, ptr @tegra_xudc_driver_exit, ptr @tegra_xudc_ep_context_setup._entry, ptr @tegra_xudc_ep_context_setup._entry_ptr, ptr @tegra_xudc_ep_set_halt._entry, ptr @tegra_xudc_ep_set_halt._entry_ptr, ptr @tegra_xudc_get_phy_index._entry, ptr @tegra_xudc_get_phy_index._entry_ptr, ptr @tegra_xudc_handle_ep0_setup_packet._entry, ptr @tegra_xudc_handle_ep0_setup_packet._entry.82, ptr @tegra_xudc_handle_ep0_setup_packet._entry_ptr, ptr @tegra_xudc_handle_ep0_setup_packet._entry_ptr.84, ptr @tegra_xudc_handle_event._entry, ptr @tegra_xudc_handle_event._entry_ptr, ptr @tegra_xudc_handle_transfer_completion._entry, ptr @tegra_xudc_handle_transfer_completion._entry_ptr, ptr @tegra_xudc_handle_transfer_event._entry, ptr @tegra_xudc_handle_transfer_event._entry.55, ptr @tegra_xudc_handle_transfer_event._entry.58, ptr @tegra_xudc_handle_transfer_event._entry.61, ptr @tegra_xudc_handle_transfer_event._entry.64, ptr @tegra_xudc_handle_transfer_event._entry_ptr, ptr @tegra_xudc_handle_transfer_event._entry_ptr.57, ptr @tegra_xudc_handle_transfer_event._entry_ptr.60, ptr @tegra_xudc_handle_transfer_event._entry_ptr.63, ptr @tegra_xudc_handle_transfer_event._entry_ptr.66, ptr @tegra_xudc_phy_init._entry, ptr @tegra_xudc_phy_init._entry.127, ptr @tegra_xudc_phy_init._entry_ptr, ptr @tegra_xudc_phy_init._entry_ptr.129, ptr @tegra_xudc_plc_reset_work._entry, ptr @tegra_xudc_plc_reset_work._entry_ptr, ptr @tegra_xudc_powerdomain_init._entry, ptr @tegra_xudc_powerdomain_init._entry.116, ptr @tegra_xudc_powerdomain_init._entry.119, ptr @tegra_xudc_powerdomain_init._entry.122, ptr @tegra_xudc_powerdomain_init._entry_ptr, ptr @tegra_xudc_powerdomain_init._entry_ptr.118, ptr @tegra_xudc_powerdomain_init._entry_ptr.121, ptr @tegra_xudc_powerdomain_init._entry_ptr.124, ptr @tegra_xudc_probe._entry, ptr @tegra_xudc_probe._entry.11, ptr @tegra_xudc_probe._entry.25, ptr @tegra_xudc_probe._entry_ptr, ptr @tegra_xudc_probe._entry_ptr.13, ptr @tegra_xudc_probe._entry_ptr.27, ptr @tegra_xudc_driver, ptr @.str, ptr @tegra_xudc_of_match, ptr @tegra_xudc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @tegra_xudc_probe.__key, ptr @.str.14, ptr @tegra_xudc_probe.__key.15, ptr @.str.16, ptr @tegra_xudc_probe.__key.17, ptr @.str.18, ptr @tegra_xudc_probe.__key.19, ptr @.str.20, ptr @tegra_xudc_probe.__key.21, ptr @.str.22, ptr @tegra_xudc_probe.__key.23, ptr @.str.24, ptr @tegra_xudc_gadget_ops, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @tegra_xudc_ep0_desc, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @.str.120, ptr @.str.123, ptr @.str.125, ptr @.str.126, ptr @.str.128, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @tegra_xudc_ep_ops, ptr @.str.133, ptr @tegra_xudc_ep0_ops, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @init_completion.__key, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.154, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.161, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @tegra210_xudc_soc_data, ptr @tegra186_xudc_soc_data, ptr @tegra194_xudc_soc_data, ptr @tegra210_xudc_supply_names, ptr @tegra210_xudc_clock_names, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @tegra186_xudc_clock_names, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @switch.table.tegra_xudc_port_connect], section "llvm.metadata"
@0 = internal global [201 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_probe.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_probe.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_probe.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_probe.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_probe.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_gadget_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_handle_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_ep0_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_handle_transfer_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_handle_transfer_event._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_handle_transfer_event._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_handle_transfer_event._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_handle_transfer_event._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_handle_transfer_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_handle_ep0_setup_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_handle_ep0_setup_packet._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_get_phy_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_powerdomain_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_powerdomain_init._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_powerdomain_init._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_powerdomain_init._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_phy_init._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_ep_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_ep0_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_ep_context_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_ep_set_halt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_device_mode_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_device_mode_on._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_device_mode_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_device_mode_off._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_xudc_plc_reset_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_xudc_soc_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_xudc_soc_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_xudc_soc_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_xudc_supply_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_xudc_clock_names to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_xudc_clock_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tegra_xudc_port_connect to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xudc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_xudc_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_xudc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_xudc_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xudc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4816, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call4 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #9
  %soc = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %soc, align 4
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.1) #9
  %call11 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call9) #9
  %base = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 35
  %3 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call11, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %5 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call9, align 4
  %phys_base = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 36
  %7 = ptrtoint ptr %phys_base to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %phys_base, align 8
  %call18 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.2) #9
  %fpci = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 38
  %8 = ptrtoint ptr %fpci to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call18, ptr %fpci, align 8
  %cmp.i357 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i357, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %10 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %soc, align 4
  %has_ipfs = getelementptr inbounds %struct.tegra_xudc_soc, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %has_ipfs to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %has_ipfs, align 1, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool26.not = icmp eq i8 %13, 0
  br i1 %tobool26.not, label %if.end24.if.end35_crit_edge, label %if.then27

if.end24.if.end35_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then27:                                        ; preds = %if.end24
  %call28 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.3) #9
  %ipfs = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 37
  %14 = ptrtoint ptr %ipfs to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call28, ptr %ipfs, align 4
  %cmp.i358 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i358, label %if.then31, label %if.then27.if.end35_crit_edge

if.then27.if.end35_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then31:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %call28 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.then27.if.end35_crit_edge, %if.end24.if.end35_crit_edge
  %call36 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 34
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call36, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp = icmp slt i32 %call36, 0
  br i1 %cmp, label %if.end35.cleanup_crit_edge, label %if.end40

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end40:                                         ; preds = %if.end35
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end40.dev_name.exit_crit_edge

if.end40.dev_name.exit_crit_edge:                 ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end40.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %20, %if.end.i ], [ %18, %if.end40.dev_name.exit_crit_edge ]
  %call.i359 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call36, ptr noundef nonnull @tegra_xudc_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i359)
  %cmp46 = icmp slt i32 %call.i359, 0
  br i1 %cmp46, label %do.end, label %if.end50

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 8
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.4, i32 noundef %24, i32 noundef %call.i359) #12
  br label %cleanup

if.end50:                                         ; preds = %dev_name.exit
  %25 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %soc, align 4
  %num_clks = getelementptr inbounds %struct.tegra_xudc_soc, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_clks, align 4
  %29 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %28, i32 8) #9
  %30 = extractvalue { i32, i1 } %29, 1
  br i1 %30, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !430

devm_kcalloc.exit.thread:                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  %clks368 = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 40
  %31 = ptrtoint ptr %clks368 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %clks368, align 8
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end50
  %32 = extractvalue { i32, i1 } %29, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %32, i32 noundef 3520) #9
  %clks = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 40
  %33 = ptrtoint ptr %clks to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call5.i.i, ptr %clks, align 8
  %tobool55.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool55.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %34 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %soc, align 4
  %num_clks59374 = getelementptr inbounds %struct.tegra_xudc_soc, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %num_clks59374 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_clks59374, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp60375.not = icmp eq i32 %37, 0
  br i1 %cmp60375.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %38 = phi ptr [ %47, %for.body.for.body_crit_edge ], [ %35, %for.cond.preheader.for.body_crit_edge ]
  %i.0376 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %clock_names = getelementptr inbounds %struct.tegra_xudc_soc, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %clock_names to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clock_names, align 4
  %arrayidx = getelementptr ptr, ptr %40, i32 %i.0376
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 4
  %43 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clks, align 8
  %arrayidx63 = getelementptr %struct.clk_bulk_data, ptr %44, i32 %i.0376
  %45 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %arrayidx63, align 4
  %inc = add nuw i32 %i.0376, 1
  %46 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %soc, align 4
  %num_clks59 = getelementptr inbounds %struct.tegra_xudc_soc, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %num_clks59 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_clks59, align 4
  %cmp60 = icmp ult i32 %inc, %49
  br i1 %cmp60, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa373 = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %49, %for.body.for.end_crit_edge ]
  %50 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clks, align 8
  %call68 = tail call i32 @devm_clk_bulk_get(ptr noundef %dev, i32 noundef %.lcssa373, ptr noundef %51) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end73, label %if.then70

if.then70:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i, align 8
  %call72 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %53, i32 noundef %call68, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end73:                                         ; preds = %for.end
  %54 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %soc, align 4
  %num_supplies = getelementptr inbounds %struct.tegra_xudc_soc, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %num_supplies to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_supplies, align 4
  %58 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %57, i32 12) #9
  %59 = extractvalue { i32, i1 } %58, 1
  br i1 %59, label %devm_kcalloc.exit363.thread, label %devm_kcalloc.exit363, !prof !430

devm_kcalloc.exit363.thread:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  %supplies371 = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 39
  %60 = ptrtoint ptr %supplies371 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %supplies371, align 4
  br label %cleanup

devm_kcalloc.exit363:                             ; preds = %if.end73
  %61 = extractvalue { i32, i1 } %58, 0
  %call5.i.i360 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %61, i32 noundef 3520) #9
  %supplies = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 39
  %62 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call5.i.i360, ptr %supplies, align 4
  %tobool78.not = icmp eq ptr %call5.i.i360, null
  br i1 %tobool78.not, label %devm_kcalloc.exit363.cleanup_crit_edge, label %for.cond81.preheader

devm_kcalloc.exit363.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit363
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond81.preheader:                             ; preds = %devm_kcalloc.exit363
  %63 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %soc, align 4
  %num_supplies83377 = getelementptr inbounds %struct.tegra_xudc_soc, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %num_supplies83377 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_supplies83377, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp84378.not = icmp eq i32 %66, 0
  br i1 %cmp84378.not, label %for.cond81.preheader.for.end92_crit_edge, label %for.cond81.preheader.for.body85_crit_edge

for.cond81.preheader.for.body85_crit_edge:        ; preds = %for.cond81.preheader
  br label %for.body85

for.cond81.preheader.for.end92_crit_edge:         ; preds = %for.cond81.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end92

for.body85:                                       ; preds = %for.body85.for.body85_crit_edge, %for.cond81.preheader.for.body85_crit_edge
  %67 = phi ptr [ %76, %for.body85.for.body85_crit_edge ], [ %64, %for.cond81.preheader.for.body85_crit_edge ]
  %i.1379 = phi i32 [ %inc91, %for.body85.for.body85_crit_edge ], [ 0, %for.cond81.preheader.for.body85_crit_edge ]
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %arrayidx87 = getelementptr ptr, ptr %69, i32 %i.1379
  %70 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx87, align 4
  %72 = ptrtoint ptr %supplies to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %supplies, align 4
  %arrayidx89 = getelementptr %struct.regulator_bulk_data, ptr %73, i32 %i.1379
  %74 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %arrayidx89, align 4
  %inc91 = add nuw i32 %i.1379, 1
  %75 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %soc, align 4
  %num_supplies83 = getelementptr inbounds %struct.tegra_xudc_soc, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %num_supplies83 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_supplies83, align 4
  %cmp84 = icmp ult i32 %inc91, %78
  br i1 %cmp84, label %for.body85.for.body85_crit_edge, label %for.body85.for.end92_crit_edge

for.body85.for.end92_crit_edge:                   ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end92

for.body85.for.body85_crit_edge:                  ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body85

for.end92:                                        ; preds = %for.body85.for.end92_crit_edge, %for.cond81.preheader.for.end92_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond81.preheader.for.end92_crit_edge ], [ %78, %for.body85.for.end92_crit_edge ]
  %79 = ptrtoint ptr %supplies to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %supplies, align 4
  %call97 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef %.lcssa, ptr noundef %80) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end102, label %if.then99

if.then99:                                        ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %call.i, align 8
  %call101 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %82, i32 noundef %call97, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end102:                                        ; preds = %for.end92
  %call104 = tail call ptr @tegra_xusb_padctl_get(ptr noundef %dev) #9
  %padctl = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 2
  %83 = ptrtoint ptr %padctl to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call104, ptr %padctl, align 8
  %cmp.i364 = icmp ugt ptr %call104, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i364, label %if.then107, label %if.end110

if.then107:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %call104 to i32
  br label %cleanup

if.end110:                                        ; preds = %if.end102
  %85 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %soc, align 4
  %num_supplies112 = getelementptr inbounds %struct.tegra_xudc_soc, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %num_supplies112 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %num_supplies112, align 4
  %89 = ptrtoint ptr %supplies to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %supplies, align 4
  %call114 = tail call i32 @regulator_bulk_enable(i32 noundef %88, ptr noundef %90) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end121, label %do.end119

do.end119:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.12, i32 noundef %call114) #12
  br label %put_padctl

if.end121:                                        ; preds = %if.end110
  %call122 = tail call fastcc i32 @tegra_xudc_phy_get(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end125, label %if.end121.disable_regulator_crit_edge

if.end121.disable_regulator_crit_edge:            ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %disable_regulator

if.end125:                                        ; preds = %if.end121
  %call126 = tail call fastcc i32 @tegra_xudc_powerdomain_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.end129, label %if.end125.put_powerdomains_crit_edge

if.end125.put_powerdomains_crit_edge:             ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_powerdomains

if.end129:                                        ; preds = %if.end125
  %call130 = tail call fastcc i32 @tegra_xudc_phy_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.end133, label %if.end129.put_powerdomains_crit_edge

if.end129.put_powerdomains_crit_edge:             ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_powerdomains

if.end133:                                        ; preds = %if.end129
  %call134 = tail call fastcc i32 @tegra_xudc_alloc_event_ring(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end137, label %if.end133.disable_phy_crit_edge

if.end133.disable_phy_crit_edge:                  ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  br label %disable_phy

if.end137:                                        ; preds = %if.end133
  %call138 = tail call fastcc i32 @tegra_xudc_alloc_eps(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %do.body142, label %if.end137.free_event_ring_crit_edge

if.end137.free_event_ring_crit_edge:              ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_event_ring

do.body142:                                       ; preds = %if.end137
  %lock = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @tegra_xudc_probe.__key, i16 noundef signext 3) #9
  %disconnect_complete = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 53
  %93 = ptrtoint ptr %disconnect_complete to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %disconnect_complete, align 4
  %wait.i = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 53, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.150, ptr noundef nonnull @init_completion.__key) #9
  %usb_role_sw_work = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 42
  tail call void @__init_work(ptr noundef %usb_role_sw_work, i32 noundef 0) #9
  %94 = ptrtoint ptr %usb_role_sw_work to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -64, ptr %usb_role_sw_work, align 8
  %lockdep_map = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 42, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.16, ptr noundef nonnull @tegra_xudc_probe.__key.15, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry150 = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 42, i32 1
  %95 = ptrtoint ptr %entry150 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %entry150, ptr %entry150, align 4
  %prev.i = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 42, i32 1, i32 1
  %96 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %entry150, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 42, i32 2
  %97 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @tegra_xudc_usb_role_sw_work, ptr %func, align 4
  %plc_reset_work = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 55
  tail call void @__init_work(ptr noundef %plc_reset_work, i32 noundef 0) #9
  %98 = ptrtoint ptr %plc_reset_work to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -64, ptr %plc_reset_work, align 8
  %lockdep_map163 = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 55, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map163, ptr noundef nonnull @.str.18, ptr noundef nonnull @tegra_xudc_probe.__key.17, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry166 = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 55, i32 0, i32 1
  %99 = ptrtoint ptr %entry166 to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %entry166, ptr %entry166, align 4
  %prev.i365 = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 55, i32 0, i32 1, i32 1
  %100 = ptrtoint ptr %prev.i365 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %entry166, ptr %prev.i365, align 4
  %func169 = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 55, i32 0, i32 2
  %101 = ptrtoint ptr %func169 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @tegra_xudc_plc_reset_work, ptr %func169, align 4
  %timer = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 55, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.20, ptr noundef nonnull @tegra_xudc_probe.__key.19) #9
  %port_reset_war_work = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 57
  tail call void @__init_work(ptr noundef %port_reset_war_work, i32 noundef 0) #9
  %102 = ptrtoint ptr %port_reset_war_work to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 -64, ptr %port_reset_war_work, align 8
  %lockdep_map188 = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 57, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map188, ptr noundef nonnull @.str.22, ptr noundef nonnull @tegra_xudc_probe.__key.21, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry191 = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 57, i32 0, i32 1
  %103 = ptrtoint ptr %entry191 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %entry191, ptr %entry191, align 4
  %prev.i366 = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 57, i32 0, i32 1, i32 1
  %104 = ptrtoint ptr %prev.i366 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %entry191, ptr %prev.i366, align 4
  %func194 = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 57, i32 0, i32 2
  %105 = ptrtoint ptr %func194 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @tegra_xudc_port_reset_war_work, ptr %func194, align 4
  %timer199 = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 57, i32 1
  tail call void @init_timer_key(ptr noundef %timer199, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.24, ptr noundef nonnull @tegra_xudc_probe.__key.23) #9
  tail call void @pm_runtime_enable(ptr noundef %dev) #9
  %gadget = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 4
  %ops = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 4, i32 2
  %106 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @tegra_xudc_gadget_ops, ptr %ops, align 8
  %usb_ep = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 11, i32 0, i32 1
  %ep0 = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 4, i32 3
  %107 = ptrtoint ptr %ep0 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %usb_ep, ptr %ep0, align 4
  %name = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 4, i32 10
  %108 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @.str, ptr %name, align 4
  %max_speed = getelementptr inbounds %struct.tegra_xudc, ptr %call.i, i32 0, i32 4, i32 6
  %109 = ptrtoint ptr %max_speed to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 5, ptr %max_speed, align 4
  %call211 = tail call i32 @usb_add_gadget_udc(ptr noundef %dev, ptr noundef %gadget) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %tobool212.not = icmp eq i32 %call211, 0
  br i1 %tobool212.not, label %do.body142.cleanup_crit_edge, label %do.end216

do.body142.cleanup_crit_edge:                     ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end216:                                        ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %call211) #12
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  tail call fastcc void @tegra_xudc_free_eps(ptr noundef nonnull %call.i)
  br label %free_event_ring

free_event_ring:                                  ; preds = %do.end216, %if.end137.free_event_ring_crit_edge
  %err.0 = phi i32 [ %call138, %if.end137.free_event_ring_crit_edge ], [ %call211, %do.end216 ]
  tail call fastcc void @tegra_xudc_free_event_ring(ptr noundef nonnull %call.i)
  br label %disable_phy

disable_phy:                                      ; preds = %free_event_ring, %if.end133.disable_phy_crit_edge
  %err.1 = phi i32 [ %call134, %if.end133.disable_phy_crit_edge ], [ %err.0, %free_event_ring ]
  tail call fastcc void @tegra_xudc_phy_exit(ptr noundef nonnull %call.i)
  br label %put_powerdomains

put_powerdomains:                                 ; preds = %disable_phy, %if.end129.put_powerdomains_crit_edge, %if.end125.put_powerdomains_crit_edge
  %err.2 = phi i32 [ %call126, %if.end125.put_powerdomains_crit_edge ], [ %call130, %if.end129.put_powerdomains_crit_edge ], [ %err.1, %disable_phy ]
  tail call fastcc void @tegra_xudc_powerdomain_remove(ptr noundef nonnull %call.i)
  br label %disable_regulator

disable_regulator:                                ; preds = %put_powerdomains, %if.end121.disable_regulator_crit_edge
  %err.3 = phi i32 [ %call122, %if.end121.disable_regulator_crit_edge ], [ %err.2, %put_powerdomains ]
  %110 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %soc, align 4
  %num_supplies221 = getelementptr inbounds %struct.tegra_xudc_soc, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %num_supplies221 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %num_supplies221, align 4
  %114 = ptrtoint ptr %supplies to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %supplies, align 4
  %call223 = tail call i32 @regulator_bulk_disable(i32 noundef %113, ptr noundef %115) #9
  br label %put_padctl

put_padctl:                                       ; preds = %disable_regulator, %do.end119
  %err.4 = phi i32 [ %call114, %do.end119 ], [ %err.3, %disable_regulator ]
  %116 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %padctl, align 8
  tail call void @tegra_xusb_padctl_put(ptr noundef %117) #9
  br label %cleanup

cleanup:                                          ; preds = %put_padctl, %do.body142.cleanup_crit_edge, %if.then107, %if.then99, %devm_kcalloc.exit363.cleanup_crit_edge, %devm_kcalloc.exit363.thread, %if.then70, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %do.end, %if.end35.cleanup_crit_edge, %if.then31, %if.then21, %if.then14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then14 ], [ %9, %if.then21 ], [ %15, %if.then31 ], [ %call.i359, %do.end ], [ %call68, %if.then70 ], [ %call97, %if.then99 ], [ %84, %if.then107 ], [ %err.4, %put_padctl ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %call36, %if.end35.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit363.cleanup_crit_edge ], [ 0, %do.body142.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit363.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xudc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #9
  %plc_reset_work = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 55
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %plc_reset_work) #9
  %usb_role_sw_work = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 42
  %call3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %usb_role_sw_work) #9
  %gadget = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 4
  tail call void @usb_del_gadget_udc(ptr noundef %gadget) #9
  %ep0_req.i = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %ep0_req.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep0_req.i, align 8
  tail call void @kfree(ptr noundef %5) #9
  %transfer_ring_pool.i.i = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %transfer_ring_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transfer_ring_pool.i.i, align 8
  %transfer_ring.i.peel.i = getelementptr %struct.tegra_xudc, ptr %1, i32 0, i32 11, i32 0, i32 5
  %8 = ptrtoint ptr %transfer_ring.i.peel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transfer_ring.i.peel.i, align 4
  %transfer_ring_phys.i.peel.i = getelementptr %struct.tegra_xudc, ptr %1, i32 0, i32 11, i32 0, i32 6
  %10 = ptrtoint ptr %transfer_ring_phys.i.peel.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %transfer_ring_phys.i.peel.i, align 4
  tail call void @dma_pool_free(ptr noundef %7, ptr noundef %9, i32 noundef %11) #9
  br label %tegra_xudc_free_ep.exit.i

tegra_xudc_free_ep.exit.i:                        ; preds = %tegra_xudc_free_ep.exit.i.tegra_xudc_free_ep.exit.i_crit_edge, %entry
  %i.08.i = phi i32 [ 2, %entry ], [ %inc.i, %tegra_xudc_free_ep.exit.i.tegra_xudc_free_ep.exit.i_crit_edge ]
  %12 = ptrtoint ptr %transfer_ring_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %transfer_ring_pool.i.i, align 8
  %transfer_ring.i.i = getelementptr %struct.tegra_xudc, ptr %1, i32 0, i32 11, i32 %i.08.i, i32 5
  %14 = ptrtoint ptr %transfer_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %transfer_ring.i.i, align 4
  %transfer_ring_phys.i.i = getelementptr %struct.tegra_xudc, ptr %1, i32 0, i32 11, i32 %i.08.i, i32 6
  %16 = ptrtoint ptr %transfer_ring_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %transfer_ring_phys.i.i, align 4
  tail call void @dma_pool_free(ptr noundef %13, ptr noundef %15, i32 noundef %17) #9
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %tegra_xudc_free_eps.exit, label %tegra_xudc_free_ep.exit.i.tegra_xudc_free_ep.exit.i_crit_edge, !llvm.loop !431

tegra_xudc_free_ep.exit.i.tegra_xudc_free_ep.exit.i_crit_edge: ; preds = %tegra_xudc_free_ep.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_xudc_free_ep.exit.i

tegra_xudc_free_eps.exit:                         ; preds = %tegra_xudc_free_ep.exit.i
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %ep_context.i = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 12
  %20 = ptrtoint ptr %ep_context.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ep_context.i, align 8
  %ep_context_phys.i = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 13
  %22 = ptrtoint ptr %ep_context_phys.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ep_context_phys.i, align 4
  tail call void @dma_free_attrs(ptr noundef %19, i32 noundef 2048, ptr noundef %21, i32 noundef %23, i32 noundef 0) #9
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %arrayidx.i = getelementptr %struct.tegra_xudc, ptr %1, i32 0, i32 6, i32 0
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.tegra_xudc, ptr %1, i32 0, i32 7, i32 0
  %28 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx1.i, align 4
  tail call void @dma_free_attrs(ptr noundef %25, i32 noundef 65536, ptr noundef %27, i32 noundef %29, i32 noundef 0) #9
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %arrayidx.1.i = getelementptr %struct.tegra_xudc, ptr %1, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.1.i, align 4
  %arrayidx1.1.i = getelementptr %struct.tegra_xudc, ptr %1, i32 0, i32 7, i32 1
  %34 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx1.1.i, align 4
  tail call void @dma_free_attrs(ptr noundef %31, i32 noundef 65536, ptr noundef %33, i32 noundef %35, i32 noundef 0) #9
  %genpd_dl_ss.i = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 17
  %36 = ptrtoint ptr %genpd_dl_ss.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %genpd_dl_ss.i, align 4
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %tegra_xudc_free_eps.exit.if.end.i_crit_edge, label %if.then.i

tegra_xudc_free_eps.exit.if.end.i_crit_edge:      ; preds = %tegra_xudc_free_eps.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %tegra_xudc_free_eps.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @device_link_del(ptr noundef nonnull %37) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %tegra_xudc_free_eps.exit.if.end.i_crit_edge
  %genpd_dl_device.i = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 16
  %38 = ptrtoint ptr %genpd_dl_device.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %genpd_dl_device.i, align 8
  %tobool2.not.i = icmp eq ptr %39, null
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @device_link_del(ptr noundef nonnull %39) #9
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %genpd_dev_ss.i = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 15
  %40 = ptrtoint ptr %genpd_dev_ss.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %genpd_dev_ss.i, align 4
  %tobool6.not.i = icmp eq ptr %41, null
  br i1 %tobool6.not.i, label %if.end5.i.if.end9.i_crit_edge, label %if.then7.i

if.end5.i.if.end9.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dev_pm_domain_detach(ptr noundef nonnull %41, i1 noundef zeroext true) #9
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end5.i.if.end9.i_crit_edge
  %genpd_dev_device.i = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 14
  %42 = ptrtoint ptr %genpd_dev_device.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %genpd_dev_device.i, align 8
  %tobool10.not.i = icmp eq ptr %43, null
  br i1 %tobool10.not.i, label %if.end9.i.tegra_xudc_powerdomain_remove.exit_crit_edge, label %if.then11.i

if.end9.i.tegra_xudc_powerdomain_remove.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_xudc_powerdomain_remove.exit

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dev_pm_domain_detach(ptr noundef nonnull %43, i1 noundef zeroext true) #9
  br label %tegra_xudc_powerdomain_remove.exit

tegra_xudc_powerdomain_remove.exit:               ; preds = %if.then11.i, %if.end9.i.tegra_xudc_powerdomain_remove.exit_crit_edge
  %soc = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 1
  %44 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %soc, align 4
  %num_supplies = getelementptr inbounds %struct.tegra_xudc_soc, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %num_supplies to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_supplies, align 4
  %supplies = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 39
  %48 = ptrtoint ptr %supplies to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %supplies, align 4
  %call4 = tail call i32 @regulator_bulk_disable(i32 noundef %47, ptr noundef %49) #9
  %50 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %soc, align 4
  %num_phys35 = getelementptr inbounds %struct.tegra_xudc_soc, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %num_phys35 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_phys35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp36.not = icmp eq i32 %53, 0
  br i1 %cmp36.not, label %tegra_xudc_powerdomain_remove.exit.tegra_xudc_phy_exit.exit_crit_edge, label %for.body.lr.ph

tegra_xudc_powerdomain_remove.exit.tegra_xudc_phy_exit.exit_crit_edge: ; preds = %tegra_xudc_powerdomain_remove.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_xudc_phy_exit.exit

for.body.lr.ph:                                   ; preds = %tegra_xudc_powerdomain_remove.exit
  %utmi_phy = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 45
  %usb3_phy = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 43
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.037 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %54 = ptrtoint ptr %utmi_phy to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %utmi_phy, align 4
  %arrayidx = getelementptr ptr, ptr %55, i32 %i.037
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx, align 4
  %call6 = tail call i32 @phy_power_off(ptr noundef %57) #9
  %58 = ptrtoint ptr %usb3_phy to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %usb3_phy, align 4
  %arrayidx7 = getelementptr ptr, ptr %59, i32 %i.037
  %60 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx7, align 4
  %call8 = tail call i32 @phy_power_off(ptr noundef %61) #9
  %inc = add nuw i32 %i.037, 1
  %62 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %soc, align 4
  %num_phys = getelementptr inbounds %struct.tegra_xudc_soc, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_phys, align 4
  %cmp = icmp ult i32 %inc, %65
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %phi.cmp = icmp eq i32 %65, 0
  br i1 %phi.cmp, label %for.end.tegra_xudc_phy_exit.exit_crit_edge, label %for.body.lr.ph.i

for.end.tegra_xudc_phy_exit.exit_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_xudc_phy_exit.exit

for.body.lr.ph.i:                                 ; preds = %for.end
  %usb3_phy.i = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 43
  %utmi_phy.i = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 45
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i33, %for.body.i.for.body.i_crit_edge ]
  %66 = ptrtoint ptr %usb3_phy.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %usb3_phy.i, align 4
  %arrayidx.i30 = getelementptr ptr, ptr %67, i32 %i.010.i
  %68 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i30, align 4
  %call.i31 = tail call i32 @phy_exit(ptr noundef %69) #9
  %70 = ptrtoint ptr %utmi_phy.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %utmi_phy.i, align 4
  %arrayidx1.i32 = getelementptr ptr, ptr %71, i32 %i.010.i
  %72 = ptrtoint ptr %arrayidx1.i32 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx1.i32, align 4
  %call2.i = tail call i32 @phy_exit(ptr noundef %73) #9
  %inc.i33 = add nuw i32 %i.010.i, 1
  %74 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %soc, align 4
  %num_phys.i = getelementptr inbounds %struct.tegra_xudc_soc, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_phys.i, align 4
  %cmp.i = icmp ult i32 %inc.i33, %77
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.tegra_xudc_phy_exit.exit_crit_edge

for.body.i.tegra_xudc_phy_exit.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_xudc_phy_exit.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

tegra_xudc_phy_exit.exit:                         ; preds = %for.body.i.tegra_xudc_phy_exit.exit_crit_edge, %for.end.tegra_xudc_phy_exit.exit_crit_edge, %tegra_xudc_powerdomain_remove.exit.tegra_xudc_phy_exit.exit_crit_edge
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 8
  tail call void @__pm_runtime_disable(ptr noundef %79, i1 noundef zeroext true) #9
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 8
  %call.i34 = tail call i32 @__pm_runtime_idle(ptr noundef %81, i32 noundef 5) #9
  %padctl = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 2
  %82 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %padctl, align 8
  tail call void @tegra_xusb_padctl_put(ptr noundef %83) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xudc_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.tegra_xudc, ptr %data, i32 0, i32 35
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 52
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %3 = and i32 %2, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %5, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 268435456) #9, !srcloc !436
  %lock = getelementptr inbounds %struct.tegra_xudc, ptr %data, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %event_ring_index.i = getelementptr inbounds %struct.tegra_xudc, ptr %data, i32 0, i32 8
  %event_ring_deq_ptr.i = getelementptr inbounds %struct.tegra_xudc, ptr %data, i32 0, i32 9
  %ccs.i = getelementptr inbounds %struct.tegra_xudc, ptr %data, i32 0, i32 10
  %6 = ptrtoint ptr %event_ring_index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %event_ring_index.i, align 4
  %arrayidx46.i = getelementptr %struct.tegra_xudc, ptr %data, i32 0, i32 6, i32 %7
  %8 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx46.i, align 4
  %10 = ptrtoint ptr %event_ring_deq_ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %event_ring_deq_ptr.i, align 8
  %control.i47.i = getelementptr %struct.tegra_xudc_trb, ptr %9, i32 %11, i32 3
  %12 = ptrtoint ptr %control.i47.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %control.i47.i, align 4
  %14 = lshr i32 %13, 24
  %and.i48.i = and i32 %14, 1
  %15 = ptrtoint ptr %ccs.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ccs.i, align 4, !range !429
  %17 = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i48.i, i32 %17)
  %cmp.not49.i = icmp eq i32 %and.i48.i, %17
  br i1 %cmp.not49.i, label %if.end.if.end.i_crit_edge, label %if.end.tegra_xudc_process_event_ring.exit_crit_edge

if.end.tegra_xudc_process_event_ring.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_xudc_process_event_ring.exit

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  br label %if.end.i

if.end.i:                                         ; preds = %if.end19.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %18 = phi i32 [ %36, %if.end19.i.if.end.i_crit_edge ], [ %11, %if.end.if.end.i_crit_edge ]
  %19 = phi ptr [ %34, %if.end19.i.if.end.i_crit_edge ], [ %9, %if.end.if.end.i_crit_edge ]
  %add.ptr.i15 = getelementptr %struct.tegra_xudc_trb, ptr %19, i32 %18
  tail call fastcc void @tegra_xudc_handle_event(ptr noundef %data, ptr noundef %add.ptr.i15) #9
  %20 = ptrtoint ptr %event_ring_deq_ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %event_ring_deq_ptr.i, align 8
  %inc.i = add i32 %21, 1
  store i32 %inc.i, ptr %event_ring_deq_ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %inc.i)
  %cmp4.i = icmp eq i32 %inc.i, 4096
  br i1 %cmp4.i, label %if.then6.i, label %if.end10thread-pre-split.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %event_ring_deq_ptr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %event_ring_deq_ptr.i, align 8
  %23 = ptrtoint ptr %event_ring_index.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %event_ring_index.i, align 4
  %inc9.i = add i32 %24, 1
  store i32 %inc9.i, ptr %event_ring_index.i, align 4
  br label %if.end10.i

if.end10thread-pre-split.i:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %event_ring_index.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr.i = load i32, ptr %event_ring_index.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end10thread-pre-split.i, %if.then6.i
  %26 = phi i32 [ %.pr.i, %if.end10thread-pre-split.i ], [ %inc9.i, %if.then6.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp12.i = icmp eq i32 %26, 2
  br i1 %cmp12.i, label %if.then14.i, label %if.end10.i.if.end19.i_crit_edge

if.end10.i.if.end19.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.then14.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %event_ring_index.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %event_ring_index.i, align 4
  %28 = ptrtoint ptr %ccs.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ccs.i, align 4, !range !429
  %30 = xor i8 %29, 1
  store i8 %30, ptr %ccs.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then14.i, %if.end10.i.if.end19.i_crit_edge
  %31 = ptrtoint ptr %event_ring_index.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %event_ring_index.i, align 4
  %arrayidx.i = getelementptr %struct.tegra_xudc, ptr %data, i32 0, i32 6, i32 %32
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 4
  %35 = ptrtoint ptr %event_ring_deq_ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %event_ring_deq_ptr.i, align 8
  %control.i.i = getelementptr %struct.tegra_xudc_trb, ptr %34, i32 %36, i32 3
  %37 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %control.i.i, align 4
  %39 = lshr i32 %38, 24
  %and.i.i = and i32 %39, 1
  %40 = ptrtoint ptr %ccs.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ccs.i, align 4, !range !429
  %42 = zext i8 %41 to i32
  %cmp.not.i = icmp eq i32 %and.i.i, %42
  br i1 %cmp.not.i, label %if.end19.i.if.end.i_crit_edge, label %if.end19.i.tegra_xudc_process_event_ring.exit_crit_edge

if.end19.i.tegra_xudc_process_event_ring.exit_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_xudc_process_event_ring.exit

if.end19.i.if.end.i_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

tegra_xudc_process_event_ring.exit:               ; preds = %if.end19.i.tegra_xudc_process_event_ring.exit_crit_edge, %if.end.tegra_xudc_process_event_ring.exit_crit_edge
  %.lcssa45.i = phi i32 [ %7, %if.end.tegra_xudc_process_event_ring.exit_crit_edge ], [ %32, %if.end19.i.tegra_xudc_process_event_ring.exit_crit_edge ]
  %.lcssa.i = phi i32 [ %11, %if.end.tegra_xudc_process_event_ring.exit_crit_edge ], [ %36, %if.end19.i.tegra_xudc_process_event_ring.exit_crit_edge ]
  %arrayidx21.i = getelementptr %struct.tegra_xudc, ptr %data, i32 0, i32 7, i32 %.lcssa45.i
  %43 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx21.i, align 4
  %mul.i = shl i32 %.lcssa.i, 4
  %add.i = add i32 %44, %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %45 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %46, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #9, !srcloc !436
  %or.i = or i32 %add.i, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %47 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 4
  %add.ptr.i44.i = getelementptr i8, ptr %49, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i, i32 %47) #9, !srcloc !436
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  br label %cleanup

cleanup:                                          ; preds = %tegra_xudc_process_event_ring.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %tegra_xudc_process_event_ring.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_xusb_padctl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_xudc_phy_get(ptr noundef %xudc) unnamed_addr #2 align 64 {
entry:
  %phy_name = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %soc = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 1
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %num_phys = getelementptr inbounds %struct.tegra_xudc_soc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_phys, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #9
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !430

devm_kcalloc.exit.thread:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %utmi_phy196 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 45
  %6 = ptrtoint ptr %utmi_phy196 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %utmi_phy196, align 4
  br label %cleanup113

devm_kcalloc.exit:                                ; preds = %entry
  %7 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xudc, align 8
  %9 = extractvalue { i32, i1 } %4, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef %9, i32 noundef 3520) #9
  %utmi_phy = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 45
  %10 = ptrtoint ptr %utmi_phy to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5.i.i, ptr %utmi_phy, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup113_crit_edge, label %if.end

devm_kcalloc.exit.cleanup113_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup113

if.end:                                           ; preds = %devm_kcalloc.exit
  %11 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %soc, align 4
  %num_phys4 = getelementptr inbounds %struct.tegra_xudc_soc, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %num_phys4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_phys4, align 4
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %14, i32 4) #9
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %devm_kcalloc.exit188.thread, label %devm_kcalloc.exit188, !prof !430

devm_kcalloc.exit188.thread:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %usb3_phy199 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 43
  %17 = ptrtoint ptr %usb3_phy199 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %usb3_phy199, align 4
  br label %cleanup113

devm_kcalloc.exit188:                             ; preds = %if.end
  %18 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xudc, align 8
  %20 = extractvalue { i32, i1 } %15, 0
  %call5.i.i185 = tail call noalias ptr @devm_kmalloc(ptr noundef %19, i32 noundef %20, i32 noundef 3520) #9
  %usb3_phy = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 43
  %21 = ptrtoint ptr %usb3_phy to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call5.i.i185, ptr %usb3_phy, align 4
  %tobool7.not = icmp eq ptr %call5.i.i185, null
  br i1 %tobool7.not, label %devm_kcalloc.exit188.cleanup113_crit_edge, label %if.end9

devm_kcalloc.exit188.cleanup113_crit_edge:        ; preds = %devm_kcalloc.exit188
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup113

if.end9:                                          ; preds = %devm_kcalloc.exit188
  %22 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %soc, align 4
  %num_phys12 = getelementptr inbounds %struct.tegra_xudc_soc, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %num_phys12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_phys12, align 4
  %26 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %25, i32 4) #9
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %devm_kcalloc.exit192.thread, label %devm_kcalloc.exit192, !prof !430

devm_kcalloc.exit192.thread:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %usbphy202 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 50
  %28 = ptrtoint ptr %usbphy202 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %usbphy202, align 8
  br label %cleanup113

devm_kcalloc.exit192:                             ; preds = %if.end9
  %29 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %xudc, align 8
  %31 = extractvalue { i32, i1 } %26, 0
  %call5.i.i189 = tail call noalias ptr @devm_kmalloc(ptr noundef %30, i32 noundef %31, i32 noundef 3520) #9
  %usbphy = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 50
  %32 = ptrtoint ptr %usbphy to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call5.i.i189, ptr %usbphy, align 8
  %tobool15.not = icmp eq ptr %call5.i.i189, null
  br i1 %tobool15.not, label %devm_kcalloc.exit192.cleanup113_crit_edge, label %if.end17

devm_kcalloc.exit192.cleanup113_crit_edge:        ; preds = %devm_kcalloc.exit192
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup113

if.end17:                                         ; preds = %devm_kcalloc.exit192
  %vbus_nb = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 52
  %33 = ptrtoint ptr %vbus_nb to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @tegra_xudc_vbus_notify, ptr %vbus_nb, align 8
  %34 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %soc, align 4
  %num_phys19217 = getelementptr inbounds %struct.tegra_xudc_soc, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %num_phys19217 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_phys19217, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp218.not = icmp eq i32 %37, 0
  br i1 %cmp218.not, label %if.end17.cleanup113_crit_edge, label %for.body.lr.ph

if.end17.cleanup113_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup113

for.body.lr.ph:                                   ; preds = %if.end17
  %padctl = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0219 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %phy_name) #9
  %38 = call ptr @memcpy(ptr %phy_name, ptr @__const.tegra_xudc_phy_get.phy_name, i32 7)
  %call20 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %phy_name, i32 noundef 7, ptr noundef nonnull @.str.99, i32 noundef %i.0219)
  %39 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %xudc, align 8
  %call23 = call ptr @devm_phy_optional_get(ptr noundef %40, ptr noundef nonnull %phy_name) #9
  %41 = ptrtoint ptr %utmi_phy to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %utmi_phy, align 4
  %arrayidx = getelementptr ptr, ptr %42, i32 %i.0219
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call23, ptr %arrayidx, align 4
  %44 = load ptr, ptr %utmi_phy, align 4
  %arrayidx26 = getelementptr ptr, ptr %44, i32 %i.0219
  %45 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx26, align 4
  %cmp.i = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then28, label %if.else

if.then28:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %46 to i32
  %48 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %xudc, align 8
  %call33 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %49, i32 noundef %47, ptr noundef nonnull @.str.100, i32 noundef %i.0219) #9
  br label %cleanup

if.else:                                          ; preds = %for.body
  %tobool36.not = icmp eq ptr %46, null
  br i1 %tobool36.not, label %if.else.for.inc_crit_edge, label %if.then37

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then37:                                        ; preds = %if.else
  %50 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %xudc, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %46, i32 0, i32 27
  %52 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %of_node, align 8
  %call43 = call ptr @devm_usb_get_phy_by_node(ptr noundef %51, ptr noundef %53, ptr noundef %vbus_nb) #9
  %54 = ptrtoint ptr %usbphy to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %usbphy, align 8
  %arrayidx45 = getelementptr ptr, ptr %55, i32 %i.0219
  %56 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call43, ptr %arrayidx45, align 4
  %57 = load ptr, ptr %usbphy, align 8
  %arrayidx47 = getelementptr ptr, ptr %57, i32 %i.0219
  %58 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx47, align 4
  %cmp.i193 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i193, label %if.then49, label %if.end63

if.then49:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %59 to i32
  %61 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %xudc, align 8
  %call54 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %62, i32 noundef %60, ptr noundef nonnull @.str.101, i32 noundef %i.0219) #9
  br label %cleanup

if.end63:                                         ; preds = %if.then37
  %63 = ptrtoint ptr %padctl to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %padctl, align 8
  %call64 = call i32 @tegra_xusb_padctl_get_usb3_companion(ptr noundef %64, i32 noundef %i.0219) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %if.end63.for.inc_crit_edge, label %if.end67

if.end63.for.inc_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end67:                                         ; preds = %if.end63
  %call69 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %phy_name, i32 noundef 7, ptr noundef nonnull @.str.102, i32 noundef %call64)
  %65 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %xudc, align 8
  %call72 = call ptr @devm_phy_optional_get(ptr noundef %66, ptr noundef nonnull %phy_name) #9
  %67 = ptrtoint ptr %usb3_phy to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %usb3_phy, align 4
  %arrayidx74 = getelementptr ptr, ptr %68, i32 %i.0219
  %69 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call72, ptr %arrayidx74, align 4
  %70 = load ptr, ptr %usb3_phy, align 4
  %arrayidx76 = getelementptr ptr, ptr %70, i32 %i.0219
  %71 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx76, align 4
  %cmp.i194 = icmp ugt ptr %72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i194, label %if.then78, label %if.else84

if.then78:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %72 to i32
  %74 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %xudc, align 8
  %call83 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %75, i32 noundef %73, ptr noundef nonnull @.str.103, i32 noundef %call64) #9
  br label %cleanup

if.else84:                                        ; preds = %if.end67
  %tobool87.not = icmp eq ptr %72, null
  br i1 %tobool87.not, label %if.else84.for.inc_crit_edge, label %do.body

if.else84.for.inc_crit_edge:                      ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.body:                                          ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_phy_get.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_phy_get, %for.inc)) #9
          to label %if.then94 [label %for.inc], !srcloc !437

if.then94:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %xudc, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_phy_get.__UNIQUE_ID_ddebug336, ptr noundef %77, ptr noundef nonnull @.str.105, i32 noundef %call64) #9
  br label %for.inc

cleanup:                                          ; preds = %if.then78, %if.then49, %if.then28
  %err.1 = phi i32 [ %47, %if.then28 ], [ %60, %if.then49 ], [ %73, %if.then78 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %phy_name) #9
  %78 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %soc, align 4
  %num_phys101221 = getelementptr inbounds %struct.tegra_xudc_soc, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %num_phys101221 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_phys101221, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp102222.not = icmp eq i32 %81, 0
  br i1 %cmp102222.not, label %cleanup.cleanup113_crit_edge, label %cleanup.for.body103_crit_edge

cleanup.for.body103_crit_edge:                    ; preds = %cleanup
  br label %for.body103

cleanup.cleanup113_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup113

for.inc:                                          ; preds = %if.then94, %do.body, %if.else84.for.inc_crit_edge, %if.end63.for.inc_crit_edge, %if.else.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %phy_name) #9
  %inc = add nuw i32 %i.0219, 1
  %82 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %soc, align 4
  %num_phys19 = getelementptr inbounds %struct.tegra_xudc_soc, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %num_phys19 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %num_phys19, align 4
  %cmp = icmp ult i32 %inc, %85
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup113_crit_edge

for.inc.cleanup113_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup113

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body103:                                      ; preds = %for.body103.for.body103_crit_edge, %cleanup.for.body103_crit_edge
  %i.1223 = phi i32 [ %inc111, %for.body103.for.body103_crit_edge ], [ 0, %cleanup.for.body103_crit_edge ]
  %86 = ptrtoint ptr %usb3_phy to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %usb3_phy, align 4
  %arrayidx105 = getelementptr ptr, ptr %87, i32 %i.1223
  %88 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %arrayidx105, align 4
  %89 = ptrtoint ptr %utmi_phy to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %utmi_phy, align 4
  %arrayidx107 = getelementptr ptr, ptr %90, i32 %i.1223
  %91 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %arrayidx107, align 4
  %92 = ptrtoint ptr %usbphy to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %usbphy, align 8
  %arrayidx109 = getelementptr ptr, ptr %93, i32 %i.1223
  %94 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %arrayidx109, align 4
  %inc111 = add nuw i32 %i.1223, 1
  %95 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %soc, align 4
  %num_phys101 = getelementptr inbounds %struct.tegra_xudc_soc, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %num_phys101 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %num_phys101, align 4
  %cmp102 = icmp ult i32 %inc111, %98
  br i1 %cmp102, label %for.body103.for.body103_crit_edge, label %for.body103.cleanup113_crit_edge

for.body103.cleanup113_crit_edge:                 ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup113

for.body103.for.body103_crit_edge:                ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body103

cleanup113:                                       ; preds = %for.body103.cleanup113_crit_edge, %for.inc.cleanup113_crit_edge, %cleanup.cleanup113_crit_edge, %if.end17.cleanup113_crit_edge, %devm_kcalloc.exit192.cleanup113_crit_edge, %devm_kcalloc.exit192.thread, %devm_kcalloc.exit188.cleanup113_crit_edge, %devm_kcalloc.exit188.thread, %devm_kcalloc.exit.cleanup113_crit_edge, %devm_kcalloc.exit.thread
  %retval.0 = phi i32 [ -12, %devm_kcalloc.exit.cleanup113_crit_edge ], [ -12, %devm_kcalloc.exit188.cleanup113_crit_edge ], [ -12, %devm_kcalloc.exit192.cleanup113_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit188.thread ], [ -12, %devm_kcalloc.exit192.thread ], [ %err.1, %cleanup.cleanup113_crit_edge ], [ 0, %if.end17.cleanup113_crit_edge ], [ %err.1, %for.body103.cleanup113_crit_edge ], [ 0, %for.inc.cleanup113_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_xudc_powerdomain_init(ptr nocapture noundef %xudc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xudc, align 8
  %call = tail call ptr @dev_pm_domain_attach_by_name(ptr noundef %1, ptr noundef nonnull @.str.112) #9
  %genpd_dev_device = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 14
  %2 = ptrtoint ptr %genpd_dev_device to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %genpd_dev_device, align 8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.113, i32 noundef %3) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @dev_pm_domain_attach_by_name(ptr noundef %1, ptr noundef nonnull @.str.115) #9
  %genpd_dev_ss = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 15
  %4 = ptrtoint ptr %genpd_dev_ss to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call6, ptr %genpd_dev_ss, align 4
  %cmp.i56 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i56, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call6 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.117, i32 noundef %5) #12
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %6 = ptrtoint ptr %genpd_dev_device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %genpd_dev_device, align 8
  %call17 = tail call ptr @device_link_add(ptr noundef %1, ptr noundef %7, i32 noundef 5) #9
  %genpd_dl_device = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 16
  %8 = ptrtoint ptr %genpd_dl_device to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call17, ptr %genpd_dl_device, align 8
  %tobool.not = icmp eq ptr %call17, null
  br i1 %tobool.not, label %do.end22, label %if.end23

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.120) #12
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %9 = ptrtoint ptr %genpd_dev_ss to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %genpd_dev_ss, align 4
  %call25 = tail call ptr @device_link_add(ptr noundef %1, ptr noundef %10, i32 noundef 5) #9
  %genpd_dl_ss = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 17
  %11 = ptrtoint ptr %genpd_dl_ss to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call25, ptr %genpd_dl_ss, align 4
  %tobool27.not = icmp eq ptr %call25, null
  br i1 %tobool27.not, label %do.end31, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.123) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %if.end23.cleanup_crit_edge, %do.end22, %if.then9, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %5, %if.then9 ], [ -19, %do.end31 ], [ -19, %do.end22 ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_xudc_phy_init(ptr nocapture noundef readonly %xudc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %soc = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 1
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %num_phys36 = getelementptr inbounds %struct.tegra_xudc_soc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %num_phys36 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_phys36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp37.not = icmp eq i32 %3, 0
  br i1 %cmp37.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %utmi_phy = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 45
  %usb3_phy = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 43
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %utmi_phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %utmi_phy, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.038
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @phy_init(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.125, i32 noundef %i.038, i32 noundef %call) #12
  br label %exit_phy

if.end:                                           ; preds = %for.body
  %10 = ptrtoint ptr %usb3_phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb3_phy, align 4
  %arrayidx2 = getelementptr ptr, ptr %11, i32 %i.038
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx2, align 4
  %call3 = tail call i32 @phy_init(ptr noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %for.inc

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.128, i32 noundef %i.038, i32 noundef %call3) #12
  br label %exit_phy

for.inc:                                          ; preds = %if.end
  %inc = add nuw i32 %i.038, 1
  %16 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %soc, align 4
  %num_phys = getelementptr inbounds %struct.tegra_xudc_soc, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_phys, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

exit_phy:                                         ; preds = %do.end8, %do.end
  %err.0 = phi i32 [ %call, %do.end ], [ %call3, %do.end8 ]
  %20 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %soc, align 4
  %num_phys8.i = getelementptr inbounds %struct.tegra_xudc_soc, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %num_phys8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_phys8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp9.not.i = icmp eq i32 %23, 0
  br i1 %cmp9.not.i, label %exit_phy.cleanup_crit_edge, label %exit_phy.for.body.i_crit_edge

exit_phy.for.body.i_crit_edge:                    ; preds = %exit_phy
  br label %for.body.i

exit_phy.cleanup_crit_edge:                       ; preds = %exit_phy
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %exit_phy.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %exit_phy.for.body.i_crit_edge ]
  %24 = ptrtoint ptr %usb3_phy to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usb3_phy, align 4
  %arrayidx.i = getelementptr ptr, ptr %25, i32 %i.010.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @phy_exit(ptr noundef %27) #9
  %28 = ptrtoint ptr %utmi_phy to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %utmi_phy, align 4
  %arrayidx1.i = getelementptr ptr, ptr %29, i32 %i.010.i
  %30 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx1.i, align 4
  %call2.i = tail call i32 @phy_exit(ptr noundef %31) #9
  %inc.i = add nuw i32 %i.010.i, 1
  %32 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %soc, align 4
  %num_phys.i = getelementptr inbounds %struct.tegra_xudc_soc, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_phys.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %35
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %exit_phy.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %exit_phy.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %err.0, %for.body.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_xudc_alloc_event_ring(ptr noundef %xudc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xudc, align 8
  %arrayidx = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 7, i32 0
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %1, i32 noundef 65536, ptr noundef %arrayidx, i32 noundef 3264, i32 noundef 0) #9
  %arrayidx1 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 6, i32 0
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.inc

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %entry
  %3 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xudc, align 8
  %arrayidx.1 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 7, i32 1
  %call.i.1 = tail call ptr @dma_alloc_attrs(ptr noundef %4, i32 noundef 65536, ptr noundef %arrayidx.1, i32 noundef 3264, i32 noundef 0) #9
  %arrayidx1.1 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i.1, ptr %arrayidx1.1, align 4
  %tobool.not.1 = icmp eq ptr %call.i.1, null
  br i1 %tobool.not.1, label %for.body6, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body6:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xudc, align 8
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx1, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef 65536, ptr noundef %9, i32 noundef %11, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %for.body6, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %for.body6 ], [ 0, %for.inc.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_xudc_alloc_eps(ptr noundef %xudc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xudc, align 8
  %ep_context_phys = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 13
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %1, i32 noundef 2048, ptr noundef %ep_context_phys, i32 noundef 3264, i32 noundef 0) #9
  %ep_context = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 12
  %2 = ptrtoint ptr %ep_context to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %ep_context, align 8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xudc, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %6, %if.end.dev_name.exit_crit_edge ]
  %call5 = tail call ptr @dmam_pool_create(ptr noundef %retval.0.i, ptr noundef %4, i32 noundef 1024, i32 noundef 16, i32 noundef 0) #9
  %transfer_ring_pool = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 18
  %9 = ptrtoint ptr %transfer_ring_pool to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5, ptr %transfer_ring_pool, align 8
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %dev_name.exit.free_ep_context_crit_edge, label %if.end9

dev_name.exit.free_ep_context_crit_edge:          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_ep_context

if.end9:                                          ; preds = %dev_name.exit
  %ep_list = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 4, i32 4
  %10 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %ep_list, ptr %ep_list, align 4
  %prev.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 4, i32 4, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ep_list, ptr %prev.i, align 4
  %name43.i = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 0, i32 3
  %usb_ep48.i = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 0, i32 1
  %name49.i = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 0, i32 1, i32 1
  %ops52.i = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 0, i32 1, i32 2
  %caps54.i = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 0, i32 1, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end9
  %i.067 = phi i32 [ 0, %if.end9 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %i.067
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %xudc, ptr %arrayidx.i, align 4
  %index3.i = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %i.067, i32 2
  %13 = ptrtoint ptr %index3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %i.067, ptr %index3.i, align 4
  %14 = ptrtoint ptr %ep_context to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ep_context, align 8
  %arrayidx4.i = getelementptr %struct.tegra_xudc_ep_context, ptr %15, i32 %i.067
  %context.i = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %i.067, i32 4
  %16 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx4.i, ptr %context.i, align 4
  %queue.i = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %i.067, i32 12
  %17 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %queue.i, ptr %queue.i, align 4
  %prev.i.i = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %i.067, i32 12, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %queue.i, ptr %prev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.067)
  %cmp.i = icmp eq i32 %i.067, 1
  br i1 %cmp.i, label %for.body.for.inc_crit_edge, label %if.end.i53

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i53:                                       ; preds = %for.body
  %19 = ptrtoint ptr %transfer_ring_pool to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %transfer_ring_pool, align 8
  %transfer_ring_phys.i = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %i.067, i32 6
  %call.i51 = tail call ptr @dma_pool_alloc(ptr noundef %20, i32 noundef 3264, ptr noundef %transfer_ring_phys.i) #9
  %transfer_ring.i = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %i.067, i32 5
  %21 = ptrtoint ptr %transfer_ring.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i51, ptr %transfer_ring.i, align 4
  %tobool.not.i52 = icmp eq ptr %call.i51, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.067)
  %cmp20.not69 = icmp eq i32 %i.067, 0
  br i1 %tobool.not.i52, label %free_eps, label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i53
  br i1 %cmp20.not69, label %if.else42.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end7.i
  %name.i = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %i.067, i32 3
  %div105.i = lshr i32 %i.067, 1
  %rem.i = and i32 %i.067, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp10.i = icmp eq i32 %rem.i, 0
  %cond.i = select i1 %cmp10.i, ptr @.str.131, ptr @.str.132
  %call11.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 8, ptr noundef nonnull @.str.130, i32 noundef %div105.i, ptr noundef nonnull %cond.i) #9
  %usb_ep.i = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %i.067, i32 1
  %name14.i = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %i.067, i32 1, i32 1
  %22 = ptrtoint ptr %name14.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %name.i, ptr %name14.i, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %usb_ep.i, i32 noundef 1024) #9
  %max_streams.i = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %i.067, i32 1, i32 7
  %23 = ptrtoint ptr %max_streams.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 7)
  %bf.load.i = load i56, ptr %max_streams.i, align 2
  %bf.clear.i = and i56 %bf.load.i, -16776961
  %bf.set.i = or i56 %bf.clear.i, 4096
  store i56 %bf.set.i, ptr %max_streams.i, align 2
  %ops.i = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %i.067, i32 1, i32 2
  %24 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @tegra_xudc_ep_ops, ptr %ops.i, align 4
  %caps.i = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %i.067, i32 1, i32 4
  %25 = ptrtoint ptr %caps.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load19.i = load i8, ptr %caps.i, align 4
  %storemerge.v.i = select i1 %cmp10.i, i8 52, i8 56
  %storemerge.i = or i8 %bf.load19.i, %storemerge.v.i
  store i8 %storemerge.i, ptr %caps.i, align 4
  %ep_list.i = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %i.067, i32 1, i32 3
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list.i, ptr noundef %27, ptr noundef %ep_list) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then9.i.for.inc_crit_edge

if.then9.i.for.inc_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i.i.i:                                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %ep_list.i, ptr %prev.i, align 4
  %29 = ptrtoint ptr %ep_list.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %ep_list, ptr %ep_list.i, align 4
  %prev3.i.i.i = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %i.067, i32 1, i32 3, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %ep_list.i, ptr %27, align 4
  br label %for.inc

if.else42.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %call45.i = tail call i32 @strscpy(ptr noundef %name43.i, ptr noundef nonnull @.str.133, i32 noundef 3) #9
  %32 = ptrtoint ptr %name49.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %name43.i, ptr %name49.i, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %usb_ep48.i, i32 noundef 512) #9
  %33 = ptrtoint ptr %ops52.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @tegra_xudc_ep0_ops, ptr %ops52.i, align 4
  %34 = ptrtoint ptr %caps54.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load55.i = load i8, ptr %caps54.i, align 4
  %bf.set67.i = or i8 %bf.load55.i, -116
  store i8 %bf.set67.i, ptr %caps54.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else42.i, %if.end.i.i.i, %if.then9.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.067, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 88) #13
  %tobool.not.i55 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i55, label %for.end.for.body21.preheader_crit_edge, label %if.end17

for.end.for.body21.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body21.preheader

if.end17:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %list.i = getelementptr inbounds %struct.tegra_xudc_request, ptr %call7.i.i.i, i32 0, i32 7
  %36 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %list.i, ptr %list.i, align 8
  %prev.i.i56 = getelementptr inbounds %struct.tegra_xudc_request, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %37 = ptrtoint ptr %prev.i.i56 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %list.i, ptr %prev.i.i56, align 4
  %ep0_req = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 28
  %38 = ptrtoint ptr %ep0_req to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i.i, ptr %ep0_req, align 8
  br label %cleanup

free_eps:                                         ; preds = %if.end.i53
  br i1 %cmp20.not69, label %free_eps.free_ep_context_crit_edge, label %free_eps.for.body21.preheader_crit_edge

free_eps.for.body21.preheader_crit_edge:          ; preds = %free_eps
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body21.preheader

free_eps.free_ep_context_crit_edge:               ; preds = %free_eps
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_ep_context

for.body21.preheader:                             ; preds = %free_eps.for.body21.preheader_crit_edge, %for.end.for.body21.preheader_crit_edge
  %i.170.ph = phi i32 [ 32, %for.end.for.body21.preheader_crit_edge ], [ %i.067, %free_eps.for.body21.preheader_crit_edge ]
  br label %for.body21

for.body21:                                       ; preds = %for.body21.backedge, %for.body21.preheader
  %i.170 = phi i32 [ %i.170.ph, %for.body21.preheader ], [ %sub, %for.body21.backedge ]
  %sub = add i32 %i.170, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cond = icmp eq i32 %sub, 1
  br i1 %cond, label %for.body21.for.body21.backedge_crit_edge, label %if.end.i62

for.body21.for.body21.backedge_crit_edge:         ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body21.backedge

if.end.i62:                                       ; preds = %for.body21
  %39 = ptrtoint ptr %transfer_ring_pool to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %transfer_ring_pool, align 8
  %transfer_ring.i60 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %sub, i32 5
  %41 = ptrtoint ptr %transfer_ring.i60 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %transfer_ring.i60, align 4
  %transfer_ring_phys.i61 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %sub, i32 6
  %43 = ptrtoint ptr %transfer_ring_phys.i61 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %transfer_ring_phys.i61, align 4
  tail call void @dma_pool_free(ptr noundef %40, ptr noundef %42, i32 noundef %44) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp20.not = icmp eq i32 %sub, 0
  br i1 %cmp20.not, label %if.end.i62.free_ep_context_crit_edge, label %if.end.i62.for.body21.backedge_crit_edge

if.end.i62.for.body21.backedge_crit_edge:         ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body21.backedge

if.end.i62.free_ep_context_crit_edge:             ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_ep_context

for.body21.backedge:                              ; preds = %if.end.i62.for.body21.backedge_crit_edge, %for.body21.for.body21.backedge_crit_edge
  br label %for.body21

free_ep_context:                                  ; preds = %if.end.i62.free_ep_context_crit_edge, %free_eps.free_ep_context_crit_edge, %dev_name.exit.free_ep_context_crit_edge
  %45 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %xudc, align 8
  %47 = ptrtoint ptr %ep_context to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ep_context, align 8
  %49 = ptrtoint ptr %ep_context_phys to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ep_context_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %46, i32 noundef 2048, ptr noundef %48, i32 noundef %50, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %free_ep_context, %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %free_ep_context ], [ 0, %if.end17 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_xudc_usb_role_sw_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4456
  %device_mode = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %device_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %device_mode, align 4, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tegra_xudc_device_mode_on(ptr noundef %add.ptr)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tegra_xudc_device_mode_off(ptr noundef %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_xudc_plc_reset_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4608
  %lock = getelementptr i8, ptr %work, i32 -4596
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %wait_csc = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %wait_csc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wait_csc, align 4, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then:                                          ; preds = %entry
  %base.i = getelementptr i8, ptr %work, i32 -180
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 60
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %5 = and i32 %4, -536805376
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741824, i32 %5)
  %cmp8 = icmp eq i32 %5, -1073741824
  br i1 %cmp8, label %do.end13, label %if.then.if.end18_crit_edge

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

do.end13:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.163) #12
  %curr_utmi_phy = getelementptr i8, ptr %work, i32 -96
  %8 = ptrtoint ptr %curr_utmi_phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %curr_utmi_phy, align 8
  %call14 = tail call i32 @phy_set_mode_ext(ptr noundef %9, i32 noundef 11, i32 noundef 0) #9
  %10 = ptrtoint ptr %curr_utmi_phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %curr_utmi_phy, align 8
  %call16 = tail call i32 @phy_set_mode_ext(ptr noundef %11, i32 noundef 11, i32 noundef 2) #9
  %12 = ptrtoint ptr %wait_csc to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %wait_csc, align 4
  br label %if.end18

if.end18:                                         ; preds = %do.end13, %if.then.if.end18_crit_edge, %entry.if.end18_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_xudc_port_reset_war_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4712
  %lock = getelementptr i8, ptr %work, i32 -4700
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %device_mode = getelementptr i8, ptr %work, i32 -260
  %0 = ptrtoint ptr %device_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %device_mode, align 4, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end50_crit_edge, label %land.lhs.true

entry.if.end50_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

land.lhs.true:                                    ; preds = %entry
  %wait_for_sec_prc = getelementptr i8, ptr %work, i32 100
  %2 = ptrtoint ptr %wait_for_sec_prc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wait_for_sec_prc, align 4, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool8.not = icmp eq i8 %3, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end50_crit_edge, label %if.then

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then:                                          ; preds = %land.lhs.true
  %base.i = getelementptr i8, ptr %work, i32 -284
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 60
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !433
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %and = lshr i32 %7, 5
  %shr = and i32 %and, 15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_port_reset_war_work.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_port_reset_war_work, %do.end20)) #9
          to label %if.then18 [label %do.end20], !srcloc !437

if.then18:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_port_reset_war_work.__UNIQUE_ID_ddebug301, ptr noundef %9, ptr noundef nonnull @.str.166, i32 noundef %shr) #9
  br label %do.end20

do.end20:                                         ; preds = %if.then18, %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr)
  %cmp21 = icmp eq i32 %shr, 4
  br i1 %cmp21, label %do.body24, label %do.end20.if.end50_crit_edge

do.end20.if.end50_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

do.body24:                                        ; preds = %do.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_port_reset_war_work.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_port_reset_war_work, %do.end42)) #9
          to label %if.then38 [label %do.end42], !srcloc !437

if.then38:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_port_reset_war_work.__UNIQUE_ID_ddebug302, ptr noundef %11, ptr noundef nonnull @.str.167) #9
  br label %do.end42

do.end42:                                         ; preds = %if.then38, %do.body24
  %curr_utmi_phy = getelementptr i8, ptr %work, i32 -200
  %12 = ptrtoint ptr %curr_utmi_phy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %curr_utmi_phy, align 8
  %call43 = tail call i32 @tegra_phy_xusb_utmi_port_reset(ptr noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call43)
  %cmp44 = icmp eq i32 %call43, 1
  br i1 %cmp44, label %if.then46, label %do.end42.if.end50_crit_edge

do.end42.if.end50_crit_edge:                      ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then46:                                        ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %wait_for_sec_prc to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %wait_for_sec_prc, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %do.end42.if.end50_crit_edge, %do.end20.if.end50_crit_edge, %land.lhs.true.if.end50_crit_edge, %entry.if.end50_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_xudc_free_eps(ptr nocapture noundef readonly %xudc) unnamed_addr #2 align 64 {
for.body.peel.next10:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ep0_req = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 28
  %0 = ptrtoint ptr %ep0_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep0_req, align 8
  tail call void @kfree(ptr noundef %1) #9
  %transfer_ring_pool.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 18
  %2 = ptrtoint ptr %transfer_ring_pool.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_ring_pool.i, align 8
  %transfer_ring.i.peel = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 0, i32 5
  %4 = ptrtoint ptr %transfer_ring.i.peel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transfer_ring.i.peel, align 4
  %transfer_ring_phys.i.peel = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 0, i32 6
  %6 = ptrtoint ptr %transfer_ring_phys.i.peel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %transfer_ring_phys.i.peel, align 4
  tail call void @dma_pool_free(ptr noundef %3, ptr noundef %5, i32 noundef %7) #9
  br label %tegra_xudc_free_ep.exit

tegra_xudc_free_ep.exit:                          ; preds = %tegra_xudc_free_ep.exit.tegra_xudc_free_ep.exit_crit_edge, %for.body.peel.next10
  %i.08 = phi i32 [ 2, %for.body.peel.next10 ], [ %inc, %tegra_xudc_free_ep.exit.tegra_xudc_free_ep.exit_crit_edge ]
  %8 = ptrtoint ptr %transfer_ring_pool.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transfer_ring_pool.i, align 8
  %transfer_ring.i = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %i.08, i32 5
  %10 = ptrtoint ptr %transfer_ring.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %transfer_ring.i, align 4
  %transfer_ring_phys.i = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %i.08, i32 6
  %12 = ptrtoint ptr %transfer_ring_phys.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %transfer_ring_phys.i, align 4
  tail call void @dma_pool_free(ptr noundef %9, ptr noundef %11, i32 noundef %13) #9
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %tegra_xudc_free_ep.exit.tegra_xudc_free_ep.exit_crit_edge, !llvm.loop !431

tegra_xudc_free_ep.exit.tegra_xudc_free_ep.exit_crit_edge: ; preds = %tegra_xudc_free_ep.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_xudc_free_ep.exit

for.end:                                          ; preds = %tegra_xudc_free_ep.exit
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xudc, align 8
  %ep_context = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 12
  %16 = ptrtoint ptr %ep_context to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ep_context, align 8
  %ep_context_phys = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 13
  %18 = ptrtoint ptr %ep_context_phys to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ep_context_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %15, i32 noundef 2048, ptr noundef %17, i32 noundef %19, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_xudc_free_event_ring(ptr nocapture noundef readonly %xudc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xudc, align 8
  %arrayidx = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 6, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 7, i32 0
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  tail call void @dma_free_attrs(ptr noundef %1, i32 noundef 65536, ptr noundef %3, i32 noundef %5, i32 noundef 0) #9
  %6 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xudc, align 8
  %arrayidx.1 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %arrayidx1.1 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1.1, align 4
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef 65536, ptr noundef %9, i32 noundef %11, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_xudc_phy_exit(ptr nocapture noundef readonly %xudc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %soc = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 1
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %num_phys8 = getelementptr inbounds %struct.tegra_xudc_soc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %num_phys8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_phys8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9.not = icmp eq i32 %3, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %usb3_phy = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 43
  %utmi_phy = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 45
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %usb3_phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb3_phy, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.010
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @phy_exit(ptr noundef %7) #9
  %8 = ptrtoint ptr %utmi_phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %utmi_phy, align 4
  %arrayidx1 = getelementptr ptr, ptr %9, i32 %i.010
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx1, align 4
  %call2 = tail call i32 @phy_exit(ptr noundef %11) #9
  %inc = add nuw i32 %i.010, 1
  %12 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %soc, align 4
  %num_phys = getelementptr inbounds %struct.tegra_xudc_soc, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_phys, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_xudc_powerdomain_remove(ptr nocapture noundef readonly %xudc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %genpd_dl_ss = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 17
  %0 = ptrtoint ptr %genpd_dl_ss to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %genpd_dl_ss, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @device_link_del(ptr noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %genpd_dl_device = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 16
  %2 = ptrtoint ptr %genpd_dl_device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %genpd_dl_device, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @device_link_del(ptr noundef nonnull %3) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %genpd_dev_ss = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 15
  %4 = ptrtoint ptr %genpd_dev_ss to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %genpd_dev_ss, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dev_pm_domain_detach(ptr noundef nonnull %5, i1 noundef zeroext true) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %genpd_dev_device = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 14
  %6 = ptrtoint ptr %genpd_dev_device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %genpd_dev_device, align 8
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %if.end9.if.end13_crit_edge, label %if.then11

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dev_pm_domain_detach(ptr noundef nonnull %7, i1 noundef zeroext true) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_xusb_padctl_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_xudc_handle_event(ptr noundef %xudc, ptr noundef %event) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %control.i = getelementptr inbounds %struct.tegra_xudc_trb, ptr %event, i32 0, i32 3
  %0 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %control.i, align 4
  %2 = lshr i32 %1, 18
  %and.i = and i32 %2, 63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_trb.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_handle_event, %dump_trb.exit)) #9
          to label %if.then.i [label %dump_trb.exit], !srcloc !437

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xudc, align 8
  %5 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %event, align 4
  %data_hi.i = getelementptr inbounds %struct.tegra_xudc_trb, ptr %event, i32 0, i32 1
  %7 = ptrtoint ptr %data_hi.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_hi.i, align 4
  %status.i = getelementptr inbounds %struct.tegra_xudc_trb, ptr %event, i32 0, i32 2
  %9 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status.i, align 4
  %11 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %control.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_trb.__UNIQUE_ID_ddebug295, ptr noundef %4, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.28, ptr noundef %event, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12) #9
  br label %dump_trb.exit

dump_trb.exit:                                    ; preds = %if.then.i, %entry
  %13 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %do.end [
    i32 34, label %sw.bb
    i32 32, label %sw.bb1
    i32 63, label %sw.bb2
  ]

sw.bb:                                            ; preds = %dump_trb.exit
  %base.i.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 35
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %sw.bb
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 60
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %17 = and i32 %16, 59904
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

lor.rhs.i:                                        ; preds = %while.cond.i
  %18 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %19, i32 108
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %21 = and i32 %20, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool3.not.i = icmp eq i32 %21, 0
  br i1 %tobool3.not.i, label %lor.rhs.i.sw.epilog_crit_edge, label %lor.rhs.i.while.body.i_crit_edge

lor.rhs.i.while.body.i_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

lor.rhs.i.sw.epilog_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

while.body.i:                                     ; preds = %lor.rhs.i.while.body.i_crit_edge, %while.cond.i.while.body.i_crit_edge
  tail call fastcc void @__tegra_xudc_handle_port_status(ptr noundef %xudc) #9
  br label %while.cond.i

sw.bb1:                                           ; preds = %dump_trb.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tegra_xudc_handle_transfer_event(ptr noundef %xudc, ptr noundef %event)
  br label %sw.epilog

sw.bb2:                                           ; preds = %dump_trb.exit
  %status.i.i = getelementptr inbounds %struct.tegra_xudc_trb, ptr %event, i32 0, i32 2
  %22 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status.i.i, align 4
  %24 = and i32 %23, -65536
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  %setup_state.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 21
  %26 = ptrtoint ptr %setup_state.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %setup_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not.i = icmp eq i32 %27, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i12

if.then.i12:                                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  %setup_packet.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 20
  %28 = ptrtoint ptr %event to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %event, align 1
  %30 = ptrtoint ptr %setup_packet.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %setup_packet.i, align 8
  %seq_num4.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 20, i32 1
  %31 = ptrtoint ptr %seq_num4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %25, ptr %seq_num4.i, align 8
  %queued_setup_packet.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 19
  %32 = ptrtoint ptr %queued_setup_packet.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %queued_setup_packet.i, align 4
  br label %sw.epilog

if.else.i:                                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = trunc i32 %25 to i16
  tail call fastcc void @tegra_xudc_handle_ep0_setup_packet(ptr noundef %xudc, ptr noundef %event, i16 noundef zeroext %conv.i) #9
  br label %sw.epilog

do.end:                                           ; preds = %dump_trb.exit
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.29, i32 noundef %and.i) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.else.i, %if.then.i12, %sw.bb1, %lor.rhs.i.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_xudc_handle_transfer_event(ptr noundef %xudc, ptr nocapture noundef readonly %event) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %control.i = getelementptr inbounds %struct.tegra_xudc_trb, ptr %event, i32 0, i32 3
  %0 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %control.i, align 4
  %2 = lshr i32 %1, 8
  %and.i = and i32 %2, 31
  %arrayidx = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %and.i
  %context = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %and.i, i32 4
  %3 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %context, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %7 = and i32 %6, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.53, i32 noundef %and.i) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %event, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  %transfer_ring_phys.i = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %and.i, i32 6
  %13 = ptrtoint ptr %transfer_ring_phys.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %transfer_ring_phys.i, align 4
  %sub.i = sub i32 %12, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %sub.i)
  %cmp.i = icmp ugt i32 %sub.i, 1023
  br i1 %cmp.i, label %do.end.i, label %if.end21.i, !prof !430

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 907, i32 noundef 9, ptr noundef null) #9
  br label %trb_phys_to_virt.exit

if.end21.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %div26.i = lshr i32 %sub.i, 4
  %transfer_ring.i = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %and.i, i32 5
  %15 = ptrtoint ptr %transfer_ring.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %transfer_ring.i, align 4
  %arrayidx.i = getelementptr %struct.tegra_xudc_trb, ptr %16, i32 %div26.i
  %phi.cast = ptrtoint ptr %arrayidx.i to i32
  br label %trb_phys_to_virt.exit

trb_phys_to_virt.exit:                            ; preds = %if.end21.i, %do.end.i
  %retval.0.i139 = phi i32 [ 0, %do.end.i ], [ %phi.cast, %if.end21.i ]
  %status.i = getelementptr inbounds %struct.tegra_xudc_trb, ptr %event, i32 0, i32 2
  %17 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status.i, align 4
  %19 = and i32 %18, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp8.not = icmp eq i32 %19, 3
  br i1 %cmp8.not, label %trb_phys_to_virt.exit.sw.bb33_crit_edge, label %if.end17

trb_phys_to_virt.exit.sw.bb33_crit_edge:          ; preds = %trb_phys_to_virt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb33

if.end17:                                         ; preds = %trb_phys_to_virt.exit
  %transfer_ring = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %and.i, i32 5
  %20 = ptrtoint ptr %transfer_ring to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transfer_ring, align 4
  %sub.ptr.rhs.cast = ptrtoint ptr %21 to i32
  %sub.ptr.sub = sub i32 %retval.0.i139, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 4
  %add = add nsw i32 %sub.ptr.div, 1
  %deq_ptr = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %and.i, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %add)
  %cmp12 = icmp eq i32 %add, 63
  %spec.select = select i1 %cmp12, i32 0, i32 %add
  %22 = ptrtoint ptr %deq_ptr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select, ptr %deq_ptr, align 4
  %ring_full = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %and.i, i32 10
  %23 = ptrtoint ptr %ring_full to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %ring_full, align 1
  %trunc155 = trunc i32 %18 to i8
  %24 = zext i8 %trunc155 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.191)
  switch i8 %trunc155, label %do.body64 [
    i8 1, label %if.end17.sw.bb_crit_edge
    i8 13, label %if.end17.sw.bb_crit_edge156
    i8 -35, label %do.end22
    i8 -36, label %do.end27
    i8 3, label %if.end17.sw.bb33_crit_edge
    i8 -37, label %if.end17.do.end38_crit_edge
    i8 -34, label %if.end17.do.end38_crit_edge157
    i8 10, label %if.end17.do.end38_crit_edge158
    i8 14, label %if.end17.do.end38_crit_edge159
    i8 15, label %if.end17.do.end38_crit_edge160
    i8 31, label %if.end17.do.end38_crit_edge161
    i8 4, label %if.end17.do.end38_crit_edge162
    i8 5, label %if.end17.do.end38_crit_edge163
    i8 -33, label %do.end44
    i8 26, label %do.body53
  ]

if.end17.do.end38_crit_edge163:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end38

if.end17.do.end38_crit_edge162:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end38

if.end17.do.end38_crit_edge161:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end38

if.end17.do.end38_crit_edge160:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end38

if.end17.do.end38_crit_edge159:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end38

if.end17.do.end38_crit_edge158:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end38

if.end17.do.end38_crit_edge157:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end38

if.end17.do.end38_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end38

if.end17.sw.bb33_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb33

if.end17.sw.bb_crit_edge156:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end17.sw.bb_crit_edge:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %if.end17.sw.bb_crit_edge, %if.end17.sw.bb_crit_edge156
  tail call fastcc void @tegra_xudc_handle_transfer_completion(ptr noundef %xudc, ptr noundef %arrayidx, ptr noundef %event)
  br label %cleanup

do.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.56, i32 noundef %and.i) #12
  %stream_rejected = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %and.i, i32 11
  %27 = ptrtoint ptr %stream_rejected to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %stream_rejected, align 2
  br label %cleanup

do.end27:                                         ; preds = %if.end17
  %28 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull @.str.59, i32 noundef %and.i) #12
  %stream_rejected29 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %and.i, i32 11
  %30 = ptrtoint ptr %stream_rejected29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %stream_rejected29, align 2, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not = icmp eq i8 %31, 0
  br i1 %tobool.not, label %do.end27.if.end32_crit_edge, label %if.then30

do.end27.if.end32_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then30:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %stream_rejected29 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %stream_rejected29, align 2
  tail call fastcc void @ep_wait_for_stopped(ptr noundef %xudc, i32 noundef %and.i)
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %do.end27.if.end32_crit_edge
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx)
  br label %cleanup

sw.bb33:                                          ; preds = %if.end17.sw.bb33_crit_edge, %trb_phys_to_virt.exit.sw.bb33_crit_edge
  tail call fastcc void @ep_wait_for_stopped(ptr noundef %xudc, i32 noundef %and.i)
  %deq_ptr34 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %and.i, i32 8
  %33 = ptrtoint ptr %deq_ptr34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %deq_ptr34, align 4
  %enq_ptr = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %and.i, i32 7
  %35 = ptrtoint ptr %enq_ptr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %enq_ptr, align 4
  %queue.i = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %and.i, i32 12
  %36 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not4.i = icmp eq ptr %37, %queue.i
  br i1 %cmp.i.not4.i, label %sw.bb33.do.end38_crit_edge, label %sw.bb33.while.body.i_crit_edge

sw.bb33.while.body.i_crit_edge:                   ; preds = %sw.bb33
  br label %while.body.i

sw.bb33.do.end38_crit_edge:                       ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end38

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %sw.bb33.while.body.i_crit_edge
  %38 = phi ptr [ %40, %while.body.i.while.body.i_crit_edge ], [ %37, %sw.bb33.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %38, i32 -80
  tail call fastcc void @tegra_xudc_req_done(ptr noundef %arrayidx, ptr noundef %add.ptr.i, i32 noundef -5) #9
  %39 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %40, %queue.i
  br i1 %cmp.i.not.i, label %while.body.i.do.end38_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.do.end38_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end38

do.end38:                                         ; preds = %while.body.i.do.end38_crit_edge, %sw.bb33.do.end38_crit_edge, %if.end17.do.end38_crit_edge, %if.end17.do.end38_crit_edge157, %if.end17.do.end38_crit_edge158, %if.end17.do.end38_crit_edge159, %if.end17.do.end38_crit_edge160, %if.end17.do.end38_crit_edge161, %if.end17.do.end38_crit_edge162, %if.end17.do.end38_crit_edge163
  %41 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.62, i32 noundef %19, i32 noundef %and.i) #12
  tail call fastcc void @ep_halt(ptr noundef %xudc, i32 noundef %and.i)
  br label %cleanup

do.end44:                                         ; preds = %if.end17
  %43 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.65) #12
  %queue.i140 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %and.i, i32 12
  %45 = ptrtoint ptr %queue.i140 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %queue.i140, align 4
  %cmp.i.not4.i141 = icmp eq ptr %46, %queue.i140
  br i1 %cmp.i.not4.i141, label %do.end44.tegra_xudc_ep_nuke.exit145_crit_edge, label %do.end44.while.body.i144_crit_edge

do.end44.while.body.i144_crit_edge:               ; preds = %do.end44
  br label %while.body.i144

do.end44.tegra_xudc_ep_nuke.exit145_crit_edge:    ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_xudc_ep_nuke.exit145

while.body.i144:                                  ; preds = %while.body.i144.while.body.i144_crit_edge, %do.end44.while.body.i144_crit_edge
  %47 = phi ptr [ %49, %while.body.i144.while.body.i144_crit_edge ], [ %46, %do.end44.while.body.i144_crit_edge ]
  %add.ptr.i142 = getelementptr i8, ptr %47, i32 -80
  tail call fastcc void @tegra_xudc_req_done(ptr noundef %arrayidx, ptr noundef %add.ptr.i142, i32 noundef -22) #9
  %48 = ptrtoint ptr %queue.i140 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %queue.i140, align 4
  %cmp.i.not.i143 = icmp eq ptr %49, %queue.i140
  br i1 %cmp.i.not.i143, label %while.body.i144.tegra_xudc_ep_nuke.exit145_crit_edge, label %while.body.i144.while.body.i144_crit_edge

while.body.i144.while.body.i144_crit_edge:        ; preds = %while.body.i144
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i144

while.body.i144.tegra_xudc_ep_nuke.exit145_crit_edge: ; preds = %while.body.i144
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_xudc_ep_nuke.exit145

tegra_xudc_ep_nuke.exit145:                       ; preds = %while.body.i144.tegra_xudc_ep_nuke.exit145_crit_edge, %do.end44.tegra_xudc_ep_nuke.exit145_crit_edge
  %setup_state = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 21
  %50 = ptrtoint ptr %setup_state to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %setup_state, align 4
  %queued_setup_packet = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 19
  %51 = ptrtoint ptr %queued_setup_packet to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %queued_setup_packet, align 4, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool46.not = icmp eq i8 %52, 0
  br i1 %tobool46.not, label %tegra_xudc_ep_nuke.exit145.cleanup_crit_edge, label %if.end48

tegra_xudc_ep_nuke.exit145.cleanup_crit_edge:     ; preds = %tegra_xudc_ep_nuke.exit145
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end48:                                         ; preds = %tegra_xudc_ep_nuke.exit145
  call void @__sanitizer_cov_trace_pc() #11
  %setup_packet = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 20
  %seq_num = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 20, i32 1
  %53 = ptrtoint ptr %seq_num to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %seq_num, align 8
  %conv50 = trunc i32 %54 to i16
  tail call fastcc void @tegra_xudc_handle_ep0_setup_packet(ptr noundef %xudc, ptr noundef %setup_packet, i16 noundef zeroext %conv50)
  %55 = ptrtoint ptr %queued_setup_packet to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %queued_setup_packet, align 4
  br label %cleanup

do.body53:                                        ; preds = %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_handle_transfer_event.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_handle_transfer_event, %do.end63)) #9
          to label %if.then59 [label %do.end63], !srcloc !437

if.then59:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_handle_transfer_event.__UNIQUE_ID_ddebug325, ptr noundef %57, ptr noundef nonnull @.str.67, i32 noundef %and.i) #9
  br label %do.end63

do.end63:                                         ; preds = %if.then59, %do.body53
  %queue.i146 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %and.i, i32 12
  %58 = ptrtoint ptr %queue.i146 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %queue.i146, align 4
  %cmp.i.not4.i147 = icmp eq ptr %59, %queue.i146
  br i1 %cmp.i.not4.i147, label %do.end63.cleanup_crit_edge, label %do.end63.while.body.i150_crit_edge

do.end63.while.body.i150_crit_edge:               ; preds = %do.end63
  br label %while.body.i150

do.end63.cleanup_crit_edge:                       ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.i150:                                  ; preds = %while.body.i150.while.body.i150_crit_edge, %do.end63.while.body.i150_crit_edge
  %60 = phi ptr [ %62, %while.body.i150.while.body.i150_crit_edge ], [ %59, %do.end63.while.body.i150_crit_edge ]
  %add.ptr.i148 = getelementptr i8, ptr %60, i32 -80
  tail call fastcc void @tegra_xudc_req_done(ptr noundef %arrayidx, ptr noundef %add.ptr.i148, i32 noundef -111) #9
  %61 = ptrtoint ptr %queue.i146 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %queue.i146, align 4
  %cmp.i.not.i149 = icmp eq ptr %62, %queue.i146
  br i1 %cmp.i.not.i149, label %while.body.i150.cleanup_crit_edge, label %while.body.i150.while.body.i150_crit_edge

while.body.i150.while.body.i150_crit_edge:        ; preds = %while.body.i150
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i150

while.body.i150.cleanup_crit_edge:                ; preds = %while.body.i150
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body64:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_handle_transfer_event.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_handle_transfer_event, %cleanup)) #9
          to label %if.then78 [label %cleanup], !srcloc !437

if.then78:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_handle_transfer_event.__UNIQUE_ID_ddebug326, ptr noundef %64, ptr noundef nonnull @.str.68, i32 noundef %19, i32 noundef %and.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then78, %do.body64, %while.body.i150.cleanup_crit_edge, %do.end63.cleanup_crit_edge, %if.end48, %tegra_xudc_ep_nuke.exit145.cleanup_crit_edge, %do.end38, %if.end32, %do.end22, %sw.bb, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__tegra_xudc_handle_port_status(ptr noundef %xudc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 35
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 108
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !433
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %4 = and i32 %3, 1048577
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048577, i32 %4)
  %.not = icmp eq i32 %4, 1048577
  br i1 %.not, label %do.body, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__tegra_xudc_handle_port_status.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__tegra_xudc_handle_port_status, %do.end)) #9
          to label %if.then8 [label %do.end], !srcloc !437

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__tegra_xudc_handle_port_status.__UNIQUE_ID_ddebug329, ptr noundef %6, ptr noundef nonnull @.str.36, i32 noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %and9 = and i32 %3, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %7 = tail call i32 @llvm.bswap.i32(i32 %and9) #9
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i281 = getelementptr i8, ptr %9, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i281, i32 %7) #9, !srcloc !436
  br label %if.end10

if.end10:                                         ; preds = %do.end, %entry.if.end10_crit_edge
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i283 = getelementptr i8, ptr %11, i32 60
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i283) #9, !srcloc !433
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %14 = and i32 %13, 2097168
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.192)
  switch i32 %14, label %if.end10.if.end71_crit_edge [
    i32 2097168, label %do.body18
    i32 2097152, label %do.body49
  ]

if.end10.if.end71_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

do.body18:                                        ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__tegra_xudc_handle_port_status.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__tegra_xudc_handle_port_status, %do.end36)) #9
          to label %if.then32 [label %do.end36], !srcloc !437

if.then32:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__tegra_xudc_handle_port_status.__UNIQUE_ID_ddebug330, ptr noundef %17, ptr noundef nonnull @.str.37, i32 noundef %13) #9
  br label %do.end36

do.end36:                                         ; preds = %if.then32, %do.body18
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 60
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %21 = and i32 %20, -33614337
  %22 = or i32 %21, 33562624
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %24, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %22) #9, !srcloc !436
  %soc = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 1
  %25 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %soc, align 4
  %port_reset_quirk = getelementptr inbounds %struct.tegra_xudc_soc, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %port_reset_quirk to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %port_reset_quirk, align 1, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool37.not = icmp eq i8 %28, 0
  br i1 %tobool37.not, label %do.end36.if.end71_crit_edge, label %if.then38

do.end36.if.end71_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then38:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #11
  %port_reset_war_work = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %29 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %port_reset_war_work, i32 noundef 10) #9
  br label %if.end71.sink.split

do.body49:                                        ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__tegra_xudc_handle_port_status.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__tegra_xudc_handle_port_status, %do.end67)) #9
          to label %if.then63 [label %do.end67], !srcloc !437

if.then63:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__tegra_xudc_handle_port_status.__UNIQUE_ID_ddebug331, ptr noundef %31, ptr noundef nonnull @.str.38, i32 noundef %13) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then63, %do.body49
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i285 = getelementptr i8, ptr %33, i32 60
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i285) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %35 = and i32 %34, -33614337
  %36 = or i32 %35, 33562624
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 4
  %add.ptr.i5.i287 = getelementptr i8, ptr %38, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i287, i32 %36) #9, !srcloc !436
  tail call fastcc void @tegra_xudc_reset(ptr noundef %xudc) #9
  %driver.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 5
  %39 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %driver.i, align 8
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %do.end67.tegra_xudc_port_reset.exit_crit_edge, label %if.then.i

do.end67.tegra_xudc_port_reset.exit_crit_edge:    ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_xudc_port_reset.exit

if.then.i:                                        ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  %gadget.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 4
  %41 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %driver.i, align 8
  tail call void @usb_gadget_udc_reset(ptr noundef %gadget.i, ptr noundef %42) #9
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  br label %tegra_xudc_port_reset.exit

tegra_xudc_port_reset.exit:                       ; preds = %if.then.i, %do.end67.tegra_xudc_port_reset.exit_crit_edge
  tail call fastcc void @tegra_xudc_port_connect(ptr noundef %xudc) #9
  %port_reset_war_work68 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 57
  %call69 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %port_reset_war_work68) #9
  br label %if.end71.sink.split

if.end71.sink.split:                              ; preds = %tegra_xudc_port_reset.exit, %if.then38
  %.sink = phi i8 [ 1, %if.then38 ], [ 0, %tegra_xudc_port_reset.exit ]
  %wait_for_sec_prc = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 58
  %43 = ptrtoint ptr %wait_for_sec_prc to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %.sink, ptr %wait_for_sec_prc, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.end71.sink.split, %do.end36.if.end71_crit_edge, %if.end10.if.end71_crit_edge
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 4
  %add.ptr.i289 = getelementptr i8, ptr %45, i32 60
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i289) #9, !srcloc !433
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %and73 = and i32 %47, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.end71.if.end100_crit_edge, label %do.body76

if.end71.if.end100_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

do.body76:                                        ; preds = %if.end71
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__tegra_xudc_handle_port_status.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__tegra_xudc_handle_port_status, %do.end94)) #9
          to label %if.then90 [label %do.end94], !srcloc !437

if.then90:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__tegra_xudc_handle_port_status.__UNIQUE_ID_ddebug332, ptr noundef %49, ptr noundef nonnull @.str.39, i32 noundef %47) #9
  br label %do.end94

do.end94:                                         ; preds = %if.then90, %do.body76
  %50 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i291 = getelementptr i8, ptr %51, i32 60
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i291) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %53 = and i32 %52, -33614337
  %54 = or i32 %53, 33556480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %55 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i, align 4
  %add.ptr.i5.i293 = getelementptr i8, ptr %56, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i293, i32 %54) #9, !srcloc !436
  %57 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i, align 4
  %add.ptr.i295 = getelementptr i8, ptr %58, i32 60
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i295) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %60 = and i32 %59, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool97.not = icmp eq i32 %60, 0
  br i1 %tobool97.not, label %if.then98, label %do.end94.if.end100_crit_edge

do.end94.if.end100_crit_edge:                     ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

if.then98:                                        ; preds = %do.end94
  tail call fastcc void @tegra_xudc_reset(ptr noundef %xudc) #9
  %driver.i296 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 5
  %61 = ptrtoint ptr %driver.i296 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %driver.i296, align 8
  %tobool.not.i297 = icmp eq ptr %62, null
  br i1 %tobool.not.i297, label %if.then98.tegra_xudc_port_reset.exit301_crit_edge, label %if.then.i300

if.then98.tegra_xudc_port_reset.exit301_crit_edge: ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_xudc_port_reset.exit301

if.then.i300:                                     ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i298 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %lock.i298) #9
  %gadget.i299 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 4
  %63 = ptrtoint ptr %driver.i296 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %driver.i296, align 8
  tail call void @usb_gadget_udc_reset(ptr noundef %gadget.i299, ptr noundef %64) #9
  tail call void @_raw_spin_lock(ptr noundef %lock.i298) #9
  br label %tegra_xudc_port_reset.exit301

tegra_xudc_port_reset.exit301:                    ; preds = %if.then.i300, %if.then98.tegra_xudc_port_reset.exit301_crit_edge
  tail call fastcc void @tegra_xudc_port_connect(ptr noundef %xudc) #9
  br label %if.end100

if.end100:                                        ; preds = %tegra_xudc_port_reset.exit301, %do.end94.if.end100_crit_edge, %if.end71.if.end100_crit_edge
  %65 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i, align 4
  %add.ptr.i303 = getelementptr i8, ptr %66, i32 60
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i303) #9, !srcloc !433
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %and102 = and i32 %68, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.end100.if.end133_crit_edge, label %do.body105

if.end100.if.end133_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133

do.body105:                                       ; preds = %if.end100
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__tegra_xudc_handle_port_status.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__tegra_xudc_handle_port_status, %do.end123)) #9
          to label %if.then119 [label %do.end123], !srcloc !437

if.then119:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__tegra_xudc_handle_port_status.__UNIQUE_ID_ddebug333, ptr noundef %70, ptr noundef nonnull @.str.40, i32 noundef %68) #9
  br label %do.end123

do.end123:                                        ; preds = %if.then119, %do.body105
  %71 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i305 = getelementptr i8, ptr %72, i32 60
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i305) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %74 = and i32 %73, -59905
  %75 = or i32 %74, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %76 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i, align 4
  %add.ptr.i5.i307 = getelementptr i8, ptr %77, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i307, i32 %75) #9, !srcloc !436
  %and124 = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %if.else, label %if.then126

if.then126:                                       ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tegra_xudc_port_connect(ptr noundef %xudc)
  br label %if.end127

if.else:                                          ; preds = %do.end123
  tail call fastcc void @tegra_xudc_reset(ptr noundef %xudc) #9
  %driver.i308 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 5
  %78 = ptrtoint ptr %driver.i308 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %driver.i308, align 8
  %tobool.not.i309 = icmp eq ptr %79, null
  br i1 %tobool.not.i309, label %if.else.tegra_xudc_port_disconnect.exit_crit_edge, label %land.lhs.true.i

if.else.tegra_xudc_port_disconnect.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_xudc_port_disconnect.exit

land.lhs.true.i:                                  ; preds = %if.else
  %disconnect.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %79, i32 0, i32 5
  %80 = ptrtoint ptr %disconnect.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %disconnect.i, align 4
  %tobool2.not.i = icmp eq ptr %81, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.tegra_xudc_port_disconnect.exit_crit_edge, label %if.then.i312

land.lhs.true.i.tegra_xudc_port_disconnect.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_xudc_port_disconnect.exit

if.then.i312:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i310 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %lock.i310) #9
  %82 = ptrtoint ptr %driver.i308 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %driver.i308, align 8
  %disconnect4.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %disconnect4.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %disconnect4.i, align 4
  %gadget.i311 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 4
  tail call void %85(ptr noundef %gadget.i311) #9
  tail call void @_raw_spin_lock(ptr noundef %lock.i310) #9
  br label %tegra_xudc_port_disconnect.exit

tegra_xudc_port_disconnect.exit:                  ; preds = %if.then.i312, %land.lhs.true.i.tegra_xudc_port_disconnect.exit_crit_edge, %if.else.tegra_xudc_port_disconnect.exit_crit_edge
  %device_state.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 32
  %86 = ptrtoint ptr %device_state.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %device_state.i, align 8
  %gadget6.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 4
  tail call void @usb_gadget_set_state(ptr noundef %gadget6.i, i32 noundef 0) #9
  %disconnect_complete.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 53
  tail call void @complete(ptr noundef %disconnect_complete.i) #9
  br label %if.end127

if.end127:                                        ; preds = %tegra_xudc_port_disconnect.exit, %if.then126
  %wait_csc = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 56
  %87 = ptrtoint ptr %wait_csc to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %wait_csc, align 4, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool128.not = icmp eq i8 %88, 0
  br i1 %tobool128.not, label %if.end127.if.end133_crit_edge, label %if.then129

if.end127.if.end133_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133

if.then129:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  %plc_reset_work = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 55
  %call130 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %plc_reset_work) #9
  %89 = ptrtoint ptr %wait_csc to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %wait_csc, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.then129, %if.end127.if.end133_crit_edge, %if.end100.if.end133_crit_edge
  %90 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i, align 4
  %add.ptr.i314 = getelementptr i8, ptr %91, i32 60
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i314) #9, !srcloc !433
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %and135 = and i32 %93, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %if.end133.if.end172_crit_edge, label %if.then137

if.end133.if.end172_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end172

if.then137:                                       ; preds = %if.end133
  %and138 = lshr i32 %93, 5
  %shr = and i32 %and138, 15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__tegra_xudc_handle_port_status.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__tegra_xudc_handle_port_status, %do.end157)) #9
          to label %if.then153 [label %do.end157], !srcloc !437

if.then153:                                       ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__tegra_xudc_handle_port_status.__UNIQUE_ID_ddebug334, ptr noundef %95, ptr noundef nonnull @.str.41, i32 noundef %93) #9
  br label %do.end157

do.end157:                                        ; preds = %if.then153, %if.then137
  %96 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i316 = getelementptr i8, ptr %97, i32 60
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i316) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %99 = and i32 %98, -59905
  %100 = or i32 %99, 16384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %101 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base.i, align 4
  %add.ptr.i5.i318 = getelementptr i8, ptr %102, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i318, i32 %100) #9, !srcloc !436
  %103 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.193)
  switch i32 %shr, label %do.end157.if.end172_crit_edge [
    i32 3, label %sw.bb
    i32 0, label %sw.bb158
    i32 15, label %sw.bb161
    i32 6, label %sw.bb167
  ]

do.end157.if.end172_crit_edge:                    ; preds = %do.end157
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end172

sw.bb:                                            ; preds = %do.end157
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_port_suspend.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__tegra_xudc_handle_port_status, %do.end.i)) #9
          to label %if.then.i319 [label %do.end.i], !srcloc !437

if.then.i319:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_port_suspend.__UNIQUE_ID_ddebug327, ptr noundef %105, ptr noundef nonnull @.str.48) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i319, %sw.bb
  %device_state.i320 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 32
  %106 = ptrtoint ptr %device_state.i320 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %device_state.i320, align 8
  %resume_state.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 33
  %108 = ptrtoint ptr %resume_state.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %resume_state.i, align 4
  store i32 8, ptr %device_state.i320, align 8
  %gadget.i321 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 4
  tail call void @usb_gadget_set_state(ptr noundef %gadget.i321, i32 noundef 8) #9
  %driver.i322 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 5
  %109 = ptrtoint ptr %driver.i322 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %driver.i322, align 8
  %suspend.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %110, i32 0, i32 6
  %111 = ptrtoint ptr %suspend.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %suspend.i, align 4
  %tobool6.not.i = icmp eq ptr %112, null
  br i1 %tobool6.not.i, label %do.end.i.if.end172_crit_edge, label %if.then7.i

do.end.i.if.end172_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end172

if.then7.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i323 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %lock.i323) #9
  %113 = ptrtoint ptr %driver.i322 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %driver.i322, align 8
  %suspend9.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %114, i32 0, i32 6
  %115 = ptrtoint ptr %suspend9.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %suspend9.i, align 4
  tail call void %116(ptr noundef %gadget.i321) #9
  tail call void @_raw_spin_lock(ptr noundef %lock.i323) #9
  br label %if.end172

sw.bb158:                                         ; preds = %do.end157
  %speed = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 4, i32 5
  %117 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %118)
  %cmp = icmp ult i32 %118, 5
  br i1 %cmp, label %if.then159, label %sw.bb158.if.end172_crit_edge

sw.bb158.if.end172_crit_edge:                     ; preds = %sw.bb158
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end172

if.then159:                                       ; preds = %sw.bb158
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_port_resume.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__tegra_xudc_handle_port_status, %do.end.i326)) #9
          to label %if.then.i324 [label %do.end.i326], !srcloc !437

if.then.i324:                                     ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #11
  %119 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_port_resume.__UNIQUE_ID_ddebug328, ptr noundef %120, ptr noundef nonnull @.str.50) #9
  br label %do.end.i326

do.end.i326:                                      ; preds = %if.then.i324, %if.then159
  tail call fastcc void @tegra_xudc_resume_device_state(ptr noundef %xudc) #9
  %driver.i325 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 5
  %121 = ptrtoint ptr %driver.i325 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %driver.i325, align 8
  %resume.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %122, i32 0, i32 7
  %123 = ptrtoint ptr %resume.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %resume.i, align 4
  %tobool4.not.i = icmp eq ptr %124, null
  br i1 %tobool4.not.i, label %do.end.i326.if.end172_crit_edge, label %if.then5.i

do.end.i326.if.end172_crit_edge:                  ; preds = %do.end.i326
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end172

if.then5.i:                                       ; preds = %do.end.i326
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i327 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %lock.i327) #9
  %125 = ptrtoint ptr %driver.i325 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %driver.i325, align 8
  %resume7.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %126, i32 0, i32 7
  %127 = ptrtoint ptr %resume7.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %resume7.i, align 4
  %gadget.i328 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 4
  tail call void %128(ptr noundef %gadget.i328) #9
  tail call void @_raw_spin_lock(ptr noundef %lock.i327) #9
  br label %if.end172

sw.bb161:                                         ; preds = %do.end157
  %speed163 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 4, i32 5
  %129 = ptrtoint ptr %speed163 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %speed163, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %130)
  %cmp164 = icmp eq i32 %130, 5
  br i1 %cmp164, label %if.then165, label %sw.bb161.if.end172_crit_edge

sw.bb161.if.end172_crit_edge:                     ; preds = %sw.bb161
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end172

if.then165:                                       ; preds = %sw.bb161
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_port_resume.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__tegra_xudc_handle_port_status, %do.end.i333)) #9
          to label %if.then.i329 [label %do.end.i333], !srcloc !437

if.then.i329:                                     ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #11
  %131 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_port_resume.__UNIQUE_ID_ddebug328, ptr noundef %132, ptr noundef nonnull @.str.50) #9
  br label %do.end.i333

do.end.i333:                                      ; preds = %if.then.i329, %if.then165
  tail call fastcc void @tegra_xudc_resume_device_state(ptr noundef %xudc) #9
  %driver.i330 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 5
  %133 = ptrtoint ptr %driver.i330 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %driver.i330, align 8
  %resume.i331 = getelementptr inbounds %struct.usb_gadget_driver, ptr %134, i32 0, i32 7
  %135 = ptrtoint ptr %resume.i331 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %resume.i331, align 4
  %tobool4.not.i332 = icmp eq ptr %136, null
  br i1 %tobool4.not.i332, label %do.end.i333.if.end172_crit_edge, label %if.then5.i337

do.end.i333.if.end172_crit_edge:                  ; preds = %do.end.i333
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end172

if.then5.i337:                                    ; preds = %do.end.i333
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i334 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %lock.i334) #9
  %137 = ptrtoint ptr %driver.i330 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %driver.i330, align 8
  %resume7.i335 = getelementptr inbounds %struct.usb_gadget_driver, ptr %138, i32 0, i32 7
  %139 = ptrtoint ptr %resume7.i335 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %resume7.i335, align 4
  %gadget.i336 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 4
  tail call void %140(ptr noundef %gadget.i336) #9
  tail call void @_raw_spin_lock(ptr noundef %lock.i334) #9
  br label %if.end172

sw.bb167:                                         ; preds = %do.end157
  call void @__sanitizer_cov_trace_pc() #11
  %plc_reset_work168 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %141 = load ptr, ptr @system_wq, align 4
  %call.i.i339 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %141, ptr noundef %plc_reset_work168, i32 noundef 10) #9
  %wait_csc171 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 56
  %142 = ptrtoint ptr %wait_csc171 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 1, ptr %wait_csc171, align 4
  br label %if.end172

if.end172:                                        ; preds = %sw.bb167, %if.then5.i337, %do.end.i333.if.end172_crit_edge, %sw.bb161.if.end172_crit_edge, %if.then5.i, %do.end.i326.if.end172_crit_edge, %sw.bb158.if.end172_crit_edge, %if.then7.i, %do.end.i.if.end172_crit_edge, %do.end157.if.end172_crit_edge, %if.end133.if.end172_crit_edge
  %and173 = and i32 %93, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  br i1 %tobool174.not, label %if.end172.do.body181_crit_edge, label %do.end178

if.end172.do.body181_crit_edge:                   ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body181

do.end178:                                        ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  %143 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %144, ptr noundef nonnull @.str.42, i32 noundef %93) #12
  %145 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i341 = getelementptr i8, ptr %146, i32 60
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i341) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %148 = and i32 %147, -59905
  %149 = or i32 %148, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %150 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %base.i, align 4
  %add.ptr.i5.i343 = getelementptr i8, ptr %151, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i343, i32 %149) #9, !srcloc !436
  br label %do.body181

do.body181:                                       ; preds = %do.end178, %if.end172.do.body181_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__tegra_xudc_handle_port_status.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__tegra_xudc_handle_port_status, %do.end200)) #9
          to label %if.then195 [label %do.end200], !srcloc !437

if.then195:                                       ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #11
  %152 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %xudc, align 8
  %154 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %base.i, align 4
  %add.ptr.i345 = getelementptr i8, ptr %155, i32 60
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i345) #9, !srcloc !433
  %157 = tail call i32 @llvm.bswap.i32(i32 %156) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__tegra_xudc_handle_port_status.__UNIQUE_ID_ddebug335, ptr noundef %153, ptr noundef nonnull @.str.44, i32 noundef %157) #9
  br label %do.end200

do.end200:                                        ; preds = %if.then195, %do.body181
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_xudc_port_connect(ptr noundef %xudc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 35
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 60
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !433
  %3 = lshr i32 %2, 18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %shr = and i32 %3, 15
  %switch.tableidx = add nsw i32 %shr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 4
  br i1 %4, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.tegra_xudc_port_connect, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.sw.epilog_crit_edge ]
  %speed11 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 4, i32 5
  %6 = ptrtoint ptr %speed11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %speed11, align 8
  %device_state = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 32
  %7 = ptrtoint ptr %device_state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 5, ptr %device_state, align 8
  %gadget12 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 4
  tail call void @usb_gadget_set_state(ptr noundef %gadget12, i32 noundef 5) #9
  %setup_state = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 21
  %8 = ptrtoint ptr %setup_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %setup_state, align 4
  %speed15 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 4, i32 5
  %9 = ptrtoint ptr %speed15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %speed15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %10)
  %cmp = icmp eq i32 %10, 5
  %. = select i1 %cmp, i16 512, i16 64
  %context = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 0, i32 4
  %11 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %context, align 4
  %conv = zext i16 %. to i32
  %info1.i = getelementptr inbounds %struct.tegra_xudc_ep_context, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %info1.i, align 4
  %15 = and i32 %14, -65536
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  %shl.i = shl nuw nsw i32 %conv, 16
  %or.i = or i32 %16, %shl.i
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %18 = ptrtoint ptr %info1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %info1.i, align 4
  %19 = tail call i16 @llvm.bswap.i16(i16 %.)
  store i16 %19, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @tegra_xudc_ep0_desc, i32 0, i32 4), align 1
  %usb_ep = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 0, i32 1
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %usb_ep, i32 noundef %conv) #9
  %soc = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 1
  %20 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %soc, align 4
  %u1_enable = getelementptr inbounds %struct.tegra_xudc_soc, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %u1_enable to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %u1_enable, align 4, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not = icmp eq i8 %23, 0
  br i1 %tobool.not, label %if.then17, label %sw.epilog.if.end20_crit_edge

sw.epilog.if.end20_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then17:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr.i82 = getelementptr i8, ptr %25, i32 76
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %27 = and i32 %26, -65281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr.i84 = getelementptr i8, ptr %29, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 %27) #9, !srcloc !436
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %sw.epilog.if.end20_crit_edge
  %30 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %soc, align 4
  %u2_enable = getelementptr inbounds %struct.tegra_xudc_soc, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %u2_enable to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %u2_enable, align 1, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool22.not = icmp eq i8 %33, 0
  br i1 %tobool22.not, label %if.then23, label %if.end20.if.end26_crit_edge

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %add.ptr.i86 = getelementptr i8, ptr %35, i32 76
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i86) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %37 = and i32 %36, -16711681
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i, align 4
  %add.ptr.i88 = getelementptr i8, ptr %39, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 %37) #9, !srcloc !436
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end20.if.end26_crit_edge
  %40 = ptrtoint ptr %speed15 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %speed15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %41)
  %cmp29 = icmp ult i32 %41, 4
  br i1 %cmp29, label %if.then31, label %if.end26.if.end40_crit_edge

if.end26.if.end40_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i, align 4
  %add.ptr.i90 = getelementptr i8, ptr %43, i32 76
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i90) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %45 = and i32 %44, -50331649
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %47 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %soc, align 4
  %lpm_enable = getelementptr inbounds %struct.tegra_xudc_soc, ptr %48, i32 0, i32 7
  %49 = ptrtoint ptr %lpm_enable to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %lpm_enable, align 2, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool35.not = icmp eq i8 %50, 0
  %val.0.v = select i1 %tobool35.not, i32 2, i32 1
  %val.0 = or i32 %val.0.v, %46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %51 = tail call i32 @llvm.bswap.i32(i32 %val.0) #9
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 4
  %add.ptr.i92 = getelementptr i8, ptr %53, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 %51) #9, !srcloc !436
  br label %if.end40

if.end40:                                         ; preds = %if.then31, %if.end26.if.end40_crit_edge
  %54 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i, align 4
  %add.ptr.i94 = getelementptr i8, ptr %55, i32 52
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i94) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %57 = and i32 %56, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool43.not = icmp eq i32 %57, 0
  br i1 %tobool43.not, label %if.end40.if.end45_crit_edge, label %if.then44

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %58 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i, align 4
  %add.ptr.i96 = getelementptr i8, ptr %59, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 16777216) #9, !srcloc !436
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end40.if.end45_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_xudc_reset(ptr noundef %xudc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %setup_state = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 21
  %0 = ptrtoint ptr %setup_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %setup_state, align 4
  %device_state = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 32
  %1 = ptrtoint ptr %device_state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 5, ptr %device_state, align 8
  %gadget = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 4
  tail call void @usb_gadget_set_state(ptr noundef %gadget, i32 noundef 5) #9
  tail call fastcc void @ep_unpause_all(ptr noundef %xudc)
  br label %for.body

for.body:                                         ; preds = %tegra_xudc_ep_nuke.exit.for.body_crit_edge, %entry
  %i.046 = phi i32 [ 0, %entry ], [ %inc, %tegra_xudc_ep_nuke.exit.for.body_crit_edge ]
  %arrayidx3 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %i.046
  %queue.i = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %i.046, i32 12
  %2 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not4.i = icmp eq ptr %3, %queue.i
  br i1 %cmp.i.not4.i, label %for.body.tegra_xudc_ep_nuke.exit_crit_edge, label %for.body.while.body.i_crit_edge

for.body.while.body.i_crit_edge:                  ; preds = %for.body
  br label %while.body.i

for.body.tegra_xudc_ep_nuke.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_xudc_ep_nuke.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.body.while.body.i_crit_edge
  %4 = phi ptr [ %6, %while.body.i.while.body.i_crit_edge ], [ %3, %for.body.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %4, i32 -80
  tail call fastcc void @tegra_xudc_req_done(ptr noundef %arrayidx3, ptr noundef %add.ptr.i, i32 noundef -108) #9
  %5 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %6, %queue.i
  br i1 %cmp.i.not.i, label %while.body.i.tegra_xudc_ep_nuke.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.tegra_xudc_ep_nuke.exit_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_xudc_ep_nuke.exit

tegra_xudc_ep_nuke.exit:                          ; preds = %while.body.i.tegra_xudc_ep_nuke.exit_crit_edge, %for.body.tegra_xudc_ep_nuke.exit_crit_edge
  %inc = add nuw nsw i32 %i.046, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %tegra_xudc_ep_nuke.exit.for.body_crit_edge

tegra_xudc_ep_nuke.exit.for.body_crit_edge:       ; preds = %tegra_xudc_ep_nuke.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %tegra_xudc_ep_nuke.exit
  %enq_ptr = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 0, i32 7
  %7 = ptrtoint ptr %enq_ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %enq_ptr, align 4
  %deq_ptr4 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 0, i32 8
  %9 = ptrtoint ptr %deq_ptr4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %deq_ptr4, align 4
  %ring_full = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 0, i32 10
  %10 = ptrtoint ptr %ring_full to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %ring_full, align 1
  %setup_seq_num = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 22
  %11 = ptrtoint ptr %setup_seq_num to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %setup_seq_num, align 8
  %queued_setup_packet = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 19
  %12 = ptrtoint ptr %queued_setup_packet to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %queued_setup_packet, align 4
  %context = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 0, i32 4
  %13 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %context, align 4
  %rsvd.i = getelementptr inbounds %struct.tegra_xudc_ep_context, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %rsvd.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rsvd.i, align 4
  %17 = and i32 %16, -256
  store i32 %17, ptr %rsvd.i, align 4
  %18 = load i32, ptr %deq_ptr4, align 4
  %arrayidx7.idx = shl i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1008, i32 %arrayidx7.idx)
  %cmp.i = icmp ugt i32 %arrayidx7.idx, 1008
  br i1 %cmp.i, label %trb_virt_to_phys.exit.thread, label %trb_virt_to_phys.exit, !prof !430

trb_virt_to_phys.exit.thread:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 893, i32 noundef 9, ptr noundef null) #9
  %19 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xudc, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %20, i32 noundef 0) #9
  br label %if.then

trb_virt_to_phys.exit:                            ; preds = %for.end
  %transfer_ring_phys.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 0, i32 6
  %21 = ptrtoint ptr %transfer_ring_phys.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %transfer_ring_phys.i, align 4
  %add.i = add i32 %22, %arrayidx7.idx
  %23 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xudc, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %24, i32 noundef %add.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i)
  %cmp.i39 = icmp eq i32 %add.i, -1
  br i1 %cmp.i39, label %trb_virt_to_phys.exit.if.end_crit_edge, label %trb_virt_to_phys.exit.if.then_crit_edge

trb_virt_to_phys.exit.if.then_crit_edge:          ; preds = %trb_virt_to_phys.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

trb_virt_to_phys.exit.if.end_crit_edge:           ; preds = %trb_virt_to_phys.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %trb_virt_to_phys.exit.if.then_crit_edge, %trb_virt_to_phys.exit.thread
  %retval.0.i42.ph = phi i32 [ 0, %trb_virt_to_phys.exit.thread ], [ %add.i, %trb_virt_to_phys.exit.if.then_crit_edge ]
  %25 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %context, align 4
  %shr.i = and i32 %retval.0.i42.ph, -16
  %deq_lo.i.i = getelementptr inbounds %struct.tegra_xudc_ep_context, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %deq_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %deq_lo.i.i, align 4
  %29 = lshr i32 %28, 24
  %and.i.i = and i32 %29, 15
  %or.i.i = or i32 %and.i.i, %shr.i
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  %31 = ptrtoint ptr %deq_lo.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %deq_lo.i.i, align 4
  %deq_hi.i.i = getelementptr inbounds %struct.tegra_xudc_ep_context, ptr %26, i32 0, i32 3
  %32 = ptrtoint ptr %deq_hi.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %deq_hi.i.i, align 4
  %33 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %context, align 4
  %pcs = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 0, i32 9
  %35 = ptrtoint ptr %pcs to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %pcs, align 4, !range !429
  %37 = zext i8 %36 to i32
  %deq_lo.i = getelementptr inbounds %struct.tegra_xudc_ep_context, ptr %34, i32 0, i32 2
  %38 = ptrtoint ptr %deq_lo.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %deq_lo.i, align 4
  %40 = and i32 %39, -16777217
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #9
  %or.i = or i32 %41, %37
  %42 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %43 = ptrtoint ptr %deq_lo.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %deq_lo.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %trb_virt_to_phys.exit.if.end_crit_edge
  %base.i.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 35
  %44 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %45, i32 80
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i, label %if.end.ep_unhalt_all.exit_crit_edge, label %if.end.i

if.end.ep_unhalt_all.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_unhalt_all.exit

if.end.i:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %47 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %48, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 0) #9, !srcloc !436
  %call.i.i = tail call i64 @ktime_get() #9
  %add.i.i.i = add i64 %call.i.i, 100000
  %49 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %50, i32 92
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %52 = and i32 %51, %46
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %46)
  %cmp4.i.i = icmp eq i32 %52, %46
  br i1 %cmp4.i.i, label %if.end.i.xudc_readl_poll.exit.i_crit_edge, label %if.end.i.land.lhs.true.i.i_crit_edge

if.end.i.land.lhs.true.i.i_crit_edge:             ; preds = %if.end.i
  br label %land.lhs.true.i.i

if.end.i.xudc_readl_poll.exit.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xudc_readl_poll.exit.i

land.lhs.true.i.i:                                ; preds = %cond.false.i.i.land.lhs.true.i.i_crit_edge, %if.end.i.land.lhs.true.i.i_crit_edge
  %call4.i.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call4.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call4.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %if.then7.i.i, label %cond.false.i.i

if.then7.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i.i, align 4
  %add.ptr11.i.i = getelementptr i8, ptr %54, i32 92
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !439
  br label %xudc_readl_poll.exit.i

cond.false.i.i:                                   ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748) #9
  %57 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %58, i32 92
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %60 = and i32 %59, %46
  %cmp.i.i = icmp eq i32 %60, %46
  br i1 %cmp.i.i, label %cond.false.i.i.xudc_readl_poll.exit.i_crit_edge, label %cond.false.i.i.land.lhs.true.i.i_crit_edge

cond.false.i.i.land.lhs.true.i.i_crit_edge:       ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i

cond.false.i.i.xudc_readl_poll.exit.i_crit_edge:  ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xudc_readl_poll.exit.i

xudc_readl_poll.exit.i:                           ; preds = %cond.false.i.i.xudc_readl_poll.exit.i_crit_edge, %if.then7.i.i, %if.end.i.xudc_readl_poll.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %61 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %62, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %46) #9, !srcloc !436
  br label %ep_unhalt_all.exit

ep_unhalt_all.exit:                               ; preds = %xudc_readl_poll.exit.i, %if.end.ep_unhalt_all.exit_crit_edge
  tail call fastcc void @ep_reload(ptr noundef %xudc, i32 noundef 0)
  tail call fastcc void @ep_unpause(ptr noundef %xudc, i32 noundef 0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_udc_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_set_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep_unpause_all(ptr nocapture noundef readonly %xudc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 35
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 84
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %4, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 0) #9, !srcloc !436
  %call.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call.i, 100000
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %6, i32 92
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %8 = and i32 %7, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %2)
  %cmp4.i = icmp eq i32 %8, %2
  br i1 %cmp4.i, label %entry.xudc_readl_poll.exit_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.xudc_readl_poll.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %xudc_readl_poll.exit

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call4.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call4.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call4.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then7.i, label %cond.false.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %10, i32 92
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !439
  br label %xudc_readl_poll.exit

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #9
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %14, i32 92
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %16 = and i32 %15, %2
  %cmp.i = icmp eq i32 %16, %2
  br i1 %cmp.i, label %cond.false.i.xudc_readl_poll.exit_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

cond.false.i.xudc_readl_poll.exit_crit_edge:      ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xudc_readl_poll.exit

xudc_readl_poll.exit:                             ; preds = %cond.false.i.xudc_readl_poll.exit_crit_edge, %if.then7.i, %entry.xudc_readl_poll.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %18, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %2) #9, !srcloc !436
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep_reload(ptr nocapture noundef readonly %xudc, i32 noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %ep
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %0 = tail call i32 @llvm.bswap.i32(i32 %shl) #9
  %base.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 35
  %1 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #9, !srcloc !436
  %call.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call.i, 100000
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %4, i32 88
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !433
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %and3.i = and i32 %6, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %cmp4.i = icmp eq i32 %and3.i, 0
  br i1 %cmp4.i, label %entry.xudc_readl_poll.exit_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.xudc_readl_poll.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %xudc_readl_poll.exit

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call4.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call4.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call4.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then7.i, label %cond.false.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %8, i32 88
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !439
  br label %xudc_readl_poll.exit

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #9
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %12, i32 88
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #9, !srcloc !433
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %and.i = and i32 %14, %shl
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %cond.false.i.xudc_readl_poll.exit_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

cond.false.i.xudc_readl_poll.exit_crit_edge:      ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xudc_readl_poll.exit

xudc_readl_poll.exit:                             ; preds = %cond.false.i.xudc_readl_poll.exit_crit_edge, %if.then7.i, %entry.xudc_readl_poll.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep_unpause(ptr nocapture noundef readonly %xudc, i32 noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 35
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 84
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !433
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %shl = shl nuw i32 1, %ep
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %neg = xor i32 %shl, -1
  %and2 = and i32 %3, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %and2) #9
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %6, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %4) #9, !srcloc !436
  %call.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call.i, 100000
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %8, i32 92
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !433
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %and3.i = and i32 %10, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i, i32 %shl)
  %cmp4.i = icmp eq i32 %and3.i, %shl
  br i1 %cmp4.i, label %if.end.xudc_readl_poll.exit_crit_edge, label %if.end.land.lhs.true.i_crit_edge

if.end.land.lhs.true.i_crit_edge:                 ; preds = %if.end
  br label %land.lhs.true.i

if.end.xudc_readl_poll.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %xudc_readl_poll.exit

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %if.end.land.lhs.true.i_crit_edge
  %call4.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call4.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call4.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then7.i, label %cond.false.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %12, i32 92
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !439
  br label %xudc_readl_poll.exit

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #9
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %16, i32 92
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #9, !srcloc !433
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %and.i = and i32 %18, %shl
  %cmp.i = icmp eq i32 %and.i, %shl
  br i1 %cmp.i, label %cond.false.i.xudc_readl_poll.exit_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

cond.false.i.xudc_readl_poll.exit_crit_edge:      ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xudc_readl_poll.exit

xudc_readl_poll.exit:                             ; preds = %cond.false.i.xudc_readl_poll.exit_crit_edge, %if.then7.i, %if.end.xudc_readl_poll.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %shl) #9
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %21, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %19) #9, !srcloc !436
  br label %cleanup

cleanup:                                          ; preds = %xudc_readl_poll.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_xudc_req_done(ptr noundef %ep, ptr noundef %req, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_req_done.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_req_done, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !437

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %index = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 2
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_req_done.__UNIQUE_ID_ddebug303, ptr noundef %3, ptr noundef nonnull @.str.46, ptr noundef %req, i32 noundef %5, i32 noundef %status) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %status5 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %6 = ptrtoint ptr %status5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %7)
  %cmp = icmp eq i32 %7, -115
  br i1 %cmp, label %if.then12, label %do.end.if.end15_crit_edge, !prof !440

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %status5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %status, ptr %status5, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %do.end.if.end15_crit_edge
  %list = getelementptr inbounds %struct.tegra_xudc_request, ptr %req, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end15.list_del_init.exit_crit_edge

if.end15.list_del_init.exit_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.tegra_xudc_request, ptr %req, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end15.list_del_init.exit_crit_edge
  %15 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.tegra_xudc_request, ptr %req, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %prev.i3.i, align 4
  %desc = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 13
  %17 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %desc, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bmAttributes.i, align 1
  %21 = and i8 %20, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp.i.not = icmp eq i8 %21, 0
  br i1 %cmp.i.not, label %if.then18, label %if.else

if.then18:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %setup_state = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 21
  %22 = ptrtoint ptr %setup_state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %setup_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp20 = icmp eq i32 %23, 1
  %conv = zext i1 %cmp20 to i32
  br label %if.end25

if.else:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %18, i32 0, i32 2
  %24 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bEndpointAddress.i, align 1
  %.lobit.i = lshr i8 %25, 7
  %26 = zext i8 %.lobit.i to i32
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then18
  %.sink = phi i32 [ %26, %if.else ], [ %conv, %if.then18 ]
  %gadget = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 4
  tail call void @usb_gadget_unmap_request(ptr noundef %gadget, ptr noundef %req, i32 noundef %.sink) #9
  %lock = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %usb_ep = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 1
  tail call void @usb_gadget_giveback_request(ptr noundef %usb_ep, ptr noundef %req) #9
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_unmap_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_xudc_resume_device_state(ptr noundef %xudc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ep_unpause_all(ptr noundef %xudc)
  %base.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 35
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 60
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !433
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %4 = and i32 %3, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and1 = and i32 %3, -15401441
  %or = or i32 %and1, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %7, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %5) #9, !srcloc !436
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %device_state = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 32
  %8 = ptrtoint ptr %device_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %device_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp2 = icmp eq i32 %9, 8
  br i1 %cmp2, label %if.then3, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %resume_state = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 33
  %10 = ptrtoint ptr %resume_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resume_state, align 4
  %12 = ptrtoint ptr %device_state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %device_state, align 8
  %gadget = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 4
  tail call void @usb_gadget_set_state(ptr noundef %gadget, i32 noundef %11) #9
  %13 = ptrtoint ptr %resume_state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %resume_state, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #9
  %arrayidx = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 0
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx)
  %arrayidx.1 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 1
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx.1)
  %arrayidx.2 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 2
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx.2)
  %arrayidx.3 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 3
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx.3)
  %arrayidx.4 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 4
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx.4)
  %arrayidx.5 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 5
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx.5)
  %arrayidx.6 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 6
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx.6)
  %arrayidx.7 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 7
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx.7)
  %arrayidx.8 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 8
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx.8)
  %arrayidx.9 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 9
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx.9)
  %arrayidx.10 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 10
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx.10)
  %arrayidx.11 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 11
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx.11)
  %arrayidx.12 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 12
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx.12)
  %arrayidx.13 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 13
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx.13)
  %arrayidx.14 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 14
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx.14)
  %arrayidx.15 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 15
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx.15)
  %arrayidx.16 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 16
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx.16)
  %arrayidx.17 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 17
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx.17)
  %arrayidx.18 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 18
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx.18)
  %arrayidx.19 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 19
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx.19)
  %arrayidx.20 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 20
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx.20)
  %arrayidx.21 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 21
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx.21)
  %arrayidx.22 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 22
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx.22)
  %arrayidx.23 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 23
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx.23)
  %arrayidx.24 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 24
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx.24)
  %arrayidx.25 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 25
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx.25)
  %arrayidx.26 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 26
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx.26)
  %arrayidx.27 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 27
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx.27)
  %arrayidx.28 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 28
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx.28)
  %arrayidx.29 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 29
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx.29)
  %arrayidx.30 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 30
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx.30)
  %arrayidx.31 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 31
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %arrayidx.31)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %queue = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 12
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %3, %queue
  br i1 %cmp.i.not, label %entry.cleanup27_crit_edge, label %if.end

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup27

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 2
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %shl = shl i32 %5, 8
  %and = and i32 %shl, 65280
  %desc = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 13
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bmAttributes.i, align 1
  %10 = and i8 %9, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.i42.not = icmp eq i8 %10, 0
  br i1 %cmp.i42.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %setup_seq_num = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 22
  %11 = ptrtoint ptr %setup_seq_num to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %setup_seq_num, align 8
  %conv = zext i16 %12 to i32
  %shl5 = shl nuw i32 %conv, 16
  %or = or i32 %shl5, %and
  br label %do.body

if.else:                                          ; preds = %if.end
  %comp_desc = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 14
  %13 = ptrtoint ptr %comp_desc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %comp_desc, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.else.do.body_crit_edge, label %if.end.i

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.i:                                         ; preds = %if.else
  %bmAttributes.i43 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %bmAttributes.i43 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bmAttributes.i43, align 1
  %trunc = trunc i8 %16 to i5
  %17 = zext i5 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.194)
  switch i5 %trunc, label %if.then9 [
    i5 0, label %if.end.i.do.body_crit_edge
    i5 -1, label %if.end.i.do.body_crit_edge49
  ]

if.end.i.do.body_crit_edge49:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then9:                                         ; preds = %if.end.i
  %stream_rejected = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 11
  %18 = ptrtoint ptr %stream_rejected to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %stream_rejected, align 2, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool10.not = icmp eq i8 %19, 0
  br i1 %tobool10.not, label %cleanup.thread, label %if.then9.cleanup27_crit_edge

if.then9.cleanup27_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup27

cleanup.thread:                                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %stream_id = getelementptr i8, ptr %3, i32 -56
  %20 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load = load i32, ptr %stream_id, align 4
  %bf.lshr = and i32 %bf.load, -65536
  %or16 = or i32 %bf.lshr, %and
  br label %do.body

do.body:                                          ; preds = %cleanup.thread, %if.end.i.do.body_crit_edge, %if.end.i.do.body_crit_edge49, %if.else.do.body_crit_edge, %if.then4
  %val.1 = phi i32 [ %or, %if.then4 ], [ %or16, %cleanup.thread ], [ %and, %if.else.do.body_crit_edge ], [ %and, %if.end.i.do.body_crit_edge ], [ %and, %if.end.i.do.body_crit_edge49 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_ep_ring_doorbell.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_ep_ring_doorbell, %do.end)) #9
          to label %if.then25 [label %do.end], !srcloc !437

if.then25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_ep_ring_doorbell.__UNIQUE_ID_ddebug306, ptr noundef %22, ptr noundef nonnull @.str.52, i32 noundef %val.1) #9
  br label %do.end

do.end:                                           ; preds = %if.then25, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %23 = tail call i32 @llvm.bswap.i32(i32 %val.1) #9
  %base.i = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 35
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %23) #9, !srcloc !436
  br label %cleanup27

cleanup27:                                        ; preds = %do.end, %if.then9.cleanup27_crit_edge, %entry.cleanup27_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_xudc_handle_transfer_completion(ptr noundef %xudc, ptr noundef %ep, ptr nocapture noundef readonly %event) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %status.i = getelementptr inbounds %struct.tegra_xudc_trb, ptr %event, i32 0, i32 2
  %0 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status.i, align 4
  %2 = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %2)
  %cmp = icmp eq i32 %2, 13
  %3 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %event, align 4
  %5 = call i32 @llvm.bswap.i32(i32 %4)
  %transfer_ring_phys.i = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 6
  %6 = ptrtoint ptr %transfer_ring_phys.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %transfer_ring_phys.i, align 4
  %sub.i = sub i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %sub.i)
  %cmp.i = icmp ugt i32 %sub.i, 1023
  br i1 %cmp.i, label %do.end.i, label %if.end21.i, !prof !430

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 907, i32 noundef 9, ptr noundef null) #9
  br label %trb_phys_to_virt.exit

if.end21.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %div26.i = lshr i32 %sub.i, 4
  %transfer_ring.i = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 5
  %8 = ptrtoint ptr %transfer_ring.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transfer_ring.i, align 4
  %arrayidx.i = getelementptr %struct.tegra_xudc_trb, ptr %9, i32 %div26.i
  br label %trb_phys_to_virt.exit

trb_phys_to_virt.exit:                            ; preds = %if.end21.i, %do.end.i
  %retval.0.i78 = phi ptr [ null, %do.end.i ], [ %arrayidx.i, %if.end21.i ]
  %queue.i = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 12
  %10 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn24.i = load ptr, ptr %queue.i, align 4
  %cmp.not25.i = icmp eq ptr %.pn24.i, %queue.i
  br i1 %cmp.not25.i, label %trb_phys_to_virt.exit.do.end44.critedge_crit_edge, label %trb_phys_to_virt.exit.for.body.i_crit_edge

trb_phys_to_virt.exit.for.body.i_crit_edge:       ; preds = %trb_phys_to_virt.exit
  br label %for.body.i

trb_phys_to_virt.exit.do.end44.critedge_crit_edge: ; preds = %trb_phys_to_virt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44.critedge

for.body.i:                                       ; preds = %trb_in_request.exit.i.for.body.i_crit_edge, %trb_phys_to_virt.exit.for.body.i_crit_edge
  %.pn26.i = phi ptr [ %.pn.i, %trb_in_request.exit.i.for.body.i_crit_edge ], [ %.pn24.i, %trb_phys_to_virt.exit.for.body.i_crit_edge ]
  %trbs_queued.i = getelementptr i8, ptr %.pn26.i, i32 -20
  %11 = ptrtoint ptr %trbs_queued.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %trbs_queued.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %for.body.i.do.end44.critedge_crit_edge, label %if.end.i

for.body.i.do.end44.critedge_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44.critedge

if.end.i:                                         ; preds = %for.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trb_in_request.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_handle_transfer_completion, %do.end.i.i)) #9
          to label %if.then.i.i [label %do.end.i.i], !srcloc !437

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ep, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %first_trb.i.i = getelementptr i8, ptr %.pn26.i, i32 -8
  %17 = ptrtoint ptr %first_trb.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %first_trb.i.i, align 4
  %last_trb.i.i = getelementptr i8, ptr %.pn26.i, i32 -4
  %19 = ptrtoint ptr %last_trb.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %last_trb.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trb_in_request.__UNIQUE_ID_ddebug307, ptr noundef %16, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.72, ptr noundef %18, ptr noundef %20, ptr noundef %retval.0.i78) #9
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i
  %first_trb4.i.i = getelementptr i8, ptr %.pn26.i, i32 -8
  %21 = ptrtoint ptr %first_trb4.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %first_trb4.i.i, align 4
  %cmp.not.i.i = icmp ugt ptr %22, %retval.0.i78
  %last_trb15.i.i = getelementptr i8, ptr %.pn26.i, i32 -4
  %23 = ptrtoint ptr %last_trb15.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %last_trb15.i.i, align 4
  %cmp16.not.i.i = icmp uge ptr %24, %retval.0.i78
  %cmp20.i.i = icmp ult ptr %24, %22
  br i1 %cmp.not.i.i, label %land.lhs.true14.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %do.end.i.i
  %or.cond.i.i = select i1 %cmp16.not.i.i, i1 true, i1 %cmp20.i.i
  br i1 %or.cond.i.i, label %land.lhs.true.i.i.trb_to_request.exit_crit_edge, label %land.lhs.true.i.i.trb_in_request.exit.i_crit_edge

land.lhs.true.i.i.trb_in_request.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trb_in_request.exit.i

land.lhs.true.i.i.trb_to_request.exit_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trb_to_request.exit

land.lhs.true14.i.i:                              ; preds = %do.end.i.i
  %or.cond39.i.i = select i1 %cmp16.not.i.i, i1 %cmp20.i.i, i1 false
  br i1 %or.cond39.i.i, label %land.lhs.true14.i.i.trb_to_request.exit_crit_edge, label %land.lhs.true14.i.i.trb_in_request.exit.i_crit_edge

land.lhs.true14.i.i.trb_in_request.exit.i_crit_edge: ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trb_in_request.exit.i

land.lhs.true14.i.i.trb_to_request.exit_crit_edge: ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trb_to_request.exit

trb_in_request.exit.i:                            ; preds = %land.lhs.true14.i.i.trb_in_request.exit.i_crit_edge, %land.lhs.true.i.i.trb_in_request.exit.i_crit_edge
  %25 = ptrtoint ptr %.pn26.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn.i = load ptr, ptr %.pn26.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %queue.i
  br i1 %cmp.not.i, label %trb_in_request.exit.i.do.end44.critedge_crit_edge, label %trb_in_request.exit.i.for.body.i_crit_edge

trb_in_request.exit.i.for.body.i_crit_edge:       ; preds = %trb_in_request.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

trb_in_request.exit.i.do.end44.critedge_crit_edge: ; preds = %trb_in_request.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44.critedge

trb_to_request.exit:                              ; preds = %land.lhs.true14.i.i.trb_to_request.exit_crit_edge, %land.lhs.true.i.i.trb_to_request.exit_crit_edge
  %trbs_queued.i.le = getelementptr i8, ptr %.pn26.i, i32 -20
  %last_trb15.i.i.le = getelementptr i8, ptr %.pn26.i, i32 -4
  %retval.0.i79 = getelementptr i8, ptr %.pn26.i, i32 -80
  %tobool.not = icmp eq ptr %retval.0.i79, null
  br i1 %tobool.not, label %trb_to_request.exit.do.end44.critedge_crit_edge, label %land.lhs.true

trb_to_request.exit.do.end44.critedge_crit_edge:  ; preds = %trb_to_request.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44.critedge

land.lhs.true:                                    ; preds = %trb_to_request.exit
  br i1 %cmp, label %land.lhs.true.if.then_crit_edge, label %lor.lhs.false

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %control.i = getelementptr inbounds %struct.tegra_xudc_trb, ptr %retval.0.i78, i32 0, i32 3
  %26 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %control.i, align 4
  %28 = and i32 %27, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool7.not = icmp eq i32 %28, 0
  br i1 %tobool7.not, label %land.lhs.true8, label %lor.lhs.false.if.end47_crit_edge

lor.lhs.false.if.end47_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

land.lhs.true8:                                   ; preds = %lor.lhs.false
  %trbs_needed = getelementptr i8, ptr %.pn26.i, i32 -16
  %29 = ptrtoint ptr %trbs_needed to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %trbs_needed, align 4
  %31 = ptrtoint ptr %trbs_queued.i.le to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %trbs_queued.i.le, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp9 = icmp eq i32 %30, %32
  br i1 %cmp9, label %land.lhs.true8.if.then_crit_edge, label %land.lhs.true8.if.end47_crit_edge

land.lhs.true8.if.end47_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

land.lhs.true8.if.then_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %land.lhs.true8.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %33 = ptrtoint ptr %last_trb15.i.i.le to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %last_trb15.i.i.le, align 4
  %35 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %status.i, align 4
  %37 = and i32 %36, -256
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #9
  %length = getelementptr i8, ptr %.pn26.i, i32 -76
  %39 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length, align 4
  %sub = sub i32 %40, %38
  %actual = getelementptr i8, ptr %.pn26.i, i32 -28
  %41 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub, ptr %actual, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_handle_transfer_completion.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_handle_transfer_completion, %do.end)) #9
          to label %if.then19 [label %do.end], !srcloc !437

if.then19:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %xudc, align 8
  %44 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %actual, align 4
  %46 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_handle_transfer_completion.__UNIQUE_ID_ddebug324, ptr noundef %43, ptr noundef nonnull @.str.70, i32 noundef %45, i32 noundef %47) #9
  br label %do.end

do.end:                                           ; preds = %if.then19, %if.then
  tail call fastcc void @tegra_xudc_req_done(ptr noundef %ep, ptr noundef nonnull %retval.0.i79, i32 noundef 0)
  %desc = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 13
  %48 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %desc, align 4
  %tobool24.not = icmp eq ptr %49, null
  br i1 %tobool24.not, label %do.end.if.end30_crit_edge, label %land.lhs.true25

do.end.if.end30_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

land.lhs.true25:                                  ; preds = %do.end
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bmAttributes.i, align 1
  %52 = and i8 %51, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp.i81.not = icmp eq i8 %52, 0
  br i1 %cmp.i81.not, label %if.then29, label %land.lhs.true25.if.end30_crit_edge

land.lhs.true25.if.end30_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then29:                                        ; preds = %land.lhs.true25
  %setup_state.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 21
  %53 = ptrtoint ptr %setup_state.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %setup_state.i, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %54, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %setup_state.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 4, ptr %setup_state.i, align 4
  %ep0_req.i.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 28
  %57 = ptrtoint ptr %ep0_req.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ep0_req.i.i, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %58, align 4
  %60 = load ptr, ptr %ep0_req.i.i, align 8
  %dma.i.i = getelementptr inbounds %struct.usb_request, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %dma.i.i, align 4
  %62 = load ptr, ptr %ep0_req.i.i, align 8
  %length.i.i = getelementptr inbounds %struct.usb_request, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %length.i.i, align 4
  %64 = load ptr, ptr %ep0_req.i.i, align 8
  %complete.i.i = getelementptr inbounds %struct.usb_request, ptr %64, i32 0, i32 7
  %65 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @no_op_complete, ptr %complete.i.i, align 4
  %66 = load ptr, ptr %ep0_req.i.i, align 8
  %context.i.i = getelementptr inbounds %struct.usb_request, ptr %66, i32 0, i32 8
  %67 = ptrtoint ptr %context.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %xudc, ptr %context.i.i, align 4
  %ep.i.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 11
  %68 = load ptr, ptr %ep0_req.i.i, align 8
  %call.i.i = tail call fastcc i32 @__tegra_xudc_ep_queue(ptr noundef %ep.i.i, ptr noundef %68) #9
  br label %if.end30

sw.bb2.i:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %setup_state.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 3, ptr %setup_state.i, align 4
  %ep0_req.i11.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 28
  %70 = ptrtoint ptr %ep0_req.i11.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ep0_req.i11.i, align 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %71, align 4
  %73 = load ptr, ptr %ep0_req.i11.i, align 8
  %dma.i12.i = getelementptr inbounds %struct.usb_request, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %dma.i12.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %dma.i12.i, align 4
  %75 = load ptr, ptr %ep0_req.i11.i, align 8
  %length.i13.i = getelementptr inbounds %struct.usb_request, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %length.i13.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %length.i13.i, align 4
  %77 = load ptr, ptr %ep0_req.i11.i, align 8
  %complete.i14.i = getelementptr inbounds %struct.usb_request, ptr %77, i32 0, i32 7
  %78 = ptrtoint ptr %complete.i14.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @no_op_complete, ptr %complete.i14.i, align 4
  %79 = load ptr, ptr %ep0_req.i11.i, align 8
  %context.i15.i = getelementptr inbounds %struct.usb_request, ptr %79, i32 0, i32 8
  %80 = ptrtoint ptr %context.i15.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %xudc, ptr %context.i15.i, align 4
  %ep.i16.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 11
  %81 = load ptr, ptr %ep0_req.i11.i, align 8
  %call.i17.i = tail call fastcc i32 @__tegra_xudc_ep_queue(ptr noundef %ep.i16.i, ptr noundef %81) #9
  br label %if.end30

sw.default.i:                                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %setup_state.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %setup_state.i, align 4
  br label %if.end30

if.end30:                                         ; preds = %sw.default.i, %sw.bb2.i, %sw.bb.i, %land.lhs.true25.if.end30_crit_edge, %do.end.if.end30_crit_edge
  br i1 %cmp, label %if.then32, label %if.end30.if.end47_crit_edge

if.end30.if.end47_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %transfer_ring = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 5
  %83 = ptrtoint ptr %transfer_ring to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %transfer_ring, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %84 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 4
  %add = add nsw i32 %sub.ptr.div, 1
  %deq_ptr = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %add)
  %cmp34 = icmp eq i32 %add, 63
  %spec.store.select = select i1 %cmp34, i32 0, i32 %add
  %85 = ptrtoint ptr %deq_ptr to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %spec.store.select, ptr %deq_ptr, align 4
  br label %if.end47

do.end44.critedge:                                ; preds = %trb_to_request.exit.do.end44.critedge_crit_edge, %trb_in_request.exit.i.do.end44.critedge_crit_edge, %for.body.i.do.end44.critedge_crit_edge, %trb_phys_to_virt.exit.do.end44.critedge_crit_edge
  %86 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %87, ptr noundef nonnull @.str.71) #12
  br label %if.end47

if.end47:                                         ; preds = %do.end44.critedge, %if.then32, %if.end30.if.end47_crit_edge, %land.lhs.true8.if.end47_crit_edge, %lor.lhs.false.if.end47_crit_edge
  %desc48 = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 13
  %88 = ptrtoint ptr %desc48 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %desc48, align 4
  %tobool49.not = icmp eq ptr %89, null
  br i1 %tobool49.not, label %if.end47.if.end51_crit_edge, label %if.then50

if.end47.if.end51_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tegra_xudc_ep_kick_queue(ptr noundef %ep)
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end47.if.end51_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep_wait_for_stopped(ptr nocapture noundef readonly %xudc, i32 noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %ep
  %call.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call.i, 100000
  %base.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 35
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %1, i32 120
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !433
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %and3.i = and i32 %3, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i, i32 %shl)
  %cmp4.i = icmp eq i32 %and3.i, %shl
  br i1 %cmp4.i, label %entry.xudc_readl_poll.exit_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.xudc_readl_poll.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %xudc_readl_poll.exit

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call4.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call4.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call4.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then7.i, label %cond.false.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %5, i32 120
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !439
  br label %xudc_readl_poll.exit

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #9
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 120
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !433
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %and.i = and i32 %11, %shl
  %cmp.i = icmp eq i32 %and.i, %shl
  br i1 %cmp.i, label %cond.false.i.xudc_readl_poll.exit_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

cond.false.i.xudc_readl_poll.exit_crit_edge:      ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xudc_readl_poll.exit

xudc_readl_poll.exit:                             ; preds = %cond.false.i.xudc_readl_poll.exit_crit_edge, %if.then7.i, %entry.xudc_readl_poll.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %shl) #9
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %14, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %12) #9, !srcloc !436
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep_halt(ptr nocapture noundef readonly %xudc, i32 noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 35
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 80
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !433
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %shl = shl nuw i32 1, %ep
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %or = or i32 %3, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %6, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %4) #9, !srcloc !436
  %call.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call.i, 100000
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %8, i32 92
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !433
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %and3.i = and i32 %10, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i, i32 %shl)
  %cmp4.i = icmp eq i32 %and3.i, %shl
  br i1 %cmp4.i, label %if.end.xudc_readl_poll.exit_crit_edge, label %if.end.land.lhs.true.i_crit_edge

if.end.land.lhs.true.i_crit_edge:                 ; preds = %if.end
  br label %land.lhs.true.i

if.end.xudc_readl_poll.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %xudc_readl_poll.exit

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %if.end.land.lhs.true.i_crit_edge
  %call4.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call4.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call4.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then7.i, label %cond.false.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %12, i32 92
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !439
  br label %xudc_readl_poll.exit

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #9
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %16, i32 92
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #9, !srcloc !433
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %and.i = and i32 %18, %shl
  %cmp.i = icmp eq i32 %and.i, %shl
  br i1 %cmp.i, label %cond.false.i.xudc_readl_poll.exit_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

cond.false.i.xudc_readl_poll.exit_crit_edge:      ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xudc_readl_poll.exit

xudc_readl_poll.exit:                             ; preds = %cond.false.i.xudc_readl_poll.exit_crit_edge, %if.then7.i, %if.end.xudc_readl_poll.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %shl) #9
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %21, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %19) #9, !srcloc !436
  br label %cleanup

cleanup:                                          ; preds = %xudc_readl_poll.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_xudc_handle_ep0_setup_packet(ptr noundef %xudc, ptr noundef %ctrl, i16 noundef zeroext %seq_num) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %setup_seq_num = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 22
  %0 = ptrtoint ptr %setup_seq_num to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %seq_num, ptr %setup_seq_num, align 8
  tail call fastcc void @ep_unhalt(ptr noundef %xudc, i32 noundef 0)
  %soc = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 1
  %1 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %soc, align 4
  %invalid_seq_num = getelementptr inbounds %struct.tegra_xudc_soc, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %invalid_seq_num to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %invalid_seq_num, align 1, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp ne i8 %4, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %seq_num)
  %switch = icmp ugt i16 %seq_num, -3
  %or.cond = and i1 %switch, %tobool.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.80) #12
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 4
  %7 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %wLength, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool5.not = icmp eq i16 %8, 0
  br i1 %tobool5.not, label %if.end.if.end10_crit_edge, label %if.then6

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctrl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %tobool8.not = icmp sgt i8 %10, -1
  %cond = select i1 %tobool8.not, i32 2, i32 1
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end.if.end10_crit_edge
  %cond.sink = phi i32 [ %cond, %if.then6 ], [ 3, %if.end.if.end10_crit_edge ]
  %11 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 21
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond.sink, ptr %11, align 4
  %13 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ctrl, align 1
  %15 = and i8 %14, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp14 = icmp eq i8 %15, 0
  br i1 %cmp14, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call fastcc i32 @tegra_xudc_ep0_standard_req(ptr noundef %xudc, ptr noundef %ctrl)
  br label %if.end19

if.else17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  %driver.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 5
  %16 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver.i, align 8
  %setup.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %setup.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %setup.i, align 4
  %gadget.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 4
  %call.i = tail call i32 %19(ptr noundef %gadget.i, ptr noundef %ctrl) #9
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.then16
  %ret.0 = phi i32 [ %call, %if.then16 ], [ %call.i, %if.else17 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp20 = icmp slt i32 %ret.0, 0
  br i1 %cmp20, label %do.end25, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.83, i32 noundef %ret.0) #12
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %11, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end25, %do.end
  tail call fastcc void @ep_halt(ptr noundef %xudc, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end19.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_xudc_ep_kick_queue(ptr noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 12
  %ring_full = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 10
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn20 = load ptr, ptr %queue, align 4
  %cmp.not22 = icmp eq ptr %.pn20, %queue
  br i1 %cmp.not22, label %entry.if.end12_crit_edge, label %for.body.lr.ph

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

for.body.lr.ph:                                   ; preds = %entry
  %deq_ptr.i.i = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 8
  %enq_ptr.i.i = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 7
  %desc.i = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 13
  %transfer_ring.i = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 5
  %pcs.i = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %tegra_xudc_queue_trbs.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn24 = phi ptr [ %.pn20, %for.body.lr.ph ], [ %.pn, %tegra_xudc_queue_trbs.exit.for.body_crit_edge ]
  %trbs_queued.0.off023 = phi i1 [ false, %for.body.lr.ph ], [ %spec.select, %tegra_xudc_queue_trbs.exit.for.body_crit_edge ]
  %req.025 = getelementptr i8, ptr %.pn24, i32 -80
  %1 = ptrtoint ptr %ring_full to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ring_full, align 1, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end.i.i, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.i.i:                                       ; preds = %for.body
  %3 = ptrtoint ptr %deq_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %deq_ptr.i.i, align 4
  %5 = ptrtoint ptr %enq_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enq_ptr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.i.i = icmp ugt i32 %4, %6
  %7 = xor i32 %6, -1
  %sub4.i.i = add i32 %4, %7
  %sub8.neg.i.i = add i32 %4, 62
  %sub10.i.i = sub i32 %sub8.neg.i.i, %6
  %retval.0.i.i = select i1 %cmp.i.i, i32 %sub4.i.i, i32 %sub10.i.i
  %trbs_needed.i = getelementptr i8, ptr %.pn24, i32 -16
  %8 = ptrtoint ptr %trbs_needed.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %trbs_needed.i, align 4
  %trbs_queued.i = getelementptr i8, ptr %.pn24, i32 -20
  %10 = ptrtoint ptr %trbs_queued.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %trbs_queued.i, align 4
  %sub.i = sub i32 %9, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %sub.i)
  %cmp.i = icmp ult i32 %retval.0.i.i, %sub.i
  br i1 %cmp.i, label %if.then.i, label %if.end.i.i.if.end.i_crit_edge

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %ring_full to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %ring_full, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.i.i.if.end.i_crit_edge
  %count.0.i = phi i32 [ %retval.0.i.i, %if.then.i ], [ %sub.i, %if.end.i.i.if.end.i_crit_edge ]
  %need_zlp.i = getelementptr i8, ptr %.pn24, i32 -12
  %13 = ptrtoint ptr %need_zlp.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %need_zlp.i, align 4, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.end.i.if.end6.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc.i, align 4
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bmAttributes.i.i, align 1
  %19 = and i8 %18, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp.i80.i = icmp eq i8 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.0.i)
  %cmp4.i = icmp ugt i32 %count.0.i, 1
  %or.cond.i = select i1 %cmp.i80.i, i1 %cmp4.i, i1 false
  br label %if.end6.i

if.end6.i:                                        ; preds = %land.lhs.true.i, %if.end.i.if.end6.i_crit_edge
  %wait_td.0.off0.i = phi i1 [ false, %if.end.i.if.end6.i_crit_edge ], [ %or.cond.i, %land.lhs.true.i ]
  %first_trb.i = getelementptr i8, ptr %.pn24, i32 -8
  %20 = ptrtoint ptr %first_trb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %first_trb.i, align 4
  %tobool7.not.i = icmp eq ptr %21, null
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end6.i.if.end10.i_crit_edge

if.end6.i.if.end10.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %transfer_ring.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %transfer_ring.i, align 4
  %24 = ptrtoint ptr %enq_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %enq_ptr.i.i, align 4
  %arrayidx.i = getelementptr %struct.tegra_xudc_trb, ptr %23, i32 %25
  %26 = ptrtoint ptr %first_trb.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx.i, ptr %first_trb.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end6.i.if.end10.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.i)
  %cmp1181.not.i = icmp eq i32 %count.0.i, 0
  br i1 %cmp1181.not.i, label %if.end10.i.tegra_xudc_queue_trbs.exit_crit_edge, label %for.body.lr.ph.i

if.end10.i.tegra_xudc_queue_trbs.exit_crit_edge:  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_xudc_queue_trbs.exit

for.body.lr.ph.i:                                 ; preds = %if.end10.i
  %sub15.i = add i32 %count.0.i, -1
  %sub19.i = add i32 %count.0.i, -2
  %last_trb.i = getelementptr i8, ptr %.pn24, i32 -4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end36.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.082.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc41.i, %if.end36.i.for.body.i_crit_edge ]
  %27 = ptrtoint ptr %transfer_ring.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %transfer_ring.i, align 4
  %29 = ptrtoint ptr %enq_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %enq_ptr.i.i, align 4
  %arrayidx14.i = getelementptr %struct.tegra_xudc_trb, ptr %28, i32 %30
  call void @__sanitizer_cov_trace_cmp4(i32 %i.082.i, i32 %sub15.i)
  %cmp16.i = icmp eq i32 %i.082.i, %sub15.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.082.i, i32 %sub19.i)
  %cmp20.i = icmp eq i32 %i.082.i, %sub19.i
  %or.cond79.i = select i1 %wait_td.0.off0.i, i1 %cmp20.i, i1 false
  %or.cond85.i = select i1 %cmp16.i, i1 true, i1 %or.cond79.i
  tail call fastcc void @tegra_xudc_queue_one_trb(ptr noundef %ep, ptr noundef %req.025, ptr noundef %arrayidx14.i, i1 noundef zeroext %or.cond85.i) #9
  %31 = ptrtoint ptr %last_trb.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx14.i, ptr %last_trb.i, align 4
  %32 = ptrtoint ptr %enq_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %enq_ptr.i.i, align 4
  %inc.i = add i32 %33, 1
  store i32 %inc.i, ptr %enq_ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %inc.i)
  %cmp26.i = icmp eq i32 %inc.i, 63
  br i1 %cmp26.i, label %if.then27.i, label %for.body.i.if.end36.i_crit_edge

for.body.i.if.end36.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

if.then27.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %transfer_ring.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %transfer_ring.i, align 4
  %36 = ptrtoint ptr %pcs.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %pcs.i, align 4, !range !429
  %38 = zext i8 %37 to i32
  %control.i.i = getelementptr %struct.tegra_xudc_trb, ptr %35, i32 63, i32 3
  %39 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %control.i.i, align 4
  %41 = and i32 %40, -16777217
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #9
  %or.i.i = or i32 %42, %38
  %43 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  %44 = ptrtoint ptr %control.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %control.i.i, align 4
  %45 = ptrtoint ptr %pcs.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %pcs.i, align 4, !range !429
  %47 = xor i8 %46, 1
  store i8 %47, ptr %pcs.i, align 4
  %48 = ptrtoint ptr %enq_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %enq_ptr.i.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then27.i, %for.body.i.if.end36.i_crit_edge
  %inc41.i = add nuw i32 %i.082.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc41.i, i32 %count.0.i)
  %exitcond.not.i = icmp eq i32 %inc41.i, %count.0.i
  %or.cond86.i = select i1 %or.cond85.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond86.i, label %if.end36.i.tegra_xudc_queue_trbs.exit_crit_edge, label %if.end36.i.for.body.i_crit_edge

if.end36.i.for.body.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end36.i.tegra_xudc_queue_trbs.exit_crit_edge:  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_xudc_queue_trbs.exit

tegra_xudc_queue_trbs.exit:                       ; preds = %if.end36.i.tegra_xudc_queue_trbs.exit_crit_edge, %if.end10.i.tegra_xudc_queue_trbs.exit_crit_edge
  %not.cmp1181.not.i = xor i1 %cmp1181.not.i, true
  %spec.select = select i1 %not.cmp1181.not.i, i1 true, i1 %trbs_queued.0.off023
  %49 = ptrtoint ptr %.pn24 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn = load ptr, ptr %.pn24, align 4
  %cmp.not = icmp eq ptr %.pn, %queue
  br i1 %cmp.not, label %tegra_xudc_queue_trbs.exit.for.end_crit_edge, label %tegra_xudc_queue_trbs.exit.for.body_crit_edge

tegra_xudc_queue_trbs.exit.for.body_crit_edge:    ; preds = %tegra_xudc_queue_trbs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

tegra_xudc_queue_trbs.exit.for.end_crit_edge:     ; preds = %tegra_xudc_queue_trbs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %tegra_xudc_queue_trbs.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  %trbs_queued.0.off0.lcssa = phi i1 [ %trbs_queued.0.off023, %for.body.for.end_crit_edge ], [ %spec.select, %tegra_xudc_queue_trbs.exit.for.end_crit_edge ]
  br i1 %trbs_queued.0.off0.lcssa, label %if.then11, label %for.end.if.end12_crit_edge

for.end.if.end12_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %ep)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %for.end.if.end12_crit_edge, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @no_op_complete(ptr nocapture noundef %ep, ptr nocapture noundef %req) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__tegra_xudc_ep_queue(ptr noundef %ep, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %desc = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 13
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bmAttributes.i, align 1
  %6 = and i8 %5, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.i.not = icmp eq i8 %6, 0
  br i1 %cmp.i.not, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %queue = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 12
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %queue, align 4
  %cmp.i90.not = icmp eq ptr %8, %queue
  br i1 %cmp.i90.not, label %if.then7, label %do.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.74) #12
  br label %cleanup

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %gadget = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 4
  %setup_state = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 21
  %11 = ptrtoint ptr %setup_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %setup_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp eq i32 %12, 1
  %conv = zext i1 %cmp to i32
  %call8 = tail call i32 @usb_gadget_map_request(ptr noundef %gadget, ptr noundef %req, i32 noundef %conv) #9
  br label %if.end14

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %gadget9 = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bEndpointAddress.i, align 1
  %.lobit.i = lshr i8 %14, 7
  %15 = zext i8 %.lobit.i to i32
  %call13 = tail call i32 @usb_gadget_map_request(ptr noundef %gadget9, ptr noundef %req, i32 noundef %15) #9
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then7
  %err.0 = phi i32 [ %call8, %if.then7 ], [ %call13, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp15 = icmp slt i32 %err.0, 0
  br i1 %cmp15, label %do.end20, label %if.end22

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.77, i32 noundef %err.0) #12
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %first_trb = getelementptr inbounds %struct.tegra_xudc_request, ptr %req, i32 0, i32 5
  %18 = ptrtoint ptr %first_trb to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %first_trb, align 4
  %last_trb = getelementptr inbounds %struct.tegra_xudc_request, ptr %req, i32 0, i32 6
  %19 = ptrtoint ptr %last_trb to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %last_trb, align 4
  %buf_queued = getelementptr inbounds %struct.tegra_xudc_request, ptr %req, i32 0, i32 1
  %20 = ptrtoint ptr %buf_queued to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %buf_queued, align 4
  %trbs_queued = getelementptr inbounds %struct.tegra_xudc_request, ptr %req, i32 0, i32 2
  %21 = ptrtoint ptr %trbs_queued to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %trbs_queued, align 4
  %need_zlp = getelementptr inbounds %struct.tegra_xudc_request, ptr %req, i32 0, i32 4
  %22 = ptrtoint ptr %need_zlp to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %need_zlp, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %23 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length, align 4
  %sub = add i32 %24, 65535
  %div89 = lshr i32 %sub, 16
  %trbs_needed = getelementptr inbounds %struct.tegra_xudc_request, ptr %req, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp26 = icmp eq i32 %24, 0
  %inc = zext i1 %cmp26 to i32
  %spec.select = add nuw nsw i32 %div89, %inc
  %25 = ptrtoint ptr %trbs_needed to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %spec.select, ptr %trbs_needed, align 4
  %26 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %desc, align 4
  %bmAttributes.i94 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %bmAttributes.i94 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bmAttributes.i94, align 1
  %30 = and i8 %29, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp.i95.not = icmp eq i8 %30, 1
  br i1 %cmp.i95.not, label %if.end22.if.end52_crit_edge, label %land.lhs.true34

if.end22.if.end52_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

land.lhs.true34:                                  ; preds = %if.end22
  %zero = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %31 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load = load i32, ptr %zero, align 4
  %32 = and i32 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool36.not = icmp eq i32 %32, 0
  %brmerge = select i1 %tobool36.not, i1 true, i1 %cmp26
  br i1 %brmerge, label %land.lhs.true34.if.end52_crit_edge, label %land.lhs.true41

land.lhs.true34.if.end52_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

land.lhs.true41:                                  ; preds = %land.lhs.true34
  %maxpacket = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 1, i32 7
  %33 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %33, i32 7)
  %bf.load44 = load i56, ptr %maxpacket, align 2
  %bf.lshr45 = lshr i56 %bf.load44, 40
  %bf.cast = trunc i56 %bf.lshr45 to i32
  %rem = urem i32 %24, %bf.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp46 = icmp eq i32 %rem, 0
  br i1 %cmp46, label %if.then48, label %land.lhs.true41.if.end52_crit_edge

land.lhs.true41.if.end52_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then48:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #11
  %inc50 = add nuw nsw i32 %spec.select, 1
  %34 = ptrtoint ptr %trbs_needed to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %inc50, ptr %trbs_needed, align 4
  %35 = ptrtoint ptr %need_zlp to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %need_zlp, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %land.lhs.true41.if.end52_crit_edge, %land.lhs.true34.if.end52_crit_edge, %if.end22.if.end52_crit_edge
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %36 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -115, ptr %status, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %37 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %actual, align 4
  %list = getelementptr inbounds %struct.tegra_xudc_request, ptr %req, i32 0, i32 7
  %queue55 = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 12
  %prev.i = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 12, i32 1
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %39, ptr noundef %queue55) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end52.list_add_tail.exit_crit_edge

if.end52.list_add_tail.exit_crit_edge:            ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %list, ptr %prev.i, align 4
  %41 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %queue55, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.tegra_xudc_request, ptr %req, i32 0, i32 7, i32 1
  %42 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %list, ptr %39, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end52.list_add_tail.exit_crit_edge
  tail call fastcc void @tegra_xudc_ep_kick_queue(ptr noundef %ep)
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %do.end20, %do.end
  %retval.0 = phi i32 [ %err.0, %do.end20 ], [ 0, %list_add_tail.exit ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_map_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_xudc_queue_one_trb(ptr nocapture noundef readonly %ep, ptr nocapture noundef %req, ptr noundef %trb, i1 noundef zeroext %ioc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  %buf_queued = getelementptr inbounds %struct.tegra_xudc_request, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %buf_queued to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf_queued, align 4
  %sub = sub i32 %3, %5
  %6 = tail call i32 @llvm.umin.i32(i32 %sub, i32 65536)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2.not = icmp eq i32 %6, 0
  br i1 %cmp2.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dma = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 2
  %7 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma, align 4
  %add = add i32 %8, %5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %buf_addr.0 = phi i32 [ %add, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %9 = tail call i32 @llvm.bswap.i32(i32 %buf_addr.0) #9
  %10 = ptrtoint ptr %trb to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %trb, align 4
  %data_hi.i.i = getelementptr inbounds %struct.tegra_xudc_trb, ptr %trb, i32 0, i32 1
  %11 = ptrtoint ptr %data_hi.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %data_hi.i.i, align 4
  %status.i = getelementptr inbounds %struct.tegra_xudc_trb, ptr %trb, i32 0, i32 2
  %12 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status.i, align 4
  %14 = shl i32 %13, 24
  %or.i = or i32 %14, %6
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %16 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %status.i, align 4
  %trbs_needed = getelementptr inbounds %struct.tegra_xudc_request, ptr %req, i32 0, i32 3
  %17 = ptrtoint ptr %trbs_needed to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %trbs_needed, align 4
  %trbs_queued = getelementptr inbounds %struct.tegra_xudc_request, ptr %req, i32 0, i32 2
  %19 = ptrtoint ptr %trbs_queued to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %trbs_queued, align 4
  %21 = xor i32 %20, -1
  %sub6 = add i32 %18, %21
  %and1.i129 = shl i32 %sub6, 17
  %shl.i = and i32 %and1.i129, 4063232
  %or.i130 = or i32 %shl.i, %or.i
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i130) #9
  %23 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %status.i, align 4
  %24 = ptrtoint ptr %trbs_queued to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %trbs_queued, align 4
  %26 = ptrtoint ptr %trbs_needed to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %trbs_needed, align 4
  %sub9 = add i32 %27, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %sub9)
  %cmp10 = icmp eq i32 %25, %sub9
  br i1 %cmp10, label %if.end.if.then18_crit_edge, label %lor.lhs.false

if.end.if.then18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

lor.lhs.false:                                    ; preds = %if.end
  %need_zlp = getelementptr inbounds %struct.tegra_xudc_request, ptr %req, i32 0, i32 4
  %28 = ptrtoint ptr %need_zlp to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %need_zlp, align 4, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not = icmp ne i8 %29, 0
  %sub15 = add i32 %27, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %sub15)
  %cmp16 = icmp eq i32 %25, %sub15
  %or.cond = select i1 %tobool.not, i1 %cmp16, i1 false
  br i1 %or.cond, label %lor.lhs.false.if.then18_crit_edge, label %if.else19

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

if.then18:                                        ; preds = %lor.lhs.false.if.then18_crit_edge, %if.end.if.then18_crit_edge
  %control.i = getelementptr inbounds %struct.tegra_xudc_trb, ptr %trb, i32 0, i32 3
  %30 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %control.i, align 4
  %32 = and i32 %31, -268435457
  store i32 %32, ptr %control.i, align 4
  br label %if.end20

if.else19:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %control.i131 = getelementptr inbounds %struct.tegra_xudc_trb, ptr %trb, i32 0, i32 3
  %33 = ptrtoint ptr %control.i131 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %control.i131, align 4
  %35 = or i32 %34, 268435456
  store i32 %35, ptr %control.i131, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %if.then18
  %control.i133 = getelementptr inbounds %struct.tegra_xudc_trb, ptr %trb, i32 0, i32 3
  %36 = ptrtoint ptr %control.i133 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %control.i133, align 4
  %38 = and i32 %37, -536870913
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #9
  %and1.i134 = select i1 %ioc, i32 32, i32 0
  %or.i136 = or i32 %39, %and1.i134
  %40 = tail call i32 @llvm.bswap.i32(i32 %or.i136) #9
  %41 = ptrtoint ptr %control.i133 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %control.i133, align 4
  %desc = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 13
  %42 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %desc, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool23.not = icmp slt i8 %45, 0
  br i1 %tobool23.not, label %lor.lhs.false24, label %if.end20.if.then31_crit_edge

if.end20.if.then31_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

lor.lhs.false24:                                  ; preds = %if.end20
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %43, i32 0, i32 3
  %46 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bmAttributes.i, align 1
  %48 = and i8 %47, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp.i.not = icmp eq i8 %48, 0
  br i1 %cmp.i.not, label %land.lhs.true28, label %lor.lhs.false24.if.else32_crit_edge

lor.lhs.false24.if.else32_crit_edge:              ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else32

land.lhs.true28:                                  ; preds = %lor.lhs.false24
  %setup_state = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 21
  %49 = ptrtoint ptr %setup_state to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %setup_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp29 = icmp eq i32 %50, 2
  br i1 %cmp29, label %land.lhs.true28.if.then31_crit_edge, label %land.lhs.true28.if.else32_crit_edge

land.lhs.true28.if.else32_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else32

land.lhs.true28.if.then31_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

if.then31:                                        ; preds = %land.lhs.true28.if.then31_crit_edge, %if.end20.if.then31_crit_edge
  %51 = or i32 %40, 67108864
  br label %if.end33

if.else32:                                        ; preds = %land.lhs.true28.if.else32_crit_edge, %lor.lhs.false24.if.else32_crit_edge
  %52 = and i32 %40, -67108865
  br label %if.end33

if.end33:                                         ; preds = %if.else32, %if.then31
  %storemerge = phi i32 [ %51, %if.then31 ], [ %52, %if.else32 ]
  %53 = ptrtoint ptr %control.i133 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %storemerge, ptr %control.i133, align 4
  %54 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %desc, align 4
  %bmAttributes.i140 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %bmAttributes.i140 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %bmAttributes.i140, align 1
  %trunc = trunc i8 %57 to i2
  %58 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.196)
  switch i2 %trunc, label %if.else63 [
    i2 0, label %if.then37
    i2 1, label %if.then62
  ]

if.then37:                                        ; preds = %if.end33
  %setup_state38 = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 21
  %59 = ptrtoint ptr %setup_state38 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %setup_state38, align 4
  %.off = add i32 %60, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %61 = ptrtoint ptr %control.i133 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %control.i133, align 4
  %63 = and i32 %62, -16515073
  %. = select i1 %switch, i32 786432, i32 1048576
  %64 = or i32 %63, %.
  store i32 %64, ptr %control.i133, align 4
  %65 = ptrtoint ptr %setup_state38 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %setup_state38, align 4
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %66, label %if.else56 [
    i32 1, label %if.then37.if.then55_crit_edge
    i32 3, label %if.then37.if.then55_crit_edge177
  ]

if.then37.if.then55_crit_edge177:                 ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then55

if.then37.if.then55_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then55

if.then55:                                        ; preds = %if.then37.if.then55_crit_edge, %if.then37.if.then55_crit_edge177
  %68 = ptrtoint ptr %control.i133 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %control.i133, align 4
  %70 = or i32 %69, 256
  br label %if.end71

if.else56:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %control.i133 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %control.i133, align 4
  %73 = and i32 %72, -257
  br label %if.end71

if.then62:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %control.i133 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %control.i133, align 4
  %76 = and i32 %75, -16580608
  %77 = or i32 %76, 1310848
  br label %if.end71

if.else63:                                        ; preds = %if.end33
  %comp_desc = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 14
  %78 = ptrtoint ptr %comp_desc to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %comp_desc, align 4
  %tobool.not.i = icmp eq ptr %79, null
  br i1 %tobool.not.i, label %if.else63.if.else68_crit_edge, label %if.end.i

if.else63.if.else68_crit_edge:                    ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else68

if.end.i:                                         ; preds = %if.else63
  %bmAttributes.i158 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %bmAttributes.i158 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %bmAttributes.i158, align 1
  %82 = and i8 %81, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool1.not.i = icmp eq i8 %82, 0
  br i1 %tobool1.not.i, label %if.end.i.if.else68_crit_edge, label %usb_ss_max_streams.exit

if.end.i.if.else68_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else68

usb_ss_max_streams.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %control.i133 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %control.i133, align 4
  %85 = and i32 %84, -16515073
  %86 = or i32 %85, 12582912
  store i32 %86, ptr %control.i133, align 4
  %stream_id = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %87 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %87)
  %bf.load = load i32, ptr %stream_id, align 4
  %bf.lshr = and i32 %bf.load, -65536
  %88 = and i32 %86, -3997696
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #9
  %or.i164 = or i32 %89, %bf.lshr
  %90 = tail call i32 @llvm.bswap.i32(i32 %or.i164) #9
  br label %if.end71

if.else68:                                        ; preds = %if.end.i.if.else68_crit_edge, %if.else63.if.else68_crit_edge
  %91 = ptrtoint ptr %control.i133 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %control.i133, align 4
  %93 = and i32 %92, -16580608
  %94 = or i32 %93, 262144
  br label %if.end71

if.end71:                                         ; preds = %if.else68, %usb_ss_max_streams.exit, %if.then62, %if.else56, %if.then55
  %.sink176 = phi i32 [ %77, %if.then62 ], [ %94, %if.else68 ], [ %90, %usb_ss_max_streams.exit ], [ %70, %if.then55 ], [ %73, %if.else56 ]
  %95 = ptrtoint ptr %control.i133 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %.sink176, ptr %control.i133, align 4
  %pcs = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 9
  %96 = ptrtoint ptr %pcs to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %pcs, align 4, !range !429
  %98 = zext i8 %97 to i32
  %99 = and i32 %.sink176, -16777217
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #9
  %or.i170 = or i32 %100, %98
  %101 = tail call i32 @llvm.bswap.i32(i32 %or.i170) #9
  %102 = ptrtoint ptr %control.i133 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %control.i133, align 4
  %103 = ptrtoint ptr %trbs_queued to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %trbs_queued, align 4
  %inc = add i32 %104, 1
  store i32 %inc, ptr %trbs_queued, align 4
  %105 = ptrtoint ptr %buf_queued to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %buf_queued, align 4
  %add76 = add i32 %106, %6
  store i32 %add76, ptr %buf_queued, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_trb.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_queue_one_trb, %dump_trb.exit)) #9
          to label %if.then.i [label %dump_trb.exit], !srcloc !437

if.then.i:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %1, align 8
  %109 = ptrtoint ptr %trb to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %trb, align 4
  %111 = ptrtoint ptr %data_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %data_hi.i.i, align 4
  %113 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %status.i, align 4
  %115 = ptrtoint ptr %control.i133 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %control.i133, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_trb.__UNIQUE_ID_ddebug295, ptr noundef %108, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.79, ptr noundef %trb, i32 noundef %110, i32 noundef %112, i32 noundef %114, i32 noundef %116) #9
  br label %dump_trb.exit

dump_trb.exit:                                    ; preds = %if.then.i, %if.end71
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep_unhalt(ptr nocapture noundef readonly %xudc, i32 noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 35
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 80
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !433
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %shl = shl nuw i32 1, %ep
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %neg = xor i32 %shl, -1
  %and2 = and i32 %3, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %and2) #9
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %6, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %4) #9, !srcloc !436
  %call.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call.i, 100000
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %8, i32 92
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !433
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %and3.i = and i32 %10, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i, i32 %shl)
  %cmp4.i = icmp eq i32 %and3.i, %shl
  br i1 %cmp4.i, label %if.end.xudc_readl_poll.exit_crit_edge, label %if.end.land.lhs.true.i_crit_edge

if.end.land.lhs.true.i_crit_edge:                 ; preds = %if.end
  br label %land.lhs.true.i

if.end.xudc_readl_poll.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %xudc_readl_poll.exit

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %if.end.land.lhs.true.i_crit_edge
  %call4.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call4.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call4.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then7.i, label %cond.false.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %12, i32 92
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !439
  br label %xudc_readl_poll.exit

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #9
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %16, i32 92
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #9, !srcloc !433
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %and.i = and i32 %18, %shl
  %cmp.i = icmp eq i32 %and.i, %shl
  br i1 %cmp.i, label %cond.false.i.xudc_readl_poll.exit_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

cond.false.i.xudc_readl_poll.exit_crit_edge:      ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xudc_readl_poll.exit

xudc_readl_poll.exit:                             ; preds = %cond.false.i.xudc_readl_poll.exit_crit_edge, %if.then7.i, %if.end.xudc_readl_poll.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %shl) #9
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %21, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %19) #9, !srcloc !436
  br label %cleanup

cleanup:                                          ; preds = %xudc_readl_poll.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_xudc_ep0_standard_req(ptr noundef %xudc, ptr noundef %ctrl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %0 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bRequest, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.198)
  switch i8 %1, label %entry.sw.default_crit_edge [
    i8 0, label %do.body
    i8 5, label %do.body6
    i8 48, label %do.body27
    i8 49, label %do.body48
    i8 1, label %entry.do.body69_crit_edge
    i8 3, label %entry.do.body69_crit_edge201
    i8 9, label %do.body90
  ]

entry.do.body69_crit_edge201:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body69

entry.do.body69_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body69

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_ep0_standard_req.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_ep0_standard_req, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !437

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_ep0_standard_req.__UNIQUE_ID_ddebug318, ptr noundef %4, ptr noundef nonnull @.str.86) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %wIndex.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 3
  %5 = ptrtoint ptr %wIndex.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %wIndex.i, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #9
  %conv.i = zext i16 %7 to i32
  %8 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ctrl, align 1
  %conv1.i = zext i8 %9 to i32
  %and.i = and i32 %conv1.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.sw.epilog_crit_edge, label %if.end.i

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i:                                         ; preds = %do.end
  %wValue.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %10 = ptrtoint ptr %wValue.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %wValue.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp.not.i = icmp eq i16 %11, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

lor.lhs.false.i:                                  ; preds = %if.end.i
  %wLength.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 4
  %12 = ptrtoint ptr %wLength.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %wLength.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %13)
  %cmp5.not.i = icmp eq i16 %13, 512
  br i1 %cmp5.not.i, label %if.end8.i, label %lor.lhs.false.i.sw.epilog_crit_edge

lor.lhs.false.i.sw.epilog_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end8.i:                                        ; preds = %lor.lhs.false.i
  %and11.i = and i32 %conv1.i, 31
  %14 = zext i32 %and11.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.199)
  switch i32 %and11.i, label %if.end8.i.sw.epilog_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb46.i
    i32 2, label %sw.bb64.i
  ]

if.end8.i.sw.epilog_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.i:                                          ; preds = %if.end8.i
  %base.i.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 35
  %15 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 76
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !433
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %selfpowered.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 54
  %19 = ptrtoint ptr %selfpowered.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %selfpowered.i, align 4, !range !429
  %21 = zext i8 %20 to i16
  %speed.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 4, i32 5
  %22 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp17.i = icmp ugt i32 %23, 4
  %and19.i = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %or.cond.i = select i1 %cmp17.i, i1 true, i1 %tobool20.not.i
  %24 = or i16 %21, 2
  %status.1.i = select i1 %or.cond.i, i16 %21, i16 %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %23)
  %cmp28.i = icmp eq i32 %23, 5
  br i1 %cmp28.i, label %if.then30.i, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.then30.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %and31.i = lshr i32 %18, 26
  %25 = trunc i32 %and31.i to i16
  %26 = and i16 %25, 12
  %27 = or i16 %status.1.i, %26
  br label %sw.epilog.i

sw.bb46.i:                                        ; preds = %if.end8.i
  %speed48.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 4, i32 5
  %28 = ptrtoint ptr %speed48.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %speed48.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %29)
  %cmp49.i = icmp eq i32 %29, 5
  br i1 %cmp49.i, label %if.then51.i, label %sw.bb46.i.sw.epilog.i_crit_edge

sw.bb46.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.then51.i:                                      ; preds = %sw.bb46.i
  call void @__sanitizer_cov_trace_pc() #11
  %base.i131.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 35
  %30 = ptrtoint ptr %base.i131.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i131.i, align 4
  %add.ptr.i132.i = getelementptr i8, ptr %31, i32 76
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i132.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %33 = and i32 %32, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool57.not.i = icmp eq i32 %33, 0
  %spec.select128.i = select i1 %tobool57.not.i, i16 1, i16 3
  br label %sw.epilog.i

sw.bb64.i:                                        ; preds = %if.end8.i
  %and65.i = shl nuw nsw i32 %conv.i, 1
  %mul.i = and i32 %and65.i, 30
  %and66.i = lshr i32 %conv.i, 7
  %and66.lobit.i = and i32 %and66.i, 1
  %add.i = or i32 %mul.i, %and66.lobit.i
  %ep_context.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 12
  %34 = ptrtoint ptr %ep_context.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ep_context.i, align 8
  %arrayidx.i = getelementptr %struct.tegra_xudc_ep_context, ptr %35, i32 %add.i
  %device_state.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 32
  %36 = ptrtoint ptr %device_state.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %device_state.i, align 8
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %37, label %sw.bb64.i.sw.epilog_crit_edge [
    i32 7, label %sw.bb64.i.if.end78.i_crit_edge
    i32 6, label %lor.lhs.false74.i
  ]

sw.bb64.i.if.end78.i_crit_edge:                   ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78.i

sw.bb64.i.sw.epilog_crit_edge:                    ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

lor.lhs.false74.i:                                ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp75.not.i = icmp eq i32 %add.i, 0
  br i1 %cmp75.not.i, label %lor.lhs.false74.i.if.end78.i_crit_edge, label %lor.lhs.false74.i.sw.epilog_crit_edge

lor.lhs.false74.i.sw.epilog_crit_edge:            ; preds = %lor.lhs.false74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

lor.lhs.false74.i.if.end78.i_crit_edge:           ; preds = %lor.lhs.false74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78.i

if.end78.i:                                       ; preds = %lor.lhs.false74.i.if.end78.i_crit_edge, %sw.bb64.i.if.end78.i_crit_edge
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i, align 4
  %41 = and i32 %40, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp80.i = icmp eq i32 %41, 0
  br i1 %cmp80.i, label %if.end78.i.sw.epilog_crit_edge, label %if.end83.i

if.end78.i.sw.epilog_crit_edge:                   ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end83.i:                                       ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #11
  %base.i133.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 35
  %42 = ptrtoint ptr %base.i133.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i133.i, align 4
  %add.ptr.i134.i = getelementptr i8, ptr %43, i32 80
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i134.i) #9, !srcloc !433
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %shl.i = shl nuw i32 1, %add.i
  %and85.i = and i32 %45, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85.i)
  %tobool86.not.i = icmp ne i32 %and85.i, 0
  %spec.select129.i = zext i1 %tobool86.not.i to i16
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end83.i, %if.then51.i, %sw.bb46.i.sw.epilog.i_crit_edge, %if.then30.i, %sw.bb.i.sw.epilog.i_crit_edge
  %status.3.i = phi i16 [ 0, %sw.bb46.i.sw.epilog.i_crit_edge ], [ %status.1.i, %sw.bb.i.sw.epilog.i_crit_edge ], [ %spec.select128.i, %if.then51.i ], [ %spec.select129.i, %if.end83.i ], [ %27, %if.then30.i ]
  %46 = tail call i16 @llvm.bswap.i16(i16 %status.3.i) #9
  %status_buf.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 27
  %47 = ptrtoint ptr %status_buf.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %status_buf.i, align 2
  %ep0_req.i.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 28
  %48 = ptrtoint ptr %ep0_req.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ep0_req.i.i, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %status_buf.i, ptr %49, align 4
  %51 = load ptr, ptr %ep0_req.i.i, align 8
  %length.i.i = getelementptr inbounds %struct.usb_request, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2, ptr %length.i.i, align 4
  %53 = load ptr, ptr %ep0_req.i.i, align 8
  %complete.i.i = getelementptr inbounds %struct.usb_request, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @no_op_complete, ptr %complete.i.i, align 4
  %55 = load ptr, ptr %ep0_req.i.i, align 8
  %context.i.i = getelementptr inbounds %struct.usb_request, ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %context.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %xudc, ptr %context.i.i, align 4
  %ep.i.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 11
  %57 = load ptr, ptr %ep0_req.i.i, align 8
  %call.i.i = tail call fastcc i32 @__tegra_xudc_ep_queue(ptr noundef %ep.i.i, ptr noundef %57) #9
  br label %sw.epilog

do.body6:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_ep0_standard_req.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_ep0_standard_req, %do.end24)) #9
          to label %if.then20 [label %do.end24], !srcloc !437

if.then20:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_ep0_standard_req.__UNIQUE_ID_ddebug319, ptr noundef %59, ptr noundef nonnull @.str.87) #9
  br label %do.end24

do.end24:                                         ; preds = %if.then20, %do.body6
  %call25 = tail call fastcc i32 @tegra_xudc_ep0_set_address(ptr noundef %xudc, ptr noundef %ctrl)
  br label %sw.epilog

do.body27:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_ep0_standard_req.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_ep0_standard_req, %do.end45)) #9
          to label %if.then41 [label %do.end45], !srcloc !437

if.then41:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_ep0_standard_req.__UNIQUE_ID_ddebug320, ptr noundef %61, ptr noundef nonnull @.str.88) #9
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %do.body27
  %62 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %ctrl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp.not.i143 = icmp eq i8 %63, 0
  br i1 %cmp.not.i143, label %if.end.i145, label %do.end45.sw.epilog_crit_edge

do.end45.sw.epilog_crit_edge:                     ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i145:                                      ; preds = %do.end45
  %device_state.i144 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 32
  %64 = ptrtoint ptr %device_state.i144 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %device_state.i144, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %65)
  %cmp2.i = icmp eq i32 %65, 5
  br i1 %cmp2.i, label %if.end.i145.sw.epilog_crit_edge, label %if.end5.i

if.end.i145.sw.epilog_crit_edge:                  ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end5.i:                                        ; preds = %if.end.i145
  %wIndex.i146 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 3
  %66 = ptrtoint ptr %wIndex.i146 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %wIndex.i146, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %cmp7.not.i = icmp eq i16 %67, 0
  br i1 %cmp7.not.i, label %lor.lhs.false.i148, label %if.end5.i.sw.epilog_crit_edge

if.end5.i.sw.epilog_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

lor.lhs.false.i148:                               ; preds = %if.end5.i
  %wValue.i147 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %68 = ptrtoint ptr %wValue.i147 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 2)
  %69 = load i16, ptr %wValue.i147, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %cmp10.not.i = icmp eq i16 %69, 0
  br i1 %cmp10.not.i, label %lor.lhs.false12.i, label %lor.lhs.false.i148.sw.epilog_crit_edge

lor.lhs.false.i148.sw.epilog_crit_edge:           ; preds = %lor.lhs.false.i148
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

lor.lhs.false12.i:                                ; preds = %lor.lhs.false.i148
  %wLength.i149 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 4
  %70 = ptrtoint ptr %wLength.i149 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %wLength.i149, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %71)
  %cmp14.not.i = icmp eq i16 %71, 1536
  br i1 %cmp14.not.i, label %if.end17.i, label %lor.lhs.false12.i.sw.epilog_crit_edge

lor.lhs.false12.i.sw.epilog_crit_edge:            ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end17.i:                                       ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #11
  %sel_timing.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 25
  %ep0_req.i.i150 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 28
  %72 = ptrtoint ptr %ep0_req.i.i150 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ep0_req.i.i150, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %sel_timing.i, ptr %73, align 4
  %75 = load ptr, ptr %ep0_req.i.i150, align 8
  %length.i.i151 = getelementptr inbounds %struct.usb_request, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %length.i.i151 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 6, ptr %length.i.i151, align 4
  %77 = load ptr, ptr %ep0_req.i.i150, align 8
  %complete.i.i152 = getelementptr inbounds %struct.usb_request, ptr %77, i32 0, i32 7
  %78 = ptrtoint ptr %complete.i.i152 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @set_sel_complete, ptr %complete.i.i152, align 4
  %79 = load ptr, ptr %ep0_req.i.i150, align 8
  %context.i.i153 = getelementptr inbounds %struct.usb_request, ptr %79, i32 0, i32 8
  %80 = ptrtoint ptr %context.i.i153 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %xudc, ptr %context.i.i153, align 4
  %ep.i.i154 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 11
  %81 = load ptr, ptr %ep0_req.i.i150, align 8
  %call.i.i155 = tail call fastcc i32 @__tegra_xudc_ep_queue(ptr noundef %ep.i.i154, ptr noundef %81) #9
  br label %sw.epilog

do.body48:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_ep0_standard_req.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_ep0_standard_req, %do.end66)) #9
          to label %if.then62 [label %do.end66], !srcloc !437

if.then62:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_ep0_standard_req.__UNIQUE_ID_ddebug321, ptr noundef %83, ptr noundef nonnull @.str.89) #9
  br label %do.end66

do.end66:                                         ; preds = %if.then62, %do.body48
  %wValue.i157 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %84 = ptrtoint ptr %wValue.i157 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 2)
  %85 = load i16, ptr %wValue.i157, align 1
  %86 = tail call i16 @llvm.bswap.i16(i16 %85) #9
  %87 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %ctrl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %cmp.not.i158 = icmp eq i8 %88, 0
  br i1 %cmp.not.i158, label %lor.lhs.false.i160, label %do.end66.sw.epilog_crit_edge

do.end66.sw.epilog_crit_edge:                     ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

lor.lhs.false.i160:                               ; preds = %do.end66
  %wIndex.i159 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 3
  %89 = ptrtoint ptr %wIndex.i159 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 2)
  %90 = load i16, ptr %wIndex.i159, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %cmp6.not.i = icmp eq i16 %90, 0
  br i1 %cmp6.not.i, label %lor.lhs.false8.i, label %lor.lhs.false.i160.sw.epilog_crit_edge

lor.lhs.false.i160.sw.epilog_crit_edge:           ; preds = %lor.lhs.false.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i160
  %wLength.i161 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 4
  %91 = ptrtoint ptr %wLength.i161 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 2)
  %92 = load i16, ptr %wLength.i161, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %92)
  %cmp10.not.i162 = icmp eq i16 %92, 0
  br i1 %cmp10.not.i162, label %if.end13.i, label %lor.lhs.false8.i.sw.epilog_crit_edge

lor.lhs.false8.i.sw.epilog_crit_edge:             ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end13.i:                                       ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #11
  %isoch_delay.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 24
  %93 = ptrtoint ptr %isoch_delay.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %86, ptr %isoch_delay.i, align 4
  %ep0_req.i.i163 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 28
  %94 = ptrtoint ptr %ep0_req.i.i163 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ep0_req.i.i163, align 8
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %95, align 4
  %97 = load ptr, ptr %ep0_req.i.i163, align 8
  %dma.i.i = getelementptr inbounds %struct.usb_request, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %dma.i.i, align 4
  %99 = load ptr, ptr %ep0_req.i.i163, align 8
  %length.i.i164 = getelementptr inbounds %struct.usb_request, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %length.i.i164 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %length.i.i164, align 4
  %101 = load ptr, ptr %ep0_req.i.i163, align 8
  %complete.i.i165 = getelementptr inbounds %struct.usb_request, ptr %101, i32 0, i32 7
  %102 = ptrtoint ptr %complete.i.i165 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @set_isoch_delay_complete, ptr %complete.i.i165, align 4
  %103 = load ptr, ptr %ep0_req.i.i163, align 8
  %context.i.i166 = getelementptr inbounds %struct.usb_request, ptr %103, i32 0, i32 8
  %104 = ptrtoint ptr %context.i.i166 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %xudc, ptr %context.i.i166, align 4
  %ep.i.i167 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 11
  %105 = load ptr, ptr %ep0_req.i.i163, align 8
  %call.i.i168 = tail call fastcc i32 @__tegra_xudc_ep_queue(ptr noundef %ep.i.i167, ptr noundef %105) #9
  br label %sw.epilog

do.body69:                                        ; preds = %entry.do.body69_crit_edge, %entry.do.body69_crit_edge201
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_ep0_standard_req.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_ep0_standard_req, %do.end87)) #9
          to label %if.then83 [label %do.end87], !srcloc !437

if.then83:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #11
  %106 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_ep0_standard_req.__UNIQUE_ID_ddebug322, ptr noundef %107, ptr noundef nonnull @.str.90) #9
  br label %do.end87

do.end87:                                         ; preds = %if.then83, %do.body69
  %108 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %bRequest, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %109)
  %cmp.i = icmp eq i8 %109, 3
  %wValue.i170 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %110 = ptrtoint ptr %wValue.i170 to i32
  call void @__asan_loadN_noabort(i32 %110, i32 2)
  %111 = load i16, ptr %wValue.i170, align 1
  %112 = tail call i16 @llvm.bswap.i16(i16 %111) #9
  %wIndex.i171 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 3
  %113 = ptrtoint ptr %wIndex.i171 to i32
  call void @__asan_loadN_noabort(i32 %113, i32 2)
  %114 = load i16, ptr %wIndex.i171, align 1
  %115 = tail call i16 @llvm.bswap.i16(i16 %114) #9
  %conv3.i = zext i16 %115 to i32
  %wLength.i172 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 4
  %116 = ptrtoint ptr %wLength.i172 to i32
  call void @__asan_loadN_noabort(i32 %116, i32 2)
  %117 = load i16, ptr %wLength.i172, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %cmp5.not.i173 = icmp eq i16 %117, 0
  br i1 %cmp5.not.i173, label %if.end.i175, label %do.end87.sw.epilog_crit_edge

do.end87.sw.epilog_crit_edge:                     ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i175:                                      ; preds = %do.end87
  %118 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %ctrl, align 1
  %120 = and i8 %119, 31
  %and.i174 = zext i8 %120 to i32
  %121 = zext i32 %and.i174 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.201)
  switch i32 %and.i174, label %if.end.i175.sw.epilog_crit_edge [
    i32 0, label %sw.bb.i176
    i32 1, label %sw.bb67.i
    i32 2, label %sw.bb87.i
  ]

if.end.i175.sw.epilog_crit_edge:                  ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.i176:                                       ; preds = %if.end.i175
  %122 = zext i16 %112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.202)
  switch i16 %112, label %sw.bb.i176.sw.epilog_crit_edge [
    i16 1, label %sw.bb8.i
    i16 48, label %sw.bb.i176.sw.bb18.i_crit_edge
    i16 49, label %sw.bb.i176.sw.bb18.i_crit_edge202
    i16 2, label %sw.bb56.i
  ]

sw.bb.i176.sw.bb18.i_crit_edge202:                ; preds = %sw.bb.i176
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb18.i

sw.bb.i176.sw.bb18.i_crit_edge:                   ; preds = %sw.bb.i176
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb18.i

sw.bb.i176.sw.epilog_crit_edge:                   ; preds = %sw.bb.i176
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb8.i:                                         ; preds = %sw.bb.i176
  %speed.i177 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 4, i32 5
  %123 = ptrtoint ptr %speed.i177 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %speed.i177, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %124)
  %cmp9.i = icmp eq i32 %124, 5
  br i1 %cmp9.i, label %sw.bb8.i.sw.epilog_crit_edge, label %lor.lhs.false.i179

sw.bb8.i.sw.epilog_crit_edge:                     ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

lor.lhs.false.i179:                               ; preds = %sw.bb8.i
  %device_state.i178 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 32
  %125 = ptrtoint ptr %device_state.i178 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %device_state.i178, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %126)
  %cmp11.i = icmp eq i32 %126, 5
  br i1 %cmp11.i, label %lor.lhs.false.i179.sw.epilog_crit_edge, label %if.end14.i

lor.lhs.false.i179.sw.epilog_crit_edge:           ; preds = %lor.lhs.false.i179
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end14.i:                                       ; preds = %lor.lhs.false.i179
  call void @__sanitizer_cov_trace_pc() #11
  %base.i.i180 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 35
  %127 = ptrtoint ptr %base.i.i180 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %base.i.i180, align 4
  %add.ptr.i.i181 = getelementptr i8, ptr %128, i32 76
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i181) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %130 = and i32 %129, -134217729
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #9
  %masksel.i = select i1 %cmp.i, i32 8, i32 0
  %val.0.i = or i32 %131, %masksel.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %132 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #9
  %133 = ptrtoint ptr %base.i.i180 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %base.i.i180, align 4
  %add.ptr.i167.i = getelementptr i8, ptr %134, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i167.i, i32 %132) #9, !srcloc !436
  br label %sw.epilog111.i

sw.bb18.i:                                        ; preds = %sw.bb.i176.sw.bb18.i_crit_edge, %sw.bb.i176.sw.bb18.i_crit_edge202
  %device_state19.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 32
  %135 = ptrtoint ptr %device_state19.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %device_state19.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %136)
  %cmp20.not.i = icmp eq i32 %136, 7
  br i1 %cmp20.not.i, label %lor.lhs.false22.i, label %sw.bb18.i.sw.epilog_crit_edge

sw.bb18.i.sw.epilog_crit_edge:                    ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

lor.lhs.false22.i:                                ; preds = %sw.bb18.i
  %speed24.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 4, i32 5
  %137 = ptrtoint ptr %speed24.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %speed24.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %138)
  %cmp25.not.i = icmp eq i32 %138, 5
  br i1 %cmp25.not.i, label %if.end28.i, label %lor.lhs.false22.i.sw.epilog_crit_edge

lor.lhs.false22.i.sw.epilog_crit_edge:            ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end28.i:                                       ; preds = %lor.lhs.false22.i
  %base.i168.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 35
  %139 = ptrtoint ptr %base.i168.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %base.i168.i, align 4
  %add.ptr.i169.i = getelementptr i8, ptr %140, i32 76
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i169.i) #9, !srcloc !433
  %142 = tail call i32 @llvm.bswap.i32(i32 %141) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %143 = zext i16 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %143, ptr @__sancov_gen_cov_switch_values.203)
  switch i16 %111, label %if.end28.i.if.end55.i_crit_edge [
    i16 12288, label %land.lhs.true.i
    i16 12544, label %land.lhs.true44.i
  ]

if.end28.i.if.end55.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55.i

land.lhs.true.i:                                  ; preds = %if.end28.i
  %soc.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 1
  %144 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %soc.i, align 4
  %u1_enable.i = getelementptr inbounds %struct.tegra_xudc_soc, ptr %145, i32 0, i32 5
  %146 = ptrtoint ptr %u1_enable.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %u1_enable.i, align 4, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool32.not.i = icmp eq i8 %147, 0
  br i1 %tobool32.not.i, label %land.lhs.true.i.if.end55.i_crit_edge, label %if.then34.i

land.lhs.true.i.if.end55.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55.i

if.then34.i:                                      ; preds = %land.lhs.true.i
  br i1 %cmp.i, label %if.then36.i, label %if.else38.i

if.then36.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #11
  %or37.i = or i32 %142, 268435456
  br label %if.end55.i

if.else38.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #11
  %and39.i = and i32 %142, -268435457
  br label %if.end55.i

land.lhs.true44.i:                                ; preds = %if.end28.i
  %soc45.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 1
  %148 = ptrtoint ptr %soc45.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %soc45.i, align 4
  %u2_enable.i = getelementptr inbounds %struct.tegra_xudc_soc, ptr %149, i32 0, i32 6
  %150 = ptrtoint ptr %u2_enable.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %u2_enable.i, align 1, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool46.not.i = icmp eq i8 %151, 0
  br i1 %tobool46.not.i, label %land.lhs.true44.i.if.end55.i_crit_edge, label %if.then48.i

land.lhs.true44.i.if.end55.i_crit_edge:           ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55.i

if.then48.i:                                      ; preds = %land.lhs.true44.i
  br i1 %cmp.i, label %if.then50.i, label %if.else52.i

if.then50.i:                                      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #11
  %or51.i = or i32 %142, 536870912
  br label %if.end55.i

if.else52.i:                                      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #11
  %and53.i = and i32 %142, -536870913
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.else52.i, %if.then50.i, %land.lhs.true44.i.if.end55.i_crit_edge, %if.else38.i, %if.then36.i, %land.lhs.true.i.if.end55.i_crit_edge, %if.end28.i.if.end55.i_crit_edge
  %val.2.i = phi i32 [ %or51.i, %if.then50.i ], [ %and53.i, %if.else52.i ], [ %142, %land.lhs.true44.i.if.end55.i_crit_edge ], [ %142, %land.lhs.true.i.if.end55.i_crit_edge ], [ %and39.i, %if.else38.i ], [ %or37.i, %if.then36.i ], [ %142, %if.end28.i.if.end55.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %152 = tail call i32 @llvm.bswap.i32(i32 %val.2.i) #9
  %153 = ptrtoint ptr %base.i168.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %base.i168.i, align 4
  %add.ptr.i171.i = getelementptr i8, ptr %154, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171.i, i32 %152) #9, !srcloc !436
  br label %sw.epilog111.i

sw.bb56.i:                                        ; preds = %sw.bb.i176
  %speed58.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 4, i32 5
  %155 = ptrtoint ptr %speed58.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %speed58.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %156)
  %cmp59.not.i = icmp ne i32 %156, 3
  %cmp.not.i182 = xor i1 %cmp.i, true
  %brmerge.i = select i1 %cmp59.not.i, i1 true, i1 %cmp.not.i182
  br i1 %brmerge.i, label %sw.bb56.i.sw.epilog_crit_edge, label %if.end65.i

sw.bb56.i.sw.epilog_crit_edge:                    ; preds = %sw.bb56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end65.i:                                       ; preds = %sw.bb56.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i = lshr i16 %115, 8
  %conv66.i = trunc i16 %shr.i to i8
  %test_mode_pattern.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 26
  %157 = ptrtoint ptr %test_mode_pattern.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %conv66.i, ptr %test_mode_pattern.i, align 4
  br label %sw.epilog111.i

sw.bb67.i:                                        ; preds = %if.end.i175
  %device_state68.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 32
  %158 = ptrtoint ptr %device_state68.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %device_state68.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %159)
  %cmp69.not.i = icmp eq i32 %159, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %cond118.i = icmp eq i16 %111, 0
  %or.cond.i183 = select i1 %cmp69.not.i, i1 %cond118.i, i1 false
  br i1 %or.cond.i183, label %sw.bb73.i, label %sw.bb67.i.sw.epilog_crit_edge

sw.bb67.i.sw.epilog_crit_edge:                    ; preds = %sw.bb67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb73.i:                                        ; preds = %sw.bb67.i
  br i1 %cmp.i, label %if.then75.i, label %sw.bb73.i.if.end84.i_crit_edge

sw.bb73.i.if.end84.i_crit_edge:                   ; preds = %sw.bb73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84.i

if.then75.i:                                      ; preds = %sw.bb73.i
  call void @__sanitizer_cov_trace_pc() #11
  %base.i172.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 35
  %160 = ptrtoint ptr %base.i172.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %base.i172.i, align 4
  %add.ptr.i173.i = getelementptr i8, ptr %161, i32 76
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i173.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %163 = and i32 %162, -65
  %164 = tail call i32 @llvm.bswap.i32(i32 %163) #9
  %and77.i = shl i32 %conv3.i, 21
  %165 = and i32 %and77.i, 1073741824
  %val.3.i = or i32 %164, %165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %166 = tail call i32 @llvm.bswap.i32(i32 %val.3.i) #9
  %167 = ptrtoint ptr %base.i172.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %base.i172.i, align 4
  %add.ptr.i175.i = getelementptr i8, ptr %168, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i175.i, i32 %166) #9, !srcloc !436
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.then75.i, %sw.bb73.i.if.end84.i_crit_edge
  %lock.i.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #9
  %driver.i.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 5
  %169 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %driver.i.i, align 8
  %setup.i.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %170, i32 0, i32 4
  %171 = ptrtoint ptr %setup.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %setup.i.i, align 4
  %gadget.i.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 4
  %call.i.i184 = tail call i32 %172(ptr noundef %gadget.i.i, ptr noundef %ctrl) #9
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #9
  br label %sw.epilog

sw.bb87.i:                                        ; preds = %if.end.i175
  %and88.i = shl nuw nsw i32 %conv3.i, 1
  %mul.i185 = and i32 %and88.i, 30
  %and89.i = lshr i32 %conv3.i, 7
  %and89.lobit.i = and i32 %and89.i, 1
  %add.i186 = or i32 %mul.i185, %and89.lobit.i
  %device_state91.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 32
  %173 = ptrtoint ptr %device_state91.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %device_state91.i, align 8
  %175 = zext i32 %174 to i64
  call void @__sanitizer_cov_trace_switch(i64 %175, ptr @__sancov_gen_cov_switch_values.204)
  switch i32 %174, label %sw.bb87.i.if.end102.i_crit_edge [
    i32 5, label %sw.bb87.i.sw.epilog_crit_edge
    i32 6, label %land.lhs.true98.i
  ]

sw.bb87.i.sw.epilog_crit_edge:                    ; preds = %sw.bb87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb87.i.if.end102.i_crit_edge:                  ; preds = %sw.bb87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102.i

land.lhs.true98.i:                                ; preds = %sw.bb87.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %cmp99.not.i = icmp eq i16 %114, 0
  br i1 %cmp99.not.i, label %land.lhs.true98.i.if.end102.i_crit_edge, label %land.lhs.true98.i.sw.epilog_crit_edge

land.lhs.true98.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true98.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true98.i.if.end102.i_crit_edge:          ; preds = %land.lhs.true98.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102.i

if.end102.i:                                      ; preds = %land.lhs.true98.i.if.end102.i_crit_edge, %sw.bb87.i.if.end102.i_crit_edge
  %arrayidx.i187 = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 %add.i186
  %call105.i = tail call fastcc i32 @__tegra_xudc_ep_set_halt(ptr noundef %arrayidx.i187, i1 noundef zeroext %cmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.i)
  %cmp106.i = icmp slt i32 %call105.i, 0
  br i1 %cmp106.i, label %if.end102.i.sw.epilog_crit_edge, label %if.end102.i.sw.epilog111.i_crit_edge

if.end102.i.sw.epilog111.i_crit_edge:             ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog111.i

if.end102.i.sw.epilog_crit_edge:                  ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog111.i:                                   ; preds = %if.end102.i.sw.epilog111.i_crit_edge, %if.end65.i, %if.end55.i, %if.end14.i
  %ep0_req.i.i188 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 28
  %176 = ptrtoint ptr %ep0_req.i.i188 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ep0_req.i.i188, align 8
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr null, ptr %177, align 4
  %179 = load ptr, ptr %ep0_req.i.i188, align 8
  %dma.i.i189 = getelementptr inbounds %struct.usb_request, ptr %179, i32 0, i32 2
  %180 = ptrtoint ptr %dma.i.i189 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 0, ptr %dma.i.i189, align 4
  %181 = load ptr, ptr %ep0_req.i.i188, align 8
  %length.i.i190 = getelementptr inbounds %struct.usb_request, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %length.i.i190 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 0, ptr %length.i.i190, align 4
  %183 = load ptr, ptr %ep0_req.i.i188, align 8
  %complete.i.i191 = getelementptr inbounds %struct.usb_request, ptr %183, i32 0, i32 7
  %184 = ptrtoint ptr %complete.i.i191 to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr @set_feature_complete, ptr %complete.i.i191, align 4
  %185 = load ptr, ptr %ep0_req.i.i188, align 8
  %context.i.i192 = getelementptr inbounds %struct.usb_request, ptr %185, i32 0, i32 8
  %186 = ptrtoint ptr %context.i.i192 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %xudc, ptr %context.i.i192, align 4
  %ep.i.i193 = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 11
  %187 = load ptr, ptr %ep0_req.i.i188, align 8
  %call.i176.i = tail call fastcc i32 @__tegra_xudc_ep_queue(ptr noundef %ep.i.i193, ptr noundef %187) #9
  br label %sw.epilog

do.body90:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_ep0_standard_req.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_ep0_standard_req, %sw.default)) #9
          to label %if.then104 [label %sw.default], !srcloc !437

if.then104:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #11
  %188 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_ep0_standard_req.__UNIQUE_ID_ddebug323, ptr noundef %189, ptr noundef nonnull @.str.91) #9
  br label %sw.default

sw.default:                                       ; preds = %if.then104, %do.body90, %entry.sw.default_crit_edge
  %lock.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  %driver.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 5
  %190 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %driver.i, align 8
  %setup.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %191, i32 0, i32 4
  %192 = ptrtoint ptr %setup.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %setup.i, align 4
  %gadget.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 4
  %call.i = tail call i32 %193(ptr noundef %gadget.i, ptr noundef %ctrl) #9
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.epilog111.i, %if.end102.i.sw.epilog_crit_edge, %land.lhs.true98.i.sw.epilog_crit_edge, %sw.bb87.i.sw.epilog_crit_edge, %if.end84.i, %sw.bb67.i.sw.epilog_crit_edge, %sw.bb56.i.sw.epilog_crit_edge, %lor.lhs.false22.i.sw.epilog_crit_edge, %sw.bb18.i.sw.epilog_crit_edge, %lor.lhs.false.i179.sw.epilog_crit_edge, %sw.bb8.i.sw.epilog_crit_edge, %sw.bb.i176.sw.epilog_crit_edge, %if.end.i175.sw.epilog_crit_edge, %do.end87.sw.epilog_crit_edge, %if.end13.i, %lor.lhs.false8.i.sw.epilog_crit_edge, %lor.lhs.false.i160.sw.epilog_crit_edge, %do.end66.sw.epilog_crit_edge, %if.end17.i, %lor.lhs.false12.i.sw.epilog_crit_edge, %lor.lhs.false.i148.sw.epilog_crit_edge, %if.end5.i.sw.epilog_crit_edge, %if.end.i145.sw.epilog_crit_edge, %do.end45.sw.epilog_crit_edge, %do.end24, %sw.epilog.i, %if.end78.i.sw.epilog_crit_edge, %lor.lhs.false74.i.sw.epilog_crit_edge, %sw.bb64.i.sw.epilog_crit_edge, %if.end8.i.sw.epilog_crit_edge, %lor.lhs.false.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call.i, %sw.default ], [ %call25, %do.end24 ], [ %call.i.i, %sw.epilog.i ], [ -22, %do.end.sw.epilog_crit_edge ], [ -22, %lor.lhs.false.i.sw.epilog_crit_edge ], [ -22, %if.end.i.sw.epilog_crit_edge ], [ -22, %sw.bb64.i.sw.epilog_crit_edge ], [ -22, %lor.lhs.false74.i.sw.epilog_crit_edge ], [ -22, %if.end78.i.sw.epilog_crit_edge ], [ -22, %if.end8.i.sw.epilog_crit_edge ], [ %call.i.i155, %if.end17.i ], [ -22, %do.end45.sw.epilog_crit_edge ], [ -22, %if.end.i145.sw.epilog_crit_edge ], [ -22, %lor.lhs.false12.i.sw.epilog_crit_edge ], [ -22, %lor.lhs.false.i148.sw.epilog_crit_edge ], [ -22, %if.end5.i.sw.epilog_crit_edge ], [ %call.i.i168, %if.end13.i ], [ -22, %do.end66.sw.epilog_crit_edge ], [ -22, %lor.lhs.false8.i.sw.epilog_crit_edge ], [ -22, %lor.lhs.false.i160.sw.epilog_crit_edge ], [ %call.i176.i, %sw.epilog111.i ], [ %call.i.i184, %if.end84.i ], [ -22, %do.end87.sw.epilog_crit_edge ], [ -22, %lor.lhs.false.i179.sw.epilog_crit_edge ], [ -22, %sw.bb8.i.sw.epilog_crit_edge ], [ -22, %lor.lhs.false22.i.sw.epilog_crit_edge ], [ -22, %sw.bb18.i.sw.epilog_crit_edge ], [ -22, %sw.bb56.i.sw.epilog_crit_edge ], [ -22, %sw.bb.i176.sw.epilog_crit_edge ], [ -22, %sw.bb67.i.sw.epilog_crit_edge ], [ -22, %sw.bb87.i.sw.epilog_crit_edge ], [ -22, %land.lhs.true98.i.sw.epilog_crit_edge ], [ %call105.i, %if.end102.i.sw.epilog_crit_edge ], [ -22, %if.end.i175.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_xudc_ep0_set_address(ptr noundef %xudc, ptr nocapture noundef readonly %ctrl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %wValue, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  %3 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ctrl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.not = icmp ne i8 %4, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %2)
  %cmp3 = icmp ugt i16 %2, 127
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp3
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 3
  %5 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %wIndex, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp6.not = icmp eq i16 %6, 0
  br i1 %cmp6.not, label %lor.lhs.false8, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 4
  %7 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %wLength, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp10.not = icmp eq i16 %8, 0
  br i1 %cmp10.not, label %if.end13, label %lor.lhs.false8.cleanup_crit_edge

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false8
  %device_state = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 32
  %9 = ptrtoint ptr %device_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %device_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %10)
  %cmp14 = icmp eq i32 %10, 7
  br i1 %cmp14, label %if.end13.cleanup_crit_edge, label %do.body

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_ep0_set_address.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_ep0_set_address, %do.end)) #9
          to label %if.then21 [label %do.end], !srcloc !437

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_ep0_set_address.__UNIQUE_ID_ddebug317, ptr noundef %12, ptr noundef nonnull @.str.93, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then21, %do.body
  %dev_addr = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 23
  %13 = ptrtoint ptr %dev_addr to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %2, ptr %dev_addr, align 2
  %base.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 35
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 48
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %17 = and i32 %16, -128
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %shl = shl i32 %conv, 24
  %and25 = and i32 %shl, 2130706432
  %or = or i32 %18, %and25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %21, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %19) #9, !srcloc !436
  %context = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 11, i32 0, i32 4
  %22 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %context, align 4
  %arrayidx.i = getelementptr %struct.tegra_xudc_ep_context, ptr %23, i32 0, i32 5, i32 6
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %26 = and i32 %25, -2130706433
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #9
  %and1.i = and i32 %conv, 127
  %or.i = or i32 %27, %and1.i
  %28 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx.i, align 4
  %ep0_req.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 28
  %30 = ptrtoint ptr %ep0_req.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ep0_req.i, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %31, align 4
  %33 = load ptr, ptr %ep0_req.i, align 8
  %dma.i = getelementptr inbounds %struct.usb_request, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %dma.i, align 4
  %35 = load ptr, ptr %ep0_req.i, align 8
  %length.i = getelementptr inbounds %struct.usb_request, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %length.i, align 4
  %37 = load ptr, ptr %ep0_req.i, align 8
  %complete.i = getelementptr inbounds %struct.usb_request, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @set_address_complete, ptr %complete.i, align 4
  %39 = load ptr, ptr %ep0_req.i, align 8
  %context.i = getelementptr inbounds %struct.usb_request, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %xudc, ptr %context.i, align 4
  %ep.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 11
  %41 = load ptr, ptr %ep0_req.i, align 8
  %call.i = tail call fastcc i32 @__tegra_xudc_ep_queue(ptr noundef %ep.i, ptr noundef %41) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end13.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false8.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_address_complete(ptr nocapture noundef readnone %ep, ptr nocapture noundef readonly %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %device_state = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %device_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_state, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.205)
  switch i32 %3, label %entry.if.end17_crit_edge [
    i32 5, label %land.lhs.true
    i32 6, label %land.lhs.true8
  ]

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true:                                    ; preds = %entry
  %dev_addr = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 23
  %5 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %dev_addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp1.not = icmp eq i16 %6, 0
  br i1 %cmp1.not, label %land.lhs.true.if.end17_crit_edge, label %land.lhs.true.if.end17.sink.split_crit_edge

land.lhs.true.if.end17.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.sink.split

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true8:                                   ; preds = %entry
  %dev_addr9 = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 23
  %7 = ptrtoint ptr %dev_addr9 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %dev_addr9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp11 = icmp eq i16 %8, 0
  br i1 %cmp11, label %land.lhs.true8.if.end17.sink.split_crit_edge, label %land.lhs.true8.if.end17_crit_edge

land.lhs.true8.if.end17_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true8.if.end17.sink.split_crit_edge:     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.sink.split

if.end17.sink.split:                              ; preds = %land.lhs.true8.if.end17.sink.split_crit_edge, %land.lhs.true.if.end17.sink.split_crit_edge
  %.sink28 = phi i32 [ 6, %land.lhs.true.if.end17.sink.split_crit_edge ], [ 5, %land.lhs.true8.if.end17.sink.split_crit_edge ]
  %9 = ptrtoint ptr %device_state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink28, ptr %device_state, align 8
  %gadget15 = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 4
  tail call void @usb_gadget_set_state(ptr noundef %gadget15, i32 noundef %.sink28) #9
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %land.lhs.true8.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %entry.if.end17_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @set_sel_complete(ptr nocapture noundef %ep, ptr nocapture noundef %req) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @set_isoch_delay_complete(ptr nocapture noundef %ep, ptr nocapture noundef %req) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__tegra_xudc_ep_set_halt(ptr noundef %ep, i1 noundef zeroext %halt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %desc = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 13
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bmAttributes.i, align 1
  %6 = and i8 %5, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.i.not = icmp eq i8 %6, 1
  br i1 %cmp.i.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.94) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %base.i = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 35
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 80
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !433
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %index = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 2
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 4
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %17 = icmp eq i32 %16, 0
  %cmp = xor i1 %17, %halt
  br i1 %cmp, label %do.body12, label %if.end31

do.body12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__tegra_xudc_ep_set_halt.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__tegra_xudc_ep_set_halt, %cleanup)) #9
          to label %if.then23 [label %cleanup], !srcloc !437

if.then23:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %20 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index, align 4
  %cond = select i1 %halt, ptr @.str.97, ptr @.str.98
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__tegra_xudc_ep_set_halt.__UNIQUE_ID_ddebug309, ptr noundef %19, ptr noundef nonnull @.str.96, i32 noundef %21, ptr noundef nonnull %cond) #9
  br label %cleanup

if.end31:                                         ; preds = %if.end5
  br i1 %halt, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ep_halt(ptr noundef %1, i32 noundef %14)
  br label %cleanup

if.else:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %context = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 4
  %22 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %context, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %26 = and i32 %25, -117440513
  store i32 %26, ptr %23, align 4
  %27 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index, align 4
  tail call fastcc void @ep_reload(ptr noundef %1, i32 noundef %28)
  %29 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %context, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %33 = and i32 %32, -117440513
  %34 = or i32 %33, 16777216
  store i32 %34, ptr %30, align 4
  %35 = load ptr, ptr %context, align 4
  %rsvd.i = getelementptr inbounds %struct.tegra_xudc_ep_context, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %rsvd.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rsvd.i, align 4
  %38 = and i32 %37, -256
  store i32 %38, ptr %rsvd.i, align 4
  %39 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %index, align 4
  tail call fastcc void @ep_reload(ptr noundef %1, i32 noundef %40)
  %41 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %index, align 4
  tail call fastcc void @ep_unpause(ptr noundef %1, i32 noundef %42)
  %43 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %index, align 4
  tail call fastcc void @ep_unhalt(ptr noundef %1, i32 noundef %44)
  tail call fastcc void @tegra_xudc_ep_ring_doorbell(ptr noundef %ep)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then33, %if.then23, %do.body12, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then23 ], [ 0, %if.else ], [ 0, %if.then33 ], [ 0, %do.body12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_feature_complete(ptr nocapture noundef readnone %ep, ptr nocapture noundef readonly %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %test_mode_pattern = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %test_mode_pattern to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %test_mode_pattern, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %4 = shl nuw i32 %conv, 24
  %base.i = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 35
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #9, !srcloc !436
  %7 = ptrtoint ptr %test_mode_pattern to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %test_mode_pattern, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xudc_vbus_notify(ptr noundef %nb, i32 noundef %action, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -4536
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_vbus_notify.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_vbus_notify, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !437

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %last_event = getelementptr inbounds %struct.usb_phy, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %last_event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_event, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_vbus_notify.__UNIQUE_ID_ddebug298, ptr noundef %1, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.106, i32 noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %device_mode = getelementptr i8, ptr %nb, i32 -84
  %4 = ptrtoint ptr %device_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %device_mode, align 4, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  %last_event10 = getelementptr inbounds %struct.usb_phy, ptr %data, i32 0, i32 4
  %6 = ptrtoint ptr %last_event10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_event10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp11.not = icmp eq i32 %7, 1
  br i1 %tobool5.not, label %land.lhs.true9, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end
  br i1 %cmp11.not, label %land.lhs.true.do.body13_crit_edge, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

land.lhs.true.do.body13_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body13

land.lhs.true9:                                   ; preds = %do.end
  br i1 %cmp11.not, label %land.lhs.true9.if.end34_crit_edge, label %land.lhs.true9.do.body13_crit_edge

land.lhs.true9.do.body13_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body13

land.lhs.true9.if.end34_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

do.body13:                                        ; preds = %land.lhs.true9.do.body13_crit_edge, %land.lhs.true.do.body13_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_vbus_notify.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_vbus_notify, %cleanup)) #9
          to label %if.then27 [label %cleanup], !srcloc !437

if.then27:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 8
  %10 = ptrtoint ptr %device_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %device_mode, align 4, !range !429
  %12 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_vbus_notify.__UNIQUE_ID_ddebug299, ptr noundef %9, ptr noundef nonnull @.str.108, i32 noundef %12) #9
  br label %cleanup

if.end34:                                         ; preds = %land.lhs.true9.if.end34_crit_edge, %land.lhs.true.if.end34_crit_edge
  %last_event35 = getelementptr inbounds %struct.usb_phy, ptr %data, i32 0, i32 4
  %13 = ptrtoint ptr %last_event35 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last_event35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp36 = icmp eq i32 %14, 1
  %frombool40 = zext i1 %cmp36 to i8
  %15 = ptrtoint ptr %device_mode to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool40, ptr %device_mode, align 4
  %soc.i = getelementptr i8, ptr %nb, i32 -4532
  %16 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %soc.i, align 4
  %num_phys.i = getelementptr inbounds %struct.tegra_xudc_soc, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_phys.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp13.not.i = icmp eq i32 %19, 0
  br i1 %cmp13.not.i, label %if.end34.do.end.i_crit_edge, label %for.body.lr.ph.i

if.end34.do.end.i_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.body.lr.ph.i:                                 ; preds = %if.end34
  %usbphy1.i = getelementptr i8, ptr %nb, i32 -8
  %20 = ptrtoint ptr %usbphy1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usbphy1.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %21, i32 %i.014.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp ne ptr %23, null
  %cmp4.i = icmp eq ptr %23, %data
  %or.cond.i = and i1 %tobool.not.i, %cmp4.i
  br i1 %or.cond.i, label %for.body.i.tegra_xudc_get_phy_index.exit_crit_edge, label %for.inc.i

for.body.i.tegra_xudc_get_phy_index.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_xudc_get_phy_index.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %19
  br i1 %exitcond.not.i, label %for.inc.i.do.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %if.end34.do.end.i_crit_edge
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.110) #12
  br label %tegra_xudc_get_phy_index.exit

tegra_xudc_get_phy_index.exit:                    ; preds = %do.end.i, %for.body.i.tegra_xudc_get_phy_index.exit_crit_edge
  %retval.0.i99 = phi i32 [ -1, %do.end.i ], [ %i.014.i, %for.body.i.tegra_xudc_get_phy_index.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_vbus_notify.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_vbus_notify, %do.end60)) #9
          to label %if.then56 [label %do.end60], !srcloc !437

if.then56:                                        ; preds = %tegra_xudc_get_phy_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_vbus_notify.__UNIQUE_ID_ddebug300, ptr noundef %27, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef %retval.0.i99) #9
  br label %do.end60

do.end60:                                         ; preds = %if.then56, %tegra_xudc_get_phy_index.exit
  %suspended = getelementptr i8, ptr %nb, i32 -12
  %28 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %suspended, align 4, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool61.not = icmp ne i8 %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i99)
  %cmp63.not = icmp eq i32 %retval.0.i99, -1
  %or.cond = select i1 %tobool61.not, i1 true, i1 %cmp63.not
  br i1 %or.cond, label %do.end60.cleanup_crit_edge, label %if.then65

do.end60.cleanup_crit_edge:                       ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then65:                                        ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #11
  %utmi_phy = getelementptr i8, ptr %nb, i32 -28
  %30 = ptrtoint ptr %utmi_phy to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %utmi_phy, align 4
  %arrayidx = getelementptr ptr, ptr %31, i32 %retval.0.i99
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %curr_utmi_phy = getelementptr i8, ptr %nb, i32 -24
  %34 = ptrtoint ptr %curr_utmi_phy to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %curr_utmi_phy, align 8
  %usb3_phy = getelementptr i8, ptr %nb, i32 -36
  %35 = ptrtoint ptr %usb3_phy to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %usb3_phy, align 4
  %arrayidx66 = getelementptr ptr, ptr %36, i32 %retval.0.i99
  %37 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx66, align 4
  %curr_usb3_phy = getelementptr i8, ptr %nb, i32 -32
  %39 = ptrtoint ptr %curr_usb3_phy to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %curr_usb3_phy, align 8
  %curr_usbphy = getelementptr i8, ptr %nb, i32 -4
  %40 = ptrtoint ptr %curr_usbphy to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %data, ptr %curr_usbphy, align 4
  %usb_role_sw_work = getelementptr i8, ptr %nb, i32 -80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %41 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %41, ptr noundef %usb_role_sw_work) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %do.end60.cleanup_crit_edge, %if.then27, %do.body13
  ret i32 1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_optional_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy_by_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_xusb_padctl_get_usb3_companion(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_domain_attach_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra_xudc_ep_alloc_request(ptr nocapture noundef readnone %usb_ep, i32 noundef %gfp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !440

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 88) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %list = getelementptr inbounds %struct.tegra_xudc_request, ptr %call7.i.i, i32 0, i32 7
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.tegra_xudc_request, ptr %call7.i.i, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kzalloc.exit.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xudc_ep_enable(ptr noundef %usb_ep, ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %usb_ep, null
  %tobool1.not = icmp eq ptr %desc, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %bDescriptorType = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bDescriptorType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp.not = icmp eq i8 %1, 5
  br i1 %cmp.not, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %add.ptr.i = getelementptr i8, ptr %usb_ep, i32 -4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %lock = getelementptr inbounds %struct.tegra_xudc, ptr %3, i32 0, i32 3
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %powergated = getelementptr inbounds %struct.tegra_xudc, ptr %3, i32 0, i32 49
  %4 = ptrtoint ptr %powergated to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %powergated, align 1, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool12.not = icmp eq i8 %5, 0
  br i1 %tobool12.not, label %if.end14, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call fastcc i32 @__tegra_xudc_ep_enable(ptr noundef %add.ptr.i, ptr noundef nonnull %desc)
  br label %unlock

unlock:                                           ; preds = %if.end14, %if.end.unlock_crit_edge
  %ret.0 = phi i32 [ %call15, %if.end14 ], [ -108, %if.end.unlock_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #9
  br label %cleanup

cleanup:                                          ; preds = %unlock, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xudc_ep_disable(ptr noundef %usb_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %usb_ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %usb_ep, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %lock = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %powergated = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 49
  %2 = ptrtoint ptr %powergated to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %powergated, align 1, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool7.not = icmp eq i8 %3, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call fastcc i32 @__tegra_xudc_ep_disable(ptr noundef %add.ptr.i)
  br label %unlock

unlock:                                           ; preds = %if.end9, %if.end.unlock_crit_edge
  %ret.0 = phi i32 [ %call10, %if.end9 ], [ -108, %if.end.unlock_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_xudc_ep_free_request(ptr nocapture noundef readnone %usb_ep, ptr noundef %usb_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %usb_req) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xudc_ep_queue(ptr noundef %usb_ep, ptr noundef %usb_req, i32 noundef %gfp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %usb_ep, null
  %tobool1.not = icmp eq ptr %usb_req, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %usb_ep, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %lock = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 3
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %powergated = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 49
  %2 = ptrtoint ptr %powergated to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %powergated, align 1, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool9.not = icmp eq i8 %3, 0
  br i1 %tobool9.not, label %lor.lhs.false11, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

lor.lhs.false11:                                  ; preds = %if.end
  %desc = getelementptr i8, ptr %usb_ep, i32 88
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %tobool12.not = icmp eq ptr %5, null
  br i1 %tobool12.not, label %lor.lhs.false11.unlock_crit_edge, label %if.end14

lor.lhs.false11.unlock_crit_edge:                 ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end14:                                         ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call fastcc i32 @__tegra_xudc_ep_queue(ptr noundef %add.ptr.i, ptr noundef nonnull %usb_req)
  br label %unlock

unlock:                                           ; preds = %if.end14, %lor.lhs.false11.unlock_crit_edge, %if.end.unlock_crit_edge
  %ret.0 = phi i32 [ %call15, %if.end14 ], [ -108, %lor.lhs.false11.unlock_crit_edge ], [ -108, %if.end.unlock_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #9
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xudc_ep_dequeue(ptr noundef %usb_ep, ptr noundef %usb_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %usb_ep, null
  %tobool1.not = icmp eq ptr %usb_req, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %usb_ep, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %lock = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 3
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %powergated = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 49
  %2 = ptrtoint ptr %powergated to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %powergated, align 1, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool9.not = icmp eq i8 %3, 0
  br i1 %tobool9.not, label %lor.lhs.false11, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

lor.lhs.false11:                                  ; preds = %if.end
  %desc = getelementptr i8, ptr %usb_ep, i32 88
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %tobool12.not = icmp eq ptr %5, null
  br i1 %tobool12.not, label %lor.lhs.false11.unlock_crit_edge, label %if.end14

lor.lhs.false11.unlock_crit_edge:                 ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end14:                                         ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call fastcc i32 @__tegra_xudc_ep_dequeue(ptr noundef %add.ptr.i, ptr noundef nonnull %usb_req)
  br label %unlock

unlock:                                           ; preds = %if.end14, %lor.lhs.false11.unlock_crit_edge, %if.end.unlock_crit_edge
  %ret.0 = phi i32 [ %call15, %if.end14 ], [ -108, %lor.lhs.false11.unlock_crit_edge ], [ -108, %if.end.unlock_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #9
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xudc_ep_set_halt(ptr noundef %usb_ep, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %usb_ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %usb_ep, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %lock = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %powergated = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 49
  %2 = ptrtoint ptr %powergated to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %powergated, align 1, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool7.not = icmp eq i8 %3, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool10 = icmp ne i32 %value, 0
  br i1 %tobool10, label %land.lhs.true, label %if.end9.if.end20_crit_edge

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end9
  %desc = getelementptr i8, ptr %usb_ep, i32 88
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %tobool12.not = icmp sgt i8 %7, -1
  br i1 %tobool12.not, label %land.lhs.true.if.end20_crit_edge, label %land.lhs.true13

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

land.lhs.true13:                                  ; preds = %land.lhs.true
  %queue = getelementptr i8, ptr %usb_ep, i32 80
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %9, %queue
  br i1 %cmp.i.not, label %land.lhs.true13.if.end20_crit_edge, label %do.end19

land.lhs.true13.if.end20_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

do.end19:                                         ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.148) #12
  br label %unlock

if.end20:                                         ; preds = %land.lhs.true13.if.end20_crit_edge, %land.lhs.true.if.end20_crit_edge, %if.end9.if.end20_crit_edge
  %call22 = tail call fastcc i32 @__tegra_xudc_ep_set_halt(ptr noundef %add.ptr.i, i1 noundef zeroext %tobool10)
  br label %unlock

unlock:                                           ; preds = %if.end20, %do.end19, %if.end.unlock_crit_edge
  %ret.0 = phi i32 [ %call22, %if.end20 ], [ -11, %do.end19 ], [ -108, %if.end.unlock_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__tegra_xudc_ep_enable(ptr noundef %ep, ptr noundef %desc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %gadget = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 4
  %speed = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 4, i32 5
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp = icmp eq i32 %3, 5
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %4 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bmAttributes.i, align 1
  %6 = and i8 %5, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.i.not = icmp eq i8 %6, 0
  br i1 %cmp.i.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true2

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %comp_desc = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 1, i32 10
  %7 = ptrtoint ptr %comp_desc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %comp_desc, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %land.lhs.true2.cleanup_crit_edge, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %context = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 4
  %9 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %context, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %13 = and i32 %12, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp5.not = icmp eq i32 %13, 0
  br i1 %cmp5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call fastcc i32 @__tegra_xudc_ep_disable(ptr noundef %ep)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %desc9 = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 13
  %14 = ptrtoint ptr %desc9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %desc, ptr %desc9, align 4
  %comp_desc11 = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 1, i32 10
  %15 = ptrtoint ptr %comp_desc11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %comp_desc11, align 4
  %comp_desc12 = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 14
  %17 = ptrtoint ptr %comp_desc12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %comp_desc12, align 4
  %bmAttributes.i146 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %18 = ptrtoint ptr %bmAttributes.i146 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bmAttributes.i146, align 1
  %20 = and i8 %19, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp.i147.not = icmp eq i8 %20, 1
  br i1 %cmp.i147.not, label %if.then15, label %if.end8.if.end20_crit_edge

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then15:                                        ; preds = %if.end8
  %nr_isoch_eps = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 31
  %21 = ptrtoint ptr %nr_isoch_eps to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_isoch_eps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %cmp16 = icmp ugt i32 %22, 4
  br i1 %cmp16, label %do.end, label %if.end18

do.end:                                           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.134) #12
  br label %cleanup

if.end18:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add nuw nsw i32 %22, 1
  %25 = ptrtoint ptr %nr_isoch_eps to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %inc, ptr %nr_isoch_eps, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end18, %if.end8.if.end20_crit_edge
  %transfer_ring = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 5
  %26 = ptrtoint ptr %transfer_ring to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %transfer_ring, align 4
  %28 = call ptr @memset(ptr %27, i32 0, i32 1024)
  %29 = load ptr, ptr %transfer_ring, align 4
  %arrayidx = getelementptr %struct.tegra_xudc_trb, ptr %29, i32 63
  %transfer_ring_phys.i = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 6
  %30 = ptrtoint ptr %transfer_ring_phys.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %transfer_ring_phys.i, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #9
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx, align 4
  %data_hi.i.i.i = getelementptr %struct.tegra_xudc_trb, ptr %29, i32 63, i32 1
  %34 = ptrtoint ptr %data_hi.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %data_hi.i.i.i, align 4
  %control.i.i = getelementptr %struct.tegra_xudc_trb, ptr %29, i32 63, i32 3
  %35 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %control.i.i, align 4
  %37 = and i32 %36, -50069505
  %38 = or i32 %37, 35127296
  store i32 %38, ptr %control.i.i, align 4
  %enq_ptr = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 7
  %39 = ptrtoint ptr %enq_ptr to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %enq_ptr, align 4
  %deq_ptr = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 8
  %40 = ptrtoint ptr %deq_ptr to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %deq_ptr, align 4
  %pcs = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 9
  %41 = ptrtoint ptr %pcs to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %pcs, align 4
  %ring_full = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 10
  %42 = ptrtoint ptr %ring_full to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %ring_full, align 1
  %nr_enabled_eps = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 30
  %43 = ptrtoint ptr %nr_enabled_eps to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nr_enabled_eps, align 8
  %inc22 = add i32 %44, 1
  store i32 %inc22, ptr %nr_enabled_eps, align 8
  %45 = ptrtoint ptr %desc9 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %desc9, align 4
  %47 = ptrtoint ptr %comp_desc12 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %comp_desc12, align 4
  %49 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ep, align 4
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %46, i32 0, i32 4
  %51 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %53 = and i16 %52, -249
  %54 = tail call i16 @llvm.bswap.i16(i16 %53) #9
  %speed.i = getelementptr inbounds %struct.tegra_xudc, ptr %50, i32 0, i32 4, i32 5
  %55 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %56)
  %cmp.i149 = icmp eq i32 %56, 5
  br i1 %cmp.i149, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end20
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %46, i32 0, i32 3
  %57 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bmAttributes.i.i, align 1
  %59 = and i8 %58, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp.i.not.i = icmp eq i8 %59, 0
  br i1 %cmp.i.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then6.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %bMaxBurst.i = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %48, i32 0, i32 2
  %60 = ptrtoint ptr %bMaxBurst.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bMaxBurst.i, align 1
  %conv7.i = zext i8 %61 to i16
  br label %if.end.i

if.end.i:                                         ; preds = %if.then6.i, %if.then.i.if.end.i_crit_edge
  %maxburst.0.i = phi i16 [ 0, %if.then.i.if.end.i_crit_edge ], [ %conv7.i, %if.then6.i ]
  %trunc194.i = trunc i8 %58 to i2
  %62 = zext i2 %trunc194.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.206)
  switch i2 %trunc194.i, label %if.end.i.if.end41.i_crit_edge [
    i2 -1, label %if.end.i.if.then12.i_crit_edge
    i2 1, label %if.end.i.if.then12.i_crit_edge177
  ]

if.end.i.if.then12.i_crit_edge177:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12.i

if.end.i.if.then12.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12.i

if.end.i.if.end41.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41.i

if.then12.i:                                      ; preds = %if.end.i.if.then12.i_crit_edge, %if.end.i.if.then12.i_crit_edge177
  %wBytesPerInterval.i = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %48, i32 0, i32 4
  %63 = ptrtoint ptr %wBytesPerInterval.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %wBytesPerInterval.i, align 1
  %65 = tail call i16 @llvm.bswap.i16(i16 %64) #9
  br label %if.end41.i

if.else.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %56)
  %cmp16.i = icmp ult i32 %56, 5
  br i1 %cmp16.i, label %land.lhs.true.i, label %if.else.i.if.end41.i_crit_edge

if.else.i.if.end41.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %bmAttributes.i147.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %46, i32 0, i32 3
  %66 = ptrtoint ptr %bmAttributes.i147.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %bmAttributes.i147.i, align 1
  %trunc.i = trunc i8 %67 to i2
  %68 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.207)
  switch i2 %trunc.i, label %land.lhs.true.i.if.end41.i_crit_edge [
    i2 -1, label %land.lhs.true.i.if.then23.i_crit_edge
    i2 1, label %land.lhs.true.i.if.then23.i_crit_edge178
  ]

land.lhs.true.i.if.then23.i_crit_edge178:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23.i

land.lhs.true.i.if.then23.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23.i

land.lhs.true.i.if.end41.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41.i

if.then23.i:                                      ; preds = %land.lhs.true.i.if.then23.i_crit_edge, %land.lhs.true.i.if.then23.i_crit_edge178
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %56)
  %cmp26.i = icmp eq i32 %56, 3
  br i1 %cmp26.i, label %if.then28.i, label %if.then23.i.if.end36.i_crit_edge

if.then23.i.if.end36.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

if.then28.i:                                      ; preds = %if.then23.i
  %69 = lshr i16 %52, 3
  %70 = and i16 %69, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %70)
  %cmp32.i = icmp eq i16 %70, 3
  br i1 %cmp32.i, label %do.end.i, label %if.then28.i.if.end36.i_crit_edge

if.then28.i.if.end36.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

do.end.i:                                         ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %50, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %72, ptr noundef nonnull @.str.144) #12
  br label %if.end36.i

if.end36.i:                                       ; preds = %do.end.i, %if.then28.i.if.end36.i_crit_edge, %if.then23.i.if.end36.i_crit_edge
  %maxburst.1.i = phi i16 [ 2, %do.end.i ], [ %70, %if.then28.i.if.end36.i_crit_edge ], [ 0, %if.then23.i.if.end36.i_crit_edge ]
  %narrow.i = add nuw nsw i16 %maxburst.1.i, 1
  %narrow193.i = mul nuw nsw i16 %narrow.i, %54
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.end36.i, %land.lhs.true.i.if.end41.i_crit_edge, %if.else.i.if.end41.i_crit_edge, %if.then12.i, %if.end.i.if.end41.i_crit_edge
  %maxburst.2.i = phi i16 [ %maxburst.0.i, %if.then12.i ], [ %maxburst.1.i, %if.end36.i ], [ 0, %if.else.i.if.end41.i_crit_edge ], [ %maxburst.0.i, %if.end.i.if.end41.i_crit_edge ], [ 0, %land.lhs.true.i.if.end41.i_crit_edge ]
  %esit.0.i = phi i16 [ %65, %if.then12.i ], [ %narrow193.i, %if.end36.i ], [ 0, %if.else.i.if.end41.i_crit_edge ], [ 0, %if.end.i.if.end41.i_crit_edge ], [ 0, %land.lhs.true.i.if.end41.i_crit_edge ]
  %73 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %context, align 4
  %75 = call ptr @memset(ptr %74, i32 0, i32 64)
  %76 = load ptr, ptr %context, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  %79 = and i32 %78, -117440513
  %80 = or i32 %79, 16777216
  store i32 %80, ptr %76, align 4
  %81 = load ptr, ptr %context, align 4
  %bInterval.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %46, i32 0, i32 5
  %82 = ptrtoint ptr %bInterval.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %bInterval.i, align 1
  %conv44.i = zext i8 %83 to i32
  %84 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %81, align 4
  %86 = and i32 %85, -65281
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #9
  %and1.i.i = shl nuw nsw i32 %conv44.i, 16
  %or.i154.i = or i32 %87, %and1.i.i
  %88 = tail call i32 @llvm.bswap.i32(i32 %or.i154.i) #9
  %89 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %81, align 4
  %90 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %91)
  %cmp47.i = icmp eq i32 %91, 5
  br i1 %cmp47.i, label %if.then49.i, label %if.end41.i.if.end65.i_crit_edge

if.end41.i.if.end65.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i

if.then49.i:                                      ; preds = %if.end41.i
  %bmAttributes.i155.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %46, i32 0, i32 3
  %92 = ptrtoint ptr %bmAttributes.i155.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %bmAttributes.i155.i, align 1
  %94 = and i8 %93, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %94)
  %cmp.i156.not.i = icmp eq i8 %94, 1
  br i1 %cmp.i156.not.i, label %if.then52.i, label %if.then49.i.if.end55.i_crit_edge

if.then49.i.if.end55.i_crit_edge:                 ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55.i

if.then52.i:                                      ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %context, align 4
  %bmAttributes.i150 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %48, i32 0, i32 3
  %97 = ptrtoint ptr %bmAttributes.i150 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %bmAttributes.i150, align 1
  %and.i151 = zext i8 %98 to i32
  %99 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %96, align 4
  %101 = and i32 %100, -196609
  %102 = tail call i32 @llvm.bswap.i32(i32 %101) #9
  %and1.i158.i = shl nuw nsw i32 %and.i151, 8
  %shl.i159.i = and i32 %and1.i158.i, 768
  %or.i160.i = or i32 %102, %shl.i159.i
  %103 = tail call i32 @llvm.bswap.i32(i32 %or.i160.i) #9
  %104 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %96, align 4
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then52.i, %if.then49.i.if.end55.i_crit_edge
  %105 = ptrtoint ptr %bmAttributes.i155.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %bmAttributes.i155.i, align 1
  %107 = and i8 %106, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %107)
  %cmp.i162.not.i = icmp eq i8 %107, 2
  br i1 %cmp.i162.not.i, label %if.then58.i, label %if.end55.i.if.end65.i_crit_edge

if.end55.i.if.end65.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i

if.then58.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #11
  %108 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %context, align 4
  %bmAttributes60.i = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %48, i32 0, i32 3
  %110 = ptrtoint ptr %bmAttributes60.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %bmAttributes60.i, align 1
  %and62.i = zext i8 %111 to i32
  %112 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %109, align 4
  %114 = and i32 %113, -8126465
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #9
  %and1.i164.i = shl nuw nsw i32 %and62.i, 10
  %shl.i165.i = and i32 %and1.i164.i, 31744
  %or.i166.i = or i32 %115, %shl.i165.i
  %116 = tail call i32 @llvm.bswap.i32(i32 %or.i166.i) #9
  %117 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %109, align 4
  %118 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %context, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %119, align 4
  %122 = or i32 %121, 8388608
  store i32 %122, ptr %119, align 4
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then58.i, %if.end55.i.if.end65.i_crit_edge, %if.end41.i.if.end65.i_crit_edge
  %bmAttributes.i167.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %46, i32 0, i32 3
  %123 = ptrtoint ptr %bmAttributes.i167.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %bmAttributes.i167.i, align 1
  %125 = and i8 %124, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %cmp.i168.not.i = icmp eq i8 %125, 0
  br i1 %cmp.i168.not.i, label %if.end65.i.if.else73.i_crit_edge, label %land.lhs.true68.i

if.end65.i.if.else73.i_crit_edge:                 ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else73.i

land.lhs.true68.i:                                ; preds = %if.end65.i
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %46, i32 0, i32 2
  %126 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool70.not.i = icmp slt i8 %127, 0
  br i1 %tobool70.not.i, label %land.lhs.true68.i.if.else73.i_crit_edge, label %land.lhs.true68.i.tegra_xudc_ep_context_setup.exit_crit_edge

land.lhs.true68.i.tegra_xudc_ep_context_setup.exit_crit_edge: ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_xudc_ep_context_setup.exit

land.lhs.true68.i.if.else73.i_crit_edge:          ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else73.i

if.else73.i:                                      ; preds = %land.lhs.true68.i.if.else73.i_crit_edge, %if.end65.i.if.else73.i_crit_edge
  %128 = or i8 %125, 4
  br label %tegra_xudc_ep_context_setup.exit

tegra_xudc_ep_context_setup.exit:                 ; preds = %if.else73.i, %land.lhs.true68.i.tegra_xudc_ep_context_setup.exit_crit_edge
  %val.0.in.i = phi i8 [ %128, %if.else73.i ], [ %125, %land.lhs.true68.i.tegra_xudc_ep_context_setup.exit_crit_edge ]
  %and.i.i = zext i16 %54 to i32
  %val.0.i = zext i8 %val.0.in.i to i32
  %129 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %context, align 4
  %info1.i.i = getelementptr inbounds %struct.tegra_xudc_ep_context, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %info1.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %info1.i.i, align 4
  %133 = and i32 %132, -939524097
  %134 = tail call i32 @llvm.bswap.i32(i32 %133) #9
  %and1.i174.i = shl nuw nsw i32 %val.0.i, 3
  %shl.i175.i = and i32 %and1.i174.i, 56
  %or.i176.i = or i32 %134, %shl.i175.i
  %135 = tail call i32 @llvm.bswap.i32(i32 %or.i176.i) #9
  %136 = ptrtoint ptr %info1.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %info1.i.i, align 4
  %137 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %context, align 4
  %info1.i177.i = getelementptr inbounds %struct.tegra_xudc_ep_context, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %info1.i177.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %info1.i177.i, align 4
  %141 = or i32 %140, 100663296
  store i32 %141, ptr %info1.i177.i, align 4
  %142 = load ptr, ptr %context, align 4
  %info1.i178.i = getelementptr inbounds %struct.tegra_xudc_ep_context, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %info1.i178.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %info1.i178.i, align 4
  %145 = and i32 %144, -65536
  %146 = tail call i32 @llvm.bswap.i32(i32 %145) #9
  %shl.i179.i = shl nuw nsw i32 %and.i.i, 16
  %or.i180.i = or i32 %146, %shl.i179.i
  %147 = tail call i32 @llvm.bswap.i32(i32 %or.i180.i) #9
  %148 = ptrtoint ptr %info1.i178.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %info1.i178.i, align 4
  %149 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %context, align 4
  %conv82.i = zext i16 %maxburst.2.i to i32
  %info1.i181.i = getelementptr inbounds %struct.tegra_xudc_ep_context, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %info1.i181.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %info1.i181.i, align 4
  %153 = and i32 %152, -16711681
  %154 = tail call i32 @llvm.bswap.i32(i32 %153) #9
  %and1.i182.i = shl nuw nsw i32 %conv82.i, 8
  %shl.i183.i = and i32 %and1.i182.i, 65280
  %or.i184.i = or i32 %154, %shl.i183.i
  %155 = tail call i32 @llvm.bswap.i32(i32 %or.i184.i) #9
  %156 = ptrtoint ptr %info1.i181.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %info1.i181.i, align 4
  %157 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %context, align 4
  %159 = ptrtoint ptr %transfer_ring_phys.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %transfer_ring_phys.i, align 4
  %shr.i.i = and i32 %160, -16
  %deq_lo.i.i.i = getelementptr inbounds %struct.tegra_xudc_ep_context, ptr %158, i32 0, i32 2
  %161 = ptrtoint ptr %deq_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %deq_lo.i.i.i, align 4
  %163 = lshr i32 %162, 24
  %and.i.i.i = and i32 %163, 15
  %or.i.i.i = or i32 %and.i.i.i, %shr.i.i
  %164 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #9
  %165 = ptrtoint ptr %deq_lo.i.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %deq_lo.i.i.i, align 4
  %deq_hi.i.i.i = getelementptr inbounds %struct.tegra_xudc_ep_context, ptr %158, i32 0, i32 3
  %166 = ptrtoint ptr %deq_hi.i.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %deq_hi.i.i.i, align 4
  %167 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %context, align 4
  %169 = ptrtoint ptr %pcs to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %pcs, align 4, !range !429
  %171 = zext i8 %170 to i32
  %deq_lo.i.i = getelementptr inbounds %struct.tegra_xudc_ep_context, ptr %168, i32 0, i32 2
  %172 = ptrtoint ptr %deq_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %deq_lo.i.i, align 4
  %174 = and i32 %173, -16777217
  %175 = tail call i32 @llvm.bswap.i32(i32 %174) #9
  %or.i186.i = or i32 %175, %171
  %176 = tail call i32 @llvm.bswap.i32(i32 %or.i186.i) #9
  %177 = ptrtoint ptr %deq_lo.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %deq_lo.i.i, align 4
  %178 = ptrtoint ptr %bmAttributes.i167.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %bmAttributes.i167.i, align 1
  %180 = and i8 %179, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %180)
  %switch.selectcmp.i = icmp eq i8 %180, 3
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1024, i32 3072
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %switch.selectcmp139.i = icmp eq i8 %180, 0
  %switch.select140.i = select i1 %switch.selectcmp139.i, i32 8, i32 %switch.select.i
  %181 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %context, align 4
  %tx_info.i.i = getelementptr inbounds %struct.tegra_xudc_ep_context, ptr %182, i32 0, i32 4
  %183 = ptrtoint ptr %tx_info.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %tx_info.i.i, align 4
  %185 = and i32 %184, 65535
  %186 = tail call i32 @llvm.bswap.i32(i32 %185) #9
  %or.i189.i = or i32 %186, %switch.select140.i
  %187 = tail call i32 @llvm.bswap.i32(i32 %or.i189.i) #9
  %188 = ptrtoint ptr %tx_info.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %tx_info.i.i, align 4
  %189 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %context, align 4
  %conv93.i = zext i16 %esit.0.i to i32
  %tx_info.i190.i = getelementptr inbounds %struct.tegra_xudc_ep_context, ptr %190, i32 0, i32 4
  %191 = ptrtoint ptr %tx_info.i190.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %tx_info.i190.i, align 4
  %193 = and i32 %192, -65536
  %194 = tail call i32 @llvm.bswap.i32(i32 %193) #9
  %shl.i191.i = shl nuw i32 %conv93.i, 16
  %or.i192.i = or i32 %194, %shl.i191.i
  %195 = tail call i32 @llvm.bswap.i32(i32 %or.i192.i) #9
  %196 = ptrtoint ptr %tx_info.i190.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %tx_info.i190.i, align 4
  %197 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %context, align 4
  %arrayidx.i.i = getelementptr %struct.tegra_xudc_ep_context, ptr %198, i32 0, i32 5, i32 1
  %199 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arrayidx.i.i, align 4
  %201 = or i32 %200, 3072
  store i32 %201, ptr %arrayidx.i.i, align 4
  %202 = ptrtoint ptr %bmAttributes.i146 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %bmAttributes.i146, align 1
  %204 = and i8 %203, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %cmp.i154.not = icmp eq i8 %204, 0
  br i1 %cmp.i154.not, label %tegra_xudc_ep_context_setup.exit.do.end78_crit_edge, label %if.end26

tegra_xudc_ep_context_setup.exit.do.end78_crit_edge: ; preds = %tegra_xudc_ep_context_setup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end78

if.end26:                                         ; preds = %tegra_xudc_ep_context_setup.exit
  %device_state = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 32
  %205 = ptrtoint ptr %device_state to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %device_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %206)
  %cmp27 = icmp eq i32 %206, 6
  br i1 %cmp27, label %if.then28, label %if.end26.if.end33_crit_edge

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %base.i = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 35
  %207 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %208, i32 48
  %209 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %210 = or i32 %209, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %211 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %base.i, align 4
  %add.ptr.i157 = getelementptr i8, ptr %212, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i157, i32 %210) #9, !srcloc !436
  %213 = ptrtoint ptr %device_state to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 7, ptr %device_state, align 8
  tail call void @usb_gadget_set_state(ptr noundef %gadget, i32 noundef 7) #9
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %if.end26.if.end33_crit_edge
  %214 = ptrtoint ptr %bmAttributes.i146 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %bmAttributes.i146, align 1
  %216 = and i8 %215, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %216)
  %cmp.i159.not = icmp eq i8 %216, 1
  br i1 %cmp.i159.not, label %if.end33.for.body_crit_edge, label %if.end33.if.end51_crit_edge

if.end33.if.end51_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end33.for.body_crit_edge
  %i.0172 = phi i32 [ %inc50, %for.inc.for.body_crit_edge ], [ 0, %if.end33.for.body_crit_edge ]
  %desc40 = getelementptr %struct.tegra_xudc, ptr %1, i32 0, i32 11, i32 %i.0172, i32 13
  %217 = ptrtoint ptr %desc40 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %desc40, align 4
  %tobool41.not = icmp eq ptr %218, null
  br i1 %tobool41.not, label %for.body.for.inc_crit_edge, label %land.lhs.true42

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true42:                                  ; preds = %for.body
  %bmAttributes.i161 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %218, i32 0, i32 3
  %219 = ptrtoint ptr %bmAttributes.i161 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %bmAttributes.i161, align 1
  %221 = and i8 %220, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %221)
  %cmp.i162.not = icmp eq i8 %221, 2
  br i1 %cmp.i162.not, label %if.then48, label %land.lhs.true42.for.inc_crit_edge

land.lhs.true42.for.inc_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then48:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ep_pause(ptr noundef %1, i32 noundef %i.0172)
  br label %for.inc

for.inc:                                          ; preds = %if.then48, %land.lhs.true42.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc50 = add nuw nsw i32 %i.0172, 1
  %exitcond.not = icmp eq i32 %inc50, 32
  br i1 %exitcond.not, label %for.inc.if.end51_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.end51_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.end51:                                         ; preds = %for.inc.if.end51_crit_edge, %if.end33.if.end51_crit_edge
  %index = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 2
  %222 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %index, align 4
  tail call fastcc void @ep_reload(ptr noundef %1, i32 noundef %223)
  %224 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %index, align 4
  tail call fastcc void @ep_unpause(ptr noundef %1, i32 noundef %225)
  %226 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %index, align 4
  tail call fastcc void @ep_unhalt(ptr noundef %1, i32 noundef %227)
  %228 = ptrtoint ptr %bmAttributes.i146 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %bmAttributes.i146, align 1
  %230 = and i8 %229, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %230)
  %cmp.i165.not = icmp eq i8 %230, 1
  br i1 %cmp.i165.not, label %if.end51.for.body59_crit_edge, label %if.end51.do.end78_crit_edge

if.end51.do.end78_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end78

if.end51.for.body59_crit_edge:                    ; preds = %if.end51
  br label %for.body59

for.body59:                                       ; preds = %for.inc72.for.body59_crit_edge, %if.end51.for.body59_crit_edge
  %i.1174 = phi i32 [ %inc73, %for.inc72.for.body59_crit_edge ], [ 0, %if.end51.for.body59_crit_edge ]
  %desc62 = getelementptr %struct.tegra_xudc, ptr %1, i32 0, i32 11, i32 %i.1174, i32 13
  %231 = ptrtoint ptr %desc62 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %desc62, align 4
  %tobool63.not = icmp eq ptr %232, null
  br i1 %tobool63.not, label %for.body59.for.inc72_crit_edge, label %land.lhs.true64

for.body59.for.inc72_crit_edge:                   ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc72

land.lhs.true64:                                  ; preds = %for.body59
  %bmAttributes.i167 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %232, i32 0, i32 3
  %233 = ptrtoint ptr %bmAttributes.i167 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %bmAttributes.i167, align 1
  %235 = and i8 %234, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %235)
  %cmp.i168.not = icmp eq i8 %235, 2
  br i1 %cmp.i168.not, label %if.then70, label %land.lhs.true64.for.inc72_crit_edge

land.lhs.true64.for.inc72_crit_edge:              ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc72

if.then70:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ep_unpause(ptr noundef %1, i32 noundef %i.1174)
  br label %for.inc72

for.inc72:                                        ; preds = %if.then70, %land.lhs.true64.for.inc72_crit_edge, %for.body59.for.inc72_crit_edge
  %inc73 = add nuw nsw i32 %i.1174, 1
  %exitcond176.not = icmp eq i32 %inc73, 32
  br i1 %exitcond176.not, label %for.inc72.do.end78_crit_edge, label %for.inc72.for.body59_crit_edge

for.inc72.for.body59_crit_edge:                   ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body59

for.inc72.do.end78_crit_edge:                     ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end78

do.end78:                                         ; preds = %for.inc72.do.end78_crit_edge, %if.end51.do.end78_crit_edge, %tegra_xudc_ep_context_setup.exit.do.end78_crit_edge
  %236 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %1, align 8
  %index80 = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 2
  %238 = ptrtoint ptr %index80 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %index80, align 4
  %240 = ptrtoint ptr %desc9 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %desc9, align 4
  %bmAttributes.i170 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %241, i32 0, i32 3
  %242 = ptrtoint ptr %bmAttributes.i170 to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %bmAttributes.i170, align 1
  %244 = and i8 %243, 3
  %and.i171 = zext i8 %244 to i32
  %call83 = tail call ptr @usb_ep_type_string(i32 noundef %and.i171) #9
  %245 = ptrtoint ptr %desc9 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %desc9, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %246, i32 0, i32 2
  %247 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %248)
  %tobool86.not = icmp sgt i8 %248, -1
  %cond = select i1 %tobool86.not, ptr @.str.131, ptr @.str.132
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %237, ptr noundef nonnull @.str.137, i32 noundef %239, ptr noundef %call83, ptr noundef nonnull %cond) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end78, %do.end, %land.lhs.true2.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %do.end78 ], [ -22, %land.lhs.true2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__tegra_xudc_ep_disable(ptr noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %context = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 4
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = and i32 %5, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %index = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 2
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.139, i32 noundef %10) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = and i32 %5, -117440513
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %3, align 4
  %index3 = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 2
  %13 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index3, align 4
  tail call fastcc void @ep_reload(ptr noundef %1, i32 noundef %14)
  %queue.i = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 12
  %15 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not4.i = icmp eq ptr %16, %queue.i
  br i1 %cmp.i.not4.i, label %if.end.tegra_xudc_ep_nuke.exit_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.tegra_xudc_ep_nuke.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_xudc_ep_nuke.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %17 = phi ptr [ %19, %while.body.i.while.body.i_crit_edge ], [ %16, %if.end.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %17, i32 -80
  tail call fastcc void @tegra_xudc_req_done(ptr noundef %ep, ptr noundef %add.ptr.i, i32 noundef -108) #9
  %18 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %19, %queue.i
  br i1 %cmp.i.not.i, label %while.body.i.tegra_xudc_ep_nuke.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.tegra_xudc_ep_nuke.exit_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_xudc_ep_nuke.exit

tegra_xudc_ep_nuke.exit:                          ; preds = %while.body.i.tegra_xudc_ep_nuke.exit_crit_edge, %if.end.tegra_xudc_ep_nuke.exit_crit_edge
  %nr_enabled_eps = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 30
  %20 = ptrtoint ptr %nr_enabled_eps to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_enabled_eps, align 8
  %dec = add i32 %21, -1
  store i32 %dec, ptr %nr_enabled_eps, align 8
  %desc = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 13
  %22 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %desc, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bmAttributes.i, align 1
  %26 = and i8 %25, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp.i.not = icmp eq i8 %26, 1
  br i1 %cmp.i.not, label %if.then5, label %tegra_xudc_ep_nuke.exit.if.end7_crit_edge

tegra_xudc_ep_nuke.exit.if.end7_crit_edge:        ; preds = %tegra_xudc_ep_nuke.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %tegra_xudc_ep_nuke.exit
  call void @__sanitizer_cov_trace_pc() #11
  %nr_isoch_eps = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 31
  %27 = ptrtoint ptr %nr_isoch_eps to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr_isoch_eps, align 4
  %dec6 = add i32 %28, -1
  store i32 %dec6, ptr %nr_isoch_eps, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %tegra_xudc_ep_nuke.exit.if.end7_crit_edge
  %29 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %desc, align 4
  %comp_desc = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 14
  %30 = ptrtoint ptr %comp_desc to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %comp_desc, align 4
  %31 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %context, align 4
  %33 = call ptr @memset(ptr %32, i32 0, i32 64)
  %34 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index3, align 4
  tail call fastcc void @ep_unpause(ptr noundef %1, i32 noundef %35)
  %36 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %index3, align 4
  tail call fastcc void @ep_unhalt(ptr noundef %1, i32 noundef %37)
  %base.i = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 35
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i, align 4
  %add.ptr.i63 = getelementptr i8, ptr %39, i32 120
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #9, !srcloc !433
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %42 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %index3, align 4
  %shl = shl nuw i32 1, %43
  %and = and i32 %shl, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end7.if.end18_crit_edge, label %if.then15

if.end7.if.end18_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then15:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %44 = tail call i32 @llvm.bswap.i32(i32 %shl) #9
  %45 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %46, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 %44) #9, !srcloc !436
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end7.if.end18_crit_edge
  %device_state = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 32
  %47 = ptrtoint ptr %device_state to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %device_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %48)
  %cmp19 = icmp eq i32 %48, 7
  br i1 %cmp19, label %land.lhs.true, label %if.end18.do.end30_crit_edge

if.end18.do.end30_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

land.lhs.true:                                    ; preds = %if.end18
  %49 = ptrtoint ptr %nr_enabled_eps to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nr_enabled_eps, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp21 = icmp eq i32 %50, 1
  br i1 %cmp21, label %if.then22, label %land.lhs.true.do.end30_crit_edge

land.lhs.true.do.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %device_state to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 6, ptr %device_state, align 8
  %gadget = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 4
  tail call void @usb_gadget_set_state(ptr noundef %gadget, i32 noundef 6) #9
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 4
  %add.ptr.i67 = getelementptr i8, ptr %53, i32 48
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %55 = and i32 %54, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %56 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i, align 4
  %add.ptr.i69 = getelementptr i8, ptr %57, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %55) #9, !srcloc !436
  br label %do.end30

do.end30:                                         ; preds = %if.then22, %land.lhs.true.do.end30_crit_edge, %if.end18.do.end30_crit_edge
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 8
  %60 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %index3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %59, ptr noundef nonnull @.str.142, i32 noundef %61) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end30 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep_pause(ptr nocapture noundef readonly %xudc, i32 noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 35
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 84
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !433
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %shl = shl nuw i32 1, %ep
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %or = or i32 %3, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %6, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %4) #9, !srcloc !436
  %call.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call.i, 100000
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %8, i32 92
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !433
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %and3.i = and i32 %10, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i, i32 %shl)
  %cmp4.i = icmp eq i32 %and3.i, %shl
  br i1 %cmp4.i, label %if.end.xudc_readl_poll.exit_crit_edge, label %if.end.land.lhs.true.i_crit_edge

if.end.land.lhs.true.i_crit_edge:                 ; preds = %if.end
  br label %land.lhs.true.i

if.end.xudc_readl_poll.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %xudc_readl_poll.exit

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %if.end.land.lhs.true.i_crit_edge
  %call4.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call4.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call4.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then7.i, label %cond.false.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %12, i32 92
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !439
  br label %xudc_readl_poll.exit

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #9
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %16, i32 92
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #9, !srcloc !433
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %and.i = and i32 %18, %shl
  %cmp.i = icmp eq i32 %and.i, %shl
  br i1 %cmp.i, label %cond.false.i.xudc_readl_poll.exit_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

cond.false.i.xudc_readl_poll.exit_crit_edge:      ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xudc_readl_poll.exit

xudc_readl_poll.exit:                             ; preds = %cond.false.i.xudc_readl_poll.exit_crit_edge, %if.then7.i, %if.end.xudc_readl_poll.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %shl) #9
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %21, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %19) #9, !srcloc !436
  br label %cleanup

cleanup:                                          ; preds = %xudc_readl_poll.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_type_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__tegra_xudc_ep_dequeue(ptr noundef %ep, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %queue = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 12
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %queue, %entry ], [ %.pn, %for.cond.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %r.0 = getelementptr i8, ptr %.pn, i32 -80
  %cmp.not = icmp eq ptr %.pn, %queue
  %cmp3 = icmp eq ptr %r.0, %req
  %or.cond = or i1 %cmp.not, %cmp3
  br i1 %or.cond, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %cmp3, label %if.end11, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %for.end
  %trbs_queued = getelementptr inbounds %struct.tegra_xudc_request, ptr %req, i32 0, i32 2
  %3 = ptrtoint ptr %trbs_queued to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %trbs_queued, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tegra_xudc_req_done(ptr noundef %ep, ptr noundef %req, i32 noundef -104)
  br label %cleanup

if.end13:                                         ; preds = %if.end11
  %context = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 4
  %5 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %9 = and i32 %8, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %9)
  %cmp14 = icmp eq i32 %9, 16777216
  br i1 %cmp14, label %if.then15, label %if.end13.if.end17_crit_edge

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then15:                                        ; preds = %if.end13
  %index = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 2
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  tail call fastcc void @ep_pause(ptr noundef %1, i32 noundef %11)
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 4
  %shl.i = shl nuw i32 1, %13
  %call.i.i = tail call i64 @ktime_get() #9
  %add.i.i.i = add i64 %call.i.i, 100000
  %base.i.i = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 35
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %15, i32 116
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #9, !srcloc !433
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %and3.i.i = and i32 %17, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %cmp4.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %cmp4.i.i, label %if.then15.if.end17_crit_edge, label %if.then15.land.lhs.true.i.i_crit_edge

if.then15.land.lhs.true.i.i_crit_edge:            ; preds = %if.then15
  br label %land.lhs.true.i.i

if.then15.if.end17_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true.i.i:                                ; preds = %cond.false.i.i.land.lhs.true.i.i_crit_edge, %if.then15.land.lhs.true.i.i_crit_edge
  %call4.i.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call4.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call4.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %if.then7.i.i, label %cond.false.i.i

if.then7.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i, align 4
  %add.ptr11.i.i = getelementptr i8, ptr %19, i32 116
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !439
  br label %if.end17

cond.false.i.i:                                   ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #9
  %22 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 116
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !433
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %and.i.i = and i32 %25, %shl.i
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %cond.false.i.i.if.end17_crit_edge, label %cond.false.i.i.land.lhs.true.i.i_crit_edge

cond.false.i.i.land.lhs.true.i.i_crit_edge:       ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i

cond.false.i.i.if.end17_crit_edge:                ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end17:                                         ; preds = %cond.false.i.i.if.end17_crit_edge, %if.then7.i.i, %if.then15.if.end17_crit_edge, %if.end13.if.end17_crit_edge
  %26 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %context, align 4
  %deq_lo.i.i = getelementptr inbounds %struct.tegra_xudc_ep_context, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %deq_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %deq_lo.i.i, align 4
  %30 = and i32 %29, -251658241
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  %transfer_ring_phys.i = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 6
  %32 = ptrtoint ptr %transfer_ring_phys.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %transfer_ring_phys.i, align 4
  %sub.i = sub i32 %31, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %sub.i)
  %cmp.i = icmp ugt i32 %sub.i, 1023
  br i1 %cmp.i, label %do.end.i, label %if.end21.i, !prof !430

do.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 907, i32 noundef 9, ptr noundef null) #9
  br label %trb_phys_to_virt.exit

if.end21.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %div26.i = lshr i32 %sub.i, 4
  %transfer_ring.i = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 5
  %34 = ptrtoint ptr %transfer_ring.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %transfer_ring.i, align 4
  %arrayidx.i = getelementptr %struct.tegra_xudc_trb, ptr %35, i32 %div26.i
  br label %trb_phys_to_virt.exit

trb_phys_to_virt.exit:                            ; preds = %if.end21.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %arrayidx.i, %if.end21.i ]
  %control.i = getelementptr inbounds %struct.tegra_xudc_trb, ptr %retval.0.i, i32 0, i32 3
  %36 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %control.i, align 4
  %38 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %context, align 4
  %deq_lo.i = getelementptr inbounds %struct.tegra_xudc_ep_context, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %deq_lo.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %deq_lo.i, align 4
  %42 = xor i32 %41, %37
  %43 = and i32 %42, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp24 = icmp eq i32 %43, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trb_in_request.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__tegra_xudc_ep_dequeue, %do.end.i128)) #9
          to label %if.then.i [label %do.end.i128], !srcloc !437

if.then.i:                                        ; preds = %trb_phys_to_virt.exit
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ep, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 8
  %first_trb.i = getelementptr inbounds %struct.tegra_xudc_request, ptr %req, i32 0, i32 5
  %48 = ptrtoint ptr %first_trb.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %first_trb.i, align 4
  %last_trb.i = getelementptr inbounds %struct.tegra_xudc_request, ptr %req, i32 0, i32 6
  %50 = ptrtoint ptr %last_trb.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %last_trb.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trb_in_request.__UNIQUE_ID_ddebug307, ptr noundef %47, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.72, ptr noundef %49, ptr noundef %51, ptr noundef %retval.0.i) #9
  br label %do.end.i128

do.end.i128:                                      ; preds = %if.then.i, %trb_phys_to_virt.exit
  %first_trb4.i = getelementptr inbounds %struct.tegra_xudc_request, ptr %req, i32 0, i32 5
  %52 = ptrtoint ptr %first_trb4.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %first_trb4.i, align 4
  %cmp.not.i = icmp ugt ptr %53, %retval.0.i
  %last_trb15.i = getelementptr inbounds %struct.tegra_xudc_request, ptr %req, i32 0, i32 6
  %54 = ptrtoint ptr %last_trb15.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %last_trb15.i, align 4
  %cmp16.not.i = icmp uge ptr %55, %retval.0.i
  %cmp20.i = icmp ult ptr %55, %53
  br i1 %cmp.not.i, label %land.lhs.true14.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.end.i128
  %or.cond.i = select i1 %cmp16.not.i, i1 true, i1 %cmp20.i
  %56 = select i1 %or.cond.i, i1 %cmp24, i1 false
  br i1 %56, label %land.lhs.true.i.if.then30_crit_edge, label %land.lhs.true.i.if.else53_crit_edge

land.lhs.true.i.if.else53_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else53

land.lhs.true.i.if.then30_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

land.lhs.true14.i:                                ; preds = %do.end.i128
  %or.cond39.i = select i1 %cmp16.not.i, i1 %cmp20.i, i1 false
  %57 = select i1 %or.cond39.i, i1 %cmp24, i1 false
  br i1 %57, label %land.lhs.true14.i.if.then30_crit_edge, label %land.lhs.true14.i.if.else53_crit_edge

land.lhs.true14.i.if.else53_crit_edge:            ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else53

land.lhs.true14.i.if.then30_crit_edge:            ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

if.then30:                                        ; preds = %land.lhs.true14.i.if.then30_crit_edge, %land.lhs.true.i.if.then30_crit_edge
  %control.i.i = getelementptr inbounds %struct.tegra_xudc_trb, ptr %53, i32 0, i32 3
  %58 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %control.i.i, align 4
  %60 = lshr i32 %59, 24
  %61 = trunc i32 %60 to i8
  %62 = and i8 %61, 1
  %transfer_ring.i131 = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 5
  %enq_ptr.i = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 7
  %63 = ptrtoint ptr %transfer_ring.i131 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %transfer_ring.i131, align 4
  %65 = ptrtoint ptr %enq_ptr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %enq_ptr.i, align 4
  %arrayidx53.i = getelementptr %struct.tegra_xudc_trb, ptr %64, i32 %66
  %cmp.not54.i = icmp eq ptr %53, %arrayidx53.i
  br i1 %cmp.not54.i, label %if.then30.while.end.i_crit_edge, label %if.then30.while.body.i_crit_edge

if.then30.while.body.i_crit_edge:                 ; preds = %if.then30
  br label %while.body.i

if.then30.while.end.i_crit_edge:                  ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then30.while.body.i_crit_edge
  %trb.055.i = phi ptr [ %trb.1.i, %if.end.i.while.body.i_crit_edge ], [ %53, %if.then30.while.body.i_crit_edge ]
  %control.i48.i = getelementptr inbounds %struct.tegra_xudc_trb, ptr %trb.055.i, i32 0, i32 3
  %67 = ptrtoint ptr %control.i48.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %control.i48.i, align 4
  %69 = call ptr @memset(ptr %trb.055.i, i32 0, i32 12)
  %.lobit.i = and i32 %68, 16777216
  %or.i.i = xor i32 %.lobit.i, 16777216
  store i32 %or.i.i, ptr %control.i48.i, align 4
  %incdec.ptr.i = getelementptr %struct.tegra_xudc_trb, ptr %trb.055.i, i32 1
  %control.i51.i = getelementptr %struct.tegra_xudc_trb, ptr %trb.055.i, i32 1, i32 3
  %70 = ptrtoint ptr %control.i51.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %control.i51.i, align 4
  %72 = and i32 %71, 16515072
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %72)
  %cmp6.i = icmp eq i32 %72, 1572864
  br i1 %cmp6.i, label %if.then.i132, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i132:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %transfer_ring.i131 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %transfer_ring.i131, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i132, %while.body.i.if.end.i_crit_edge
  %trb.1.i = phi ptr [ %74, %if.then.i132 ], [ %incdec.ptr.i, %while.body.i.if.end.i_crit_edge ]
  %75 = ptrtoint ptr %transfer_ring.i131 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %transfer_ring.i131, align 4
  %77 = ptrtoint ptr %enq_ptr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %enq_ptr.i, align 4
  %arrayidx.i133 = getelementptr %struct.tegra_xudc_trb, ptr %76, i32 %78
  %cmp.not.i134 = icmp eq ptr %trb.1.i, %arrayidx.i133
  br i1 %cmp.not.i134, label %if.end.i.while.end.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %if.end.i.while.end.i_crit_edge, %if.then30.while.end.i_crit_edge
  %.lcssa.i = phi ptr [ %64, %if.then30.while.end.i_crit_edge ], [ %76, %if.end.i.while.end.i_crit_edge ]
  %79 = ptrtoint ptr %first_trb4.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %first_trb4.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %80 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %.lcssa.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 4
  %81 = ptrtoint ptr %enq_ptr.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %sub.ptr.div.i, ptr %enq_ptr.i, align 4
  %pcs12.i = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 9
  %82 = ptrtoint ptr %pcs12.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %62, ptr %pcs12.i, align 4
  %ring_full.i = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 10
  %83 = ptrtoint ptr %ring_full.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %ring_full.i, align 1
  %list.i = getelementptr inbounds %struct.tegra_xudc_request, ptr %req, i32 0, i32 7
  %84 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %.pn56.i = load ptr, ptr %list.i, align 4
  %cmp15.not57.i = icmp eq ptr %.pn56.i, %queue
  br i1 %cmp15.not57.i, label %while.end.i.squeeze_transfer_ring.exit_crit_edge, label %while.end.i.for.body.i_crit_edge

while.end.i.for.body.i_crit_edge:                 ; preds = %while.end.i
  br label %for.body.i

while.end.i.squeeze_transfer_ring.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %squeeze_transfer_ring.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %while.end.i.for.body.i_crit_edge
  %.pn58.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn56.i, %while.end.i.for.body.i_crit_edge ]
  %status.i = getelementptr i8, ptr %.pn58.i, i32 -32
  %85 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -115, ptr %status.i, align 4
  %actual.i = getelementptr i8, ptr %.pn58.i, i32 -28
  %86 = ptrtoint ptr %actual.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %actual.i, align 4
  %first_trb19.i = getelementptr i8, ptr %.pn58.i, i32 -8
  %87 = ptrtoint ptr %first_trb19.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %first_trb19.i, align 4
  %last_trb.i135 = getelementptr i8, ptr %.pn58.i, i32 -4
  %88 = ptrtoint ptr %last_trb.i135 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %last_trb.i135, align 4
  %buf_queued.i = getelementptr i8, ptr %.pn58.i, i32 -24
  %89 = ptrtoint ptr %buf_queued.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %buf_queued.i, align 4
  %trbs_queued.i = getelementptr i8, ptr %.pn58.i, i32 -20
  %90 = ptrtoint ptr %trbs_queued.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %trbs_queued.i, align 4
  %91 = ptrtoint ptr %.pn58.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %.pn.i = load ptr, ptr %.pn58.i, align 4
  %cmp15.not.i = icmp eq ptr %.pn.i, %queue
  br i1 %cmp15.not.i, label %for.body.i.squeeze_transfer_ring.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.squeeze_transfer_ring.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %squeeze_transfer_ring.exit

squeeze_transfer_ring.exit:                       ; preds = %for.body.i.squeeze_transfer_ring.exit_crit_edge, %while.end.i.squeeze_transfer_ring.exit_crit_edge
  %92 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %context, align 4
  %rsvd.i = getelementptr inbounds %struct.tegra_xudc_ep_context, ptr %93, i32 0, i32 5
  %94 = ptrtoint ptr %rsvd.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rsvd.i, align 4
  %96 = and i32 %95, -256
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #9
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %98 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %actual, align 4
  tail call fastcc void @tegra_xudc_req_done(ptr noundef %ep, ptr noundef %req, i32 noundef -104)
  %99 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %actual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp35.not = icmp eq i32 %100, 0
  br i1 %cmp35.not, label %squeeze_transfer_ring.exit.if.then65_crit_edge, label %if.then37

squeeze_transfer_ring.exit.if.then65_crit_edge:   ; preds = %squeeze_transfer_ring.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then65

if.then37:                                        ; preds = %squeeze_transfer_ring.exit
  %101 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %context, align 4
  %rsvd.i136 = getelementptr inbounds %struct.tegra_xudc_ep_context, ptr %102, i32 0, i32 5
  %103 = ptrtoint ptr %rsvd.i136 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rsvd.i136, align 4
  %105 = and i32 %104, 255
  store i32 %105, ptr %rsvd.i136, align 4
  %106 = load ptr, ptr %context, align 4
  %rsvd.i137 = getelementptr inbounds %struct.tegra_xudc_ep_context, ptr %106, i32 0, i32 5
  %107 = ptrtoint ptr %rsvd.i137 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rsvd.i137, align 4
  %109 = and i32 %108, -3
  store i32 %109, ptr %rsvd.i137, align 4
  %110 = load ptr, ptr %context, align 4
  %arrayidx.i138 = getelementptr %struct.tegra_xudc_ep_context, ptr %110, i32 0, i32 5, i32 2
  %111 = ptrtoint ptr %arrayidx.i138 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx.i138, align 4
  %113 = and i32 %112, 65279
  store i32 %113, ptr %arrayidx.i138, align 4
  %114 = ptrtoint ptr %enq_ptr.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %enq_ptr.i, align 4
  %arrayidx.idx = shl i32 %115, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1008, i32 %arrayidx.idx)
  %cmp.i143 = icmp ugt i32 %arrayidx.idx, 1008
  br i1 %cmp.i143, label %trb_virt_to_phys.exit.thread, label %trb_virt_to_phys.exit, !prof !430

trb_virt_to_phys.exit.thread:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 893, i32 noundef 9, ptr noundef null) #9
  %116 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %1, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %117, i32 noundef 0) #9
  br label %if.else

trb_virt_to_phys.exit:                            ; preds = %if.then37
  %118 = ptrtoint ptr %transfer_ring_phys.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %transfer_ring_phys.i, align 4
  %add.i = add i32 %119, %arrayidx.idx
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %1, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %121, i32 noundef %add.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i)
  %cmp.i148 = icmp eq i32 %add.i, -1
  br i1 %cmp.i148, label %trb_virt_to_phys.exit.if.then65_crit_edge, label %trb_virt_to_phys.exit.if.else_crit_edge

trb_virt_to_phys.exit.if.else_crit_edge:          ; preds = %trb_virt_to_phys.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

trb_virt_to_phys.exit.if.then65_crit_edge:        ; preds = %trb_virt_to_phys.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then65

if.else:                                          ; preds = %trb_virt_to_phys.exit.if.else_crit_edge, %trb_virt_to_phys.exit.thread
  %retval.0.i147216.ph = phi i32 [ 0, %trb_virt_to_phys.exit.thread ], [ %add.i, %trb_virt_to_phys.exit.if.else_crit_edge ]
  %122 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %context, align 4
  %shr.i = and i32 %retval.0.i147216.ph, -16
  %deq_lo.i.i149 = getelementptr inbounds %struct.tegra_xudc_ep_context, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %deq_lo.i.i149 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %deq_lo.i.i149, align 4
  %126 = lshr i32 %125, 24
  %and.i.i150 = and i32 %126, 15
  %or.i.i151 = or i32 %and.i.i150, %shr.i
  %127 = tail call i32 @llvm.bswap.i32(i32 %or.i.i151) #9
  %128 = ptrtoint ptr %deq_lo.i.i149 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %deq_lo.i.i149, align 4
  %deq_hi.i.i152 = getelementptr inbounds %struct.tegra_xudc_ep_context, ptr %123, i32 0, i32 3
  %129 = ptrtoint ptr %deq_hi.i.i152 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %deq_hi.i.i152, align 4
  %130 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %context, align 4
  %132 = ptrtoint ptr %pcs12.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %pcs12.i, align 4, !range !429
  %134 = zext i8 %133 to i32
  %deq_lo.i153 = getelementptr inbounds %struct.tegra_xudc_ep_context, ptr %131, i32 0, i32 2
  %135 = ptrtoint ptr %deq_lo.i153 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %deq_lo.i153, align 4
  %137 = and i32 %136, -16777217
  %138 = tail call i32 @llvm.bswap.i32(i32 %137) #9
  %or.i = or i32 %138, %134
  %139 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %140 = ptrtoint ptr %deq_lo.i153 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %deq_lo.i153, align 4
  %index50 = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 2
  %141 = ptrtoint ptr %index50 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %index50, align 4
  tail call fastcc void @ep_reload(ptr noundef %1, i32 noundef %142)
  br label %if.then65

if.else53:                                        ; preds = %land.lhs.true14.i.if.else53_crit_edge, %land.lhs.true.i.if.else53_crit_edge
  %cmp24.not213 = xor i1 %cmp24, true
  %transfer_ring.i154 = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 5
  %143 = ptrtoint ptr %transfer_ring.i154 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %transfer_ring.i154, align 4
  %enq_ptr.i155 = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 7
  %145 = ptrtoint ptr %enq_ptr.i155 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %enq_ptr.i155, align 4
  %arrayidx.i156 = getelementptr %struct.tegra_xudc_trb, ptr %144, i32 %146
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trb_before_request.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__tegra_xudc_ep_dequeue, %do.end.i162)) #9
          to label %if.then.i159 [label %do.end.i162], !srcloc !437

if.then.i159:                                     ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #11
  %147 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ep, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %148, align 8
  %151 = ptrtoint ptr %first_trb4.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %first_trb4.i, align 4
  %153 = ptrtoint ptr %last_trb15.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %last_trb15.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trb_before_request.__UNIQUE_ID_ddebug308, ptr noundef %150, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.146, ptr noundef %152, ptr noundef %154, ptr noundef %arrayidx.i156, ptr noundef %retval.0.i) #9
  br label %do.end.i162

do.end.i162:                                      ; preds = %if.then.i159, %if.else53
  %155 = ptrtoint ptr %first_trb4.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %first_trb4.i, align 4
  %cmp.i161 = icmp ugt ptr %156, %retval.0.i
  br i1 %cmp.i161, label %land.lhs.true.i164, label %do.end.i162.if.end9.i_crit_edge

do.end.i162.if.end9.i_crit_edge:                  ; preds = %do.end.i162
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

land.lhs.true.i164:                               ; preds = %do.end.i162
  %cmp5.not.i = icmp ule ptr %arrayidx.i156, %retval.0.i
  %cmp7.i = icmp ult ptr %156, %arrayidx.i156
  %or.cond.i163 = select i1 %cmp5.not.i, i1 true, i1 %cmp7.i
  br i1 %or.cond.i163, label %trb_before_request.exit, label %land.lhs.true.i164.if.end9.i_crit_edge

land.lhs.true.i164.if.end9.i_crit_edge:           ; preds = %land.lhs.true.i164
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.end9.i:                                        ; preds = %land.lhs.true.i164.if.end9.i_crit_edge, %do.end.i162.if.end9.i_crit_edge
  %cmp11.i = icmp uge ptr %156, %retval.0.i
  %cmp14.i = icmp uge ptr %156, %arrayidx.i156
  %or.cond35.i = select i1 %cmp11.i, i1 true, i1 %cmp14.i
  %cmp16.not.i165 = icmp ugt ptr %arrayidx.i156, %retval.0.i
  %or.cond36.i = select i1 %or.cond35.i, i1 true, i1 %cmp16.not.i165
  %phi.sel = select i1 %or.cond36.i, i1 true, i1 %cmp24.not213
  br i1 %phi.sel, label %if.end9.i.if.end62_crit_edge, label %if.end9.i.if.then59_crit_edge

if.end9.i.if.then59_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then59

if.end9.i.if.end62_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

trb_before_request.exit:                          ; preds = %land.lhs.true.i164
  br i1 %cmp24, label %trb_before_request.exit.if.then59_crit_edge, label %trb_before_request.exit.if.end62_crit_edge

trb_before_request.exit.if.end62_crit_edge:       ; preds = %trb_before_request.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

trb_before_request.exit.if.then59_crit_edge:      ; preds = %trb_before_request.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then59

if.then59:                                        ; preds = %trb_before_request.exit.if.then59_crit_edge, %if.end9.i.if.then59_crit_edge
  %control.i.i168 = getelementptr inbounds %struct.tegra_xudc_trb, ptr %156, i32 0, i32 3
  %157 = ptrtoint ptr %control.i.i168 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %control.i.i168, align 4
  %159 = lshr i32 %158, 24
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  %162 = ptrtoint ptr %transfer_ring.i154 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %transfer_ring.i154, align 4
  %164 = ptrtoint ptr %enq_ptr.i155 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %enq_ptr.i155, align 4
  %arrayidx53.i171 = getelementptr %struct.tegra_xudc_trb, ptr %163, i32 %165
  %cmp.not54.i172 = icmp eq ptr %156, %arrayidx53.i171
  br i1 %cmp.not54.i172, label %if.then59.while.end.i197_crit_edge, label %if.then59.while.body.i180_crit_edge

if.then59.while.body.i180_crit_edge:              ; preds = %if.then59
  br label %while.body.i180

if.then59.while.end.i197_crit_edge:               ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i197

while.body.i180:                                  ; preds = %if.end.i185.while.body.i180_crit_edge, %if.then59.while.body.i180_crit_edge
  %trb.055.i173 = phi ptr [ %trb.1.i182, %if.end.i185.while.body.i180_crit_edge ], [ %156, %if.then59.while.body.i180_crit_edge ]
  %control.i48.i174 = getelementptr inbounds %struct.tegra_xudc_trb, ptr %trb.055.i173, i32 0, i32 3
  %166 = ptrtoint ptr %control.i48.i174 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %control.i48.i174, align 4
  %168 = call ptr @memset(ptr %trb.055.i173, i32 0, i32 12)
  %.lobit.i175 = and i32 %167, 16777216
  %or.i.i176 = xor i32 %.lobit.i175, 16777216
  store i32 %or.i.i176, ptr %control.i48.i174, align 4
  %incdec.ptr.i177 = getelementptr %struct.tegra_xudc_trb, ptr %trb.055.i173, i32 1
  %control.i51.i178 = getelementptr %struct.tegra_xudc_trb, ptr %trb.055.i173, i32 1, i32 3
  %169 = ptrtoint ptr %control.i51.i178 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %control.i51.i178, align 4
  %171 = and i32 %170, 16515072
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %171)
  %cmp6.i179 = icmp eq i32 %171, 1572864
  br i1 %cmp6.i179, label %if.then.i181, label %while.body.i180.if.end.i185_crit_edge

while.body.i180.if.end.i185_crit_edge:            ; preds = %while.body.i180
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i185

if.then.i181:                                     ; preds = %while.body.i180
  call void @__sanitizer_cov_trace_pc() #11
  %172 = ptrtoint ptr %transfer_ring.i154 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %transfer_ring.i154, align 4
  br label %if.end.i185

if.end.i185:                                      ; preds = %if.then.i181, %while.body.i180.if.end.i185_crit_edge
  %trb.1.i182 = phi ptr [ %173, %if.then.i181 ], [ %incdec.ptr.i177, %while.body.i180.if.end.i185_crit_edge ]
  %174 = ptrtoint ptr %transfer_ring.i154 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %transfer_ring.i154, align 4
  %176 = ptrtoint ptr %enq_ptr.i155 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %enq_ptr.i155, align 4
  %arrayidx.i183 = getelementptr %struct.tegra_xudc_trb, ptr %175, i32 %177
  %cmp.not.i184 = icmp eq ptr %trb.1.i182, %arrayidx.i183
  br i1 %cmp.not.i184, label %if.end.i185.while.end.i197_crit_edge, label %if.end.i185.while.body.i180_crit_edge

if.end.i185.while.body.i180_crit_edge:            ; preds = %if.end.i185
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i180

if.end.i185.while.end.i197_crit_edge:             ; preds = %if.end.i185
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i197

while.end.i197:                                   ; preds = %if.end.i185.while.end.i197_crit_edge, %if.then59.while.end.i197_crit_edge
  %.lcssa.i186 = phi ptr [ %163, %if.then59.while.end.i197_crit_edge ], [ %175, %if.end.i185.while.end.i197_crit_edge ]
  %178 = ptrtoint ptr %first_trb4.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %first_trb4.i, align 4
  %sub.ptr.lhs.cast.i187 = ptrtoint ptr %179 to i32
  %sub.ptr.rhs.cast.i188 = ptrtoint ptr %.lcssa.i186 to i32
  %sub.ptr.sub.i189 = sub i32 %sub.ptr.lhs.cast.i187, %sub.ptr.rhs.cast.i188
  %sub.ptr.div.i190 = ashr exact i32 %sub.ptr.sub.i189, 4
  %180 = ptrtoint ptr %enq_ptr.i155 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %sub.ptr.div.i190, ptr %enq_ptr.i155, align 4
  %pcs12.i191 = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 9
  %181 = ptrtoint ptr %pcs12.i191 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %161, ptr %pcs12.i191, align 4
  %ring_full.i192 = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 10
  %182 = ptrtoint ptr %ring_full.i192 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 0, ptr %ring_full.i192, align 1
  %list.i193 = getelementptr inbounds %struct.tegra_xudc_request, ptr %req, i32 0, i32 7
  %183 = ptrtoint ptr %list.i193 to i32
  call void @__asan_load4_noabort(i32 %183)
  %.pn56.i195 = load ptr, ptr %list.i193, align 4
  %cmp15.not57.i196 = icmp eq ptr %.pn56.i195, %queue
  br i1 %cmp15.not57.i196, label %while.end.i197.squeeze_transfer_ring.exit208_crit_edge, label %while.end.i197.for.body.i207_crit_edge

while.end.i197.for.body.i207_crit_edge:           ; preds = %while.end.i197
  br label %for.body.i207

while.end.i197.squeeze_transfer_ring.exit208_crit_edge: ; preds = %while.end.i197
  call void @__sanitizer_cov_trace_pc() #11
  br label %squeeze_transfer_ring.exit208

for.body.i207:                                    ; preds = %for.body.i207.for.body.i207_crit_edge, %while.end.i197.for.body.i207_crit_edge
  %.pn58.i198 = phi ptr [ %.pn.i205, %for.body.i207.for.body.i207_crit_edge ], [ %.pn56.i195, %while.end.i197.for.body.i207_crit_edge ]
  %status.i199 = getelementptr i8, ptr %.pn58.i198, i32 -32
  %184 = ptrtoint ptr %status.i199 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 -115, ptr %status.i199, align 4
  %actual.i200 = getelementptr i8, ptr %.pn58.i198, i32 -28
  %185 = ptrtoint ptr %actual.i200 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 0, ptr %actual.i200, align 4
  %first_trb19.i201 = getelementptr i8, ptr %.pn58.i198, i32 -8
  %186 = ptrtoint ptr %first_trb19.i201 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr null, ptr %first_trb19.i201, align 4
  %last_trb.i202 = getelementptr i8, ptr %.pn58.i198, i32 -4
  %187 = ptrtoint ptr %last_trb.i202 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr null, ptr %last_trb.i202, align 4
  %buf_queued.i203 = getelementptr i8, ptr %.pn58.i198, i32 -24
  %188 = ptrtoint ptr %buf_queued.i203 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 0, ptr %buf_queued.i203, align 4
  %trbs_queued.i204 = getelementptr i8, ptr %.pn58.i198, i32 -20
  %189 = ptrtoint ptr %trbs_queued.i204 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 0, ptr %trbs_queued.i204, align 4
  %190 = ptrtoint ptr %.pn58.i198 to i32
  call void @__asan_load4_noabort(i32 %190)
  %.pn.i205 = load ptr, ptr %.pn58.i198, align 4
  %cmp15.not.i206 = icmp eq ptr %.pn.i205, %queue
  br i1 %cmp15.not.i206, label %for.body.i207.squeeze_transfer_ring.exit208_crit_edge, label %for.body.i207.for.body.i207_crit_edge

for.body.i207.for.body.i207_crit_edge:            ; preds = %for.body.i207
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i207

for.body.i207.squeeze_transfer_ring.exit208_crit_edge: ; preds = %for.body.i207
  call void @__sanitizer_cov_trace_pc() #11
  br label %squeeze_transfer_ring.exit208

squeeze_transfer_ring.exit208:                    ; preds = %for.body.i207.squeeze_transfer_ring.exit208_crit_edge, %while.end.i197.squeeze_transfer_ring.exit208_crit_edge
  tail call fastcc void @tegra_xudc_req_done(ptr noundef %ep, ptr noundef %req, i32 noundef -104)
  br label %if.then65

if.end62:                                         ; preds = %trb_before_request.exit.if.end62_crit_edge, %if.end9.i.if.end62_crit_edge
  tail call fastcc void @tegra_xudc_req_done(ptr noundef %ep, ptr noundef %req, i32 noundef -104)
  %index63 = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 2
  %191 = ptrtoint ptr %index63 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %index63, align 4
  tail call fastcc void @ep_unpause(ptr noundef %1, i32 noundef %192)
  br label %cleanup

if.then65:                                        ; preds = %squeeze_transfer_ring.exit208, %if.else, %trb_virt_to_phys.exit.if.then65_crit_edge, %squeeze_transfer_ring.exit.if.then65_crit_edge
  %ret.1.ph = phi i32 [ -22, %trb_virt_to_phys.exit.if.then65_crit_edge ], [ 0, %squeeze_transfer_ring.exit.if.then65_crit_edge ], [ 0, %if.else ], [ 0, %squeeze_transfer_ring.exit208 ]
  %index63222 = getelementptr inbounds %struct.tegra_xudc_ep, ptr %ep, i32 0, i32 2
  %193 = ptrtoint ptr %index63222 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %index63222, align 4
  tail call fastcc void @ep_unpause(ptr noundef %1, i32 noundef %194)
  tail call fastcc void @tegra_xudc_ep_kick_queue(ptr noundef %ep)
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %if.end62, %if.then12, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then12 ], [ -22, %for.end.cleanup_crit_edge ], [ %ret.1.ph, %if.then65 ], [ -22, %if.end62 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_xudc_ep0_enable(ptr nocapture noundef readnone %usb_ep, ptr nocapture noundef readnone %desc) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_xudc_ep0_disable(ptr nocapture noundef readnone %usb_ep) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -16
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_xudc_device_mode_on(ptr nocapture noundef readonly %xudc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xudc, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #9
  %curr_utmi_phy = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 46
  %2 = ptrtoint ptr %curr_utmi_phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curr_utmi_phy, align 8
  %call1 = tail call i32 @phy_power_on(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.151, i32 noundef %call1) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %curr_usb3_phy = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 44
  %6 = ptrtoint ptr %curr_usb3_phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %curr_usb3_phy, align 8
  %call3 = tail call i32 @phy_power_on(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end.do.body11_crit_edge

if.end.do.body11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.154, i32 noundef %call3) #12
  br label %do.body11

do.body11:                                        ; preds = %do.end8, %if.end.do.body11_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_device_mode_on.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_device_mode_on, %do.end20)) #9
          to label %if.then16 [label %do.end20], !srcloc !437

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_device_mode_on.__UNIQUE_ID_ddebug296, ptr noundef %11, ptr noundef nonnull @.str.156) #9
  br label %do.end20

do.end20:                                         ; preds = %if.then16, %do.body11
  %12 = ptrtoint ptr %curr_utmi_phy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %curr_utmi_phy, align 8
  %call22 = tail call i32 @phy_set_mode_ext(ptr noundef %13, i32 noundef 11, i32 noundef 2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_xudc_device_mode_off(ptr noundef %xudc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_device_mode_off.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_device_mode_off, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !437

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_device_mode_off.__UNIQUE_ID_ddebug297, ptr noundef %1, ptr noundef nonnull @.str.158) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %base.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 35
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 60
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  %disconnect_complete = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 53
  %6 = ptrtoint ptr %disconnect_complete to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %disconnect_complete, align 4
  %soc = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 1
  %7 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %soc, align 4
  %port_speed_quirk = getelementptr inbounds %struct.tegra_xudc_soc, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %port_speed_quirk to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %port_speed_quirk, align 2, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool11.not = icmp eq i8 %10, 0
  br i1 %tobool11.not, label %do.end.if.end13_crit_edge, label %if.then12

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 1788
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %14 = and i32 %13, 61695
  %15 = or i32 %14, 939786240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i45.i = getelementptr i8, ptr %17, i32 1788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i, i32 %15) #9, !srcloc !436
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i47.i = getelementptr i8, ptr %19, i32 1792
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %21 = and i32 %20, 61695
  %22 = or i32 %21, 671416320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %add.ptr.i49.i = getelementptr i8, ptr %24, i32 1792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49.i, i32 %22) #9, !srcloc !436
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %add.ptr.i51.i = getelementptr i8, ptr %26, i32 1824
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %28 = and i32 %27, 61695
  %29 = or i32 %28, 269352960
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  %add.ptr.i53.i = getelementptr i8, ptr %31, i32 1828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i, i32 %29) #9, !srcloc !436
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr.i55.i = getelementptr i8, ptr %33, i32 1828
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %35 = and i32 %34, 61695
  %36 = or i32 %35, 1208156160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 4
  %add.ptr.i57.i = getelementptr i8, ptr %38, i32 1828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57.i, i32 %36) #9, !srcloc !436
  %39 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %40, i32 1832
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %42 = and i32 %41, 61695
  %43 = or i32 %42, -1610285056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 4
  %add.ptr.i61.i = getelementptr i8, ptr %45, i32 1832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i, i32 %43) #9, !srcloc !436
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %add.ptr.i63.i = getelementptr i8, ptr %47, i32 1852
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %49 = and i32 %48, 61695
  %50 = or i32 %49, 555483136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %51 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i, align 4
  %add.ptr.i65.i = getelementptr i8, ptr %52, i32 1852
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65.i, i32 %50) #9, !srcloc !436
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %do.end.if.end13_crit_edge
  %curr_utmi_phy = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 46
  %53 = ptrtoint ptr %curr_utmi_phy to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %curr_utmi_phy, align 8
  %call14 = tail call i32 @phy_set_mode_ext(ptr noundef %54, i32 noundef 11, i32 noundef 0) #9
  %55 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i, align 4
  %add.ptr.i79 = getelementptr i8, ptr %56, i32 60
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79) #9, !srcloc !433
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %and16 = lshr i32 %58, 5
  %shr = and i32 %and16, 15
  %59 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %soc, align 4
  %pls_quirk = getelementptr inbounds %struct.tegra_xudc_soc, ptr %60, i32 0, i32 9
  %61 = ptrtoint ptr %pls_quirk to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %pls_quirk, align 4, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool18.not = icmp eq i8 %62, 0
  br i1 %tobool18.not, label %if.end13.if.end27_crit_edge, label %land.lhs.true

if.end13.if.end27_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end13
  %speed = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 4, i32 5
  %63 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %64)
  %cmp = icmp eq i32 %64, 5
  br i1 %cmp, label %land.lhs.true19, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

land.lhs.true19:                                  ; preds = %land.lhs.true
  %65 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.208)
  switch i32 %shr, label %land.lhs.true19.if.end27_crit_edge [
    i32 15, label %land.lhs.true19.if.then22_crit_edge
    i32 2, label %land.lhs.true19.if.then22_crit_edge89
  ]

land.lhs.true19.if.then22_crit_edge89:            ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

land.lhs.true19.if.then22_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

land.lhs.true19.if.end27_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then22:                                        ; preds = %land.lhs.true19.if.then22_crit_edge, %land.lhs.true19.if.then22_crit_edge89
  %66 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i, align 4
  %add.ptr.i81 = getelementptr i8, ptr %67, i32 76
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %69 = or i32 %68, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %70 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i, align 4
  %add.ptr.i83 = getelementptr i8, ptr %71, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 %69) #9, !srcloc !436
  %72 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base.i, align 4
  %add.ptr.i85 = getelementptr i8, ptr %73, i32 60
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %75 = and i32 %74, 536745215
  %76 = or i32 %75, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %77 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i, align 4
  %add.ptr.i87 = getelementptr i8, ptr %78, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 %76) #9, !srcloc !436
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %land.lhs.true19.if.end27_crit_edge, %land.lhs.true.if.end27_crit_edge, %if.end13.if.end27_crit_edge
  br i1 %tobool5.not, label %if.end27.if.end31_crit_edge, label %if.then29

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @wait_for_completion(ptr noundef %disconnect_complete) #9
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end27.if.end31_crit_edge
  %irq = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 34
  %79 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %irq, align 8
  tail call void @synchronize_irq(i32 noundef %80) #9
  %81 = ptrtoint ptr %curr_utmi_phy to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %curr_utmi_phy, align 8
  %call33 = tail call i32 @phy_power_off(ptr noundef %82) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %do.end38, label %if.end31.if.end40_crit_edge

if.end31.if.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.159, i32 noundef %call33) #12
  br label %if.end40

if.end40:                                         ; preds = %do.end38, %if.end31.if.end40_crit_edge
  %curr_usb3_phy = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 44
  %85 = ptrtoint ptr %curr_usb3_phy to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %curr_usb3_phy, align 8
  %call41 = tail call i32 @phy_power_off(ptr noundef %86) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %do.end46, label %if.end40.if.end48_crit_edge

if.end40.if.end48_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %87 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.161, i32 noundef %call41) #12
  br label %if.end48

if.end48:                                         ; preds = %do.end46, %if.end40.if.end48_crit_edge
  %89 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %xudc, align 8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %90, i32 noundef 5) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_phy_xusb_utmi_port_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xudc_gadget_get_frame(ptr noundef %gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %gadget, i32 -44
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %powergated = getelementptr i8, ptr %gadget, i32 4469
  %0 = ptrtoint ptr %powergated to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %powergated, align 1, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %base.i = getelementptr i8, ptr %gadget, i32 4372
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %3, i32 72
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #9, !srcloc !433
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %and = lshr i32 %5, 3
  %shr = and i32 %and, 2047
  br label %unlock

unlock:                                           ; preds = %if.end, %entry.unlock_crit_edge
  %ret.0 = phi i32 [ %shr, %if.end ], [ -108, %entry.unlock_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xudc_gadget_wakeup(ptr noundef %gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %gadget, i32 -56
  %lock = getelementptr i8, ptr %gadget, i32 -44
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %powergated = getelementptr i8, ptr %gadget, i32 4469
  %0 = ptrtoint ptr %powergated to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %powergated, align 1, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.do.body38_crit_edge

entry.do.body38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body38

if.end:                                           ; preds = %entry
  %base.i = getelementptr i8, ptr %gadget, i32 4372
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i78 = getelementptr i8, ptr %3, i32 76
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78) #9, !srcloc !433
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_gadget_wakeup.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_gadget_wakeup, %do.end17)) #9
          to label %if.then14 [label %do.end17], !srcloc !437

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 5
  %8 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_gadget_wakeup.__UNIQUE_ID_ddebug310, ptr noundef %7, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.168, i32 noundef %5, i32 noundef %9) #9
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %if.end
  %speed19 = getelementptr i8, ptr %gadget, i32 64
  %10 = ptrtoint ptr %speed19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp20 = icmp ugt i32 %11, 3
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp20, i1 true, i1 %tobool22.not
  br i1 %or.cond, label %lor.lhs.false, label %do.end17.if.then30_crit_edge

do.end17.if.then30_crit_edge:                     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

lor.lhs.false:                                    ; preds = %do.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %11)
  %cmp25 = icmp ne i32 %11, 5
  %and28 = and i32 %5, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %or.cond74 = select i1 %cmp25, i1 true, i1 %tobool29.not
  br i1 %or.cond74, label %lor.lhs.false.do.body38_crit_edge, label %lor.lhs.false.if.then30_crit_edge

lor.lhs.false.if.then30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

lor.lhs.false.do.body38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body38

if.then30:                                        ; preds = %lor.lhs.false.if.then30_crit_edge, %do.end17.if.then30_crit_edge
  tail call fastcc void @tegra_xudc_resume_device_state(ptr noundef %add.ptr.i)
  %12 = ptrtoint ptr %speed19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %cmp33 = icmp eq i32 %13, 5
  br i1 %cmp33, label %if.then35, label %if.then30.do.body38_crit_edge

if.then30.do.body38_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body38

if.then35:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %15, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80, i32 0) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i82 = getelementptr i8, ptr %17, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82, i32 285212672) #9, !srcloc !436
  br label %do.body38

do.body38:                                        ; preds = %if.then35, %if.then30.do.body38_crit_edge, %lor.lhs.false.do.body38_crit_edge, %entry.do.body38_crit_edge
  %ret.0 = phi i32 [ 0, %if.then35 ], [ 0, %if.then30.do.body38_crit_edge ], [ 0, %lor.lhs.false.do.body38_crit_edge ], [ -108, %entry.do.body38_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_gadget_wakeup.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_gadget_wakeup, %do.end56)) #9
          to label %if.then52 [label %do.end56], !srcloc !437

if.then52:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_gadget_wakeup.__UNIQUE_ID_ddebug311, ptr noundef %19, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.168, i32 noundef %ret.0) #9
  br label %do.end56

do.end56:                                         ; preds = %if.then52, %do.body38
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xudc_set_selfpowered(ptr nocapture noundef %gadget, i32 noundef %is_on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_set_selfpowered.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_set_selfpowered, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !437

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %gadget, i32 -56
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_set_selfpowered.__UNIQUE_ID_ddebug316, ptr noundef %1, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.171, i32 noundef %is_on) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool5 = icmp ne i32 %is_on, 0
  %selfpowered = getelementptr i8, ptr %gadget, i32 4548
  %frombool10 = zext i1 %tobool5 to i8
  %2 = ptrtoint ptr %selfpowered to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool10, ptr %selfpowered, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xudc_gadget_vbus_draw(ptr nocapture noundef readonly %gadget, i32 noundef %m_a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_gadget_vbus_draw.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_gadget_vbus_draw, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !437

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %gadget, i32 -56
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_gadget_vbus_draw.__UNIQUE_ID_ddebug315, ptr noundef %1, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.173, i32 noundef %m_a) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %curr_usbphy = getelementptr i8, ptr %gadget, i32 4476
  %2 = ptrtoint ptr %curr_usbphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curr_usbphy, align 4
  %chg_type = getelementptr inbounds %struct.usb_phy, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %chg_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chg_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp ne i32 %5, 1
  %tobool.not.i = icmp eq ptr %3, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not.i
  br i1 %or.cond, label %do.end.if.end8_crit_edge, label %if.end.i

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end.i:                                         ; preds = %do.end
  tail call void @usb_phy_set_charger_current(ptr noundef nonnull %3, i32 noundef %m_a) #9
  %set_power.i = getelementptr inbounds %struct.usb_phy, ptr %3, i32 0, i32 25
  %6 = ptrtoint ptr %set_power.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_power.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.end.i.if.end8_crit_edge, label %if.then2.i

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %7(ptr noundef nonnull %3, i32 noundef %m_a) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then2.i, %if.end.i.if.end8_crit_edge, %do.end.if.end8_crit_edge
  %ret.0 = phi i32 [ 0, %do.end.if.end8_crit_edge ], [ %call.i, %if.then2.i ], [ 0, %if.end.i.if.end8_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xudc_gadget_pullup(ptr noundef %gadget, i32 noundef %is_on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %gadget, i32 -56
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #9
  %lock = getelementptr i8, ptr %gadget, i32 -44
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %pullup = getelementptr i8, ptr %gadget, i32 4348
  %2 = ptrtoint ptr %pullup to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pullup, align 4, !range !429
  %4 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %is_on)
  %cmp8.not = icmp eq i32 %4, %is_on
  br i1 %cmp8.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %base.i = getelementptr i8, ptr %gadget, i32 4372
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %6, i32 48
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool11.not = icmp eq i32 %is_on, 0
  %8 = and i32 %7, -129
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %masksel = select i1 %tobool11.not, i32 0, i32 -2147483648
  %val.0 = or i32 %9, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %10 = tail call i32 @llvm.bswap.i32(i32 %val.0) #9
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %12, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 %10) #9, !srcloc !436
  br label %if.end13

if.end13:                                         ; preds = %if.then, %entry.if.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool14 = icmp ne i32 %is_on, 0
  %frombool = zext i1 %tobool14 to i8
  %13 = ptrtoint ptr %pullup to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool, ptr %pullup, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_gadget_pullup.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_gadget_pullup, %do.end28)) #9
          to label %if.then24 [label %do.end28], !srcloc !437

if.then24:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_gadget_pullup.__UNIQUE_ID_ddebug312, ptr noundef %15, ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.175, i32 noundef %is_on) #9
  br label %do.end28

do.end28:                                         ; preds = %if.then24, %if.end13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  %call.i48 = tail call i32 @__pm_runtime_idle(ptr noundef %17, i32 noundef 5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xudc_gadget_start(ptr noundef %gadget, ptr noundef %driver) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %gadget, i32 -56
  %tobool.not = icmp eq ptr %driver, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #9
  %lock = getelementptr i8, ptr %gadget, i32 -44
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %driver7 = getelementptr i8, ptr %gadget, i32 1048
  %2 = ptrtoint ptr %driver7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver7, align 8
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %if.end10, label %if.end.do.body36_crit_edge

if.end.do.body36_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body36

if.end10:                                         ; preds = %if.end
  %setup_state = getelementptr i8, ptr %gadget, i32 4324
  %4 = ptrtoint ptr %setup_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %setup_state, align 4
  %device_state = getelementptr i8, ptr %gadget, i32 4360
  %5 = ptrtoint ptr %device_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 5, ptr %device_state, align 8
  tail call void @usb_gadget_set_state(ptr noundef %gadget, i32 noundef 5) #9
  %ep = getelementptr i8, ptr %gadget, i32 1080
  %call13 = tail call fastcc i32 @__tegra_xudc_ep_enable(ptr noundef %ep, ptr noundef nonnull @tegra_xudc_ep0_desc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end10.do.body36_crit_edge, label %if.end17

if.end10.do.body36_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body36

if.end17:                                         ; preds = %if.end10
  %base.i = getelementptr i8, ptr %gadget, i32 4372
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i88 = getelementptr i8, ptr %7, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %9 = or i32 %8, 301989888
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i90 = getelementptr i8, ptr %11, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 %9) #9, !srcloc !436
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i92 = getelementptr i8, ptr %13, i32 108
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %15 = or i32 %14, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i94 = getelementptr i8, ptr %17, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 %15) #9, !srcloc !436
  %pullup = getelementptr i8, ptr %gadget, i32 4348
  %18 = ptrtoint ptr %pullup to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pullup, align 4, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool21.not = icmp eq i8 %19, 0
  br i1 %tobool21.not, label %if.end17.if.end25_crit_edge, label %if.then22

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i96 = getelementptr i8, ptr %21, i32 48
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i96) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %23 = or i32 %22, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr.i98 = getelementptr i8, ptr %25, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98, i32 %23) #9, !srcloc !436
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end17.if.end25_crit_edge
  %soc = getelementptr i8, ptr %gadget, i32 -52
  %26 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %soc, align 4
  %num_phys102 = getelementptr inbounds %struct.tegra_xudc_soc, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %num_phys102 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_phys102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp26103.not = icmp eq i32 %29, 0
  br i1 %cmp26103.not, label %if.end25.for.end_crit_edge, label %for.body.lr.ph

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end25
  %usbphy = getelementptr i8, ptr %gadget, i32 4472
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0104 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %30 = ptrtoint ptr %usbphy to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usbphy, align 8
  %arrayidx28 = getelementptr ptr, ptr %31, i32 %i.0104
  %32 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx28, align 4
  %tobool29.not = icmp eq ptr %33, null
  br i1 %tobool29.not, label %for.body.for.inc_crit_edge, label %if.then30

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then30:                                        ; preds = %for.body
  %otg = getelementptr inbounds %struct.usb_phy, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %otg, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %if.then30.for.inc_crit_edge, label %land.lhs.true.i

if.then30.for.inc_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true.i:                                  ; preds = %if.then30
  %set_peripheral.i = getelementptr inbounds %struct.usb_otg, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %set_peripheral.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %set_peripheral.i, align 4
  %tobool1.not.i = icmp eq ptr %37, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.for.inc_crit_edge, label %if.then.i

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i99 = tail call i32 %37(ptr noundef nonnull %35, ptr noundef %gadget) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %land.lhs.true.i.for.inc_crit_edge, %if.then30.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0104, 1
  %38 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %soc, align 4
  %num_phys = getelementptr inbounds %struct.tegra_xudc_soc, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_phys, align 4
  %cmp26 = icmp ult i32 %inc, %41
  br i1 %cmp26, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end25.for.end_crit_edge
  %42 = ptrtoint ptr %driver7 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %driver, ptr %driver7, align 8
  br label %do.body36

do.body36:                                        ; preds = %for.end, %if.end10.do.body36_crit_edge, %if.end.do.body36_crit_edge
  %ret.0 = phi i32 [ %call13, %if.end10.do.body36_crit_edge ], [ %call13, %for.end ], [ -16, %if.end.do.body36_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_gadget_start.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_gadget_start, %do.end47)) #9
          to label %if.then43 [label %do.end47], !srcloc !437

if.then43:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_gadget_start.__UNIQUE_ID_ddebug313, ptr noundef %44, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.177, i32 noundef %ret.0) #9
  br label %do.end47

do.end47:                                         ; preds = %if.then43, %do.body36
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr.i, align 8
  %call.i100 = tail call i32 @__pm_runtime_idle(ptr noundef %46, i32 noundef 5) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end47 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xudc_gadget_stop(ptr noundef %gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %gadget, i32 -56
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #9
  %lock = getelementptr i8, ptr %gadget, i32 -44
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %soc = getelementptr i8, ptr %gadget, i32 -52
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc, align 4
  %num_phys51 = getelementptr inbounds %struct.tegra_xudc_soc, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %num_phys51 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_phys51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp752.not = icmp eq i32 %5, 0
  br i1 %cmp752.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %usbphy = getelementptr i8, ptr %gadget, i32 4472
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %usbphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usbphy, align 8
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.053
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  %otg = getelementptr inbounds %struct.usb_phy, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %otg, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.for.inc_crit_edge, label %land.lhs.true.i

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true.i:                                  ; preds = %if.then
  %set_peripheral.i = getelementptr inbounds %struct.usb_otg, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %set_peripheral.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_peripheral.i, align 4
  %tobool1.not.i = icmp eq ptr %13, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.for.inc_crit_edge, label %if.then.i

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i45 = tail call i32 %13(ptr noundef nonnull %11, ptr noundef null) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %land.lhs.true.i.for.inc_crit_edge, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.053, 1
  %14 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %soc, align 4
  %num_phys = getelementptr inbounds %struct.tegra_xudc_soc, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_phys, align 4
  %cmp7 = icmp ult i32 %inc, %17
  br i1 %cmp7, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %base.i = getelementptr i8, ptr %gadget, i32 4372
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %19, i32 48
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %21 = and i32 %20, -268435585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %23, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %21) #9, !srcloc !436
  %ep = getelementptr i8, ptr %gadget, i32 1080
  %call14 = tail call fastcc i32 @__tegra_xudc_ep_disable(ptr noundef %ep)
  %driver = getelementptr i8, ptr %gadget, i32 1048
  %24 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %driver, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_gadget_stop.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_gadget_stop, %do.end26)) #9
          to label %if.then22 [label %do.end26], !srcloc !437

if.then22:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_gadget_stop.__UNIQUE_ID_ddebug314, ptr noundef %26, ptr noundef nonnull @.str.179) #9
  br label %do.end26

do.end26:                                         ; preds = %if.then22, %for.end
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 8
  %call.i49 = tail call i32 @__pm_runtime_idle(ptr noundef %28, i32 noundef 5) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_phy_set_charger_current(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_link_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_detach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xudc_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %suspended = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %suspended, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  %usb_role_sw_work = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 42
  %call7 = tail call zeroext i1 @flush_work(ptr noundef %usb_role_sw_work) #9
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %3 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.i = icmp eq i32 %4, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tegra_xudc_device_mode_off(ptr noundef %1)
  tail call fastcc void @tegra_xudc_powergate(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xudc_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @tegra_xudc_unpowergate(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 3
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %suspended = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %suspended, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #9
  %usb_role_sw_work = getelementptr inbounds %struct.tegra_xudc, ptr %1, i32 0, i32 42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %usb_role_sw_work) #9
  tail call void @pm_runtime_enable(ptr noundef %dev) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body2 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xudc_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @tegra_xudc_powergate(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_xudc_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @tegra_xudc_unpowergate(ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_xudc_powergate(ptr noundef %xudc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_powergate.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_powergate, %do.body5)) #9
          to label %if.then [label %do.body5], !srcloc !437

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_powergate.__UNIQUE_ID_ddebug337, ptr noundef %1, ptr noundef nonnull @.str.186) #9
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 3
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %powergated = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 49
  %2 = ptrtoint ptr %powergated to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %powergated, align 1
  %base.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 35
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 48
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !433
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %saved_regs = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 47
  %7 = ptrtoint ptr %saved_regs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %saved_regs, align 4
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %9, i32 76
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #9, !srcloc !433
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %portpm = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 47, i32 1
  %12 = ptrtoint ptr %portpm to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %portpm, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %14, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 0) #9, !srcloc !436
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #9
  %soc = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 1
  %15 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %soc, align 4
  %num_clks = getelementptr inbounds %struct.tegra_xudc_soc, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 40
  %19 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clks, align 8
  tail call void @clk_bulk_disable(i32 noundef %18, ptr noundef %20) #9
  tail call void @clk_bulk_unprepare(i32 noundef %18, ptr noundef %20) #9
  %21 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %soc, align 4
  %num_supplies = getelementptr inbounds %struct.tegra_xudc_soc, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %num_supplies to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_supplies, align 4
  %supplies = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 39
  %25 = ptrtoint ptr %supplies to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %supplies, align 4
  %call18 = tail call i32 @regulator_bulk_disable(i32 noundef %24, ptr noundef %26) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_powergate.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_powergate, %do.end37)) #9
          to label %if.then33 [label %do.end37], !srcloc !437

if.then33:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_powergate.__UNIQUE_ID_ddebug338, ptr noundef %28, ptr noundef nonnull @.str.187) #9
  br label %do.end37

do.end37:                                         ; preds = %if.then33, %do.body5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_xudc_unpowergate(ptr noundef %xudc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_unpowergate.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_unpowergate, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !437

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_unpowergate.__UNIQUE_ID_ddebug339, ptr noundef %1, ptr noundef nonnull @.str.189) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %soc = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 1
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc, align 4
  %num_supplies = getelementptr inbounds %struct.tegra_xudc_soc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %num_supplies to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_supplies, align 4
  %supplies = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 39
  %6 = ptrtoint ptr %supplies to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %supplies, align 4
  %call4 = tail call i32 @regulator_bulk_enable(i32 noundef %5, ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %8 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soc, align 4
  %num_clks = getelementptr inbounds %struct.tegra_xudc_soc, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 40
  %12 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clks, align 8
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef %11, ptr noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end6.clk_bulk_prepare_enable.exit_crit_edge

if.end6.clk_bulk_prepare_enable.exit_crit_edge:   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_bulk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end6
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %11, ptr noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end11_crit_edge, label %if.then3.i

if.end.i.if.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_bulk_unprepare(i32 noundef %11, ptr noundef %13) #9
  br label %clk_bulk_prepare_enable.exit

clk_bulk_prepare_enable.exit:                     ; preds = %if.then3.i, %if.end6.clk_bulk_prepare_enable.exit_crit_edge
  %retval.0.i66 = phi i32 [ %call.i, %if.end6.clk_bulk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i66)
  %cmp9 = icmp slt i32 %retval.0.i66, 0
  br i1 %cmp9, label %clk_bulk_prepare_enable.exit.cleanup_crit_edge, label %clk_bulk_prepare_enable.exit.if.end11_crit_edge

clk_bulk_prepare_enable.exit.if.end11_crit_edge:  ; preds = %clk_bulk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

clk_bulk_prepare_enable.exit.cleanup_crit_edge:   ; preds = %clk_bulk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %clk_bulk_prepare_enable.exit.if.end11_crit_edge, %if.end.i.if.end11_crit_edge
  %14 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %soc, align 4
  %has_ipfs.i = getelementptr inbounds %struct.tegra_xudc_soc, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %has_ipfs.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %has_ipfs.i, align 1, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i67 = icmp eq i8 %17, 0
  br i1 %tobool.not.i67, label %if.end11.if.end.i68_crit_edge, label %if.then.i

if.end11.if.end.i68_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i68

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %ipfs.i.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 37
  %18 = ptrtoint ptr %ipfs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ipfs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 384
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  %21 = or i32 %20, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !442
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %ipfs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ipfs.i.i, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %23, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 %21) #9, !srcloc !436
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 15, i32 noundef 2) #9
  br label %if.end.i68

if.end.i68:                                       ; preds = %if.then.i, %if.end11.if.end.i68_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !443
  tail call void @arm_heavy_mb() #9
  %fpci.i.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 38
  %24 = ptrtoint ptr %fpci.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fpci.i.i, align 8
  %add.ptr.i33.i = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.i, i32 117440512) #9, !srcloc !436
  %26 = ptrtoint ptr %fpci.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fpci.i.i, align 8
  %add.ptr.i35.i = getelementptr i8, ptr %27, i32 16
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  %29 = and i32 %28, -8454144
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #9
  %phys_base.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 36
  %31 = ptrtoint ptr %phys_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %phys_base.i, align 8
  %and2.i = and i32 %32, -32768
  %or3.i = or i32 %and2.i, %30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !443
  tail call void @arm_heavy_mb() #9
  %33 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #9
  %34 = ptrtoint ptr %fpci.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fpci.i.i, align 8
  %add.ptr.i37.i = getelementptr i8, ptr %35, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37.i, i32 %33) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !443
  tail call void @arm_heavy_mb() #9
  %36 = ptrtoint ptr %fpci.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fpci.i.i, align 8
  %add.ptr.i39.i = getelementptr i8, ptr %37, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i, i32 0) #9, !srcloc !436
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #9
  %38 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %soc, align 4
  %has_ipfs7.i = getelementptr inbounds %struct.tegra_xudc_soc, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %has_ipfs7.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %has_ipfs7.i, align 1, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool8.not.i = icmp eq i8 %41, 0
  br i1 %tobool8.not.i, label %if.end.i68.tegra_xudc_fpci_ipfs_init.exit_crit_edge, label %if.then9.i

if.end.i68.tegra_xudc_fpci_ipfs_init.exit_crit_edge: ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_xudc_fpci_ipfs_init.exit

if.then9.i:                                       ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #11
  %ipfs.i40.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 37
  %42 = ptrtoint ptr %ipfs.i40.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ipfs.i40.i, align 4
  %add.ptr.i41.i = getelementptr i8, ptr %43, i32 392
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  %45 = or i32 %44, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !442
  tail call void @arm_heavy_mb() #9
  %46 = ptrtoint ptr %ipfs.i40.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ipfs.i40.i, align 4
  %add.ptr.i43.i = getelementptr i8, ptr %47, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43.i, i32 %45) #9, !srcloc !436
  br label %tegra_xudc_fpci_ipfs_init.exit

tegra_xudc_fpci_ipfs_init.exit:                   ; preds = %if.then9.i, %if.end.i68.tegra_xudc_fpci_ipfs_init.exit_crit_edge
  %48 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %soc, align 4
  %has_ipfs.i70 = getelementptr inbounds %struct.tegra_xudc_soc, ptr %49, i32 0, i32 12
  %50 = ptrtoint ptr %has_ipfs.i70 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %has_ipfs.i70, align 1, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i71 = icmp eq i8 %51, 0
  br i1 %tobool.not.i71, label %tegra_xudc_fpci_ipfs_init.exit.if.end.i74_crit_edge, label %if.then.i73

tegra_xudc_fpci_ipfs_init.exit.if.end.i74_crit_edge: ; preds = %tegra_xudc_fpci_ipfs_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i74

if.then.i73:                                      ; preds = %tegra_xudc_fpci_ipfs_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %base.i.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 35
  %52 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i72 = getelementptr i8, ptr %53, i32 2112
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i72) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %55 = and i32 %54, 15794175
  %56 = or i32 %55, -133300224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %57 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i127.i = getelementptr i8, ptr %58, i32 2112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127.i, i32 %56) #9, !srcloc !436
  br label %if.end.i74

if.end.i74:                                       ; preds = %if.then.i73, %tegra_xudc_fpci_ipfs_init.exit.if.end.i74_crit_edge
  %59 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %soc, align 4
  %port_speed_quirk.i = getelementptr inbounds %struct.tegra_xudc_soc, ptr %60, i32 0, i32 11
  %61 = ptrtoint ptr %port_speed_quirk.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %port_speed_quirk.i, align 2, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool5.not.i = icmp eq i8 %62, 0
  br i1 %tobool5.not.i, label %if.end.i74.if.end7.i_crit_edge, label %if.then6.i

if.end.i74.if.end7.i_crit_edge:                   ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #11
  %base.i.i.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 35
  %63 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %64, i32 1788
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %66 = and i32 %65, 61695
  %67 = or i32 %66, 1610743808
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %68 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i45.i.i = getelementptr i8, ptr %69, i32 1788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i.i, i32 %67) #9, !srcloc !436
  %70 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i47.i.i = getelementptr i8, ptr %71, i32 1792
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.i.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %73 = and i32 %72, 61695
  %74 = or i32 %73, -704249856
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %75 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i49.i.i = getelementptr i8, ptr %76, i32 1792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49.i.i, i32 %74) #9, !srcloc !436
  %77 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i51.i.i = getelementptr i8, ptr %78, i32 1824
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51.i.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %80 = and i32 %79, 61695
  %81 = or i32 %80, -1341915136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %82 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i53.i.i = getelementptr i8, ptr %83, i32 1828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i.i, i32 %81) #9, !srcloc !436
  %84 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i55.i.i = getelementptr i8, ptr %85, i32 1828
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55.i.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %87 = and i32 %86, 61695
  %88 = or i32 %87, -1341915136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %89 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i57.i.i = getelementptr i8, ptr %90, i32 1828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57.i.i, i32 %88) #9, !srcloc !436
  %91 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i59.i.i = getelementptr i8, ptr %92, i32 1832
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59.i.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %94 = and i32 %93, 61695
  %95 = or i32 %94, -1341915136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %96 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i61.i.i = getelementptr i8, ptr %97, i32 1832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i.i, i32 %95) #9, !srcloc !436
  %98 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i63.i.i = getelementptr i8, ptr %99, i32 1852
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63.i.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %101 = and i32 %100, 61695
  %102 = or i32 %101, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %103 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i65.i.i = getelementptr i8, ptr %104, i32 1852
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65.i.i, i32 %102) #9, !srcloc !436
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end.i74.if.end7.i_crit_edge
  %base.i128.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 35
  %105 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i129.i = getelementptr i8, ptr %106, i32 1872
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i129.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %108 = and i32 %107, 61695
  %109 = or i32 %108, -1067646976
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %110 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i131.i = getelementptr i8, ptr %111, i32 1872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131.i, i32 %109) #9, !srcloc !436
  %112 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i133.i = getelementptr i8, ptr %113, i32 1552
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i133.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %115 = and i32 %114, 16777215
  %116 = or i32 %115, 167772160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %117 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i135.i = getelementptr i8, ptr %118, i32 1552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135.i, i32 %116) #9, !srcloc !436
  %119 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i137.i = getelementptr i8, ptr %120, i32 1672
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i137.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %122 = and i32 %121, 61695
  %123 = or i32 %122, 2013855744
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %124 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i139.i = getelementptr i8, ptr %125, i32 1672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139.i, i32 %123) #9, !srcloc !436
  %126 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %soc, align 4
  %lpm_enable.i = getelementptr inbounds %struct.tegra_xudc_soc, ptr %127, i32 0, i32 7
  %128 = ptrtoint ptr %lpm_enable.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %lpm_enable.i, align 2, !range !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool18.not.i = icmp eq i8 %129, 0
  br i1 %tobool18.not.i, label %if.end7.i.tegra_xudc_device_params_init.exit_crit_edge, label %if.then19.i

if.end7.i.tegra_xudc_device_params_init.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_xudc_device_params_init.exit

if.then19.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %130 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i141.i = getelementptr i8, ptr %131, i32 308
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i141.i) #9, !srcloc !433
  %133 = shl i32 %132, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %and21.i = and i32 %133, -1073741824
  %or22.i = or i32 %and21.i, 11400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %134 = tail call i32 @llvm.bswap.i32(i32 %or22.i) #9
  %135 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i143.i = getelementptr i8, ptr %136, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143.i, i32 %134) #9, !srcloc !436
  br label %tegra_xudc_device_params_init.exit

tegra_xudc_device_params_init.exit:               ; preds = %if.then19.i, %if.end7.i.tegra_xudc_device_params_init.exit_crit_edge
  %137 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i145.i = getelementptr i8, ptr %138, i32 1680
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i145.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %140 = and i32 %139, 16777215
  %141 = or i32 %140, -1342177280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %142 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i147.i = getelementptr i8, ptr %143, i32 1680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147.i, i32 %141) #9, !srcloc !436
  %144 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i149.i = getelementptr i8, ptr %145, i32 2140
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i149.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %147 = and i32 %146, -50331649
  %148 = or i32 %147, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %149 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i151.i = getelementptr i8, ptr %150, i32 2140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i151.i, i32 %148) #9, !srcloc !436
  %151 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i153.i = getelementptr i8, ptr %152, i32 60
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i153.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %154 = and i32 %153, 536745215
  %155 = or i32 %154, -1610612480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %156 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i155.i = getelementptr i8, ptr %157, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155.i, i32 %155) #9, !srcloc !436
  %158 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i157.i = getelementptr i8, ptr %159, i32 2140
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i157.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %161 = and i32 %160, -50331649
  %162 = or i32 %161, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %163 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i159.i = getelementptr i8, ptr %164, i32 2140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159.i, i32 %162) #9, !srcloc !436
  %165 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i161.i = getelementptr i8, ptr %166, i32 60
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i161.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %168 = and i32 %167, 536745215
  %169 = or i32 %168, -1610612480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %170 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i163.i = getelementptr i8, ptr %171, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163.i, i32 %169) #9, !srcloc !436
  %172 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i165.i = getelementptr i8, ptr %173, i32 2140
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i165.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %175 = and i32 %174, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %176 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i167.i = getelementptr i8, ptr %177, i32 2140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i167.i, i32 %175) #9, !srcloc !436
  %178 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i169.i = getelementptr i8, ptr %179, i32 2140
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i169.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %181 = or i32 %180, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %182 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i171.i = getelementptr i8, ptr %183, i32 2140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171.i, i32 %181) #9, !srcloc !436
  %184 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i173.i = getelementptr i8, ptr %185, i32 56
  %186 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i173.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %187 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i175.i = getelementptr i8, ptr %188, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i175.i, i32 0) #9, !srcloc !436
  %189 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i177.i = getelementptr i8, ptr %190, i32 2136
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i177.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %192 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i179.i = getelementptr i8, ptr %193, i32 2136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i179.i, i32 15728640) #9, !srcloc !436
  %194 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %base.i128.i, align 4
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %195) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %197 = and i32 %196, -7937
  %198 = or i32 %197, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %199 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %base.i128.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %200, i32 %198) #9, !srcloc !436
  %arrayidx.i = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 6, i32 0
  %201 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %arrayidx.i, align 4
  %203 = call ptr @memset(ptr %202, i32 0, i32 65536)
  %204 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i.i76 = getelementptr i8, ptr %205, i32 8
  %206 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i76) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %207 = and i32 %206, 65535
  %208 = or i32 %207, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %209 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i60.i = getelementptr i8, ptr %210, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i, i32 %208) #9, !srcloc !436
  %arrayidx6.i = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 7, i32 0
  %211 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %arrayidx6.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %213 = tail call i32 @llvm.bswap.i32(i32 %212) #9
  %214 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i62.i = getelementptr i8, ptr %215, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62.i, i32 %213) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %216 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i64.i = getelementptr i8, ptr %217, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i, i32 0) #9, !srcloc !436
  %arrayidx.1.i = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 6, i32 1
  %218 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %arrayidx.1.i, align 4
  %220 = call ptr @memset(ptr %219, i32 0, i32 65536)
  %221 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %222, i32 8
  %223 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i) #9, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  %224 = and i32 %223, -65536
  %225 = or i32 %224, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %226 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i60.1.i = getelementptr i8, ptr %227, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.1.i, i32 %225) #9, !srcloc !436
  %arrayidx6.1.i = getelementptr %struct.tegra_xudc, ptr %xudc, i32 0, i32 7, i32 1
  %228 = ptrtoint ptr %arrayidx6.1.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %arrayidx6.1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %230 = tail call i32 @llvm.bswap.i32(i32 %229) #9
  %231 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i62.1.i = getelementptr i8, ptr %232, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62.1.i, i32 %230) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %233 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i64.1.i = getelementptr i8, ptr %234, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.1.i, i32 0) #9, !srcloc !436
  %235 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %arrayidx6.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %237 = tail call i32 @llvm.bswap.i32(i32 %236) #9
  %238 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i66.i = getelementptr i8, ptr %239, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66.i, i32 %237) #9, !srcloc !436
  %or17.i = or i32 %236, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %240 = tail call i32 @llvm.bswap.i32(i32 %or17.i) #9
  %241 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i68.i = getelementptr i8, ptr %242, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68.i, i32 %240) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %243 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i70.i = getelementptr i8, ptr %244, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70.i, i32 0) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %245 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i72.i = getelementptr i8, ptr %246, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72.i, i32 0) #9, !srcloc !436
  %ccs.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 10
  %247 = ptrtoint ptr %ccs.i to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 1, ptr %ccs.i, align 4
  %event_ring_index.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 8
  %248 = ptrtoint ptr %event_ring_index.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 0, ptr %event_ring_index.i, align 4
  %event_ring_deq_ptr.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 9
  %249 = ptrtoint ptr %event_ring_deq_ptr.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 0, ptr %event_ring_deq_ptr.i, align 8
  %ep_context_phys.i = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 13
  %250 = ptrtoint ptr %ep_context_phys.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %ep_context_phys.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %252 = tail call i32 @llvm.bswap.i32(i32 %251) #9
  %253 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i.i78 = getelementptr i8, ptr %254, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i78, i32 %252) #9, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %255 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %256, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 0) #9, !srcloc !436
  %saved_regs = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 47
  %portpm = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 47, i32 1
  %257 = ptrtoint ptr %portpm to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %portpm, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %259 = tail call i32 @llvm.bswap.i32(i32 %258) #9
  %260 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i = getelementptr i8, ptr %261, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %259) #9, !srcloc !436
  %262 = ptrtoint ptr %saved_regs to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %saved_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  tail call void @arm_heavy_mb() #9
  %264 = tail call i32 @llvm.bswap.i32(i32 %263) #9
  %265 = ptrtoint ptr %base.i128.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %base.i128.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %266, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80, i32 %264) #9, !srcloc !436
  %lock = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 3
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %powergated = getelementptr inbounds %struct.tegra_xudc, ptr %xudc, i32 0, i32 49
  %267 = ptrtoint ptr %powergated to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 0, ptr %powergated, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call18) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_xudc_unpowergate.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_xudc_unpowergate, %cleanup)) #9
          to label %if.then38 [label %cleanup], !srcloc !437

if.then38:                                        ; preds = %tegra_xudc_device_params_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %268 = ptrtoint ptr %xudc to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %xudc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_xudc_unpowergate.__UNIQUE_ID_ddebug340, ptr noundef %269, ptr noundef nonnull @.str.190) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %tegra_xudc_device_params_init.exit, %clk_bulk_prepare_enable.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end.cleanup_crit_edge ], [ %retval.0.i66, %clk_bulk_prepare_enable.exit.cleanup_crit_edge ], [ 0, %if.then38 ], [ 0, %tegra_xudc_device_params_init.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 201)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 201)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !36, !38, !39, !40, !42, !43, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !64, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !96, !97, !99, !100, !102, !103, !104, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !168, !170, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !186, !187, !189, !190, !192, !193, !195, !196, !198, !199, !200, !202, !203, !204, !205, !207, !208, !209, !210, !212, !214, !216, !218, !220, !222, !223, !224, !226, !227, !228, !230, !231, !233, !234, !236, !237, !238, !239, !241, !243, !244, !245, !246, !248, !250, !251, !252, !254, !255, !256, !258, !259, !260, !262, !263, !264, !265, !267, !268, !269, !271, !273, !275, !277, !279, !281, !282, !283, !284, !286, !287, !288, !290, !291, !292, !293, !295, !296, !297, !299, !300, !301, !302, !304, !305, !306, !308, !309, !310, !311, !313, !315, !316, !318, !319, !320, !321, !323, !324, !325, !327, !328, !330, !331, !332, !334, !335, !336, !338, !339, !340, !342, !343, !344, !345, !347, !348, !349, !351, !352, !354, !356, !357, !358, !360, !361, !363, !364, !365, !367, !368, !369, !371, !372, !373, !375, !376, !378, !379, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !409, !410, !412, !413, !415, !416, !417, !419}
!llvm.module.flags = !{!420, !421, !422, !423, !424, !425, !426, !427}
!llvm.ident = !{!428}

!0 = !{ptr @__initcall__kmod_tegra_xudc__341_4036_tegra_xudc_driver_init6, !1, !"__initcall__kmod_tegra_xudc__341_4036_tegra_xudc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 4036, i32 1}
!2 = !{ptr @__exitcall_tegra_xudc_driver_exit, !1, !"__exitcall_tegra_xudc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description342, !4, !"__UNIQUE_ID_description342", i1 false, i1 false}
!4 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 4038, i32 1}
!5 = !{ptr @__UNIQUE_ID_author343, !6, !"__UNIQUE_ID_author343", i1 false, i1 false}
!6 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 4039, i32 1}
!7 = !{ptr @__UNIQUE_ID_author344, !8, !"__UNIQUE_ID_author344", i1 false, i1 false}
!8 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 4040, i32 1}
!9 = !{ptr @__UNIQUE_ID_author345, !10, !"__UNIQUE_ID_author345", i1 false, i1 false}
!10 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 4041, i32 1}
!11 = !{ptr @__UNIQUE_ID_file346, !12, !"__UNIQUE_ID_file346", i1 false, i1 false}
!12 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 4042, i32 1}
!13 = !{ptr @__UNIQUE_ID_license347, !12, !"__UNIQUE_ID_license347", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 4031, i32 11}
!16 = !{ptr @tegra_xudc_driver, !17, !"tegra_xudc_driver", i1 false, i1 false}
!17 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 4027, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3742, i32 59}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3748, i32 59}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3753, i32 60}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3765, i32 3}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @tegra_xudc_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @tegra_xudc_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3780, i32 33}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3795, i32 33}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3805, i32 3}
!38 = !{ptr @tegra_xudc_probe._entry.11, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @tegra_xudc_probe._entry_ptr.13, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @tegra_xudc_probe.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3829, i32 2}
!42 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @tegra_xudc_probe.__key.15, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3833, i32 2}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @tegra_xudc_probe.__key.17, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3835, i32 2}
!48 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @tegra_xudc_probe.__key.19, !47, !"__key", i1 false, i1 false}
!50 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @tegra_xudc_probe.__key.21, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3837, i32 2}
!53 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @tegra_xudc_probe.__key.23, !52, !"__key", i1 false, i1 false}
!55 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3849, i32 3}
!58 = !{ptr @tegra_xudc_probe._entry.25, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @tegra_xudc_probe._entry_ptr.27, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3066, i32 17}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3079, i32 3}
!64 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @tegra_xudc_handle_event._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @tegra_xudc_handle_event._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 622, i32 2}
!70 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @dump_trb.__UNIQUE_ID_ddebug295, !69, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 2969, i32 3}
!75 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @__tegra_xudc_handle_port_status.__UNIQUE_ID_ddebug329, !74, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 2976, i32 3}
!79 = !{ptr @__tegra_xudc_handle_port_status.__UNIQUE_ID_ddebug330, !78, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 2987, i32 3}
!82 = !{ptr @__tegra_xudc_handle_port_status.__UNIQUE_ID_ddebug331, !81, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 2996, i32 3}
!85 = !{ptr @__tegra_xudc_handle_port_status.__UNIQUE_ID_ddebug332, !84, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3004, i32 3}
!88 = !{ptr @__tegra_xudc_handle_port_status.__UNIQUE_ID_ddebug333, !87, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3022, i32 3}
!91 = !{ptr @__tegra_xudc_handle_port_status.__UNIQUE_ID_ddebug334, !90, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3047, i32 3}
!94 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @__tegra_xudc_handle_port_status._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @__tegra_xudc_handle_port_status._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3051, i32 2}
!99 = !{ptr @__tegra_xudc_handle_port_status.__UNIQUE_ID_ddebug335, !98, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 1026, i32 2}
!102 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @tegra_xudc_req_done.__UNIQUE_ID_ddebug303, !101, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!104 = !{ptr @tegra_xudc_ep0_desc, !105, !"tegra_xudc_ep0_desc", i1 false, i1 false}
!105 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 538, i32 39}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 2926, i32 2}
!108 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @tegra_xudc_port_suspend.__UNIQUE_ID_ddebug327, !107, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 2941, i32 2}
!112 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @tegra_xudc_port_resume.__UNIQUE_ID_ddebug328, !111, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 1223, i32 2}
!116 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @tegra_xudc_ep_ring_doorbell.__UNIQUE_ID_ddebug306, !115, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 2697, i32 3}
!120 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @tegra_xudc_handle_transfer_event._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @tegra_xudc_handle_transfer_event._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 2719, i32 3}
!125 = !{ptr @tegra_xudc_handle_transfer_event._entry.55, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @tegra_xudc_handle_transfer_event._entry_ptr.57, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 2724, i32 3}
!129 = !{ptr @tegra_xudc_handle_transfer_event._entry.58, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @tegra_xudc_handle_transfer_event._entry_ptr.60, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 2754, i32 3}
!133 = !{ptr @tegra_xudc_handle_transfer_event._entry.61, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @tegra_xudc_handle_transfer_event._entry_ptr.63, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 2760, i32 3}
!137 = !{ptr @tegra_xudc_handle_transfer_event._entry.64, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @tegra_xudc_handle_transfer_event._entry_ptr.66, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.67, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 2777, i32 3}
!141 = !{ptr @tegra_xudc_handle_transfer_event.__UNIQUE_ID_ddebug325, !140, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 2784, i32 3}
!144 = !{ptr @tegra_xudc_handle_transfer_event.__UNIQUE_ID_ddebug326, !143, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!145 = !{ptr @.str.69, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 2663, i32 3}
!147 = !{ptr @.str.70, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @tegra_xudc_handle_transfer_completion.__UNIQUE_ID_ddebug324, !146, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!149 = !{ptr @.str.71, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 2681, i32 3}
!151 = !{ptr @tegra_xudc_handle_transfer_completion._entry, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @tegra_xudc_handle_transfer_completion._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.72, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 1374, i32 2}
!155 = !{ptr @.str.73, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @trb_in_request.__UNIQUE_ID_ddebug307, !154, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!157 = !{ptr @.str.74, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 1251, i32 3}
!159 = !{ptr @.str.75, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @__tegra_xudc_ep_queue._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @__tegra_xudc_ep_queue._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.77, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 1265, i32 3}
!164 = !{ptr @__tegra_xudc_ep_queue._entry.76, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @__tegra_xudc_ep_queue._entry_ptr.78, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.79, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 1136, i32 17}
!168 = !{ptr @.str.80, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 2577, i32 3}
!170 = !{ptr @.str.81, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @tegra_xudc_handle_ep0_setup_packet._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @tegra_xudc_handle_ep0_setup_packet._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.83, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 2594, i32 3}
!175 = !{ptr @tegra_xudc_handle_ep0_setup_packet._entry.82, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @tegra_xudc_handle_ep0_setup_packet._entry_ptr.84, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.85, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 2524, i32 3}
!179 = !{ptr @.str.86, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @tegra_xudc_ep0_standard_req.__UNIQUE_ID_ddebug318, !178, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!181 = !{ptr @.str.87, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 2528, i32 3}
!183 = !{ptr @tegra_xudc_ep0_standard_req.__UNIQUE_ID_ddebug319, !182, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!184 = !{ptr @.str.88, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 2532, i32 3}
!186 = !{ptr @tegra_xudc_ep0_standard_req.__UNIQUE_ID_ddebug320, !185, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!187 = !{ptr @.str.89, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 2536, i32 3}
!189 = !{ptr @tegra_xudc_ep0_standard_req.__UNIQUE_ID_ddebug321, !188, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!190 = !{ptr @.str.90, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 2541, i32 3}
!192 = !{ptr @tegra_xudc_ep0_standard_req.__UNIQUE_ID_ddebug322, !191, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!193 = !{ptr @.str.91, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 2545, i32 3}
!195 = !{ptr @tegra_xudc_ep0_standard_req.__UNIQUE_ID_ddebug323, !194, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!196 = !{ptr @.str.92, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 2504, i32 2}
!198 = !{ptr @.str.93, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @tegra_xudc_ep0_set_address.__UNIQUE_ID_ddebug317, !197, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!200 = !{ptr @.str.94, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 1542, i32 3}
!202 = !{ptr @.str.95, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @__tegra_xudc_ep_set_halt._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @__tegra_xudc_ep_set_halt._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.96, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 1547, i32 3}
!207 = !{ptr @__tegra_xudc_ep_set_halt.__UNIQUE_ID_ddebug309, !206, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!208 = !{ptr @.str.97, !206, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.98, !206, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.99, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3507, i32 40}
!212 = !{ptr @.str.100, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3512, i32 11}
!214 = !{ptr @.str.101, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3522, i32 12}
!216 = !{ptr @.str.102, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3535, i32 40}
!218 = !{ptr @.str.103, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3540, i32 11}
!220 = !{ptr @.str.104, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3543, i32 4}
!222 = !{ptr @.str.105, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @tegra_xudc_phy_get.__UNIQUE_ID_ddebug336, !221, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!224 = !{ptr @.str.106, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 804, i32 2}
!226 = !{ptr @.str.107, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @tegra_xudc_vbus_notify.__UNIQUE_ID_ddebug298, !225, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!228 = !{ptr @.str.108, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 808, i32 3}
!230 = !{ptr @tegra_xudc_vbus_notify.__UNIQUE_ID_ddebug299, !229, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!231 = !{ptr @.str.109, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 817, i32 2}
!233 = !{ptr @tegra_xudc_vbus_notify.__UNIQUE_ID_ddebug300, !232, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!234 = !{ptr @.str.110, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 792, i32 2}
!236 = !{ptr @.str.111, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @tegra_xudc_get_phy_index._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @tegra_xudc_get_phy_index._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.112, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3691, i32 61}
!241 = !{ptr @.str.113, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3694, i32 3}
!243 = !{ptr @.str.114, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @tegra_xudc_powerdomain_init._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @tegra_xudc_powerdomain_init._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.115, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3698, i32 57}
!248 = !{ptr @.str.117, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3701, i32 3}
!250 = !{ptr @tegra_xudc_powerdomain_init._entry.116, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @tegra_xudc_powerdomain_init._entry_ptr.118, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.120, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3709, i32 3}
!254 = !{ptr @tegra_xudc_powerdomain_init._entry.119, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @tegra_xudc_powerdomain_init._entry_ptr.121, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.123, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3717, i32 3}
!258 = !{ptr @tegra_xudc_powerdomain_init._entry.122, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @tegra_xudc_powerdomain_init._entry_ptr.124, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.125, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3576, i32 4}
!262 = !{ptr @.str.126, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @tegra_xudc_phy_init._entry, !261, !"_entry", i1 false, i1 false}
!264 = !{ptr @tegra_xudc_phy_init._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.128, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3582, i32 4}
!267 = !{ptr @tegra_xudc_phy_init._entry.127, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @tegra_xudc_phy_init._entry_ptr.129, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.130, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3158, i32 40}
!271 = !{ptr @.str.131, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3159, i32 24}
!273 = !{ptr @.str.132, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3159, i32 32}
!275 = !{ptr @.str.133, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3172, i32 21}
!277 = !{ptr @tegra_xudc_ep_ops, !278, !"tegra_xudc_ep_ops", i1 false, i1 false}
!278 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 1910, i32 32}
!279 = !{ptr @.str.134, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 1791, i32 4}
!281 = !{ptr @.str.135, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @__tegra_xudc_ep_enable._entry, !280, !"_entry", i1 false, i1 false}
!283 = !{ptr @__tegra_xudc_ep_enable._entry_ptr, !280, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.137, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 1854, i32 2}
!286 = !{ptr @__tegra_xudc_ep_enable._entry.136, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @__tegra_xudc_ep_enable._entry_ptr.138, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.139, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 1699, i32 3}
!290 = !{ptr @.str.140, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @__tegra_xudc_ep_disable._entry, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @__tegra_xudc_ep_disable._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.142, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 1740, i32 2}
!295 = !{ptr @__tegra_xudc_ep_disable._entry.141, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @__tegra_xudc_ep_disable._entry_ptr.143, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.144, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 1626, i32 5}
!299 = !{ptr @.str.145, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @tegra_xudc_ep_context_setup._entry, !298, !"_entry", i1 false, i1 false}
!301 = !{ptr @tegra_xudc_ep_context_setup._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.146, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 1398, i32 2}
!304 = !{ptr @.str.147, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @trb_before_request.__UNIQUE_ID_ddebug308, !303, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!306 = !{ptr @.str.148, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 1593, i32 3}
!308 = !{ptr @.str.149, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @tegra_xudc_ep_set_halt._entry, !307, !"_entry", i1 false, i1 false}
!310 = !{ptr @tegra_xudc_ep_set_halt._entry_ptr, !307, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @tegra_xudc_ep0_ops, !312, !"tegra_xudc_ep0_ops", i1 false, i1 false}
!312 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 1931, i32 32}
!313 = !{ptr @init_completion.__key, !314, !"__key", i1 false, i1 false}
!314 = !{!"../include/linux/completion.h", i32 87, i32 2}
!315 = !{ptr @.str.150, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @.str.151, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 708, i32 3}
!318 = !{ptr @.str.152, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @tegra_xudc_device_mode_on._entry, !317, !"_entry", i1 false, i1 false}
!320 = !{ptr @tegra_xudc_device_mode_on._entry_ptr, !317, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.154, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 712, i32 3}
!323 = !{ptr @tegra_xudc_device_mode_on._entry.153, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @tegra_xudc_device_mode_on._entry_ptr.155, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.156, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 714, i32 2}
!327 = !{ptr @tegra_xudc_device_mode_on.__UNIQUE_ID_ddebug296, !326, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!328 = !{ptr @.str.157, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 726, i32 2}
!330 = !{ptr @.str.158, !329, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @tegra_xudc_device_mode_off.__UNIQUE_ID_ddebug297, !329, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!332 = !{ptr @.str.159, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 762, i32 3}
!334 = !{ptr @tegra_xudc_device_mode_off._entry, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @tegra_xudc_device_mode_off._entry_ptr, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.161, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 766, i32 3}
!338 = !{ptr @tegra_xudc_device_mode_off._entry.160, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @tegra_xudc_device_mode_off._entry_ptr.162, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.163, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 844, i32 4}
!342 = !{ptr @.str.164, !341, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @tegra_xudc_plc_reset_work._entry, !341, !"_entry", i1 false, i1 false}
!344 = !{ptr @tegra_xudc_plc_reset_work._entry_ptr, !341, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.165, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 871, i32 3}
!347 = !{ptr @.str.166, !346, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @tegra_xudc_port_reset_war_work.__UNIQUE_ID_ddebug301, !346, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!349 = !{ptr @.str.167, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 874, i32 4}
!351 = !{ptr @tegra_xudc_port_reset_war_work.__UNIQUE_ID_ddebug302, !350, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!352 = !{ptr @tegra_xudc_gadget_ops, !353, !"tegra_xudc_gadget_ops", i1 false, i1 false}
!353 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 2171, i32 36}
!354 = !{ptr @.str.168, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 2005, i32 2}
!356 = !{ptr @.str.169, !355, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @tegra_xudc_gadget_wakeup.__UNIQUE_ID_ddebug310, !355, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!358 = !{ptr @.str.170, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 2024, i32 2}
!360 = !{ptr @tegra_xudc_gadget_wakeup.__UNIQUE_ID_ddebug311, !359, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!361 = !{ptr @.str.171, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 2165, i32 2}
!363 = !{ptr @.str.172, !362, !"<string literal>", i1 false, i1 false}
!364 = !{ptr @tegra_xudc_set_selfpowered.__UNIQUE_ID_ddebug316, !362, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!365 = !{ptr @.str.173, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 2153, i32 2}
!367 = !{ptr @.str.174, !366, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @tegra_xudc_gadget_vbus_draw.__UNIQUE_ID_ddebug315, !366, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!369 = !{ptr @.str.175, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 2050, i32 2}
!371 = !{ptr @.str.176, !370, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @tegra_xudc_gadget_pullup.__UNIQUE_ID_ddebug312, !370, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!373 = !{ptr @.str.177, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 2108, i32 2}
!375 = !{ptr @tegra_xudc_gadget_start.__UNIQUE_ID_ddebug313, !374, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!376 = !{ptr @.str.178, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 2138, i32 2}
!378 = !{ptr @.str.179, !377, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @tegra_xudc_gadget_stop.__UNIQUE_ID_ddebug314, !377, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!380 = !{ptr @tegra_xudc_of_match, !381, !"tegra_xudc_of_match", i1 false, i1 false}
!381 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3657, i32 34}
!382 = !{ptr @tegra210_xudc_soc_data, !383, !"tegra210_xudc_soc_data", i1 false, i1 false}
!383 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3613, i32 30}
!384 = !{ptr @.str.180, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3594, i32 2}
!386 = !{ptr @.str.181, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3595, i32 2}
!388 = !{ptr @tegra210_xudc_supply_names, !389, !"tegra210_xudc_supply_names", i1 false, i1 false}
!389 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3593, i32 27}
!390 = !{ptr @.str.182, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3601, i32 2}
!392 = !{ptr @.str.183, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3602, i32 2}
!394 = !{ptr @.str.184, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3603, i32 2}
!396 = !{ptr @tegra210_xudc_clock_names, !397, !"tegra210_xudc_clock_names", i1 false, i1 false}
!397 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3598, i32 27}
!398 = !{ptr @tegra186_xudc_soc_data, !399, !"tegra186_xudc_soc_data", i1 false, i1 false}
!399 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3629, i32 30}
!400 = !{ptr @tegra186_xudc_clock_names, !401, !"tegra186_xudc_clock_names", i1 false, i1 false}
!401 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3606, i32 27}
!402 = !{ptr @tegra194_xudc_soc_data, !403, !"tegra194_xudc_soc_data", i1 false, i1 false}
!403 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3643, i32 30}
!404 = !{ptr @tegra_xudc_pm_ops, !405, !"tegra_xudc_pm_ops", i1 false, i1 false}
!405 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 4021, i32 32}
!406 = !{ptr @.str.185, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3910, i32 2}
!408 = !{ptr @.str.186, !407, !"<string literal>", i1 false, i1 false}
!409 = !{ptr @tegra_xudc_powergate.__UNIQUE_ID_ddebug337, !407, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!410 = !{ptr @.str.187, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3925, i32 2}
!412 = !{ptr @tegra_xudc_powergate.__UNIQUE_ID_ddebug338, !411, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!413 = !{ptr @.str.188, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3934, i32 2}
!415 = !{ptr @.str.189, !414, !"<string literal>", i1 false, i1 false}
!416 = !{ptr @tegra_xudc_unpowergate.__UNIQUE_ID_ddebug339, !414, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!417 = !{ptr @.str.190, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/usb/gadget/udc/tegra-xudc.c", i32 3960, i32 2}
!419 = !{ptr @tegra_xudc_unpowergate.__UNIQUE_ID_ddebug340, !418, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!420 = !{i32 1, !"wchar_size", i32 2}
!421 = !{i32 1, !"min_enum_size", i32 4}
!422 = !{i32 8, !"branch-target-enforcement", i32 0}
!423 = !{i32 8, !"sign-return-address", i32 0}
!424 = !{i32 8, !"sign-return-address-all", i32 0}
!425 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!426 = !{i32 7, !"uwtable", i32 1}
!427 = !{i32 7, !"frame-pointer", i32 2}
!428 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!429 = !{i8 0, i8 2}
!430 = !{!"branch_weights", i32 1, i32 2000}
!431 = distinct !{!431, !432}
!432 = !{!"llvm.loop.peeled.count", i32 2}
!433 = !{i64 6358444}
!434 = !{i64 2155591850}
!435 = !{i64 2155592235}
!436 = !{i64 6358026}
!437 = !{i64 2148823878, i64 2148823883, i64 2148823896, i64 2148823940, i64 2148823974, i64 2148823995}
!438 = !{i64 2155594528}
!439 = !{i64 2155595022}
!440 = !{!"branch_weights", i32 2000, i32 1}
!441 = !{i64 2155590625}
!442 = !{i64 2155591010}
!443 = !{i64 2155589785}
!444 = !{i64 2155589400}
