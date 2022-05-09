; ModuleID = '/llk/IR_all_yes/drivers/usb/host/oxu210hp-hcd.c_pt.bc'
source_filename = "../drivers/usb/host/oxu210hp-hcd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.71, i32 }
%union.anon.71 = type { ptr }
%struct.ehci_caps = type { i32, i32, i32, [8 x i8] }
%struct.ehci_regs = type { i32, i32, i32, i32, i32, i32, i32, [9 x i32], i32, [0 x i32] }
%struct.ehci_qh = type { i32, i32, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], i32, %union.ehci_shadow, %struct.list_head, ptr, ptr, ptr, %struct.kref, i32, i8, i8, i8, i8, i16, i16, i16, ptr, [8 x i8] }
%union.ehci_shadow = type { ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.oxu_hcd = type { i8, [16 x i8], [32 x i8], [8 x i8], [8 x i8], ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, i32, %struct.spinlock, ptr, ptr, i8, i32, ptr, i32, i32, ptr, i32, i32, [15 x i32], i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.list_head, ptr, i32, i8 }
%struct.oxu_murb = type { %struct.urb, ptr, i8 }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.73 }>
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { [4 x i8], [4 x i8] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.ehci_qtd = type { i32, i32, i32, [5 x i32], [5 x i32], i32, %struct.list_head, ptr, i32, i32, ptr, i32, ptr, ptr, [4 x i8] }
%struct.oxu_onchip_mem = type { [8 x %struct.oxu_buf], [1024 x i32], [16 x %struct.ehci_qh], [32 x %struct.ehci_qtd], [3072 x i8] }
%struct.oxu_buf = type { [512 x i8] }
%struct.usb_tt = type { ptr, i32, i32, ptr, %struct.spinlock, %struct.list_head, %struct.work_struct }

@__param_str_log2_irq_thresh = internal constant [29 x i8] c"oxu210hp_hcd.log2_irq_thresh\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@log2_irq_thresh = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_log2_irq_thresh = internal constant %struct.kernel_param { ptr @__param_str_log2_irq_thresh, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @log2_irq_thresh } }, section "__param", align 4
@__UNIQUE_ID_log2_irq_threshtype241 = internal constant [42 x i8] c"oxu210hp_hcd.parmtype=log2_irq_thresh:int\00", section ".modinfo", align 1
@__UNIQUE_ID_log2_irq_thresh242 = internal constant [69 x i8] c"oxu210hp_hcd.parm=log2_irq_thresh:log2 IRQ latency, 1-64 microframes\00", section ".modinfo", align 1
@__param_str_park = internal constant [18 x i8] c"oxu210hp_hcd.park\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@park = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_park = internal constant %struct.kernel_param { ptr @__param_str_park, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @park } }, section "__param", align 4
@__UNIQUE_ID_parktype243 = internal constant [32 x i8] c"oxu210hp_hcd.parmtype=park:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_park244 = internal constant [68 x i8] c"oxu210hp_hcd.parm=park:park setting; 1-3 back-to-back async packets\00", section ".modinfo", align 1
@__param_str_ignore_oc = internal constant [23 x i8] c"oxu210hp_hcd.ignore_oc\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@ignore_oc = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_ignore_oc = internal constant %struct.kernel_param { ptr @__param_str_ignore_oc, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @ignore_oc } }, section "__param", align 4
@__UNIQUE_ID_ignore_octype245 = internal constant [37 x i8] c"oxu210hp_hcd.parmtype=ignore_oc:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_ignore_oc246 = internal constant [74 x i8] c"oxu210hp_hcd.parm=ignore_oc:ignore bogus hardware overcurrent indications\00", section ".modinfo", align 1
@__initcall__kmod_oxu210hp_hcd__281_4332_oxu_driver_init6 = internal global ptr @oxu_driver_init, section ".initcall6.init", align 4
@oxu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @oxu_drv_probe, ptr @oxu_drv_remove, ptr @oxu_drv_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr @platform_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_oxu_driver_exit = internal global ptr @oxu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description282 = internal constant [66 x i8] c"oxu210hp_hcd.description=Oxford OXU210HP HCD driver - ver. 0.0.50\00", section ".modinfo", align 1
@__UNIQUE_ID_author283 = internal constant [57 x i8] c"oxu210hp_hcd.author=Rodolfo Giometti <giometti@linux.it>\00", section ".modinfo", align 1
@__UNIQUE_ID_file284 = internal constant [48 x i8] c"oxu210hp_hcd.file=drivers/usb/host/oxu210hp-hcd\00", section ".modinfo", align 1
@__UNIQUE_ID_license285 = internal constant [25 x i8] c"oxu210hp_hcd.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"oxu210hp-hcd\00", [19 x i8] zeroinitializer }, align 32
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@oxu_drv_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 4229, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no IRQ! Check %s setup!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"oxu_drv_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/usb/host/oxu210hp-hcd.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@oxu_drv_probe._entry_ptr = internal global ptr @oxu_drv_probe._entry, section ".printk_index", align 4
@oxu_drv_probe.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 4, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"oxu210hp_hcd\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IRQ resource %d\0A\00", [47 x i8] zeroinitializer }, align 32
@oxu_drv_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 4246, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"error setting irq type\0A\00", [40 x i8] zeroinitializer }, align 32
@oxu_drv_probe._entry_ptr.10 = internal global ptr @oxu_drv_probe._entry.8, section ".printk_index", align 4
@oxu_drv_probe.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.11, i8 4, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot init USB devices\0A\00", [39 x i8] zeroinitializer }, align 32
@oxu_drv_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 4267, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"devices enabled and running\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@oxu_drv_probe._entry_ptr.15 = internal global ptr @oxu_drv_probe._entry.12, section ".printk_index", align 4
@oxu_drv_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 4273, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"init %s fail, %d\0A\00", [46 x i8] zeroinitializer }, align 32
@oxu_drv_probe._entry_ptr.18 = internal global ptr @oxu_drv_probe._entry.16, section ".printk_index", align 4
@oxu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 4177, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no devices found!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"oxu_init\00", [23 x i8] zeroinitializer }, align 32
@oxu_init._entry_ptr = internal global ptr @oxu_init._entry, section ".printk_index", align 4
@oxu_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 4184, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot create OTG controller!\0A\00", [33 x i8] zeroinitializer }, align 32
@oxu_init._entry_ptr.23 = internal global ptr @oxu_init._entry.21, section ".printk_index", align 4
@oxu_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.3, i32 4193, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot create SPH controller!\0A\00", [33 x i8] zeroinitializer }, align 32
@oxu_init._entry_ptr.26 = internal global ptr @oxu_init._entry.24, section ".printk_index", align 4
@oxu_verify_id.bo = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.27], [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reserved\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"128-pin LQFP\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"84-pin TFBGA\00", [19 x i8] zeroinitializer }, align 32
@oxu_verify_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 4111, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"device ID %x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"oxu_verify_id\00", [18 x i8] zeroinitializer }, align 32
@oxu_verify_id._entry_ptr = internal global ptr @oxu_verify_id._entry, section ".printk_index", align 4
@oxu_verify_id._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.3, i32 4119, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"found device %x %s (%04x:%04x)\0A\00", [32 x i8] zeroinitializer }, align 32
@oxu_verify_id._entry_ptr.34 = internal global ptr @oxu_verify_id._entry.32, section ".printk_index", align 4
@oxu_hc_driver = internal constant { %struct.hc_driver, [40 x i8] } { %struct.hc_driver { ptr @.str.6, ptr @.str.37, i32 412, ptr @oxu_irq, i32 33, ptr @oxu_reset, ptr @oxu_run, ptr null, ptr null, ptr @oxu_stop, ptr @oxu_shutdown, ptr @oxu_get_frame, ptr @oxu_urb_enqueue, ptr @oxu_urb_dequeue, ptr null, ptr null, ptr @oxu_endpoint_disable, ptr null, ptr @oxu_hub_status_data, ptr @oxu_hub_control, ptr @oxu_bus_suspend, ptr @oxu_bus_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"oxu210hp_otg\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"oxu210hp_sph\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"oxu210hp HCD\00", [19 x i8] zeroinitializer }, align 32
@oxu210_hcd_irq.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.38, ptr @.str.3, ptr @.str.39, i8 2, i8 -51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"oxu210_hcd_irq\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"device removed\0A\00", [16 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@oxu210_hcd_irq.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.38, ptr @.str.3, ptr @.str.40, i8 2, i8 -37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"port %d remote wakeup\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fatal\00", [26 x i8] zeroinitializer }, align 32
@oxu210_hcd_irq.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.38, ptr @.str.3, ptr @.str.42, i8 2, i8 -35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@oxu210_hcd_irq.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.38, ptr @.str.3, ptr @.str.42, i8 2, i8 -35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@oxu210_hcd_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.3, i32 2937, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fatal error\0A\00", [19 x i8] zeroinitializer }, align 32
@oxu210_hcd_irq._entry_ptr = internal global ptr @oxu210_hcd_irq._entry, section ".printk_index", align 4
@.str.44 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s%scommand %06x %s=%d ithresh=%d%s%s%s%s period=%s%s %s\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"park\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(park)\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" LReset\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" IAAD\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" Async\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" Periodic\00", [22 x i8] zeroinitializer }, align 32
@fls_strings = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" Reset\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RUN\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HALT\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1024\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"512\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"256\00", [28 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"??\00", [29 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s%sstatus %04x%s%s%s%s%s%s%s%s%s%s\00", [60 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" Recl\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" Halt\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" IAA\00", [27 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" FATAL\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" FLR\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" PCD\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" ERR\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" INT\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ehci_reset.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.70, ptr @.str.3, ptr @.str.42, i8 0, i8 -56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ehci_reset\00", [21 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@qh_destroy.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.71, ptr @.str.3, ptr @.str.72, i8 1, i8 6, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qh_destroy\00", [21 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unused qh not empty!\0A\00", [42 x i8] zeroinitializer }, align 32
@qtd_copy_status.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.73, ptr @.str.3, ptr @.str.74, i8 1, i8 76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qtd_copy_status\00", [16 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"devpath %s ep%d%s 3strikes\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@qh_unlink_periodic.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.77, ptr @.str.3, ptr @.str.78, i8 2, i8 99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qh_unlink_periodic\00", [45 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unlink qh%d-%04x/%p start %d [%d/%d us]\0A\00", [55 x i8] zeroinitializer }, align 32
@qh_schedule.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.79, ptr @.str.3, ptr @.str.80, i8 2, i8 -118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qh_schedule\00", [20 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reused qh %p schedule\0A\00", [41 x i8] zeroinitializer }, align 32
@periodic_usecs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.3, i32 2291, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"uframe %d sched overrun: %d usecs\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"periodic_usecs\00", [17 x i8] zeroinitializer }, align 32
@periodic_usecs._entry_ptr = internal global ptr @periodic_usecs._entry, section ".printk_index", align 4
@qh_link_periodic.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.83, ptr @.str.3, ptr @.str.84, i8 2, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qh_link_periodic\00", [47 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"link qh%d-%04x/%p start %d [%d/%d us]\0A\00", [57 x i8] zeroinitializer }, align 32
@scan_periodic.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.85, ptr @.str.3, ptr @.str.86, i8 2, i8 -87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"scan_periodic\00", [18 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"corrupt type %d frame %d shadow %p\0A\00", [60 x i8] zeroinitializer }, align 32
@oxu_reset.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&oxu->mem_lock\00", [17 x i8] zeroinitializer }, align 32
@oxu_hcd_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&oxu->lock\00", [21 x i8] zeroinitializer }, align 32
@oxu_hcd_init.__key.89 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(&oxu->watchdog)\00", [47 x i8] zeroinitializer }, align 32
@oxu_hcd_init.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.91, ptr @.str.3, ptr @.str.92, i8 3, i8 0, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"oxu_hcd_init\00", [19 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"park %d\0A\00", [23 x i8] zeroinitializer }, align 32
@ehci_mem_init.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.93, ptr @.str.3, ptr @.str.94, i8 1, i8 43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ehci_mem_init\00", [18 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"couldn't init memory\0A\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@oxu_qh_alloc.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.95, ptr @.str.3, ptr @.str.96, i8 1, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"oxu_qh_alloc\00", [19 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"no dummy td\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"init\00", [27 x i8] zeroinitializer }, align 32
@oxu_run.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.98, ptr @.str.3, ptr @.str.42, i8 3, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"oxu_run\00", [24 x i8] zeroinitializer }, align 32
@oxu_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.98, ptr @.str.3, i32 3166, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"USB %x.%x started, quasi-EHCI %x.%02x, driver %s%s\0A\00", [44 x i8] zeroinitializer }, align 32
@oxu_run._entry_ptr = internal global ptr @oxu_run._entry, section ".printk_index", align 4
@.str.100 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.0.50\00", [25 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c", overcurrent ignored\00", [42 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"oxu_stop completed\00", [45 x i8] zeroinitializer }, align 32
@oxu_stop.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.103, ptr @.str.3, ptr @.str.42, i8 3, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"oxu_stop\00", [23 x i8] zeroinitializer }, align 32
@ehci_port_power.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.104, ptr @.str.3, ptr @.str.105, i8 2, i8 -72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ehci_port_power\00", [16 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"...power%s ports...\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"down\00", [27 x i8] zeroinitializer }, align 32
@oxu_buf_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.3, i32 915, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"buffer too big (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"oxu_buf_alloc\00", [18 x i8] zeroinitializer }, align 32
@oxu_buf_alloc._entry_ptr = internal global ptr @oxu_buf_alloc._entry, section ".printk_index", align 4
@.str.110 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/usb.h\00", [44 x i8] zeroinitializer }, align 32
@qh_make.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.111, ptr @.str.3, ptr @.str.112, i8 1, i8 -56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qh_make\00", [24 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"intr period %d uframes, NYET!\0A\00", [33 x i8] zeroinitializer }, align 32
@qh_make.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.111, ptr @.str.3, ptr @.str.113, i8 1, i8 -38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bogus dev %p speed %d\0A\00", [41 x i8] zeroinitializer }, align 32
@itd_submit.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.114, ptr @.str.3, ptr @.str.115, i8 2, i8 -103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"itd_submit\00", [21 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iso support is missing!\0A\00", [39 x i8] zeroinitializer }, align 32
@sitd_submit.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.116, ptr @.str.3, ptr @.str.117, i8 2, i8 -101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sitd_submit\00", [20 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"split iso support is missing!\0A\00", [33 x i8] zeroinitializer }, align 32
@oxu_urb_dequeue.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.118, ptr @.str.3, ptr @.str.119, i8 3, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"oxu_urb_dequeue\00", [16 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bogus qh %p state %d\0A\00", [42 x i8] zeroinitializer }, align 32
@oxu_urb_dequeue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.118, ptr @.str.3, i32 3404, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"can't reschedule qh %p, err %d\0A\00", [32 x i8] zeroinitializer }, align 32
@oxu_urb_dequeue._entry_ptr = internal global ptr @oxu_urb_dequeue._entry, section ".printk_index", align 4
@oxu_endpoint_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.3, i32 3471, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qh %p (#%02x) state %d%s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"oxu_endpoint_disable\00", [43 x i8] zeroinitializer }, align 32
@oxu_endpoint_disable._entry_ptr = internal global ptr @oxu_endpoint_disable._entry, section ".printk_index", align 4
@.str.123 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"(has tds)\00", [22 x i8] zeroinitializer }, align 32
@oxu_hub_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.3, i32 3700, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"port %d resume error %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"oxu_hub_control\00", [16 x i8] zeroinitializer }, align 32
@oxu_hub_control._entry_ptr = internal global ptr @oxu_hub_control._entry, section ".printk_index", align 4
@oxu_hub_control._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.125, ptr @.str.3, i32 3724, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"port %d reset error %d\0A\00", [40 x i8] zeroinitializer }, align 32
@oxu_hub_control._entry_ptr.128 = internal global ptr @oxu_hub_control._entry.126, section ".printk_index", align 4
@oxu_hub_control.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.125, ptr @.str.3, ptr @.str.129, i8 3, i8 -90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"port %d --> companion\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"GetStatus\00", [22 x i8] zeroinitializer }, align 32
@oxu_hub_control.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.125, ptr @.str.3, ptr @.str.42, i8 3, i8 -82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@check_reset_complete.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.131, ptr @.str.3, ptr @.str.132, i8 0, i8 -42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"check_reset_complete\00", [43 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to enable port %d on root hub TT\0A\00", [55 x i8] zeroinitializer }, align 32
@check_reset_complete.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.131, ptr @.str.3, ptr @.str.133, i8 0, i8 -41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"port %d high speed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"se0\00", [28 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"k\00", [30 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"j\00", [30 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s%sport %d status %06x%s%s sig=%s%s%s%s%s%s%s%s%s%s\00", [43 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" POWER\00", [25 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" OWNER\00", [25 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" RESET\00", [25 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" SUSPEND\00", [23 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" RESUME\00", [24 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" OCC\00", [27 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" OC\00", [28 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" PEC\00", [27 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" PE\00", [28 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" CSC\00", [27 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" CONNECT\00", [23 x i8] zeroinitializer }, align 32
@oxu_bus_suspend.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.150, ptr @.str.3, ptr @.str.151, i8 3, i8 -59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.150 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"oxu_bus_suspend\00", [16 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"suspend root hub\0A\00", [46 x i8] zeroinitializer }, align 32
@oxu_bus_resume.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.152, ptr @.str.3, ptr @.str.153, i8 3, i8 -38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.152 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"oxu_bus_resume\00", [17 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"resume root hub%s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" after power loss\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.155 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.156 = internal global [9 x i64] [i64 7, i64 16, i64 8193, i64 8195, i64 8961, i64 8963, i64 40960, i64 40966, i64 41728]
@__sancov_gen_cov_switch_values.157 = internal global [10 x i64] [i64 8, i64 16, i64 1, i64 2, i64 8, i64 16, i64 17, i64 18, i64 19, i64 20]
@__sancov_gen_cov_switch_values.158 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1024, i64 2048]
@__sancov_gen_cov_switch_values.159 = internal global [6 x i64] [i64 4, i64 16, i64 2, i64 4, i64 8, i64 21]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@__sancov_gen_cov_switch_values.162 = internal global [4 x i64] [i64 2, i64 32, i64 4294967175, i64 4294967181]
@__sancov_gen_cov_switch_values.163 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.164 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.165 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.166 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.167 = private unnamed_addr constant [16 x i8] c"log2_irq_thresh\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 655, i32 12 }
@___asan_gen_.170 = private unnamed_addr constant [5 x i8] c"park\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 660, i32 17 }
@___asan_gen_.173 = private unnamed_addr constant [10 x i8] c"ignore_oc\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 665, i32 13 }
@___asan_gen_.176 = private unnamed_addr constant [11 x i8] c"oxu_driver\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 4320, i32 31 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 4327, i32 11 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 4228, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 4233, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 4246, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 4263, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 4267, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 4273, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 4177, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 4184, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 4193, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant [3 x i8] c"bo\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 4102, i32 28 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 4103, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 4104, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 4105, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 4111, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 4115, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant [14 x i8] c"oxu_hc_driver\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 4025, i32 31 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 4141, i32 11 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 4141, i32 28 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 4027, i32 19 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 2868, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 2925, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 2934, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 2937, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 557, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 558, i32 21 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 558, i32 27 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 559, i32 26 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 559, i32 35 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 562, i32 28 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 563, i32 26 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 564, i32 25 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 565, i32 25 }
@___asan_gen_.338 = private unnamed_addr constant [12 x i8] c"fls_strings\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 550, i32 26 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 567, i32 27 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 568, i32 25 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 568, i32 33 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 551, i32 7 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 551, i32 15 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 551, i32 22 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 551, i32 29 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 521, i32 29 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 525, i32 25 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 526, i32 25 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 527, i32 24 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 528, i32 26 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 529, i32 24 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 530, i32 24 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 531, i32 24 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 532, i32 24 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 801, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 1049, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 1328, i32 5 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 2442, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 2603, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 2290, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 2356, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 2725, i32 5 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 3090, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 3016, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 3018, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 3072, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 1199, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 1080, i32 4 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 3150, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 3163, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 3201, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 2784, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 915, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1981, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 1825, i32 5 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 1897, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 2661, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 2668, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 3385, i32 4 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 3402, i32 5 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 3469, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 3698, i32 6 }
@___asan_gen_.581 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 3723, i32 5 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 3739, i32 4 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 3768, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 857, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 861, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 580, i32 9 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 583, i32 9 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 586, i32 9 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 589, i32 9 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 594, i32 3 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 596, i32 27 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 597, i32 27 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 599, i32 27 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 600, i32 29 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 601, i32 28 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 602, i32 25 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 603, i32 24 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 604, i32 25 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 605, i32 24 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 606, i32 25 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 607, i32 29 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 3863, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.663 = private constant [35 x i8] c"../drivers/usb/host/oxu210hp-hcd.c\00", align 1
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 3947, i32 2 }
@llvm.compiler.used = appending global [199 x ptr] [ptr @__UNIQUE_ID_author283, ptr @__UNIQUE_ID_description282, ptr @__UNIQUE_ID_file284, ptr @__UNIQUE_ID_ignore_oc246, ptr @__UNIQUE_ID_ignore_octype245, ptr @__UNIQUE_ID_license285, ptr @__UNIQUE_ID_log2_irq_thresh242, ptr @__UNIQUE_ID_log2_irq_threshtype241, ptr @__UNIQUE_ID_park244, ptr @__UNIQUE_ID_parktype243, ptr @__exitcall_oxu_driver_exit, ptr @__initcall__kmod_oxu210hp_hcd__281_4332_oxu_driver_init6, ptr @__param_ignore_oc, ptr @__param_log2_irq_thresh, ptr @__param_park, ptr @oxu210_hcd_irq._entry, ptr @oxu210_hcd_irq._entry_ptr, ptr @oxu_buf_alloc._entry, ptr @oxu_buf_alloc._entry_ptr, ptr @oxu_driver_exit, ptr @oxu_drv_probe._entry, ptr @oxu_drv_probe._entry.12, ptr @oxu_drv_probe._entry.16, ptr @oxu_drv_probe._entry.8, ptr @oxu_drv_probe._entry_ptr, ptr @oxu_drv_probe._entry_ptr.10, ptr @oxu_drv_probe._entry_ptr.15, ptr @oxu_drv_probe._entry_ptr.18, ptr @oxu_endpoint_disable._entry, ptr @oxu_endpoint_disable._entry_ptr, ptr @oxu_hub_control._entry, ptr @oxu_hub_control._entry.126, ptr @oxu_hub_control._entry_ptr, ptr @oxu_hub_control._entry_ptr.128, ptr @oxu_init._entry, ptr @oxu_init._entry.21, ptr @oxu_init._entry.24, ptr @oxu_init._entry_ptr, ptr @oxu_init._entry_ptr.23, ptr @oxu_init._entry_ptr.26, ptr @oxu_run._entry, ptr @oxu_run._entry_ptr, ptr @oxu_urb_dequeue._entry, ptr @oxu_urb_dequeue._entry_ptr, ptr @oxu_verify_id._entry, ptr @oxu_verify_id._entry.32, ptr @oxu_verify_id._entry_ptr, ptr @oxu_verify_id._entry_ptr.34, ptr @periodic_usecs._entry, ptr @periodic_usecs._entry_ptr, ptr @log2_irq_thresh, ptr @park, ptr @ignore_oc, ptr @oxu_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @oxu_verify_id.bo, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @oxu_hc_driver, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @fls_strings, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @oxu_reset.__key, ptr @.str.87, ptr @oxu_hcd_init.__key, ptr @.str.88, ptr @oxu_hcd_init.__key.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.127, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154], section "llvm.metadata"
@0 = internal global [166 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log2_irq_thresh to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @park to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ignore_oc to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxu_drv_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxu_drv_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxu_drv_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxu_drv_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxu_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxu_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxu_verify_id.bo to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxu_verify_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxu_verify_id._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxu_hc_driver to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxu210_hcd_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fls_strings to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periodic_usecs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxu_reset.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxu_hcd_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxu_hcd_init.__key.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxu_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxu_buf_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxu_urb_dequeue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxu_endpoint_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxu_hub_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxu_hub_control._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @oxu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @oxu_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @oxu_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @oxu_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxu_drv_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_disabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i105 = phi ptr [ %3, %if.end.i ], [ %1, %do.end.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i105) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oxu_drv_probe.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@oxu_drv_probe, %if.then12)) #9
          to label %do.end16 [label %if.then12], !srcloc !357

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %dev13 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oxu_drv_probe.__UNIQUE_ID_ddebug279, ptr noundef %dev13, ptr noundef nonnull @.str.7, i32 noundef %5) #9
  br label %do.end16

do.end16:                                         ; preds = %if.then12, %if.end6
  %call17 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %dev18 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call19 = tail call ptr @devm_ioremap_resource(ptr noundef %dev18, ptr noundef %call17) #9
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %if.end23

if.then21:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call19 to i32
  br label %do.end65

if.end23:                                         ; preds = %do.end16
  %7 = ptrtoint ptr %call17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call17, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call17, i32 0, i32 1
  %9 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %8
  %add.i = add i32 %sub.i, %10
  %call26 = tail call i32 @irq_set_irq_type(i32 noundef %5, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end33, label %do.end31

do.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.9) #12
  br label %do.end65

if.end33:                                         ; preds = %if.end23
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev18, i32 noundef 8, i32 noundef 3520) #9
  %tobool36.not = icmp eq ptr %call.i, null
  br i1 %tobool36.not, label %if.end33.do.end65_crit_edge, label %if.end38

if.end33.do.end65_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

if.end38:                                         ; preds = %if.end33
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call39 = tail call fastcc i32 @oxu_init(ptr noundef %pdev, i32 noundef %8, i32 noundef %add.i, ptr noundef %call19, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp = icmp slt i32 %call39, 0
  br i1 %cmp, label %do.body41, label %do.end61

do.body41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oxu_drv_probe.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@oxu_drv_probe, %if.then53)) #9
          to label %do.end65 [label %if.then53], !srcloc !357

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oxu_drv_probe.__UNIQUE_ID_ddebug280, ptr noundef %dev18, ptr noundef nonnull @.str.11) #9
  br label %do.end65

do.end61:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev18, ptr noundef nonnull @.str.13) #12
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

do.end65:                                         ; preds = %if.then53, %do.body41, %if.end33.do.end65_crit_edge, %do.end31, %if.then21
  %ret.0 = phi i32 [ %6, %if.then21 ], [ -14, %do.end31 ], [ %call39, %if.then53 ], [ -14, %if.end33.do.end65_crit_edge ], [ %call39, %do.body41 ]
  %init_name.i107 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %init_name.i107 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i107, align 8
  %tobool.not.i108 = icmp eq ptr %14, null
  br i1 %tobool.not.i108, label %if.end.i109, label %do.end65.dev_name.exit111_crit_edge

do.end65.dev_name.exit111_crit_edge:              ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit111

if.end.i109:                                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev18, align 4
  br label %dev_name.exit111

dev_name.exit111:                                 ; preds = %if.end.i109, %do.end65.dev_name.exit111_crit_edge
  %retval.0.i110 = phi ptr [ %16, %if.end.i109 ], [ %14, %do.end65.dev_name.exit111_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.17, ptr noundef %retval.0.i110, i32 noundef %ret.0) #12
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit111, %do.end61, %dev_name.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %dev_name.exit111 ], [ 0, %do.end61 ], [ -19, %dev_name.exit ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxu_drv_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @usb_remove_hcd(ptr noundef %3) #9
  tail call void @usb_put_hcd(ptr noundef %3) #9
  %arrayidx2 = getelementptr [2 x ptr], ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  tail call void @usb_remove_hcd(ptr noundef %5) #9
  tail call void @usb_put_hcd(ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oxu_drv_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @usb_remove_hcd(ptr noundef %3) #9
  tail call void @usb_put_hcd(ptr noundef %3) #9
  %arrayidx2.i = getelementptr [2 x ptr], ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2.i, align 4
  tail call void @usb_remove_hcd(ptr noundef %5) #9
  tail call void @usb_put_hcd(ptr noundef %5) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_type(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @oxu_init(ptr noundef %pdev, i32 noundef %memstart, i32 noundef %memlen, ptr noundef %base, i32 noundef %irq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i = getelementptr i8, ptr %base, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 2097348608) #9, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  tail call void @arm_heavy_mb() #9
  %add.ptr.i1.i = getelementptr i8, ptr %base, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 16777216) #9, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 2097348608) #9, !srcloc !359
  %add.ptr.i3.i = getelementptr i8, ptr %base, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %3 = or i32 %2, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %3) #9, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  tail call void @arm_heavy_mb() #9
  %add.ptr.i5.i = getelementptr i8, ptr %base, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 5046272) #9, !srcloc !359
  %add.ptr.i6.i = getelementptr i8, ptr %base, i32 28
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %5 = or i32 %4, 150994944
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %5) #9, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  tail call void @arm_heavy_mb() #9
  %add.ptr.i8.i = getelementptr i8, ptr %base, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 -16777216) #9, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  tail call void @arm_heavy_mb() #9
  %add.ptr.i9.i = getelementptr i8, ptr %base, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 -16777216) #9, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  tail call void @arm_heavy_mb() #9
  %add.ptr.i10.i = getelementptr i8, ptr %base, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 -1073741824) #9, !srcloc !359
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %base) #9, !srcloc !360
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.30, i32 noundef %7) #12
  %and.i = and i32 %7, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 553648128, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 553648128
  br i1 %cmp.not.i, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.19) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr.i = lshr i32 %7, 16
  %and5.i = lshr i32 %7, 8
  %shr6.i = and i32 %and5.i, 3
  %arrayidx.i = getelementptr [4 x ptr], ptr @oxu_verify_id.bo, i32 0, i32 %shr6.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %and7.i = lshr i32 %7, 4
  %shr8.i = and i32 %and7.i, 15
  %and9.i = and i32 %7, 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.33, i32 noundef %shr.i, ptr noundef %9, i32 noundef %shr8.i, i32 noundef %and9.i) #12
  %call2 = tail call fastcc ptr @oxu_create(ptr noundef %pdev, i32 noundef %memstart, i32 noundef %memlen, ptr noundef %base, i32 noundef %irq, i32 noundef 1)
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.22) #12
  %10 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call2, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i54 = getelementptr i8, ptr %base, i32 2472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i54, i32 587202560) #9, !srcloc !359
  %call.i = tail call ptr @usb_create_hcd(ptr noundef nonnull @oxu_hc_driver, ptr noundef %dev.i, ptr noundef nonnull @.str.36) #9
  %tobool4.not.i = icmp eq ptr %call.i, null
  br i1 %tobool4.not.i, label %if.end10.do.end17_crit_edge, label %if.end.i

if.end10.do.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

if.end.i:                                         ; preds = %if.end10
  %rsrc_start.i = getelementptr inbounds %struct.usb_hcd, ptr %call.i, i32 0, i32 17
  %12 = ptrtoint ptr %rsrc_start.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %memstart, ptr %rsrc_start.i, align 8
  %rsrc_len.i = getelementptr inbounds %struct.usb_hcd, ptr %call.i, i32 0, i32 18
  %13 = ptrtoint ptr %rsrc_len.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %memlen, ptr %rsrc_len.i, align 4
  %regs.i = getelementptr inbounds %struct.usb_hcd, ptr %call.i, i32 0, i32 16
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %base, ptr %regs.i, align 4
  %irq6.i = getelementptr inbounds %struct.usb_hcd, ptr %call.i, i32 0, i32 15
  %15 = ptrtoint ptr %irq6.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %irq, ptr %irq6.i, align 8
  %state.i = getelementptr inbounds %struct.usb_hcd, ptr %call.i, i32 0, i32 27
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %state.i, align 4
  %hcd_priv.i.i = getelementptr inbounds %struct.usb_hcd, ptr %call.i, i32 0, i32 30
  %17 = ptrtoint ptr %hcd_priv.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i = load i8, ptr %hcd_priv.i.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %hcd_priv.i.i, align 4
  %call8.i = tail call i32 @usb_add_hcd(ptr noundef nonnull %call.i, i32 noundef %irq, i32 noundef 128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i55 = icmp slt i32 %call8.i, 0
  br i1 %cmp.i55, label %if.then9.i, label %if.end11.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_put_hcd(ptr noundef nonnull %call.i) #9
  %18 = inttoptr i32 %call8.i to ptr
  br label %oxu_create.exit

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 8
  %call12.i = tail call i32 @device_wakeup_enable(ptr noundef %20) #9
  br label %oxu_create.exit

oxu_create.exit:                                  ; preds = %if.end11.i, %if.then9.i
  %retval.0.i56 = phi ptr [ %18, %if.then9.i ], [ %call.i, %if.end11.i ]
  %cmp.i57 = icmp ugt ptr %retval.0.i56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i57, label %oxu_create.exit.do.end17_crit_edge, label %if.end20

oxu_create.exit.do.end17_crit_edge:               ; preds = %oxu_create.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

do.end17:                                         ; preds = %oxu_create.exit.do.end17_crit_edge, %if.end10.do.end17_crit_edge
  %retval.0.i5664 = phi ptr [ %retval.0.i56, %oxu_create.exit.do.end17_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end10.do.end17_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.25) #12
  %21 = ptrtoint ptr %retval.0.i5664 to i32
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  tail call void @usb_remove_hcd(ptr noundef %23) #9
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  tail call void @usb_put_hcd(ptr noundef %25) #9
  br label %cleanup

if.end20:                                         ; preds = %oxu_create.exit
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx22 = getelementptr [2 x ptr], ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %retval.0.i56, ptr %arrayidx22, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %28 = or i32 %27, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %28) #9, !srcloc !359
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end17, %do.end7, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.end20 ], [ %10, %do.end7 ], [ %21, %do.end17 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @oxu_create(ptr noundef %pdev, i32 noundef %memstart, i32 noundef %memlen, ptr noundef %base, i32 noundef %irq, i32 noundef %otg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %otg)
  %tobool.not = icmp eq i32 %otg, 0
  %cond = select i1 %tobool.not, i32 2048, i32 1024
  %add.ptr = getelementptr i8, ptr %base, i32 %cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  tail call void @arm_heavy_mb() #9
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 587202560) #9, !srcloc !359
  %cond3 = select i1 %tobool.not, ptr @.str.36, ptr @.str.35
  %call = tail call ptr @usb_create_hcd(ptr noundef nonnull @oxu_hc_driver, ptr noundef %dev1, ptr noundef nonnull %cond3) #9
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %rsrc_start = getelementptr inbounds %struct.usb_hcd, ptr %call, i32 0, i32 17
  %0 = ptrtoint ptr %rsrc_start to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %memstart, ptr %rsrc_start, align 8
  %rsrc_len = getelementptr inbounds %struct.usb_hcd, ptr %call, i32 0, i32 18
  %1 = ptrtoint ptr %rsrc_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %memlen, ptr %rsrc_len, align 4
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %call, i32 0, i32 16
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %base, ptr %regs, align 4
  %irq6 = getelementptr inbounds %struct.usb_hcd, ptr %call, i32 0, i32 15
  %3 = ptrtoint ptr %irq6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %irq, ptr %irq6, align 8
  %state = getelementptr inbounds %struct.usb_hcd, ptr %call, i32 0, i32 27
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %state, align 4
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %call, i32 0, i32 30
  %5 = trunc i32 %otg to i8
  %6 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %hcd_priv.i, align 4
  %bf.shl = shl i8 %5, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %hcd_priv.i, align 4
  %call8 = tail call i32 @usb_add_hcd(ptr noundef nonnull %call, i32 noundef %irq, i32 noundef 128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_put_hcd(ptr noundef nonnull %call) #9
  %7 = inttoptr i32 %call8 to ptr
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 8
  %call12 = tail call i32 @device_wakeup_enable(ptr noundef %9) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %7, %if.then9 ], [ %call, %if.end11 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxu_irq(ptr noundef %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 16
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !360
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr.i24 = getelementptr i8, ptr %5, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  tail call void @arm_heavy_mb() #9
  %add.ptr.i25 = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %6) #9, !srcloc !359
  %9 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %hcd_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool9.not = icmp slt i8 %bf.load, 0
  %and11 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %or.cond23 = select i1 %tobool9.not, i1 true, i1 %tobool12.not
  br i1 %or.cond23, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call fastcc void @oxu210_hcd_irq(ptr noundef %hcd)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %ret.0 = phi i32 [ 1, %if.then ], [ 0, %lor.lhs.false.if.end_crit_edge ]
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  tail call void @arm_heavy_mb() #9
  %add.ptr.i26 = getelementptr i8, ptr %11, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %6) #9, !srcloc !359
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxu_reset(ptr noundef %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %mem_lock = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %mem_lock, ptr noundef nonnull @.str.87, ptr noundef nonnull @oxu_reset.__key, i16 noundef signext 3) #9
  %urb_list = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 20, i32 1
  %0 = ptrtoint ptr %urb_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %urb_list, ptr %urb_list, align 4
  %prev.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 20, i32 1, i32 0, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %urb_list, ptr %prev.i, align 4
  %urb_len = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 20, i32 1, i32 0, i32 0, i32 3
  %2 = ptrtoint ptr %urb_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %urb_len, align 4
  %3 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %hcd_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %regs11 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 16
  %4 = ptrtoint ptr %regs11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs11, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %5, i32 1280
  %caps = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 18
  %6 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %caps, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !360
  %8 = lshr i32 %7, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !362
  %add.ptr7 = getelementptr i8, ptr %add.ptr, i32 %8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr12 = getelementptr i8, ptr %5, i32 2304
  %caps13 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 18
  %9 = ptrtoint ptr %caps13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr12, ptr %caps13, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #9, !srcloc !360
  %11 = lshr i32 %10, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !363
  %add.ptr25 = getelementptr i8, ptr %add.ptr12, i32 %11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink59 = phi i32 [ 57344, %if.else ], [ 90112, %if.then ]
  %add.ptr7.sink = phi ptr [ %add.ptr25, %if.else ], [ %add.ptr7, %if.then ]
  %12 = ptrtoint ptr %regs11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs11, align 4
  %add.ptr28 = getelementptr i8, ptr %13, i32 %.sink59
  %14 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr7.sink, ptr %14, align 4
  %16 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 6
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr28, ptr %16, align 4
  %caps32 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 18
  %18 = ptrtoint ptr %caps32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %caps32, align 4
  %hcs_params = getelementptr inbounds %struct.ehci_caps, ptr %19, i32 0, i32 1
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %hcs_params) #9, !srcloc !360
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !364
  %hcs_params36 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 2
  %22 = ptrtoint ptr %hcs_params36 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %hcs_params36, align 4
  %sbrn = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 20, i32 1, i32 0, i32 0, i32 4
  %23 = ptrtoint ptr %sbrn to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 32, ptr %sbrn, align 4
  %call37 = tail call fastcc i32 @oxu_hcd_init(ptr noundef %hcd)
  ret i32 %call37
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxu_run(ptr noundef %hcd) #2 align 64 {
entry:
  %_buf = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %uses_new_polling = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 14
  %0 = ptrtoint ptr %uses_new_polling to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %uses_new_polling, align 4
  %bf.set = or i16 %bf.load, 1024
  store i16 %bf.set, ptr %uses_new_polling, align 4
  %call2 = tail call fastcc i32 @ehci_reset(ptr noundef %hcd_priv.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ehci_mem_cleanup(ptr noundef %hcd_priv.i)
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !365
  tail call void @arm_heavy_mb() #9
  %periodic_dma = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 5, i32 4, i32 3
  %1 = ptrtoint ptr %periodic_dma to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %periodic_dma, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 1
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %frame_list = getelementptr inbounds %struct.ehci_regs, ptr %5, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %frame_list, i32 %3) #9, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !366
  tail call void @arm_heavy_mb() #9
  %async = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 5, i32 3
  %6 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %async, align 4
  %qh_dma = getelementptr inbounds %struct.ehci_qh, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %qh_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qh_dma, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %async_next = getelementptr inbounds %struct.ehci_regs, ptr %12, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %async_next, i32 %10) #9, !srcloc !359
  %caps = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 18
  %13 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %caps, align 4
  %hcc_params7 = getelementptr inbounds %struct.ehci_caps, ptr %14, i32 0, i32 2
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %hcc_params7) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !367
  %16 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %do.body.if.end15_crit_edge, label %do.body11

do.body.if.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

do.body11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !368
  tail call void @arm_heavy_mb() #9
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %segment = getelementptr inbounds %struct.ehci_regs, ptr %18, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %segment, i32 0) #9, !srcloc !359
  br label %if.end15

if.end15:                                         ; preds = %do.body11, %do.body.if.end15_crit_edge
  %command = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 20
  %19 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %command, align 4
  %and16 = and i32 %20, -244
  %or = or i32 %and16, 1
  store i32 %or, ptr %command, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !369
  tail call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %command, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #9, !srcloc !359
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %_buf) #9
  %26 = call ptr @memset(ptr %_buf, i32 255, i32 80)
  %27 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %command, align 4
  %and.i = and i32 %28, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  %cond2.i = select i1 %tobool1.not.i, ptr @.str.48, ptr @.str.47
  %shr.i = lshr i32 %28, 8
  %and3.i = and i32 %shr.i, 3
  %shr4.i = lshr i32 %28, 16
  %and5.i = and i32 %shr4.i, 63
  %and6.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %cond8.i = select i1 %tobool7.not.i, ptr @.str.46, ptr @.str.49
  %and9.i = and i32 %28, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %cond11.i = select i1 %tobool10.not.i, ptr @.str.46, ptr @.str.50
  %and12.i = and i32 %28, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %cond14.i = select i1 %tobool13.not.i, ptr @.str.46, ptr @.str.51
  %and15.i = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %cond17.i = select i1 %tobool16.not.i, ptr @.str.46, ptr @.str.52
  %shr18.i = lshr i32 %28, 2
  %and19.i = and i32 %shr18.i, 3
  %arrayidx20.i = getelementptr [4 x ptr], ptr @fls_strings, i32 0, i32 %and19.i
  %29 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx20.i, align 4
  %and21.i = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  %cond23.i = select i1 %tobool22.not.i, ptr @.str.46, ptr @.str.53
  %and24.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  %cond26.i = select i1 %tobool25.not.i, ptr @.str.55, ptr @.str.54
  %call.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %_buf, i32 noundef 80, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.45, i32 noundef %28, ptr noundef nonnull %cond2.i, i32 noundef %and3.i, i32 noundef %and5.i, ptr noundef nonnull %cond8.i, ptr noundef nonnull %cond11.i, ptr noundef nonnull %cond14.i, ptr noundef nonnull %cond17.i, ptr noundef %30, ptr noundef nonnull %cond23.i, ptr noundef nonnull %cond26.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oxu_run.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@oxu_run, %if.then32)) #9
          to label %do.end37 [label %if.then32], !srcloc !357

if.then32:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hcd, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oxu_run.__UNIQUE_ID_ddebug272, ptr noundef %32, ptr noundef nonnull @.str.42, ptr noundef nonnull %_buf) #9
  br label %do.end37

do.end37:                                         ; preds = %if.then32, %if.end15
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %_buf) #9
  %state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %33 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %state, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !370
  call void @arm_heavy_mb() #9
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  %configured_flag = getelementptr inbounds %struct.ehci_regs, ptr %35, i32 0, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %configured_flag, i32 16777216) #9, !srcloc !359
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #9, !srcloc !360
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !371
  %39 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %caps, align 4
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #9, !srcloc !360
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !372
  %shr = lshr i32 %42, 16
  %43 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hcd, align 8
  %sbrn = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 20, i32 1, i32 0, i32 0, i32 4
  %45 = ptrtoint ptr %sbrn to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %sbrn, align 4
  %conv = zext i8 %46 to i32
  %47 = lshr i32 %conv, 4
  %and66 = and i32 %conv, 15
  %shr67 = lshr i32 %42, 24
  %and68 = and i32 %shr, 255
  %48 = load i8, ptr @ignore_oc, align 1, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool69.not = icmp eq i8 %48, 0
  %cond = select i1 %tobool69.not, ptr @.str.46, ptr @.str.101
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.99, i32 noundef %47, i32 noundef %and66, i32 noundef %shr67, i32 noundef %and68, ptr noundef nonnull @.str.100, ptr noundef nonnull %cond) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !374
  call void @arm_heavy_mb() #9
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs, align 4
  %intr_enable = getelementptr inbounds %struct.ehci_regs, ptr %50, i32 0, i32 2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %intr_enable, i32 922746880) #9, !srcloc !359
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %if.then
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oxu_stop(ptr noundef %hcd) #2 align 64 {
entry:
  %_buf = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  tail call fastcc void @ehci_port_power(ptr noundef %hcd_priv.i)
  %watchdog = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 8, i32 3, i32 2
  %call1 = tail call i32 @del_timer_sync(ptr noundef %watchdog) #9
  %lock = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ehci_quiesce(ptr noundef %hcd_priv.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2 = tail call fastcc i32 @ehci_reset(ptr noundef %hcd_priv.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !375
  tail call void @arm_heavy_mb() #9
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %intr_enable = getelementptr inbounds %struct.ehci_regs, ptr %3, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %intr_enable, i32 0) #9, !srcloc !359
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !376
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %configured_flag = getelementptr inbounds %struct.ehci_regs, ptr %5, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %configured_flag, i32 0) #9, !srcloc !359
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %async = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 5, i32 3
  %6 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %async, align 4
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %if.end.if.end11_crit_edge, label %if.then10

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ehci_work(ptr noundef %hcd_priv.i)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  tail call fastcc void @ehci_mem_cleanup(ptr noundef %hcd_priv.i)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %_buf) #9
  %8 = call ptr @memset(ptr %_buf, i32 255, i32 80)
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %status = getelementptr inbounds %struct.ehci_regs, ptr %10, i32 0, i32 1
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status) #9, !srcloc !360
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !377
  %and.i = and i32 %12, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  %cond2.i = select i1 %tobool1.not.i, ptr @.str.46, ptr @.str.51
  %and3.i = and i32 %12, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %cond5.i = select i1 %tobool4.not.i, ptr @.str.46, ptr @.str.52
  %and6.i = and i32 %12, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %cond8.i = select i1 %tobool7.not.i, ptr @.str.46, ptr @.str.61
  %and9.i = and i32 %12, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %cond11.i = select i1 %tobool10.not.i, ptr @.str.46, ptr @.str.62
  %and12.i = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %cond14.i = select i1 %tobool13.not.i, ptr @.str.46, ptr @.str.63
  %and15.i = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %cond17.i = select i1 %tobool16.not.i, ptr @.str.46, ptr @.str.64
  %and18.i = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  %cond20.i = select i1 %tobool19.not.i, ptr @.str.46, ptr @.str.65
  %and21.i = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  %cond23.i = select i1 %tobool22.not.i, ptr @.str.46, ptr @.str.66
  %and24.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  %cond26.i = select i1 %tobool25.not.i, ptr @.str.46, ptr @.str.67
  %and27.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  %cond29.i = select i1 %tobool28.not.i, ptr @.str.46, ptr @.str.68
  %call.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %_buf, i32 noundef 80, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.45, i32 noundef %12, ptr noundef nonnull %cond2.i, ptr noundef nonnull %cond5.i, ptr noundef nonnull %cond8.i, ptr noundef nonnull %cond11.i, ptr noundef nonnull %cond14.i, ptr noundef nonnull %cond17.i, ptr noundef nonnull %cond20.i, ptr noundef nonnull %cond23.i, ptr noundef nonnull %cond26.i, ptr noundef nonnull %cond29.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oxu_stop.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@oxu_stop, %if.then23)) #9
          to label %do.end28 [label %if.then23], !srcloc !357

if.then23:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hcd, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oxu_stop.__UNIQUE_ID_ddebug273, ptr noundef %14, ptr noundef nonnull @.str.42, ptr noundef nonnull %_buf) #9
  br label %do.end28

do.end28:                                         ; preds = %if.then23, %if.end11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %_buf) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oxu_shutdown(ptr nocapture noundef readonly %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  tail call fastcc void @ehci_halt(ptr noundef %hcd_priv.i)
  %hcs_params.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 2
  %0 = ptrtoint ptr %hcs_params.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hcs_params.i, align 4
  %and.i = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not3.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not3.i, label %entry.ehci_turn_off_all_ports.exit_crit_edge, label %do.body.lr.ph.i

entry.ehci_turn_off_all_ports.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ehci_turn_off_all_ports.exit

do.body.lr.ph.i:                                  ; preds = %entry
  %regs.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %port.04.i = phi i32 [ %and.i, %do.body.lr.ph.i ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  %dec.i = add nsw i32 %port.04.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !378
  tail call void @arm_heavy_mb() #9
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr %struct.ehci_regs, ptr %3, i32 0, i32 9, i32 %dec.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 704643072) #9, !srcloc !359
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.body.i.ehci_turn_off_all_ports.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.body.i.ehci_turn_off_all_ports.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ehci_turn_off_all_ports.exit

ehci_turn_off_all_ports.exit:                     ; preds = %do.body.i.ehci_turn_off_all_ports.exit_crit_edge, %entry.ehci_turn_off_all_ports.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !379
  tail call void @arm_heavy_mb() #9
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 1
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %configured_flag = getelementptr inbounds %struct.ehci_regs, ptr %5, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %configured_flag, i32 0) #9, !srcloc !359
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %configured_flag3 = getelementptr inbounds %struct.ehci_regs, ptr %7, i32 0, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %configured_flag3) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !380
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxu_get_frame(ptr nocapture noundef readonly %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %frame_index = getelementptr inbounds %struct.ehci_regs, ptr %1, i32 0, i32 3
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %frame_index) #9, !srcloc !360
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !381
  %shr = lshr i32 %3, 3
  %periodic_size = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 5, i32 4, i32 1, i32 1
  %4 = ptrtoint ptr %periodic_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %periodic_size, align 4
  %rem = urem i32 %shr, %5
  ret i32 %rem
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxu_urb_enqueue(ptr noundef %hcd, ptr noundef %urb, i32 noundef %mem_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pipe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %1)
  %cmp = icmp ugt i32 %1, -1073741825
  br i1 %cmp, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %transfer_buffer2 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer2, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %4 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %transfer_buffer_length, align 4
  %div106 = lshr i32 %5, 12
  %rem4 = and i32 %5, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem4)
  %cmp5.not = icmp eq i32 %rem4, 0
  %not.cmp5.not = xor i1 %cmp5.not, true
  %inc = zext i1 %not.cmp5.not to i32
  %spec.select = add nuw nsw i32 %div106, %inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select)
  %cmp8 = icmp eq i32 %spec.select, 1
  br i1 %cmp8, label %if.end.cleanup.sink.split_crit_edge, label %for.cond.preheader

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %if.end
  %sub = add nsw i32 %spec.select, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp12145.not = icmp eq i32 %spec.select, 0
  br i1 %cmp12145.not, label %for.cond.preheader.do.body28.preheader_crit_edge, label %do.body.preheader.lr.ph

for.cond.preheader.do.body28.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body28.preheader

do.body.preheader.lr.ph:                          ; preds = %for.cond.preheader
  %mem_lock.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 7
  %arrayidx.i = getelementptr %struct.oxu_hcd, ptr %hcd_priv.i, i32 0, i32 4, i32 0
  %arrayidx.1.i = getelementptr %struct.oxu_hcd, ptr %hcd_priv.i, i32 0, i32 4, i32 1
  %arrayidx.2.i = getelementptr %struct.oxu_hcd, ptr %hcd_priv.i, i32 0, i32 4, i32 2
  %arrayidx.3.i = getelementptr %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 2
  %arrayidx.4.i = getelementptr %struct.oxu_hcd, ptr %hcd_priv.i, i32 0, i32 4, i32 4
  %arrayidx.5.i = getelementptr %struct.oxu_hcd, ptr %hcd_priv.i, i32 0, i32 4, i32 5
  %arrayidx.6.i = getelementptr %struct.oxu_hcd, ptr %hcd_priv.i, i32 0, i32 4, i32 6
  %arrayidx.7.i = getelementptr %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 3
  %murb_pool.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 20, i32 1, i32 0, i32 0, i32 2
  %smax = call i32 @llvm.smax.i32(i32 %sub, i32 1)
  br label %do.body.preheader

do.body.preheader:                                ; preds = %for.inc.critedge.do.body.preheader_crit_edge, %do.body.preheader.lr.ph
  %i.0146 = phi i32 [ 0, %do.body.preheader.lr.ph ], [ %inc27, %for.inc.critedge.do.body.preheader_crit_edge ]
  br label %do.body

do.body28.preheader:                              ; preds = %for.inc.critedge.do.body28.preheader_crit_edge, %for.cond.preheader.do.body28.preheader_crit_edge
  %mem_lock.i107 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 7
  %arrayidx.i108 = getelementptr %struct.oxu_hcd, ptr %hcd_priv.i, i32 0, i32 4, i32 0
  %arrayidx.1.i110 = getelementptr %struct.oxu_hcd, ptr %hcd_priv.i, i32 0, i32 4, i32 1
  %arrayidx.2.i113 = getelementptr %struct.oxu_hcd, ptr %hcd_priv.i, i32 0, i32 4, i32 2
  %arrayidx.3.i116 = getelementptr %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 2
  %arrayidx.4.i119 = getelementptr %struct.oxu_hcd, ptr %hcd_priv.i, i32 0, i32 4, i32 4
  %arrayidx.5.i122 = getelementptr %struct.oxu_hcd, ptr %hcd_priv.i, i32 0, i32 4, i32 5
  %arrayidx.6.i125 = getelementptr %struct.oxu_hcd, ptr %hcd_priv.i, i32 0, i32 4, i32 6
  %arrayidx.7.i128 = getelementptr %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 3
  %murb_pool.i133 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 20, i32 1, i32 0, i32 0, i32 2
  br label %do.body28

do.body:                                          ; preds = %if.then14, %do.body.preheader
  tail call void @_raw_spin_lock(ptr noundef %mem_lock.i) #9
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %do.body.oxu_murb_alloc.exit_crit_edge, label %for.inc.i

do.body.oxu_murb_alloc.exit_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %oxu_murb_alloc.exit

for.inc.i:                                        ; preds = %do.body
  %8 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.1.i = icmp eq i8 %9, 0
  br i1 %tobool.not.1.i, label %for.inc.i.oxu_murb_alloc.exit_crit_edge, label %for.inc.1.i

for.inc.i.oxu_murb_alloc.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %oxu_murb_alloc.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %10 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.2.i = icmp eq i8 %11, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.oxu_murb_alloc.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.oxu_murb_alloc.exit_crit_edge:        ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %oxu_murb_alloc.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %12 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.3.i = icmp eq i8 %13, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.oxu_murb_alloc.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.oxu_murb_alloc.exit_crit_edge:        ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %oxu_murb_alloc.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %14 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.4.i = icmp eq i8 %15, 0
  br i1 %tobool.not.4.i, label %for.inc.3.i.oxu_murb_alloc.exit_crit_edge, label %for.inc.4.i

for.inc.3.i.oxu_murb_alloc.exit_crit_edge:        ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %oxu_murb_alloc.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %16 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.5.i = icmp eq i8 %17, 0
  br i1 %tobool.not.5.i, label %for.inc.4.i.oxu_murb_alloc.exit_crit_edge, label %for.inc.5.i

for.inc.4.i.oxu_murb_alloc.exit_crit_edge:        ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %oxu_murb_alloc.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %18 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.6.i = icmp eq i8 %19, 0
  br i1 %tobool.not.6.i, label %for.inc.5.i.oxu_murb_alloc.exit_crit_edge, label %for.inc.6.i

for.inc.5.i.oxu_murb_alloc.exit_crit_edge:        ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %oxu_murb_alloc.exit

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %20 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.7.i = icmp eq i8 %21, 0
  br i1 %tobool.not.7.i, label %for.inc.6.i.oxu_murb_alloc.exit_crit_edge, label %oxu_murb_alloc.exit.thread

for.inc.6.i.oxu_murb_alloc.exit_crit_edge:        ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %oxu_murb_alloc.exit

oxu_murb_alloc.exit.thread:                       ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %mem_lock.i) #9
  br label %if.then14

oxu_murb_alloc.exit:                              ; preds = %for.inc.6.i.oxu_murb_alloc.exit_crit_edge, %for.inc.5.i.oxu_murb_alloc.exit_crit_edge, %for.inc.4.i.oxu_murb_alloc.exit_crit_edge, %for.inc.3.i.oxu_murb_alloc.exit_crit_edge, %for.inc.2.i.oxu_murb_alloc.exit_crit_edge, %for.inc.1.i.oxu_murb_alloc.exit_crit_edge, %for.inc.i.oxu_murb_alloc.exit_crit_edge, %do.body.oxu_murb_alloc.exit_crit_edge
  %i.018.lcssa.i = phi i32 [ 0, %do.body.oxu_murb_alloc.exit_crit_edge ], [ 1, %for.inc.i.oxu_murb_alloc.exit_crit_edge ], [ 2, %for.inc.1.i.oxu_murb_alloc.exit_crit_edge ], [ 3, %for.inc.2.i.oxu_murb_alloc.exit_crit_edge ], [ 4, %for.inc.3.i.oxu_murb_alloc.exit_crit_edge ], [ 5, %for.inc.4.i.oxu_murb_alloc.exit_crit_edge ], [ 6, %for.inc.5.i.oxu_murb_alloc.exit_crit_edge ], [ 7, %for.inc.6.i.oxu_murb_alloc.exit_crit_edge ]
  %arrayidx.lcssa.i = phi ptr [ %arrayidx.i, %do.body.oxu_murb_alloc.exit_crit_edge ], [ %arrayidx.1.i, %for.inc.i.oxu_murb_alloc.exit_crit_edge ], [ %arrayidx.2.i, %for.inc.1.i.oxu_murb_alloc.exit_crit_edge ], [ %arrayidx.3.i, %for.inc.2.i.oxu_murb_alloc.exit_crit_edge ], [ %arrayidx.4.i, %for.inc.3.i.oxu_murb_alloc.exit_crit_edge ], [ %arrayidx.5.i, %for.inc.4.i.oxu_murb_alloc.exit_crit_edge ], [ %arrayidx.6.i, %for.inc.5.i.oxu_murb_alloc.exit_crit_edge ], [ %arrayidx.7.i, %for.inc.6.i.oxu_murb_alloc.exit_crit_edge ]
  %22 = ptrtoint ptr %murb_pool.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %murb_pool.i, align 4
  %arrayidx3.i = getelementptr %struct.oxu_murb, ptr %23, i32 %i.018.lcssa.i
  %24 = ptrtoint ptr %arrayidx.lcssa.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %arrayidx.lcssa.i, align 1
  tail call void @_raw_spin_unlock(ptr noundef %mem_lock.i) #9
  %tobool.not = icmp eq ptr %arrayidx3.i, null
  br i1 %tobool.not, label %oxu_murb_alloc.exit.if.then14_crit_edge, label %do.end.critedge

oxu_murb_alloc.exit.if.then14_crit_edge:          ; preds = %oxu_murb_alloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

if.then14:                                        ; preds = %oxu_murb_alloc.exit.if.then14_crit_edge, %oxu_murb_alloc.exit.thread
  tail call void @schedule() #9
  br label %do.body

do.end.critedge:                                  ; preds = %oxu_murb_alloc.exit
  %25 = call ptr @memcpy(ptr %arrayidx3.i, ptr %urb, i32 120)
  %transfer_buffer_length17 = getelementptr inbounds %struct.urb, ptr %arrayidx3.i, i32 0, i32 19
  %26 = ptrtoint ptr %transfer_buffer_length17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4096, ptr %transfer_buffer_length17, align 4
  %mul = shl i32 %i.0146, 12
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  %transfer_buffer18 = getelementptr inbounds %struct.urb, ptr %arrayidx3.i, i32 0, i32 14
  %27 = ptrtoint ptr %transfer_buffer18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr, ptr %transfer_buffer18, align 4
  %complete = getelementptr inbounds %struct.urb, ptr %arrayidx3.i, i32 0, i32 28
  %28 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %complete, align 4
  %main = getelementptr %struct.oxu_murb, ptr %23, i32 %i.018.lcssa.i, i32 1
  %29 = ptrtoint ptr %main to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %urb, ptr %main, align 4
  %last = getelementptr %struct.oxu_murb, ptr %23, i32 %i.018.lcssa.i, i32 2
  %30 = ptrtoint ptr %last to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %last, align 4
  %call20143 = tail call fastcc i32 @__oxu_urb_enqueue(ptr noundef %hcd, ptr noundef nonnull %arrayidx3.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20143)
  %tobool21.not144 = icmp eq i32 %call20143, 0
  br i1 %tobool21.not144, label %do.end.critedge.for.inc.critedge_crit_edge, label %do.end.critedge.if.then22_crit_edge

do.end.critedge.if.then22_crit_edge:              ; preds = %do.end.critedge
  br label %if.then22

do.end.critedge.for.inc.critedge_crit_edge:       ; preds = %do.end.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.critedge

if.then22:                                        ; preds = %if.then22.if.then22_crit_edge, %do.end.critedge.if.then22_crit_edge
  tail call void @schedule() #9
  %call20 = tail call fastcc i32 @__oxu_urb_enqueue(ptr noundef %hcd, ptr noundef nonnull %arrayidx3.i)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22.for.inc.critedge_crit_edge, label %if.then22.if.then22_crit_edge

if.then22.if.then22_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

if.then22.for.inc.critedge_crit_edge:             ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.critedge

for.inc.critedge:                                 ; preds = %if.then22.for.inc.critedge_crit_edge, %do.end.critedge.for.inc.critedge_crit_edge
  %inc27 = add nuw nsw i32 %i.0146, 1
  %exitcond.not = icmp eq i32 %inc27, %smax
  br i1 %exitcond.not, label %for.inc.critedge.do.body28.preheader_crit_edge, label %for.inc.critedge.do.body.preheader_crit_edge

for.inc.critedge.do.body.preheader_crit_edge:     ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.preheader

for.inc.critedge.do.body28.preheader_crit_edge:   ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body28.preheader

do.body28:                                        ; preds = %if.then31, %do.body28.preheader
  tail call void @_raw_spin_lock(ptr noundef %mem_lock.i107) #9
  %31 = ptrtoint ptr %arrayidx.i108 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i108, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i109 = icmp eq i8 %32, 0
  br i1 %tobool.not.i109, label %do.body28.oxu_murb_alloc.exit137_crit_edge, label %for.inc.i112

do.body28.oxu_murb_alloc.exit137_crit_edge:       ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %oxu_murb_alloc.exit137

for.inc.i112:                                     ; preds = %do.body28
  %33 = ptrtoint ptr %arrayidx.1.i110 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.1.i110, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.1.i111 = icmp eq i8 %34, 0
  br i1 %tobool.not.1.i111, label %for.inc.i112.oxu_murb_alloc.exit137_crit_edge, label %for.inc.1.i115

for.inc.i112.oxu_murb_alloc.exit137_crit_edge:    ; preds = %for.inc.i112
  call void @__sanitizer_cov_trace_pc() #11
  br label %oxu_murb_alloc.exit137

for.inc.1.i115:                                   ; preds = %for.inc.i112
  %35 = ptrtoint ptr %arrayidx.2.i113 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.2.i113, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.2.i114 = icmp eq i8 %36, 0
  br i1 %tobool.not.2.i114, label %for.inc.1.i115.oxu_murb_alloc.exit137_crit_edge, label %for.inc.2.i118

for.inc.1.i115.oxu_murb_alloc.exit137_crit_edge:  ; preds = %for.inc.1.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %oxu_murb_alloc.exit137

for.inc.2.i118:                                   ; preds = %for.inc.1.i115
  %37 = ptrtoint ptr %arrayidx.3.i116 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.3.i116, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.3.i117 = icmp eq i8 %38, 0
  br i1 %tobool.not.3.i117, label %for.inc.2.i118.oxu_murb_alloc.exit137_crit_edge, label %for.inc.3.i121

for.inc.2.i118.oxu_murb_alloc.exit137_crit_edge:  ; preds = %for.inc.2.i118
  call void @__sanitizer_cov_trace_pc() #11
  br label %oxu_murb_alloc.exit137

for.inc.3.i121:                                   ; preds = %for.inc.2.i118
  %39 = ptrtoint ptr %arrayidx.4.i119 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.4.i119, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.4.i120 = icmp eq i8 %40, 0
  br i1 %tobool.not.4.i120, label %for.inc.3.i121.oxu_murb_alloc.exit137_crit_edge, label %for.inc.4.i124

for.inc.3.i121.oxu_murb_alloc.exit137_crit_edge:  ; preds = %for.inc.3.i121
  call void @__sanitizer_cov_trace_pc() #11
  br label %oxu_murb_alloc.exit137

for.inc.4.i124:                                   ; preds = %for.inc.3.i121
  %41 = ptrtoint ptr %arrayidx.5.i122 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.5.i122, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.5.i123 = icmp eq i8 %42, 0
  br i1 %tobool.not.5.i123, label %for.inc.4.i124.oxu_murb_alloc.exit137_crit_edge, label %for.inc.5.i127

for.inc.4.i124.oxu_murb_alloc.exit137_crit_edge:  ; preds = %for.inc.4.i124
  call void @__sanitizer_cov_trace_pc() #11
  br label %oxu_murb_alloc.exit137

for.inc.5.i127:                                   ; preds = %for.inc.4.i124
  %43 = ptrtoint ptr %arrayidx.6.i125 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.6.i125, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.6.i126 = icmp eq i8 %44, 0
  br i1 %tobool.not.6.i126, label %for.inc.5.i127.oxu_murb_alloc.exit137_crit_edge, label %for.inc.6.i130

for.inc.5.i127.oxu_murb_alloc.exit137_crit_edge:  ; preds = %for.inc.5.i127
  call void @__sanitizer_cov_trace_pc() #11
  br label %oxu_murb_alloc.exit137

for.inc.6.i130:                                   ; preds = %for.inc.5.i127
  %45 = ptrtoint ptr %arrayidx.7.i128 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.7.i128, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.7.i129 = icmp eq i8 %46, 0
  br i1 %tobool.not.7.i129, label %for.inc.6.i130.oxu_murb_alloc.exit137_crit_edge, label %oxu_murb_alloc.exit137.thread

for.inc.6.i130.oxu_murb_alloc.exit137_crit_edge:  ; preds = %for.inc.6.i130
  call void @__sanitizer_cov_trace_pc() #11
  br label %oxu_murb_alloc.exit137

oxu_murb_alloc.exit137.thread:                    ; preds = %for.inc.6.i130
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %mem_lock.i107) #9
  br label %if.then31

oxu_murb_alloc.exit137:                           ; preds = %for.inc.6.i130.oxu_murb_alloc.exit137_crit_edge, %for.inc.5.i127.oxu_murb_alloc.exit137_crit_edge, %for.inc.4.i124.oxu_murb_alloc.exit137_crit_edge, %for.inc.3.i121.oxu_murb_alloc.exit137_crit_edge, %for.inc.2.i118.oxu_murb_alloc.exit137_crit_edge, %for.inc.1.i115.oxu_murb_alloc.exit137_crit_edge, %for.inc.i112.oxu_murb_alloc.exit137_crit_edge, %do.body28.oxu_murb_alloc.exit137_crit_edge
  %i.018.lcssa.i131 = phi i32 [ 0, %do.body28.oxu_murb_alloc.exit137_crit_edge ], [ 1, %for.inc.i112.oxu_murb_alloc.exit137_crit_edge ], [ 2, %for.inc.1.i115.oxu_murb_alloc.exit137_crit_edge ], [ 3, %for.inc.2.i118.oxu_murb_alloc.exit137_crit_edge ], [ 4, %for.inc.3.i121.oxu_murb_alloc.exit137_crit_edge ], [ 5, %for.inc.4.i124.oxu_murb_alloc.exit137_crit_edge ], [ 6, %for.inc.5.i127.oxu_murb_alloc.exit137_crit_edge ], [ 7, %for.inc.6.i130.oxu_murb_alloc.exit137_crit_edge ]
  %arrayidx.lcssa.i132 = phi ptr [ %arrayidx.i108, %do.body28.oxu_murb_alloc.exit137_crit_edge ], [ %arrayidx.1.i110, %for.inc.i112.oxu_murb_alloc.exit137_crit_edge ], [ %arrayidx.2.i113, %for.inc.1.i115.oxu_murb_alloc.exit137_crit_edge ], [ %arrayidx.3.i116, %for.inc.2.i118.oxu_murb_alloc.exit137_crit_edge ], [ %arrayidx.4.i119, %for.inc.3.i121.oxu_murb_alloc.exit137_crit_edge ], [ %arrayidx.5.i122, %for.inc.4.i124.oxu_murb_alloc.exit137_crit_edge ], [ %arrayidx.6.i125, %for.inc.5.i127.oxu_murb_alloc.exit137_crit_edge ], [ %arrayidx.7.i128, %for.inc.6.i130.oxu_murb_alloc.exit137_crit_edge ]
  %47 = ptrtoint ptr %murb_pool.i133 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %murb_pool.i133, align 4
  %arrayidx3.i134 = getelementptr %struct.oxu_murb, ptr %48, i32 %i.018.lcssa.i131
  %49 = ptrtoint ptr %arrayidx.lcssa.i132 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %arrayidx.lcssa.i132, align 1
  tail call void @_raw_spin_unlock(ptr noundef %mem_lock.i107) #9
  %tobool30.not = icmp eq ptr %arrayidx3.i134, null
  br i1 %tobool30.not, label %oxu_murb_alloc.exit137.if.then31_crit_edge, label %do.end36.critedge

oxu_murb_alloc.exit137.if.then31_crit_edge:       ; preds = %oxu_murb_alloc.exit137
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

if.then31:                                        ; preds = %oxu_murb_alloc.exit137.if.then31_crit_edge, %oxu_murb_alloc.exit137.thread
  tail call void @schedule() #9
  br label %do.body28

do.end36.critedge:                                ; preds = %oxu_murb_alloc.exit137
  %50 = call ptr @memcpy(ptr %arrayidx3.i134, ptr %urb, i32 120)
  %cond = select i1 %cmp5.not, i32 4096, i32 %rem4
  %transfer_buffer_length38 = getelementptr inbounds %struct.urb, ptr %arrayidx3.i134, i32 0, i32 19
  %51 = ptrtoint ptr %transfer_buffer_length38 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %cond, ptr %transfer_buffer_length38, align 4
  %mul40 = shl i32 %sub, 12
  %add.ptr41 = getelementptr i8, ptr %3, i32 %mul40
  %transfer_buffer42 = getelementptr inbounds %struct.urb, ptr %arrayidx3.i134, i32 0, i32 14
  %52 = ptrtoint ptr %transfer_buffer42 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %add.ptr41, ptr %transfer_buffer42, align 4
  %complete43 = getelementptr inbounds %struct.urb, ptr %arrayidx3.i134, i32 0, i32 28
  %53 = ptrtoint ptr %complete43 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %complete43, align 4
  %main44 = getelementptr %struct.oxu_murb, ptr %48, i32 %i.018.lcssa.i131, i32 1
  %54 = ptrtoint ptr %main44 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %urb, ptr %main44, align 4
  %last45 = getelementptr %struct.oxu_murb, ptr %48, i32 %i.018.lcssa.i131, i32 2
  %55 = ptrtoint ptr %last45 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %last45, align 4
  %call47147 = tail call fastcc i32 @__oxu_urb_enqueue(ptr noundef %hcd, ptr noundef nonnull %arrayidx3.i134)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47147)
  %tobool48.not148 = icmp eq i32 %call47147, 0
  br i1 %tobool48.not148, label %do.end36.critedge.cleanup_crit_edge, label %do.end36.critedge.if.then49_crit_edge

do.end36.critedge.if.then49_crit_edge:            ; preds = %do.end36.critedge
  br label %if.then49

do.end36.critedge.cleanup_crit_edge:              ; preds = %do.end36.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then49:                                        ; preds = %if.then49.if.then49_crit_edge, %do.end36.critedge.if.then49_crit_edge
  tail call void @schedule() #9
  %call47 = tail call fastcc i32 @__oxu_urb_enqueue(ptr noundef %hcd, ptr noundef nonnull %arrayidx3.i134)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then49.cleanup_crit_edge, label %if.then49.if.then49_crit_edge

if.then49.if.then49_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then49

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %call10 = tail call fastcc i32 @__oxu_urb_enqueue(ptr noundef %hcd, ptr noundef %urb)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then49.cleanup_crit_edge, %do.end36.critedge.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end36.critedge.cleanup_crit_edge ], [ %call10, %cleanup.sink.split ], [ 0, %if.then49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxu_urb_dequeue(ptr noundef %hcd, ptr nocapture noundef readonly %urb, i32 noundef %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %lock = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pipe, align 4
  %shr.mask = and i32 %1, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr.mask)
  %cond = icmp eq i32 %shr.mask, 1073741824
  %hcpriv7 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %2 = ptrtoint ptr %hcpriv7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcpriv7, align 4
  %tobool8.not = icmp eq ptr %3, null
  br i1 %cond, label %sw.bb6, label %sw.default

sw.default:                                       ; preds = %entry
  br i1 %tobool8.not, label %sw.default.done_crit_edge, label %if.end

sw.default.done_crit_edge:                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end:                                           ; preds = %sw.default
  %qh_state.i = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %qh_state.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %qh_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.i = icmp eq i8 %5, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.if.else.i_crit_edge

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end
  %reclaim.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 5, i32 4
  %6 = ptrtoint ptr %reclaim.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reclaim.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %state.i = getelementptr %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true2.i.if.else.i_crit_edge, label %land.lhs.true2.i.for.cond.i_crit_edge

land.lhs.true2.i.for.cond.i_crit_edge:            ; preds = %land.lhs.true2.i
  br label %for.cond.i

land.lhs.true2.i.if.else.i_crit_edge:             ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %land.lhs.true2.i.for.cond.i_crit_edge
  %last.0.i = phi ptr [ %11, %for.cond.i.for.cond.i_crit_edge ], [ %7, %land.lhs.true2.i.for.cond.i_crit_edge ]
  %reclaim5.i = getelementptr inbounds %struct.ehci_qh, ptr %last.0.i, i32 0, i32 13
  %10 = ptrtoint ptr %reclaim5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reclaim5.i, align 8
  %tobool6.not.i = icmp eq ptr %11, null
  br i1 %tobool6.not.i, label %for.end.i, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %reclaim5.i.le = getelementptr inbounds %struct.ehci_qh, ptr %last.0.i, i32 0, i32 13
  %12 = ptrtoint ptr %qh_state.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 4, ptr %qh_state.i, align 8
  %13 = ptrtoint ptr %reclaim5.i.le to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %3, ptr %reclaim5.i.le, align 8
  br label %if.end18.i

if.else.i:                                        ; preds = %land.lhs.true2.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  %state11.i = getelementptr %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %14 = ptrtoint ptr %state11.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state11.i, align 4
  %and12.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %land.lhs.true14.i, label %if.else.i.if.end18.i_crit_edge

if.else.i.if.end18.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

land.lhs.true14.i:                                ; preds = %if.else.i
  %reclaim15.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 5, i32 4
  %16 = ptrtoint ptr %reclaim15.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reclaim15.i, align 4
  %tobool16.not.i = icmp eq ptr %17, null
  br i1 %tobool16.not.i, label %land.lhs.true14.i.if.end18.i_crit_edge, label %if.then17.i

land.lhs.true14.i.if.end18.i_crit_edge:           ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.then17.i:                                      ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @end_unlink_async(ptr noundef %hcd_priv.i) #13
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %land.lhs.true14.i.if.end18.i_crit_edge, %if.else.i.if.end18.i_crit_edge, %for.end.i
  %18 = ptrtoint ptr %qh_state.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %qh_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp21.i = icmp eq i8 %19, 1
  br i1 %cmp21.i, label %if.then23.i, label %if.end18.i.done_crit_edge

if.end18.i.done_crit_edge:                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then23.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @start_unlink_async(ptr noundef %hcd_priv.i, ptr noundef nonnull %3) #13
  br label %done

sw.bb6:                                           ; preds = %entry
  br i1 %tobool8.not, label %sw.bb6.done_crit_edge, label %if.end10

sw.bb6.done_crit_edge:                            ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end10:                                         ; preds = %sw.bb6
  %qh_state = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 17
  %20 = ptrtoint ptr %qh_state to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %qh_state, align 8
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i8 %21, label %do.body16 [
    i8 1, label %sw.bb12
    i8 3, label %if.end10.sw.bb13_crit_edge
  ]

if.end10.sw.bb13_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb13

sw.bb12:                                          ; preds = %if.end10
  tail call fastcc void @qh_unlink_periodic(ptr noundef %hcd_priv.i, ptr noundef nonnull %3) #9
  %qtd_list.i = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 11
  %23 = ptrtoint ptr %qtd_list.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %qtd_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %24, %qtd_list.i
  br i1 %cmp.i.not.i, label %sw.bb12.cond.false3.i_crit_edge, label %lor.lhs.false.i

sw.bb12.cond.false3.i_crit_edge:                  ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false3.i

lor.lhs.false.i:                                  ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  %hw_info2.i = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 2
  %25 = ptrtoint ptr %hw_info2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hw_info2.i, align 8
  %and.i76 = and i32 %26, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i76)
  %cmp.not.i = icmp eq i32 %and.i76, 0
  %spec.select.i = select i1 %cmp.not.i, i32 55, i32 2
  br label %cond.false3.i

cond.false3.i:                                    ; preds = %lor.lhs.false.i, %sw.bb12.cond.false3.i_crit_edge
  %wait.0.i = phi i32 [ 2, %sw.bb12.cond.false3.i_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %27(i32 noundef %wait.0.i) #9
  %28 = ptrtoint ptr %qh_state to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 3, ptr %qh_state, align 8
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 16777216, ptr %3, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  br label %sw.bb13

sw.bb13:                                          ; preds = %cond.false3.i, %if.end10.sw.bb13_crit_edge
  %call14 = tail call fastcc i32 @qh_completions(ptr noundef %hcd_priv.i, ptr noundef nonnull %3)
  %qtd_list = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 11
  %30 = ptrtoint ptr %qtd_list to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %qtd_list, align 4
  %cmp.i78.not = icmp eq ptr %31, %qtd_list
  br i1 %cmp.i78.not, label %sw.bb13.done_crit_edge, label %land.lhs.true

sw.bb13.done_crit_edge:                           ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

do.body16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oxu_urb_dequeue.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@oxu_urb_dequeue, %if.then22)) #9
          to label %done [label %if.then22], !srcloc !357

if.then22:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hcd, align 8
  %34 = ptrtoint ptr %qh_state to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %qh_state, align 8
  %conv25 = zext i8 %35 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oxu_urb_dequeue.__UNIQUE_ID_ddebug274, ptr noundef %33, ptr noundef nonnull @.str.119, ptr noundef nonnull %3, i32 noundef %conv25) #9
  br label %done

land.lhs.true:                                    ; preds = %sw.bb13
  %state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %36 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %state, align 4
  %and31 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %land.lhs.true.done_crit_edge, label %if.then33

land.lhs.true.done_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then33:                                        ; preds = %land.lhs.true
  %call35 = tail call fastcc i32 @qh_schedule(ptr noundef %hcd_priv.i, ptr noundef nonnull %3)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp37.not = icmp eq i32 %call35, 0
  br i1 %cmp37.not, label %if.then33.cleanup_crit_edge, label %do.end42

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end42:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.120, ptr noundef nonnull %3, i32 noundef %call35) #12
  br label %cleanup

done:                                             ; preds = %land.lhs.true.done_crit_edge, %if.then22, %do.body16, %sw.bb13.done_crit_edge, %sw.bb6.done_crit_edge, %if.then23.i, %if.end18.i.done_crit_edge, %sw.default.done_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  br label %cleanup

cleanup:                                          ; preds = %done, %do.end42, %if.then33.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %done ], [ %call35, %do.end42 ], [ 0, %if.then33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oxu_endpoint_disable(ptr noundef %hcd, ptr nocapture noundef %ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %lock = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 3
  %call487 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %ep, i32 0, i32 5
  %0 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcpriv, align 4
  %tobool.not88 = icmp eq ptr %1, null
  br i1 %tobool.not88, label %entry.done_crit_edge, label %if.end.lr.ph

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end.lr.ph:                                     ; preds = %entry
  %state = getelementptr %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %async = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 5, i32 3
  %reclaim.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 5, i32 4
  br label %if.end

if.end:                                           ; preds = %idle_timeout.if.end_crit_edge, %if.end.lr.ph
  %2 = phi ptr [ %1, %if.end.lr.ph ], [ %29, %idle_timeout.if.end_crit_edge ]
  %call489 = phi i32 [ %call487, %if.end.lr.ph ], [ %call4, %idle_timeout.if.end_crit_edge ]
  %hw_info1 = getelementptr inbounds %struct.ehci_qh, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %hw_info1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hw_info1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp7 = icmp eq i32 %4, 0
  br i1 %cmp7, label %if.end.idle_timeout_crit_edge, label %if.end10

if.end.idle_timeout_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %idle_timeout

if.end10:                                         ; preds = %if.end
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.then12, label %if.end10.if.end13_crit_edge

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %qh_state = getelementptr inbounds %struct.ehci_qh, ptr %2, i32 0, i32 17
  %7 = ptrtoint ptr %qh_state to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %qh_state, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10.if.end13_crit_edge
  %qh_state14 = getelementptr inbounds %struct.ehci_qh, ptr %2, i32 0, i32 17
  %8 = ptrtoint ptr %qh_state14 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %qh_state14, align 8
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.155)
  switch i8 %9, label %if.end13.do.end33_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %if.end13.idle_timeout_crit_edge
    i8 3, label %sw.bb26
  ]

if.end13.idle_timeout_crit_edge:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %idle_timeout

if.end13.do.end33_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33

sw.bb:                                            ; preds = %if.end13
  %11 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %async, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %sw.bb
  %.pn = phi ptr [ %12, %sw.bb ], [ %tmp.0, %for.cond.for.cond_crit_edge ]
  %tmp.0.in = getelementptr inbounds %struct.ehci_qh, ptr %.pn, i32 0, i32 10
  %13 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %tmp.0 = load ptr, ptr %tmp.0.in, align 8
  %tobool16.not = icmp eq ptr %tmp.0, null
  %cmp17.not = icmp eq ptr %tmp.0, %2
  %or.cond = select i1 %tobool16.not, i1 true, i1 %cmp17.not
  br i1 %or.cond, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %tobool16.not, label %for.end.do.end33_crit_edge, label %land.lhs.true.i

for.end.do.end33_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33

land.lhs.true.i:                                  ; preds = %for.end
  %14 = ptrtoint ptr %reclaim.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reclaim.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 4
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true2.i.if.else.i_crit_edge, label %land.lhs.true2.i.for.cond.i_crit_edge

land.lhs.true2.i.for.cond.i_crit_edge:            ; preds = %land.lhs.true2.i
  br label %for.cond.i

land.lhs.true2.i.if.else.i_crit_edge:             ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %land.lhs.true2.i.for.cond.i_crit_edge
  %last.0.i = phi ptr [ %19, %for.cond.i.for.cond.i_crit_edge ], [ %15, %land.lhs.true2.i.for.cond.i_crit_edge ]
  %reclaim5.i = getelementptr inbounds %struct.ehci_qh, ptr %last.0.i, i32 0, i32 13
  %18 = ptrtoint ptr %reclaim5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reclaim5.i, align 8
  %tobool6.not.i = icmp eq ptr %19, null
  br i1 %tobool6.not.i, label %for.end.i, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %reclaim5.i.le = getelementptr inbounds %struct.ehci_qh, ptr %last.0.i, i32 0, i32 13
  %20 = ptrtoint ptr %qh_state14 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 4, ptr %qh_state14, align 8
  %21 = ptrtoint ptr %reclaim5.i.le to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %2, ptr %reclaim5.i.le, align 8
  br label %if.end18.i

if.else.i:                                        ; preds = %land.lhs.true2.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state, align 4
  %and12.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %land.lhs.true14.i, label %if.else.i.if.end18.i_crit_edge

if.else.i.if.end18.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

land.lhs.true14.i:                                ; preds = %if.else.i
  %24 = ptrtoint ptr %reclaim.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reclaim.i, align 4
  %tobool16.not.i = icmp eq ptr %25, null
  br i1 %tobool16.not.i, label %land.lhs.true14.i.if.end18.i_crit_edge, label %if.then17.i

land.lhs.true14.i.if.end18.i_crit_edge:           ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.then17.i:                                      ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @end_unlink_async(ptr noundef %hcd_priv.i) #13
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %land.lhs.true14.i.if.end18.i_crit_edge, %if.else.i.if.end18.i_crit_edge, %for.end.i
  %26 = ptrtoint ptr %qh_state14 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %qh_state14, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp21.i = icmp eq i8 %27, 1
  br i1 %cmp21.i, label %if.then23.i, label %if.end18.i.idle_timeout_crit_edge

if.end18.i.idle_timeout_crit_edge:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %idle_timeout

if.then23.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @start_unlink_async(ptr noundef %hcd_priv.i, ptr noundef nonnull %2) #13
  br label %idle_timeout

idle_timeout:                                     ; preds = %if.then23.i, %if.end18.i.idle_timeout_crit_edge, %if.end13.idle_timeout_crit_edge, %if.end.idle_timeout_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call489) #9
  %call25 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #9
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %28 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hcpriv, align 4
  %tobool.not = icmp eq ptr %29, null
  br i1 %tobool.not, label %idle_timeout.done_crit_edge, label %idle_timeout.if.end_crit_edge

idle_timeout.if.end_crit_edge:                    ; preds = %idle_timeout
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

idle_timeout.done_crit_edge:                      ; preds = %idle_timeout
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

sw.bb26:                                          ; preds = %if.end13
  %qtd_list = getelementptr inbounds %struct.ehci_qh, ptr %2, i32 0, i32 11
  %30 = ptrtoint ptr %qtd_list to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %qtd_list, align 4
  %cmp.i65.not = icmp eq ptr %31, %qtd_list
  br i1 %cmp.i65.not, label %if.then29, label %sw.bb26.do.end33_crit_edge

sw.bb26.do.end33_crit_edge:                       ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33

if.then29:                                        ; preds = %sw.bb26
  %kref.i = getelementptr inbounds %struct.ehci_qh, ptr %2, i32 0, i32 15
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !383
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #9
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #9, !srcloc !384
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.sw.epilog_crit_edge, label %if.then10.i.i.i.i.i, !prof !385

if.end5.i.i.i.i.i.sw.epilog_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #9
  br label %sw.epilog

if.then.i.i:                                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !386
  tail call fastcc void @qh_destroy(ptr noundef %kref.i) #9
  br label %sw.epilog

do.end33:                                         ; preds = %sw.bb26.do.end33_crit_edge, %for.end.do.end33_crit_edge, %if.end13.do.end33_crit_edge
  %33 = phi i8 [ 3, %sw.bb26.do.end33_crit_edge ], [ 1, %for.end.do.end33_crit_edge ], [ %9, %if.end13.do.end33_crit_edge ]
  %34 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hcd, align 8
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep, i32 0, i32 2
  %36 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bEndpointAddress, align 2
  %conv35 = zext i8 %37 to i32
  %conv37 = zext i8 %33 to i32
  %qtd_list38 = getelementptr inbounds %struct.ehci_qh, ptr %2, i32 0, i32 11
  %38 = ptrtoint ptr %qtd_list38 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %qtd_list38, align 4
  %cmp.i66.not = icmp eq ptr %39, %qtd_list38
  %cond = select i1 %cmp.i66.not, ptr @.str.46, ptr @.str.123
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.121, ptr noundef nonnull %2, i32 noundef %conv35, i32 noundef %conv37, ptr noundef nonnull %cond) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end33, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.sw.epilog_crit_edge
  %40 = ptrtoint ptr %hcpriv to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %hcpriv, align 4
  br label %done

done:                                             ; preds = %sw.epilog, %idle_timeout.done_crit_edge, %entry.done_crit_edge
  %call476 = phi i32 [ %call489, %sw.epilog ], [ %call487, %entry.done_crit_edge ], [ %call4, %idle_timeout.done_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call476) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxu_hub_status_data(ptr noundef %hcd, ptr nocapture noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %buf, align 1
  %hcs_params = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 2
  %3 = ptrtoint ptr %hcs_params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hcs_params, align 4
  %and2 = and i32 %4, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and2)
  %cmp = icmp ugt i32 %and2, 7
  br i1 %cmp, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx4 = getelementptr i8, ptr %buf, i32 1
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx4, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %retval1.0 = phi i32 [ 2, %if.then3 ], [ 1, %if.end.if.end5_crit_edge ]
  %6 = load i8, ptr @ignore_oc, align 1, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not = icmp eq i8 %6, 0
  %. = select i1 %tobool6.not, i32 42, i32 10
  %lock = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 3
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %cmp1582.not = icmp eq i32 %and2, 0
  br i1 %cmp1582.not, label %for.end.thread, label %for.body.lr.ph

for.end.thread:                                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #9
  br label %18

for.body.lr.ph:                                   ; preds = %if.end5
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %status.085 = phi i32 [ 0, %for.body.lr.ph ], [ %status.1, %for.inc.for.body_crit_edge ]
  %i.083 = phi i32 [ 0, %for.body.lr.ph ], [ %inc52, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %arrayidx17 = getelementptr %struct.ehci_regs, ptr %8, i32 0, i32 9, i32 %i.083
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx17) #9, !srcloc !360
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !387
  %and21 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.then23, label %for.body.if.end25_crit_edge

for.body.if.end25_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then23:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx24 = getelementptr %struct.oxu_hcd, ptr %hcd_priv.i, i32 0, i32 22, i32 %i.083
  %11 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx24, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %for.body.if.end25_crit_edge
  %and26 = and i32 %10, %.
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %cmp27.not = icmp eq i32 %and26, 0
  br i1 %cmp27.not, label %lor.lhs.false, label %if.end25.if.then36_crit_edge

if.end25.if.then36_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

lor.lhs.false:                                    ; preds = %if.end25
  %and29 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %cmp30.not = icmp eq i32 %and29, 0
  br i1 %cmp30.not, label %lor.lhs.false.for.inc_crit_edge, label %land.lhs.true

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %arrayidx33 = getelementptr %struct.oxu_hcd, ptr %hcd_priv.i, i32 0, i32 22, i32 %i.083
  %13 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx33, align 4
  %sub = sub i32 %12, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp34 = icmp sgt i32 %sub, -1
  br i1 %cmp34, label %land.lhs.true.if.then36_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true.if.then36_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

if.then36:                                        ; preds = %land.lhs.true.if.then36_crit_edge, %if.end25.if.then36_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.083)
  %cmp37 = icmp ult i32 %i.083, 7
  %shl = shl nuw nsw i32 2, %i.083
  %sub44 = add nsw i32 %i.083, -7
  %shl45 = shl nuw i32 1, %sub44
  %not.cmp37 = xor i1 %cmp37, true
  %buf.sink89.idx = zext i1 %not.cmp37 to i32
  %buf.sink89 = getelementptr i8, ptr %buf, i32 %buf.sink89.idx
  %shl.sink = select i1 %cmp37, i32 %shl, i32 %shl45
  %15 = ptrtoint ptr %buf.sink89 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %buf.sink89, align 1
  %17 = trunc i32 %shl.sink to i8
  %conv42 = or i8 %16, %17
  store i8 %conv42, ptr %buf.sink89, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then36, %land.lhs.true.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge
  %status.1 = phi i32 [ %status.085, %land.lhs.true.for.inc_crit_edge ], [ %status.085, %lor.lhs.false.for.inc_crit_edge ], [ 4, %if.then36 ]
  %inc52 = add nuw nsw i32 %i.083, 1
  %exitcond.not = icmp eq i32 %inc52, %and2
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1)
  %tobool54.not = icmp eq i32 %status.1, 0
  br i1 %tobool54.not, label %for.end._crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %18

18:                                               ; preds = %for.end._crit_edge, %for.end.thread
  br label %cleanup

cleanup:                                          ; preds = %18, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %18 ], [ %retval1.0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxu_hub_control(ptr noundef %hcd, i16 noundef zeroext %typeReq, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, ptr nocapture noundef writeonly %buf, i16 noundef zeroext %wLength) #2 align 64 {
entry:
  %_buf = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %hcs_params = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 2
  %0 = ptrtoint ptr %hcs_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hcs_params, align 4
  %and = and i32 %1, 15
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %conv = zext i16 %wIndex to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr %struct.ehci_regs, ptr %3, i32 0, i32 9, i32 %sub
  %lock = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 3
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %4 = zext i16 %typeReq to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.156)
  switch i16 %typeReq, label %entry.error_crit_edge [
    i16 8193, label %sw.bb
    i16 8961, label %sw.bb11
    i16 -24570, label %sw.bb80
    i16 -24576, label %sw.bb81
    i16 -23808, label %sw.bb82
    i16 8195, label %sw.bb299
    i16 8963, label %sw.bb304
  ]

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %wValue)
  %switch = icmp ult i16 %wValue, 2
  br i1 %switch, label %sw.bb.sw.epilog395_crit_edge, label %sw.bb.error_crit_edge

sw.bb.error_crit_edge:                            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

sw.bb.sw.epilog395_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog395

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wIndex)
  %tobool.not = icmp eq i16 %wIndex, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv)
  %cmp13 = icmp ult i32 %and, %conv
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp13
  br i1 %or.cond, label %sw.bb11.error_crit_edge, label %if.end

sw.bb11.error_crit_edge:                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end:                                           ; preds = %sw.bb11
  %dec = add i16 %wIndex, -1
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #9, !srcloc !360
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !388
  %7 = zext i16 %wValue to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.157)
  switch i16 %wValue, label %if.end.error_crit_edge [
    i16 1, label %do.body20
    i16 17, label %do.body25
    i16 2, label %sw.bb29
    i16 18, label %if.end.sw.epilog73_crit_edge
    i16 8, label %sw.bb50
    i16 16, label %do.body61
    i16 19, label %do.body67
    i16 20, label %if.end.sw.epilog73_crit_edge578
  ]

if.end.sw.epilog73_crit_edge578:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog73

if.end.sw.epilog73_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog73

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

do.body20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  tail call void @arm_heavy_mb() #9
  %and23 = and i32 %6, -5
  %8 = tail call i32 @llvm.bswap.i32(i32 %and23)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %8) #9, !srcloc !359
  br label %sw.epilog73

do.body25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %and28 = and i32 %6, -43
  %or = or i32 %and28, 8
  %9 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %9) #9, !srcloc !359
  br label %sw.epilog73

sw.bb29:                                          ; preds = %if.end
  %and30 = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end33, label %sw.bb29.error_crit_edge

sw.bb29.error_crit_edge:                          ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end33:                                         ; preds = %sw.bb29
  %and34 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end33.sw.epilog73_crit_edge, label %if.then36

if.end33.sw.epilog73_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog73

if.then36:                                        ; preds = %if.end33
  %and37 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %cmp38 = icmp eq i32 %and37, 0
  br i1 %cmp38, label %if.then36.error_crit_edge, label %if.end41

if.then36.error_crit_edge:                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end41:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  %and42 = and i32 %6, -7340139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !391
  tail call void @arm_heavy_mb() #9
  %or46 = or i32 %and42, 64
  %10 = tail call i32 @llvm.bswap.i32(i32 %or46)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %10) #9, !srcloc !359
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %11, 2
  %idxprom = zext i16 %dec to i32
  %arrayidx48 = getelementptr %struct.oxu_hcd, ptr %hcd_priv.i, i32 0, i32 22, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %arrayidx48, align 4
  br label %sw.epilog73

sw.bb50:                                          ; preds = %if.end
  %13 = ptrtoint ptr %hcs_params to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hcs_params, align 4
  %and52 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %sw.bb50.sw.epilog73_crit_edge, label %do.body55

sw.bb50.sw.epilog73_crit_edge:                    ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog73

do.body55:                                        ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !392
  tail call void @arm_heavy_mb() #9
  %and58 = and i32 %6, -4139
  %15 = tail call i32 @llvm.bswap.i32(i32 %and58)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %15) #9, !srcloc !359
  br label %sw.epilog73

do.body61:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !393
  tail call void @arm_heavy_mb() #9
  %and64 = and i32 %6, -43
  %or65 = or i32 %and64, 2
  %16 = tail call i32 @llvm.bswap.i32(i32 %or65)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %16) #9, !srcloc !359
  br label %sw.epilog73

do.body67:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !394
  tail call void @arm_heavy_mb() #9
  %and70 = and i32 %6, -43
  %or71 = or i32 %and70, 32
  %17 = tail call i32 @llvm.bswap.i32(i32 %or71)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %17) #9, !srcloc !359
  br label %sw.epilog73

sw.epilog73:                                      ; preds = %do.body67, %do.body61, %do.body55, %sw.bb50.sw.epilog73_crit_edge, %if.end41, %if.end33.sw.epilog73_crit_edge, %do.body25, %do.body20, %if.end.sw.epilog73_crit_edge, %if.end.sw.epilog73_crit_edge578
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !395
  br label %sw.epilog395

sw.bb80:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %hcs_params to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hcs_params, align 4
  %and.i554 = and i32 %22, 15
  %bDescriptorType.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 1
  %23 = ptrtoint ptr %bDescriptorType.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 41, ptr %bDescriptorType.i, align 1
  %bPwrOn2PwrGood.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 4
  %24 = ptrtoint ptr %bPwrOn2PwrGood.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 10, ptr %bPwrOn2PwrGood.i, align 1
  %bHubContrCurrent.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 5
  %25 = ptrtoint ptr %bHubContrCurrent.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %bHubContrCurrent.i, align 1
  %conv.i = trunc i32 %and.i554 to i8
  %bNbrPorts.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 2
  %26 = ptrtoint ptr %bNbrPorts.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.i, ptr %bNbrPorts.i, align 1
  %div32.i = lshr i32 %and.i554, 3
  %conv1.i = add nuw nsw i32 %div32.i, 1
  %conv1.tr.i = trunc i32 %conv1.i to i8
  %27 = shl nuw nsw i8 %conv1.tr.i, 1
  %conv4.i = add nuw nsw i8 %27, 7
  %28 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv4.i, ptr %buf, align 1
  %u.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 6
  %29 = call ptr @memset(ptr %u.i, i32 0, i32 %conv1.i)
  %arrayidx8.i = getelementptr [4 x i8], ptr %u.i, i32 0, i32 %conv1.i
  %30 = call ptr @memset(ptr %arrayidx8.i, i32 255, i32 %conv1.i)
  %31 = load i32, ptr %hcs_params, align 4
  %and11.i = and i32 %31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool.not.i = icmp eq i32 %and11.i, 0
  %..i = select i1 %tobool.not.i, i16 2560, i16 2304
  %wHubCharacteristics.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 3
  %32 = ptrtoint ptr %wHubCharacteristics.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %..i, ptr %wHubCharacteristics.i, align 1
  br label %sw.epilog395

sw.bb81:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 0, ptr %buf, align 1
  br label %sw.epilog395

sw.bb82:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wIndex)
  %tobool83.not = icmp eq i16 %wIndex, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv)
  %cmp86 = icmp ult i32 %and, %conv
  %or.cond542 = select i1 %tobool83.not, i1 true, i1 %cmp86
  br i1 %or.cond542, label %sw.bb82.error_crit_edge, label %if.end89

sw.bb82.error_crit_edge:                          ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end89:                                         ; preds = %sw.bb82
  %dec90 = add i16 %wIndex, -1
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #9, !srcloc !360
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !396
  %and96 = shl i32 %35, 15
  %36 = and i32 %and96, 65536
  %and101 = shl i32 %35, 14
  %37 = and i32 %and101, 131072
  %38 = or i32 %37, %36
  %and106 = and i32 %35, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.end89.if.end111_crit_edge, label %land.lhs.true

if.end89.if.end111_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

land.lhs.true:                                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  %39 = load i8, ptr @ignore_oc, align 1, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool108.not = icmp eq i8 %39, 0
  %or110 = or i32 %38, 524288
  %spec.select543 = select i1 %tobool108.not, i32 %or110, i32 %38
  br label %if.end111

if.end111:                                        ; preds = %land.lhs.true, %if.end89.if.end111_crit_edge
  %status.2 = phi i32 [ %38, %if.end89.if.end111_crit_edge ], [ %spec.select543, %land.lhs.true ]
  %and112 = and i32 %35, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.end111.if.end164_crit_edge, label %if.then114

if.end111.if.end164_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end164

if.then114:                                       ; preds = %if.end111
  %idxprom116 = zext i16 %dec90 to i32
  %arrayidx117 = getelementptr %struct.oxu_hcd, ptr %hcd_priv.i, i32 0, i32 22, i32 %idxprom116
  %40 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool118.not = icmp eq i32 %41, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  br i1 %tobool118.not, label %if.then119, label %if.else

if.then119:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #11
  %add121 = add i32 %42, 2
  %43 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add121, ptr %arrayidx117, align 4
  %rh_timer = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 5
  %call129 = tail call i32 @mod_timer(ptr noundef %rh_timer, i32 noundef %add121) #9
  br label %if.end164

if.else:                                          ; preds = %if.then114
  %sub133 = sub i32 %42, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub133)
  %cmp134 = icmp sgt i32 %sub133, -1
  br i1 %cmp134, label %if.then136, label %if.else.if.end164_crit_edge

if.else.if.end164_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end164

if.then136:                                       ; preds = %if.else
  %44 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %arrayidx117, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #9, !srcloc !360
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !397
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !398
  tail call void @arm_heavy_mb() #9
  %and149 = and i32 %46, -107
  %47 = tail call i32 @llvm.bswap.i32(i32 %and149)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %47) #9, !srcloc !359
  %call150 = tail call fastcc i32 @handshake(ptr noundef %arrayidx, i32 noundef 64, i32 noundef 0, i32 noundef 2000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %cmp151.not = icmp eq i32 %call150, 0
  br i1 %cmp151.not, label %if.end160, label %do.end156

do.end156:                                        ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hcd, align 8
  %add159 = add nuw nsw i32 %idxprom116, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.124, i32 noundef %add159, i32 noundef %call150) #12
  br label %error

if.end160:                                        ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #11
  %or137 = or i32 %status.2, 262144
  %and161 = and i32 %46, -3265
  br label %if.end164

if.end164:                                        ; preds = %if.end160, %if.else.if.end164_crit_edge, %if.then119, %if.end111.if.end164_crit_edge
  %status.3 = phi i32 [ %or137, %if.end160 ], [ %status.2, %if.else.if.end164_crit_edge ], [ %status.2, %if.then119 ], [ %status.2, %if.end111.if.end164_crit_edge ]
  %temp.0 = phi i32 [ %and161, %if.end160 ], [ %35, %if.else.if.end164_crit_edge ], [ %35, %if.then119 ], [ %35, %if.end111.if.end164_crit_edge ]
  %and165 = and i32 %temp.0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %if.end164.if.end203_crit_edge, label %land.lhs.true167

if.end164.if.end203_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end203

land.lhs.true167:                                 ; preds = %if.end164
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %idxprom169 = zext i16 %dec90 to i32
  %arrayidx170 = getelementptr %struct.oxu_hcd, ptr %hcd_priv.i, i32 0, i32 22, i32 %idxprom169
  %51 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx170, align 4
  %sub171 = sub i32 %50, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub171)
  %cmp172 = icmp sgt i32 %sub171, -1
  br i1 %cmp172, label %if.then174, label %land.lhs.true167.if.end203_crit_edge

land.lhs.true167.if.end203_crit_edge:             ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end203

if.then174:                                       ; preds = %land.lhs.true167
  %53 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %arrayidx170, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !399
  tail call void @arm_heavy_mb() #9
  %and182 = and i32 %temp.0, -299
  %54 = tail call i32 @llvm.bswap.i32(i32 %and182)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %54) #9, !srcloc !359
  %call183 = tail call fastcc i32 @handshake(ptr noundef %arrayidx, i32 noundef 256, i32 noundef 0, i32 noundef 750)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %cmp184.not = icmp eq i32 %call183, 0
  br i1 %cmp184.not, label %if.end195, label %do.end189

do.end189:                                        ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hcd, align 8
  %add194 = add nuw nsw i32 %idxprom169, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.127, i32 noundef %add194, i32 noundef %call183) #12
  br label %error

if.end195:                                        ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #11
  %or175 = or i32 %status.3, 1048576
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #9, !srcloc !360
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !400
  %call202 = tail call fastcc i32 @check_reset_complete(ptr noundef %hcd_priv.i, i32 noundef %idxprom169, i32 noundef %58)
  br label %if.end203

if.end203:                                        ; preds = %if.end195, %land.lhs.true167.if.end203_crit_edge, %if.end164.if.end203_crit_edge
  %status.4 = phi i32 [ %or175, %if.end195 ], [ %status.3, %land.lhs.true167.if.end203_crit_edge ], [ %status.3, %if.end164.if.end203_crit_edge ]
  %temp.1 = phi i32 [ %58, %if.end195 ], [ %temp.0, %land.lhs.true167.if.end203_crit_edge ], [ %temp.0, %if.end164.if.end203_crit_edge ]
  %and204 = and i32 %temp.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and204)
  %tobool205.not = icmp eq i32 %and204, 0
  br i1 %tobool205.not, label %if.end203.if.end243_crit_edge, label %land.lhs.true206

if.end203.if.end243_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end243

land.lhs.true206:                                 ; preds = %if.end203
  %conv207 = zext i16 %dec90 to i32
  %companion_ports = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 8, i32 3, i32 1, i32 1
  %div3.i = lshr i32 %conv207, 5
  %arrayidx.i = getelementptr i32, ptr %companion_ports, i32 %div3.i
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv207, 31
  %61 = shl nuw i32 1, %and.i
  %62 = and i32 %60, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool209.not = icmp eq i32 %62, 0
  br i1 %tobool209.not, label %land.lhs.true206.if.then239_crit_edge, label %if.then210

land.lhs.true206.if.then239_crit_edge:            ; preds = %land.lhs.true206
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then239

if.then210:                                       ; preds = %land.lhs.true206
  %and211 = and i32 %temp.1, -8235
  %or212 = or i32 %and211, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !401
  tail call void @arm_heavy_mb() #9
  %63 = tail call i32 @llvm.bswap.i32(i32 %or212)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %63) #9, !srcloc !359
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oxu_hub_control.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@oxu_hub_control, %if.then222)) #9
          to label %if.end236 [label %if.then222], !srcloc !357

if.then222:                                       ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hcd, align 8
  %add227 = add nuw nsw i32 %conv207, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oxu_hub_control.__UNIQUE_ID_ddebug275, ptr noundef %65, ptr noundef nonnull @.str.129, i32 noundef %add227) #9
  br label %if.end236

if.end236:                                        ; preds = %if.then222, %if.then210
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #9, !srcloc !360
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !402
  %.pre = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool238.not = icmp eq i32 %.pre, 0
  br i1 %tobool238.not, label %if.end236.if.end243_crit_edge, label %if.end236.if.then239_crit_edge

if.end236.if.then239_crit_edge:                   ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then239

if.end236.if.end243_crit_edge:                    ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end243

if.then239:                                       ; preds = %if.end236.if.then239_crit_edge, %land.lhs.true206.if.then239_crit_edge
  %temp.2576 = phi i32 [ %67, %if.end236.if.then239_crit_edge ], [ %temp.1, %land.lhs.true206.if.then239_crit_edge ]
  %shr.i558 = lshr i32 %temp.2576, 26
  %and.i559 = and i32 %shr.i558, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i559)
  %switch.selectcmp.i = icmp eq i32 %and.i559, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 512, i32 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i559)
  %switch.selectcmp1.i = icmp eq i32 %and.i559, 0
  %switch.select2.i = select i1 %switch.selectcmp1.i, i32 0, i32 %switch.select.i
  %or240 = or i32 %status.4, %switch.select2.i
  %or242 = or i32 %or240, 1
  br label %if.end243

if.end243:                                        ; preds = %if.then239, %if.end236.if.end243_crit_edge, %if.end203.if.end243_crit_edge
  %tobool238.not571 = phi ptr [ @.str.149, %if.then239 ], [ @.str.46, %if.end236.if.end243_crit_edge ], [ @.str.46, %if.end203.if.end243_crit_edge ]
  %temp.2570 = phi i32 [ %temp.2576, %if.then239 ], [ %67, %if.end236.if.end243_crit_edge ], [ %temp.1, %if.end203.if.end243_crit_edge ]
  %status.5 = phi i32 [ %or242, %if.then239 ], [ %status.4, %if.end236.if.end243_crit_edge ], [ %status.4, %if.end203.if.end243_crit_edge ]
  %and244 = and i32 %temp.2570, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and244)
  %tobool245.not = icmp eq i32 %and244, 0
  %68 = lshr exact i32 %and244, 1
  %69 = or i32 %status.5, %68
  %and249 = and i32 %temp.2570, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and249)
  %tobool250.not = icmp eq i32 %and249, 0
  %or252 = or i32 %69, 4
  %status.7 = select i1 %tobool250.not, i32 %69, i32 %or252
  %and254 = and i32 %temp.2570, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and254)
  %tobool255.not = icmp eq i32 %and254, 0
  %70 = lshr exact i32 %and254, 1
  %and259 = and i32 %temp.2570, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and259)
  %tobool260.not = icmp eq i32 %and259, 0
  %71 = lshr exact i32 %and259, 4
  %and264 = and i32 %temp.2570, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and264)
  %tobool265.not = icmp eq i32 %and264, 0
  %72 = lshr exact i32 %and264, 4
  %73 = or i32 %71, %70
  %74 = or i32 %73, %72
  %75 = or i32 %74, %status.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %75)
  %tobool270.not = icmp ult i32 %75, 65536
  br i1 %tobool270.not, label %if.end243.do.body296_crit_edge, label %if.then271

if.end243.do.body296_crit_edge:                   ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body296

if.then271:                                       ; preds = %if.end243
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %_buf) #9
  %76 = call ptr @memset(ptr %_buf, i32 255, i32 80)
  %conv272 = zext i16 %dec90 to i32
  %add273 = add nuw nsw i32 %conv272, 1
  %and.i560 = and i32 %temp.2570, 3072
  %77 = zext i32 %and.i560 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %and.i560, label %sw.default.i [
    i32 0, label %if.then271.dbg_port_buf.exit_crit_edge
    i32 1024, label %sw.bb1.i
    i32 2048, label %sw.bb2.i
  ]

if.then271.dbg_port_buf.exit_crit_edge:           ; preds = %if.then271
  call void @__sanitizer_cov_trace_pc() #11
  br label %dbg_port_buf.exit

sw.bb1.i:                                         ; preds = %if.then271
  call void @__sanitizer_cov_trace_pc() #11
  br label %dbg_port_buf.exit

sw.bb2.i:                                         ; preds = %if.then271
  call void @__sanitizer_cov_trace_pc() #11
  br label %dbg_port_buf.exit

sw.default.i:                                     ; preds = %if.then271
  call void @__sanitizer_cov_trace_pc() #11
  br label %dbg_port_buf.exit

dbg_port_buf.exit:                                ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %if.then271.dbg_port_buf.exit_crit_edge
  %sig.0.i = phi ptr [ @.str.137, %sw.default.i ], [ @.str.136, %sw.bb2.i ], [ @.str.135, %sw.bb1.i ], [ @.str.134, %if.then271.dbg_port_buf.exit_crit_edge ]
  %cond5.i = select i1 %tobool265.not, ptr @.str.46, ptr @.str.139
  %and6.i = and i32 %temp.2570, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %cond8.i = select i1 %tobool7.not.i, ptr @.str.46, ptr @.str.140
  %cond11.i = select i1 %tobool260.not, ptr @.str.46, ptr @.str.141
  %and12.i = and i32 %temp.2570, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %cond14.i = select i1 %tobool13.not.i, ptr @.str.46, ptr @.str.142
  %and15.i = and i32 %temp.2570, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %cond17.i = select i1 %tobool16.not.i, ptr @.str.46, ptr @.str.143
  %and18.i = and i32 %temp.2570, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  %cond20.i = select i1 %tobool19.not.i, ptr @.str.46, ptr @.str.144
  %cond23.i = select i1 %tobool255.not, ptr @.str.46, ptr @.str.145
  %and24.i = and i32 %temp.2570, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  %cond26.i = select i1 %tobool25.not.i, ptr @.str.46, ptr @.str.146
  %cond29.i = select i1 %tobool245.not, ptr @.str.46, ptr @.str.147
  %and30.i = and i32 %temp.2570, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  %cond32.i = select i1 %tobool31.not.i, ptr @.str.46, ptr @.str.148
  %call.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %_buf, i32 noundef 80, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.45, i32 noundef %add273, i32 noundef %temp.2570, ptr noundef nonnull %cond5.i, ptr noundef nonnull %cond8.i, ptr noundef nonnull %sig.0.i, ptr noundef nonnull %cond11.i, ptr noundef nonnull %cond14.i, ptr noundef nonnull %cond17.i, ptr noundef nonnull %cond20.i, ptr noundef nonnull %cond23.i, ptr noundef nonnull %cond26.i, ptr noundef nonnull %cond29.i, ptr noundef nonnull %cond32.i, ptr noundef nonnull %tobool238.not571) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oxu_hub_control.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@oxu_hub_control, %if.then287)) #9
          to label %do.end294 [label %if.then287], !srcloc !357

if.then287:                                       ; preds = %dbg_port_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hcd, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oxu_hub_control.__UNIQUE_ID_ddebug276, ptr noundef %79, ptr noundef nonnull @.str.42, ptr noundef nonnull %_buf) #9
  br label %do.end294

do.end294:                                        ; preds = %if.then287, %dbg_port_buf.exit
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %_buf) #9
  br label %do.body296

do.body296:                                       ; preds = %do.end294, %if.end243.do.body296_crit_edge
  %80 = call i32 @llvm.bswap.i32(i32 %75)
  %81 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 %80, ptr %buf, align 1
  br label %sw.epilog395

sw.bb299:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %wValue)
  %switch545 = icmp ult i16 %wValue, 2
  br i1 %switch545, label %sw.bb299.sw.epilog395_crit_edge, label %sw.bb299.error_crit_edge

sw.bb299.error_crit_edge:                         ; preds = %sw.bb299
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

sw.bb299.sw.epilog395_crit_edge:                  ; preds = %sw.bb299
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog395

sw.bb304:                                         ; preds = %entry
  %and308 = and i16 %wIndex, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and308)
  %tobool310.not = icmp eq i16 %and308, 0
  %conv312 = zext i16 %and308 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv312)
  %cmp313 = icmp ult i32 %and, %conv312
  %or.cond546 = select i1 %tobool310.not, i1 true, i1 %cmp313
  br i1 %or.cond546, label %sw.bb304.error_crit_edge, label %if.end316

sw.bb304.error_crit_edge:                         ; preds = %sw.bb304
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end316:                                        ; preds = %sw.bb304
  %dec317 = add nsw i16 %and308, -1
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #9, !srcloc !360
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !403
  %and323 = and i32 %83, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and323)
  %tobool324.not = icmp eq i32 %and323, 0
  br i1 %tobool324.not, label %if.end326, label %if.end316.sw.epilog395_crit_edge

if.end316.sw.epilog395_crit_edge:                 ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog395

if.end326:                                        ; preds = %if.end316
  %and327 = and i32 %83, -43
  %84 = zext i16 %wValue to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.159)
  switch i16 %wValue, label %if.end326.error_crit_edge [
    i16 2, label %sw.bb329
    i16 8, label %sw.bb348
    i16 4, label %sw.bb358
    i16 21, label %sw.bb373
  ]

if.end326.error_crit_edge:                        ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

sw.bb329:                                         ; preds = %if.end326
  %85 = and i32 %83, 260
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %85)
  %86 = icmp eq i32 %85, 4
  br i1 %86, label %if.end338, label %sw.bb329.error_crit_edge

sw.bb329.error_crit_edge:                         ; preds = %sw.bb329
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end338:                                        ; preds = %sw.bb329
  %root_hub = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 11
  %87 = ptrtoint ptr %root_hub to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %root_hub, align 8
  %can_wakeup.i = getelementptr inbounds %struct.usb_device, ptr %88, i32 0, i32 15, i32 12, i32 1
  %89 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i562 = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i562, label %if.end338.device_may_wakeup.exit.thread_crit_edge, label %device_may_wakeup.exit

if.end338.device_may_wakeup.exit.thread_crit_edge: ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #11
  br label %device_may_wakeup.exit.thread

device_may_wakeup.exit:                           ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #11
  %wakeup.i = getelementptr inbounds %struct.usb_device, ptr %88, i32 0, i32 15, i32 12, i32 6
  %90 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %91, null
  %or342 = or i32 %and327, 7340032
  %spec.select566 = select i1 %tobool2.i.not, i32 %and327, i32 %or342
  br label %device_may_wakeup.exit.thread

device_may_wakeup.exit.thread:                    ; preds = %device_may_wakeup.exit, %if.end338.device_may_wakeup.exit.thread_crit_edge
  %92 = phi i32 [ %and327, %if.end338.device_may_wakeup.exit.thread_crit_edge ], [ %spec.select566, %device_may_wakeup.exit ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !404
  tail call void @arm_heavy_mb() #9
  %or347 = or i32 %92, 128
  %93 = tail call i32 @llvm.bswap.i32(i32 %or347)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %93) #9, !srcloc !359
  br label %sw.epilog386

sw.bb348:                                         ; preds = %if.end326
  %94 = ptrtoint ptr %hcs_params to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %hcs_params, align 4
  %and350 = and i32 %95, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and350)
  %tobool351.not = icmp eq i32 %and350, 0
  br i1 %tobool351.not, label %sw.bb348.sw.epilog386_crit_edge, label %do.body353

sw.bb348.sw.epilog386_crit_edge:                  ; preds = %sw.bb348
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog386

do.body353:                                       ; preds = %sw.bb348
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !405
  tail call void @arm_heavy_mb() #9
  %or356 = or i32 %and327, 4096
  %96 = tail call i32 @llvm.bswap.i32(i32 %or356)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %96) #9, !srcloc !359
  br label %sw.epilog386

sw.bb358:                                         ; preds = %if.end326
  %and359 = and i32 %83, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and359)
  %tobool360.not = icmp eq i32 %and359, 0
  br i1 %tobool360.not, label %if.end362, label %sw.bb358.error_crit_edge

sw.bb358.error_crit_edge:                         ; preds = %sw.bb358
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end362:                                        ; preds = %sw.bb358
  call void @__sanitizer_cov_trace_pc() #11
  %or363 = and i32 %83, -303
  %and364 = or i32 %or363, 256
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %97 = load volatile i32, ptr @jiffies, align 128
  %add366 = add i32 %97, 5
  %idxprom368 = zext i16 %dec317 to i32
  %arrayidx369 = getelementptr %struct.oxu_hcd, ptr %hcd_priv.i, i32 0, i32 22, i32 %idxprom368
  %98 = ptrtoint ptr %arrayidx369 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %add366, ptr %arrayidx369, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !406
  tail call void @arm_heavy_mb() #9
  %99 = tail call i32 @llvm.bswap.i32(i32 %and364)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %99) #9, !srcloc !359
  br label %sw.epilog386

sw.bb373:                                         ; preds = %if.end326
  %100 = add i16 %wIndex, -1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1280, i16 %100)
  %101 = icmp ult i16 %100, -1280
  br i1 %101, label %sw.bb373.error_crit_edge, label %if.end379

sw.bb373.error_crit_edge:                         ; preds = %sw.bb373
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end379:                                        ; preds = %sw.bb373
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ehci_quiesce(ptr noundef %hcd_priv.i)
  tail call fastcc void @ehci_halt(ptr noundef %hcd_priv.i)
  %102 = shl nuw nsw i32 %conv, 8
  %shl = and i32 %102, 16711680
  %or381 = or i32 %and327, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !407
  tail call void @arm_heavy_mb() #9
  %103 = tail call i32 @llvm.bswap.i32(i32 %or381)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %103) #9, !srcloc !359
  br label %sw.epilog386

sw.epilog386:                                     ; preds = %if.end379, %if.end362, %do.body353, %sw.bb348.sw.epilog386_crit_edge, %device_may_wakeup.exit.thread
  %104 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs, align 4
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !408
  br label %sw.epilog395

error:                                            ; preds = %sw.bb373.error_crit_edge, %sw.bb358.error_crit_edge, %sw.bb329.error_crit_edge, %if.end326.error_crit_edge, %sw.bb304.error_crit_edge, %sw.bb299.error_crit_edge, %do.end189, %do.end156, %sw.bb82.error_crit_edge, %if.then36.error_crit_edge, %sw.bb29.error_crit_edge, %if.end.error_crit_edge, %sw.bb11.error_crit_edge, %sw.bb.error_crit_edge, %entry.error_crit_edge
  br label %sw.epilog395

sw.epilog395:                                     ; preds = %error, %sw.epilog386, %if.end316.sw.epilog395_crit_edge, %sw.bb299.sw.epilog395_crit_edge, %do.body296, %sw.bb81, %sw.bb80, %sw.epilog73, %sw.bb.sw.epilog395_crit_edge
  %retval1.2 = phi i32 [ -32, %error ], [ 0, %if.end316.sw.epilog395_crit_edge ], [ 0, %sw.epilog386 ], [ 0, %sw.bb299.sw.epilog395_crit_edge ], [ 0, %do.body296 ], [ 0, %sw.bb81 ], [ 0, %sw.bb80 ], [ 0, %sw.epilog73 ], [ 0, %sw.bb.sw.epilog395_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #9
  ret i32 %retval1.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxu_bus_suspend(ptr noundef %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oxu_bus_suspend.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@oxu_bus_suspend, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !357

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oxu_bus_suspend.__UNIQUE_ID_ddebug277, ptr noundef %1, ptr noundef nonnull @.str.151) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %next_statechange = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 19
  %3 = ptrtoint ptr %next_statechange to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %next_statechange, align 4
  %sub = sub i32 %2, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then5, label %do.end.if.end6_crit_edge

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @msleep(i32 noundef 5) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.end.if.end6_crit_edge
  %hcs_params = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 2
  %5 = ptrtoint ptr %hcs_params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hcs_params, align 4
  %and = and i32 %6, 15
  %lock = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  %and7 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end11_crit_edge, label %if.then9

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ehci_quiesce(ptr noundef %hcd_priv.i)
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 133, ptr %state, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 1
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !360
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !409
  %command15 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 20
  %14 = ptrtoint ptr %command15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %command15, align 4
  %reclaim = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 5, i32 4
  %15 = ptrtoint ptr %reclaim to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reclaim, align 4
  %tobool16.not = icmp eq ptr %16, null
  br i1 %tobool16.not, label %if.end11.if.end18_crit_edge, label %if.then17

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %reclaim_ready = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 5, i32 4, i32 1
  %17 = ptrtoint ptr %reclaim_ready to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %reclaim_ready, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %reclaim_ready, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end11.if.end18_crit_edge
  tail call fastcc void @ehci_work(ptr noundef %hcd_priv.i)
  %bus_suspended = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 8, i32 3, i32 1
  %18 = ptrtoint ptr %bus_suspended to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %bus_suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not122 = icmp eq i32 %and, 0
  br i1 %tobool19.not122, label %if.end18.while.end_crit_edge, label %while.body.lr.ph

if.end18.while.end_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end18
  %root_hub = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %if.end48.while.body_crit_edge, %while.body.lr.ph
  %dec123.in = phi i32 [ %and, %while.body.lr.ph ], [ %dec123, %if.end48.while.body_crit_edge ]
  %dec123 = add nsw i32 %dec123.in, -1
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr %struct.ehci_regs, ptr %20, i32 0, i32 9, i32 %dec123
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !410
  %22 = and i32 %21, -704643073
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = and i32 %23, 8324
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %if.then34, label %while.body.if.end36_crit_edge

while.body.if.end36_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then34:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %23, 128
  tail call void @_set_bit(i32 noundef %dec123, ptr noundef %bus_suspended) #9
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %while.body.if.end36_crit_edge
  %t2.0 = phi i32 [ %or, %if.then34 ], [ %23, %while.body.if.end36_crit_edge ]
  %26 = ptrtoint ptr %root_hub to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %root_hub, align 8
  %can_wakeup.i = getelementptr inbounds %struct.usb_device, ptr %27, i32 0, i32 15, i32 12, i32 1
  %28 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %device_may_wakeup.exit.thread, label %device_may_wakeup.exit

device_may_wakeup.exit.thread:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %and41119 = and i32 %t2.0, -7340033
  br label %31

device_may_wakeup.exit:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %wakeup.i = getelementptr inbounds %struct.usb_device, ptr %27, i32 0, i32 15, i32 12, i32 6
  %29 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %30, null
  %and41 = and i32 %t2.0, -7340033
  %masksel = select i1 %tobool2.i.not, i32 0, i32 7340032
  %spec.select = or i32 %masksel, %and41
  br label %31

31:                                               ; preds = %device_may_wakeup.exit, %device_may_wakeup.exit.thread
  %32 = phi i32 [ %and41119, %device_may_wakeup.exit.thread ], [ %spec.select, %device_may_wakeup.exit ]
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %32)
  %cmp43.not = icmp eq i32 %23, %32
  br i1 %cmp43.not, label %.if.end48_crit_edge, label %do.body45

.if.end48_crit_edge:                              ; preds = %31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

do.body45:                                        ; preds = %31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !411
  tail call void @arm_heavy_mb() #9
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %33) #9, !srcloc !359
  br label %if.end48

if.end48:                                         ; preds = %do.body45, %.if.end48_crit_edge
  %tobool19.not = icmp eq i32 %dec123, 0
  br i1 %tobool19.not, label %if.end48.while.end_crit_edge, label %if.end48.while.body_crit_edge

if.end48.while.body_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end48.while.end_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end48.while.end_crit_edge, %if.end18.while.end_crit_edge
  %watchdog = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 8, i32 3, i32 2
  %call49 = tail call i32 @del_timer_sync(ptr noundef %watchdog) #9
  tail call fastcc void @ehci_halt(ptr noundef %hcd_priv.i)
  %34 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 4, ptr %state, align 4
  %root_hub53 = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 11
  %35 = ptrtoint ptr %root_hub53 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %root_hub53, align 8
  %can_wakeup.i110 = getelementptr inbounds %struct.usb_device, ptr %36, i32 0, i32 15, i32 12, i32 1
  %37 = ptrtoint ptr %can_wakeup.i110 to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load.i111 = load i16, ptr %can_wakeup.i110, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i111)
  %tobool.not.i112 = icmp sgt i16 %bf.load.i111, -1
  br i1 %tobool.not.i112, label %while.end.device_may_wakeup.exit116.thread_crit_edge, label %device_may_wakeup.exit116

while.end.device_may_wakeup.exit116.thread_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %device_may_wakeup.exit116.thread

device_may_wakeup.exit116:                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %wakeup.i113 = getelementptr inbounds %struct.usb_device, ptr %36, i32 0, i32 15, i32 12, i32 6
  %38 = ptrtoint ptr %wakeup.i113 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wakeup.i113, align 8
  %tobool2.i114.not = icmp eq ptr %39, null
  %spec.select120 = select i1 %tobool2.i114.not, i32 855638016, i32 922746880
  br label %device_may_wakeup.exit116.thread

device_may_wakeup.exit116.thread:                 ; preds = %device_may_wakeup.exit116, %while.end.device_may_wakeup.exit116.thread_crit_edge
  %40 = phi i32 [ 855638016, %while.end.device_may_wakeup.exit116.thread_crit_edge ], [ %spec.select120, %device_may_wakeup.exit116 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !412
  tail call void @arm_heavy_mb() #9
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 4
  %intr_enable = getelementptr inbounds %struct.ehci_regs, ptr %42, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %intr_enable, i32 %40) #9, !srcloc !359
  %43 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs, align 4
  %intr_enable66 = getelementptr inbounds %struct.ehci_regs, ptr %44, i32 0, i32 2
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %intr_enable66) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !413
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %46, 1
  %47 = ptrtoint ptr %next_statechange to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add, ptr %next_statechange, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxu_bus_resume(ptr noundef %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %next_statechange = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 19
  %1 = ptrtoint ptr %next_statechange to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %next_statechange, align 4
  %sub = sub i32 %0, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @msleep(i32 noundef 5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %lock = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 1
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %intr_enable = getelementptr inbounds %struct.ehci_regs, ptr %4, i32 0, i32 2
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %intr_enable) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !414
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oxu_bus_resume.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@oxu_bus_resume, %if.then7)) #9
          to label %do.body11 [label %if.then7], !srcloc !357

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hcd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool9.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool9.not, ptr @.str.154, ptr @.str.46
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oxu_bus_resume.__UNIQUE_ID_ddebug278, ptr noundef %7, ptr noundef nonnull @.str.153, ptr noundef nonnull %cond) #9
  br label %do.body11

do.body11:                                        ; preds = %if.then7, %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !415
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %intr_enable15 = getelementptr inbounds %struct.ehci_regs, ptr %9, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %intr_enable15, i32 0) #9, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !416
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %segment = getelementptr inbounds %struct.ehci_regs, ptr %11, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %segment, i32 0) #9, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !417
  tail call void @arm_heavy_mb() #9
  %periodic_dma = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 5, i32 4, i32 3
  %12 = ptrtoint ptr %periodic_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %periodic_dma, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %frame_list = getelementptr inbounds %struct.ehci_regs, ptr %16, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %frame_list, i32 %14) #9, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !418
  tail call void @arm_heavy_mb() #9
  %async = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 5, i32 3
  %17 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %async, align 4
  %qh_dma = getelementptr inbounds %struct.ehci_qh, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %qh_dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %qh_dma, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %async_next = getelementptr inbounds %struct.ehci_regs, ptr %23, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %async_next, i32 %21) #9, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !419
  tail call void @arm_heavy_mb() #9
  %command = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 20
  %24 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %command, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #9, !srcloc !359
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #9
  %hcs_params = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 2
  %37 = ptrtoint ptr %hcs_params to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %hcs_params, align 4
  %and = and i32 %38, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not193 = icmp eq i32 %and, 0
  br i1 %tobool36.not193, label %do.body11.while.end59_crit_edge, label %while.body37.lr.ph

do.body11.while.end59_crit_edge:                  ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end59

while.body37.lr.ph:                               ; preds = %do.body11
  %bus_suspended = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 8, i32 3, i32 1
  br label %while.body37

while.body37:                                     ; preds = %do.body53.while.body37_crit_edge, %while.body37.lr.ph
  %dec35194.in = phi i32 [ %and, %while.body37.lr.ph ], [ %dec35194, %do.body53.while.body37_crit_edge ]
  %dec35194 = add nsw i32 %dec35194.in, -1
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr %struct.ehci_regs, ptr %40, i32 0, i32 9, i32 %dec35194
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !420
  %42 = and i32 %41, -704671745
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %div3.i = lshr i32 %dec35194, 5
  %arrayidx.i = getelementptr i32, ptr %bus_suspended, i32 %div3.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %dec35194, 31
  %46 = shl nuw i32 1, %and.i
  %47 = and i32 %45, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool46.not = icmp eq i32 %47, 0
  %and47 = and i32 %43, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  %or.cond = select i1 %tobool46.not, i1 true, i1 %tobool48.not
  br i1 %or.cond, label %while.body37.do.body53_crit_edge, label %if.then49

while.body37.do.body53_crit_edge:                 ; preds = %while.body37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body53

if.then49:                                        ; preds = %while.body37
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %48, 2
  %arrayidx51 = getelementptr %struct.oxu_hcd, ptr %hcd_priv.i, i32 0, i32 22, i32 %dec35194
  %49 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add, ptr %arrayidx51, align 4
  %or = or i32 %43, 64
  br label %do.body53

do.body53:                                        ; preds = %if.then49, %while.body37.do.body53_crit_edge
  %temp.0 = phi i32 [ %or, %if.then49 ], [ %43, %while.body37.do.body53_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !421
  tail call void @arm_heavy_mb() #9
  %50 = tail call i32 @llvm.bswap.i32(i32 %temp.0)
  %51 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs, align 4
  %arrayidx58 = getelementptr %struct.ehci_regs, ptr %52, i32 0, i32 9, i32 %dec35194
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx58, i32 %50) #9, !srcloc !359
  %tobool36.not = icmp eq i32 %dec35194, 0
  br i1 %tobool36.not, label %do.body53.while.end59_crit_edge, label %do.body53.while.body37_crit_edge

do.body53.while.body37_crit_edge:                 ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body37

do.body53.while.end59_crit_edge:                  ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end59

while.end59:                                      ; preds = %do.body53.while.end59_crit_edge, %do.body11.while.end59_crit_edge
  %53 = ptrtoint ptr %hcs_params to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %hcs_params, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 214748000) #9
  %and62 = and i32 %54, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool71.not197 = icmp eq i32 %and62, 0
  br i1 %tobool71.not197, label %while.end59.while.end96_crit_edge, label %while.body72.lr.ph

while.end59.while.end96_crit_edge:                ; preds = %while.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end96

while.body72.lr.ph:                               ; preds = %while.end59
  %bus_suspended81 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 8, i32 3, i32 1
  br label %while.body72

while.body72:                                     ; preds = %if.end95.while.body72_crit_edge, %while.body72.lr.ph
  %dec70198.in = phi i32 [ %and62, %while.body72.lr.ph ], [ %dec70198, %if.end95.while.body72_crit_edge ]
  %dec70198 = add nsw i32 %dec70198.in, -1
  %75 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs, align 4
  %arrayidx77 = getelementptr %struct.ehci_regs, ptr %76, i32 0, i32 9, i32 %dec70198
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx77) #9, !srcloc !360
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !422
  %div3.i184 = lshr i32 %dec70198, 5
  %arrayidx.i185 = getelementptr i32, ptr %bus_suspended81, i32 %div3.i184
  %79 = ptrtoint ptr %arrayidx.i185 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %arrayidx.i185, align 4
  %and.i186 = and i32 %dec70198, 31
  %81 = shl nuw i32 1, %and.i186
  %82 = and i32 %80, %81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool83.not = icmp eq i32 %82, 0
  %and85 = and i32 %78, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  %or.cond182 = select i1 %tobool83.not, i1 true, i1 %tobool86.not
  br i1 %or.cond182, label %while.body72.if.end95_crit_edge, label %if.then87

while.body72.if.end95_crit_edge:                  ; preds = %while.body72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.then87:                                        ; preds = %while.body72
  call void @__sanitizer_cov_trace_pc() #11
  %and88 = and i32 %78, -107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !423
  tail call void @arm_heavy_mb() #9
  %83 = tail call i32 @llvm.bswap.i32(i32 %and88)
  %84 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs, align 4
  %arrayidx94 = getelementptr %struct.ehci_regs, ptr %85, i32 0, i32 9, i32 %dec70198
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx94, i32 %83) #9, !srcloc !359
  br label %if.end95

if.end95:                                         ; preds = %if.then87, %while.body72.if.end95_crit_edge
  %tobool71.not = icmp eq i32 %dec70198, 0
  br i1 %tobool71.not, label %if.end95.while.end96_crit_edge, label %if.end95.while.body72_crit_edge

if.end95.while.body72_crit_edge:                  ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body72

if.end95.while.end96_crit_edge:                   ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end96

while.end96:                                      ; preds = %if.end95.while.end96_crit_edge, %while.end59.while.end96_crit_edge
  %86 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs, align 4
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !424
  %89 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %async, align 4
  %qh_next = getelementptr inbounds %struct.ehci_qh, ptr %90, i32 0, i32 10
  %91 = ptrtoint ptr %qh_next to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %qh_next, align 8
  %tobool105.not = icmp eq ptr %92, null
  %periodic_sched = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 7
  %93 = ptrtoint ptr %periodic_sched to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %periodic_sched, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool109.not = icmp eq i32 %94, 0
  %tobool113.not = select i1 %tobool109.not, i1 %tobool105.not, i1 false
  br i1 %tobool113.not, label %while.end96.if.end123_crit_edge, label %if.then114

while.end96.if.end123_crit_edge:                  ; preds = %while.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123

if.then114:                                       ; preds = %while.end96
  call void @__sanitizer_cov_trace_pc() #11
  %spec.select = select i1 %tobool105.not, i32 0, i32 32
  %or111 = or i32 %spec.select, 16
  %temp.2 = select i1 %tobool109.not, i32 %spec.select, i32 %or111
  %95 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %command, align 4
  %or116 = or i32 %96, %temp.2
  store i32 %or116, ptr %command, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !425
  tail call void @arm_heavy_mb() #9
  %97 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %command, align 4
  %99 = tail call i32 @llvm.bswap.i32(i32 %98)
  %100 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %99) #9, !srcloc !359
  br label %if.end123

if.end123:                                        ; preds = %if.then114, %while.end96.if.end123_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %102 = load volatile i32, ptr @jiffies, align 128
  %add125 = add i32 %102, 1
  %103 = ptrtoint ptr %next_statechange to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %add125, ptr %next_statechange, align 4
  %state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %104 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 1, ptr %state, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !426
  tail call void @arm_heavy_mb() #9
  %105 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs, align 4
  %intr_enable131 = getelementptr inbounds %struct.ehci_regs, ptr %106, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %intr_enable131, i32 922746880) #9, !srcloc !359
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @oxu210_hcd_irq(ptr noundef %hcd) unnamed_addr #2 align 64 {
entry:
  %_buf = alloca [80 x i8], align 1
  %_buf151 = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %lock = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %status1 = getelementptr inbounds %struct.ehci_regs, ptr %1, i32 0, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status1) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !427
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %do.body, label %if.end10

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oxu210_hcd_irq.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@oxu210_hcd_irq, %if.then8)) #9
          to label %if.end189.thread [label %if.then8], !srcloc !357

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oxu210_hcd_irq.__UNIQUE_ID_ddebug265, ptr noundef %4, ptr noundef nonnull @.str.39) #9
  br label %if.end189.thread

if.end10:                                         ; preds = %entry
  %5 = lshr i32 %2, 24
  %and = and i32 %5, 55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end10.if.then19_crit_edge, label %lor.lhs.false

if.end10.if.then19_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

lor.lhs.false:                                    ; preds = %if.end10
  %state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp12 = icmp eq i32 %7, 0
  br i1 %cmp12, label %lor.lhs.false.if.then19_crit_edge, label %do.body22, !prof !428

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %if.end10.if.then19_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup198

do.body22:                                        ; preds = %lor.lhs.false
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !429
  tail call void @arm_heavy_mb() #9
  %8 = shl nuw nsw i32 %and, 24
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %status26 = getelementptr inbounds %struct.ehci_regs, ptr %10, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %status26, i32 %8) #9, !srcloc !359
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !430
  %14 = and i32 %2, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp34.not = icmp ne i32 %14, 0
  %spec.store.select = zext i1 %cmp34.not to i32
  %15 = and i32 %2, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool44.not = icmp eq i32 %15, 0
  br i1 %tobool44.not, label %do.body22.if.end46_crit_edge, label %if.then45

do.body22.if.end46_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then45:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  %reclaim_ready = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 5, i32 4, i32 1
  %16 = ptrtoint ptr %reclaim_ready to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %reclaim_ready, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %reclaim_ready, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %do.body22.if.end46_crit_edge
  %bh.0 = phi i32 [ 1, %if.then45 ], [ %spec.store.select, %do.body22.if.end46_crit_edge ]
  %17 = and i32 %2, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool48.not = icmp eq i32 %17, 0
  br i1 %tobool48.not, label %if.end46.if.end106_crit_edge, label %if.then49

if.end46.if.end106_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106

if.then49:                                        ; preds = %if.end46
  %hcs_params = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 2
  %18 = ptrtoint ptr %hcs_params to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hcs_params, align 4
  %and50 = and i32 %19, 15
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !431
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool59.not = icmp eq i32 %23, 0
  br i1 %tobool59.not, label %if.then60, label %if.then49.if.end61_crit_edge

if.then49.if.end61_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then60:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_hcd_resume_root_hub(ptr noundef %hcd) #9
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.then49.if.end61_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool62.not25 = icmp eq i32 %and50, 0
  br i1 %tobool62.not25, label %if.end61.if.end106_crit_edge, label %while.body.lr.ph

if.end61.if.end106_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106

while.body.lr.ph:                                 ; preds = %if.end61
  %rh_timer = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %i.026 = phi i32 [ %and50, %while.body.lr.ph ], [ %dec27, %cleanup.while.body_crit_edge ]
  %dec27 = add nsw i32 %i.026, -1
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr %struct.ehci_regs, ptr %25, i32 0, i32 9, i32 %dec27
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !432
  %27 = and i32 %26, 1075838976
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %27)
  %.not = icmp eq i32 %27, 1073741824
  br i1 %.not, label %lor.lhs.false75, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false75:                                  ; preds = %while.body
  %arrayidx76 = getelementptr %struct.oxu_hcd, ptr %hcd_priv.i, i32 0, i32 22, i32 %dec27
  %28 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp77.not = icmp eq i32 %29, 0
  br i1 %cmp77.not, label %if.end79, label %lor.lhs.false75.cleanup_crit_edge

lor.lhs.false75.cleanup_crit_edge:                ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end79:                                         ; preds = %lor.lhs.false75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %30, 4
  %31 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add, ptr %arrayidx76, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oxu210_hcd_irq.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@oxu210_hcd_irq, %if.then95)) #9
          to label %do.end102 [label %if.then95], !srcloc !357

if.then95:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oxu210_hcd_irq.__UNIQUE_ID_ddebug266, ptr noundef %33, ptr noundef nonnull @.str.40, i32 noundef %i.026) #9
  br label %do.end102

do.end102:                                        ; preds = %if.then95, %if.end79
  %34 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx76, align 4
  %call105 = tail call i32 @mod_timer(ptr noundef %rh_timer, i32 noundef %35) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end102, %lor.lhs.false75.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %tobool62.not = icmp eq i32 %dec27, 0
  br i1 %tobool62.not, label %cleanup.if.end106_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup.if.end106_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106

if.end106:                                        ; preds = %cleanup.if.end106_crit_edge, %if.end61.if.end106_crit_edge, %if.end46.if.end106_crit_edge
  %pcd_status.0 = phi i32 [ 0, %if.end46.if.end106_crit_edge ], [ %and, %if.end61.if.end106_crit_edge ], [ %and, %cleanup.if.end106_crit_edge ]
  %36 = and i32 %2, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp108.not = icmp eq i32 %36, 0
  br i1 %cmp108.not, label %if.end106.if.end189_crit_edge, label %if.then115, !prof !385

if.end106.if.end189_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189

if.then115:                                       ; preds = %if.end106
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  %status119 = getelementptr inbounds %struct.ehci_regs, ptr %38, i32 0, i32 1
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status119) #9, !srcloc !360
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !433
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %_buf) #9
  %41 = call ptr @memset(ptr %_buf, i32 255, i32 80)
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #9, !srcloc !360
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  call fastcc void @dbg_command_buf(ptr noundef nonnull %_buf, ptr noundef nonnull @.str.41, i32 noundef %45)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oxu210_hcd_irq.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@oxu210_hcd_irq, %if.then143)) #9
          to label %do.end150 [label %if.then143], !srcloc !357

if.then143:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hcd, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oxu210_hcd_irq.__UNIQUE_ID_ddebug267, ptr noundef %47, ptr noundef nonnull @.str.42, ptr noundef nonnull %_buf) #9
  br label %do.end150

do.end150:                                        ; preds = %if.then143, %if.then115
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %_buf) #9
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %_buf151) #9
  %48 = call ptr @memset(ptr %_buf151, i32 255, i32 80)
  call fastcc void @dbg_status_buf(ptr noundef nonnull %_buf151, ptr noundef nonnull @.str.41, i32 noundef %40)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oxu210_hcd_irq.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@oxu210_hcd_irq, %if.then166)) #9
          to label %do.end173 [label %if.then166], !srcloc !357

if.then166:                                       ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hcd, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oxu210_hcd_irq.__UNIQUE_ID_ddebug268, ptr noundef %50, ptr noundef nonnull @.str.42, ptr noundef nonnull %_buf151) #9
  br label %do.end173

do.end173:                                        ; preds = %if.then166, %do.end150
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %_buf151) #9
  %and174 = and i32 %40, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %do.end173.if.end189_crit_edge, label %do.end179

do.end173.if.end189_crit_edge:                    ; preds = %do.end173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189

do.end179:                                        ; preds = %do.end173
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hcd, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.43) #12
  br label %if.end189.thread

if.end189.thread:                                 ; preds = %do.end179, %if.then8, %do.body
  %pcd_status.1 = phi i32 [ 0, %if.then8 ], [ %pcd_status.0, %do.end179 ], [ 0, %do.body ]
  %call183 = call fastcc i32 @ehci_reset(ptr noundef %hcd_priv.i)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  call void @arm_heavy_mb() #9
  %53 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs, align 4
  %configured_flag = getelementptr inbounds %struct.ehci_regs, ptr %54, i32 0, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %configured_flag, i32 0) #9, !srcloc !359
  call void @usb_hc_died(ptr noundef %hcd) #9
  br label %if.then191

if.end189:                                        ; preds = %do.end173.if.end189_crit_edge, %if.end106.if.end189_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bh.0)
  %tobool190.not = icmp eq i32 %bh.0, 0
  br i1 %tobool190.not, label %if.end189.if.end192_crit_edge, label %if.end189.if.then191_crit_edge

if.end189.if.then191_crit_edge:                   ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then191

if.end189.if.end192_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end192

if.then191:                                       ; preds = %if.end189.if.then191_crit_edge, %if.end189.thread
  %pcd_status.222 = phi i32 [ %pcd_status.1, %if.end189.thread ], [ %pcd_status.0, %if.end189.if.then191_crit_edge ]
  call fastcc void @ehci_work(ptr noundef %hcd_priv.i)
  br label %if.end192

if.end192:                                        ; preds = %if.then191, %if.end189.if.end192_crit_edge
  %pcd_status.223 = phi i32 [ %pcd_status.222, %if.then191 ], [ %pcd_status.0, %if.end189.if.end192_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  %and194 = and i32 %pcd_status.223, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and194)
  %tobool195.not = icmp eq i32 %and194, 0
  br i1 %tobool195.not, label %if.end192.cleanup198_crit_edge, label %if.then196

if.end192.cleanup198_crit_edge:                   ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup198

if.then196:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #11
  call void @usb_hcd_poll_rh_status(ptr noundef %hcd) #9
  br label %cleanup198

cleanup198:                                       ; preds = %if.then196, %if.end192.cleanup198_crit_edge, %if.then19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_resume_root_hub(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dbg_command_buf(ptr noundef %buf, ptr noundef %label, i32 noundef %command) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %label to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %label, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, ptr @.str.46, ptr @.str.45
  %and = and i32 %command, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %cond2 = select i1 %tobool1.not, ptr @.str.48, ptr @.str.47
  %shr = lshr i32 %command, 8
  %and3 = and i32 %shr, 3
  %shr4 = lshr i32 %command, 16
  %and5 = and i32 %shr4, 63
  %and6 = and i32 %command, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %cond8 = select i1 %tobool7.not, ptr @.str.46, ptr @.str.49
  %and9 = and i32 %command, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %cond11 = select i1 %tobool10.not, ptr @.str.46, ptr @.str.50
  %and12 = and i32 %command, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %cond14 = select i1 %tobool13.not, ptr @.str.46, ptr @.str.51
  %and15 = and i32 %command, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %cond17 = select i1 %tobool16.not, ptr @.str.46, ptr @.str.52
  %shr18 = lshr i32 %command, 2
  %and19 = and i32 %shr18, 3
  %arrayidx20 = getelementptr [4 x ptr], ptr @fls_strings, i32 0, i32 %and19
  %2 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx20, align 4
  %and21 = and i32 %command, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %cond23 = select i1 %tobool22.not, ptr @.str.46, ptr @.str.53
  %and24 = and i32 %command, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %cond26 = select i1 %tobool25.not, ptr @.str.55, ptr @.str.54
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 80, ptr noundef nonnull @.str.44, ptr noundef %label, ptr noundef nonnull %cond, i32 noundef %command, ptr noundef nonnull %cond2, i32 noundef %and3, i32 noundef %and5, ptr noundef nonnull %cond8, ptr noundef nonnull %cond11, ptr noundef nonnull %cond14, ptr noundef nonnull %cond17, ptr noundef %3, ptr noundef nonnull %cond23, ptr noundef nonnull %cond26) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dbg_status_buf(ptr noundef %buf, ptr noundef %label, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %label to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %label, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, ptr @.str.46, ptr @.str.45
  %and = and i32 %status, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %cond2 = select i1 %tobool1.not, ptr @.str.46, ptr @.str.51
  %and3 = and i32 %status, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %cond5 = select i1 %tobool4.not, ptr @.str.46, ptr @.str.52
  %and6 = and i32 %status, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %cond8 = select i1 %tobool7.not, ptr @.str.46, ptr @.str.61
  %and9 = and i32 %status, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %cond11 = select i1 %tobool10.not, ptr @.str.46, ptr @.str.62
  %and12 = and i32 %status, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %cond14 = select i1 %tobool13.not, ptr @.str.46, ptr @.str.63
  %and15 = and i32 %status, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %cond17 = select i1 %tobool16.not, ptr @.str.46, ptr @.str.64
  %and18 = and i32 %status, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %cond20 = select i1 %tobool19.not, ptr @.str.46, ptr @.str.65
  %and21 = and i32 %status, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %cond23 = select i1 %tobool22.not, ptr @.str.46, ptr @.str.66
  %and24 = and i32 %status, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %cond26 = select i1 %tobool25.not, ptr @.str.46, ptr @.str.67
  %and27 = and i32 %status, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %cond29 = select i1 %tobool28.not, ptr @.str.46, ptr @.str.68
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 80, ptr noundef nonnull @.str.60, ptr noundef %label, ptr noundef nonnull %cond, i32 noundef %status, ptr noundef nonnull %cond2, ptr noundef nonnull %cond5, ptr noundef nonnull %cond8, ptr noundef nonnull %cond11, ptr noundef nonnull %cond14, ptr noundef nonnull %cond17, ptr noundef nonnull %cond20, ptr noundef nonnull %cond23, ptr noundef nonnull %cond26, ptr noundef nonnull %cond29) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ehci_reset(ptr nocapture noundef %oxu) unnamed_addr #2 align 64 {
entry:
  %_buf = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 9
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !436
  %3 = or i32 %2, 33554432
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %_buf) #9
  %5 = call ptr @memset(ptr %_buf, i32 255, i32 80)
  %and.i = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  %cond2.i = select i1 %tobool1.not.i, ptr @.str.48, ptr @.str.47
  %shr.i = lshr i32 %4, 8
  %and3.i = and i32 %shr.i, 3
  %shr4.i = lshr i32 %4, 16
  %and5.i = and i32 %shr4.i, 63
  %and6.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %cond8.i = select i1 %tobool7.not.i, ptr @.str.46, ptr @.str.49
  %and9.i = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %cond11.i = select i1 %tobool10.not.i, ptr @.str.46, ptr @.str.50
  %and12.i = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %cond14.i = select i1 %tobool13.not.i, ptr @.str.46, ptr @.str.51
  %and15.i = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %cond17.i = select i1 %tobool16.not.i, ptr @.str.46, ptr @.str.52
  %shr18.i = lshr i32 %4, 2
  %and19.i = and i32 %shr18.i, 3
  %arrayidx20.i = getelementptr [4 x ptr], ptr @fls_strings, i32 0, i32 %and19.i
  %6 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx20.i, align 4
  %and24.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  %cond26.i = select i1 %tobool25.not.i, ptr @.str.55, ptr @.str.54
  %call.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %_buf, i32 noundef 80, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.45, i32 noundef %4, ptr noundef nonnull %cond2.i, i32 noundef %and3.i, i32 noundef %and5.i, ptr noundef nonnull %cond8.i, ptr noundef nonnull %cond11.i, ptr noundef nonnull %cond14.i, ptr noundef nonnull %cond17.i, ptr noundef %7, ptr noundef nonnull @.str.53, ptr noundef nonnull %cond26.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ehci_reset.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ehci_reset, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !357

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %oxu, i32 -600
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ehci_reset.__UNIQUE_ID_ddebug247, ptr noundef %9, ptr noundef nonnull @.str.42, ptr noundef nonnull %_buf) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %_buf) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !437
  call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %3) #9, !srcloc !359
  %state = getelementptr i8, ptr %oxu, i32 -12
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %next_statechange = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 28
  %14 = ptrtoint ptr %next_statechange to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %next_statechange, align 4
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %call.i36 = call i64 @ktime_get() #9
  %add.i.i = add i64 %call.i36, 250000000
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !360
  %18 = call i32 @llvm.bswap.i32(i32 %17) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %and1.i = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp2.i = icmp eq i32 %and1.i, 0
  br i1 %cmp2.i, label %do.end.handshake.exit_crit_edge, label %do.end.lor.lhs.false.i_crit_edge

do.end.lor.lhs.false.i_crit_edge:                 ; preds = %do.end
  br label %lor.lhs.false.i

do.end.handshake.exit_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %handshake.exit

lor.lhs.false.i:                                  ; preds = %cond.false.i.lor.lhs.false.i_crit_edge, %do.end.lor.lhs.false.i_crit_edge
  %19 = phi i32 [ %23, %cond.false.i.lor.lhs.false.i_crit_edge ], [ %17, %do.end.lor.lhs.false.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp5.i = icmp eq i32 %19, -1
  br i1 %cmp5.i, label %lor.lhs.false.i.cleanup.thread_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.cleanup.thread_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call7.i = call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call7.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call7.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then11.i, label %cond.false.i

if.then11.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !360
  %21 = call i32 @llvm.bswap.i32(i32 %20) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !439
  br label %handshake.exit

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748) #9
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !360
  %24 = call i32 @llvm.bswap.i32(i32 %23) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %and.i37 = and i32 %24, 2
  %cmp.i = icmp eq i32 %and.i37, 0
  br i1 %cmp.i, label %cond.false.i.handshake.exit_crit_edge, label %cond.false.i.lor.lhs.false.i_crit_edge

cond.false.i.lor.lhs.false.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

cond.false.i.handshake.exit_crit_edge:            ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %handshake.exit

handshake.exit:                                   ; preds = %cond.false.i.handshake.exit_crit_edge, %if.then11.i, %do.end.handshake.exit_crit_edge
  %result.0.i = phi i32 [ %21, %if.then11.i ], [ %18, %do.end.handshake.exit_crit_edge ], [ %24, %cond.false.i.handshake.exit_crit_edge ]
  %and27.i = and i32 %result.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %cmp28.i = icmp eq i32 %and27.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %result.0.i)
  %cmp30.i = icmp eq i32 %result.0.i, -1
  %25 = or i1 %cmp30.i, %cmp28.i
  %not.cmp30.i = xor i1 %cmp30.i, true
  %tobool20.not = select i1 %not.cmp30.i, i1 %25, i1 false
  br i1 %tobool20.not, label %if.end22, label %cleanup

if.end22:                                         ; preds = %handshake.exit
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %add.ptr.i39 = getelementptr i8, ptr %27, i32 104
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #9, !srcloc !360
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !440
  %29 = or i32 %28, 50331648
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %29) #9, !srcloc !359
  br i1 %25, label %if.end22.cleanup.thread_crit_edge, label %if.end22._crit_edge

if.end22._crit_edge:                              ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %30

if.end22.cleanup.thread_crit_edge:                ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

cleanup:                                          ; preds = %handshake.exit
  br i1 %25, label %cleanup.cleanup.thread_crit_edge, label %cleanup._crit_edge

cleanup._crit_edge:                               ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %30

cleanup.cleanup.thread_crit_edge:                 ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.cleanup.thread_crit_edge, %if.end22.cleanup.thread_crit_edge, %lor.lhs.false.i.cleanup.thread_crit_edge
  %cmp30.i4750 = phi i1 [ %cmp30.i, %cleanup.cleanup.thread_crit_edge ], [ %cmp30.i, %if.end22.cleanup.thread_crit_edge ], [ true, %lor.lhs.false.i.cleanup.thread_crit_edge ]
  br label %30

30:                                               ; preds = %cleanup.thread, %cleanup._crit_edge, %if.end22._crit_edge
  %cmp30.i4749 = phi i1 [ %cmp30.i4750, %cleanup.thread ], [ %cmp30.i, %cleanup._crit_edge ], [ %cmp30.i, %if.end22._crit_edge ]
  %31 = phi i32 [ 0, %cleanup.thread ], [ -110, %cleanup._crit_edge ], [ -110, %if.end22._crit_edge ]
  %retval.0.i38 = select i1 %cmp30.i4749, i32 -19, i32 %31
  ret i32 %retval.0.i38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hc_died(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ehci_work(ptr noundef %oxu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %actions.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 26
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %actions.i) #9
  %reclaim_ready = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 14
  %0 = ptrtoint ptr %reclaim_ready to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %reclaim_ready, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @end_unlink_async(ptr noundef %oxu)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = ptrtoint ptr %reclaim_ready to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load1 = load i8, ptr %reclaim_ready, align 4
  %2 = and i8 %bf.load1, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool4.not = icmp eq i8 %2, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end6:                                          ; preds = %if.end
  %bf.set = or i8 %bf.load1, 64
  %3 = ptrtoint ptr %reclaim_ready to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %bf.set, ptr %reclaim_ready, align 4
  %stamp.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 27
  %4 = ptrtoint ptr %stamp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stamp.i, align 4
  %inc.i = add i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool.not.i = icmp eq i32 %inc.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 1, i32 %inc.i
  %6 = ptrtoint ptr %stamp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select.i, ptr %stamp.i, align 4
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %actions.i) #9
  %async.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 12
  %7 = ptrtoint ptr %async.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %async.i, align 4
  %qh_next74.i = getelementptr inbounds %struct.ehci_qh, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %qh_next74.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %qh_next74.i, align 8
  %cmp.not75.i = icmp eq ptr %10, null
  br i1 %cmp.not75.i, label %if.end6.scan_async.exit_crit_edge, label %do.body.preheader.lr.ph.i, !prof !428

if.end6.scan_async.exit_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %scan_async.exit

do.body.preheader.lr.ph.i:                        ; preds = %if.end6
  %reclaim.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 13
  br label %do.body.i.outer

do.body.i.outer:                                  ; preds = %if.end34.i.do.body.i.outer_crit_edge, %do.body.preheader.lr.ph.i
  %action.1.i.ph = phi i32 [ 0, %do.body.preheader.lr.ph.i ], [ %action.2.i, %if.end34.i.do.body.i.outer_crit_edge ]
  %qh.0.i.ph = phi ptr [ %10, %do.body.preheader.lr.ph.i ], [ %38, %if.end34.i.do.body.i.outer_crit_edge ]
  br label %do.body.i

rescan.loopexit.i:                                ; preds = %qh_put.exit.i
  %11 = ptrtoint ptr %async.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %async.i, align 4
  %qh_next.i = getelementptr inbounds %struct.ehci_qh, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %qh_next.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %qh_next.i, align 8
  %cmp.not.i = icmp eq ptr %14, null
  br i1 %cmp.not.i, label %rescan.loopexit.i.if.end37.i_crit_edge, label %rescan.loopexit.i.do.body.i_crit_edge, !prof !428

rescan.loopexit.i.do.body.i_crit_edge:            ; preds = %rescan.loopexit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

rescan.loopexit.i.if.end37.i_crit_edge:           ; preds = %rescan.loopexit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i

do.body.i:                                        ; preds = %rescan.loopexit.i.do.body.i_crit_edge, %do.body.i.outer
  %qh.0.i = phi ptr [ %14, %rescan.loopexit.i.do.body.i_crit_edge ], [ %qh.0.i.ph, %do.body.i.outer ]
  %qtd_list.i = getelementptr inbounds %struct.ehci_qh, ptr %qh.0.i, i32 0, i32 11
  %15 = ptrtoint ptr %qtd_list.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %qtd_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %16, %qtd_list.i
  br i1 %cmp.i.not.i, label %do.body.i.if.end18.i_crit_edge, label %land.lhs.true.i

do.body.i.if.end18.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %stamp7.i = getelementptr inbounds %struct.ehci_qh, ptr %qh.0.i, i32 0, i32 16
  %17 = ptrtoint ptr %stamp7.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stamp7.i, align 4
  %19 = ptrtoint ptr %stamp.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stamp.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp9.not.i = icmp eq i32 %18, %20
  br i1 %cmp9.not.i, label %land.lhs.true.i.if.end18.i_crit_edge, label %if.then10.i

land.lhs.true.i.if.end18.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  %kref.i.i = getelementptr inbounds %struct.ehci_qh, ptr %qh.0.i, i32 0, i32 15
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #9
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #9, !srcloc !442
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then10.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !428

if.then10.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then10.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %22 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %.not.i.i.i.i.i.i = icmp sgt i32 %22, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.qh_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !385

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.qh_get.exit.i_crit_edge:      ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qh_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then10.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then10.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #9
  br label %qh_get.exit.i

qh_get.exit.i:                                    ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.qh_get.exit.i_crit_edge
  %23 = ptrtoint ptr %stamp.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %stamp.i, align 4
  %25 = ptrtoint ptr %stamp7.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %stamp7.i, align 4
  %call14.i = tail call fastcc i32 @qh_completions(ptr noundef %oxu, ptr noundef nonnull %qh.0.i) #9
  %call.i.i.i.i.i.i.i66.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !383
  tail call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #9
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #9, !srcloc !384
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %qh_get.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i67.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i67.i, label %if.end5.i.i.i.i.i.i.qh_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !385

if.end5.i.i.i.i.i.i.qh_put.exit.i_crit_edge:      ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qh_put.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef 3) #9
  br label %qh_put.exit.i

if.then.i.i.i:                                    ; preds = %qh_get.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !386
  tail call fastcc void @qh_destroy(ptr noundef %kref.i.i) #9
  br label %qh_put.exit.i

qh_put.exit.i:                                    ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.qh_put.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.not.i = icmp eq i32 %call14.i, 0
  br i1 %cmp15.not.i, label %qh_put.exit.i.if.end18.i_crit_edge, label %rescan.loopexit.i

qh_put.exit.i.if.end18.i_crit_edge:               ; preds = %qh_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.end18.i:                                       ; preds = %qh_put.exit.i.if.end18.i_crit_edge, %land.lhs.true.i.if.end18.i_crit_edge, %do.body.i.if.end18.i_crit_edge
  %27 = ptrtoint ptr %qtd_list.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %qtd_list.i, align 4
  %cmp.i68.not.i = icmp eq ptr %28, %qtd_list.i
  br i1 %cmp.i68.not.i, label %if.then22.i, label %if.end18.i.if.end34.i_crit_edge

if.end18.i.if.end34.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.then22.i:                                      ; preds = %if.end18.i
  %stamp23.i = getelementptr inbounds %struct.ehci_qh, ptr %qh.0.i, i32 0, i32 16
  %29 = ptrtoint ptr %stamp23.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stamp23.i, align 4
  %31 = ptrtoint ptr %stamp.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stamp.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp25.i = icmp eq i32 %30, %32
  br i1 %cmp25.i, label %if.then22.i.if.end34.i_crit_edge, label %if.else.i

if.then22.i.if.end34.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.else.i:                                        ; preds = %if.then22.i
  %33 = ptrtoint ptr %reclaim.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reclaim.i, align 4
  %tobool27.not.i = icmp eq ptr %34, null
  br i1 %tobool27.not.i, label %land.lhs.true28.i, label %if.else.i.if.end34.i_crit_edge

if.else.i.if.end34.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

land.lhs.true28.i:                                ; preds = %if.else.i
  %qh_state.i = getelementptr inbounds %struct.ehci_qh, ptr %qh.0.i, i32 0, i32 17
  %35 = ptrtoint ptr %qh_state.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %qh_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %cmp29.i = icmp eq i8 %36, 1
  br i1 %cmp29.i, label %if.then31.i, label %land.lhs.true28.i.if.end34.i_crit_edge

land.lhs.true28.i.if.end34.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.then31.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @start_unlink_async(ptr noundef %oxu, ptr noundef nonnull %qh.0.i) #9
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then31.i, %land.lhs.true28.i.if.end34.i_crit_edge, %if.else.i.if.end34.i_crit_edge, %if.then22.i.if.end34.i_crit_edge, %if.end18.i.if.end34.i_crit_edge
  %action.2.i = phi i32 [ %action.1.i.ph, %if.else.i.if.end34.i_crit_edge ], [ %action.1.i.ph, %if.then31.i ], [ %action.1.i.ph, %land.lhs.true28.i.if.end34.i_crit_edge ], [ %action.1.i.ph, %if.end18.i.if.end34.i_crit_edge ], [ 2, %if.then22.i.if.end34.i_crit_edge ]
  %qh_next35.i = getelementptr inbounds %struct.ehci_qh, ptr %qh.0.i, i32 0, i32 10
  %37 = ptrtoint ptr %qh_next35.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %qh_next35.i, align 8
  %tobool36.not.i = icmp eq ptr %38, null
  br i1 %tobool36.not.i, label %if.end34.i.if.end37.i_crit_edge, label %if.end34.i.do.body.i.outer_crit_edge

if.end34.i.do.body.i.outer_crit_edge:             ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.outer

if.end34.i.if.end37.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end34.i.if.end37.i_crit_edge, %rescan.loopexit.i.if.end37.i_crit_edge
  %action.3.i = phi i32 [ %action.1.i.ph, %rescan.loopexit.i.if.end37.i_crit_edge ], [ %action.2.i, %if.end34.i.if.end37.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %action.3.i)
  %cmp38.i = icmp eq i32 %action.3.i, 2
  br i1 %cmp38.i, label %if.then40.i, label %if.end37.i.scan_async.exit_crit_edge

if.end37.i.scan_async.exit_crit_edge:             ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %scan_async.exit

if.then40.i:                                      ; preds = %if.end37.i
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %actions.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then40.i.scan_async.exit_crit_edge

if.then40.i.scan_async.exit_crit_edge:            ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %scan_async.exit

if.then.i.i:                                      ; preds = %if.then40.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %expires.i.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 25, i32 1
  %40 = ptrtoint ptr %expires.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %expires.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp4.i.i = icmp ugt i32 %39, %41
  br i1 %cmp4.i.i, label %land.lhs.true5.i.i, label %if.then.i.i.if.end.i.i_crit_edge

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true5.i.i:                               ; preds = %if.then.i.i
  %pprev.i.i.i.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 25, i32 0, i32 1
  %42 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.i.not.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i.not.i.i, label %land.lhs.true5.i.i.if.end.i.i_crit_edge, label %land.lhs.true5.i.i.scan_async.exit_crit_edge

land.lhs.true5.i.i.scan_async.exit_crit_edge:     ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %scan_async.exit

land.lhs.true5.i.i.if.end.i.i_crit_edge:          ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true5.i.i.if.end.i.i_crit_edge, %if.then.i.i.if.end.i.i_crit_edge
  %watchdog10.i.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 25
  %call11.i.i = tail call i32 @mod_timer(ptr noundef %watchdog10.i.i, i32 noundef %39) #9
  br label %scan_async.exit

scan_async.exit:                                  ; preds = %if.end.i.i, %land.lhs.true5.i.i.scan_async.exit_crit_edge, %if.then40.i.scan_async.exit_crit_edge, %if.end37.i.scan_async.exit_crit_edge, %if.end6.scan_async.exit_crit_edge
  %next_uframe = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 20
  %44 = ptrtoint ptr %next_uframe to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %next_uframe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp.not = icmp eq i32 %45, -1
  br i1 %cmp.not, label %scan_async.exit.if.end11_crit_edge, label %if.then10

scan_async.exit.if.end11_crit_edge:               ; preds = %scan_async.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then10:                                        ; preds = %scan_async.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @scan_periodic(ptr noundef %oxu)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %scan_async.exit.if.end11_crit_edge
  %46 = ptrtoint ptr %reclaim_ready to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load13 = load i8, ptr %reclaim_ready, align 4
  %bf.clear14 = and i8 %bf.load13, -65
  store i8 %bf.clear14, ptr %reclaim_ready, align 4
  %state = getelementptr i8, ptr %oxu, i32 -12
  %47 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %state, align 4
  %and = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end11.if.end20_crit_edge, label %land.lhs.true

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end11
  %49 = ptrtoint ptr %async.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %async.i, align 4
  %qh_next = getelementptr inbounds %struct.ehci_qh, ptr %50, i32 0, i32 10
  %51 = ptrtoint ptr %qh_next to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %qh_next, align 8
  %cmp17.not = icmp eq ptr %52, null
  br i1 %cmp17.not, label %lor.lhs.false, label %land.lhs.true.if.then19_crit_edge

land.lhs.true.if.then19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

lor.lhs.false:                                    ; preds = %land.lhs.true
  %periodic_sched = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 21
  %53 = ptrtoint ptr %periodic_sched to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %periodic_sched, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp18.not = icmp eq i32 %54, 0
  br i1 %cmp18.not, label %lor.lhs.false.if.end20_crit_edge, label %lor.lhs.false.if.then19_crit_edge

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

lor.lhs.false.if.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %land.lhs.true.if.then19_crit_edge
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %actions.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i34 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i34, label %if.then.i, label %if.then19.if.end20_crit_edge

if.then19.if.end20_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then.i:                                        ; preds = %if.then19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %add21.i = add i32 %55, 10
  %expires.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 25, i32 1
  %56 = ptrtoint ptr %expires.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %expires.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add21.i, i32 %57)
  %cmp4.i = icmp ugt i32 %add21.i, %57
  br i1 %cmp4.i, label %land.lhs.true5.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true5.i:                                 ; preds = %if.then.i
  %pprev.i.i.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 25, i32 0, i32 1
  %58 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %59, null
  br i1 %tobool.not.i.i.not.i, label %land.lhs.true5.i.if.end.i_crit_edge, label %land.lhs.true5.i.if.end20_crit_edge

land.lhs.true5.i.if.end20_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

land.lhs.true5.i.if.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true5.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %watchdog10.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 25
  %call11.i = tail call i32 @mod_timer(ptr noundef %watchdog10.i, i32 noundef %add21.i) #9
  br label %if.end20

if.end20:                                         ; preds = %if.end.i, %land.lhs.true5.i.if.end20_crit_edge, %if.then19.if.end20_crit_edge, %lor.lhs.false.if.end20_crit_edge, %if.end11.if.end20_crit_edge, %if.end.if.end20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_poll_rh_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @handshake(ptr noundef %ptr, i32 noundef %mask, i32 noundef %done, i32 noundef %usec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %usec to i64
  %call = tail call i64 @ktime_get() #9
  %mul.i = mul nuw nsw i64 %0, 1000
  %add.i = add i64 %call, %mul.i
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ptr) #9, !srcloc !360
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %and1 = and i32 %2, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and1, i32 %done)
  %cmp2 = icmp eq i32 %and1, %done
  br i1 %cmp2, label %entry.for.end_crit_edge, label %entry.lor.lhs.false_crit_edge

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

lor.lhs.false:                                    ; preds = %cond.false.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %3 = phi i32 [ %7, %cond.false.lor.lhs.false_crit_edge ], [ %1, %entry.lor.lhs.false_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp5 = icmp eq i32 %3, -1
  br i1 %cmp5, label %lor.lhs.false.for.end_crit_edge, label %land.lhs.true

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call7 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call7, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call7, %add.i
  br i1 %cmp3.i, label %if.then11, label %cond.false

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ptr) #9, !srcloc !360
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !439
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #9
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ptr) #9, !srcloc !360
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %and = and i32 %8, %mask
  %cmp = icmp eq i32 %and, %done
  br i1 %cmp, label %cond.false.for.end_crit_edge, label %cond.false.lor.lhs.false_crit_edge

cond.false.lor.lhs.false_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then11, %lor.lhs.false.for.end_crit_edge, %entry.for.end_crit_edge
  %result.0 = phi i32 [ %5, %if.then11 ], [ %2, %entry.for.end_crit_edge ], [ -1, %lor.lhs.false.for.end_crit_edge ], [ %8, %cond.false.for.end_crit_edge ]
  %and27 = and i32 %result.0, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and27, i32 %done)
  %cmp28 = icmp eq i32 %and27, %done
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %result.0)
  %cmp30 = icmp eq i32 %result.0, -1
  %9 = or i1 %cmp30, %cmp28
  %10 = select i1 %9, i32 0, i32 -110
  %retval.0 = select i1 %cmp30, i32 -19, i32 %10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @end_unlink_async(ptr noundef %oxu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reclaim = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 13
  %0 = ptrtoint ptr %reclaim to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reclaim, align 4
  %actions.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 26
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %actions.i) #9
  %qh_state = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %qh_state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %qh_state, align 8
  %qh_next = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %qh_next to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %qh_next, align 8
  %kref.i = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 15
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !383
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #9, !srcloc !384
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.qh_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !385

if.end5.i.i.i.i.i.qh_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qh_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #9
  br label %qh_put.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !386
  tail call fastcc void @qh_destroy(ptr noundef %kref.i) #9
  br label %qh_put.exit

qh_put.exit:                                      ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.qh_put.exit_crit_edge
  %reclaim1 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %reclaim1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reclaim1, align 8
  %7 = ptrtoint ptr %reclaim to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %reclaim, align 4
  %reclaim_ready = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 14
  %8 = ptrtoint ptr %reclaim_ready to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %reclaim_ready, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %reclaim_ready, align 4
  store ptr null, ptr %reclaim1, align 8
  %call = tail call fastcc i32 @qh_completions(ptr noundef %oxu, ptr noundef %1)
  %qtd_list = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %qtd_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %qtd_list, align 4
  %cmp.i.not = icmp eq ptr %10, %qtd_list
  br i1 %cmp.i.not, label %qh_put.exit.if.else_crit_edge, label %land.lhs.true

qh_put.exit.if.else_crit_edge:                    ; preds = %qh_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %qh_put.exit
  %state = getelementptr i8, ptr %oxu, i32 -12
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 4
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @qh_link_async(ptr noundef %oxu, ptr noundef %1)
  br label %if.end14

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %qh_put.exit.if.else_crit_edge
  %call.i.i.i.i.i.i.i41 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !383
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #9
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #9, !srcloc !384
  %asmresult.i.i.i.i.i.i.i.i42 = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i42)
  %cmp.i.i.i.i.i43 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i42, 1
  br i1 %cmp.i.i.i.i.i43, label %if.then.i.i47, label %if.end5.i.i.i.i.i45

if.end5.i.i.i.i.i45:                              ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i42)
  %.not.i.i.i.i.i44 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i42, 0
  br i1 %.not.i.i.i.i.i44, label %if.end5.i.i.i.i.i45.qh_put.exit48_crit_edge, label %if.then10.i.i.i.i.i46, !prof !385

if.end5.i.i.i.i.i45.qh_put.exit48_crit_edge:      ; preds = %if.end5.i.i.i.i.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %qh_put.exit48

if.then10.i.i.i.i.i46:                            ; preds = %if.end5.i.i.i.i.i45
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #9
  br label %qh_put.exit48

if.then.i.i47:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !386
  tail call fastcc void @qh_destroy(ptr noundef %kref.i) #9
  br label %qh_put.exit48

qh_put.exit48:                                    ; preds = %if.then.i.i47, %if.then10.i.i.i.i.i46, %if.end5.i.i.i.i.i45.qh_put.exit48_crit_edge
  %state8 = getelementptr i8, ptr %oxu, i32 -12
  %14 = ptrtoint ptr %state8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state8, align 4
  %and9 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %qh_put.exit48.if.end14_crit_edge, label %land.lhs.true11

qh_put.exit48.if.end14_crit_edge:                 ; preds = %qh_put.exit48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true11:                                  ; preds = %qh_put.exit48
  %async = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 12
  %16 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %async, align 4
  %qh_next12 = getelementptr inbounds %struct.ehci_qh, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %qh_next12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %qh_next12, align 8
  %cmp = icmp eq ptr %19, null
  br i1 %cmp, label %if.then13, label %land.lhs.true11.if.end14_crit_edge

land.lhs.true11.if.end14_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then13:                                        ; preds = %land.lhs.true11
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %actions.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then13.if.end14_crit_edge

if.then13.if.end14_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then.i:                                        ; preds = %if.then13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %add21.i = add i32 %20, 5
  %expires.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 25, i32 1
  %21 = ptrtoint ptr %expires.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %expires.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add21.i, i32 %22)
  %cmp4.i = icmp ugt i32 %add21.i, %22
  br i1 %cmp4.i, label %land.lhs.true5.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true5.i:                                 ; preds = %if.then.i
  %pprev.i.i.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 25, i32 0, i32 1
  %23 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i.not.i, label %land.lhs.true5.i.if.end.i_crit_edge, label %land.lhs.true5.i.if.end14_crit_edge

land.lhs.true5.i.if.end14_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true5.i.if.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true5.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %watchdog10.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 25
  %call11.i = tail call i32 @mod_timer(ptr noundef %watchdog10.i, i32 noundef %add21.i) #9
  br label %if.end14

if.end14:                                         ; preds = %if.end.i, %land.lhs.true5.i.if.end14_crit_edge, %if.then13.if.end14_crit_edge, %land.lhs.true11.if.end14_crit_edge, %qh_put.exit48.if.end14_crit_edge, %if.then
  %tobool15.not = icmp eq ptr %6, null
  br i1 %tobool15.not, label %if.end14.if.end18_crit_edge, label %if.then16

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %reclaim to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %reclaim, align 4
  tail call fastcc void @start_unlink_async(ptr noundef %oxu, ptr noundef nonnull %6)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end14.if.end18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scan_periodic(ptr noundef %oxu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %periodic_size = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 15
  %0 = ptrtoint ptr %periodic_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %periodic_size, align 4
  %shl = shl i32 %1, 3
  %next_uframe = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 20
  %2 = ptrtoint ptr %next_uframe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_uframe, align 4
  %add.ptr.i = getelementptr i8, ptr %oxu, i32 -600
  %state = getelementptr i8, ptr %oxu, i32 -12
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regs = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 9
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %frame_index = getelementptr inbounds %struct.ehci_regs, ptr %7, i32 0, i32 3
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %frame_index) #9, !srcloc !360
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !443
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %shl, -1
  %sub = add i32 %add, %3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %clock.0 = phi i32 [ %9, %if.then ], [ %sub, %if.else ]
  %rem = urem i32 %clock.0, %shl
  %pshadow = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 19
  %periodic = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 16
  %regs50 = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 9
  br label %for.cond

for.cond:                                         ; preds = %cleanup65.for.cond_crit_edge, %if.end
  %now_uframe.0 = phi i32 [ %3, %if.end ], [ %now_uframe.3, %cleanup65.for.cond_crit_edge ]
  %clock.1 = phi i32 [ %rem, %if.end ], [ %clock.4, %cleanup65.for.cond_crit_edge ]
  %shr = lshr i32 %now_uframe.0, 3
  %shr3 = lshr i32 %clock.1, 3
  %or = or i32 %now_uframe.0, 7
  br label %restart

restart:                                          ; preds = %sw.epilog.restart_crit_edge, %for.cond
  %10 = ptrtoint ptr %pshadow to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pshadow, align 4
  %arrayidx = getelementptr %union.ehci_shadow, ptr %11, i32 %shr
  %12 = ptrtoint ptr %periodic to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %periodic, align 4
  %arrayidx6 = getelementptr i32, ptr %13, i32 %shr
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx6, align 4
  %and7 = and i32 %17, 100663296
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.while.cond_crit_edge, %restart
  %type.0 = phi i32 [ %and7, %restart ], [ %type.1, %sw.epilog.while.cond_crit_edge ]
  %q.sroa.0.0 = phi ptr [ %15, %restart ], [ %q.sroa.0.1, %sw.epilog.while.cond_crit_edge ]
  %cmp8.not = icmp eq ptr %q.sroa.0.0, null
  br i1 %cmp8.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %type.0)
  %cond71 = icmp eq i32 %type.0, 33554432
  br i1 %cond71, label %sw.bb, label %do.body

sw.bb:                                            ; preds = %while.body
  %kref.i = getelementptr inbounds %struct.ehci_qh, ptr %q.sroa.0.0, i32 0, i32 15
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #9
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #9, !srcloc !442
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %sw.bb.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !428

sw.bb.if.end15.sink.split.i.i.i.i.i_crit_edge:    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %sw.bb
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %19 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %.not.i.i.i.i.i = icmp sgt i32 %19, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.qh_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !385

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.qh_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qh_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %sw.bb.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %sw.bb.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %qh_get.exit

qh_get.exit:                                      ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.qh_get.exit_crit_edge
  %20 = ptrtoint ptr %q.sroa.0.0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %q.sroa.0.0, align 32
  %and10 = and i32 %21, 100663296
  %qh_next = getelementptr inbounds %struct.ehci_qh, ptr %q.sroa.0.0, i32 0, i32 10
  %22 = ptrtoint ptr %qh_next to i32
  call void @__asan_load4_noabort(i32 %22)
  %q.sroa.0.0.copyload = load ptr, ptr %qh_next, align 8
  %call11 = tail call fastcc i32 @qh_completions(ptr noundef %oxu, ptr noundef nonnull %q.sroa.0.0)
  %qtd_list = getelementptr inbounds %struct.ehci_qh, ptr %q.sroa.0.0, i32 0, i32 11
  %23 = ptrtoint ptr %qtd_list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %qtd_list, align 4
  %cmp.i.not = icmp eq ptr %24, %qtd_list
  br i1 %cmp.i.not, label %if.then16, label %qh_get.exit.if.end17_crit_edge, !prof !428

qh_get.exit.if.end17_crit_edge:                   ; preds = %qh_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then16:                                        ; preds = %qh_get.exit
  tail call fastcc void @qh_unlink_periodic(ptr noundef %oxu, ptr noundef nonnull %q.sroa.0.0) #9
  %25 = ptrtoint ptr %qtd_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %qtd_list, align 4
  %cmp.i.not.i = icmp eq ptr %26, %qtd_list
  br i1 %cmp.i.not.i, label %if.then16.cond.false3.i_crit_edge, label %lor.lhs.false.i

if.then16.cond.false3.i_crit_edge:                ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false3.i

lor.lhs.false.i:                                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %hw_info2.i = getelementptr inbounds %struct.ehci_qh, ptr %q.sroa.0.0, i32 0, i32 2
  %27 = ptrtoint ptr %hw_info2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hw_info2.i, align 8
  %and.i = and i32 %28, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %cmp.not.i, i32 55, i32 2
  br label %cond.false3.i

cond.false3.i:                                    ; preds = %lor.lhs.false.i, %if.then16.cond.false3.i_crit_edge
  %wait.0.i = phi i32 [ 2, %if.then16.cond.false3.i_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %29(i32 noundef %wait.0.i) #9
  %qh_state.i = getelementptr inbounds %struct.ehci_qh, ptr %q.sroa.0.0, i32 0, i32 17
  %30 = ptrtoint ptr %qh_state.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 3, ptr %qh_state.i, align 8
  %31 = ptrtoint ptr %q.sroa.0.0 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 16777216, ptr %q.sroa.0.0, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  br label %if.end17

if.end17:                                         ; preds = %cond.false3.i, %qh_get.exit.if.end17_crit_edge
  %call.i.i.i.i.i.i.i112 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !383
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #9
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #9, !srcloc !384
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i113 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i113, label %if.end5.i.i.i.i.i.sw.epilog_crit_edge, label %if.then10.i.i.i.i.i, !prof !385

if.end5.i.i.i.i.i.sw.epilog_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #9
  br label %sw.epilog

if.then.i.i:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !386
  tail call fastcc void @qh_destroy(ptr noundef %kref.i) #9
  br label %sw.epilog

do.body:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scan_periodic.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scan_periodic, %if.then27)) #9
          to label %sw.epilog [label %if.then27], !srcloc !357

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scan_periodic.__UNIQUE_ID_ddebug263, ptr noundef %34, ptr noundef nonnull @.str.86, i32 noundef %type.0, i32 noundef %shr, ptr noundef nonnull %q.sroa.0.0) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then27, %do.body, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.sw.epilog_crit_edge
  %type.1 = phi i32 [ %type.0, %if.then27 ], [ %and10, %if.end5.i.i.i.i.i.sw.epilog_crit_edge ], [ %and10, %if.then10.i.i.i.i.i ], [ %and10, %if.then.i.i ], [ %type.0, %do.body ]
  %q.sroa.0.1 = phi ptr [ null, %if.then27 ], [ %q.sroa.0.0.copyload, %if.end5.i.i.i.i.i.sw.epilog_crit_edge ], [ %q.sroa.0.0.copyload, %if.then10.i.i.i.i.i ], [ %q.sroa.0.0.copyload, %if.then.i.i ], [ null, %do.body ]
  %modified.1 = phi i32 [ 0, %if.then27 ], [ %call11, %if.end5.i.i.i.i.i.sw.epilog_crit_edge ], [ %call11, %if.then10.i.i.i.i.i ], [ %call11, %if.then.i.i ], [ 0, %do.body ]
  %tobool30.not = icmp eq i32 %modified.1, 0
  br i1 %tobool30.not, label %sw.epilog.while.cond_crit_edge, label %sw.epilog.restart_crit_edge

sw.epilog.restart_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %restart

sw.epilog.while.cond_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %shr3)
  %cmp.not = icmp eq i32 %shr, %shr3
  %spec.select = select i1 %cmp.not, i32 %now_uframe.0, i32 %or
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %clock.1)
  %cmp39 = icmp eq i32 %spec.select, %clock.1
  br i1 %cmp39, label %if.then40, label %if.else62

if.then40:                                        ; preds = %while.end
  %35 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %state, align 4
  %and43 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.then40.for.end_crit_edge, label %cleanup59

if.then40.for.end_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup59:                                        ; preds = %if.then40
  %37 = ptrtoint ptr %next_uframe to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %clock.1, ptr %next_uframe, align 4
  %38 = ptrtoint ptr %regs50 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs50, align 4
  %frame_index51 = getelementptr inbounds %struct.ehci_regs, ptr %39, i32 0, i32 3
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %frame_index51) #9, !srcloc !360
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  %rem55 = urem i32 %41, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %clock.1, i32 %rem55)
  %cmp56 = icmp eq i32 %clock.1, %rem55
  br i1 %cmp56, label %cleanup59.cleanup65_crit_edge, label %cleanup59.if.end64_crit_edge

cleanup59.if.end64_crit_edge:                     ; preds = %cleanup59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

cleanup59.cleanup65_crit_edge:                    ; preds = %cleanup59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup65

if.else62:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add i32 %spec.select, 1
  %rem63 = urem i32 %inc, %shl
  br label %if.end64

if.end64:                                         ; preds = %if.else62, %cleanup59.if.end64_crit_edge
  %now_uframe.2 = phi i32 [ %clock.1, %cleanup59.if.end64_crit_edge ], [ %rem63, %if.else62 ]
  %clock.3 = phi i32 [ %rem55, %cleanup59.if.end64_crit_edge ], [ %clock.1, %if.else62 ]
  br label %cleanup65

cleanup65:                                        ; preds = %if.end64, %cleanup59.cleanup65_crit_edge
  %switch = phi i1 [ false, %cleanup59.cleanup65_crit_edge ], [ true, %if.end64 ]
  %now_uframe.3 = phi i32 [ %clock.1, %cleanup59.cleanup65_crit_edge ], [ %now_uframe.2, %if.end64 ]
  %clock.4 = phi i32 [ %clock.1, %cleanup59.cleanup65_crit_edge ], [ %clock.3, %if.end64 ]
  br i1 %switch, label %cleanup65.for.cond_crit_edge, label %cleanup65.for.end_crit_edge

cleanup65.for.end_crit_edge:                      ; preds = %cleanup65
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup65.for.cond_crit_edge:                     ; preds = %cleanup65
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end:                                          ; preds = %cleanup65.for.end_crit_edge, %if.then40.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qh_completions(ptr noundef %oxu, ptr noundef %qh) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dummy = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 12
  %0 = ptrtoint ptr %dummy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dummy, align 4
  %qtd_list = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 11
  %2 = ptrtoint ptr %qtd_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %qtd_list, align 4
  %cmp.i.not = icmp eq ptr %3, %qtd_list
  br i1 %cmp.i.not, label %entry.cleanup232_crit_edge, label %if.end, !prof !428

entry.cleanup232_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup232

if.end:                                           ; preds = %entry
  %qh_state = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 17
  %4 = ptrtoint ptr %qh_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %qh_state, align 8
  store i8 5, ptr %qh_state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp = icmp eq i8 %5, 3
  %conv4 = zext i1 %cmp to i32
  %mem_lock.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 6
  %murb_pool.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 31
  %mem.i.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 5
  %state75 = getelementptr i8, ptr %oxu, i32 -12
  %hw_current = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 3
  %hw_token133 = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end
  %last.0403 = phi ptr [ null, %if.end ], [ %last.2, %cleanup.for.body_crit_edge ]
  %.pn.in401 = phi ptr [ %3, %if.end ], [ %.pn405, %cleanup.for.body_crit_edge ]
  %stopped.0400 = phi i32 [ %conv4, %if.end ], [ %stopped.3, %cleanup.for.body_crit_edge ]
  %count.0399 = phi i32 [ 0, %if.end ], [ %count.3, %cleanup.for.body_crit_edge ]
  %do_status.0398 = phi i32 [ 0, %if.end ], [ %do_status.1, %cleanup.for.body_crit_edge ]
  %qtd.0404 = getelementptr i8, ptr %.pn.in401, i32 -56
  %6 = ptrtoint ptr %.pn.in401 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn405 = load ptr, ptr %.pn.in401, align 8
  %urb18 = getelementptr i8, ptr %.pn.in401, i32 8
  %7 = ptrtoint ptr %urb18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %urb18, align 32
  %tobool19.not = icmp eq ptr %last.0403, null
  br i1 %tobool19.not, label %for.body.if.end46_crit_edge, label %if.then20

for.body.if.end46_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then20:                                        ; preds = %for.body
  %urb21 = getelementptr inbounds %struct.ehci_qtd, ptr %last.0403, i32 0, i32 7
  %9 = ptrtoint ptr %urb21 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %urb21, align 32
  %cmp22.not = icmp eq ptr %10, %8
  br i1 %cmp22.not, label %if.then20.if.end45_crit_edge, label %if.then30, !prof !428

if.then20.if.end45_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then30:                                        ; preds = %if.then20
  %complete = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 28
  %11 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %complete, align 4
  %cmp32 = icmp eq ptr %12, null
  br i1 %cmp32, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.then30
  %main = getelementptr inbounds %struct.oxu_murb, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %main to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %main, align 4
  %15 = ptrtoint ptr %urb21 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %urb21, align 32
  %last37 = getelementptr inbounds %struct.oxu_murb, ptr %10, i32 0, i32 2
  %16 = ptrtoint ptr %last37 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %last37, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool38.not = icmp eq i8 %17, 0
  br i1 %tobool38.not, label %if.then34.if.end41_crit_edge, label %if.then39

if.then34.if.end41_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then39:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ehci_urb_done(ptr noundef %oxu, ptr noundef %14)
  %inc = add i32 %count.0399, 1
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.then34.if.end41_crit_edge
  %count.1 = phi i32 [ %inc, %if.then39 ], [ %count.0399, %if.then34.if.end41_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %mem_lock.i) #9
  %18 = ptrtoint ptr %murb_pool.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %murb_pool.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 132
  %arrayidx1.i = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 4, i32 %sub.ptr.div.i
  %20 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx1.i, align 1
  tail call void @_raw_spin_unlock(ptr noundef %mem_lock.i) #9
  br label %if.end45

if.else:                                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ehci_urb_done(ptr noundef %oxu, ptr noundef %10)
  %inc43 = add i32 %count.0399, 1
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.end41, %if.then20.if.end45_crit_edge
  %count.2 = phi i32 [ %count.1, %if.end41 ], [ %inc43, %if.else ], [ %count.0399, %if.then20.if.end45_crit_edge ]
  %buffer.i = getelementptr inbounds %struct.ehci_qtd, ptr %last.0403, i32 0, i32 10
  %21 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end45.oxu_qtd_free.exit_crit_edge, label %if.then.i

if.end45.oxu_qtd_free.exit_crit_edge:             ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %oxu_qtd_free.exit

if.then.i:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_lock(ptr noundef %mem_lock.i) #9
  %23 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buffer.i, align 4
  %25 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mem.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %div.i.i = sdiv i32 %sub.ptr.sub.i.i, 512
  %arrayidx1.i.i = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 3, i32 %div.i.i
  %27 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx1.i.i, align 1
  %qtd_buffer_len.i.i = getelementptr inbounds %struct.ehci_qtd, ptr %last.0403, i32 0, i32 9
  %28 = ptrtoint ptr %qtd_buffer_len.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %qtd_buffer_len.i.i, align 8
  %buffer_dma.i.i = getelementptr inbounds %struct.ehci_qtd, ptr %last.0403, i32 0, i32 11
  %29 = ptrtoint ptr %buffer_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %buffer_dma.i.i, align 16
  store ptr null, ptr %buffer.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %mem_lock.i) #9
  br label %oxu_qtd_free.exit

oxu_qtd_free.exit:                                ; preds = %if.then.i, %if.end45.oxu_qtd_free.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %mem_lock.i) #9
  %30 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mem.i.i, align 4
  %qtd_pool.i = getelementptr inbounds %struct.oxu_onchip_mem, ptr %31, i32 0, i32 3
  %sub.ptr.lhs.cast.i336 = ptrtoint ptr %last.0403 to i32
  %sub.ptr.rhs.cast.i337 = ptrtoint ptr %qtd_pool.i to i32
  %sub.ptr.sub.i338 = sub i32 %sub.ptr.lhs.cast.i336, %sub.ptr.rhs.cast.i337
  %sub.ptr.div.i339 = sdiv exact i32 %sub.ptr.sub.i338, 96
  %arrayidx1.i340 = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 2, i32 %sub.ptr.div.i339
  %32 = ptrtoint ptr %arrayidx1.i340 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx1.i340, align 1
  tail call void @_raw_spin_unlock(ptr noundef %mem_lock.i) #9
  br label %if.end46

if.end46:                                         ; preds = %oxu_qtd_free.exit, %for.body.if.end46_crit_edge
  %count.3 = phi i32 [ %count.2, %oxu_qtd_free.exit ], [ %count.0399, %for.body.if.end46_crit_edge ]
  %cmp47 = icmp eq ptr %qtd.0404, %1
  br i1 %cmp47, label %if.end46.if.end215_crit_edge, label %if.end50

if.end46.if.end215_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end215

if.end50:                                         ; preds = %if.end46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !445
  %hw_token = getelementptr i8, ptr %.pn.in401, i32 -48
  %33 = ptrtoint ptr %hw_token to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hw_token, align 8
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %and = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp51 = icmp eq i32 %and, 0
  br i1 %cmp51, label %if.then53, label %if.else72

if.then53:                                        ; preds = %if.end50
  %and54 = and i32 %35, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %cmp55.not = icmp eq i32 %and54, 0
  br i1 %cmp55.not, label %if.else58, label %if.then53.if.end143_crit_edge

if.then53.if.end143_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

if.else58:                                        ; preds = %if.then53
  %36 = and i32 %35, 2147418112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp60.not = icmp ne i32 %36, 0
  %37 = and i32 %35, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %37)
  %cmp64 = icmp eq i32 %37, 256
  %or.cond = and i1 %cmp60.not, %cmp64
  br i1 %or.cond, label %land.lhs.true66, label %if.else58.if.end143_crit_edge

if.else58.if.end143_crit_edge:                    ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

land.lhs.true66:                                  ; preds = %if.else58
  %hw_alt_next = getelementptr i8, ptr %.pn.in401, i32 -52
  %38 = ptrtoint ptr %hw_alt_next to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hw_alt_next, align 4
  %and67 = and i32 %39, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %land.lhs.true66.halt_crit_edge, label %land.lhs.true66.if.end143_crit_edge

land.lhs.true66.if.end143_crit_edge:              ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

land.lhs.true66.halt_crit_edge:                   ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #11
  br label %halt

if.else72:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stopped.0400)
  %tobool73.not = icmp eq i32 %stopped.0400, 0
  br i1 %tobool73.not, label %land.rhs, label %if.else72.if.else85_crit_edge, !prof !385

if.else72.if.else85_crit_edge:                    ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else85

land.rhs:                                         ; preds = %if.else72
  %40 = ptrtoint ptr %state75 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %state75, align 4
  %and76 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %land.rhs.if.else85_crit_edge, label %if.end215.thread, !prof !428

land.rhs.if.else85_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else85

if.end215.thread:                                 ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %qh_state to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %5, ptr %qh_state, align 8
  br label %lor.lhs.false

if.else85:                                        ; preds = %land.rhs.if.else85_crit_edge, %if.else72.if.else85_crit_edge
  %43 = ptrtoint ptr %state75 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %state75, align 4
  %and88 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.then98, label %if.else85.if.end99_crit_edge, !prof !428

if.else85.if.end99_crit_edge:                     ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

if.then98:                                        ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #11
  %status = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 12
  %45 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -108, ptr %status, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %if.else85.if.end99_crit_edge
  %status100 = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 12
  %46 = ptrtoint ptr %status100 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %status100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %47)
  %cmp101 = icmp eq i32 %47, -115
  br i1 %cmp101, label %if.end99.cleanup_crit_edge, label %if.end110, !prof !385

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end110:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_status.0398)
  %cmp111.not = icmp eq i32 %do_status.0398, 0
  br i1 %cmp111.not, label %if.end110.if.end125_crit_edge, label %land.lhs.true119, !prof !385

if.end110.if.end125_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125

land.lhs.true119:                                 ; preds = %if.end110
  %48 = and i32 %35, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp122 = icmp eq i32 %48, 0
  br i1 %cmp122, label %land.lhs.true119.cleanup_crit_edge, label %land.lhs.true119.if.end125_crit_edge

land.lhs.true119.if.end125_crit_edge:             ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125

land.lhs.true119.cleanup_crit_edge:               ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end125:                                        ; preds = %land.lhs.true119.if.end125_crit_edge, %if.end110.if.end125_crit_edge
  br i1 %cmp, label %land.lhs.true129, label %if.end125.if.end134_crit_edge

if.end125.if.end134_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

land.lhs.true129:                                 ; preds = %if.end125
  %qtd_dma = getelementptr i8, ptr %.pn.in401, i32 -4
  %49 = ptrtoint ptr %qtd_dma to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %qtd_dma, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %52 = ptrtoint ptr %hw_current to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hw_current, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp130 = icmp eq i32 %51, %53
  br i1 %cmp130, label %if.then132, label %land.lhs.true129.if.end134_crit_edge

land.lhs.true129.if.end134_crit_edge:             ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

if.then132:                                       ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %hw_token133 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hw_token133, align 8
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  br label %if.end134

if.end134:                                        ; preds = %if.then132, %land.lhs.true129.if.end134_crit_edge, %if.end125.if.end134_crit_edge
  %token.0 = phi i32 [ %56, %if.then132 ], [ %35, %land.lhs.true129.if.end134_crit_edge ], [ %35, %if.end125.if.end134_crit_edge ]
  %57 = ptrtoint ptr %hw_token133 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %hw_token133, align 8
  %and136 = and i32 %58, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %cmp137 = icmp eq i32 %and136, 0
  br i1 %cmp137, label %if.end134.halt_crit_edge, label %if.end134.if.end143_crit_edge

if.end134.if.end143_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

if.end134.halt_crit_edge:                         ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %halt

halt:                                             ; preds = %if.end134.halt_crit_edge, %land.lhs.true66.halt_crit_edge
  %token.1 = phi i32 [ %token.0, %if.end134.halt_crit_edge ], [ %35, %land.lhs.true66.halt_crit_edge ]
  %59 = ptrtoint ptr %hw_token133 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %hw_token133, align 8
  %or = or i32 %60, 1073741824
  store i32 %or, ptr %hw_token133, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !446
  tail call void @arm_heavy_mb() #9
  br label %if.end143

if.end143:                                        ; preds = %halt, %if.end134.if.end143_crit_edge, %land.lhs.true66.if.end143_crit_edge, %if.else58.if.end143_crit_edge, %if.then53.if.end143_crit_edge
  %stopped.2 = phi i32 [ %stopped.0400, %land.lhs.true66.if.end143_crit_edge ], [ 1, %halt ], [ %stopped.0400, %if.else58.if.end143_crit_edge ], [ 1, %if.end134.if.end143_crit_edge ], [ 1, %if.then53.if.end143_crit_edge ]
  %token.2 = phi i32 [ %35, %land.lhs.true66.if.end143_crit_edge ], [ %token.1, %halt ], [ %35, %if.else58.if.end143_crit_edge ], [ %token.0, %if.end134.if.end143_crit_edge ], [ %35, %if.then53.if.end143_crit_edge ]
  %complete144 = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 28
  %61 = ptrtoint ptr %complete144 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %complete144, align 4
  %tobool145.not = icmp eq ptr %62, null
  br i1 %tobool145.not, label %cond.false, label %if.end143.cond.end_crit_edge

if.end143.cond.end_crit_edge:                     ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  %main146 = getelementptr inbounds %struct.oxu_murb, ptr %8, i32 0, i32 1
  %63 = ptrtoint ptr %main146 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %main146, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end143.cond.end_crit_edge
  %cond = phi ptr [ %64, %cond.false ], [ %8, %if.end143.cond.end_crit_edge ]
  %length = getelementptr i8, ptr %.pn.in401, i32 12
  %65 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %length, align 4
  tail call fastcc void @qtd_copy_status(ptr noundef %oxu, ptr noundef %cond, i32 noundef %66, i32 noundef %token.2)
  %67 = ptrtoint ptr %urb18 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %urb18, align 32
  %pipe = getelementptr inbounds %struct.urb, ptr %68, i32 0, i32 10
  %69 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pipe, align 4
  %and148 = and i32 %70, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %cond.end.if.end156_crit_edge, label %land.lhs.true150

cond.end.if.end156_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end156

land.lhs.true150:                                 ; preds = %cond.end
  %transfer_buffer = getelementptr i8, ptr %.pn.in401, i32 28
  %71 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %transfer_buffer, align 4
  %cmp151.not = icmp eq ptr %72, null
  br i1 %cmp151.not, label %land.lhs.true150.if.end156_crit_edge, label %if.then153

land.lhs.true150.if.end156_crit_edge:             ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end156

if.then153:                                       ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #11
  %buffer = getelementptr i8, ptr %.pn.in401, i32 20
  %73 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %buffer, align 4
  %75 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %length, align 4
  %77 = call ptr @memcpy(ptr %72, ptr %74, i32 %76)
  br label %if.end156

if.end156:                                        ; preds = %if.then153, %land.lhs.true150.if.end156_crit_edge, %cond.end.if.end156_crit_edge
  %status157 = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 12
  %78 = ptrtoint ptr %status157 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %status157, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -121, i32 %79)
  %cmp158 = icmp eq i32 %79, -121
  br i1 %cmp158, label %land.rhs160, label %if.end156.land.end166_crit_edge

if.end156.land.end166_crit_edge:                  ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end166

land.rhs160:                                      ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #11
  %pipe161 = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 10
  %80 = ptrtoint ptr %pipe161 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pipe161, align 4
  %shr162.mask = and i32 %81, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr162.mask)
  %cmp164 = icmp eq i32 %shr162.mask, -2147483648
  br label %land.end166

land.end166:                                      ; preds = %land.rhs160, %if.end156.land.end166_crit_edge
  %82 = phi i1 [ false, %if.end156.land.end166_crit_edge ], [ %cmp164, %land.rhs160 ]
  %land.ext = zext i1 %82 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stopped.2)
  %tobool167.not = icmp eq i32 %stopped.2, 0
  br i1 %tobool167.not, label %land.end166.if.end180_crit_edge, label %land.lhs.true168

land.end166.if.end180_crit_edge:                  ; preds = %land.end166
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end180

land.lhs.true168:                                 ; preds = %land.end166
  %prev = getelementptr i8, ptr %.pn.in401, i32 4
  %83 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev, align 4
  %cmp171.not = icmp eq ptr %84, %qtd_list
  br i1 %cmp171.not, label %land.lhs.true168.if.end180_crit_edge, label %if.then173

land.lhs.true168.if.end180_crit_edge:             ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end180

if.then173:                                       ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr178 = getelementptr i8, ptr %84, i32 -56
  %85 = ptrtoint ptr %qtd.0404 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %qtd.0404, align 32
  %87 = ptrtoint ptr %add.ptr178 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %add.ptr178, align 32
  br label %if.end180

if.end180:                                        ; preds = %if.then173, %land.lhs.true168.if.end180_crit_edge, %land.end166.if.end180_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in401) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end180.list_del.exit_crit_edge

if.end180.list_del.exit_crit_edge:                ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in401, i32 0, i32 1
  %88 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %prev.i.i, align 4
  %90 = ptrtoint ptr %.pn.in401 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %.pn.in401, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %89, ptr %prev1.i.i.i, align 4
  %93 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %91, ptr %89, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end180.list_del.exit_crit_edge
  %94 = ptrtoint ptr %.pn.in401 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in401, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in401, i32 0, i32 1
  %95 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %land.lhs.true119.cleanup_crit_edge, %if.end99.cleanup_crit_edge
  %do_status.1 = phi i32 [ %land.ext, %list_del.exit ], [ %do_status.0398, %if.end99.cleanup_crit_edge ], [ 0, %land.lhs.true119.cleanup_crit_edge ]
  %stopped.3 = phi i32 [ %stopped.2, %list_del.exit ], [ 1, %if.end99.cleanup_crit_edge ], [ 1, %land.lhs.true119.cleanup_crit_edge ]
  %last.2 = phi ptr [ %qtd.0404, %list_del.exit ], [ null, %if.end99.cleanup_crit_edge ], [ null, %land.lhs.true119.cleanup_crit_edge ]
  %cmp14.not = icmp eq ptr %.pn405, %qtd_list
  br i1 %cmp14.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %cleanup
  %cmp188.not = icmp eq ptr %last.2, null
  br i1 %cmp188.not, label %for.end.if.end215_crit_edge, label %if.then196, !prof !428

for.end.if.end215_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end215

if.then196:                                       ; preds = %for.end
  %urb197 = getelementptr inbounds %struct.ehci_qtd, ptr %last.2, i32 0, i32 7
  %96 = ptrtoint ptr %urb197 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %urb197, align 32
  %complete198 = getelementptr inbounds %struct.urb, ptr %97, i32 0, i32 28
  %98 = ptrtoint ptr %complete198 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %complete198, align 4
  %cmp199 = icmp eq ptr %99, null
  br i1 %cmp199, label %if.then201, label %if.else211

if.then201:                                       ; preds = %if.then196
  %main203 = getelementptr inbounds %struct.oxu_murb, ptr %97, i32 0, i32 1
  %100 = ptrtoint ptr %main203 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %main203, align 4
  %102 = ptrtoint ptr %urb197 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %101, ptr %urb197, align 32
  %last205 = getelementptr inbounds %struct.oxu_murb, ptr %97, i32 0, i32 2
  %103 = ptrtoint ptr %last205 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %last205, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool206.not = icmp eq i8 %104, 0
  br i1 %tobool206.not, label %if.then201.if.end210_crit_edge, label %if.then207

if.then201.if.end210_crit_edge:                   ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end210

if.then207:                                       ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ehci_urb_done(ptr noundef %oxu, ptr noundef %101)
  %inc209 = add i32 %count.3, 1
  br label %if.end210

if.end210:                                        ; preds = %if.then207, %if.then201.if.end210_crit_edge
  %count.5 = phi i32 [ %inc209, %if.then207 ], [ %count.3, %if.then201.if.end210_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %mem_lock.i) #9
  %105 = ptrtoint ptr %murb_pool.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %murb_pool.i, align 4
  %sub.ptr.lhs.cast.i344 = ptrtoint ptr %97 to i32
  %sub.ptr.rhs.cast.i345 = ptrtoint ptr %106 to i32
  %sub.ptr.sub.i346 = sub i32 %sub.ptr.lhs.cast.i344, %sub.ptr.rhs.cast.i345
  %sub.ptr.div.i347 = sdiv exact i32 %sub.ptr.sub.i346, 132
  %arrayidx1.i348 = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 4, i32 %sub.ptr.div.i347
  %107 = ptrtoint ptr %arrayidx1.i348 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %arrayidx1.i348, align 1
  tail call void @_raw_spin_unlock(ptr noundef %mem_lock.i) #9
  br label %if.end214

if.else211:                                       ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ehci_urb_done(ptr noundef %oxu, ptr noundef %97)
  %inc213 = add i32 %count.3, 1
  br label %if.end214

if.end214:                                        ; preds = %if.else211, %if.end210
  %count.6 = phi i32 [ %count.5, %if.end210 ], [ %inc213, %if.else211 ]
  %buffer.i349 = getelementptr inbounds %struct.ehci_qtd, ptr %last.2, i32 0, i32 10
  %108 = ptrtoint ptr %buffer.i349 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %buffer.i349, align 4
  %tobool.not.i350 = icmp eq ptr %109, null
  br i1 %tobool.not.i350, label %if.end214.oxu_qtd_free.exit369_crit_edge, label %if.then.i360

if.end214.oxu_qtd_free.exit369_crit_edge:         ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #11
  br label %oxu_qtd_free.exit369

if.then.i360:                                     ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_lock(ptr noundef %mem_lock.i) #9
  %110 = ptrtoint ptr %buffer.i349 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %buffer.i349, align 4
  %112 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mem.i.i, align 4
  %sub.ptr.lhs.cast.i.i353 = ptrtoint ptr %111 to i32
  %sub.ptr.rhs.cast.i.i354 = ptrtoint ptr %113 to i32
  %sub.ptr.sub.i.i355 = sub i32 %sub.ptr.lhs.cast.i.i353, %sub.ptr.rhs.cast.i.i354
  %div.i.i356 = sdiv i32 %sub.ptr.sub.i.i355, 512
  %arrayidx1.i.i357 = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 3, i32 %div.i.i356
  %114 = ptrtoint ptr %arrayidx1.i.i357 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %arrayidx1.i.i357, align 1
  %qtd_buffer_len.i.i358 = getelementptr inbounds %struct.ehci_qtd, ptr %last.2, i32 0, i32 9
  %115 = ptrtoint ptr %qtd_buffer_len.i.i358 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %qtd_buffer_len.i.i358, align 8
  %buffer_dma.i.i359 = getelementptr inbounds %struct.ehci_qtd, ptr %last.2, i32 0, i32 11
  %116 = ptrtoint ptr %buffer_dma.i.i359 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %buffer_dma.i.i359, align 16
  store ptr null, ptr %buffer.i349, align 4
  tail call void @_raw_spin_unlock(ptr noundef %mem_lock.i) #9
  br label %oxu_qtd_free.exit369

oxu_qtd_free.exit369:                             ; preds = %if.then.i360, %if.end214.oxu_qtd_free.exit369_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %mem_lock.i) #9
  %117 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mem.i.i, align 4
  %qtd_pool.i363 = getelementptr inbounds %struct.oxu_onchip_mem, ptr %118, i32 0, i32 3
  %sub.ptr.lhs.cast.i364 = ptrtoint ptr %last.2 to i32
  %sub.ptr.rhs.cast.i365 = ptrtoint ptr %qtd_pool.i363 to i32
  %sub.ptr.sub.i366 = sub i32 %sub.ptr.lhs.cast.i364, %sub.ptr.rhs.cast.i365
  %sub.ptr.div.i367 = sdiv exact i32 %sub.ptr.sub.i366, 96
  %arrayidx1.i368 = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 2, i32 %sub.ptr.div.i367
  %119 = ptrtoint ptr %arrayidx1.i368 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %arrayidx1.i368, align 1
  tail call void @_raw_spin_unlock(ptr noundef %mem_lock.i) #9
  br label %if.end215

if.end215:                                        ; preds = %oxu_qtd_free.exit369, %for.end.if.end215_crit_edge, %if.end46.if.end215_crit_edge
  %stopped.0391 = phi i32 [ %stopped.3, %oxu_qtd_free.exit369 ], [ %stopped.3, %for.end.if.end215_crit_edge ], [ %stopped.0400, %if.end46.if.end215_crit_edge ]
  %count.7 = phi i32 [ %count.6, %oxu_qtd_free.exit369 ], [ %count.3, %for.end.if.end215_crit_edge ], [ %count.3, %if.end46.if.end215_crit_edge ]
  %120 = ptrtoint ptr %qh_state to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %5, ptr %qh_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stopped.0391)
  %cmp217.not = icmp eq i32 %stopped.0391, 0
  br i1 %cmp217.not, label %if.end215.lor.lhs.false_crit_edge, label %if.end215.if.then221_crit_edge

if.end215.if.then221_crit_edge:                   ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then221

if.end215.lor.lhs.false_crit_edge:                ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end215.lor.lhs.false_crit_edge, %if.end215.thread
  %count.7386 = phi i32 [ %count.3, %if.end215.thread ], [ %count.7, %if.end215.lor.lhs.false_crit_edge ]
  %hw_qtd_next = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 4
  %121 = ptrtoint ptr %hw_qtd_next to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %hw_qtd_next, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %122)
  %cmp219 = icmp eq i32 %122, 16777216
  br i1 %cmp219, label %lor.lhs.false.if.then221_crit_edge, label %lor.lhs.false.cleanup232_crit_edge

lor.lhs.false.cleanup232_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup232

lor.lhs.false.if.then221_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then221

if.then221:                                       ; preds = %lor.lhs.false.if.then221_crit_edge, %if.end215.if.then221_crit_edge
  %count.7385 = phi i32 [ %count.7386, %lor.lhs.false.if.then221_crit_edge ], [ %count.7, %if.end215.if.then221_crit_edge ]
  %123 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.160)
  switch i8 %5, label %if.then221.cleanup232_crit_edge [
    i8 3, label %sw.bb
    i8 1, label %sw.bb223
  ]

if.then221.cleanup232_crit_edge:                  ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup232

sw.bb:                                            ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @qh_refresh(ptr noundef %qh)
  br label %cleanup232

sw.bb223:                                         ; preds = %if.then221
  %hw_info2 = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 2
  %124 = ptrtoint ptr %hw_info2 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %hw_info2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %125)
  %cmp225.not = icmp ult i32 %125, 16777216
  br i1 %cmp225.not, label %if.else229, label %if.then227

if.then227:                                       ; preds = %sw.bb223
  tail call fastcc void @qh_unlink_periodic(ptr noundef %oxu, ptr noundef %qh) #9
  %126 = ptrtoint ptr %qtd_list to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile ptr, ptr %qtd_list, align 4
  %cmp.i.not.i = icmp eq ptr %127, %qtd_list
  br i1 %cmp.i.not.i, label %if.then227.cond.false3.i_crit_edge, label %lor.lhs.false.i

if.then227.cond.false3.i_crit_edge:               ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false3.i

lor.lhs.false.i:                                  ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #11
  %128 = ptrtoint ptr %hw_info2 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %hw_info2, align 8
  %and.i = and i32 %129, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %cmp.not.i, i32 55, i32 2
  br label %cond.false3.i

cond.false3.i:                                    ; preds = %lor.lhs.false.i, %if.then227.cond.false3.i_crit_edge
  %wait.0.i = phi i32 [ 2, %if.then227.cond.false3.i_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %130 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %130(i32 noundef %wait.0.i) #9
  %131 = ptrtoint ptr %qh_state to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 3, ptr %qh_state, align 8
  %132 = ptrtoint ptr %qh to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 16777216, ptr %qh, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %call228 = tail call fastcc i32 @qh_schedule(ptr noundef %oxu, ptr noundef %qh)
  br label %cleanup232

if.else229:                                       ; preds = %sw.bb223
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @unlink_async(ptr noundef %oxu, ptr noundef %qh)
  br label %cleanup232

cleanup232:                                       ; preds = %if.else229, %cond.false3.i, %sw.bb, %if.then221.cleanup232_crit_edge, %lor.lhs.false.cleanup232_crit_edge, %entry.cleanup232_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup232_crit_edge ], [ %count.7385, %sw.bb ], [ %count.7385, %if.then221.cleanup232_crit_edge ], [ %count.7385, %if.else229 ], [ %count.7385, %cond.false3.i ], [ %count.7386, %lor.lhs.false.cleanup232_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qh_link_async(ptr noundef %oxu, ptr noundef %qh) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %qh_dma = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 9
  %0 = ptrtoint ptr %qh_dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qh_dma, align 4
  %async = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 12
  %2 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async, align 4
  %actions.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 26
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %actions.i) #9
  %qh_next = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %qh_next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qh_next, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then:                                          ; preds = %entry
  %regs = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 9
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !360
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !447
  %and2 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then4:                                         ; preds = %if.then
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %status = getelementptr inbounds %struct.ehci_regs, ptr %11, i32 0, i32 1
  %call.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call.i, 150000
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %13 = and i32 %12, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp2.i = icmp eq i32 %13, 0
  br i1 %cmp2.i, label %if.then4.handshake.exit_crit_edge, label %if.then4.lor.lhs.false.i_crit_edge

if.then4.lor.lhs.false.i_crit_edge:               ; preds = %if.then4
  br label %lor.lhs.false.i

if.then4.handshake.exit_crit_edge:                ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %handshake.exit

lor.lhs.false.i:                                  ; preds = %cond.false.i.lor.lhs.false.i_crit_edge, %if.then4.lor.lhs.false.i_crit_edge
  %14 = phi i32 [ %17, %cond.false.i.lor.lhs.false.i_crit_edge ], [ %12, %if.then4.lor.lhs.false.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp5.i = icmp eq i32 %14, -1
  br i1 %cmp5.i, label %lor.lhs.false.i.handshake.exit_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.handshake.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %handshake.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call7.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call7.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call7.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then11.i, label %cond.false.i

if.then11.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !439
  br label %handshake.exit

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #9
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %18 = and i32 %17, 8388608
  %cmp.i = icmp eq i32 %18, 0
  br i1 %cmp.i, label %cond.false.i.handshake.exit_crit_edge, label %cond.false.i.lor.lhs.false.i_crit_edge

cond.false.i.lor.lhs.false.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

cond.false.i.handshake.exit_crit_edge:            ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %handshake.exit

handshake.exit:                                   ; preds = %cond.false.i.handshake.exit_crit_edge, %if.then11.i, %lor.lhs.false.i.handshake.exit_crit_edge, %if.then4.handshake.exit_crit_edge
  %or7 = or i32 %9, 33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !448
  tail call void @arm_heavy_mb() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %or7)
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #9, !srcloc !359
  %state = getelementptr i8, ptr %oxu, i32 -12
  %22 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %state, align 4
  br label %if.end11

if.end11:                                         ; preds = %handshake.exit, %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  %qh_state = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 17
  %23 = ptrtoint ptr %qh_state to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %qh_state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %24)
  %cmp = icmp eq i8 %24, 3
  br i1 %cmp, label %if.then13, label %if.end11.if.end14_crit_edge

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @qh_refresh(ptr noundef %qh)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11.if.end14_crit_edge
  %and = and i32 %1, -32
  %25 = or i32 %and, 2
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %qh_next15 = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 10
  %27 = ptrtoint ptr %qh_next to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qh_next, align 8
  %29 = ptrtoint ptr %qh_next15 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %qh_next15, align 8
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %3, align 32
  %32 = ptrtoint ptr %qh to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %qh, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !449
  tail call void @arm_heavy_mb() #9
  %33 = ptrtoint ptr %qh_next to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %qh, ptr %qh_next, align 8
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %26, ptr %3, align 32
  %35 = ptrtoint ptr %qh_state to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %qh_state, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start_unlink_async(ptr noundef %oxu, ptr noundef %qh) unnamed_addr #2 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 9
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !360
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !450
  %lock = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %4 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %lock, align 4
  %5 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body6, label %do.body12, !prof !428

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/host/oxu210hp-hcd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2130, 0\0A.popsection", ""() #9, !srcloc !451
  unreachable

do.body12:                                        ; preds = %entry
  %reclaim = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 13
  %6 = ptrtoint ptr %reclaim to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reclaim, align 4
  %tobool13.not = icmp eq ptr %7, null
  br i1 %tobool13.not, label %lor.rhs, label %do.body12.do.body26_crit_edge, !prof !385

do.body12.do.body26_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body26

lor.rhs:                                          ; preds = %do.body12
  %qh_state = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 17
  %8 = ptrtoint ptr %qh_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %qh_state, align 8
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.161)
  switch i8 %9, label %lor.rhs.do.body26_crit_edge [
    i8 4, label %lor.rhs.do.end34_crit_edge
    i8 1, label %lor.rhs.do.end34_crit_edge127
  ]

lor.rhs.do.end34_crit_edge127:                    ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end34

lor.rhs.do.end34_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end34

lor.rhs.do.body26_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body26

do.body26:                                        ; preds = %lor.rhs.do.body26_crit_edge, %do.body12.do.body26_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/host/oxu210hp-hcd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2132, 0\0A.popsection", ""() #9, !srcloc !452
  unreachable

do.end34:                                         ; preds = %lor.rhs.do.end34_crit_edge, %lor.rhs.do.end34_crit_edge127
  %async = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 12
  %11 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %async, align 4
  %cmp35 = icmp eq ptr %12, %qh
  br i1 %cmp35, label %if.then43, label %if.end59, !prof !428

if.then43:                                        ; preds = %do.end34
  %state = getelementptr i8, ptr %oxu, i32 -12
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp45.not = icmp eq i32 %14, 0
  br i1 %cmp45.not, label %if.then43.cleanup_crit_edge, label %do.body50

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body50:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !453
  tail call void @arm_heavy_mb() #9
  %and = and i32 %3, -33
  %15 = tail call i32 @llvm.bswap.i32(i32 %and)
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #9, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !454
  tail call void @arm_heavy_mb() #9
  %actions.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 26
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %actions.i) #9
  br label %cleanup

if.end59:                                         ; preds = %do.end34
  %18 = ptrtoint ptr %qh_state to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %qh_state, align 8
  %kref.i = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 15
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #9
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #9, !srcloc !442
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end59.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !428

if.end59.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end59
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %20 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %.not.i.i.i.i.i = icmp sgt i32 %20, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.qh_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !385

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.qh_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qh_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end59.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end59.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %qh_get.exit

qh_get.exit:                                      ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.qh_get.exit_crit_edge
  %21 = ptrtoint ptr %reclaim to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %qh, ptr %reclaim, align 4
  %22 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %async, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %qh_get.exit
  %prev.0 = phi ptr [ %23, %qh_get.exit ], [ %25, %while.cond.while.cond_crit_edge ]
  %qh_next = getelementptr inbounds %struct.ehci_qh, ptr %prev.0, i32 0, i32 10
  %24 = ptrtoint ptr %qh_next to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %qh_next, align 8
  %cmp64.not = icmp eq ptr %25, %qh
  br i1 %cmp64.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %26 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %qh, align 32
  %28 = ptrtoint ptr %prev.0 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %prev.0, align 32
  %qh_next69 = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 10
  %29 = ptrtoint ptr %qh_next69 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qh_next69, align 8
  %31 = ptrtoint ptr %qh_next to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %qh_next, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !455
  tail call void @arm_heavy_mb() #9
  %state74 = getelementptr i8, ptr %oxu, i32 -12
  %32 = ptrtoint ptr %state74 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %state74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp75 = icmp eq i32 %33, 0
  br i1 %cmp75, label %if.then83, label %if.end84, !prof !428

if.then83:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @end_unlink_async(ptr noundef %oxu)
  br label %cleanup

if.end84:                                         ; preds = %while.end
  %reclaim_ready = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 14
  %34 = ptrtoint ptr %reclaim_ready to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load = load i8, ptr %reclaim_ready, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %reclaim_ready, align 4
  %or = or i32 %3, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !456
  tail call void @arm_heavy_mb() #9
  %35 = tail call i32 @llvm.bswap.i32(i32 %or)
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #9, !srcloc !359
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !457
  %actions.i126 = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 26
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %actions.i126) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end84.cleanup_crit_edge

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %41, 1
  %watchdog10.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 25
  %call11.i = tail call i32 @mod_timer(ptr noundef %watchdog10.i, i32 noundef %add.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end84.cleanup_crit_edge, %if.then83, %do.body50, %if.then43.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qh_destroy(ptr noundef %kref) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %oxu1 = getelementptr i8, ptr %kref, i32 -4
  %0 = ptrtoint ptr %oxu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oxu1, align 4
  %qtd_list = getelementptr i8, ptr %kref, i32 -20
  %2 = ptrtoint ptr %qtd_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %qtd_list, align 4
  %cmp.i.not = icmp eq ptr %3, %qtd_list
  br i1 %cmp.i.not, label %lor.lhs.false, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %qh_next = getelementptr i8, ptr %kref, i32 -24
  %4 = ptrtoint ptr %qh_next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qh_next, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end16, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qh_destroy.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qh_destroy, %if.then8)) #9
          to label %do.body10 [label %if.then8], !srcloc !357

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %1, i32 -600
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qh_destroy.__UNIQUE_ID_ddebug252, ptr noundef %7, ptr noundef nonnull @.str.72) #9
  br label %do.body10

do.body10:                                        ; preds = %if.then8, %do.body
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/host/oxu210hp-hcd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1050, 0\0A.popsection", ""() #9, !srcloc !458
  unreachable

if.end16:                                         ; preds = %lor.lhs.false
  %dummy = getelementptr i8, ptr %kref, i32 -12
  %8 = ptrtoint ptr %dummy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dummy, align 4
  %tobool17.not = icmp eq ptr %9, null
  br i1 %tobool17.not, label %if.end16.if.end20_crit_edge, label %if.then18

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then18:                                        ; preds = %if.end16
  %buffer.i = getelementptr inbounds %struct.ehci_qtd, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then18.oxu_qtd_free.exit_crit_edge, label %if.then.i

if.then18.oxu_qtd_free.exit_crit_edge:            ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %oxu_qtd_free.exit

if.then.i:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %mem_lock.i.i = getelementptr inbounds %struct.oxu_hcd, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %mem_lock.i.i) #9
  %12 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer.i, align 4
  %mem.i.i = getelementptr inbounds %struct.oxu_hcd, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mem.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %div.i.i = sdiv i32 %sub.ptr.sub.i.i, 512
  %arrayidx1.i.i = getelementptr %struct.oxu_hcd, ptr %1, i32 0, i32 3, i32 %div.i.i
  %16 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx1.i.i, align 1
  %qtd_buffer_len.i.i = getelementptr inbounds %struct.ehci_qtd, ptr %9, i32 0, i32 9
  %17 = ptrtoint ptr %qtd_buffer_len.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %qtd_buffer_len.i.i, align 8
  %buffer_dma.i.i = getelementptr inbounds %struct.ehci_qtd, ptr %9, i32 0, i32 11
  %18 = ptrtoint ptr %buffer_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %buffer_dma.i.i, align 16
  store ptr null, ptr %buffer.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %mem_lock.i.i) #9
  br label %oxu_qtd_free.exit

oxu_qtd_free.exit:                                ; preds = %if.then.i, %if.then18.oxu_qtd_free.exit_crit_edge
  %mem_lock.i = getelementptr inbounds %struct.oxu_hcd, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %mem_lock.i) #9
  %mem.i = getelementptr inbounds %struct.oxu_hcd, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mem.i, align 4
  %qtd_pool.i = getelementptr inbounds %struct.oxu_onchip_mem, ptr %20, i32 0, i32 3
  %sub.ptr.lhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %qtd_pool.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 96
  %arrayidx1.i = getelementptr %struct.oxu_hcd, ptr %1, i32 0, i32 2, i32 %sub.ptr.div.i
  %21 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx1.i, align 1
  tail call void @_raw_spin_unlock(ptr noundef %mem_lock.i) #9
  br label %if.end20

if.end20:                                         ; preds = %oxu_qtd_free.exit, %if.end16.if.end20_crit_edge
  %add.ptr = getelementptr i8, ptr %kref, i32 -96
  %mem_lock.i28 = getelementptr inbounds %struct.oxu_hcd, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %mem_lock.i28) #9
  %mem.i29 = getelementptr inbounds %struct.oxu_hcd, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %mem.i29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mem.i29, align 4
  %qh_pool.i = getelementptr inbounds %struct.oxu_onchip_mem, ptr %23, i32 0, i32 2
  %sub.ptr.lhs.cast.i30 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast.i31 = ptrtoint ptr %qh_pool.i to i32
  %sub.ptr.sub.i32 = sub i32 %sub.ptr.lhs.cast.i30, %sub.ptr.rhs.cast.i31
  %sub.ptr.div.i33 = ashr exact i32 %sub.ptr.sub.i32, 7
  %arrayidx1.i34 = getelementptr %struct.oxu_hcd, ptr %1, i32 0, i32 1, i32 %sub.ptr.div.i33
  %24 = ptrtoint ptr %arrayidx1.i34 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx1.i34, align 1
  tail call void @_raw_spin_unlock(ptr noundef %mem_lock.i28) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ehci_urb_done(ptr noundef %oxu, ptr noundef %urb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcpriv = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %0 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcpriv, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end5_crit_edge, label %if.then, !prof !428

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %hw_info2 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hw_info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_info2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %3)
  %cmp3.not = icmp ult i32 %3, 16777216
  br i1 %cmp3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %bandwidth_int_reqs = getelementptr i8, ptr %oxu, i32 -452
  %4 = ptrtoint ptr %bandwidth_int_reqs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bandwidth_int_reqs, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %bandwidth_int_reqs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %kref.i = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 15
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !383
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #9, !srcloc !384
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end5_crit_edge, label %if.then10.i.i.i.i.i, !prof !385

if.end5.i.i.i.i.i.if.end5_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #9
  br label %if.end5

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !386
  tail call fastcc void @qh_destroy(ptr noundef %kref.i) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end5_crit_edge, %entry.if.end5_crit_edge
  %7 = ptrtoint ptr %hcpriv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %hcpriv, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %9, label %if.end5.sw.epilog_crit_edge [
    i32 -115, label %if.end5.sw.epilog.sink.split_crit_edge
    i32 -121, label %sw.bb8
  ]

if.end5.sw.epilog.sink.split_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end5
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 13
  %11 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %transfer_flags, align 4
  %and9 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %sw.bb8.sw.epilog.sink.split_crit_edge, label %sw.bb8.sw.epilog_crit_edge

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb8.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb8.sw.epilog.sink.split_crit_edge, %if.end5.sw.epilog.sink.split_crit_edge
  %13 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %status, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb8.sw.epilog_crit_edge, %if.end5.sw.epilog_crit_edge
  %lock = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %add.ptr.i30 = getelementptr i8, ptr %oxu, i32 -600
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status, align 4
  tail call void @usb_hcd_giveback_urb(ptr noundef %add.ptr.i30, ptr noundef %urb, i32 noundef %15) #9
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qtd_copy_status(ptr nocapture noundef readonly %oxu, ptr nocapture noundef %urb, i32 noundef %length, i32 noundef %token) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %token, 8
  %and = and i32 %shr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp.not = icmp eq i32 %and, 2
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then, !prof !428

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shr2 = lshr i32 %token, 16
  %and3 = and i32 %shr2, 32767
  %sub = sub i32 %length, %and3
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %0 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %actual_length, align 4
  %add = add i32 %sub, %1
  store i32 %add, ptr %actual_length, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %3)
  %cmp4.not = icmp eq i32 %3, -115
  br i1 %cmp4.not, label %if.end12, label %if.end.if.end88_crit_edge, !prof !385

if.end.if.end88_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.end12:                                         ; preds = %if.end
  %4 = and i32 %token, 2147418112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp15.not = icmp ne i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp18 = icmp eq i32 %and, 1
  %spec.select = and i1 %cmp15.not, %cmp18
  br i1 %spec.select, label %if.then25, label %if.end12.if.end27_crit_edge, !prof !428

if.end12.if.end27_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then25:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -121, ptr %status, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end12.if.end27_crit_edge
  %and28 = and i32 %token, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.if.end88_crit_edge, label %if.then30

if.end27.if.end88_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then30:                                        ; preds = %if.end27
  %and31 = and i32 %token, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.else, label %if.then30.if.end88.sink.split_crit_edge

if.then30.if.end88.sink.split_crit_edge:          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88.sink.split

if.else:                                          ; preds = %if.then30
  %and35 = and i32 %token, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.else39, label %if.else.if.end88.sink.split_crit_edge

if.else.if.end88.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88.sink.split

if.else39:                                        ; preds = %if.else
  %and40 = and i32 %token, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.else47, label %if.then42

if.then42:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #11
  %cond = select i1 %cmp18, i32 -63, i32 -70
  br label %if.end88.sink.split

if.else47:                                        ; preds = %if.else39
  %and48 = and i32 %token, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  %6 = and i32 %token, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool78.not = icmp eq i32 %6, 0
  br i1 %tobool49.not, label %if.else75, label %if.then50

if.then50:                                        ; preds = %if.else47
  br i1 %tobool78.not, label %do.body, label %if.then50.if.end88.sink.split_crit_edge

if.then50.if.end88.sink.split_crit_edge:          ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88.sink.split

do.body:                                          ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtd_copy_status.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtd_copy_status, %if.then64)) #9
          to label %if.end88.sink.split [label %if.then64], !srcloc !357

if.then64:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %oxu, i32 -600
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %devpath = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 1
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %11 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pipe, align 4
  %shr66 = lshr i32 %12, 15
  %and67 = and i32 %shr66, 15
  %and69 = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  %cond71 = select i1 %tobool70.not, ptr @.str.76, ptr @.str.75
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qtd_copy_status.__UNIQUE_ID_ddebug255, ptr noundef %8, ptr noundef nonnull @.str.74, ptr noundef %devpath, i32 noundef %and67, ptr noundef nonnull %cond71) #9
  br label %if.end88.sink.split

if.else75:                                        ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #11
  %. = select i1 %tobool78.not, i32 -71, i32 -32
  br label %if.end88.sink.split

if.end88.sink.split:                              ; preds = %if.else75, %if.then64, %do.body, %if.then50.if.end88.sink.split_crit_edge, %if.then42, %if.else.if.end88.sink.split_crit_edge, %if.then30.if.end88.sink.split_crit_edge
  %.sink = phi i32 [ %cond, %if.then42 ], [ -75, %if.then30.if.end88.sink.split_crit_edge ], [ -71, %if.else.if.end88.sink.split_crit_edge ], [ -32, %if.then50.if.end88.sink.split_crit_edge ], [ -71, %do.body ], [ -71, %if.then64 ], [ %., %if.else75 ]
  %13 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %status, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.end88.sink.split, %if.end27.if.end88_crit_edge, %if.end.if.end88_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qh_refresh(ptr noundef %qh) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %qtd_list = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 11
  %0 = ptrtoint ptr %qtd_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %qtd_list, align 4
  %cmp.i.not = icmp eq ptr %1, %qtd_list
  br i1 %cmp.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dummy = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 12
  %2 = ptrtoint ptr %dummy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dummy, align 4
  br label %if.end3

if.else:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -56
  %qtd_dma = getelementptr i8, ptr %1, i32 -4
  %4 = ptrtoint ptr %qtd_dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qtd_dma, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %hw_current = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 3
  %7 = ptrtoint ptr %hw_current to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_current, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp = icmp eq i32 %6, %8
  br i1 %cmp, label %if.else.if.end6_crit_edge, label %if.else.if.end3_crit_edge

if.else.if.end3_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end3:                                          ; preds = %if.else.if.end3_crit_edge, %if.then
  %qtd.0 = phi ptr [ %3, %if.then ], [ %add.ptr, %if.else.if.end3_crit_edge ]
  %tobool4.not = icmp eq ptr %qtd.0, null
  br i1 %tobool4.not, label %if.end3.if.end6_crit_edge, label %if.then5

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  %qh_state.i = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 17
  %9 = ptrtoint ptr %qh_state.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %qh_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp.not.i = icmp eq i8 %10, 3
  br i1 %cmp.not.i, label %do.end6.i, label %do.body3.i, !prof !385

do.body3.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/host/oxu210hp-hcd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1248, 0\0A.popsection", ""() #9, !srcloc !459
  unreachable

do.end6.i:                                        ; preds = %if.then5
  %qtd_dma.i = getelementptr inbounds %struct.ehci_qtd, ptr %qtd.0, i32 0, i32 5
  %11 = ptrtoint ptr %qtd_dma.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qtd_dma.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  %hw_qtd_next.i = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 4
  %14 = ptrtoint ptr %hw_qtd_next.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %hw_qtd_next.i, align 16
  %hw_alt_next.i = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 5
  %15 = ptrtoint ptr %hw_alt_next.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 16777216, ptr %hw_alt_next.i, align 4
  %hw_info1.i = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 1
  %16 = ptrtoint ptr %hw_info1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hw_info1.i, align 4
  %and.i = and i32 %17, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %do.end6.i.qh_update.exit_crit_edge

do.end6.i.qh_update.exit_crit_edge:               ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qh_update.exit

if.then8.i:                                       ; preds = %do.end6.i
  %hw_token.i = getelementptr inbounds %struct.ehci_qtd, ptr %qtd.0, i32 0, i32 2
  %18 = ptrtoint ptr %hw_token.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hw_token.i, align 8
  %and9.i = lshr i32 %19, 16
  %and9.lobit.i = and i32 %and9.i, 1
  %20 = xor i32 %and9.lobit.i, 1
  %21 = lshr i32 %17, 16
  %and14.i = and i32 %21, 15
  %dev.i = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 24
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %arrayidx.i = getelementptr %struct.usb_device, ptr %23, i32 0, i32 10, i32 %20
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %26 = shl nuw nsw i32 1, %and14.i
  %27 = and i32 %25, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool17.not.i = icmp eq i32 %27, 0
  br i1 %tobool17.not.i, label %if.then26.i, label %if.then8.i.qh_update.exit_crit_edge, !prof !428

if.then8.i.qh_update.exit_crit_edge:              ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qh_update.exit

if.then26.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw_token27.i = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 6
  %28 = ptrtoint ptr %hw_token27.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hw_token27.i, align 8
  %and28.i = and i32 %29, -129
  store i32 %and28.i, ptr %hw_token27.i, align 8
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %31, %26
  store i32 %or.i, ptr %arrayidx.i, align 4
  br label %qh_update.exit

qh_update.exit:                                   ; preds = %if.then26.i, %if.then8.i.qh_update.exit_crit_edge, %do.end6.i.qh_update.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !460
  tail call void @arm_heavy_mb() #9
  %hw_token41.i = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 6
  %32 = ptrtoint ptr %hw_token41.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hw_token41.i, align 8
  %and42.i = and i32 %33, 16777344
  store i32 %and42.i, ptr %hw_token41.i, align 8
  br label %if.end6

if.end6:                                          ; preds = %qh_update.exit, %if.end3.if.end6_crit_edge, %if.else.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qh_schedule(ptr noundef %oxu, ptr noundef %qh) unnamed_addr #2 align 64 {
entry:
  %c_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c_mask) #9
  %0 = ptrtoint ptr %c_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %c_mask, align 4, !annotation !461
  tail call fastcc void @qh_refresh(ptr noundef %qh)
  %1 = ptrtoint ptr %qh to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 16777216, ptr %qh, align 32
  %start = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 23
  %2 = ptrtoint ptr %start to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %start, align 16
  %period = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 22
  %4 = ptrtoint ptr %period to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %period, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp = icmp ult i16 %3, %5
  br i1 %cmp, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %c_mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %c_mask, align 4
  br label %if.then4

if.end:                                           ; preds = %entry
  %conv = zext i16 %3 to i32
  %hw_info2 = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 2
  %7 = ptrtoint ptr %hw_info2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_info2, align 4
  %9 = lshr i32 %8, 24
  %10 = tail call i32 @llvm.cttz.i32(i32 %9, i1 true), !range !462
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %8)
  %iszero = icmp ult i32 %8, 16777216
  %dec = select i1 %iszero, i32 -1, i32 %10
  %call3 = call fastcc i32 @check_intr_schedule(ptr noundef %oxu, i32 noundef %conv, i32 noundef %dec, ptr noundef %qh, ptr noundef nonnull %c_mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %do.body37, label %if.then4thread-pre-split

if.then4thread-pre-split:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %period to i32
  call void @__asan_load2_noabort(i32 %11)
  %.pr = load i16, ptr %period, align 2
  br label %if.then4

if.then4:                                         ; preds = %if.then4thread-pre-split, %if.end.thread
  %12 = phi i16 [ %.pr, %if.then4thread-pre-split ], [ %5, %if.end.thread ]
  %uframe.085 = phi i32 [ %dec, %if.then4thread-pre-split ], [ 0, %if.end.thread ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool6.not = icmp eq i16 %12, 0
  br i1 %tobool6.not, label %if.end22, label %if.then7

if.then7:                                         ; preds = %if.then4
  %conv9 = zext i16 %12 to i32
  br label %do.body

do.body:                                          ; preds = %for.inc.7.do.body_crit_edge, %if.then7
  %frame.0.in = phi i32 [ %conv9, %if.then7 ], [ %frame.0, %for.inc.7.do.body_crit_edge ]
  %frame.0 = add nsw i32 %frame.0.in, -1
  %call12 = call fastcc i32 @check_intr_schedule(ptr noundef %oxu, i32 noundef %frame.0, i32 noundef 0, ptr noundef %qh, ptr noundef nonnull %c_mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %do.body.if.end25.loopexit_crit_edge, label %for.inc

do.body.if.end25.loopexit_crit_edge:              ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.loopexit

for.inc:                                          ; preds = %do.body
  %call12.1 = call fastcc i32 @check_intr_schedule(ptr noundef %oxu, i32 noundef %frame.0, i32 noundef 1, ptr noundef %qh, ptr noundef nonnull %c_mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.1)
  %cmp13.1 = icmp eq i32 %call12.1, 0
  br i1 %cmp13.1, label %for.inc.if.end25.loopexit_crit_edge, label %for.inc.1

for.inc.if.end25.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.loopexit

for.inc.1:                                        ; preds = %for.inc
  %call12.2 = call fastcc i32 @check_intr_schedule(ptr noundef %oxu, i32 noundef %frame.0, i32 noundef 2, ptr noundef %qh, ptr noundef nonnull %c_mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.2)
  %cmp13.2 = icmp eq i32 %call12.2, 0
  br i1 %cmp13.2, label %for.inc.1.if.end25.loopexit_crit_edge, label %for.inc.2

for.inc.1.if.end25.loopexit_crit_edge:            ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.loopexit

for.inc.2:                                        ; preds = %for.inc.1
  %call12.3 = call fastcc i32 @check_intr_schedule(ptr noundef %oxu, i32 noundef %frame.0, i32 noundef 3, ptr noundef %qh, ptr noundef nonnull %c_mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.3)
  %cmp13.3 = icmp eq i32 %call12.3, 0
  br i1 %cmp13.3, label %for.inc.2.if.end25.loopexit_crit_edge, label %for.inc.3

for.inc.2.if.end25.loopexit_crit_edge:            ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.loopexit

for.inc.3:                                        ; preds = %for.inc.2
  %call12.4 = call fastcc i32 @check_intr_schedule(ptr noundef %oxu, i32 noundef %frame.0, i32 noundef 4, ptr noundef %qh, ptr noundef nonnull %c_mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.4)
  %cmp13.4 = icmp eq i32 %call12.4, 0
  br i1 %cmp13.4, label %for.inc.3.if.end25.loopexit_crit_edge, label %for.inc.4

for.inc.3.if.end25.loopexit_crit_edge:            ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.loopexit

for.inc.4:                                        ; preds = %for.inc.3
  %call12.5 = call fastcc i32 @check_intr_schedule(ptr noundef %oxu, i32 noundef %frame.0, i32 noundef 5, ptr noundef %qh, ptr noundef nonnull %c_mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.5)
  %cmp13.5 = icmp eq i32 %call12.5, 0
  br i1 %cmp13.5, label %for.inc.4.if.end25.loopexit_crit_edge, label %for.inc.5

for.inc.4.if.end25.loopexit_crit_edge:            ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.loopexit

for.inc.5:                                        ; preds = %for.inc.4
  %call12.6 = call fastcc i32 @check_intr_schedule(ptr noundef %oxu, i32 noundef %frame.0, i32 noundef 6, ptr noundef %qh, ptr noundef nonnull %c_mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.6)
  %cmp13.6 = icmp eq i32 %call12.6, 0
  br i1 %cmp13.6, label %for.inc.5.if.end25.loopexit_crit_edge, label %for.inc.6

for.inc.5.if.end25.loopexit_crit_edge:            ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.loopexit

for.inc.6:                                        ; preds = %for.inc.5
  %call12.7 = call fastcc i32 @check_intr_schedule(ptr noundef %oxu, i32 noundef %frame.0, i32 noundef 7, ptr noundef %qh, ptr noundef nonnull %c_mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.7)
  %cmp13.7 = icmp eq i32 %call12.7, 0
  br i1 %cmp13.7, label %for.inc.6.if.end25.loopexit_crit_edge, label %for.inc.7

for.inc.6.if.end25.loopexit_crit_edge:            ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.loopexit

for.inc.7:                                        ; preds = %for.inc.6
  %tobool19.not = icmp eq i32 %frame.0, 0
  br i1 %tobool19.not, label %for.inc.7.done_crit_edge, label %for.inc.7.do.body_crit_edge

for.inc.7.do.body_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.inc.7.done_crit_edge:                         ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end22:                                         ; preds = %if.then4
  %call21 = call fastcc i32 @check_intr_schedule(ptr noundef %oxu, i32 noundef 0, i32 noundef 0, ptr noundef %qh, ptr noundef nonnull %c_mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool23.not = icmp eq i32 %call21, 0
  br i1 %tobool23.not, label %if.end22.if.end25_crit_edge, label %if.end22.done_crit_edge

if.end22.done_crit_edge:                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end22.if.end25_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.end25.loopexit:                                ; preds = %for.inc.6.if.end25.loopexit_crit_edge, %for.inc.5.if.end25.loopexit_crit_edge, %for.inc.4.if.end25.loopexit_crit_edge, %for.inc.3.if.end25.loopexit_crit_edge, %for.inc.2.if.end25.loopexit_crit_edge, %for.inc.1.if.end25.loopexit_crit_edge, %for.inc.if.end25.loopexit_crit_edge, %do.body.if.end25.loopexit_crit_edge
  %uframe.1104.lcssa = phi i32 [ 0, %do.body.if.end25.loopexit_crit_edge ], [ 1, %for.inc.if.end25.loopexit_crit_edge ], [ 2, %for.inc.1.if.end25.loopexit_crit_edge ], [ 3, %for.inc.2.if.end25.loopexit_crit_edge ], [ 4, %for.inc.3.if.end25.loopexit_crit_edge ], [ 5, %for.inc.4.if.end25.loopexit_crit_edge ], [ 6, %for.inc.5.if.end25.loopexit_crit_edge ], [ 7, %for.inc.6.if.end25.loopexit_crit_edge ]
  %phi.cast = trunc i32 %frame.0 to i16
  br label %if.end25

if.end25:                                         ; preds = %if.end25.loopexit, %if.end22.if.end25_crit_edge
  %uframe.294 = phi i32 [ %uframe.085, %if.end22.if.end25_crit_edge ], [ %uframe.1104.lcssa, %if.end25.loopexit ]
  %frame.193 = phi i16 [ 0, %if.end22.if.end25_crit_edge ], [ %phi.cast, %if.end25.loopexit ]
  %13 = ptrtoint ptr %start to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %frame.193, ptr %start, align 16
  %hw_info228 = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 2
  %14 = ptrtoint ptr %hw_info228 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hw_info228, align 8
  %and29 = and i32 %15, 65535
  %16 = ptrtoint ptr %period to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %period, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool32.not = icmp eq i16 %17, 0
  %shl = shl nuw i32 1, %uframe.294
  %18 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %cond = select i1 %tobool32.not, i32 -16777216, i32 %18
  %or = or i32 %cond, %and29
  %19 = ptrtoint ptr %c_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %c_mask, align 4
  %or35 = or i32 %or, %20
  %21 = ptrtoint ptr %hw_info228 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or35, ptr %hw_info228, align 8
  br label %if.end47

do.body37:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qh_schedule.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qh_schedule, %if.then42)) #9
          to label %if.end47 [label %if.then42], !srcloc !357

if.then42:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %oxu, i32 -600
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qh_schedule.__UNIQUE_ID_ddebug260, ptr noundef %23, ptr noundef nonnull @.str.80, ptr noundef %qh) #9
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %do.body37, %if.end25
  %call48 = tail call fastcc i32 @qh_link_periodic(ptr noundef %oxu, ptr noundef %qh)
  br label %done

done:                                             ; preds = %if.end47, %if.end22.done_crit_edge, %for.inc.7.done_crit_edge
  %status.5 = phi i32 [ %call21, %if.end22.done_crit_edge ], [ %call48, %if.end47 ], [ %call12.7, %for.inc.7.done_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c_mask) #9
  ret i32 %status.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @unlink_async(ptr noundef %oxu, ptr noundef %qh) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %qh_state = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 17
  %0 = ptrtoint ptr %qh_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %qh_state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %reclaim = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 13
  %2 = ptrtoint ptr %reclaim to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reclaim, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true2

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true2:                                   ; preds = %land.lhs.true
  %state = getelementptr i8, ptr %oxu, i32 -12
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true2.if.else_crit_edge, label %land.lhs.true2.for.cond_crit_edge

land.lhs.true2.for.cond_crit_edge:                ; preds = %land.lhs.true2
  br label %for.cond

land.lhs.true2.if.else_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %land.lhs.true2.for.cond_crit_edge
  %last.0 = phi ptr [ %7, %for.cond.for.cond_crit_edge ], [ %3, %land.lhs.true2.for.cond_crit_edge ]
  %reclaim5 = getelementptr inbounds %struct.ehci_qh, ptr %last.0, i32 0, i32 13
  %6 = ptrtoint ptr %reclaim5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reclaim5, align 8
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %reclaim5.le = getelementptr inbounds %struct.ehci_qh, ptr %last.0, i32 0, i32 13
  %8 = ptrtoint ptr %qh_state to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %qh_state, align 8
  %9 = ptrtoint ptr %reclaim5.le to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %qh, ptr %reclaim5.le, align 8
  br label %if.end18

if.else:                                          ; preds = %land.lhs.true2.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %state11 = getelementptr i8, ptr %oxu, i32 -12
  %10 = ptrtoint ptr %state11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state11, align 4
  %and12 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %land.lhs.true14, label %if.else.if.end18_crit_edge

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true14:                                  ; preds = %if.else
  %reclaim15 = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 13
  %12 = ptrtoint ptr %reclaim15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reclaim15, align 4
  %tobool16.not = icmp eq ptr %13, null
  br i1 %tobool16.not, label %land.lhs.true14.if.end18_crit_edge, label %if.then17

land.lhs.true14.if.end18_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then17:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @end_unlink_async(ptr noundef %oxu)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %land.lhs.true14.if.end18_crit_edge, %if.else.if.end18_crit_edge, %for.end
  %14 = ptrtoint ptr %qh_state to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %qh_state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp21 = icmp eq i8 %15, 1
  br i1 %cmp21, label %if.then23, label %if.end18.if.end24_crit_edge

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @start_unlink_async(ptr noundef %oxu, ptr noundef %qh)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end18.if.end24_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_giveback_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qh_unlink_periodic(ptr noundef %oxu, ptr noundef %qh) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %period1 = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 22
  %0 = ptrtoint ptr %period1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %period1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  %narrow = select i1 %cmp, i16 1, i16 %1
  %spec.store.select = zext i16 %narrow to i32
  %start = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 23
  %2 = ptrtoint ptr %start to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %start, align 16
  %conv3 = zext i16 %3 to i32
  %periodic_size = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 15
  %4 = ptrtoint ptr %periodic_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %periodic_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv3)
  %cmp466 = icmp ugt i32 %5, %conv3
  br i1 %cmp466, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pshadow.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 19
  %periodic.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %periodic_unlink.exit.for.body_crit_edge, %for.body.lr.ph
  %i.067 = phi i32 [ %conv3, %for.body.lr.ph ], [ %add, %periodic_unlink.exit.for.body_crit_edge ]
  %6 = ptrtoint ptr %pshadow.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pshadow.i, align 4
  %arrayidx.i = getelementptr %union.ehci_shadow, ptr %7, i32 %i.067
  %8 = ptrtoint ptr %periodic.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %periodic.i, align 4
  %arrayidx1.i = getelementptr i32, ptr %9, i32 %i.067
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %storemerge19.i = load i32, ptr %arrayidx.i, align 4
  %11 = inttoptr i32 %storemerge19.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge19.i)
  %tobool.not20.i = icmp eq i32 %storemerge19.i, 0
  %cmp.not21.i = icmp eq ptr %11, %qh
  %or.cond22.i = or i1 %tobool.not20.i, %cmp.not21.i
  br i1 %or.cond22.i, label %for.body.while.end.i_crit_edge, label %for.body.while.body.i_crit_edge

for.body.while.body.i_crit_edge:                  ; preds = %for.body
  br label %while.body.i

for.body.while.end.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.body.while.body.i_crit_edge
  %12 = phi ptr [ %16, %while.body.i.while.body.i_crit_edge ], [ %11, %for.body.while.body.i_crit_edge ]
  %storemerge.in23.i = phi ptr [ %qh_next.i.i, %while.body.i.while.body.i_crit_edge ], [ %arrayidx.i, %for.body.while.body.i_crit_edge ]
  %13 = ptrtoint ptr %storemerge.in23.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %storemerge.in23.i, align 4
  %qh_next.i.i = getelementptr inbounds %struct.ehci_qh, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %qh_next.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %storemerge.i = load i32, ptr %qh_next.i.i, align 4
  %16 = inttoptr i32 %storemerge.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge.i)
  %tobool.not.i = icmp eq i32 %storemerge.i, 0
  %cmp.not.i = icmp eq ptr %16, %qh
  %or.cond.i = or i1 %tobool.not.i, %cmp.not.i
  br i1 %or.cond.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %for.body.while.end.i_crit_edge
  %storemerge.lcssa18.i = phi i32 [ %storemerge19.i, %for.body.while.end.i_crit_edge ], [ %storemerge.i, %while.body.i.while.end.i_crit_edge ]
  %storemerge.in.lcssa.i = phi ptr [ %arrayidx.i, %for.body.while.end.i_crit_edge ], [ %qh_next.i.i, %while.body.i.while.end.i_crit_edge ]
  %hw_p.0.lcssa.i = phi ptr [ %arrayidx1.i, %for.body.while.end.i_crit_edge ], [ %12, %while.body.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge.lcssa18.i)
  %tobool2.not.i = icmp eq i32 %storemerge.lcssa18.i, 0
  br i1 %tobool2.not.i, label %while.end.i.periodic_unlink.exit_crit_edge, label %if.end.i

while.end.i.periodic_unlink.exit_crit_edge:       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %periodic_unlink.exit

if.end.i:                                         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = inttoptr i32 %storemerge.lcssa18.i to ptr
  %qh_next.i14.i = getelementptr inbounds %struct.ehci_qh, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %qh_next.i14.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %qh_next.i14.i, align 4
  %20 = ptrtoint ptr %storemerge.in.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %storemerge.in.lcssa.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %17, align 4
  %23 = ptrtoint ptr %hw_p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %hw_p.0.lcssa.i, align 4
  br label %periodic_unlink.exit

periodic_unlink.exit:                             ; preds = %if.end.i, %while.end.i.periodic_unlink.exit_crit_edge
  %add = add i32 %i.067, %spec.store.select
  %24 = ptrtoint ptr %periodic_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %periodic_size, align 4
  %cmp4 = icmp ult i32 %add, %25
  br i1 %cmp4, label %periodic_unlink.exit.for.body_crit_edge, label %periodic_unlink.exit.for.end_crit_edge

periodic_unlink.exit.for.end_crit_edge:           ; preds = %periodic_unlink.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

periodic_unlink.exit.for.body_crit_edge:          ; preds = %periodic_unlink.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %periodic_unlink.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %26 = ptrtoint ptr %period1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %period1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.not = icmp eq i16 %27, 0
  %usecs13 = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 18
  %28 = ptrtoint ptr %usecs13 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %usecs13, align 1
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv8 = zext i8 %29 to i16
  %c_usecs = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 20
  %30 = ptrtoint ptr %c_usecs to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %c_usecs, align 1
  %conv9 = zext i8 %31 to i16
  %add10 = add nuw nsw i16 %conv9, %conv8
  %div64 = udiv i16 %add10, %27
  %div.zext = zext i16 %div64 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv14 = zext i8 %29 to i32
  %mul = shl nuw nsw i32 %conv14, 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div.zext, %cond.true ], [ %mul, %cond.false ]
  %add.ptr.i = getelementptr i8, ptr %oxu, i32 -600
  %bandwidth_allocated = getelementptr i8, ptr %oxu, i32 -456
  %32 = ptrtoint ptr %bandwidth_allocated to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bandwidth_allocated, align 8
  %sub = sub i32 %33, %cond
  store i32 %sub, ptr %bandwidth_allocated, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qh_unlink_periodic.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qh_unlink_periodic, %if.then19)) #9
          to label %do.end [label %if.then19], !srcloc !357

if.then19:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 24
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %dev20 = getelementptr inbounds %struct.usb_device, ptr %35, i32 0, i32 15
  %36 = ptrtoint ptr %period1 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %period1, align 2
  %conv22 = zext i16 %37 to i32
  %hw_info2 = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 2
  %38 = ptrtoint ptr %hw_info2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hw_info2, align 4
  %40 = and i32 %39, -65536
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %42 = ptrtoint ptr %start to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %start, align 16
  %conv25 = zext i16 %43 to i32
  %usecs26 = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 18
  %44 = ptrtoint ptr %usecs26 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %usecs26, align 1
  %conv27 = zext i8 %45 to i32
  %c_usecs28 = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 20
  %46 = ptrtoint ptr %c_usecs28 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %c_usecs28, align 1
  %conv29 = zext i8 %47 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qh_unlink_periodic.__UNIQUE_ID_ddebug259, ptr noundef %dev20, ptr noundef nonnull @.str.78, i32 noundef %conv22, i32 noundef %41, ptr noundef %qh, i32 noundef %conv25, i32 noundef %conv27, i32 noundef %conv29) #9
  br label %do.end

do.end:                                           ; preds = %if.then19, %cond.end
  %qh_state = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 17
  %48 = ptrtoint ptr %qh_state to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 2, ptr %qh_state, align 8
  %qh_next = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 10
  %49 = ptrtoint ptr %qh_next to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %qh_next, align 8
  %kref.i = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 15
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !383
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #9
  %50 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #9, !srcloc !384
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.qh_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !385

if.end5.i.i.i.i.i.qh_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qh_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #9
  br label %qh_put.exit

if.then.i.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !386
  tail call fastcc void @qh_destroy(ptr noundef %kref.i) #9
  br label %qh_put.exit

qh_put.exit:                                      ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.qh_put.exit_crit_edge
  %periodic_sched = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 21
  %51 = ptrtoint ptr %periodic_sched to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %periodic_sched, align 4
  %dec = add i32 %52, -1
  store i32 %dec, ptr %periodic_sched, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool32.not = icmp eq i32 %dec, 0
  br i1 %tobool32.not, label %if.then33, label %qh_put.exit.if.end35_crit_edge

qh_put.exit.if.end35_crit_edge:                   ; preds = %qh_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then33:                                        ; preds = %qh_put.exit
  %regs.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 9
  %53 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i, align 4
  %status1.i = getelementptr inbounds %struct.ehci_regs, ptr %54, i32 0, i32 1
  %call.i.i = tail call i64 @ktime_get() #9
  %add.i.i.i = add i64 %call.i.i, 1125000
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status1.i) #9, !srcloc !360
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %and1.i.i = and i32 %56, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp2.i.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %cmp2.i.not.i, label %if.then33.lor.lhs.false.i.i_crit_edge, label %if.then33.handshake.exit.i_crit_edge

if.then33.handshake.exit.i_crit_edge:             ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %handshake.exit.i

if.then33.lor.lhs.false.i.i_crit_edge:            ; preds = %if.then33
  br label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %cond.false.i.i.lor.lhs.false.i.i_crit_edge, %if.then33.lor.lhs.false.i.i_crit_edge
  %57 = phi i32 [ %61, %cond.false.i.i.lor.lhs.false.i.i_crit_edge ], [ %55, %if.then33.lor.lhs.false.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %cmp5.i.i = icmp eq i32 %57, -1
  br i1 %cmp5.i.i, label %lor.lhs.false.i.i.if.then.i_crit_edge, label %land.lhs.true.i.i

lor.lhs.false.i.i.if.then.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call7.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call7.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %if.then11.i.i, label %cond.false.i.i

if.then11.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status1.i) #9, !srcloc !360
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !439
  %.pre = and i32 %59, 16384
  br label %handshake.exit.i

cond.false.i.i:                                   ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748) #9
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status1.i) #9, !srcloc !360
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %and.i.i = and i32 %62, 16384
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %cond.false.i.i.lor.lhs.false.i.i_crit_edge, label %cond.false.i.i.handshake.exit.i_crit_edge

cond.false.i.i.handshake.exit.i_crit_edge:        ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %handshake.exit.i

cond.false.i.i.lor.lhs.false.i.i_crit_edge:       ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.i

handshake.exit.i:                                 ; preds = %cond.false.i.i.handshake.exit.i_crit_edge, %if.then11.i.i, %if.then33.handshake.exit.i_crit_edge
  %and27.i.i.pre-phi = phi i32 [ %.pre, %if.then11.i.i ], [ %and1.i.i, %if.then33.handshake.exit.i_crit_edge ], [ 1, %cond.false.i.i.handshake.exit.i_crit_edge ]
  %result.0.i.i = phi i32 [ %59, %if.then11.i.i ], [ %56, %if.then33.handshake.exit.i_crit_edge ], [ %62, %cond.false.i.i.handshake.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i.pre-phi)
  %cmp28.i.not.i = icmp ne i32 %and27.i.i.pre-phi, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %result.0.i.i)
  %cmp30.i.i = icmp ne i32 %result.0.i.i, -1
  %cmp.not.i61 = and i1 %cmp30.i.i, %cmp28.i.not.i
  br i1 %cmp.not.i61, label %if.end.i62, label %handshake.exit.i.if.then.i_crit_edge

handshake.exit.i.if.then.i_crit_edge:             ; preds = %handshake.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %handshake.exit.i.if.then.i_crit_edge, %lor.lhs.false.i.i.if.then.i_crit_edge
  %state.i = getelementptr i8, ptr %oxu, i32 -12
  %63 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %state.i, align 4
  tail call void @usb_hc_died(ptr noundef %add.ptr.i) #9
  br label %if.end35

if.end.i62:                                       ; preds = %handshake.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i, align 4
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  %67 = and i32 %66, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !464
  tail call void @arm_heavy_mb() #9
  %68 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #9, !srcloc !359
  %next_uframe.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 20
  %70 = ptrtoint ptr %next_uframe.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %next_uframe.i, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end.i62, %if.then.i, %qh_put.exit.if.end35_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_intr_schedule(ptr nocapture noundef readonly %oxu, i32 noundef %frame, i32 noundef %uframe, ptr nocapture noundef readonly %qh, ptr nocapture noundef writeonly %c_maskp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %c_usecs = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 20
  %0 = ptrtoint ptr %c_usecs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %c_usecs, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp ne i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %uframe)
  %cmp = icmp ugt i32 %uframe, 5
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end:                                           ; preds = %entry
  %period = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 22
  %2 = ptrtoint ptr %period to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %period, align 2
  %conv3 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %uframe)
  %cmp.i = icmp ugt i32 %uframe, 7
  br i1 %cmp.i, label %if.end.done_crit_edge, label %if.end.i

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end.i:                                         ; preds = %if.end
  %usecs = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 18
  %4 = ptrtoint ptr %usecs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %usecs, align 1
  %conv4 = zext i8 %5 to i32
  %sub.i = sub nsw i32 100, %conv4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp1.i = icmp eq i16 %3, 0
  br i1 %cmp1.i, label %do.body.preheader.i, label %do.body11.preheader.i, !prof !428

do.body11.preheader.i:                            ; preds = %if.end.i
  %pshadow.i.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 19
  %shl.i.i = shl nuw nsw i32 1, %uframe
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i) #9
  %shl7.i.i = shl nuw nsw i32 256, %uframe
  %7 = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i) #9
  %add.ptr.i.i.i = getelementptr i8, ptr %oxu, i32 -600
  %periodic_size20.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 15
  br label %do.body11.i

do.body.preheader.i:                              ; preds = %if.end.i
  %periodic_size.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 15
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %do.body.preheader.i
  %frame.addr.0.i = phi i32 [ %add.i, %do.cond.i.do.body.i_crit_edge ], [ %frame, %do.body.preheader.i ]
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %uframe.addr.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 7
  br i1 %exitcond.not.i, label %do.cond.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %do.body.i
  %uframe.addr.041.i = phi i32 [ 0, %do.body.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %call.i = tail call fastcc zeroext i16 @periodic_usecs(ptr noundef %oxu, i32 noundef %frame.addr.0.i, i32 noundef %uframe.addr.041.i) #9
  %conv.i = zext i16 %call.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv.i)
  %cmp5.i = icmp ult i32 %sub.i, %conv.i
  br i1 %cmp5.i, label %for.body.i.done_crit_edge, label %for.cond.i

for.body.i.done_crit_edge:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

do.cond.i:                                        ; preds = %for.cond.i
  %add.i = add i32 %frame.addr.0.i, 1
  %8 = ptrtoint ptr %periodic_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %periodic_size.i, align 4
  %cmp9.i = icmp ult i32 %add.i, %9
  br i1 %cmp9.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.if.end7_crit_edge

do.cond.i.if.end7_crit_edge:                      ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.body11.i:                                      ; preds = %do.cond18.i.do.body11.i_crit_edge, %do.body11.preheader.i
  %frame.addr.1.i = phi i32 [ %add19.i, %do.cond18.i.do.body11.i_crit_edge ], [ %frame, %do.body11.preheader.i ]
  %10 = ptrtoint ptr %pshadow.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pshadow.i.i, align 4
  %arrayidx1.i.i = getelementptr %union.ehci_shadow, ptr %11, i32 %frame.addr.1.i
  %12 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx1.i.i, align 4
  %tobool.not35.i.i = icmp eq ptr %13, null
  br i1 %tobool.not35.i.i, label %do.body11.i.periodic_usecs.exit.i_crit_edge, label %do.body11.i.while.body.i.i_crit_edge

do.body11.i.while.body.i.i_crit_edge:             ; preds = %do.body11.i
  br label %while.body.i.i

do.body11.i.periodic_usecs.exit.i_crit_edge:      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %periodic_usecs.exit.i

while.body.i.i:                                   ; preds = %if.end13.i.i.while.body.i.i_crit_edge, %do.body11.i.while.body.i.i_crit_edge
  %14 = phi ptr [ %22, %if.end13.i.i.while.body.i.i_crit_edge ], [ %13, %do.body11.i.while.body.i.i_crit_edge ]
  %usecs.036.i.i = phi i32 [ %usecs.2.i.i, %if.end13.i.i.while.body.i.i_crit_edge ], [ 0, %do.body11.i.while.body.i.i_crit_edge ]
  %hw_info2.i.i = getelementptr inbounds %struct.ehci_qh, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %hw_info2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hw_info2.i.i, align 8
  %and2.i.i = and i32 %16, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %while.body.i.i.if.end.i.i_crit_edge, label %if.then.i.i

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %usecs4.i.i = getelementptr inbounds %struct.ehci_qh, ptr %14, i32 0, i32 18
  %17 = ptrtoint ptr %usecs4.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %usecs4.i.i, align 1
  %conv.i.i = zext i8 %18 to i32
  %add.i.i = add i32 %usecs.036.i.i, %conv.i.i
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %while.body.i.i.if.end.i.i_crit_edge
  %usecs.1.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %usecs.036.i.i, %while.body.i.i.if.end.i.i_crit_edge ]
  %and8.i.i = and i32 %16, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end.i.i.if.end13.i.i_crit_edge, label %if.then10.i.i

if.end.i.i.if.end13.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %c_usecs.i.i = getelementptr inbounds %struct.ehci_qh, ptr %14, i32 0, i32 20
  %19 = ptrtoint ptr %c_usecs.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %c_usecs.i.i, align 1
  %conv11.i.i = zext i8 %20 to i32
  %add12.i.i = add i32 %usecs.1.i.i, %conv11.i.i
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then10.i.i, %if.end.i.i.if.end13.i.i_crit_edge
  %usecs.2.i.i = phi i32 [ %add12.i.i, %if.then10.i.i ], [ %usecs.1.i.i, %if.end.i.i.if.end13.i.i_crit_edge ]
  %qh_next.i.i = getelementptr inbounds %struct.ehci_qh, ptr %14, i32 0, i32 10
  %21 = ptrtoint ptr %qh_next.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %qh_next.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %while.end.i.i, label %if.end13.i.i.while.body.i.i_crit_edge

if.end13.i.i.while.body.i.i_crit_edge:            ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %usecs.2.i.i)
  %cmp.i.i = icmp ugt i32 %usecs.2.i.i, 100
  br i1 %cmp.i.i, label %do.end.i.i, label %while.end.i.i.periodic_usecs.exit.i_crit_edge

while.end.i.i.periodic_usecs.exit.i_crit_edge:    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %periodic_usecs.exit.i

do.end.i.i:                                       ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i.i.i, align 8
  %mul.i.i = shl i32 %frame.addr.1.i, 3
  %add16.i.i = add i32 %mul.i.i, %uframe
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.81, i32 noundef %add16.i.i, i32 noundef %usecs.2.i.i) #12
  br label %periodic_usecs.exit.i

periodic_usecs.exit.i:                            ; preds = %do.end.i.i, %while.end.i.i.periodic_usecs.exit.i_crit_edge, %do.body11.i.periodic_usecs.exit.i_crit_edge
  %usecs.0.lcssa39.i.i = phi i32 [ %usecs.2.i.i, %do.end.i.i ], [ %usecs.2.i.i, %while.end.i.i.periodic_usecs.exit.i_crit_edge ], [ 0, %do.body11.i.periodic_usecs.exit.i_crit_edge ]
  %conv13.i = and i32 %usecs.0.lcssa39.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv13.i)
  %cmp14.i = icmp ult i32 %sub.i, %conv13.i
  br i1 %cmp14.i, label %periodic_usecs.exit.i.done_crit_edge, label %do.cond18.i

periodic_usecs.exit.i.done_crit_edge:             ; preds = %periodic_usecs.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

do.cond18.i:                                      ; preds = %periodic_usecs.exit.i
  %add19.i = add i32 %frame.addr.1.i, %conv3
  %25 = ptrtoint ptr %periodic_size20.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %periodic_size20.i, align 4
  %cmp21.i = icmp ult i32 %add19.i, %26
  br i1 %cmp21.i, label %do.cond18.i.do.body11.i_crit_edge, label %do.cond18.i.if.end7_crit_edge

do.cond18.i.if.end7_crit_edge:                    ; preds = %do.cond18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

do.cond18.i.do.body11.i_crit_edge:                ; preds = %do.cond18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body11.i

if.end7:                                          ; preds = %do.cond18.i.if.end7_crit_edge, %do.cond.i.if.end7_crit_edge
  %27 = ptrtoint ptr %c_usecs to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %c_usecs, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool9.not = icmp eq i8 %28, 0
  br i1 %tobool9.not, label %if.then10, label %if.end7.done_crit_edge

if.end7.done_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %c_maskp to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %c_maskp, align 4
  br label %done

done:                                             ; preds = %if.then10, %if.end7.done_crit_edge, %periodic_usecs.exit.i.done_crit_edge, %for.body.i.done_crit_edge, %if.end.done_crit_edge, %entry.done_crit_edge
  %retval1.0 = phi i32 [ -28, %if.end7.done_crit_edge ], [ 0, %if.then10 ], [ -28, %entry.done_crit_edge ], [ -28, %if.end.done_crit_edge ], [ -28, %for.body.i.done_crit_edge ], [ -28, %periodic_usecs.exit.i.done_crit_edge ]
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qh_link_periodic(ptr noundef %oxu, ptr noundef %qh) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %period1 = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 22
  %0 = ptrtoint ptr %period1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %period1, align 2
  %conv = zext i16 %1 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qh_link_periodic.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qh_link_periodic, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !357

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 24
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %hw_info2 = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 2
  %4 = ptrtoint ptr %hw_info2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_info2, align 4
  %6 = and i32 %5, -65536
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %start = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 23
  %8 = ptrtoint ptr %start to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %start, align 16
  %conv6 = zext i16 %9 to i32
  %usecs = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 18
  %10 = ptrtoint ptr %usecs to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %usecs, align 1
  %conv7 = zext i8 %11 to i32
  %c_usecs = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 20
  %12 = ptrtoint ptr %c_usecs to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %c_usecs, align 1
  %conv8 = zext i8 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qh_link_periodic.__UNIQUE_ID_ddebug258, ptr noundef %dev4, ptr noundef nonnull @.str.84, i32 noundef %conv, i32 noundef %7, ptr noundef %qh, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  %spec.store.select = select i1 %cmp, i32 1, i32 %conv
  %start12 = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 23
  %14 = ptrtoint ptr %start12 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %start12, align 16
  %conv13 = zext i16 %15 to i32
  %periodic_size = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 15
  %16 = ptrtoint ptr %periodic_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %periodic_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv13)
  %cmp14157 = icmp ugt i32 %17, %conv13
  br i1 %cmp14157, label %for.body.lr.ph, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %pshadow = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 19
  %periodic = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 16
  %qh_next42 = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 10
  %qh_dma = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 9
  %cmp26.not140163 = icmp eq ptr %qh, null
  br label %for.body

for.body:                                         ; preds = %if.end51.for.body_crit_edge, %for.body.lr.ph
  %i.0158 = phi i32 [ %conv13, %for.body.lr.ph ], [ %add, %if.end51.for.body_crit_edge ]
  %18 = ptrtoint ptr %pshadow to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pshadow, align 4
  %arrayidx = getelementptr %union.ehci_shadow, ptr %19, i32 %i.0158
  %20 = ptrtoint ptr %periodic to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %periodic, align 4
  %arrayidx16 = getelementptr i32, ptr %21, i32 %i.0158
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %here.sroa.0.0129 = load ptr, ptr %arrayidx, align 4
  %tobool17.not130 = icmp eq ptr %here.sroa.0.0129, null
  br i1 %tobool17.not130, label %for.body.while.end.thread_crit_edge, label %while.body.preheader

for.body.while.end.thread_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.thread

while.body.preheader:                             ; preds = %for.body
  %23 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx16, align 4
  %and18206 = and i32 %24, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %and18206)
  %cmp19207 = icmp eq i32 %and18206, 33554432
  br i1 %cmp19207, label %while.body.preheader.while.end_crit_edge, label %while.body.preheader.if.end22_crit_edge

while.body.preheader.if.end22_crit_edge:          ; preds = %while.body.preheader
  br label %if.end22

while.body.preheader.while.end_crit_edge:         ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end22
  %25 = ptrtoint ptr %here.sroa.0.0133208 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %here.sroa.0.0133208, align 4
  %and18 = and i32 %26, 100663296
  %cmp19 = icmp eq i32 %and18, 33554432
  br i1 %cmp19, label %while.body.while.end_crit_edge, label %while.body.if.end22_crit_edge

while.body.if.end22_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end22:                                         ; preds = %while.body.if.end22_crit_edge, %while.body.preheader.if.end22_crit_edge
  %here.sroa.0.0133208 = phi ptr [ %here.sroa.0.0, %while.body.if.end22_crit_edge ], [ %here.sroa.0.0129, %while.body.preheader.if.end22_crit_edge ]
  %qh_next.i = getelementptr inbounds %struct.ehci_qh, ptr %here.sroa.0.0133208, i32 0, i32 10
  %27 = ptrtoint ptr %qh_next.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %here.sroa.0.0 = load ptr, ptr %qh_next.i, align 4
  %tobool17.not = icmp eq ptr %here.sroa.0.0, null
  br i1 %tobool17.not, label %if.end22.while.end.thread_crit_edge, label %while.body

if.end22.while.end.thread_crit_edge:              ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.thread

while.end.thread:                                 ; preds = %if.end22.while.end.thread_crit_edge, %for.body.while.end.thread_crit_edge
  %prev.0.lcssa.ph = phi ptr [ %arrayidx, %for.body.while.end.thread_crit_edge ], [ %qh_next.i, %if.end22.while.end.thread_crit_edge ]
  %hw_p.0.lcssa.ph = phi ptr [ %arrayidx16, %for.body.while.end.thread_crit_edge ], [ %here.sroa.0.0133208, %if.end22.while.end.thread_crit_edge ]
  br i1 %cmp26.not140163, label %while.end.thread.if.end51_crit_edge, label %if.then41.thread

while.end.thread.if.end51_crit_edge:              ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then41.thread:                                 ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %qh_next42 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %qh_next42, align 8
  br label %do.body47

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.body.preheader.while.end_crit_edge
  %here.sroa.0.0133.lcssa = phi ptr [ %here.sroa.0.0129, %while.body.preheader.while.end_crit_edge ], [ %here.sroa.0.0, %while.body.while.end_crit_edge ]
  %hw_p.0132.lcssa = phi ptr [ %arrayidx16, %while.body.preheader.while.end_crit_edge ], [ %here.sroa.0.0133208, %while.body.while.end_crit_edge ]
  %prev.0131.lcssa = phi ptr [ %arrayidx, %while.body.preheader.while.end_crit_edge ], [ %qh_next.i, %while.body.while.end_crit_edge ]
  %cmp26.not140 = icmp eq ptr %here.sroa.0.0133.lcssa, %qh
  br i1 %cmp26.not140, label %while.end.while.end38_crit_edge, label %while.body28.lr.ph

while.end.while.end38_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end38

while.body28.lr.ph:                               ; preds = %while.end
  %29 = ptrtoint ptr %period1 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %period1, align 2
  %period31211 = getelementptr inbounds %struct.ehci_qh, ptr %here.sroa.0.0133.lcssa, i32 0, i32 22
  %31 = ptrtoint ptr %period31211 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %period31211, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %32)
  %cmp33212 = icmp ugt i16 %30, %32
  br i1 %cmp33212, label %while.body28.lr.ph.if.then41.thread180_crit_edge, label %while.body28.lr.ph.if.end36_crit_edge

while.body28.lr.ph.if.end36_crit_edge:            ; preds = %while.body28.lr.ph
  br label %if.end36

while.body28.lr.ph.if.then41.thread180_crit_edge: ; preds = %while.body28.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41.thread180

while.body28:                                     ; preds = %if.end36
  %period31 = getelementptr inbounds %struct.ehci_qh, ptr %here.sroa.0.0.copyload82, i32 0, i32 22
  %33 = ptrtoint ptr %period31 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %period31, align 2
  %cmp33 = icmp ugt i16 %30, %34
  br i1 %cmp33, label %while.body28.if.then41.thread180_crit_edge, label %while.body28.if.end36_crit_edge

while.body28.if.end36_crit_edge:                  ; preds = %while.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

while.body28.if.then41.thread180_crit_edge:       ; preds = %while.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41.thread180

if.then41.thread180:                              ; preds = %while.body28.if.then41.thread180_crit_edge, %while.body28.lr.ph.if.then41.thread180_crit_edge
  %here.sroa.0.1144.lcssa = phi ptr [ %here.sroa.0.0133.lcssa, %while.body28.lr.ph.if.then41.thread180_crit_edge ], [ %here.sroa.0.0.copyload82, %while.body28.if.then41.thread180_crit_edge ]
  %hw_p.1143.lcssa = phi ptr [ %hw_p.0132.lcssa, %while.body28.lr.ph.if.then41.thread180_crit_edge ], [ %here.sroa.0.1144213, %while.body28.if.then41.thread180_crit_edge ]
  %prev.1142.lcssa = phi ptr [ %prev.0131.lcssa, %while.body28.lr.ph.if.then41.thread180_crit_edge ], [ %qh_next, %while.body28.if.then41.thread180_crit_edge ]
  %35 = ptrtoint ptr %qh_next42 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %here.sroa.0.1144.lcssa, ptr %qh_next42, align 8
  br label %if.then44

if.end36:                                         ; preds = %while.body28.if.end36_crit_edge, %while.body28.lr.ph.if.end36_crit_edge
  %here.sroa.0.1144213 = phi ptr [ %here.sroa.0.0.copyload82, %while.body28.if.end36_crit_edge ], [ %here.sroa.0.0133.lcssa, %while.body28.lr.ph.if.end36_crit_edge ]
  %qh_next = getelementptr inbounds %struct.ehci_qh, ptr %here.sroa.0.1144213, i32 0, i32 10
  %36 = ptrtoint ptr %qh_next to i32
  call void @__asan_load4_noabort(i32 %36)
  %here.sroa.0.0.copyload82 = load ptr, ptr %qh_next, align 4
  %tobool25.not = icmp eq ptr %here.sroa.0.0.copyload82, null
  %cmp26.not = icmp eq ptr %here.sroa.0.0.copyload82, %qh
  %or.cond = or i1 %tobool25.not, %cmp26.not
  br i1 %or.cond, label %if.end36.while.end38_crit_edge, label %while.body28

if.end36.while.end38_crit_edge:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end38

while.end38:                                      ; preds = %if.end36.while.end38_crit_edge, %while.end.while.end38_crit_edge
  %prev.1.lcssa = phi ptr [ %prev.0131.lcssa, %while.end.while.end38_crit_edge ], [ %qh_next, %if.end36.while.end38_crit_edge ]
  %hw_p.1.lcssa = phi ptr [ %hw_p.0132.lcssa, %while.end.while.end38_crit_edge ], [ %here.sroa.0.1144213, %if.end36.while.end38_crit_edge ]
  %here.sroa.0.1.lcssa = phi ptr [ %here.sroa.0.0133.lcssa, %while.end.while.end38_crit_edge ], [ %here.sroa.0.0.copyload82, %if.end36.while.end38_crit_edge ]
  %tobool25.not.lcssa = phi i1 [ false, %while.end.while.end38_crit_edge ], [ %tobool25.not, %if.end36.while.end38_crit_edge ]
  %cmp26.not.lcssa = phi i1 [ %cmp26.not140, %while.end.while.end38_crit_edge ], [ %cmp26.not, %if.end36.while.end38_crit_edge ]
  br i1 %cmp26.not.lcssa, label %while.end38.if.end51_crit_edge, label %if.then41

while.end38.if.end51_crit_edge:                   ; preds = %while.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then41:                                        ; preds = %while.end38
  %37 = ptrtoint ptr %qh_next42 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %here.sroa.0.1.lcssa, ptr %qh_next42, align 8
  br i1 %tobool25.not.lcssa, label %if.then41.do.body47_crit_edge, label %if.then41.if.then44_crit_edge

if.then41.if.then44_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44

if.then41.do.body47_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body47

if.then44:                                        ; preds = %if.then41.if.then44_crit_edge, %if.then41.thread180
  %prev.1.lcssa170186 = phi ptr [ %prev.1142.lcssa, %if.then41.thread180 ], [ %prev.1.lcssa, %if.then41.if.then44_crit_edge ]
  %hw_p.1.lcssa171185 = phi ptr [ %hw_p.1143.lcssa, %if.then41.thread180 ], [ %hw_p.1.lcssa, %if.then41.if.then44_crit_edge ]
  %38 = ptrtoint ptr %hw_p.1.lcssa171185 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hw_p.1.lcssa171185, align 4
  %40 = ptrtoint ptr %qh to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %qh, align 32
  br label %do.body47

do.body47:                                        ; preds = %if.then44, %if.then41.do.body47_crit_edge, %if.then41.thread
  %prev.1.lcssa170179 = phi ptr [ %prev.0.lcssa.ph, %if.then41.thread ], [ %prev.1.lcssa, %if.then41.do.body47_crit_edge ], [ %prev.1.lcssa170186, %if.then44 ]
  %hw_p.1.lcssa171178 = phi ptr [ %hw_p.0.lcssa.ph, %if.then41.thread ], [ %hw_p.1.lcssa, %if.then41.do.body47_crit_edge ], [ %hw_p.1.lcssa171185, %if.then44 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !465
  tail call void @arm_heavy_mb() #9
  %41 = ptrtoint ptr %prev.1.lcssa170179 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %qh, ptr %prev.1.lcssa170179, align 4
  %42 = ptrtoint ptr %qh_dma to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %qh_dma, align 4
  %and50 = and i32 %43, -32
  %44 = or i32 %and50, 2
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %46 = ptrtoint ptr %hw_p.1.lcssa171178 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %hw_p.1.lcssa171178, align 4
  br label %if.end51

if.end51:                                         ; preds = %do.body47, %while.end38.if.end51_crit_edge, %while.end.thread.if.end51_crit_edge
  %add = add i32 %i.0158, %spec.store.select
  %47 = ptrtoint ptr %periodic_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %periodic_size, align 4
  %cmp14 = icmp ult i32 %add, %48
  br i1 %cmp14, label %if.end51.for.body_crit_edge, label %if.end51.for.end_crit_edge

if.end51.for.end_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end51.for.body_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end51.for.end_crit_edge, %do.end.for.end_crit_edge
  %qh_state = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 17
  %49 = ptrtoint ptr %qh_state to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %qh_state, align 8
  %kref.i = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 15
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #9
  %50 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #9, !srcloc !442
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %for.end.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !428

for.end.if.end15.sink.split.i.i.i.i.i_crit_edge:  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %for.end
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %51 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %.not.i.i.i.i.i = icmp sgt i32 %51, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.qh_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !385

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.qh_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qh_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %for.end.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %for.end.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %qh_get.exit

qh_get.exit:                                      ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.qh_get.exit_crit_edge
  %52 = ptrtoint ptr %period1 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %period1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool55.not = icmp eq i16 %53, 0
  %usecs63 = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 18
  %54 = ptrtoint ptr %usecs63 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %usecs63, align 1
  br i1 %tobool55.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %qh_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv57 = zext i8 %55 to i16
  %c_usecs58 = getelementptr inbounds %struct.ehci_qh, ptr %qh, i32 0, i32 20
  %56 = ptrtoint ptr %c_usecs58 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %c_usecs58, align 1
  %conv59 = zext i8 %57 to i16
  %add60 = add nuw nsw i16 %conv59, %conv57
  %div128 = udiv i16 %add60, %53
  %div.zext = zext i16 %div128 to i32
  br label %cond.end

cond.false:                                       ; preds = %qh_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv64 = zext i8 %55 to i32
  %mul = shl nuw nsw i32 %conv64, 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div.zext, %cond.true ], [ %mul, %cond.false ]
  %add.ptr.i = getelementptr i8, ptr %oxu, i32 -600
  %bandwidth_allocated = getelementptr i8, ptr %oxu, i32 -456
  %58 = ptrtoint ptr %bandwidth_allocated to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bandwidth_allocated, align 8
  %add66 = add i32 %59, %cond
  store i32 %add66, ptr %bandwidth_allocated, align 8
  %periodic_sched = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 21
  %60 = ptrtoint ptr %periodic_sched to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %periodic_sched, align 4
  %inc = add i32 %61, 1
  store i32 %inc, ptr %periodic_sched, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool67.not = icmp eq i32 %61, 0
  br i1 %tobool67.not, label %if.then68, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then68:                                        ; preds = %cond.end
  %regs.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 9
  %62 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i, align 4
  %status1.i = getelementptr inbounds %struct.ehci_regs, ptr %63, i32 0, i32 1
  %call.i.i = tail call i64 @ktime_get() #9
  %add.i.i.i = add i64 %call.i.i, 1125000
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status1.i) #9, !srcloc !360
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %and1.i.i = and i32 %65, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp2.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %cmp2.i.i, label %if.then68.handshake.exit.i_crit_edge, label %if.then68.lor.lhs.false.i.i_crit_edge

if.then68.lor.lhs.false.i.i_crit_edge:            ; preds = %if.then68
  br label %lor.lhs.false.i.i

if.then68.handshake.exit.i_crit_edge:             ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #11
  br label %handshake.exit.i

lor.lhs.false.i.i:                                ; preds = %cond.false.i.i.lor.lhs.false.i.i_crit_edge, %if.then68.lor.lhs.false.i.i_crit_edge
  %66 = phi i32 [ %71, %cond.false.i.i.lor.lhs.false.i.i_crit_edge ], [ %64, %if.then68.lor.lhs.false.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %cmp5.i.i = icmp eq i32 %66, -1
  br i1 %cmp5.i.i, label %.thread188, label %land.lhs.true.i.i

.thread188:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %state.i127 = getelementptr i8, ptr %oxu, i32 -12
  %67 = ptrtoint ptr %state.i127 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %state.i127, align 4
  tail call void @usb_hc_died(ptr noundef %add.ptr.i) #9
  br label %89

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call7.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call7.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %if.then11.i.i, label %cond.false.i.i

if.then11.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status1.i) #9, !srcloc !360
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !439
  %.pre = and i32 %69, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %phi.cmp = icmp eq i32 %.pre, 0
  br label %handshake.exit.i

cond.false.i.i:                                   ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748) #9
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status1.i) #9, !srcloc !360
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %and.i.i = and i32 %72, 16384
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %cond.false.i.i.handshake.exit.i_crit_edge, label %cond.false.i.i.lor.lhs.false.i.i_crit_edge

cond.false.i.i.lor.lhs.false.i.i_crit_edge:       ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.i

cond.false.i.i.handshake.exit.i_crit_edge:        ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %handshake.exit.i

handshake.exit.i:                                 ; preds = %cond.false.i.i.handshake.exit.i_crit_edge, %if.then11.i.i, %if.then68.handshake.exit.i_crit_edge
  %and27.i.i.pre-phi = phi i1 [ %phi.cmp, %if.then11.i.i ], [ true, %if.then68.handshake.exit.i_crit_edge ], [ true, %cond.false.i.i.handshake.exit.i_crit_edge ]
  %result.0.i.i = phi i32 [ %69, %if.then11.i.i ], [ %65, %if.then68.handshake.exit.i_crit_edge ], [ %72, %cond.false.i.i.handshake.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %result.0.i.i)
  %cmp30.i.i = icmp eq i32 %result.0.i.i, -1
  %73 = or i1 %cmp30.i.i, %and27.i.i.pre-phi
  %not.cmp30.i.i = xor i1 %cmp30.i.i, true
  %cmp.not.i = select i1 %not.cmp30.i.i, i1 %73, i1 false
  br i1 %cmp.not.i, label %enable_periodic.exit.thread, label %enable_periodic.exit

enable_periodic.exit.thread:                      ; preds = %handshake.exit.i
  %74 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i, align 4
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  %77 = or i32 %76, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !467
  tail call void @arm_heavy_mb() #9
  %78 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %77) #9, !srcloc !359
  %state10.i = getelementptr i8, ptr %oxu, i32 -12
  %80 = ptrtoint ptr %state10.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %state10.i, align 4
  %81 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i, align 4
  %frame_index.i = getelementptr inbounds %struct.ehci_regs, ptr %82, i32 0, i32 3
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %frame_index.i) #9, !srcloc !360
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !468
  %85 = ptrtoint ptr %periodic_size to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %periodic_size, align 4
  %shl.i = shl i32 %86, 3
  %rem.i = urem i32 %84, %shl.i
  %next_uframe.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 20
  %87 = ptrtoint ptr %next_uframe.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %rem.i, ptr %next_uframe.i, align 4
  br i1 %cmp30.i.i, label %enable_periodic.exit.thread._crit_edge, label %enable_periodic.exit.thread.cleanup_crit_edge

enable_periodic.exit.thread.cleanup_crit_edge:    ; preds = %enable_periodic.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

enable_periodic.exit.thread._crit_edge:           ; preds = %enable_periodic.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %89

enable_periodic.exit:                             ; preds = %handshake.exit.i
  %state.i = getelementptr i8, ptr %oxu, i32 -12
  %88 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %state.i, align 4
  tail call void @usb_hc_died(ptr noundef %add.ptr.i) #9
  %.mux = select i1 %73, i32 0, i32 -110
  br i1 %cmp30.i.i, label %enable_periodic.exit._crit_edge, label %enable_periodic.exit.cleanup_crit_edge

enable_periodic.exit.cleanup_crit_edge:           ; preds = %enable_periodic.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

enable_periodic.exit._crit_edge:                  ; preds = %enable_periodic.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %89

89:                                               ; preds = %enable_periodic.exit._crit_edge, %enable_periodic.exit.thread._crit_edge, %.thread188
  br label %cleanup

cleanup:                                          ; preds = %89, %enable_periodic.exit.cleanup_crit_edge, %enable_periodic.exit.thread.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end.cleanup_crit_edge ], [ -19, %89 ], [ 0, %enable_periodic.exit.thread.cleanup_crit_edge ], [ %.mux, %enable_periodic.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @periodic_usecs(ptr nocapture noundef readonly %oxu, i32 noundef %frame, i32 noundef %uframe) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pshadow = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 19
  %0 = ptrtoint ptr %pshadow to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pshadow, align 4
  %arrayidx1 = getelementptr %union.ehci_shadow, ptr %1, i32 %frame
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %tobool.not35 = icmp eq ptr %3, null
  br i1 %tobool.not35, label %entry.if.end17_crit_edge, label %while.body.lr.ph

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

while.body.lr.ph:                                 ; preds = %entry
  %shl = shl nuw i32 1, %uframe
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %add6 = add i32 %uframe, 8
  %shl7 = shl nuw i32 1, %add6
  %5 = tail call i32 @llvm.bswap.i32(i32 %shl7)
  br label %while.body

while.body:                                       ; preds = %if.end13.while.body_crit_edge, %while.body.lr.ph
  %6 = phi ptr [ %3, %while.body.lr.ph ], [ %14, %if.end13.while.body_crit_edge ]
  %usecs.036 = phi i32 [ 0, %while.body.lr.ph ], [ %usecs.2, %if.end13.while.body_crit_edge ]
  %hw_info2 = getelementptr inbounds %struct.ehci_qh, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %hw_info2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_info2, align 8
  %and2 = and i32 %8, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %usecs4 = getelementptr inbounds %struct.ehci_qh, ptr %6, i32 0, i32 18
  %9 = ptrtoint ptr %usecs4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %usecs4, align 1
  %conv = zext i8 %10 to i32
  %add = add i32 %usecs.036, %conv
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %usecs.1 = phi i32 [ %add, %if.then ], [ %usecs.036, %while.body.if.end_crit_edge ]
  %and8 = and i32 %8, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.if.end13_crit_edge, label %if.then10

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %c_usecs = getelementptr inbounds %struct.ehci_qh, ptr %6, i32 0, i32 20
  %11 = ptrtoint ptr %c_usecs to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %c_usecs, align 1
  %conv11 = zext i8 %12 to i32
  %add12 = add i32 %usecs.1, %conv11
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end.if.end13_crit_edge
  %usecs.2 = phi i32 [ %add12, %if.then10 ], [ %usecs.1, %if.end.if.end13_crit_edge ]
  %qh_next = getelementptr inbounds %struct.ehci_qh, ptr %6, i32 0, i32 10
  %13 = ptrtoint ptr %qh_next to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %qh_next, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %while.end, label %if.end13.while.body_crit_edge

if.end13.while.body_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %usecs.2)
  %cmp = icmp ugt i32 %usecs.2, 100
  br i1 %cmp, label %do.end, label %while.end.if.end17_crit_edge

while.end.if.end17_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %oxu, i32 -600
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 8
  %mul = shl i32 %frame, 3
  %add16 = add i32 %mul, %uframe
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.81, i32 noundef %add16, i32 noundef %usecs.2) #12
  br label %if.end17

if.end17:                                         ; preds = %do.end, %while.end.if.end17_crit_edge, %entry.if.end17_crit_edge
  %usecs.0.lcssa39 = phi i32 [ %usecs.2, %do.end ], [ %usecs.2, %while.end.if.end17_crit_edge ], [ 0, %entry.if.end17_crit_edge ]
  %conv18 = trunc i32 %usecs.0.lcssa39 to i16
  ret i16 %conv18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @oxu_hcd_init(ptr noundef %hcd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %lock = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.88, ptr noundef nonnull @oxu_hcd_init.__key, i16 noundef signext 3) #9
  %watchdog = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 8, i32 3, i32 2
  tail call void @init_timer_key(ptr noundef %watchdog, ptr noundef nonnull @oxu_watchdog, i32 noundef 0, ptr noundef nonnull @.str.90, ptr noundef nonnull @oxu_hcd_init.__key.89) #9
  %periodic_size = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 5, i32 4, i32 1, i32 1
  %0 = ptrtoint ptr %periodic_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1024, ptr %periodic_size, align 4
  %call6 = tail call fastcc i32 @ehci_mem_init(ptr noundef %hcd_priv.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %caps = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 18
  %1 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %caps, align 4
  %hcc_params7 = getelementptr inbounds %struct.ehci_caps, ptr %2, i32 0, i32 2
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %hcc_params7) #9, !srcloc !360
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !469
  %and = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %shr = lshr i32 %4, 4
  %and11 = and i32 %shr, 7
  %add = add nuw nsw i32 %and11, 2
  %.sink = select i1 %tobool.not, i32 %add, i32 8
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 5, i32 4, i32 6
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %5, align 4
  %reclaim = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 5, i32 4
  %7 = ptrtoint ptr %reclaim to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %reclaim, align 4
  %reclaim_ready = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 5, i32 4, i32 1
  %8 = ptrtoint ptr %reclaim_ready to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %reclaim_ready, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %reclaim_ready, align 4
  %next_uframe = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 6
  %9 = ptrtoint ptr %next_uframe to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %next_uframe, align 4
  %async = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 5, i32 3
  %10 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %async, align 4
  %qh_next = getelementptr inbounds %struct.ehci_qh, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %qh_next to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %qh_next, align 8
  %13 = load ptr, ptr %async, align 4
  %qh_dma = getelementptr inbounds %struct.ehci_qh, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %qh_dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qh_dma, align 4
  %and15 = and i32 %15, -32
  %16 = or i32 %and15, 2
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %13, align 32
  %19 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %async, align 4
  %hw_info1 = getelementptr inbounds %struct.ehci_qh, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %hw_info1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8388608, ptr %hw_info1, align 4
  %22 = load ptr, ptr %async, align 4
  %hw_token = getelementptr inbounds %struct.ehci_qh, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %hw_token to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1073741824, ptr %hw_token, align 8
  %24 = load ptr, ptr %async, align 4
  %hw_qtd_next = getelementptr inbounds %struct.ehci_qh, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %hw_qtd_next to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16777216, ptr %hw_qtd_next, align 16
  %26 = load ptr, ptr %async, align 4
  %qh_state = getelementptr inbounds %struct.ehci_qh, ptr %26, i32 0, i32 17
  %27 = ptrtoint ptr %qh_state to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %qh_state, align 8
  %28 = load ptr, ptr %async, align 4
  %dummy = getelementptr inbounds %struct.ehci_qh, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %dummy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dummy, align 4
  %qtd_dma = getelementptr inbounds %struct.ehci_qtd, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %qtd_dma to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %qtd_dma, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %hw_alt_next = getelementptr inbounds %struct.ehci_qh, ptr %28, i32 0, i32 5
  %34 = ptrtoint ptr %hw_alt_next to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %hw_alt_next, align 4
  %35 = load i32, ptr @log2_irq_thresh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %35)
  %36 = icmp ugt i32 %35, 6
  br i1 %36, label %if.then25, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  store i32 0, ptr @log2_irq_thresh, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end.if.end26_crit_edge
  %37 = load i32, ptr @log2_irq_thresh, align 4
  %add27 = add i32 %37, 16
  %shl = shl nuw i32 1, %add27
  %and28 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end26.if.end50_crit_edge, label %if.then30

if.end26.if.end50_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then30:                                        ; preds = %if.end26
  %38 = load i32, ptr @park, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool31.not = icmp eq i32 %38, 0
  br i1 %tobool31.not, label %if.then30.do.body39_crit_edge, label %if.then32

if.then30.do.body39_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body39

if.then32:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  %39 = tail call i32 @llvm.umin.i32(i32 %38, i32 3)
  store i32 %39, ptr @park, align 4
  %shl36 = shl nuw nsw i32 %39, 8
  %or35 = or i32 %shl, %shl36
  %or37 = or i32 %or35, 2048
  br label %do.body39

do.body39:                                        ; preds = %if.then32, %if.then30.do.body39_crit_edge
  %temp.0 = phi i32 [ %or37, %if.then32 ], [ %shl, %if.then30.do.body39_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oxu_hcd_init.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@oxu_hcd_init, %if.then45)) #9
          to label %if.end50 [label %if.then45], !srcloc !357

if.then45:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hcd, align 8
  %42 = load i32, ptr @park, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oxu_hcd_init.__UNIQUE_ID_ddebug271, ptr noundef %41, ptr noundef nonnull @.str.92, i32 noundef %42) #9
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %do.body39, %if.end26.if.end50_crit_edge
  %temp.1 = phi i32 [ %temp.0, %if.then45 ], [ %shl, %if.end26.if.end50_crit_edge ], [ %temp.0, %do.body39 ]
  %and51 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  %and54 = and i32 %temp.1, -13
  %or55 = or i32 %and54, 8
  %temp.2 = select i1 %tobool52.not, i32 %temp.1, i32 %or55
  %command = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 20
  %43 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %temp.2, ptr %command, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end50 ], [ %call6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oxu_watchdog(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -328
  %lock = getelementptr i8, ptr %t, i32 -152
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %reclaim = getelementptr i8, ptr %t, i32 -104
  %0 = ptrtoint ptr %reclaim to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reclaim, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then:                                          ; preds = %entry
  %regs = getelementptr i8, ptr %t, i32 -160
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %status6 = getelementptr inbounds %struct.ehci_regs, ptr %3, i32 0, i32 1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status6) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !470
  %5 = and i32 %4, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool10.not = icmp eq i32 %5, 0
  br i1 %tobool10.not, label %if.then.if.end17_crit_edge, label %do.body12

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.body12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !471
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %status16 = getelementptr inbounds %struct.ehci_regs, ptr %7, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %status16, i32 536870912) #9, !srcloc !359
  %reclaim_ready = getelementptr i8, ptr %t, i32 -100
  %8 = ptrtoint ptr %reclaim_ready to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %reclaim_ready, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %reclaim_ready, align 4
  br label %if.end17

if.end17:                                         ; preds = %do.body12, %if.then.if.end17_crit_edge, %entry.if.end17_crit_edge
  %actions = getelementptr i8, ptr %t, i32 48
  %9 = ptrtoint ptr %actions to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %actions, align 4
  %11 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool19.not = icmp eq i32 %11, 0
  br i1 %tobool19.not, label %if.end17.if.end21_crit_edge, label %if.then20

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %async = getelementptr i8, ptr %t, i32 -108
  %12 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %async, align 4
  tail call fastcc void @start_unlink_async(ptr noundef %add.ptr, ptr noundef %13)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17.if.end21_crit_edge
  tail call fastcc void @ehci_work(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ehci_mem_init(ptr noundef %oxu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %periodic_size = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 15
  %0 = ptrtoint ptr %periodic_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %periodic_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10.not = icmp eq i32 %1, 0
  br i1 %cmp10.not, label %entry.for.cond1.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond1.preheader

for.body.lr.ph:                                   ; preds = %entry
  %mem = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 5
  br label %for.body

for.cond1.preheader:                              ; preds = %for.body.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %uglygep = getelementptr i8, ptr %oxu, i32 1
  %2 = call ptr @memset(ptr %uglygep, i32 0, i32 48)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1056) #14
  %murb_pool = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 31
  %4 = ptrtoint ptr %murb_pool to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i.i, ptr %murb_pool, align 4
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %for.cond1.preheader.do.body_crit_edge, label %for.body18.preheader

for.cond1.preheader.do.body_crit_edge:            ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %5 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mem, align 4
  %arrayidx = getelementptr %struct.oxu_onchip_mem, ptr %6, i32 0, i32 1, i32 %i.011
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16777216, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.011, 1
  %8 = ptrtoint ptr %periodic_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %periodic_size, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond1.preheader_crit_edge

for.body.for.cond1.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond1.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body18.preheader:                             ; preds = %for.cond1.preheader
  %uglygep19 = getelementptr i8, ptr %oxu, i32 57
  %10 = ptrtoint ptr %uglygep19 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 0, ptr %uglygep19, align 1
  %call23 = tail call fastcc ptr @oxu_qh_alloc(ptr noundef %oxu)
  %async = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 12
  %11 = ptrtoint ptr %async to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call23, ptr %async, align 4
  %tobool25.not = icmp eq ptr %call23, null
  br i1 %tobool25.not, label %for.body18.preheader.do.body_crit_edge, label %if.end27

for.body18.preheader.do.body_crit_edge:           ; preds = %for.body18.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end27:                                         ; preds = %for.body18.preheader
  %mem28 = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 5
  %12 = ptrtoint ptr %mem28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mem28, align 4
  %frame_list29 = getelementptr inbounds %struct.oxu_onchip_mem, ptr %13, i32 0, i32 1
  %periodic = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 16
  %14 = ptrtoint ptr %periodic to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %frame_list29, ptr %periodic, align 4
  %15 = ptrtoint ptr %frame_list29 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %15) #9
  %periodic_dma = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 17
  %16 = ptrtoint ptr %periodic_dma to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call.i, ptr %periodic_dma, align 4
  %17 = ptrtoint ptr %periodic_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %periodic_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp3415.not = icmp eq i32 %18, 0
  br i1 %cmp3415.not, label %if.end27.for.end40_crit_edge, label %if.end27.for.body35_crit_edge

if.end27.for.body35_crit_edge:                    ; preds = %if.end27
  br label %for.body35

if.end27.for.end40_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end40

for.body35:                                       ; preds = %for.body35.for.body35_crit_edge, %if.end27.for.body35_crit_edge
  %i.416 = phi i32 [ %inc39, %for.body35.for.body35_crit_edge ], [ 0, %if.end27.for.body35_crit_edge ]
  %19 = ptrtoint ptr %periodic to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %periodic, align 4
  %arrayidx37 = getelementptr i32, ptr %20, i32 %i.416
  %21 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16777216, ptr %arrayidx37, align 4
  %inc39 = add nuw i32 %i.416, 1
  %22 = ptrtoint ptr %periodic_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %periodic_size, align 4
  %cmp34 = icmp ult i32 %inc39, %23
  br i1 %cmp34, label %for.body35.for.body35_crit_edge, label %for.body35.for.end40_crit_edge

for.body35.for.end40_crit_edge:                   ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end40

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body35

for.end40:                                        ; preds = %for.body35.for.end40_crit_edge, %if.end27.for.end40_crit_edge
  %.lcssa = phi i32 [ 0, %if.end27.for.end40_crit_edge ], [ %23, %for.body35.for.end40_crit_edge ]
  %24 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.lcssa, i32 4) #9
  %25 = extractvalue { i32, i1 } %24, 1
  br i1 %25, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !428

kcalloc.exit.thread:                              ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #11
  %pshadow3 = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 19
  %26 = ptrtoint ptr %pshadow3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %pshadow3, align 4
  br label %do.body

if.end7.i.i:                                      ; preds = %for.end40
  %27 = extractvalue { i32, i1 } %24, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %27, i32 noundef 3520) #15
  %pshadow = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 19
  %28 = ptrtoint ptr %pshadow to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call8.i.i, ptr %pshadow, align 4
  %cmp44.not = icmp eq ptr %call8.i.i, null
  br i1 %cmp44.not, label %if.end7.i.i.do.body_crit_edge, label %if.end7.i.i.cleanup_crit_edge

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i.i.do.body_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %if.end7.i.i.do.body_crit_edge, %kcalloc.exit.thread, %for.body18.preheader.do.body_crit_edge, %for.cond1.preheader.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ehci_mem_init.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ehci_mem_init, %if.then51)) #9
          to label %do.end [label %if.then51], !srcloc !357

if.then51:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %oxu, i32 -600
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ehci_mem_init.__UNIQUE_ID_ddebug254, ptr noundef %30, ptr noundef nonnull @.str.94) #9
  br label %do.end

do.end:                                           ; preds = %if.then51, %do.body
  tail call fastcc void @ehci_mem_cleanup(ptr noundef %oxu)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end7.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end7.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @oxu_qh_alloc(ptr noundef %oxu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_lock = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %mem_lock) #9
  %arrayidx = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 1, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.then2.critedge_crit_edge, label %for.inc

entry.if.then2.critedge_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.critedge

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.1 = icmp eq i8 %3, 0
  br i1 %tobool.not.1, label %for.inc.if.then2.critedge_crit_edge, label %for.inc.1

for.inc.if.then2.critedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.critedge

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.2 = icmp eq i8 %5, 0
  br i1 %tobool.not.2, label %for.inc.1.if.then2.critedge_crit_edge, label %for.inc.2

for.inc.1.if.then2.critedge_crit_edge:            ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.critedge

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.3 = icmp eq i8 %7, 0
  br i1 %tobool.not.3, label %for.inc.2.if.then2.critedge_crit_edge, label %for.inc.3

for.inc.2.if.then2.critedge_crit_edge:            ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.critedge

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.4 = icmp eq i8 %9, 0
  br i1 %tobool.not.4, label %for.inc.3.if.then2.critedge_crit_edge, label %for.inc.4

for.inc.3.if.then2.critedge_crit_edge:            ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.critedge

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 1, i32 5
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.5 = icmp eq i8 %11, 0
  br i1 %tobool.not.5, label %for.inc.4.if.then2.critedge_crit_edge, label %for.inc.5

for.inc.4.if.then2.critedge_crit_edge:            ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.critedge

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 1, i32 6
  %12 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.6 = icmp eq i8 %13, 0
  br i1 %tobool.not.6, label %for.inc.5.if.then2.critedge_crit_edge, label %for.inc.6

for.inc.5.if.then2.critedge_crit_edge:            ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.critedge

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 1, i32 7
  %14 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.7 = icmp eq i8 %15, 0
  br i1 %tobool.not.7, label %for.inc.6.if.then2.critedge_crit_edge, label %for.inc.7

for.inc.6.if.then2.critedge_crit_edge:            ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.critedge

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx.8 = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 1, i32 8
  %16 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.8 = icmp eq i8 %17, 0
  br i1 %tobool.not.8, label %for.inc.7.if.then2.critedge_crit_edge, label %for.inc.8

for.inc.7.if.then2.critedge_crit_edge:            ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.critedge

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx.9 = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 1, i32 9
  %18 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.9 = icmp eq i8 %19, 0
  br i1 %tobool.not.9, label %for.inc.8.if.then2.critedge_crit_edge, label %for.inc.9

for.inc.8.if.then2.critedge_crit_edge:            ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.critedge

for.inc.9:                                        ; preds = %for.inc.8
  %arrayidx.10 = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 1, i32 10
  %20 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.10 = icmp eq i8 %21, 0
  br i1 %tobool.not.10, label %for.inc.9.if.then2.critedge_crit_edge, label %for.inc.10

for.inc.9.if.then2.critedge_crit_edge:            ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.critedge

for.inc.10:                                       ; preds = %for.inc.9
  %arrayidx.11 = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 1, i32 11
  %22 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.11 = icmp eq i8 %23, 0
  br i1 %tobool.not.11, label %for.inc.10.if.then2.critedge_crit_edge, label %for.inc.11

for.inc.10.if.then2.critedge_crit_edge:           ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.critedge

for.inc.11:                                       ; preds = %for.inc.10
  %arrayidx.12 = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 1, i32 12
  %24 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.12 = icmp eq i8 %25, 0
  br i1 %tobool.not.12, label %for.inc.11.if.then2.critedge_crit_edge, label %for.inc.12

for.inc.11.if.then2.critedge_crit_edge:           ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.critedge

for.inc.12:                                       ; preds = %for.inc.11
  %arrayidx.13 = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 1, i32 13
  %26 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.13 = icmp eq i8 %27, 0
  br i1 %tobool.not.13, label %for.inc.12.if.then2.critedge_crit_edge, label %for.inc.13

for.inc.12.if.then2.critedge_crit_edge:           ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.critedge

for.inc.13:                                       ; preds = %for.inc.12
  %arrayidx.14 = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 1, i32 14
  %28 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.14 = icmp eq i8 %29, 0
  br i1 %tobool.not.14, label %for.inc.13.if.then2.critedge_crit_edge, label %for.inc.14

for.inc.13.if.then2.critedge_crit_edge:           ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.critedge

for.inc.14:                                       ; preds = %for.inc.13
  %arrayidx.15 = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 1, i32 15
  %30 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.15 = icmp eq i8 %31, 0
  br i1 %tobool.not.15, label %for.inc.14.if.then2.critedge_crit_edge, label %for.inc.14.unlock_crit_edge

for.inc.14.unlock_crit_edge:                      ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

for.inc.14.if.then2.critedge_crit_edge:           ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.critedge

if.then2.critedge:                                ; preds = %for.inc.14.if.then2.critedge_crit_edge, %for.inc.13.if.then2.critedge_crit_edge, %for.inc.12.if.then2.critedge_crit_edge, %for.inc.11.if.then2.critedge_crit_edge, %for.inc.10.if.then2.critedge_crit_edge, %for.inc.9.if.then2.critedge_crit_edge, %for.inc.8.if.then2.critedge_crit_edge, %for.inc.7.if.then2.critedge_crit_edge, %for.inc.6.if.then2.critedge_crit_edge, %for.inc.5.if.then2.critedge_crit_edge, %for.inc.4.if.then2.critedge_crit_edge, %for.inc.3.if.then2.critedge_crit_edge, %for.inc.2.if.then2.critedge_crit_edge, %for.inc.1.if.then2.critedge_crit_edge, %for.inc.if.then2.critedge_crit_edge, %entry.if.then2.critedge_crit_edge
  %i.049.lcssa = phi i32 [ 0, %entry.if.then2.critedge_crit_edge ], [ 1, %for.inc.if.then2.critedge_crit_edge ], [ 2, %for.inc.1.if.then2.critedge_crit_edge ], [ 3, %for.inc.2.if.then2.critedge_crit_edge ], [ 4, %for.inc.3.if.then2.critedge_crit_edge ], [ 5, %for.inc.4.if.then2.critedge_crit_edge ], [ 6, %for.inc.5.if.then2.critedge_crit_edge ], [ 7, %for.inc.6.if.then2.critedge_crit_edge ], [ 8, %for.inc.7.if.then2.critedge_crit_edge ], [ 9, %for.inc.8.if.then2.critedge_crit_edge ], [ 10, %for.inc.9.if.then2.critedge_crit_edge ], [ 11, %for.inc.10.if.then2.critedge_crit_edge ], [ 12, %for.inc.11.if.then2.critedge_crit_edge ], [ 13, %for.inc.12.if.then2.critedge_crit_edge ], [ 14, %for.inc.13.if.then2.critedge_crit_edge ], [ 15, %for.inc.14.if.then2.critedge_crit_edge ]
  %arrayidx.lcssa = phi ptr [ %arrayidx, %entry.if.then2.critedge_crit_edge ], [ %arrayidx.1, %for.inc.if.then2.critedge_crit_edge ], [ %arrayidx.2, %for.inc.1.if.then2.critedge_crit_edge ], [ %arrayidx.3, %for.inc.2.if.then2.critedge_crit_edge ], [ %arrayidx.4, %for.inc.3.if.then2.critedge_crit_edge ], [ %arrayidx.5, %for.inc.4.if.then2.critedge_crit_edge ], [ %arrayidx.6, %for.inc.5.if.then2.critedge_crit_edge ], [ %arrayidx.7, %for.inc.6.if.then2.critedge_crit_edge ], [ %arrayidx.8, %for.inc.7.if.then2.critedge_crit_edge ], [ %arrayidx.9, %for.inc.8.if.then2.critedge_crit_edge ], [ %arrayidx.10, %for.inc.9.if.then2.critedge_crit_edge ], [ %arrayidx.11, %for.inc.10.if.then2.critedge_crit_edge ], [ %arrayidx.12, %for.inc.11.if.then2.critedge_crit_edge ], [ %arrayidx.13, %for.inc.12.if.then2.critedge_crit_edge ], [ %arrayidx.14, %for.inc.13.if.then2.critedge_crit_edge ], [ %arrayidx.15, %for.inc.14.if.then2.critedge_crit_edge ]
  %mem = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 5
  %32 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mem, align 4
  %arrayidx3 = getelementptr %struct.oxu_onchip_mem, ptr %33, i32 0, i32 2, i32 %i.049.lcssa
  %34 = call ptr @memset(ptr %arrayidx3, i32 0, i32 128)
  %kref = getelementptr %struct.oxu_onchip_mem, ptr %33, i32 0, i32 2, i32 %i.049.lcssa, i32 15
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  %35 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 1, ptr %kref, align 4
  %oxu4 = getelementptr %struct.oxu_onchip_mem, ptr %33, i32 0, i32 2, i32 %i.049.lcssa, i32 14
  %36 = ptrtoint ptr %oxu4 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %oxu, ptr %oxu4, align 4
  %37 = ptrtoint ptr %arrayidx3 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %37) #9
  %qh_dma = getelementptr %struct.oxu_onchip_mem, ptr %33, i32 0, i32 2, i32 %i.049.lcssa, i32 9
  %38 = ptrtoint ptr %qh_dma to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call.i, ptr %qh_dma, align 4
  %qtd_list = getelementptr %struct.oxu_onchip_mem, ptr %33, i32 0, i32 2, i32 %i.049.lcssa, i32 11
  %39 = ptrtoint ptr %qtd_list to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %qtd_list, ptr %qtd_list, align 4
  %prev.i = getelementptr %struct.oxu_onchip_mem, ptr %33, i32 0, i32 2, i32 %i.049.lcssa, i32 11, i32 1
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %qtd_list, ptr %prev.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %mem_lock) #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then2.critedge
  %i.025.i = phi i32 [ 0, %if.then2.critedge ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 2, i32 %i.025.i
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i, label %if.then2.critedge.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.ehci_qtd_alloc.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.ehci_qtd_alloc.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ehci_qtd_alloc.exit

if.then2.critedge.i:                              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mem, align 4
  %arrayidx3.i = getelementptr %struct.oxu_onchip_mem, ptr %44, i32 0, i32 3, i32 %i.025.i
  %45 = call ptr @memset(ptr %arrayidx3.i, i32 0, i32 96)
  %hw_token.i = getelementptr %struct.oxu_onchip_mem, ptr %44, i32 0, i32 3, i32 %i.025.i, i32 2
  %46 = ptrtoint ptr %hw_token.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1073741824, ptr %hw_token.i, align 8
  %47 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 16777216, ptr %arrayidx3.i, align 32
  %hw_alt_next.i = getelementptr %struct.oxu_onchip_mem, ptr %44, i32 0, i32 3, i32 %i.025.i, i32 1
  %48 = ptrtoint ptr %hw_alt_next.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 16777216, ptr %hw_alt_next.i, align 4
  %qtd_list.i = getelementptr %struct.oxu_onchip_mem, ptr %44, i32 0, i32 3, i32 %i.025.i, i32 6
  %49 = ptrtoint ptr %qtd_list.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %qtd_list.i, ptr %qtd_list.i, align 4
  %prev.i.i = getelementptr %struct.oxu_onchip_mem, ptr %44, i32 0, i32 3, i32 %i.025.i, i32 6, i32 1
  %50 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %qtd_list.i, ptr %prev.i.i, align 4
  %51 = ptrtoint ptr %arrayidx3.i to i32
  %call.i.i = tail call i32 @__virt_to_phys(i32 noundef %51) #9
  %qtd_dma.i = getelementptr %struct.oxu_onchip_mem, ptr %44, i32 0, i32 3, i32 %i.025.i, i32 5
  %52 = ptrtoint ptr %qtd_dma.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call.i.i, ptr %qtd_dma.i, align 4
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %arrayidx.i, align 1
  br label %ehci_qtd_alloc.exit

ehci_qtd_alloc.exit:                              ; preds = %if.then2.critedge.i, %for.inc.i.ehci_qtd_alloc.exit_crit_edge
  %qtd.0.i = phi ptr [ %arrayidx3.i, %if.then2.critedge.i ], [ null, %for.inc.i.ehci_qtd_alloc.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %mem_lock) #9
  %dummy = getelementptr %struct.oxu_onchip_mem, ptr %33, i32 0, i32 2, i32 %i.049.lcssa, i32 12
  %54 = ptrtoint ptr %dummy to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %qtd.0.i, ptr %dummy, align 4
  %cmp7 = icmp eq ptr %qtd.0.i, null
  br i1 %cmp7, label %do.body, label %ehci_qtd_alloc.exit.unlock.sink.split_crit_edge

ehci_qtd_alloc.exit.unlock.sink.split_crit_edge:  ; preds = %ehci_qtd_alloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.sink.split

do.body:                                          ; preds = %ehci_qtd_alloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @oxu_qh_alloc.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@oxu_qh_alloc, %if.then13)) #9
          to label %unlock.sink.split [label %if.then13], !srcloc !357

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %oxu, i32 -600
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @oxu_qh_alloc.__UNIQUE_ID_ddebug253, ptr noundef %56, ptr noundef nonnull @.str.96) #9
  br label %unlock.sink.split

unlock.sink.split:                                ; preds = %if.then13, %do.body, %ehci_qtd_alloc.exit.unlock.sink.split_crit_edge
  %.sink = phi i8 [ 0, %do.body ], [ 0, %if.then13 ], [ 1, %ehci_qtd_alloc.exit.unlock.sink.split_crit_edge ]
  %qh.0.ph = phi ptr [ null, %do.body ], [ null, %if.then13 ], [ %arrayidx3, %ehci_qtd_alloc.exit.unlock.sink.split_crit_edge ]
  %57 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %.sink, ptr %arrayidx.lcssa, align 1
  br label %unlock

unlock:                                           ; preds = %unlock.sink.split, %for.inc.14.unlock_crit_edge
  %qh.0 = phi ptr [ null, %for.inc.14.unlock_crit_edge ], [ %qh.0.ph, %unlock.sink.split ]
  tail call void @_raw_spin_unlock(ptr noundef %mem_lock) #9
  ret ptr %qh.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ehci_mem_cleanup(ptr noundef %oxu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %murb_pool = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 31
  %0 = ptrtoint ptr %murb_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %murb_pool, align 4
  tail call void @kfree(ptr noundef %1) #9
  %2 = ptrtoint ptr %murb_pool to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %murb_pool, align 4
  %async = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 12
  %3 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %async, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %kref.i = getelementptr inbounds %struct.ehci_qh, ptr %4, i32 0, i32 15
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !383
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #9, !srcloc !384
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !385

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #9
  br label %if.end

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !386
  tail call fastcc void @qh_destroy(ptr noundef %kref.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %async to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %async, align 4
  %urb_timer = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 7
  %call = tail call i32 @del_timer(ptr noundef %urb_timer) #9
  %periodic = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 16
  %7 = ptrtoint ptr %periodic to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %periodic, align 4
  %pshadow = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 19
  %8 = ptrtoint ptr %pshadow to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pshadow, align 4
  tail call void @kfree(ptr noundef %9) #9
  %10 = ptrtoint ptr %pshadow to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %pshadow, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ehci_qtd_alloc(ptr noundef %oxu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_lock = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %mem_lock) #9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.025 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 2, i32 %i.025
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then2.critedge, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.if.end6_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.end6_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then2.critedge:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %mem = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 5
  %2 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem, align 4
  %arrayidx3 = getelementptr %struct.oxu_onchip_mem, ptr %3, i32 0, i32 3, i32 %i.025
  %4 = call ptr @memset(ptr %arrayidx3, i32 0, i32 96)
  %hw_token = getelementptr %struct.oxu_onchip_mem, ptr %3, i32 0, i32 3, i32 %i.025, i32 2
  %5 = ptrtoint ptr %hw_token to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1073741824, ptr %hw_token, align 8
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16777216, ptr %arrayidx3, align 32
  %hw_alt_next = getelementptr %struct.oxu_onchip_mem, ptr %3, i32 0, i32 3, i32 %i.025, i32 1
  %7 = ptrtoint ptr %hw_alt_next to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16777216, ptr %hw_alt_next, align 4
  %qtd_list = getelementptr %struct.oxu_onchip_mem, ptr %3, i32 0, i32 3, i32 %i.025, i32 6
  %8 = ptrtoint ptr %qtd_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %qtd_list, ptr %qtd_list, align 4
  %prev.i = getelementptr %struct.oxu_onchip_mem, ptr %3, i32 0, i32 3, i32 %i.025, i32 6, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %qtd_list, ptr %prev.i, align 4
  %10 = ptrtoint ptr %arrayidx3 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %10) #9
  %qtd_dma = getelementptr %struct.oxu_onchip_mem, ptr %3, i32 0, i32 3, i32 %i.025, i32 5
  %11 = ptrtoint ptr %qtd_dma to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i, ptr %qtd_dma, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %arrayidx, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then2.critedge, %for.inc.if.end6_crit_edge
  %qtd.0 = phi ptr [ %arrayidx3, %if.then2.critedge ], [ null, %for.inc.if.end6_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %mem_lock) #9
  ret ptr %qtd.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ehci_port_power(ptr noundef %oxu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcs_params = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 10
  %0 = ptrtoint ptr %hcs_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hcs_params, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ehci_port_power.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ehci_port_power, %if.then4)) #9
          to label %do.end [label %if.then4], !srcloc !357

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %oxu, i32 -600
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ehci_port_power.__UNIQUE_ID_ddebug264, ptr noundef %3, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.107) #9
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %4 = ptrtoint ptr %hcs_params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hcs_params, align 4
  %and9 = and i32 %5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %cmp.not3 = icmp eq i32 %and9, 0
  br i1 %cmp.not3, label %do.end.for.end_crit_edge, label %if.else.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.else.lr.ph:                                    ; preds = %do.end
  %regs.i = getelementptr i8, ptr %oxu, i32 168
  %lock.i = getelementptr i8, ptr %oxu, i32 176
  br label %if.else

if.else:                                          ; preds = %oxu_hub_control.exit.if.else_crit_edge, %if.else.lr.ph
  %port.04 = phi i32 [ %and9, %if.else.lr.ph ], [ %dec15, %oxu_hub_control.exit.if.else_crit_edge ]
  %6 = ptrtoint ptr %hcs_params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hcs_params, align 4
  %and.i = and i32 %7, 15
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %conv.i = and i32 %port.04, 65535
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx.i = getelementptr %struct.ehci_regs, ptr %9, i32 0, i32 9, i32 %sub.i
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv.i)
  %cmp13.i = icmp ult i32 %and.i, %conv.i
  br i1 %cmp13.i, label %if.else.oxu_hub_control.exit_crit_edge, label %if.end.i

if.else.oxu_hub_control.exit_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %oxu_hub_control.exit

if.end.i:                                         ; preds = %if.else
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !388
  %11 = ptrtoint ptr %hcs_params to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hcs_params, align 4
  %and52.i = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %if.end.i.sw.epilog73.i_crit_edge, label %do.body55.i

if.end.i.sw.epilog73.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog73.i

do.body55.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !392
  tail call void @arm_heavy_mb() #9
  %13 = and i32 %10, -705691649
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %13) #9, !srcloc !359
  br label %sw.epilog73.i

sw.epilog73.i:                                    ; preds = %do.body55.i, %if.end.i.sw.epilog73.i_crit_edge
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !395
  br label %oxu_hub_control.exit

oxu_hub_control.exit:                             ; preds = %sw.epilog73.i, %if.else.oxu_hub_control.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #9
  %dec15 = add nsw i32 %port.04, -1
  %cmp.not = icmp eq i32 %dec15, 0
  br i1 %cmp.not, label %oxu_hub_control.exit.for.end_crit_edge, label %oxu_hub_control.exit.if.else_crit_edge

oxu_hub_control.exit.if.else_crit_edge:           ; preds = %oxu_hub_control.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

oxu_hub_control.exit.for.end_crit_edge:           ; preds = %oxu_hub_control.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %oxu_hub_control.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call void @msleep(i32 noundef 20) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ehci_quiesce(ptr nocapture noundef %oxu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr i8, ptr %oxu, i32 -12
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !428

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/host/oxu210hp-hcd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 822, 0\0A.popsection", ""() #9, !srcloc !472
  unreachable

do.end9:                                          ; preds = %entry
  %regs = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 9
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  %5 = lshr i32 %4, 14
  %and12 = and i32 %5, 49152
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %status = getelementptr inbounds %struct.ehci_regs, ptr %7, i32 0, i32 1
  %call.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call.i, 2000000
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status) #9, !srcloc !360
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %and1.i = and i32 %9, 49152
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i, i32 %and12)
  %cmp2.i = icmp eq i32 %and1.i, %and12
  br i1 %cmp2.i, label %do.end9.handshake.exit_crit_edge, label %do.end9.lor.lhs.false.i_crit_edge

do.end9.lor.lhs.false.i_crit_edge:                ; preds = %do.end9
  br label %lor.lhs.false.i

do.end9.handshake.exit_crit_edge:                 ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %handshake.exit

lor.lhs.false.i:                                  ; preds = %cond.false.i.lor.lhs.false.i_crit_edge, %do.end9.lor.lhs.false.i_crit_edge
  %10 = phi i32 [ %14, %cond.false.i.lor.lhs.false.i_crit_edge ], [ %8, %do.end9.lor.lhs.false.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp5.i = icmp eq i32 %10, -1
  br i1 %cmp5.i, label %lor.lhs.false.i.cleanup.sink.split_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call7.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call7.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call7.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then11.i, label %cond.false.i

if.then11.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status) #9, !srcloc !360
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !439
  br label %handshake.exit

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #9
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status) #9, !srcloc !360
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %and.i = and i32 %15, 49152
  %cmp.i = icmp eq i32 %and.i, %and12
  br i1 %cmp.i, label %cond.false.i.handshake.exit_crit_edge, label %cond.false.i.lor.lhs.false.i_crit_edge

cond.false.i.lor.lhs.false.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

cond.false.i.handshake.exit_crit_edge:            ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %handshake.exit

handshake.exit:                                   ; preds = %cond.false.i.handshake.exit_crit_edge, %if.then11.i, %do.end9.handshake.exit_crit_edge
  %result.0.i = phi i32 [ %12, %if.then11.i ], [ %9, %do.end9.handshake.exit_crit_edge ], [ %15, %cond.false.i.handshake.exit_crit_edge ]
  %and27.i = and i32 %result.0.i, 49152
  call void @__sanitizer_cov_trace_cmp4(i32 %and27.i, i32 %and12)
  %cmp28.i = icmp eq i32 %and27.i, %and12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %result.0.i)
  %cmp30.i = icmp eq i32 %result.0.i, -1
  %16 = or i1 %cmp30.i, %cmp28.i
  %not.cmp30.i = xor i1 %cmp30.i, true
  %cmp.not = select i1 %not.cmp30.i, i1 %16, i1 false
  br i1 %cmp.not, label %if.end18, label %handshake.exit.cleanup.sink.split_crit_edge

handshake.exit.cleanup.sink.split_crit_edge:      ; preds = %handshake.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end18:                                         ; preds = %handshake.exit
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !474
  %20 = and i32 %19, -1879048193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !475
  tail call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #9, !srcloc !359
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %status33 = getelementptr inbounds %struct.ehci_regs, ptr %24, i32 0, i32 1
  %call.i53 = tail call i64 @ktime_get() #9
  %add.i.i54 = add i64 %call.i53, 2000000
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status33) #9, !srcloc !360
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %and1.i55 = and i32 %26, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i55)
  %cmp2.i56 = icmp eq i32 %and1.i55, 0
  br i1 %cmp2.i56, label %if.end18.handshake.exit71_crit_edge, label %if.end18.lor.lhs.false.i58_crit_edge

if.end18.lor.lhs.false.i58_crit_edge:             ; preds = %if.end18
  br label %lor.lhs.false.i58

if.end18.handshake.exit71_crit_edge:              ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %handshake.exit71

lor.lhs.false.i58:                                ; preds = %cond.false.i65.lor.lhs.false.i58_crit_edge, %if.end18.lor.lhs.false.i58_crit_edge
  %27 = phi i32 [ %31, %cond.false.i65.lor.lhs.false.i58_crit_edge ], [ %25, %if.end18.lor.lhs.false.i58_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp5.i57 = icmp eq i32 %27, -1
  br i1 %cmp5.i57, label %lor.lhs.false.i58.cleanup.sink.split_crit_edge, label %land.lhs.true.i61

lor.lhs.false.i58.cleanup.sink.split_crit_edge:   ; preds = %lor.lhs.false.i58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

land.lhs.true.i61:                                ; preds = %lor.lhs.false.i58
  %call7.i59 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call7.i59, i64 %add.i.i54)
  %cmp3.i.i60 = icmp sgt i64 %call7.i59, %add.i.i54
  br i1 %cmp3.i.i60, label %if.then11.i62, label %cond.false.i65

if.then11.i62:                                    ; preds = %land.lhs.true.i61
  call void @__sanitizer_cov_trace_pc() #11
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status33) #9, !srcloc !360
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !439
  br label %handshake.exit71

cond.false.i65:                                   ; preds = %land.lhs.true.i61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #9
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status33) #9, !srcloc !360
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %and.i63 = and i32 %32, 49152
  %cmp.i64 = icmp eq i32 %and.i63, 0
  br i1 %cmp.i64, label %cond.false.i65.handshake.exit71_crit_edge, label %cond.false.i65.lor.lhs.false.i58_crit_edge

cond.false.i65.lor.lhs.false.i58_crit_edge:       ; preds = %cond.false.i65
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i58

cond.false.i65.handshake.exit71_crit_edge:        ; preds = %cond.false.i65
  call void @__sanitizer_cov_trace_pc() #11
  br label %handshake.exit71

handshake.exit71:                                 ; preds = %cond.false.i65.handshake.exit71_crit_edge, %if.then11.i62, %if.end18.handshake.exit71_crit_edge
  %result.0.i66 = phi i32 [ %29, %if.then11.i62 ], [ %26, %if.end18.handshake.exit71_crit_edge ], [ %32, %cond.false.i65.handshake.exit71_crit_edge ]
  %and27.i67 = and i32 %result.0.i66, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i67)
  %cmp28.i68 = icmp eq i32 %and27.i67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %result.0.i66)
  %cmp30.i69 = icmp eq i32 %result.0.i66, -1
  %33 = or i1 %cmp30.i69, %cmp28.i68
  %not.cmp30.i69 = xor i1 %cmp30.i69, true
  %cmp35.not = select i1 %not.cmp30.i69, i1 %33, i1 false
  br i1 %cmp35.not, label %handshake.exit71.cleanup_crit_edge, label %handshake.exit71.cleanup.sink.split_crit_edge

handshake.exit71.cleanup.sink.split_crit_edge:    ; preds = %handshake.exit71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

handshake.exit71.cleanup_crit_edge:               ; preds = %handshake.exit71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %handshake.exit71.cleanup.sink.split_crit_edge, %lor.lhs.false.i58.cleanup.sink.split_crit_edge, %handshake.exit.cleanup.sink.split_crit_edge, %lor.lhs.false.i.cleanup.sink.split_crit_edge
  %34 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %handshake.exit71.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ehci_halt(ptr nocapture noundef readonly %oxu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 9
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %status = getelementptr inbounds %struct.ehci_regs, ptr %1, i32 0, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !476
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !477
  tail call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %intr_enable = getelementptr inbounds %struct.ehci_regs, ptr %4, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %intr_enable, i32 0) #9, !srcloc !359
  %5 = and i32 %2, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !478
  %9 = and i32 %8, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !479
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #9, !srcloc !359
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %status16 = getelementptr inbounds %struct.ehci_regs, ptr %13, i32 0, i32 1
  %call.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call.i, 2000000
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status16) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %15 = and i32 %14, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp2.i.not = icmp eq i32 %15, 0
  br i1 %cmp2.i.not, label %if.end.land.lhs.true.i_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.land.lhs.true.i_crit_edge:                 ; preds = %if.end
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %if.end.land.lhs.true.i_crit_edge
  %call7.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call7.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call7.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then11.i, label %cond.false.i

if.then11.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status16) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !439
  br label %cleanup

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #9
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status16) #9, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %19 = and i32 %18, 1048576
  %cmp.i.not = icmp eq i32 %19, 0
  br i1 %cmp.i.not, label %cond.false.i.land.lhs.true.i_crit_edge, label %cond.false.i.cleanup_crit_edge

cond.false.i.cleanup_crit_edge:                   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

cleanup:                                          ; preds = %cond.false.i.cleanup_crit_edge, %if.then11.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__oxu_urb_enqueue(ptr noundef %hcd, ptr noundef %urb) unnamed_addr #2 align 64 {
entry:
  %empty.i = alloca %struct.list_head, align 4
  %qtd_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %qtd_list) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %qtd_list, i32 0, i32 1
  %1 = ptrtoint ptr %qtd_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %qtd_list, ptr %qtd_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %qtd_list, ptr %0, align 4
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %3 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pipe, align 4
  %shr = lshr i32 %4, 30
  %5 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %shr, label %entry.unreachabledefault [
    i32 2, label %entry.sw.default_crit_edge
    i32 3, label %entry.sw.default_crit_edge17
    i32 1, label %sw.bb3
    i32 0, label %sw.bb9
  ]

entry.sw.default_crit_edge17:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

entry.unreachabledefault:                         ; preds = %entry
  unreachable

sw.default:                                       ; preds = %entry.sw.default_crit_edge, %entry.sw.default_crit_edge17
  %call1 = call fastcc ptr @qh_urb_transaction(ptr noundef %hcd_priv.i, ptr noundef %urb, ptr noundef nonnull %qtd_list)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %sw.default.cleanup_crit_edge, label %if.end

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.default
  %ep.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 9
  %6 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ep.i, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bEndpointAddress.i, align 2
  %lock.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 3
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %flags7.i = getelementptr %struct.usb_hcd, ptr %hcd, i32 0, i32 12
  %10 = ptrtoint ptr %flags7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags7.i, align 4
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.if.then44.i_crit_edge, label %if.end.i, !prof !428

if.end.if.then44.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44.i

if.end.i:                                         ; preds = %if.end
  %conv.i = zext i8 %9 to i32
  %12 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ep.i, align 4
  %hcpriv.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %13, i32 0, i32 5
  %call12.i = call fastcc ptr @qh_append_tds(ptr noundef %hcd_priv.i, ptr noundef %urb, ptr noundef nonnull %qtd_list, i32 noundef %conv.i, ptr noundef %hcpriv.i) #9
  %cmp13.i = icmp eq ptr %call12.i, null
  br i1 %cmp13.i, label %if.end.i.if.then44.i_crit_edge, label %if.end22.i, !prof !428

if.end.i.if.then44.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44.i

if.end22.i:                                       ; preds = %if.end.i
  %qh_state.i = getelementptr inbounds %struct.ehci_qh, ptr %call12.i, i32 0, i32 17
  %14 = ptrtoint ptr %qh_state.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %qh_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %cmp24.i = icmp eq i8 %15, 3
  br i1 %cmp24.i, label %if.then32.i, label %if.end22.i.done.i_crit_edge, !prof !385

if.end22.i.done.i_crit_edge:                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.i

if.then32.i:                                      ; preds = %if.end22.i
  %kref.i.i = getelementptr inbounds %struct.ehci_qh, ptr %call12.i, i32 0, i32 15
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #9
  %16 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #9, !srcloc !442
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then32.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !428

if.then32.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then32.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %17 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.qh_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !385

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.qh_get.exit.i_crit_edge:      ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qh_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then32.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then32.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #9
  br label %qh_get.exit.i

qh_get.exit.i:                                    ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.qh_get.exit.i_crit_edge
  call fastcc void @qh_link_async(ptr noundef %hcd_priv.i, ptr noundef nonnull %call12.i) #9
  br label %done.i

done.i:                                           ; preds = %qh_get.exit.i, %if.end22.i.done.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #9
  br label %cleanup

if.then44.i:                                      ; preds = %if.end.i.if.then44.i_crit_edge, %if.end.if.then44.i_crit_edge
  %rc.0.ph.i = phi i32 [ -12, %if.end.i.if.then44.i_crit_edge ], [ -108, %if.end.if.then44.i_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #9
  call fastcc void @qtd_list_free(ptr noundef %hcd_priv.i, ptr noundef nonnull %qtd_list) #9
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %call4 = call fastcc ptr @qh_urb_transaction(ptr noundef %hcd_priv.i, ptr noundef %urb, ptr noundef nonnull %qtd_list)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %sw.bb3.cleanup_crit_edge, label %if.end7

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %sw.bb3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %empty.i) #9
  %18 = ptrtoint ptr %empty.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %empty.i, align 4, !annotation !461
  %19 = getelementptr inbounds %struct.list_head, ptr %empty.i, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -1 to ptr), ptr %19, align 4, !annotation !461
  %ep.i1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 9
  %21 = ptrtoint ptr %ep.i1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ep.i1, align 4
  %bEndpointAddress.i2 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %bEndpointAddress.i2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bEndpointAddress.i2, align 2
  %conv.i3 = zext i8 %24 to i32
  %lock.i4 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 3
  %call3.i5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i4) #9
  %flags7.i6 = getelementptr %struct.usb_hcd, ptr %hcd, i32 0, i32 12
  %25 = ptrtoint ptr %flags7.i6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags7.i6, align 4
  %and.i7 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7)
  %tobool.not.i8 = icmp eq i32 %and.i7, 0
  br i1 %tobool.not.i8, label %if.end7.if.then52.i_crit_edge, label %if.end.i12, !prof !428

if.end7.if.then52.i_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then52.i

if.end.i12:                                       ; preds = %if.end7
  %27 = ptrtoint ptr %empty.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %empty.i, ptr %empty.i, align 4
  %28 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %empty.i, ptr %19, align 4
  %29 = ptrtoint ptr %ep.i1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ep.i1, align 4
  %hcpriv.i9 = getelementptr inbounds %struct.usb_host_endpoint, ptr %30, i32 0, i32 5
  %call12.i10 = call fastcc ptr @qh_append_tds(ptr noundef %hcd_priv.i, ptr noundef %urb, ptr noundef nonnull %empty.i, i32 noundef %conv.i3, ptr noundef %hcpriv.i9) #9
  %cmp13.i11 = icmp eq ptr %call12.i10, null
  br i1 %cmp13.i11, label %if.end.i12.if.then52.i_crit_edge, label %if.end16.i

if.end.i12.if.then52.i_crit_edge:                 ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then52.i

if.end16.i:                                       ; preds = %if.end.i12
  %qh_state.i13 = getelementptr inbounds %struct.ehci_qh, ptr %call12.i10, i32 0, i32 17
  %31 = ptrtoint ptr %qh_state.i13 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %qh_state.i13, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %32)
  %cmp18.i = icmp eq i8 %32, 3
  br i1 %cmp18.i, label %if.then20.i, label %if.end16.i.if.end26.i_crit_edge

if.end16.i.if.end26.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.then20.i:                                      ; preds = %if.end16.i
  %call21.i = call fastcc i32 @qh_schedule(ptr noundef %hcd_priv.i, ptr noundef nonnull %call12.i10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.not.i = icmp eq i32 %call21.i, 0
  br i1 %cmp22.not.i, label %if.then20.i.if.end26.i_crit_edge, label %if.then20.i.if.then52.i_crit_edge

if.then20.i.if.then52.i_crit_edge:                ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then52.i

if.then20.i.if.end26.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then20.i.if.end26.i_crit_edge, %if.end16.i.if.end26.i_crit_edge
  %33 = ptrtoint ptr %ep.i1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ep.i1, align 4
  %hcpriv28.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %34, i32 0, i32 5
  %call29.i = call fastcc ptr @qh_append_tds(ptr noundef %hcd_priv.i, ptr noundef %urb, ptr noundef nonnull %qtd_list, i32 noundef %conv.i3, ptr noundef %hcpriv28.i) #9
  %cmp31.i = icmp eq ptr %call29.i, null
  br i1 %cmp31.i, label %do.body40.i, label %done.i14, !prof !428

do.body40.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/host/oxu210hp-hcd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2645, 0\0A.popsection", ""() #9, !srcloc !480
  unreachable

done.i14:                                         ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  %bandwidth_int_reqs.i = getelementptr %struct.usb_hcd, ptr %hcd, i32 0, i32 0, i32 14
  %35 = ptrtoint ptr %bandwidth_int_reqs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bandwidth_int_reqs.i, align 4
  %inc.i = add i32 %36, 1
  store i32 %inc.i, ptr %bandwidth_int_reqs.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i4, i32 noundef %call3.i5) #9
  br label %intr_submit.exit

if.then52.i:                                      ; preds = %if.then20.i.if.then52.i_crit_edge, %if.end.i12.if.then52.i_crit_edge, %if.end7.if.then52.i_crit_edge
  %status.1.ph.i = phi i32 [ -12, %if.end.i12.if.then52.i_crit_edge ], [ -108, %if.end7.if.then52.i_crit_edge ], [ %call21.i, %if.then20.i.if.then52.i_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i4, i32 noundef %call3.i5) #9
  call fastcc void @qtd_list_free(ptr noundef %hcd_priv.i, ptr noundef nonnull %qtd_list) #9
  br label %intr_submit.exit

intr_submit.exit:                                 ; preds = %if.then52.i, %done.i14
  %status.15.i = phi i32 [ %status.1.ph.i, %if.then52.i ], [ 0, %done.i14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %empty.i) #9
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %40)
  %cmp = icmp eq i32 %40, 3
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @itd_submit.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__oxu_urb_enqueue, %if.then.i)) #9
          to label %cleanup [label %if.then.i], !srcloc !357

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hcd, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @itd_submit.__UNIQUE_ID_ddebug261, ptr noundef %42, ptr noundef nonnull @.str.115) #9
  br label %cleanup

if.else:                                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sitd_submit.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__oxu_urb_enqueue, %if.then.i16)) #9
          to label %cleanup [label %if.then.i16], !srcloc !357

if.then.i16:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hcd, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sitd_submit.__UNIQUE_ID_ddebug262, ptr noundef %44, ptr noundef nonnull @.str.117) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i16, %if.else, %if.then.i, %if.then10, %intr_submit.exit, %sw.bb3.cleanup_crit_edge, %if.then44.i, %done.i, %sw.default.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.15.i, %intr_submit.exit ], [ -12, %sw.default.cleanup_crit_edge ], [ -12, %sw.bb3.cleanup_crit_edge ], [ %rc.0.ph.i, %if.then44.i ], [ 0, %done.i ], [ -38, %if.then10 ], [ -38, %if.then.i ], [ -38, %if.else ], [ -38, %if.then.i16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %qtd_list) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @qh_urb_transaction(ptr noundef %oxu, ptr noundef %urb, ptr noundef %head) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_lock.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %mem_lock.i) #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.025.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 2, i32 %i.025.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %ehci_qtd_alloc.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %ehci_qtd_alloc.exit.thread, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

ehci_qtd_alloc.exit.thread:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %mem_lock.i) #9
  br label %cleanup195

ehci_qtd_alloc.exit:                              ; preds = %for.body.i
  %mem.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 5
  %2 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem.i, align 4
  %arrayidx3.i = getelementptr %struct.oxu_onchip_mem, ptr %3, i32 0, i32 3, i32 %i.025.i
  %4 = call ptr @memset(ptr %arrayidx3.i, i32 0, i32 96)
  %hw_token.i = getelementptr %struct.oxu_onchip_mem, ptr %3, i32 0, i32 3, i32 %i.025.i, i32 2
  %5 = ptrtoint ptr %hw_token.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1073741824, ptr %hw_token.i, align 8
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16777216, ptr %arrayidx3.i, align 32
  %hw_alt_next.i = getelementptr %struct.oxu_onchip_mem, ptr %3, i32 0, i32 3, i32 %i.025.i, i32 1
  %7 = ptrtoint ptr %hw_alt_next.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16777216, ptr %hw_alt_next.i, align 4
  %qtd_list.i = getelementptr %struct.oxu_onchip_mem, ptr %3, i32 0, i32 3, i32 %i.025.i, i32 6
  %8 = ptrtoint ptr %qtd_list.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %qtd_list.i, ptr %qtd_list.i, align 4
  %prev.i.i = getelementptr %struct.oxu_onchip_mem, ptr %3, i32 0, i32 3, i32 %i.025.i, i32 6, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %qtd_list.i, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %arrayidx3.i to i32
  %call.i.i = tail call i32 @__virt_to_phys(i32 noundef %10) #9
  %qtd_dma.i = getelementptr %struct.oxu_onchip_mem, ptr %3, i32 0, i32 3, i32 %i.025.i, i32 5
  %11 = ptrtoint ptr %qtd_dma.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i.i, ptr %qtd_dma.i, align 4
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %arrayidx.i, align 1
  tail call void @_raw_spin_unlock(ptr noundef %mem_lock.i) #9
  %tobool.not = icmp eq ptr %arrayidx3.i, null
  br i1 %tobool.not, label %ehci_qtd_alloc.exit.cleanup195_crit_edge, label %if.end, !prof !428

ehci_qtd_alloc.exit.cleanup195_crit_edge:         ; preds = %ehci_qtd_alloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup195

if.end:                                           ; preds = %ehci_qtd_alloc.exit
  %prev.i = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i6 = tail call zeroext i1 @__list_add_valid(ptr noundef %qtd_list.i, ptr noundef %14, ptr noundef %head) #9
  br i1 %call.i.i6, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %qtd_list.i, ptr %prev.i, align 4
  %16 = ptrtoint ptr %qtd_list.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %head, ptr %qtd_list.i, align 4
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %qtd_list.i, ptr %14, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %urb4 = getelementptr %struct.oxu_onchip_mem, ptr %3, i32 0, i32 3, i32 %i.025.i, i32 7
  %19 = ptrtoint ptr %urb4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %urb, ptr %urb4, align 32
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %20 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %transfer_buffer_length, align 4
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %22 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pipe, align 4
  %and = and i32 %23, 128
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %24 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %transfer_buffer, align 4
  %tobool5.not = icmp ne ptr %25, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool7.not = icmp eq i32 %21, 0
  %or.cond = select i1 %tobool5.not, i1 true, i1 %tobool7.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  %or.cond1 = select i1 %or.cond, i1 true, i1 %tobool9.not
  br i1 %or.cond1, label %list_add_tail.exit.if.end13_crit_edge, label %if.then10

list_add_tail.exit.if.end13_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then10:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 15
  %26 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %transfer_dma, align 4
  %28 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %27, i32 -2130706432, i32 8454144) #16, !srcloc !481
  %29 = inttoptr i32 %28 to ptr
  %30 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %transfer_buffer, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %list_add_tail.exit.if.end13_crit_edge
  %shr.mask = and i32 %23, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr.mask)
  %cmp = icmp eq i32 %shr.mask, -2147483648
  br i1 %cmp, label %if.then16, label %if.end13.if.end42_crit_edge

if.end13.if.end42_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then16:                                        ; preds = %if.end13
  %call17 = tail call fastcc i32 @oxu_buf_alloc(ptr noundef %oxu, ptr noundef nonnull %arrayidx3.i, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.then16.cleanup194_crit_edge

if.then16.cleanup194_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup194

if.end20:                                         ; preds = %if.then16
  %buffer_dma = getelementptr %struct.oxu_onchip_mem, ptr %3, i32 0, i32 3, i32 %i.025.i, i32 11
  %31 = ptrtoint ptr %buffer_dma to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buffer_dma, align 16
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #9
  %hw_buf.i = getelementptr %struct.oxu_onchip_mem, ptr %3, i32 0, i32 3, i32 %i.025.i, i32 3
  %34 = ptrtoint ptr %hw_buf.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %hw_buf.i, align 4
  %hw_buf_hi.i = getelementptr %struct.oxu_onchip_mem, ptr %3, i32 0, i32 3, i32 %i.025.i, i32 4
  %35 = ptrtoint ptr %hw_buf_hi.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %hw_buf_hi.i, align 32
  %and.i = and i32 %32, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4088, i32 %and.i)
  %cmp.i = icmp ult i32 %and.i, 4088
  br i1 %cmp.i, label %if.end20.qtd_fill.exit_crit_edge, label %if.else.i, !prof !385

if.end20.qtd_fill.exit_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %qtd_fill.exit

if.else.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4088, i32 %and.i)
  %cmp762.i.not = icmp eq i32 %and.i, 4088
  br i1 %cmp762.i.not, label %if.else.i.qtd_fill.exit_crit_edge, label %for.end.i

if.else.i.qtd_fill.exit_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qtd_fill.exit

for.end.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i32 %32, 4096
  %and6.i = and i32 %add.i, -4096
  %36 = tail call i32 @llvm.bswap.i32(i32 %and6.i) #9
  %arrayidx14.i = getelementptr %struct.oxu_onchip_mem, ptr %3, i32 0, i32 3, i32 %i.025.i, i32 3, i32 1
  %37 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx14.i, align 4
  %arrayidx18.i = getelementptr %struct.oxu_onchip_mem, ptr %3, i32 0, i32 3, i32 %i.025.i, i32 4, i32 1
  %38 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %arrayidx18.i, align 4
  br label %qtd_fill.exit

qtd_fill.exit:                                    ; preds = %for.end.i, %if.else.i.qtd_fill.exit_crit_edge, %if.end20.qtd_fill.exit_crit_edge
  %39 = ptrtoint ptr %hw_token.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -2146564096, ptr %hw_token.i, align 8
  %length.i = getelementptr %struct.oxu_onchip_mem, ptr %3, i32 0, i32 3, i32 %i.025.i, i32 8
  %40 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 8, ptr %length.i, align 4
  %buffer = getelementptr %struct.oxu_onchip_mem, ptr %3, i32 0, i32 3, i32 %i.025.i, i32 10
  %41 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buffer, align 4
  %43 = ptrtoint ptr %urb4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %urb4, align 32
  %setup_packet = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 21
  %45 = ptrtoint ptr %setup_packet to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %setup_packet, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 8)
  %48 = load i64, ptr %46, align 1
  %49 = ptrtoint ptr %42 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 %48, ptr %42, align 1
  tail call void @_raw_spin_lock(ptr noundef %mem_lock.i) #9
  br label %for.body.i14

for.body.i14:                                     ; preds = %for.inc.i17.for.body.i14_crit_edge, %qtd_fill.exit
  %i.025.i11 = phi i32 [ 0, %qtd_fill.exit ], [ %inc.i15, %for.inc.i17.for.body.i14_crit_edge ]
  %arrayidx.i12 = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 2, i32 %i.025.i11
  %50 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i13 = icmp eq i8 %51, 0
  br i1 %tobool.not.i13, label %ehci_qtd_alloc.exit28, label %for.inc.i17

for.inc.i17:                                      ; preds = %for.body.i14
  %inc.i15 = add nuw nsw i32 %i.025.i11, 1
  %exitcond.not.i16 = icmp eq i32 %inc.i15, 32
  br i1 %exitcond.not.i16, label %for.inc.i17.cleanup194.sink.split_crit_edge, label %for.inc.i17.for.body.i14_crit_edge

for.inc.i17.for.body.i14_crit_edge:               ; preds = %for.inc.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i14

for.inc.i17.cleanup194.sink.split_crit_edge:      ; preds = %for.inc.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup194.sink.split

ehci_qtd_alloc.exit28:                            ; preds = %for.body.i14
  %52 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mem.i, align 4
  %arrayidx3.i19 = getelementptr %struct.oxu_onchip_mem, ptr %53, i32 0, i32 3, i32 %i.025.i11
  %54 = call ptr @memset(ptr %arrayidx3.i19, i32 0, i32 96)
  %hw_token.i20 = getelementptr %struct.oxu_onchip_mem, ptr %53, i32 0, i32 3, i32 %i.025.i11, i32 2
  %55 = ptrtoint ptr %hw_token.i20 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1073741824, ptr %hw_token.i20, align 8
  %56 = ptrtoint ptr %arrayidx3.i19 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 16777216, ptr %arrayidx3.i19, align 32
  %hw_alt_next.i21 = getelementptr %struct.oxu_onchip_mem, ptr %53, i32 0, i32 3, i32 %i.025.i11, i32 1
  %57 = ptrtoint ptr %hw_alt_next.i21 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 16777216, ptr %hw_alt_next.i21, align 4
  %qtd_list.i22 = getelementptr %struct.oxu_onchip_mem, ptr %53, i32 0, i32 3, i32 %i.025.i11, i32 6
  %58 = ptrtoint ptr %qtd_list.i22 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %qtd_list.i22, ptr %qtd_list.i22, align 4
  %prev.i.i23 = getelementptr %struct.oxu_onchip_mem, ptr %53, i32 0, i32 3, i32 %i.025.i11, i32 6, i32 1
  %59 = ptrtoint ptr %prev.i.i23 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %qtd_list.i22, ptr %prev.i.i23, align 4
  %60 = ptrtoint ptr %arrayidx3.i19 to i32
  %call.i.i24 = tail call i32 @__virt_to_phys(i32 noundef %60) #9
  %qtd_dma.i25 = getelementptr %struct.oxu_onchip_mem, ptr %53, i32 0, i32 3, i32 %i.025.i11, i32 5
  %61 = ptrtoint ptr %qtd_dma.i25 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call.i.i24, ptr %qtd_dma.i25, align 4
  %62 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %arrayidx.i12, align 1
  tail call void @_raw_spin_unlock(ptr noundef %mem_lock.i) #9
  %tobool25.not = icmp eq ptr %arrayidx3.i19, null
  br i1 %tobool25.not, label %ehci_qtd_alloc.exit28.cleanup194_crit_edge, label %if.end35, !prof !428

ehci_qtd_alloc.exit28.cleanup194_crit_edge:       ; preds = %ehci_qtd_alloc.exit28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup194

if.end35:                                         ; preds = %ehci_qtd_alloc.exit28
  %urb36 = getelementptr %struct.oxu_onchip_mem, ptr %53, i32 0, i32 3, i32 %i.025.i11, i32 7
  %63 = ptrtoint ptr %urb36 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %urb, ptr %urb36, align 32
  %64 = ptrtoint ptr %qtd_dma.i25 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %qtd_dma.i25, align 4
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  %67 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %arrayidx3.i, align 32
  %68 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i, align 4
  %call.i.i30 = tail call zeroext i1 @__list_add_valid(ptr noundef %qtd_list.i22, ptr noundef %69, ptr noundef %head) #9
  br i1 %call.i.i30, label %if.end.i.i32, label %if.end35.list_add_tail.exit33_crit_edge

if.end35.list_add_tail.exit33_crit_edge:          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit33

if.end.i.i32:                                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %qtd_list.i22, ptr %prev.i, align 4
  %71 = ptrtoint ptr %qtd_list.i22 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %head, ptr %qtd_list.i22, align 4
  %72 = ptrtoint ptr %prev.i.i23 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev.i.i23, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %qtd_list.i22, ptr %69, align 4
  br label %list_add_tail.exit33

list_add_tail.exit33:                             ; preds = %if.end.i.i32, %if.end35.list_add_tail.exit33_crit_edge
  %spec.select = select i1 %tobool7.not, i32 -2147480192, i32 -2147480448
  br label %if.end42

if.end42:                                         ; preds = %list_add_tail.exit33, %if.end13.if.end42_crit_edge
  %qtd.0 = phi ptr [ %arrayidx3.i, %if.end13.if.end42_crit_edge ], [ %arrayidx3.i19, %list_add_tail.exit33 ]
  %token.0 = phi i32 [ 3200, %if.end13.if.end42_crit_edge ], [ %spec.select, %list_add_tail.exit33 ]
  %call43 = tail call fastcc i32 @oxu_buf_alloc(ptr noundef %oxu, ptr noundef nonnull %qtd.0, i32 noundef %21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.cleanup194_crit_edge

if.end42.cleanup194_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup194

if.end46:                                         ; preds = %if.end42
  %buffer_dma47 = getelementptr inbounds %struct.ehci_qtd, ptr %qtd.0, i32 0, i32 11
  %74 = ptrtoint ptr %buffer_dma47 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %buffer_dma47, align 16
  %76 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %transfer_buffer, align 4
  br i1 %tobool9.not, label %if.then.i, label %if.else.i37

if.then.i:                                        ; preds = %if.end46
  %buffer51 = getelementptr inbounds %struct.ehci_qtd, ptr %qtd.0, i32 0, i32 10
  %78 = ptrtoint ptr %buffer51 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %buffer51, align 4
  %urb52 = getelementptr inbounds %struct.ehci_qtd, ptr %qtd.0, i32 0, i32 7
  %80 = ptrtoint ptr %urb52 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %urb52, align 32
  %transfer_buffer53 = getelementptr inbounds %struct.urb, ptr %81, i32 0, i32 14
  %82 = ptrtoint ptr %transfer_buffer53 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %transfer_buffer53, align 4
  %84 = call ptr @memcpy(ptr %79, ptr %83, i32 %21)
  %dev157 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %85 = ptrtoint ptr %dev157 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev157, align 4
  %87 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pipe, align 4
  %89 = lshr i32 %88, 15
  %and.i34158 = and i32 %89, 15
  %and24.i159 = and i32 %88, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i159)
  %tobool25.not.i160 = icmp eq i32 %and24.i159, 0
  br i1 %tobool25.not.i160, label %if.then.i.if.end.i_crit_edge, label %do.end.i, !prof !385

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.110, i32 noundef 1981, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %arrayidx.i36 = getelementptr %struct.usb_device, ptr %86, i32 0, i32 22, i32 %and.i34158
  br label %if.end58.i

if.else.i37:                                      ; preds = %if.end46
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %90 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev, align 4
  %92 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %pipe, align 4
  %94 = lshr i32 %93, 15
  %and.i34 = and i32 %94, 15
  %and24.i = and i32 %93, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %do.end43.i, label %if.else.i37.if.end49.i_crit_edge, !prof !428

if.else.i37.if.end49.i_crit_edge:                 ; preds = %if.else.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i

do.end43.i:                                       ; preds = %if.else.i37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.110, i32 noundef 1984, i32 noundef 9, ptr noundef null) #9
  br label %if.end49.i

if.end49.i:                                       ; preds = %do.end43.i, %if.else.i37.if.end49.i_crit_edge
  %arrayidx57.i = getelementptr %struct.usb_device, ptr %91, i32 0, i32 21, i32 %and.i34
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.end49.i, %if.end.i
  %ep.0.in.i = phi ptr [ %arrayidx.i36, %if.end.i ], [ %arrayidx57.i, %if.end49.i ]
  %.pn = shl nuw nsw i32 %and, 1
  %95 = or i32 %token.0, %.pn
  %96 = ptrtoint ptr %ep.0.in.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %ep.0.i = load ptr, ptr %ep.0.in.i, align 4
  %tobool59.not.i = icmp eq ptr %ep.0.i, null
  br i1 %tobool59.not.i, label %if.end58.i.usb_maxpacket.exit_crit_edge, label %if.end61.i

if.end58.i.usb_maxpacket.exit_crit_edge:          ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_maxpacket.exit

if.end61.i:                                       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.0.i, i32 0, i32 4
  %97 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %97, i32 2)
  %98 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %99 = and i16 %98, -249
  %100 = tail call i16 @llvm.bswap.i16(i16 %99) #9
  %phi.cast = zext i16 %100 to i32
  br label %usb_maxpacket.exit

usb_maxpacket.exit:                               ; preds = %if.end61.i, %if.end58.i.usb_maxpacket.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.cast, %if.end61.i ], [ 0, %if.end58.i.usb_maxpacket.exit_crit_edge ]
  %sub71 = add nuw nsw i32 %retval.0.i, 2047
  %async = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 12
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %usb_maxpacket.exit
  %qtd.1 = phi ptr [ %qtd.0, %usb_maxpacket.exit ], [ %call89, %for.cond.backedge ]
  %buf.0 = phi i32 [ %75, %usb_maxpacket.exit ], [ %add, %for.cond.backedge ]
  %len.0 = phi i32 [ %21, %usb_maxpacket.exit ], [ %sub, %for.cond.backedge ]
  %token.2 = phi i32 [ %95, %usb_maxpacket.exit ], [ %spec.select3, %for.cond.backedge ]
  %transfer_buf.0 = phi ptr [ %77, %usb_maxpacket.exit ], [ %add.ptr, %for.cond.backedge ]
  %101 = tail call i32 @llvm.bswap.i32(i32 %buf.0) #9
  %hw_buf.i38 = getelementptr inbounds %struct.ehci_qtd, ptr %qtd.1, i32 0, i32 3
  %102 = ptrtoint ptr %hw_buf.i38 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %hw_buf.i38, align 4
  %hw_buf_hi.i39 = getelementptr inbounds %struct.ehci_qtd, ptr %qtd.1, i32 0, i32 4
  %103 = ptrtoint ptr %hw_buf_hi.i39 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %hw_buf_hi.i39, align 32
  %and.i40 = and i32 %buf.0, 4095
  %sub.i41 = sub nuw nsw i32 4096, %and.i40
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i41, i32 %len.0)
  %cmp.i42 = icmp ugt i32 %sub.i41, %len.0
  br i1 %cmp.i42, label %for.cond.qtd_fill.exit71_crit_edge, label %if.else.i44, !prof !385

for.cond.qtd_fill.exit71_crit_edge:               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %qtd_fill.exit71

if.else.i44:                                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i41, i32 %len.0)
  %cmp762.i43 = icmp ult i32 %sub.i41, %len.0
  br i1 %cmp762.i43, label %for.body.i59, label %if.else.i44.for.end.i62_crit_edge

if.else.i44.for.end.i62_crit_edge:                ; preds = %if.else.i44
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i62

for.body.i59:                                     ; preds = %if.else.i44
  %add.i45 = add i32 %buf.0, 4096
  %and6.i46 = and i32 %add.i45, -4096
  %104 = tail call i32 @llvm.bswap.i32(i32 %and6.i46) #9
  %arrayidx14.i51 = getelementptr %struct.ehci_qtd, ptr %qtd.1, i32 0, i32 3, i32 1
  %105 = ptrtoint ptr %arrayidx14.i51 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %arrayidx14.i51, align 4
  %arrayidx18.i52 = getelementptr %struct.ehci_qtd, ptr %qtd.1, i32 0, i32 4, i32 1
  %106 = ptrtoint ptr %arrayidx18.i52 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %arrayidx18.i52, align 4
  %add20.i54 = sub nuw nsw i32 8192, %and.i40
  %107 = tail call i32 @llvm.umin.i32(i32 %add20.i54, i32 %len.0) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %add20.i54, i32 %len.0)
  %cmp7.i56 = icmp ult i32 %add20.i54, %len.0
  br i1 %cmp7.i56, label %for.body.i59.1, label %for.body.i59.for.end.i62_crit_edge

for.body.i59.for.end.i62_crit_edge:               ; preds = %for.body.i59
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i62

for.body.i59.1:                                   ; preds = %for.body.i59
  %add19.i53 = add i32 %and6.i46, 4096
  %108 = tail call i32 @llvm.bswap.i32(i32 %add19.i53) #9
  %arrayidx14.i51.1 = getelementptr %struct.ehci_qtd, ptr %qtd.1, i32 0, i32 3, i32 2
  %109 = ptrtoint ptr %arrayidx14.i51.1 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %arrayidx14.i51.1, align 4
  %arrayidx18.i52.1 = getelementptr %struct.ehci_qtd, ptr %qtd.1, i32 0, i32 4, i32 2
  %110 = ptrtoint ptr %arrayidx18.i52.1 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %arrayidx18.i52.1, align 4
  %add20.i54.1 = add nuw nsw i32 %107, 4096
  %111 = tail call i32 @llvm.umin.i32(i32 %add20.i54.1, i32 %len.0) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %add20.i54.1, i32 %len.0)
  %cmp7.i56.1 = icmp ult i32 %add20.i54.1, %len.0
  br i1 %cmp7.i56.1, label %for.body.i59.2, label %for.body.i59.1.for.end.i62_crit_edge

for.body.i59.1.for.end.i62_crit_edge:             ; preds = %for.body.i59.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i62

for.body.i59.2:                                   ; preds = %for.body.i59.1
  %add19.i53.1 = add i32 %and6.i46, 8192
  %112 = tail call i32 @llvm.bswap.i32(i32 %add19.i53.1) #9
  %arrayidx14.i51.2 = getelementptr %struct.ehci_qtd, ptr %qtd.1, i32 0, i32 3, i32 3
  %113 = ptrtoint ptr %arrayidx14.i51.2 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %arrayidx14.i51.2, align 4
  %arrayidx18.i52.2 = getelementptr %struct.ehci_qtd, ptr %qtd.1, i32 0, i32 4, i32 3
  %114 = ptrtoint ptr %arrayidx18.i52.2 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %arrayidx18.i52.2, align 4
  %add20.i54.2 = add nuw nsw i32 %111, 4096
  %115 = tail call i32 @llvm.umin.i32(i32 %add20.i54.2, i32 %len.0) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %add20.i54.2, i32 %len.0)
  %cmp7.i56.2 = icmp ult i32 %add20.i54.2, %len.0
  br i1 %cmp7.i56.2, label %for.body.i59.3, label %for.body.i59.2.for.end.i62_crit_edge

for.body.i59.2.for.end.i62_crit_edge:             ; preds = %for.body.i59.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i62

for.body.i59.3:                                   ; preds = %for.body.i59.2
  call void @__sanitizer_cov_trace_pc() #11
  %add19.i53.2 = add i32 %and6.i46, 12288
  %116 = tail call i32 @llvm.bswap.i32(i32 %add19.i53.2) #9
  %arrayidx14.i51.3 = getelementptr %struct.ehci_qtd, ptr %qtd.1, i32 0, i32 3, i32 4
  %117 = ptrtoint ptr %arrayidx14.i51.3 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %arrayidx14.i51.3, align 4
  %arrayidx18.i52.3 = getelementptr %struct.ehci_qtd, ptr %qtd.1, i32 0, i32 4, i32 4
  %118 = ptrtoint ptr %arrayidx18.i52.3 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %arrayidx18.i52.3, align 4
  %add20.i54.3 = add i32 %115, 4096
  %119 = tail call i32 @llvm.umin.i32(i32 %add20.i54.3, i32 %len.0) #9
  br label %for.end.i62

for.end.i62:                                      ; preds = %for.body.i59.3, %for.body.i59.2.for.end.i62_crit_edge, %for.body.i59.1.for.end.i62_crit_edge, %for.body.i59.for.end.i62_crit_edge, %if.else.i44.for.end.i62_crit_edge
  %count.0.lcssa.i60 = phi i32 [ %sub.i41, %if.else.i44.for.end.i62_crit_edge ], [ %107, %for.body.i59.for.end.i62_crit_edge ], [ %111, %for.body.i59.1.for.end.i62_crit_edge ], [ %115, %for.body.i59.2.for.end.i62_crit_edge ], [ %119, %for.body.i59.3 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0.lcssa.i60, i32 %len.0)
  %cmp26.not.i61 = icmp eq i32 %count.0.lcssa.i60, %len.0
  br i1 %cmp26.not.i61, label %for.end.i62.qtd_fill.exit71_crit_edge, label %if.then28.i65

for.end.i62.qtd_fill.exit71_crit_edge:            ; preds = %for.end.i62
  call void @__sanitizer_cov_trace_pc() #11
  br label %qtd_fill.exit71

if.then28.i65:                                    ; preds = %for.end.i62
  call void @__sanitizer_cov_trace_pc() #11
  %rem.i63 = srem i32 %count.0.lcssa.i60, %retval.0.i
  %sub29.i64 = sub i32 %count.0.lcssa.i60, %rem.i63
  br label %qtd_fill.exit71

qtd_fill.exit71:                                  ; preds = %if.then28.i65, %for.end.i62.qtd_fill.exit71_crit_edge, %for.cond.qtd_fill.exit71_crit_edge
  %count.2.i66 = phi i32 [ %sub29.i64, %if.then28.i65 ], [ %len.0, %for.end.i62.qtd_fill.exit71_crit_edge ], [ %len.0, %for.cond.qtd_fill.exit71_crit_edge ]
  %shl.i67 = shl i32 %count.2.i66, 16
  %or.i68 = or i32 %shl.i67, %token.2
  %120 = tail call i32 @llvm.bswap.i32(i32 %or.i68) #9
  %hw_token.i69 = getelementptr inbounds %struct.ehci_qtd, ptr %qtd.1, i32 0, i32 2
  %121 = ptrtoint ptr %hw_token.i69 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %hw_token.i69, align 8
  %length.i70 = getelementptr inbounds %struct.ehci_qtd, ptr %qtd.1, i32 0, i32 8
  %122 = ptrtoint ptr %length.i70 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %count.2.i66, ptr %length.i70, align 4
  %transfer_buffer66 = getelementptr inbounds %struct.ehci_qtd, ptr %qtd.1, i32 0, i32 12
  %123 = ptrtoint ptr %transfer_buffer66 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %transfer_buf.0, ptr %transfer_buffer66, align 4
  %sub = sub i32 %len.0, %count.2.i66
  %add = add i32 %count.2.i66, %buf.0
  %add.ptr = getelementptr i8, ptr %transfer_buf.0, i32 %count.2.i66
  br i1 %tobool9.not, label %qtd_fill.exit71.if.end70_crit_edge, label %if.then68

qtd_fill.exit71.if.end70_crit_edge:               ; preds = %qtd_fill.exit71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then68:                                        ; preds = %qtd_fill.exit71
  call void @__sanitizer_cov_trace_pc() #11
  %124 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %async, align 4
  %hw_alt_next = getelementptr inbounds %struct.ehci_qh, ptr %125, i32 0, i32 5
  %126 = ptrtoint ptr %hw_alt_next to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %hw_alt_next, align 4
  %hw_alt_next69 = getelementptr inbounds %struct.ehci_qtd, ptr %qtd.1, i32 0, i32 1
  %128 = ptrtoint ptr %hw_alt_next69 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %hw_alt_next69, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %qtd_fill.exit71.if.end70_crit_edge
  %add72 = add i32 %sub71, %count.2.i66
  %and73 = and i32 %add72, %retval.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %cmp74 = icmp eq i32 %and73, 0
  %xor77 = xor i32 %token.2, -2147483648
  %spec.select3 = select i1 %cmp74, i32 %xor77, i32 %token.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp79 = icmp slt i32 %sub, 1
  br i1 %cmp79, label %for.end, label %if.end88, !prof !385

if.end88:                                         ; preds = %if.end70
  %call89 = tail call fastcc ptr @ehci_qtd_alloc(ptr noundef %oxu)
  %tobool90.not = icmp eq ptr %call89, null
  br i1 %tobool90.not, label %if.end88.cleanup194_crit_edge, label %if.then109, !prof !428

if.end88.cleanup194_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup194

if.then109:                                       ; preds = %if.end88
  %call110 = tail call fastcc i32 @oxu_buf_alloc(ptr noundef %oxu, ptr noundef nonnull %call89, i32 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end114, label %if.then109.cleanup194_crit_edge

if.then109.cleanup194_crit_edge:                  ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup194

if.end114:                                        ; preds = %if.then109
  %urb115 = getelementptr inbounds %struct.ehci_qtd, ptr %call89, i32 0, i32 7
  %129 = ptrtoint ptr %urb115 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %urb, ptr %urb115, align 32
  %qtd_dma116 = getelementptr inbounds %struct.ehci_qtd, ptr %call89, i32 0, i32 5
  %130 = ptrtoint ptr %qtd_dma116 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %qtd_dma116, align 4
  %132 = tail call i32 @llvm.bswap.i32(i32 %131)
  %133 = ptrtoint ptr %qtd.1 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %qtd.1, align 32
  %qtd_list118 = getelementptr inbounds %struct.ehci_qtd, ptr %call89, i32 0, i32 6
  %134 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %prev.i, align 4
  %call.i.i73 = tail call zeroext i1 @__list_add_valid(ptr noundef %qtd_list118, ptr noundef %135, ptr noundef %head) #9
  br i1 %call.i.i73, label %if.end.i.i75, label %if.end114.for.cond.backedge_crit_edge

if.end114.for.cond.backedge_crit_edge:            ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge

if.end.i.i75:                                     ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  %136 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %qtd_list118, ptr %prev.i, align 4
  %137 = ptrtoint ptr %qtd_list118 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %head, ptr %qtd_list118, align 4
  %prev3.i.i74 = getelementptr inbounds %struct.ehci_qtd, ptr %call89, i32 0, i32 6, i32 1
  %138 = ptrtoint ptr %prev3.i.i74 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %135, ptr %prev3.i.i74, align 4
  %139 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %qtd_list118, ptr %135, align 4
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end.i.i75, %if.end114.for.cond.backedge_crit_edge
  br label %for.cond

for.end:                                          ; preds = %if.end70
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 13
  %140 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %transfer_flags, align 4
  %and119 = and i32 %141, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %cmp120 = icmp eq i32 %and119, 0
  br i1 %cmp120, label %for.end.if.then133_crit_edge, label %lor.rhs

for.end.if.then133_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then133

lor.rhs:                                          ; preds = %for.end
  %142 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %pipe, align 4
  %shr123.mask = and i32 %143, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr123.mask)
  %cmp125 = icmp eq i32 %shr123.mask, -2147483648
  br i1 %cmp125, label %lor.rhs.if.then133_crit_edge, label %lor.rhs.if.end135_crit_edge, !prof !385

lor.rhs.if.end135_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end135

lor.rhs.if.then133_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then133

if.then133:                                       ; preds = %lor.rhs.if.then133_crit_edge, %for.end.if.then133_crit_edge
  %hw_alt_next134 = getelementptr inbounds %struct.ehci_qtd, ptr %qtd.1, i32 0, i32 1
  %144 = ptrtoint ptr %hw_alt_next134 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 16777216, ptr %hw_alt_next134, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.then133, %lor.rhs.if.end135_crit_edge
  %145 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %transfer_buffer_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp137.not = icmp eq i32 %146, 0
  br i1 %cmp137.not, label %if.end135.if.end192_crit_edge, label %if.then145, !prof !428

if.end135.if.end192_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end192

if.then145:                                       ; preds = %if.end135
  %147 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %pipe, align 4
  %shr147 = lshr i32 %148, 30
  %149 = zext i32 %shr147 to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %shr147, label %if.then145.if.end192_crit_edge [
    i32 2, label %if.end168.thread123
    i32 3, label %land.lhs.true159
  ]

if.then145.if.end192_crit_edge:                   ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end192

if.end168.thread123:                              ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #11
  %150 = and i32 %spec.select3, 2147483647
  %or153 = xor i32 %150, -2147483392
  br label %if.then170

land.lhs.true159:                                 ; preds = %if.then145
  %151 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %transfer_flags, align 4
  %and161 = and i32 %152, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %land.lhs.true159.if.end192_crit_edge, label %if.end168

land.lhs.true159.if.end192_crit_edge:             ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end192

if.end168:                                        ; preds = %land.lhs.true159
  %rem = urem i32 %146, %retval.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool165.not.not = icmp eq i32 %rem, 0
  br i1 %tobool165.not.not, label %if.end168.if.then170_crit_edge, label %if.end168.if.end192_crit_edge

if.end168.if.end192_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end192

if.end168.if.then170_crit_edge:                   ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then170

if.then170:                                       ; preds = %if.end168.if.then170_crit_edge, %if.end168.thread123
  %token.4126 = phi i32 [ %or153, %if.end168.thread123 ], [ %spec.select3, %if.end168.if.then170_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %mem_lock.i) #9
  br label %for.body.i81

for.body.i81:                                     ; preds = %for.inc.i84.for.body.i81_crit_edge, %if.then170
  %i.025.i78 = phi i32 [ 0, %if.then170 ], [ %inc.i82, %for.inc.i84.for.body.i81_crit_edge ]
  %arrayidx.i79 = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 2, i32 %i.025.i78
  %153 = ptrtoint ptr %arrayidx.i79 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx.i79, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool.not.i80 = icmp eq i8 %154, 0
  br i1 %tobool.not.i80, label %ehci_qtd_alloc.exit95, label %for.inc.i84

for.inc.i84:                                      ; preds = %for.body.i81
  %inc.i82 = add nuw nsw i32 %i.025.i78, 1
  %exitcond.not.i83 = icmp eq i32 %inc.i82, 32
  br i1 %exitcond.not.i83, label %for.inc.i84.cleanup194.sink.split_crit_edge, label %for.inc.i84.for.body.i81_crit_edge

for.inc.i84.for.body.i81_crit_edge:               ; preds = %for.inc.i84
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i81

for.inc.i84.cleanup194.sink.split_crit_edge:      ; preds = %for.inc.i84
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup194.sink.split

ehci_qtd_alloc.exit95:                            ; preds = %for.body.i81
  %155 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %mem.i, align 4
  %arrayidx3.i86 = getelementptr %struct.oxu_onchip_mem, ptr %156, i32 0, i32 3, i32 %i.025.i78
  %157 = call ptr @memset(ptr %arrayidx3.i86, i32 0, i32 96)
  %hw_token.i87 = getelementptr %struct.oxu_onchip_mem, ptr %156, i32 0, i32 3, i32 %i.025.i78, i32 2
  %158 = ptrtoint ptr %hw_token.i87 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 1073741824, ptr %hw_token.i87, align 8
  %159 = ptrtoint ptr %arrayidx3.i86 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 16777216, ptr %arrayidx3.i86, align 32
  %hw_alt_next.i88 = getelementptr %struct.oxu_onchip_mem, ptr %156, i32 0, i32 3, i32 %i.025.i78, i32 1
  %160 = ptrtoint ptr %hw_alt_next.i88 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 16777216, ptr %hw_alt_next.i88, align 4
  %qtd_list.i89 = getelementptr %struct.oxu_onchip_mem, ptr %156, i32 0, i32 3, i32 %i.025.i78, i32 6
  %161 = ptrtoint ptr %qtd_list.i89 to i32
  call void @__asan_store4_noabort(i32 %161)
  store volatile ptr %qtd_list.i89, ptr %qtd_list.i89, align 4
  %prev.i.i90 = getelementptr %struct.oxu_onchip_mem, ptr %156, i32 0, i32 3, i32 %i.025.i78, i32 6, i32 1
  %162 = ptrtoint ptr %prev.i.i90 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %qtd_list.i89, ptr %prev.i.i90, align 4
  %163 = ptrtoint ptr %arrayidx3.i86 to i32
  %call.i.i91 = tail call i32 @__virt_to_phys(i32 noundef %163) #9
  %qtd_dma.i92 = getelementptr %struct.oxu_onchip_mem, ptr %156, i32 0, i32 3, i32 %i.025.i78, i32 5
  %164 = ptrtoint ptr %qtd_dma.i92 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %call.i.i91, ptr %qtd_dma.i92, align 4
  %165 = ptrtoint ptr %arrayidx.i79 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 1, ptr %arrayidx.i79, align 1
  tail call void @_raw_spin_unlock(ptr noundef %mem_lock.i) #9
  %tobool172.not = icmp eq ptr %arrayidx3.i86, null
  br i1 %tobool172.not, label %ehci_qtd_alloc.exit95.cleanup194_crit_edge, label %if.end182, !prof !428

ehci_qtd_alloc.exit95.cleanup194_crit_edge:       ; preds = %ehci_qtd_alloc.exit95
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup194

if.end182:                                        ; preds = %ehci_qtd_alloc.exit95
  %urb183 = getelementptr %struct.oxu_onchip_mem, ptr %156, i32 0, i32 3, i32 %i.025.i78, i32 7
  %166 = ptrtoint ptr %urb183 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %urb, ptr %urb183, align 32
  %167 = ptrtoint ptr %qtd_dma.i92 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %qtd_dma.i92, align 4
  %169 = tail call i32 @llvm.bswap.i32(i32 %168)
  %170 = ptrtoint ptr %qtd.1 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %qtd.1, align 32
  %171 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %prev.i, align 4
  %call.i.i97 = tail call zeroext i1 @__list_add_valid(ptr noundef %qtd_list.i89, ptr noundef %172, ptr noundef %head) #9
  br i1 %call.i.i97, label %if.end.i.i99, label %if.end182.list_add_tail.exit100_crit_edge

if.end182.list_add_tail.exit100_crit_edge:        ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit100

if.end.i.i99:                                     ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #11
  %173 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %qtd_list.i89, ptr %prev.i, align 4
  %174 = ptrtoint ptr %qtd_list.i89 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %head, ptr %qtd_list.i89, align 4
  %175 = ptrtoint ptr %prev.i.i90 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %172, ptr %prev.i.i90, align 4
  %176 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %176)
  store volatile ptr %qtd_list.i89, ptr %172, align 4
  br label %list_add_tail.exit100

list_add_tail.exit100:                            ; preds = %if.end.i.i99, %if.end182.list_add_tail.exit100_crit_edge
  %hw_buf.i101 = getelementptr %struct.oxu_onchip_mem, ptr %156, i32 0, i32 3, i32 %i.025.i78, i32 3
  %177 = ptrtoint ptr %hw_buf.i101 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 0, ptr %hw_buf.i101, align 4
  %hw_buf_hi.i102 = getelementptr %struct.oxu_onchip_mem, ptr %156, i32 0, i32 3, i32 %i.025.i78, i32 4
  %178 = ptrtoint ptr %hw_buf_hi.i102 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 0, ptr %hw_buf_hi.i102, align 32
  %179 = tail call i32 @llvm.bswap.i32(i32 %token.4126) #9
  %180 = ptrtoint ptr %hw_token.i87 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %hw_token.i87, align 8
  %length.i107 = getelementptr %struct.oxu_onchip_mem, ptr %156, i32 0, i32 3, i32 %i.025.i78, i32 8
  %181 = ptrtoint ptr %length.i107 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 0, ptr %length.i107, align 4
  br label %if.end192

if.end192:                                        ; preds = %list_add_tail.exit100, %if.end168.if.end192_crit_edge, %land.lhs.true159.if.end192_crit_edge, %if.then145.if.end192_crit_edge, %if.end135.if.end192_crit_edge
  %qtd.5 = phi ptr [ %qtd.1, %if.end135.if.end192_crit_edge ], [ %qtd.1, %if.end168.if.end192_crit_edge ], [ %arrayidx3.i86, %list_add_tail.exit100 ], [ %qtd.1, %land.lhs.true159.if.end192_crit_edge ], [ %qtd.1, %if.then145.if.end192_crit_edge ]
  %hw_token = getelementptr inbounds %struct.ehci_qtd, ptr %qtd.5, i32 0, i32 2
  %182 = ptrtoint ptr %hw_token to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %hw_token, align 8
  %or193 = or i32 %183, 8388608
  store i32 %or193, ptr %hw_token, align 8
  br label %cleanup195

cleanup194.sink.split:                            ; preds = %for.inc.i84.cleanup194.sink.split_crit_edge, %for.inc.i17.cleanup194.sink.split_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mem_lock.i) #9
  br label %cleanup194

cleanup194:                                       ; preds = %cleanup194.sink.split, %ehci_qtd_alloc.exit95.cleanup194_crit_edge, %if.then109.cleanup194_crit_edge, %if.end88.cleanup194_crit_edge, %if.end42.cleanup194_crit_edge, %ehci_qtd_alloc.exit28.cleanup194_crit_edge, %if.then16.cleanup194_crit_edge
  tail call fastcc void @qtd_list_free(ptr noundef %oxu, ptr noundef %head)
  br label %cleanup195

cleanup195:                                       ; preds = %cleanup194, %if.end192, %ehci_qtd_alloc.exit.cleanup195_crit_edge, %ehci_qtd_alloc.exit.thread
  %retval.0 = phi ptr [ null, %cleanup194 ], [ %head, %if.end192 ], [ null, %ehci_qtd_alloc.exit.cleanup195_crit_edge ], [ null, %ehci_qtd_alloc.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @oxu_buf_alloc(ptr noundef %oxu, ptr nocapture noundef writeonly %qtd, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %len)
  %cmp = icmp sgt i32 %len, 4096
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %oxu, i32 -600
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.108, i32 noundef %len) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mem_lock = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %mem_lock) #9
  %sub = add nsw i32 %len, 511
  %div = sdiv i32 %sub, 512
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.end
  %a_blocks.0 = phi i32 [ 1, %if.end ], [ %shl, %for.cond.for.cond_crit_edge ]
  %cmp1 = icmp slt i32 %a_blocks.0, %div
  %shl = shl i32 %a_blocks.0, 1
  br i1 %cmp1, label %for.cond.for.cond_crit_edge, label %for.cond2.preheader

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.cond2.preheader:                              ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %a_blocks.0)
  %cmp663 = icmp sgt i32 %a_blocks.0, 0
  br label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.inc22.for.cond5.preheader_crit_edge, %for.cond2.preheader
  %i.066 = phi i32 [ 0, %for.cond2.preheader ], [ %add28, %for.inc22.for.cond5.preheader_crit_edge ]
  br i1 %cmp663, label %for.cond5.preheader.for.body7_crit_edge, label %for.cond5.preheader.for.end12_crit_edge

for.cond5.preheader.for.end12_crit_edge:          ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end12

for.cond5.preheader.for.body7_crit_edge:          ; preds = %for.cond5.preheader
  br label %for.body7

for.body7:                                        ; preds = %for.inc11.for.body7_crit_edge, %for.cond5.preheader.for.body7_crit_edge
  %j.064 = phi i32 [ %inc, %for.inc11.for.body7_crit_edge ], [ 0, %for.cond5.preheader.for.body7_crit_edge ]
  %add8 = add i32 %j.064, %i.066
  %arrayidx = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 3, i32 %add8
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %for.inc11, label %for.body7.for.end12_crit_edge

for.body7.for.end12_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end12

for.inc11:                                        ; preds = %for.body7
  %inc = add nuw nsw i32 %j.064, 1
  %exitcond.not = icmp eq i32 %inc, %a_blocks.0
  br i1 %exitcond.not, label %for.inc11.if.end15_crit_edge, label %for.inc11.for.body7_crit_edge

for.inc11.for.body7_crit_edge:                    ; preds = %for.inc11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body7

for.inc11.if.end15_crit_edge:                     ; preds = %for.inc11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

for.end12:                                        ; preds = %for.body7.for.end12_crit_edge, %for.cond5.preheader.for.end12_crit_edge
  %j.0.lcssa = phi i32 [ 0, %for.cond5.preheader.for.end12_crit_edge ], [ %j.064, %for.body7.for.end12_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa, i32 %a_blocks.0)
  %cmp13.not = icmp eq i32 %j.0.lcssa, %a_blocks.0
  br i1 %cmp13.not, label %for.end12.if.end15_crit_edge, label %for.inc22

for.end12.if.end15_crit_edge:                     ; preds = %for.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end15:                                         ; preds = %for.end12.if.end15_crit_edge, %for.inc11.if.end15_crit_edge
  %mem = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 5
  %4 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem, align 4
  %arrayidx16 = getelementptr [8 x %struct.oxu_buf], ptr %5, i32 0, i32 %i.066
  %buffer = getelementptr inbounds %struct.ehci_qtd, ptr %qtd, i32 0, i32 10
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx16, ptr %buffer, align 4
  %7 = ptrtoint ptr %arrayidx16 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %7) #9
  %buffer_dma = getelementptr inbounds %struct.ehci_qtd, ptr %qtd, i32 0, i32 11
  %8 = ptrtoint ptr %buffer_dma to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.i, ptr %buffer_dma, align 16
  %mul = shl i32 %a_blocks.0, 9
  %qtd_buffer_len = getelementptr inbounds %struct.ehci_qtd, ptr %qtd, i32 0, i32 9
  %9 = ptrtoint ptr %qtd_buffer_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul, ptr %qtd_buffer_len, align 8
  %conv = trunc i32 %a_blocks.0 to i8
  %arrayidx20 = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 3, i32 %i.066
  %10 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx20, align 1
  tail call void @_raw_spin_unlock(ptr noundef %mem_lock) #9
  br label %cleanup

for.inc22:                                        ; preds = %for.end12
  %arrayidx24 = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 3, i32 %i.066
  %11 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %12 to i32
  %13 = tail call i32 @llvm.smax.i32(i32 %a_blocks.0, i32 %conv25)
  %add28 = add i32 %13, %i.066
  %cmp3 = icmp slt i32 %add28, 8
  br i1 %cmp3, label %for.inc22.for.cond5.preheader_crit_edge, label %for.end29

for.inc22.for.cond5.preheader_crit_edge:          ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond5.preheader

for.end29:                                        ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %mem_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end29, %if.end15, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end15 ], [ -12, %for.end29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qtd_list_free(ptr noundef %oxu, ptr noundef readonly %head) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 4
  %cmp.not2 = icmp eq ptr %1, %head
  br i1 %cmp.not2, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mem_lock.i.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 6
  %mem.i.i = getelementptr inbounds %struct.oxu_hcd, ptr %oxu, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %oxu_qtd_free.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in3 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn, %oxu_qtd_free.exit.for.body_crit_edge ]
  %qtd.0 = getelementptr i8, ptr %.pn.in3, i32 -56
  %2 = ptrtoint ptr %.pn.in3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in3, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in3) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in3, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in3, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %buffer.i = getelementptr i8, ptr %.pn.in3, i32 20
  %11 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %list_del.exit.oxu_qtd_free.exit_crit_edge, label %if.then.i

list_del.exit.oxu_qtd_free.exit_crit_edge:        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %oxu_qtd_free.exit

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_lock(ptr noundef %mem_lock.i.i) #9
  %13 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffer.i, align 4
  %15 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mem.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %div.i.i = sdiv i32 %sub.ptr.sub.i.i, 512
  %arrayidx1.i.i = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 3, i32 %div.i.i
  %17 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx1.i.i, align 1
  %qtd_buffer_len.i.i = getelementptr i8, ptr %.pn.in3, i32 16
  %18 = ptrtoint ptr %qtd_buffer_len.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %qtd_buffer_len.i.i, align 8
  %buffer_dma.i.i = getelementptr i8, ptr %.pn.in3, i32 24
  %19 = ptrtoint ptr %buffer_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %buffer_dma.i.i, align 16
  store ptr null, ptr %buffer.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %mem_lock.i.i) #9
  br label %oxu_qtd_free.exit

oxu_qtd_free.exit:                                ; preds = %if.then.i, %list_del.exit.oxu_qtd_free.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %mem_lock.i.i) #9
  %20 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mem.i.i, align 4
  %qtd_pool.i = getelementptr inbounds %struct.oxu_onchip_mem, ptr %21, i32 0, i32 3
  %sub.ptr.lhs.cast.i = ptrtoint ptr %qtd.0 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %qtd_pool.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 96
  %arrayidx1.i = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 2, i32 %sub.ptr.div.i
  %22 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx1.i, align 1
  tail call void @_raw_spin_unlock(ptr noundef %mem_lock.i.i) #9
  %cmp.not = icmp eq ptr %.pn, %head
  br i1 %cmp.not, label %oxu_qtd_free.exit.for.end_crit_edge, label %oxu_qtd_free.exit.for.body_crit_edge

oxu_qtd_free.exit.for.body_crit_edge:             ; preds = %oxu_qtd_free.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

oxu_qtd_free.exit.for.end_crit_edge:              ; preds = %oxu_qtd_free.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %oxu_qtd_free.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @qh_append_tds(ptr noundef %oxu, ptr nocapture noundef %urb, ptr noundef %qtd_list, i32 noundef %epnum, ptr nocapture noundef %ptr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.end, label %entry.if.then9_crit_edge, !prof !428

entry.if.then9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.end:                                           ; preds = %entry
  %call = tail call fastcc ptr @qh_make(ptr noundef %oxu, ptr noundef %urb)
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %ptr, align 4
  %cmp2.not = icmp eq ptr %call, null
  br i1 %cmp2.not, label %if.end.if.end63_crit_edge, label %if.end.if.then9_crit_edge, !prof !428

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.end.if.end63_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then9:                                         ; preds = %if.end.if.then9_crit_edge, %entry.if.then9_crit_edge
  %qh.0101 = phi ptr [ %call, %if.end.if.then9_crit_edge ], [ %1, %entry.if.then9_crit_edge ]
  %3 = ptrtoint ptr %qtd_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %qtd_list, align 4
  %cmp.i.not = icmp eq ptr %4, %qtd_list
  %add.ptr = getelementptr i8, ptr %4, i32 -56
  %spec.select = select i1 %cmp.i.not, ptr null, ptr %add.ptr, !prof !428
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %epnum)
  %cmp20 = icmp eq i32 %epnum, 0
  br i1 %cmp20, label %if.then27, label %if.then9.if.end32_crit_edge, !prof !428

if.then9.if.end32_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then27:                                        ; preds = %if.then9
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %5 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pipe, align 4
  %7 = and i32 %6, 32512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp28 = icmp eq i32 %7, 0
  br i1 %cmp28, label %if.then29, label %if.then27.if.end32_crit_edge

if.then27.if.end32_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then29:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  %hw_info1 = getelementptr inbounds %struct.ehci_qh, ptr %qh.0101, i32 0, i32 1
  %8 = ptrtoint ptr %hw_info1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hw_info1, align 4
  %and30 = and i32 %9, -2130706433
  store i32 %and30, ptr %hw_info1, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.then27.if.end32_crit_edge, %if.then9.if.end32_crit_edge
  %cmp33.not = icmp eq ptr %spec.select, null
  br i1 %cmp33.not, label %if.end32.if.end63_crit_edge, label %if.then40, !prof !428

if.end32.if.end63_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then40:                                        ; preds = %if.end32
  %hw_token = getelementptr inbounds %struct.ehci_qtd, ptr %spec.select, i32 0, i32 2
  %10 = ptrtoint ptr %hw_token to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_token, align 8
  store i32 1073741824, ptr %hw_token, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !482
  tail call void @arm_heavy_mb() #9
  %dummy42 = getelementptr inbounds %struct.ehci_qh, ptr %qh.0101, i32 0, i32 12
  %12 = ptrtoint ptr %dummy42 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dummy42, align 4
  %qtd_dma = getelementptr inbounds %struct.ehci_qtd, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %qtd_dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qtd_dma, align 4
  %16 = call ptr @memcpy(ptr %13, ptr %spec.select, i32 96)
  store i32 %15, ptr %qtd_dma, align 4
  %qtd_list44 = getelementptr inbounds %struct.ehci_qtd, ptr %spec.select, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %qtd_list44) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then40.list_del.exit_crit_edge

if.then40.list_del.exit_crit_edge:                ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.ehci_qtd, ptr %spec.select, i32 0, i32 6, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %qtd_list44 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qtd_list44, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then40.list_del.exit_crit_edge
  %23 = ptrtoint ptr %qtd_list44 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %qtd_list44, align 4
  %prev.i = getelementptr inbounds %struct.ehci_qtd, ptr %spec.select, i32 0, i32 6, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %qtd_list45 = getelementptr inbounds %struct.ehci_qtd, ptr %13, i32 0, i32 6
  %25 = ptrtoint ptr %qtd_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %qtd_list, align 4
  %call.i.i95 = tail call zeroext i1 @__list_add_valid(ptr noundef %qtd_list45, ptr noundef %qtd_list, ptr noundef %26) #9
  br i1 %call.i.i95, label %if.end.i.i96, label %list_del.exit.list_add.exit_crit_edge

list_del.exit.list_add.exit_crit_edge:            ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i96:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %qtd_list45, ptr %prev1.i.i, align 4
  %28 = ptrtoint ptr %qtd_list45 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %qtd_list45, align 4
  %prev3.i.i = getelementptr inbounds %struct.ehci_qtd, ptr %13, i32 0, i32 6, i32 1
  %29 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %qtd_list, ptr %prev3.i.i, align 4
  %30 = ptrtoint ptr %qtd_list to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %qtd_list45, ptr %qtd_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i96, %list_del.exit.list_add.exit_crit_edge
  %prev = getelementptr inbounds %struct.ehci_qh, ptr %qh.0101, i32 0, i32 11, i32 1
  %31 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev, align 4
  %33 = ptrtoint ptr %qtd_list to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %qtd_list, align 4
  %cmp.i.not.i = icmp eq ptr %34, %qtd_list
  br i1 %cmp.i.not.i, label %list_add.exit.list_splice.exit_crit_edge, label %if.then.i

list_add.exit.list_splice.exit_crit_edge:         ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice.exit

if.then.i:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %qtd_list, i32 0, i32 1
  %37 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i97 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i97 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %32, ptr %prev3.i.i97, align 4
  store ptr %34, ptr %32, align 4
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %36, ptr %38, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %41 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev6.i.i, align 4
  br label %list_splice.exit

list_splice.exit:                                 ; preds = %if.then.i, %list_add.exit.list_splice.exit_crit_edge
  %qtd_dma47 = getelementptr inbounds %struct.ehci_qtd, ptr %spec.select, i32 0, i32 5
  %42 = ptrtoint ptr %qtd_dma47 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %qtd_dma47, align 4
  %44 = call ptr @memset(ptr %spec.select, i32 0, i32 96)
  store i32 %43, ptr %qtd_dma47, align 4
  %45 = ptrtoint ptr %hw_token to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1073741824, ptr %hw_token, align 8
  %46 = ptrtoint ptr %spec.select to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 16777216, ptr %spec.select, align 32
  %hw_alt_next.i = getelementptr inbounds %struct.ehci_qtd, ptr %spec.select, i32 0, i32 1
  %47 = ptrtoint ptr %hw_alt_next.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 16777216, ptr %hw_alt_next.i, align 4
  %48 = ptrtoint ptr %qtd_list44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %qtd_list44, ptr %qtd_list44, align 4
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %qtd_list44, ptr %prev.i, align 4
  %50 = ptrtoint ptr %dummy42 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %spec.select, ptr %dummy42, align 4
  %51 = load i32, ptr %qtd_dma47, align 4
  %52 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev, align 4
  %add.ptr54 = getelementptr i8, ptr %53, i32 -56
  %54 = tail call i32 @llvm.bswap.i32(i32 %51)
  %55 = ptrtoint ptr %add.ptr54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %add.ptr54, align 32
  %and55 = and i32 %11, -129
  %hw_token56 = getelementptr inbounds %struct.ehci_qtd, ptr %13, i32 0, i32 2
  %56 = ptrtoint ptr %hw_token56 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and55, ptr %hw_token56, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !483
  tail call void @arm_heavy_mb() #9
  %57 = ptrtoint ptr %hw_token56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %11, ptr %hw_token56, align 8
  %kref.i = getelementptr inbounds %struct.ehci_qh, ptr %qh.0101, i32 0, i32 15
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #9
  %58 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #9, !srcloc !442
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %list_splice.exit.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !428

list_splice.exit.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %list_splice.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %list_splice.exit
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %59 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %59)
  %.not.i.i.i.i.i = icmp sgt i32 %59, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.qh_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !385

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.qh_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qh_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %list_splice.exit.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %list_splice.exit.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %qh_get.exit

qh_get.exit:                                      ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.qh_get.exit_crit_edge
  %hcpriv = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %60 = ptrtoint ptr %hcpriv to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %qh.0101, ptr %hcpriv, align 4
  br label %if.end63

if.end63:                                         ; preds = %qh_get.exit, %if.end32.if.end63_crit_edge, %if.end.if.end63_crit_edge
  %qh.0102 = phi ptr [ %qh.0101, %if.end32.if.end63_crit_edge ], [ %qh.0101, %qh_get.exit ], [ null, %if.end.if.end63_crit_edge ]
  ret ptr %qh.0102
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @qh_make(ptr noundef %oxu, ptr nocapture noundef readonly %urb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @oxu_qh_alloc(ptr noundef %oxu)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pipe, align 4
  %2 = lshr i32 %1, 7
  %shl = and i32 %2, 3840
  %shr2 = lshr i32 %1, 8
  %and3 = and i32 %shr2, 127
  %or5 = or i32 %shl, %and3
  %and7 = and i32 %1, 128
  %shr9 = lshr i32 %1, 30
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool12.not = icmp eq i32 %and7, 0
  %and7.lobit = lshr exact i32 %and7, 7
  %5 = xor i32 %and7.lobit, 1
  %6 = lshr i32 %1, 15
  %and.i = and i32 %6, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  br i1 %tobool12.not, label %if.then.i.if.end.i_crit_edge, label %do.end.i, !prof !385

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.110, i32 noundef 1981, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %arrayidx.i = getelementptr %struct.usb_device, ptr %4, i32 0, i32 22, i32 %and.i
  br label %if.end58.i

if.else.i:                                        ; preds = %if.end
  br i1 %tobool12.not, label %do.end43.i, label %if.else.i.if.end49.i_crit_edge, !prof !428

if.else.i.if.end49.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i

do.end43.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.110, i32 noundef 1984, i32 noundef 9, ptr noundef null) #9
  br label %if.end49.i

if.end49.i:                                       ; preds = %do.end43.i, %if.else.i.if.end49.i_crit_edge
  %arrayidx57.i = getelementptr %struct.usb_device, ptr %4, i32 0, i32 21, i32 %and.i
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.end49.i, %if.end.i
  %ep.0.in.i = phi ptr [ %arrayidx.i, %if.end.i ], [ %arrayidx57.i, %if.end49.i ]
  %7 = ptrtoint ptr %ep.0.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %ep.0.i = load ptr, ptr %ep.0.in.i, align 4
  %tobool59.not.i = icmp eq ptr %ep.0.i, null
  br i1 %tobool59.not.i, label %if.end58.i.usb_maxpacket.exit_crit_edge, label %if.end61.i

if.end58.i.usb_maxpacket.exit_crit_edge:          ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_maxpacket.exit

if.end61.i:                                       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.0.i, i32 0, i32 4
  %8 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %10 = and i16 %9, -249
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #9
  %phi.cast = zext i16 %11 to i32
  br label %usb_maxpacket.exit

usb_maxpacket.exit:                               ; preds = %if.end61.i, %if.end58.i.usb_maxpacket.exit_crit_edge
  %retval.0.i4 = phi i32 [ %phi.cast, %if.end61.i ], [ 0, %if.end58.i.usb_maxpacket.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr9)
  %cmp = icmp eq i32 %shr9, 1
  br i1 %cmp, label %if.then15, label %usb_maxpacket.exit.if.end87_crit_edge

usb_maxpacket.exit.if.end87_crit_edge:            ; preds = %usb_maxpacket.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then15:                                        ; preds = %usb_maxpacket.exit
  %and18 = and i32 %retval.0.i4, 2047
  %call19 = tail call i32 @usb_calc_bus_time(i32 noundef 3, i32 noundef %and7, i32 noundef 0, i32 noundef %and18) #9
  %sub = add i32 %call19, 999
  %div = sdiv i32 %sub, 1000
  %conv21 = trunc i32 %div to i8
  %usecs = getelementptr inbounds %struct.ehci_qh, ptr %call, i32 0, i32 18
  %12 = ptrtoint ptr %usecs to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv21, ptr %usecs, align 1
  %start = getelementptr inbounds %struct.ehci_qh, ptr %call, i32 0, i32 23
  %13 = ptrtoint ptr %start to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %start, align 16
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp23 = icmp eq i32 %17, 3
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.then15
  %c_usecs = getelementptr inbounds %struct.ehci_qh, ptr %call, i32 0, i32 20
  %18 = ptrtoint ptr %c_usecs to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %c_usecs, align 1
  %gap_uf = getelementptr inbounds %struct.ehci_qh, ptr %call, i32 0, i32 19
  %19 = ptrtoint ptr %gap_uf to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %gap_uf, align 2
  %interval = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 25
  %20 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %interval, align 4
  %22 = lshr i32 %21, 3
  %conv27 = trunc i32 %22 to i16
  %period = getelementptr inbounds %struct.ehci_qh, ptr %call, i32 0, i32 22
  %23 = ptrtoint ptr %period to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv27, ptr %period, align 2
  %24 = and i32 %21, 524280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp30 = icmp eq i32 %24, 0
  br i1 %cmp30, label %land.lhs.true, label %if.then25.if.end87_crit_edge

if.then25.if.end87_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

land.lhs.true:                                    ; preds = %if.then25
  %25 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp33.not = icmp eq i32 %26, 1
  br i1 %cmp33.not, label %land.lhs.true.if.end87_crit_edge, label %do.body

land.lhs.true.if.end87_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qh_make.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qh_make, %if.then43)) #9
          to label %done [label %if.then43], !srcloc !357

if.then43:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %oxu, i32 -600
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 8
  %29 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %interval, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qh_make.__UNIQUE_ID_ddebug256, ptr noundef %28, ptr noundef nonnull @.str.112, i32 noundef %30) #9
  br label %done

if.else:                                          ; preds = %if.then15
  %tt49 = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 8
  %31 = ptrtoint ptr %tt49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tt49, align 4
  %call52 = tail call i32 @usb_calc_bus_time(i32 noundef %17, i32 noundef %and7, i32 noundef 0, i32 noundef %retval.0.i4) #9
  %div53 = sdiv i32 %call52, 125000
  %33 = trunc i32 %div53 to i8
  %conv55 = add i8 %33, 1
  %gap_uf56 = getelementptr inbounds %struct.ehci_qh, ptr %call, i32 0, i32 19
  %34 = ptrtoint ptr %gap_uf56 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv55, ptr %gap_uf56, align 2
  %35 = ptrtoint ptr %usecs to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %usecs, align 1
  %add68 = add i8 %36, 1
  %add68. = select i1 %tobool12.not, i8 %add68, i8 1
  %.add68 = select i1 %tobool12.not, i8 1, i8 %add68
  store i8 %add68., ptr %usecs, align 1
  %37 = getelementptr inbounds %struct.ehci_qh, ptr %call, i32 0, i32 20
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %.add68, ptr %37, align 1
  %tobool72.not = icmp eq ptr %32, null
  br i1 %tobool72.not, label %if.else.cond.end_crit_edge, label %cond.true

if.else.cond.end_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %think_time73 = getelementptr inbounds %struct.usb_tt, ptr %32, i32 0, i32 2
  %39 = ptrtoint ptr %think_time73 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %think_time73, align 4
  %phi.bo = add i32 %40, 999
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.else.cond.end_crit_edge
  %cond = phi i32 [ %phi.bo, %cond.true ], [ 999, %if.else.cond.end_crit_edge ]
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  %speed75 = getelementptr inbounds %struct.usb_device, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %speed75 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %speed75, align 4
  %call77 = tail call i32 @usb_calc_bus_time(i32 noundef %44, i32 noundef %and7, i32 noundef 0, i32 noundef %and18) #9
  %sub80 = add i32 %cond, %call77
  %div81 = sdiv i32 %sub80, 1000
  %conv82 = trunc i32 %div81 to i16
  %tt_usecs = getelementptr inbounds %struct.ehci_qh, ptr %call, i32 0, i32 21
  %45 = ptrtoint ptr %tt_usecs to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv82, ptr %tt_usecs, align 4
  %interval83 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 25
  %46 = ptrtoint ptr %interval83 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %interval83, align 4
  %conv84 = trunc i32 %47 to i16
  %period85 = getelementptr inbounds %struct.ehci_qh, ptr %call, i32 0, i32 22
  %48 = ptrtoint ptr %period85 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv84, ptr %period85, align 2
  br label %if.end87

if.end87:                                         ; preds = %cond.end, %land.lhs.true.if.end87_crit_edge, %if.then25.if.end87_crit_edge, %usb_maxpacket.exit.if.end87_crit_edge
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  %dev89 = getelementptr inbounds %struct.ehci_qh, ptr %call, i32 0, i32 24
  %51 = ptrtoint ptr %dev89 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %dev89, align 4
  %52 = load ptr, ptr %dev, align 4
  %speed91 = getelementptr inbounds %struct.usb_device, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %speed91 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %speed91, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %54, label %do.body138 [
    i32 1, label %sw.bb
    i32 2, label %if.end87.sw.bb93_crit_edge
    i32 3, label %sw.bb111
  ]

if.end87.sw.bb93_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb93

sw.bb:                                            ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  %or92 = or i32 %or5, 4096
  br label %sw.bb93

sw.bb93:                                          ; preds = %sw.bb, %if.end87.sw.bb93_crit_edge
  %info1.0 = phi i32 [ %or5, %if.end87.sw.bb93_crit_edge ], [ %or92, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr9)
  %cmp99 = icmp eq i32 %shr9, 2
  %or103 = or i32 %info1.0, 134234112
  %info1.2 = select i1 %cmp99, i32 %or103, i32 %info1.0
  %shl105 = shl nuw nsw i32 %retval.0.i4, 16
  %or106 = or i32 %info1.2, %shl105
  %ttport = getelementptr inbounds %struct.usb_device, ptr %52, i32 0, i32 9
  %56 = ptrtoint ptr %ttport to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ttport, align 8
  %shl109 = shl i32 %57, 23
  %or110 = or i32 %shl109, 1073741824
  br label %sw.epilog

sw.bb111:                                         ; preds = %if.end87
  %58 = zext i32 %shr9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %shr9, label %if.else127 [
    i32 2, label %if.then115
    i32 3, label %if.then123
  ]

if.then115:                                       ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #11
  %or118 = or i32 %or5, 1077960704
  br label %sw.epilog

if.then123:                                       ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #11
  %or125 = or i32 %or5, 1107304448
  br label %sw.epilog

if.else127:                                       ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #11
  %and128 = shl nuw nsw i32 %retval.0.i4, 16
  %shl129 = and i32 %and128, 134152192
  %or112 = or i32 %or5, %shl129
  %or130 = or i32 %or112, 8192
  br label %sw.epilog

do.body138:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qh_make.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qh_make, %if.then150)) #9
          to label %done [label %if.then150], !srcloc !357

if.then150:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i5 = getelementptr i8, ptr %oxu, i32 -600
  %59 = ptrtoint ptr %add.ptr.i5 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %add.ptr.i5, align 8
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 4
  %speed156 = getelementptr inbounds %struct.usb_device, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %speed156 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %speed156, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qh_make.__UNIQUE_ID_ddebug257, ptr noundef %60, ptr noundef nonnull @.str.113, ptr noundef %62, i32 noundef %64) #9
  br label %done

done:                                             ; preds = %if.then150, %do.body138, %if.then43, %do.body
  %kref.i = getelementptr inbounds %struct.ehci_qh, ptr %call, i32 0, i32 15
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !383
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #9
  %65 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #9, !srcloc !384
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %done
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !385

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #9
  br label %cleanup

if.then.i.i:                                      ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !386
  tail call fastcc void @qh_destroy(ptr noundef %kref.i) #9
  br label %cleanup

sw.epilog:                                        ; preds = %if.else127, %if.then123, %if.then115, %sw.bb93
  %info2.0 = phi i32 [ 1073741824, %if.then115 ], [ 1073741824, %if.then123 ], [ 1073741824, %if.else127 ], [ %or110, %sw.bb93 ]
  %info1.3 = phi i32 [ %or118, %if.then115 ], [ %or125, %if.then123 ], [ %or130, %if.else127 ], [ %or106, %sw.bb93 ]
  %qh_state = getelementptr inbounds %struct.ehci_qh, ptr %call, i32 0, i32 17
  %66 = ptrtoint ptr %qh_state to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 3, ptr %qh_state, align 8
  %67 = tail call i32 @llvm.bswap.i32(i32 %info1.3)
  %hw_info1 = getelementptr inbounds %struct.ehci_qh, ptr %call, i32 0, i32 1
  %68 = ptrtoint ptr %hw_info1 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %hw_info1, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %info2.0)
  %hw_info2 = getelementptr inbounds %struct.ehci_qh, ptr %call, i32 0, i32 2
  %70 = ptrtoint ptr %hw_info2 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %hw_info2, align 8
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 4
  %arrayidx = getelementptr %struct.usb_device, ptr %72, i32 0, i32 10, i32 %5
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx, align 4
  %75 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pipe, align 4
  %shr165 = lshr i32 %76, 15
  %and166 = and i32 %shr165, 15
  %shl167 = shl nuw nsw i32 1, %and166
  %or173 = or i32 %shl167, %74
  store i32 %or173, ptr %arrayidx, align 4
  tail call fastcc void @qh_refresh(ptr noundef nonnull %call)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %sw.epilog ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ null, %if.then10.i.i.i.i.i ], [ null, %if.then.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_calc_bus_time(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_reset_complete(ptr nocapture noundef %oxu, i32 noundef %index, i32 noundef returned %port_status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %port_status, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.oxu_hcd, ptr %oxu, i32 0, i32 22, i32 %index
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %arrayidx, align 4
  br label %return

if.end:                                           ; preds = %entry
  %and1 = and i32 %port_status, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %do.body, label %do.body10

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_reset_complete.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_reset_complete, %if.then7)) #9
          to label %return [label %if.then7], !srcloc !357

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %oxu, i32 -600
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 8
  %add = add i32 %index, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @check_reset_complete.__UNIQUE_ID_ddebug248, ptr noundef %2, ptr noundef nonnull @.str.132, i32 noundef %add) #9
  br label %return

do.body10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_reset_complete.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_reset_complete, %if.then22)) #9
          to label %return [label %if.then22], !srcloc !357

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i4 = getelementptr i8, ptr %oxu, i32 -600
  %3 = ptrtoint ptr %add.ptr.i4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i4, align 8
  %add26 = add i32 %index, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @check_reset_complete.__UNIQUE_ID_ddebug249, ptr noundef %4, ptr noundef nonnull @.str.133, i32 noundef %add26) #9
  br label %return

return:                                           ; preds = %if.then22, %do.body10, %if.then7, %do.body, %if.then
  ret i32 %port_status
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 166)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 166)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind "function-inline-cost-multiplier"="2" }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !25, !27, !29, !31, !32, !33, !34, !36, !38, !40, !41, !42, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !83, !85, !87, !89, !90, !91, !92, !94, !95, !96, !98, !100, !102, !104, !106, !107, !108, !110, !111, !113, !114, !115, !117, !119, !120, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !213, !214, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !238, !239, !241, !242, !243, !245, !246, !247, !248, !249, !251, !252, !253, !254, !256, !258, !259, !260, !262, !263, !265, !266, !267, !269, !270, !271, !273, !274, !275, !277, !278, !279, !281, !282, !283, !284, !285, !287, !288, !289, !290, !292, !293, !294, !296, !297, !299, !300, !302, !303, !304, !306, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !342, !343, !345, !346, !347}
!llvm.module.flags = !{!348, !349, !350, !351, !352, !353, !354, !355}
!llvm.ident = !{!356}

!0 = !{ptr @__param_log2_irq_thresh, !1, !"__param_log2_irq_thresh", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 656, i32 1}
!2 = !{ptr @__UNIQUE_ID_log2_irq_threshtype241, !1, !"__UNIQUE_ID_log2_irq_threshtype241", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_log2_irq_thresh242, !4, !"__UNIQUE_ID_log2_irq_thresh242", i1 false, i1 false}
!4 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 657, i32 1}
!5 = !{ptr @__param_park, !6, !"__param_park", i1 false, i1 false}
!6 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 661, i32 1}
!7 = !{ptr @__UNIQUE_ID_parktype243, !6, !"__UNIQUE_ID_parktype243", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_park244, !9, !"__UNIQUE_ID_park244", i1 false, i1 false}
!9 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 662, i32 1}
!10 = !{ptr @__param_ignore_oc, !11, !"__param_ignore_oc", i1 false, i1 false}
!11 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 666, i32 1}
!12 = !{ptr @__UNIQUE_ID_ignore_octype245, !11, !"__UNIQUE_ID_ignore_octype245", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_ignore_oc246, !14, !"__UNIQUE_ID_ignore_oc246", i1 false, i1 false}
!14 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 667, i32 1}
!15 = !{ptr @__initcall__kmod_oxu210hp_hcd__281_4332_oxu_driver_init6, !16, !"__initcall__kmod_oxu210hp_hcd__281_4332_oxu_driver_init6", i1 false, i1 false}
!16 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 4332, i32 1}
!17 = !{ptr @__exitcall_oxu_driver_exit, !16, !"__exitcall_oxu_driver_exit", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_description282, !19, !"__UNIQUE_ID_description282", i1 false, i1 false}
!19 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 4334, i32 1}
!20 = !{ptr @__UNIQUE_ID_author283, !21, !"__UNIQUE_ID_author283", i1 false, i1 false}
!21 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 4335, i32 1}
!22 = !{ptr @__UNIQUE_ID_file284, !23, !"__UNIQUE_ID_file284", i1 false, i1 false}
!23 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 4336, i32 1}
!24 = !{ptr @__UNIQUE_ID_license285, !23, !"__UNIQUE_ID_license285", i1 false, i1 false}
!25 = !{ptr @log2_irq_thresh, !26, !"log2_irq_thresh", i1 false, i1 false}
!26 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 655, i32 12}
!27 = !{ptr @park, !28, !"park", i1 false, i1 false}
!28 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 660, i32 17}
!29 = !{ptr @ignore_oc, !30, !"ignore_oc", i1 false, i1 false}
!30 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 665, i32 13}
!31 = !{ptr @__param_str_log2_irq_thresh, !1, !"__param_str_log2_irq_thresh", i1 false, i1 false}
!32 = !{ptr @__param_str_park, !6, !"__param_str_park", i1 false, i1 false}
!33 = !{ptr @__param_str_ignore_oc, !11, !"__param_str_ignore_oc", i1 false, i1 false}
!34 = !{ptr @.str, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 4327, i32 11}
!36 = !{ptr @oxu_driver, !37, !"oxu_driver", i1 false, i1 false}
!37 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 4320, i32 31}
!38 = !{ptr @.str.1, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 4228, i32 3}
!40 = !{ptr @.str.2, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.3, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @oxu_drv_probe._entry, !39, !"_entry", i1 false, i1 false}
!45 = !{ptr @oxu_drv_probe._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.6, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 4233, i32 2}
!48 = !{ptr @.str.7, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @oxu_drv_probe.__UNIQUE_ID_ddebug279, !47, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!50 = !{ptr @.str.9, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 4246, i32 3}
!52 = !{ptr @oxu_drv_probe._entry.8, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @oxu_drv_probe._entry_ptr.10, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 4263, i32 3}
!56 = !{ptr @oxu_drv_probe.__UNIQUE_ID_ddebug280, !55, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!57 = !{ptr @.str.13, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 4267, i32 2}
!59 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @oxu_drv_probe._entry.12, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @oxu_drv_probe._entry_ptr.15, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 4273, i32 2}
!64 = !{ptr @oxu_drv_probe._entry.16, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @oxu_drv_probe._entry_ptr.18, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.19, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 4177, i32 3}
!68 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @oxu_init._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @oxu_init._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 4184, i32 3}
!73 = !{ptr @oxu_init._entry.21, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @oxu_init._entry_ptr.23, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 4193, i32 3}
!77 = !{ptr @oxu_init._entry.24, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @oxu_init._entry_ptr.26, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 4103, i32 3}
!81 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 4104, i32 3}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 4105, i32 3}
!85 = !{ptr @oxu_verify_id.bo, !86, !"bo", i1 false, i1 false}
!86 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 4102, i32 28}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 4111, i32 2}
!89 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @oxu_verify_id._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @oxu_verify_id._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 4115, i32 2}
!94 = !{ptr @oxu_verify_id._entry.32, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @oxu_verify_id._entry_ptr.34, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 4141, i32 11}
!98 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 4141, i32 28}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 4027, i32 19}
!102 = !{ptr @oxu_hc_driver, !103, !"oxu_hc_driver", i1 false, i1 false}
!103 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 4025, i32 31}
!104 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 2868, i32 3}
!106 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @oxu210_hcd_irq.__UNIQUE_ID_ddebug265, !105, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!108 = !{ptr @.str.40, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 2925, i32 4}
!110 = !{ptr @oxu210_hcd_irq.__UNIQUE_ID_ddebug266, !109, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!111 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 2934, i32 3}
!113 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @oxu210_hcd_irq.__UNIQUE_ID_ddebug267, !112, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!115 = !{ptr @oxu210_hcd_irq.__UNIQUE_ID_ddebug268, !116, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!116 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 2935, i32 3}
!117 = !{ptr @.str.43, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 2937, i32 4}
!119 = !{ptr @oxu210_hcd_irq._entry, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @oxu210_hcd_irq._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.44, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 557, i32 3}
!123 = !{ptr @.str.45, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 558, i32 21}
!125 = !{ptr @.str.46, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 558, i32 27}
!127 = !{ptr @.str.47, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 559, i32 26}
!129 = !{ptr @.str.48, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 559, i32 35}
!131 = !{ptr @.str.49, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 562, i32 28}
!133 = !{ptr @.str.50, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 563, i32 26}
!135 = !{ptr @.str.51, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 564, i32 25}
!137 = !{ptr @.str.52, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 565, i32 25}
!139 = !{ptr @.str.53, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 567, i32 27}
!141 = !{ptr @.str.54, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 568, i32 25}
!143 = !{ptr @.str.55, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 568, i32 33}
!145 = !{ptr @.str.56, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 551, i32 7}
!147 = !{ptr @.str.57, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 551, i32 15}
!149 = !{ptr @.str.58, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 551, i32 22}
!151 = !{ptr @.str.59, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 551, i32 29}
!153 = !{ptr @fls_strings, !154, !"fls_strings", i1 false, i1 false}
!154 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 550, i32 26}
!155 = !{ptr @.str.60, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 521, i32 29}
!157 = !{ptr @.str.61, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 525, i32 25}
!159 = !{ptr @.str.62, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 526, i32 25}
!161 = !{ptr @.str.63, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 527, i32 24}
!163 = !{ptr @.str.64, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 528, i32 26}
!165 = !{ptr @.str.65, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 529, i32 24}
!167 = !{ptr @.str.66, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 530, i32 24}
!169 = !{ptr @.str.67, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 531, i32 24}
!171 = !{ptr @.str.68, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 532, i32 24}
!173 = !{ptr @.str.69, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 801, i32 2}
!175 = !{ptr @.str.70, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @ehci_reset.__UNIQUE_ID_ddebug247, !174, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!177 = !{ptr @.str.71, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 1049, i32 3}
!179 = !{ptr @.str.72, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @qh_destroy.__UNIQUE_ID_ddebug252, !178, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!181 = !{ptr @.str.73, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 1328, i32 5}
!183 = !{ptr @.str.74, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @qtd_copy_status.__UNIQUE_ID_ddebug255, !182, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!185 = !{ptr @.str.75, !182, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.76, !182, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.77, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 2442, i32 2}
!189 = !{ptr @.str.78, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @qh_unlink_periodic.__UNIQUE_ID_ddebug259, !188, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!191 = !{ptr @.str.79, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 2603, i32 3}
!193 = !{ptr @.str.80, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @qh_schedule.__UNIQUE_ID_ddebug260, !192, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!195 = !{ptr @.str.81, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 2290, i32 3}
!197 = !{ptr @.str.82, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @periodic_usecs._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @periodic_usecs._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.83, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 2356, i32 2}
!202 = !{ptr @.str.84, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @qh_link_periodic.__UNIQUE_ID_ddebug258, !201, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!204 = !{ptr @.str.85, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 2725, i32 5}
!206 = !{ptr @.str.86, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @scan_periodic.__UNIQUE_ID_ddebug263, !205, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!208 = !{ptr @oxu_reset.__key, !209, !"__key", i1 false, i1 false}
!209 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 3090, i32 2}
!210 = !{ptr @.str.87, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @oxu_hcd_init.__key, !212, !"__key", i1 false, i1 false}
!212 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 3016, i32 2}
!213 = !{ptr @.str.88, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @oxu_hcd_init.__key.89, !215, !"__key", i1 false, i1 false}
!215 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 3018, i32 2}
!216 = !{ptr @.str.90, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.91, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 3072, i32 3}
!219 = !{ptr @.str.92, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @oxu_hcd_init.__UNIQUE_ID_ddebug271, !218, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!221 = !{ptr @.str.93, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 1199, i32 2}
!223 = !{ptr @.str.94, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @ehci_mem_init.__UNIQUE_ID_ddebug254, !222, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!225 = !{ptr @.str.95, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 1080, i32 4}
!227 = !{ptr @.str.96, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @oxu_qh_alloc.__UNIQUE_ID_ddebug253, !226, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!229 = !{ptr @.str.97, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 3150, i32 2}
!231 = !{ptr @.str.98, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @oxu_run.__UNIQUE_ID_ddebug272, !230, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!233 = !{ptr @.str.99, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 3163, i32 2}
!235 = !{ptr @oxu_run._entry, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @oxu_run._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.100, !234, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @.str.101, !234, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.102, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 3201, i32 2}
!241 = !{ptr @.str.103, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @oxu_stop.__UNIQUE_ID_ddebug273, !240, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!243 = !{ptr @.str.104, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 2784, i32 2}
!245 = !{ptr @.str.105, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @ehci_port_power.__UNIQUE_ID_ddebug264, !244, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!247 = distinct !{null, !244, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @.str.107, !244, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @.str.108, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 915, i32 3}
!251 = !{ptr @.str.109, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @oxu_buf_alloc._entry, !250, !"_entry", i1 false, i1 false}
!253 = !{ptr @oxu_buf_alloc._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.110, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../include/linux/usb.h", i32 1981, i32 3}
!256 = !{ptr @.str.111, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 1825, i32 5}
!258 = !{ptr @.str.112, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @qh_make.__UNIQUE_ID_ddebug256, !257, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!260 = !{ptr @.str.113, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 1897, i32 3}
!262 = !{ptr @qh_make.__UNIQUE_ID_ddebug257, !261, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!263 = !{ptr @.str.114, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 2661, i32 2}
!265 = !{ptr @.str.115, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @itd_submit.__UNIQUE_ID_ddebug261, !264, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!267 = !{ptr @.str.116, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 2668, i32 2}
!269 = !{ptr @.str.117, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @sitd_submit.__UNIQUE_ID_ddebug262, !268, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!271 = !{ptr @.str.118, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 3385, i32 4}
!273 = !{ptr @.str.119, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @oxu_urb_dequeue.__UNIQUE_ID_ddebug274, !272, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!275 = !{ptr @.str.120, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 3402, i32 5}
!277 = !{ptr @oxu_urb_dequeue._entry, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @oxu_urb_dequeue._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.121, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 3469, i32 3}
!281 = !{ptr @.str.122, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @oxu_endpoint_disable._entry, !280, !"_entry", i1 false, i1 false}
!283 = !{ptr @oxu_endpoint_disable._entry_ptr, !280, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.123, !280, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @.str.124, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 3698, i32 6}
!287 = !{ptr @.str.125, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @oxu_hub_control._entry, !286, !"_entry", i1 false, i1 false}
!289 = !{ptr @oxu_hub_control._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.127, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 3723, i32 5}
!292 = !{ptr @oxu_hub_control._entry.126, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @oxu_hub_control._entry_ptr.128, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.129, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 3739, i32 4}
!296 = !{ptr @oxu_hub_control.__UNIQUE_ID_ddebug275, !295, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!297 = !{ptr @.str.130, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 3768, i32 3}
!299 = !{ptr @oxu_hub_control.__UNIQUE_ID_ddebug276, !298, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!300 = !{ptr @.str.131, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 857, i32 3}
!302 = !{ptr @.str.132, !301, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @check_reset_complete.__UNIQUE_ID_ddebug248, !301, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!304 = !{ptr @.str.133, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 861, i32 3}
!306 = !{ptr @check_reset_complete.__UNIQUE_ID_ddebug249, !305, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!307 = !{ptr @.str.134, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 580, i32 9}
!309 = !{ptr @.str.135, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 583, i32 9}
!311 = !{ptr @.str.136, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 586, i32 9}
!313 = !{ptr @.str.137, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 589, i32 9}
!315 = !{ptr @.str.138, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 594, i32 3}
!317 = !{ptr @.str.139, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 596, i32 27}
!319 = !{ptr @.str.140, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 597, i32 27}
!321 = !{ptr @.str.141, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 599, i32 27}
!323 = !{ptr @.str.142, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 600, i32 29}
!325 = !{ptr @.str.143, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 601, i32 28}
!327 = !{ptr @.str.144, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 602, i32 25}
!329 = !{ptr @.str.145, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 603, i32 24}
!331 = !{ptr @.str.146, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 604, i32 25}
!333 = !{ptr @.str.147, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 605, i32 24}
!335 = !{ptr @.str.148, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 606, i32 25}
!337 = !{ptr @.str.149, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 607, i32 29}
!339 = !{ptr @.str.150, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 3863, i32 2}
!341 = !{ptr @.str.151, !340, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @oxu_bus_suspend.__UNIQUE_ID_ddebug277, !340, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!343 = !{ptr @.str.152, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/usb/host/oxu210hp-hcd.c", i32 3947, i32 2}
!345 = !{ptr @.str.153, !344, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @oxu_bus_resume.__UNIQUE_ID_ddebug278, !344, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!347 = !{ptr @.str.154, !344, !"<string literal>", i1 false, i1 false}
!348 = !{i32 1, !"wchar_size", i32 2}
!349 = !{i32 1, !"min_enum_size", i32 4}
!350 = !{i32 8, !"branch-target-enforcement", i32 0}
!351 = !{i32 8, !"sign-return-address", i32 0}
!352 = !{i32 8, !"sign-return-address-all", i32 0}
!353 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!354 = !{i32 7, !"uwtable", i32 1}
!355 = !{i32 7, !"frame-pointer", i32 2}
!356 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!357 = !{i64 2149065609, i64 2149065614, i64 2149065627, i64 2149065671, i64 2149065705, i64 2149065726}
!358 = !{i64 2154787602}
!359 = !{i64 5092039}
!360 = !{i64 5092457}
!361 = !{i64 2154787226}
!362 = !{i64 2154925100}
!363 = !{i64 2154925962}
!364 = !{i64 2154926485}
!365 = !{i64 2154926718}
!366 = !{i64 2154927180}
!367 = !{i64 2154927929}
!368 = !{i64 2154928164}
!369 = !{i64 2154928602}
!370 = !{i64 2154931468}
!371 = !{i64 2154932156}
!372 = !{i64 2154932924}
!373 = !{i8 0, i8 2}
!374 = !{i64 2154935704}
!375 = !{i64 2154936269}
!376 = !{i64 2154936666}
!377 = !{i64 2154937703}
!378 = !{i64 2154896562}
!379 = !{i64 2154940217}
!380 = !{i64 2154940922}
!381 = !{i64 2154948800}
!382 = !{i64 2154881349}
!383 = !{i64 2148541787}
!384 = !{i64 2148456227, i64 2148456259, i64 2148456288, i64 2148456322, i64 2148456353, i64 2148456376}
!385 = !{!"branch_weights", i32 2000, i32 1}
!386 = !{i64 2149417901}
!387 = !{i64 2154949777}
!388 = !{i64 2154951586}
!389 = !{i64 2154951814}
!390 = !{i64 2154952335}
!391 = !{i64 2154953008}
!392 = !{i64 2154953558}
!393 = !{i64 2154954184}
!394 = !{i64 2154954807}
!395 = !{i64 2154955610}
!396 = !{i64 2154956648}
!397 = !{i64 2154957557}
!398 = !{i64 2154957871}
!399 = !{i64 2154960725}
!400 = !{i64 2154963290}
!401 = !{i64 2154963581}
!402 = !{i64 2154966708}
!403 = !{i64 2154970570}
!404 = !{i64 2154970938}
!405 = !{i64 2154971395}
!406 = !{i64 2154971827}
!407 = !{i64 2154972209}
!408 = !{i64 2154972874}
!409 = !{i64 2154976310}
!410 = !{i64 2154976740}
!411 = !{i64 2154977178}
!412 = !{i64 2154977668}
!413 = !{i64 2154978362}
!414 = !{i64 2154979306}
!415 = !{i64 2154982087}
!416 = !{i64 2154982476}
!417 = !{i64 2154982880}
!418 = !{i64 2154983342}
!419 = !{i64 2154983810}
!420 = !{i64 2154985855}
!421 = !{i64 2154986185}
!422 = !{i64 2154988223}
!423 = !{i64 2154988529}
!424 = !{i64 2154989210}
!425 = !{i64 2154989449}
!426 = !{i64 2154990019}
!427 = !{i64 2154900480}
!428 = !{!"branch_weights", i32 1, i32 2000}
!429 = !{i64 2154903199}
!430 = !{i64 2154903878}
!431 = !{i64 2154904494}
!432 = !{i64 2154905023}
!433 = !{i64 2154908062}
!434 = !{i64 2154908914}
!435 = !{i64 2154915468}
!436 = !{i64 2154794552}
!437 = !{i64 2154797186}
!438 = !{i64 2154790400}
!439 = !{i64 2154790830}
!440 = !{i64 2154793689}
!441 = !{i64 2154793893}
!442 = !{i64 2148453762, i64 2148453794, i64 2148453823, i64 2148453857, i64 2148453888, i64 2148453911}
!443 = !{i64 2154892475}
!444 = !{i64 2154896226}
!445 = !{i64 2154834895}
!446 = !{i64 2154836323}
!447 = !{i64 2154853504}
!448 = !{i64 2154853749}
!449 = !{i64 2154854092}
!450 = !{i64 2154859312}
!451 = !{i64 2154859936, i64 2154860433, i64 2154859973, i64 2154860029, i64 2154860063, i64 2154860087, i64 2154860128, i64 2154860149, i64 2154860177, i64 2154860211}
!452 = !{i64 2154861649, i64 2154862146, i64 2154861686, i64 2154861742, i64 2154861776, i64 2154861800, i64 2154861841, i64 2154861862, i64 2154861890, i64 2154861924}
!453 = !{i64 2154863186}
!454 = !{i64 2154863544}
!455 = !{i64 2154863694}
!456 = !{i64 2154863974}
!457 = !{i64 2154864645}
!458 = !{i64 2154814066, i64 2154814563, i64 2154814103, i64 2154814159, i64 2154814193, i64 2154814217, i64 2154814258, i64 2154814279, i64 2154814307, i64 2154814341}
!459 = !{i64 2154821971, i64 2154822468, i64 2154822008, i64 2154822064, i64 2154822098, i64 2154822122, i64 2154822163, i64 2154822184, i64 2154822212, i64 2154822246}
!460 = !{i64 2154824240}
!461 = !{!"auto-init"}
!462 = !{i32 0, i32 33}
!463 = !{i64 2154869463}
!464 = !{i64 2154869686}
!465 = !{i64 2154873127}
!466 = !{i64 2154868025}
!467 = !{i64 2154868248}
!468 = !{i64 2154868951}
!469 = !{i64 2154919321}
!470 = !{i64 2154917740}
!471 = !{i64 2154917972}
!472 = !{i64 2154797845, i64 2154798341, i64 2154797882, i64 2154797938, i64 2154797972, i64 2154797996, i64 2154798037, i64 2154798058, i64 2154798086, i64 2154798120}
!473 = !{i64 2154799595}
!474 = !{i64 2154800123}
!475 = !{i64 2154800361}
!476 = !{i64 2154791928}
!477 = !{i64 2154792146}
!478 = !{i64 2154792823}
!479 = !{i64 2154793047}
!480 = !{i64 2154885337, i64 2154885834, i64 2154885374, i64 2154885430, i64 2154885464, i64 2154885488, i64 2154885529, i64 2154885550, i64 2154885578, i64 2154885612}
!481 = !{i64 2149189267, i64 2149189290, i64 2149189322, i64 2149189354, i64 2149189392, i64 2149189422}
!482 = !{i64 2154856331}
!483 = !{i64 2154858001}
