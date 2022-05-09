; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/atmel_usba_udc.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/atmel_usba_udc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usba_udc_config = type { ptr, ptr, i32, i8 }
%struct.usba_udc_errata = type { ptr, ptr }
%struct.usba_ep_config = type { i8, i8, [2 x i8] }
%struct.usba_fifo_cfg = type { i8, i16, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.usba_udc = type { %struct.spinlock, %struct.mutex, ptr, ptr, %struct.usb_gadget, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i16, i16, i32, i32, ptr, ptr }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.usba_ep = type { i32, ptr, ptr, ptr, [8 x i8], %struct.usb_ep, ptr, %struct.list_head, i16, i8, i8, i8, i32, i32, ptr }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%union.anon.72 = type { [2 x i32] }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usba_request = type { %struct.usb_request, %struct.list_head, i32, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }

@__param_str_fifo_mode = internal constant [25 x i8] c"atmel_usba_udc.fifo_mode\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@fifo_mode = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__param_fifo_mode = internal constant %struct.kernel_param { ptr @__param_str_fifo_mode, ptr null, ptr @param_ops_ushort, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @fifo_mode } }, section "__param", align 4
@__UNIQUE_ID_fifo_modetype241 = internal constant [41 x i8] c"atmel_usba_udc.parmtype=fifo_mode:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_fifo_mode242 = internal constant [58 x i8] c"atmel_usba_udc.parm=fifo_mode:Endpoint configuration mode\00", section ".modinfo", align 1
@__initcall__kmod_atmel_usba_udc__280_2455_udc_driver_init6 = internal global ptr @udc_driver_init, section ".initcall6.init", align 4
@udc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr @usba_udc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.17, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_udc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usba_udc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_udc_driver_exit = internal global ptr @udc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description281 = internal constant [49 x i8] c"atmel_usba_udc.description=Atmel USBA UDC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author282 = internal constant [49 x i8] c"atmel_usba_udc.author=Haavard Skinnemoen (Atmel)\00", section ".modinfo", align 1
@__UNIQUE_ID_file283 = internal constant [58 x i8] c"atmel_usba_udc.file=drivers/usb/gadget/udc/atmel_usba_udc\00", section ".modinfo", align 1
@__UNIQUE_ID_license284 = internal constant [27 x i8] c"atmel_usba_udc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias285 = internal constant [45 x i8] c"atmel_usba_udc.alias=platform:atmel_usba_udc\00", section ".modinfo", align 1
@usba_udc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2288, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"MMIO registers at %pR mapped at %p\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usba_udc_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/usb/gadget/udc/atmel_usba_udc.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usba_udc_probe._entry_ptr = internal global ptr @usba_udc_probe._entry, section ".printk_index", align 4
@usba_udc_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 2294, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"FIFO at %pR mapped at %p\0A\00", [38 x i8] zeroinitializer }, align 32
@usba_udc_probe._entry_ptr.7 = internal global ptr @usba_udc_probe._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hclk\00", [27 x i8] zeroinitializer }, align 32
@usba_udc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&udc->lock\00", [21 x i8] zeroinitializer }, align 32
@usba_udc_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&udc->vbus_mutex\00", [47 x i8] zeroinitializer }, align 32
@usba_udc_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 2318, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to enable pclk, aborting.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@usba_udc_probe._entry_ptr.16 = internal global ptr @usba_udc_probe._entry.13, section ".printk_index", align 4
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"atmel_usba_udc\00", [17 x i8] zeroinitializer }, align 32
@usba_udc_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 2336, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cannot request irq %d (error %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@usba_udc_probe._entry_ptr.20 = internal global ptr @usba_udc_probe._entry.18, section ".printk_index", align 4
@usba_udc_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 2351, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to request vbus irq; assuming always on\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@usba_udc_probe._entry_ptr.24 = internal global ptr @usba_udc_probe._entry.21, section ".printk_index", align 4
@usba_udc_ops = internal constant { %struct.usb_gadget_ops, [36 x i8] } { %struct.usb_gadget_ops { ptr @usba_udc_get_frame, ptr @usba_udc_wakeup, ptr @usba_udc_set_selfpowered, ptr null, ptr null, ptr @atmel_usba_pullup, ptr null, ptr null, ptr @atmel_usba_start, ptr @atmel_usba_stop, ptr null, ptr null, ptr null, ptr @atmel_usba_match_ep, ptr null }, [36 x i8] zeroinitializer }, align 32
@usba_gadget_template = internal constant { { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 }, [264 x i8] } { { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i8, i8, i8, i32 } { %struct.work_struct zeroinitializer, ptr null, ptr @usba_udc_ops, ptr null, %struct.list_head zeroinitializer, i32 0, i32 3, i32 0, i32 0, i32 0, ptr @.str.17, %struct.device zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr null, i8 0, i8 0, i8 0, i32 0 }, [264 x i8] zeroinitializer }, align 32
@atmel_udc_dt_ids = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9rl-udc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @udc_at91sam9rl_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-udc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @udc_at91sam9g45_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-udc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @udc_sama5d3_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-udc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @udc_sam9x60_cfg }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@atmel_pmc_dt_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9rl-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"atmel,vbus\00", [21 x i8] zeroinitializer }, align 32
@atmel_udc_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 2198, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Using default max fifo-size value\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atmel_udc_of_init\00", [46 x i8] zeroinitializer }, align 32
@atmel_udc_of_init._entry_ptr = internal global ptr @atmel_udc_of_init._entry, section ".printk_index", align 4
@atmel_udc_of_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 2207, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Using default max nb-banks value\0A\00", [62 x i8] zeroinitializer }, align 32
@atmel_udc_of_init._entry_ptr.31 = internal global ptr @atmel_udc_of_init._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ep%d\00", [27 x i8] zeroinitializer }, align 32
@usba_ep_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @usba_ep_enable, ptr @usba_ep_disable, ptr null, ptr @usba_ep_alloc_request, ptr @usba_ep_free_request, ptr @usba_ep_queue, ptr @usba_ep_dequeue, ptr @usba_ep_set_halt, ptr null, ptr @usba_ep_fifo_status, ptr @usba_ep_fifo_flush }, [52 x i8] zeroinitializer }, align 32
@atmel_udc_of_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.28, ptr @.str.2, i32 2259, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"of_probe: no endpoint specified\0A\00", [63 x i8] zeroinitializer }, align 32
@atmel_udc_of_init._entry_ptr.35 = internal global ptr @atmel_udc_of_init._entry.33, section ".printk_index", align 4
@udc_at91sam9rl_cfg = internal constant { %struct.usba_udc_config, [16 x i8] } { %struct.usba_udc_config { ptr @at91sam9rl_errata, ptr @ep_config_sam9, i32 7, i8 1 }, [16 x i8] zeroinitializer }, align 32
@udc_at91sam9g45_cfg = internal constant { %struct.usba_udc_config, [16 x i8] } { %struct.usba_udc_config { ptr @at91sam9g45_errata, ptr @ep_config_sam9, i32 7, i8 1 }, [16 x i8] zeroinitializer }, align 32
@udc_sama5d3_cfg = internal constant { %struct.usba_udc_config, [16 x i8] } { %struct.usba_udc_config { ptr null, ptr @ep_config_sama5, i32 16, i8 1 }, [16 x i8] zeroinitializer }, align 32
@udc_sam9x60_cfg = internal constant { %struct.usba_udc_config, [16 x i8] } { %struct.usba_udc_config { ptr null, ptr @ep_config_sam9, i32 7, i8 0 }, [16 x i8] zeroinitializer }, align 32
@at91sam9rl_errata = internal constant { %struct.usba_udc_errata, [24 x i8] } { %struct.usba_udc_errata { ptr @at91sam9rl_toggle_bias, ptr null }, [24 x i8] zeroinitializer }, align 32
@ep_config_sam9 = internal constant [7 x %struct.usba_ep_config] [%struct.usba_ep_config { i8 1, i8 0, [2 x i8] undef }, %struct.usba_ep_config { i8 2, i8 -64, [2 x i8] undef }, %struct.usba_ep_config { i8 2, i8 -64, [2 x i8] undef }, %struct.usba_ep_config { i8 3, i8 -128, [2 x i8] undef }, %struct.usba_ep_config { i8 3, i8 -128, [2 x i8] undef }, %struct.usba_ep_config { i8 3, i8 -64, [2 x i8] undef }, %struct.usba_ep_config { i8 3, i8 -64, [2 x i8] undef }], section ".init.rodata", align 4
@at91sam9g45_errata = internal constant { %struct.usba_udc_errata, [24 x i8] } { %struct.usba_udc_errata { ptr null, ptr @at91sam9g45_pulse_bias }, [24 x i8] zeroinitializer }, align 32
@ep_config_sama5 = internal constant [16 x %struct.usba_ep_config] [%struct.usba_ep_config { i8 1, i8 0, [2 x i8] undef }, %struct.usba_ep_config { i8 3, i8 -64, [2 x i8] undef }, %struct.usba_ep_config { i8 3, i8 -64, [2 x i8] undef }, %struct.usba_ep_config { i8 2, i8 -64, [2 x i8] undef }, %struct.usba_ep_config { i8 2, i8 -64, [2 x i8] undef }, %struct.usba_ep_config { i8 2, i8 -64, [2 x i8] undef }, %struct.usba_ep_config { i8 2, i8 -64, [2 x i8] undef }, %struct.usba_ep_config { i8 2, i8 -64, [2 x i8] undef }, %struct.usba_ep_config { i8 2, i8 64, [2 x i8] undef }, %struct.usba_ep_config { i8 2, i8 64, [2 x i8] undef }, %struct.usba_ep_config { i8 2, i8 64, [2 x i8] undef }, %struct.usba_ep_config { i8 2, i8 64, [2 x i8] undef }, %struct.usba_ep_config { i8 2, i8 64, [2 x i8] undef }, %struct.usba_ep_config { i8 2, i8 64, [2 x i8] undef }, %struct.usba_ep_config { i8 2, i8 64, [2 x i8] undef }, %struct.usba_ep_config { i8 2, i8 64, [2 x i8] undef }], section ".init.rodata", align 4
@mode_1_cfg = internal global { [7 x %struct.usba_fifo_cfg], [54 x i8] } { [7 x %struct.usba_fifo_cfg] [%struct.usba_fifo_cfg { i8 0, i16 64, i8 1 }, %struct.usba_fifo_cfg { i8 1, i16 1024, i8 2 }, %struct.usba_fifo_cfg { i8 2, i16 1024, i8 1 }, %struct.usba_fifo_cfg { i8 3, i16 1024, i8 1 }, %struct.usba_fifo_cfg { i8 4, i16 1024, i8 1 }, %struct.usba_fifo_cfg { i8 5, i16 1024, i8 1 }, %struct.usba_fifo_cfg { i8 6, i16 1024, i8 1 }], [54 x i8] zeroinitializer }, align 32
@mode_2_cfg = internal global { [4 x %struct.usba_fifo_cfg], [40 x i8] } { [4 x %struct.usba_fifo_cfg] [%struct.usba_fifo_cfg { i8 0, i16 64, i8 1 }, %struct.usba_fifo_cfg { i8 1, i16 1024, i8 3 }, %struct.usba_fifo_cfg { i8 2, i16 1024, i8 2 }, %struct.usba_fifo_cfg { i8 3, i16 1024, i8 2 }], [40 x i8] zeroinitializer }, align 32
@mode_3_cfg = internal global { [7 x %struct.usba_fifo_cfg], [54 x i8] } { [7 x %struct.usba_fifo_cfg] [%struct.usba_fifo_cfg { i8 0, i16 64, i8 1 }, %struct.usba_fifo_cfg { i8 1, i16 1024, i8 2 }, %struct.usba_fifo_cfg { i8 2, i16 512, i8 2 }, %struct.usba_fifo_cfg { i8 3, i16 512, i8 2 }, %struct.usba_fifo_cfg { i8 4, i16 512, i8 2 }, %struct.usba_fifo_cfg { i8 5, i16 512, i8 2 }, %struct.usba_fifo_cfg { i8 6, i16 512, i8 2 }], [54 x i8] zeroinitializer }, align 32
@mode_4_cfg = internal global { [9 x %struct.usba_fifo_cfg], [42 x i8] } { [9 x %struct.usba_fifo_cfg] [%struct.usba_fifo_cfg { i8 0, i16 64, i8 1 }, %struct.usba_fifo_cfg { i8 1, i16 512, i8 2 }, %struct.usba_fifo_cfg { i8 2, i16 512, i8 2 }, %struct.usba_fifo_cfg { i8 3, i16 8, i8 2 }, %struct.usba_fifo_cfg { i8 4, i16 512, i8 2 }, %struct.usba_fifo_cfg { i8 5, i16 512, i8 2 }, %struct.usba_fifo_cfg { i8 6, i16 16, i8 2 }, %struct.usba_fifo_cfg { i8 7, i16 8, i8 2 }, %struct.usba_fifo_cfg { i8 8, i16 8, i8 2 }], [42 x i8] zeroinitializer }, align 32
@usba_ep_enable.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 -109, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usba_ep_enable\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"udc: ep_enable: Invalid argument\00", [63 x i8] zeroinitializer }, align 32
@usba_ep_enable.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.36, ptr @.str.2, ptr @.str.38, i8 0, i8 -107, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"udc: %s: EPT_CFG = 0x%lx (maxpacket = %lu)\0A\00", [52 x i8] zeroinitializer }, align 32
@usba_ep_enable.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.36, ptr @.str.2, ptr @.str.39, i8 0, i8 -103, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"udc: ep_enable: %s is not isoc capable\0A\00", [56 x i8] zeroinitializer }, align 32
@usba_ep_disable.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 -87, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usba_ep_disable\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"udc: ep_disable: %s not enabled\0A\00", [63 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@queue_dma.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 -71, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"queue_dma\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"udc: invalid request length %u\0A\00", [32 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@stop_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 852, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: timed out waiting for DMA FIFO to empty\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"stop_dma\00", [23 x i8] zeroinitializer }, align 32
@stop_dma._entry_ptr = internal global ptr @stop_dma._entry, section ".printk_index", align 4
@usba_ep_set_halt.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 -24, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usba_ep_set_halt\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"udc: Attempted to halt uninitialized ep %s\0A\00", [52 x i8] zeroinitializer }, align 32
@usba_ep_set_halt.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.46, ptr @.str.2, ptr @.str.48, i8 0, i8 -23, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"udc: Attempted to halt isochronous ep %s\0A\00", [54 x i8] zeroinitializer }, align 32
@usba_ep0_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 0, i16 16384, i8 1, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@usba_udc_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 1836, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ODD: EP0 configuration is invalid!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usba_udc_irq\00", [19 x i8] zeroinitializer }, align 32
@usba_udc_irq._entry_ptr = internal global ptr @usba_udc_irq._entry, section ".printk_index", align 4
@usba_udc_irq._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.2, i32 1845, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ODD: EP%d configuration is invalid!\0A\00", [59 x i8] zeroinitializer }, align 32
@usba_udc_irq._entry_ptr.53 = internal global ptr @usba_udc_irq._entry.51, section ".printk_index", align 4
@usba_dma_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 1683, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"DMA_CH_EN is set after transfer is finished!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usba_dma_irq\00", [19 x i8] zeroinitializer }, align 32
@usba_dma_irq._entry_ptr = internal global ptr @usba_dma_irq._entry, section ".printk_index", align 4
@usba_dma_irq._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.2, i32 1686, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"status=%#08x, pending=%#08x, control=%#08x\0A\00", [52 x i8] zeroinitializer }, align 32
@usba_dma_irq._entry_ptr.58 = internal global ptr @usba_dma_irq._entry.56, section ".printk_index", align 4
@usba_control_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 1491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013udc: %s: TXCOMP: Invalid endpoint state %d, halting endpoint...\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usba_control_irq\00", [47 x i8] zeroinitializer }, align 32
@usba_control_irq._entry_ptr = internal global ptr @usba_control_irq._entry, section ".printk_index", align 4
@usba_control_irq._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.2, i32 1520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013udc: %s: RXRDY: Invalid endpoint state %d, halting endpoint...\0A\00", [62 x i8] zeroinitializer }, align 32
@usba_control_irq._entry_ptr.63 = internal global ptr @usba_control_irq._entry.61, section ".printk_index", align 4
@usba_control_irq._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.2, i32 1564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014udc: Invalid packet length %u (expected %zu)\0A\00", [48 x i8] zeroinitializer }, align 32
@usba_control_irq._entry_ptr.66 = internal global ptr @usba_control_irq._entry.64, section ".printk_index", align 4
@do_test_mode.test_packet_buffer = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\00\00\00\00\00\00\00\00\00\AA\AA\AA\AA\AA\AA\AA\AA\EE\EE\EE\EE\EE\EE\EE\EE\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\7F\BF\DF\EF\F7\FB\FD\FC~\BF\DF\EF\F7\FB\FD~", [43 x i8] zeroinitializer }, align 32
@do_test_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 1223, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Entering Test_J mode...\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"do_test_mode\00", [19 x i8] zeroinitializer }, align 32
@do_test_mode._entry_ptr = internal global ptr @do_test_mode._entry, section ".printk_index", align 4
@do_test_mode._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 1228, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Entering Test_K mode...\0A\00", [39 x i8] zeroinitializer }, align 32
@do_test_mode._entry_ptr.71 = internal global ptr @do_test_mode._entry.69, section ".printk_index", align 4
@do_test_mode._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.68, ptr @.str.2, i32 1245, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Test_SE0_NAK: ep0 not mapped\0A\00", [34 x i8] zeroinitializer }, align 32
@do_test_mode._entry_ptr.74 = internal global ptr @do_test_mode._entry.72, section ".printk_index", align 4
@do_test_mode._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.68, ptr @.str.2, i32 1248, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Entering Test_SE0_NAK mode...\0A\00", [33 x i8] zeroinitializer }, align 32
@do_test_mode._entry_ptr.77 = internal global ptr @do_test_mode._entry.75, section ".printk_index", align 4
@do_test_mode._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.68, ptr @.str.2, i32 1261, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Test_Packet: ep0 not mapped\0A\00", [35 x i8] zeroinitializer }, align 32
@do_test_mode._entry_ptr.80 = internal global ptr @do_test_mode._entry.78, section ".printk_index", align 4
@do_test_mode._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.68, ptr @.str.2, i32 1268, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Entering Test_Packet mode...\0A\00", [34 x i8] zeroinitializer }, align 32
@do_test_mode._entry_ptr.83 = internal global ptr @do_test_mode._entry.81, section ".printk_index", align 4
@do_test_mode._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.68, ptr @.str.2, i32 1272, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid test mode: 0x%04x\0A\00", [37 x i8] zeroinitializer }, align 32
@do_test_mode._entry_ptr.86 = internal global ptr @do_test_mode._entry.84, section ".printk_index", align 4
@handle_ep0_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 1422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013udc: %s: Invalid setup request: %02x.%02x v%04x i%04x l%d, halting endpoint...\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"handle_ep0_setup\00", [47 x i8] zeroinitializer }, align 32
@handle_ep0_setup._entry_ptr = internal global ptr @handle_ep0_setup._entry, section ".printk_index", align 4
@usba_ep_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.2, i32 1630, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ep_irq: queue empty\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usba_ep_irq\00", [20 x i8] zeroinitializer }, align 32
@usba_ep_irq._entry_ptr = internal global ptr @usba_ep_irq._entry, section ".printk_index", align 4
@usb_debug_root = external dso_local local_unnamed_addr global ptr, align 4
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"regs\00", [27 x i8] zeroinitializer }, align 32
@regs_dbg_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @regs_dbg_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @regs_dbg_open, ptr null, ptr @regs_dbg_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"queue\00", [26 x i8] zeroinitializer }, align 32
@queue_dbg_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @queue_dbg_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @queue_dbg_open, ptr null, ptr @queue_dbg_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dma_status\00", [21 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%8p %08x %c%c%c %5d %c%c%c\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@usba_udc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @usba_udc_suspend, ptr @usba_udc_resume, ptr @usba_udc_suspend, ptr @usba_udc_resume, ptr @usba_udc_suspend, ptr @usba_udc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.97 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.98 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.100 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 4]
@__sancov_gen_cov_switch_values.101 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.102 = internal global [5 x i64] [i64 3, i64 8, i64 128, i64 129, i64 130]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 16, i64 256, i64 512]
@__sancov_gen_cov_switch_values.106 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.107 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.109 = private unnamed_addr constant [10 x i8] c"fifo_mode\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 273, i32 15 }
@___asan_gen_.112 = private unnamed_addr constant [11 x i8] c"udc_driver\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2446, i32 31 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2287, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2294, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2300, i32 34 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2303, i32 34 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2307, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2308, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2318, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2333, i32 5 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2335, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2349, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant [13 x i8] c"usba_udc_ops\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1103, i32 36 }
@___asan_gen_.187 = private unnamed_addr constant [21 x i8] c"usba_gadget_template\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1123, i32 32 }
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"atmel_udc_dt_ids\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2115, i32 34 }
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"atmel_pmc_dt_ids\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2125, i32 34 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2163, i32 54 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2197, i32 5 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2206, i32 5 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2215, i32 21 }
@___asan_gen_.217 = private unnamed_addr constant [12 x i8] c"usba_ep_ops\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 977, i32 32 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2259, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant [19 x i8] c"udc_at91sam9rl_cfg\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2089, i32 37 }
@___asan_gen_.229 = private unnamed_addr constant [20 x i8] c"udc_at91sam9g45_cfg\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2096, i32 37 }
@___asan_gen_.232 = private unnamed_addr constant [16 x i8] c"udc_sama5d3_cfg\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2103, i32 37 }
@___asan_gen_.235 = private unnamed_addr constant [16 x i8] c"udc_sam9x60_cfg\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2109, i32 37 }
@___asan_gen_.238 = private unnamed_addr constant [18 x i8] c"at91sam9rl_errata\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2052, i32 37 }
@___asan_gen_.241 = private unnamed_addr constant [19 x i8] c"at91sam9g45_errata\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2056, i32 37 }
@___asan_gen_.244 = private unnamed_addr constant [11 x i8] c"mode_1_cfg\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 281, i32 29 }
@___asan_gen_.247 = private unnamed_addr constant [11 x i8] c"mode_2_cfg\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 292, i32 29 }
@___asan_gen_.250 = private unnamed_addr constant [11 x i8] c"mode_3_cfg\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 300, i32 29 }
@___asan_gen_.253 = private unnamed_addr constant [11 x i8] c"mode_4_cfg\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 311, i32 29 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 590, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 597, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 611, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 679, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 740, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 850, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 928, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 933, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant [14 x i8] c"usba_ep0_desc\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1113, i32 39 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1835, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1844, i32 6 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1682, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1684, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1489, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1518, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1563, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant [19 x i8] c"test_packet_buffer\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1195, i32 20 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1223, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1228, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1245, i32 4 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1248, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1261, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1268, i32 4 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1272, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1418, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1630, i32 4 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 237, i32 28 }
@___asan_gen_.421 = private unnamed_addr constant [14 x i8] c"regs_dbg_fops\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 196, i32 37 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 212, i32 22 }
@___asan_gen_.427 = private unnamed_addr constant [15 x i8] c"queue_dbg_fops\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 188, i32 37 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 214, i32 22 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 217, i32 22 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 98, i32 5 }
@___asan_gen_.439 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.440 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 143, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant [16 x i8] c"usba_udc_pm_ops\00", align 1
@___asan_gen_.443 = private constant [43 x i8] c"../drivers/usb/gadget/udc/atmel_usba_udc.c\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2444, i32 8 }
@llvm.compiler.used = appending global [148 x ptr] [ptr @__UNIQUE_ID_alias285, ptr @__UNIQUE_ID_author282, ptr @__UNIQUE_ID_description281, ptr @__UNIQUE_ID_fifo_mode242, ptr @__UNIQUE_ID_fifo_modetype241, ptr @__UNIQUE_ID_file283, ptr @__UNIQUE_ID_license284, ptr @__exitcall_udc_driver_exit, ptr @__initcall__kmod_atmel_usba_udc__280_2455_udc_driver_init6, ptr @__param_fifo_mode, ptr @atmel_udc_of_init._entry, ptr @atmel_udc_of_init._entry.29, ptr @atmel_udc_of_init._entry.33, ptr @atmel_udc_of_init._entry_ptr, ptr @atmel_udc_of_init._entry_ptr.31, ptr @atmel_udc_of_init._entry_ptr.35, ptr @do_test_mode._entry, ptr @do_test_mode._entry.69, ptr @do_test_mode._entry.72, ptr @do_test_mode._entry.75, ptr @do_test_mode._entry.78, ptr @do_test_mode._entry.81, ptr @do_test_mode._entry.84, ptr @do_test_mode._entry_ptr, ptr @do_test_mode._entry_ptr.71, ptr @do_test_mode._entry_ptr.74, ptr @do_test_mode._entry_ptr.77, ptr @do_test_mode._entry_ptr.80, ptr @do_test_mode._entry_ptr.83, ptr @do_test_mode._entry_ptr.86, ptr @handle_ep0_setup._entry, ptr @handle_ep0_setup._entry_ptr, ptr @stop_dma._entry, ptr @stop_dma._entry_ptr, ptr @udc_driver_exit, ptr @usba_control_irq._entry, ptr @usba_control_irq._entry.61, ptr @usba_control_irq._entry.64, ptr @usba_control_irq._entry_ptr, ptr @usba_control_irq._entry_ptr.63, ptr @usba_control_irq._entry_ptr.66, ptr @usba_dma_irq._entry, ptr @usba_dma_irq._entry.56, ptr @usba_dma_irq._entry_ptr, ptr @usba_dma_irq._entry_ptr.58, ptr @usba_ep_irq._entry, ptr @usba_ep_irq._entry_ptr, ptr @usba_udc_irq._entry, ptr @usba_udc_irq._entry.51, ptr @usba_udc_irq._entry_ptr, ptr @usba_udc_irq._entry_ptr.53, ptr @usba_udc_probe._entry, ptr @usba_udc_probe._entry.13, ptr @usba_udc_probe._entry.18, ptr @usba_udc_probe._entry.21, ptr @usba_udc_probe._entry.5, ptr @usba_udc_probe._entry_ptr, ptr @usba_udc_probe._entry_ptr.16, ptr @usba_udc_probe._entry_ptr.20, ptr @usba_udc_probe._entry_ptr.24, ptr @usba_udc_probe._entry_ptr.7, ptr @fifo_mode, ptr @udc_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @usba_udc_probe.__key, ptr @.str.10, ptr @usba_udc_probe.__key.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @usba_udc_ops, ptr @usba_gadget_template, ptr @atmel_udc_dt_ids, ptr @atmel_pmc_dt_ids, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @usba_ep_ops, ptr @.str.34, ptr @udc_at91sam9rl_cfg, ptr @udc_at91sam9g45_cfg, ptr @udc_sama5d3_cfg, ptr @udc_sam9x60_cfg, ptr @at91sam9rl_errata, ptr @at91sam9g45_errata, ptr @mode_1_cfg, ptr @mode_2_cfg, ptr @mode_3_cfg, ptr @mode_4_cfg, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @usba_ep0_desc, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @do_test_mode.test_packet_buffer, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @regs_dbg_fops, ptr @.str.92, ptr @queue_dbg_fops, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @usba_udc_pm_ops], section "llvm.metadata"
@0 = internal global [112 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fifo_mode to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usba_udc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usba_udc_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usba_udc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usba_udc_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usba_udc_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usba_udc_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usba_udc_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usba_udc_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usba_gadget_template to i32), i32 1048, i32 1312, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_udc_dt_ids to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pmc_dt_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_udc_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_udc_of_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usba_ep_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_udc_of_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_at91sam9rl_cfg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_at91sam9g45_cfg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_sama5d3_cfg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_sam9x60_cfg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9rl_errata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9g45_errata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1_cfg to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_2_cfg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_3_cfg to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_4_cfg to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usba_ep0_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usba_udc_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usba_udc_irq._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usba_dma_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usba_dma_irq._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usba_control_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usba_control_irq._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usba_control_irq._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_mode.test_packet_buffer to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_mode._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_mode._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_mode._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_mode._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_mode._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_test_mode._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_ep0_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usba_ep_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regs_dbg_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_dbg_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usba_udc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @udc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @udc_driver, ptr noundef nonnull @usba_udc_probe, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @udc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @udc_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usba_udc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1256, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %gadget = getelementptr inbounds %struct.usba_udc, ptr %call.i, i32 0, i32 4
  %0 = call ptr @memcpy(ptr %gadget, ptr @usba_gadget_template, i32 1048)
  %ep_list = getelementptr inbounds %struct.usba_udc, ptr %call.i, i32 0, i32 4, i32 4
  %1 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %ep_list, ptr %ep_list, align 4
  %prev.i = getelementptr inbounds %struct.usba_udc, ptr %call.i, i32 0, i32 4, i32 4, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ep_list, ptr %prev.i, align 4
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #10
  %call4 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call2) #10
  %regs = getelementptr inbounds %struct.usba_udc, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %regs, align 8
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %do.end

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %call4 to i32
  br label %cleanup

do.end:                                           ; preds = %if.end
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef %call2, ptr noundef %call4) #13
  %call13 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %call15 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call13) #10
  %fifo = getelementptr inbounds %struct.usba_udc, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call15, ptr %fifo, align 4
  %cmp.i187 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i187, label %if.then18, label %do.end24

if.then18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %call15 to i32
  br label %cleanup

do.end24:                                         ; preds = %do.end
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %call13, ptr noundef %call15) #13
  %call27 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp = icmp slt i32 %call27, 0
  br i1 %cmp, label %do.end24.cleanup_crit_edge, label %if.end29

do.end24.cleanup_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %do.end24
  %call31 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.8) #10
  %cmp.i188 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i188, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %call31 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.end29
  %call37 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  %cmp.i189 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i189, label %if.then39, label %do.body42

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %call37 to i32
  br label %cleanup

do.body42:                                        ; preds = %if.end35
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @usba_udc_probe.__key, i16 noundef signext 3) #10
  %vbus_mutex = getelementptr inbounds %struct.usba_udc, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %vbus_mutex, ptr noundef nonnull @.str.12, ptr noundef nonnull @usba_udc_probe.__key.11) #10
  %pdev49 = getelementptr inbounds %struct.usba_udc, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %pdev49 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pdev, ptr %pdev49, align 4
  %pclk50 = getelementptr inbounds %struct.usba_udc, ptr %call.i, i32 0, i32 12
  %10 = ptrtoint ptr %pclk50 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call31, ptr %pclk50, align 4
  %hclk51 = getelementptr inbounds %struct.usba_udc, ptr %call.i, i32 0, i32 13
  %11 = ptrtoint ptr %hclk51 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call37, ptr %hclk51, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call52 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %call31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end59, label %do.end57

do.end57:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #13
  br label %cleanup

if.end59:                                         ; preds = %do.body42
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 131072) #10, !srcloc !242
  tail call void @clk_disable(ptr noundef %call31) #10
  tail call void @clk_unprepare(ptr noundef %call31) #10
  %call61 = tail call fastcc ptr @atmel_udc_of_init(ptr noundef %pdev, ptr noundef nonnull %call.i)
  %usba_ep = getelementptr inbounds %struct.usba_udc, ptr %call.i, i32 0, i32 14
  %15 = ptrtoint ptr %usba_ep to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call61, ptr %usba_ep, align 4
  %errata.i = getelementptr inbounds %struct.usba_udc, ptr %call.i, i32 0, i32 7
  %16 = ptrtoint ptr %errata.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %errata.i, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end59.toggle_bias.exit_crit_edge, label %land.lhs.true.i

if.end59.toggle_bias.exit_crit_edge:              ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %toggle_bias.exit

land.lhs.true.i:                                  ; preds = %if.end59
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool2.not.i = icmp eq ptr %19, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.toggle_bias.exitthread-pre-split_crit_edge, label %if.then.i

land.lhs.true.i.toggle_bias.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %toggle_bias.exitthread-pre-split

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %19(ptr noundef nonnull %call.i, i32 noundef 0) #10
  br label %toggle_bias.exitthread-pre-split

toggle_bias.exitthread-pre-split:                 ; preds = %if.then.i, %land.lhs.true.i.toggle_bias.exitthread-pre-split_crit_edge
  %20 = ptrtoint ptr %usba_ep to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load ptr, ptr %usba_ep, align 4
  br label %toggle_bias.exit

toggle_bias.exit:                                 ; preds = %toggle_bias.exitthread-pre-split, %if.end59.toggle_bias.exit_crit_edge
  %21 = phi ptr [ %.pr, %toggle_bias.exitthread-pre-split ], [ %call61, %if.end59.toggle_bias.exit_crit_edge ]
  %cmp.i190 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i190, label %if.then64, label %if.end67

if.then64:                                        ; preds = %toggle_bias.exit
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %21 to i32
  br label %cleanup

if.end67:                                         ; preds = %toggle_bias.exit
  %call.i191 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call27, ptr noundef nonnull @usba_udc_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i191)
  %tobool70.not = icmp eq i32 %call.i191, 0
  br i1 %tobool70.not, label %if.end76, label %do.end74

do.end74:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call27, i32 noundef %call.i191) #13
  br label %cleanup

if.end76:                                         ; preds = %if.end67
  %irq77 = getelementptr inbounds %struct.usba_udc, ptr %call.i, i32 0, i32 8
  %23 = ptrtoint ptr %irq77 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call27, ptr %irq77, align 4
  %vbus_pin = getelementptr inbounds %struct.usba_udc, ptr %call.i, i32 0, i32 9
  %24 = ptrtoint ptr %vbus_pin to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vbus_pin, align 8
  %tobool78.not = icmp eq ptr %25, null
  br i1 %tobool78.not, label %if.end76.if.end95_crit_edge, label %if.then79

if.end76.if.end95_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

if.then79:                                        ; preds = %if.end76
  %call81 = tail call i32 @gpiod_to_irq(ptr noundef nonnull %25) #10
  tail call void @irq_modify_status(i32 noundef %call81, i32 noundef 0, i32 noundef 4096) #10
  %26 = ptrtoint ptr %vbus_pin to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vbus_pin, align 8
  %call84 = tail call i32 @gpiod_to_irq(ptr noundef %27) #10
  %call85 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call84, ptr noundef null, ptr noundef nonnull @usba_vbus_irq_thread, i32 noundef 8195, ptr noundef nonnull @.str.17, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then79.if.end95_crit_edge, label %if.then87

if.then79.if.end95_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

if.then87:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %vbus_pin to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %vbus_pin, align 8
  %29 = ptrtoint ptr %pdev49 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev49, align 4
  %dev93 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev93, ptr noundef nonnull @.str.22) #13
  br label %if.end95

if.end95:                                         ; preds = %if.then87, %if.then79.if.end95_crit_edge, %if.end76.if.end95_crit_edge
  %call98 = tail call i32 @usb_add_gadget_udc(ptr noundef %dev, ptr noundef %gadget) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end101, label %if.end95.cleanup_crit_edge

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end101:                                        ; preds = %if.end95
  %call103 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #10
  tail call fastcc void @usba_init_debugfs(ptr noundef nonnull %call.i)
  %num_ep = getelementptr inbounds %struct.usba_udc, ptr %call.i, i32 0, i32 10
  %31 = ptrtoint ptr %num_ep to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_ep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp104192 = icmp sgt i32 %32, 1
  br i1 %cmp104192, label %if.end101.for.body_crit_edge, label %if.end101.cleanup_crit_edge

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end101.for.body_crit_edge:                     ; preds = %if.end101
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end101.for.body_crit_edge
  %i.0193 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %if.end101.for.body_crit_edge ]
  %33 = ptrtoint ptr %usba_ep to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %usba_ep, align 4
  %arrayidx = getelementptr %struct.usba_ep, ptr %34, i32 %i.0193
  tail call fastcc void @usba_ep_init_debugfs(ptr noundef nonnull %call.i, ptr noundef %arrayidx)
  %inc = add nuw nsw i32 %i.0193, 1
  %35 = ptrtoint ptr %num_ep to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_ep, align 4
  %cmp104 = icmp slt i32 %inc, %36
  br i1 %cmp104, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end101.cleanup_crit_edge, %if.end95.cleanup_crit_edge, %do.end74, %if.then64, %do.end57, %if.then39, %if.then33, %do.end24.cleanup_crit_edge, %if.then18, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then7 ], [ %6, %if.then18 ], [ %7, %if.then33 ], [ %8, %if.then39 ], [ %call52, %do.end57 ], [ %22, %if.then64 ], [ %call.i191, %do.end74 ], [ -12, %entry.cleanup_crit_edge ], [ %call27, %do.end24.cleanup_crit_edge ], [ %call98, %if.end95.cleanup_crit_edge ], [ 0, %if.end101.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %clk) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @atmel_udc_of_init(ptr noundef %pdev, ptr noundef %udc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_node(ptr noundef nonnull @atmel_udc_dt_ids, ptr noundef %1) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %ep_prealloc = getelementptr inbounds %struct.usba_udc_config, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ep_prealloc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ep_prealloc, align 4, !range !243
  %ep_prealloc3 = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 18
  %6 = ptrtoint ptr %ep_prealloc3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %ep_prealloc3, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %errata4 = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 7
  %9 = ptrtoint ptr %errata4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %errata4, align 8
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %if.end.if.end20_crit_edge, label %if.then7

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then7:                                         ; preds = %if.end
  %call8 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @atmel_pmc_dt_ids, ptr noundef null) #10
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then7.cleanup_crit_edge, label %if.end12

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.then7
  %call13 = tail call ptr @syscon_node_to_regmap(ptr noundef nonnull %call8) #10
  %pmc = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 24
  %10 = ptrtoint ptr %pmc to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call13, ptr %pmc, align 4
  tail call void @of_node_put(ptr noundef nonnull %call8) #10
  %11 = ptrtoint ptr %pmc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pmc, align 4
  %cmp.i = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end12.cleanup_crit_edge, label %if.end12.if.end20_crit_edge

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end12.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %num_ep = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 10
  %13 = ptrtoint ptr %num_ep to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %num_ep, align 4
  %call22 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef 1) #10
  %vbus_pin = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 9
  %14 = ptrtoint ptr %vbus_pin to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call22, ptr %vbus_pin, align 8
  %15 = load i16, ptr @fifo_mode, align 2
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i16 %15, label %sw.default.i [
    i16 0, label %if.then24
    i16 4, label %sw.bb7.i
    i16 1, label %if.end20.usba_config_fifo_table.exit_crit_edge
    i16 2, label %sw.bb3.i
    i16 3, label %sw.bb5.i
  ]

if.end20.usba_config_fifo_table.exit_crit_edge:   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %usba_config_fifo_table.exit

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %num_ep25 = getelementptr inbounds %struct.usba_udc_config, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %num_ep25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_ep25, align 4
  br label %if.end29

sw.default.i:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  store i16 0, ptr @fifo_mode, align 2
  br label %usba_config_fifo_table.exit

sw.bb3.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %usba_config_fifo_table.exit

sw.bb5.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %usba_config_fifo_table.exit

sw.bb7.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %usba_config_fifo_table.exit

usba_config_fifo_table.exit:                      ; preds = %sw.bb7.i, %sw.bb5.i, %sw.bb3.i, %sw.default.i, %if.end20.usba_config_fifo_table.exit_crit_edge
  %.sink.i = phi ptr [ @mode_2_cfg, %sw.bb3.i ], [ @mode_3_cfg, %sw.bb5.i ], [ @mode_4_cfg, %sw.bb7.i ], [ null, %sw.default.i ], [ @mode_1_cfg, %if.end20.usba_config_fifo_table.exit_crit_edge ]
  %n.0.i = phi i32 [ 4, %sw.bb3.i ], [ 7, %sw.bb5.i ], [ 9, %sw.bb7.i ], [ 0, %sw.default.i ], [ 7, %if.end20.usba_config_fifo_table.exit_crit_edge ]
  %fifo_cfg.i = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 11
  %19 = ptrtoint ptr %fifo_cfg.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %.sink.i, ptr %fifo_cfg.i, align 8
  br label %if.end29

if.end29:                                         ; preds = %usba_config_fifo_table.exit, %if.then24
  %storemerge = phi i32 [ %n.0.i, %usba_config_fifo_table.exit ], [ %18, %if.then24 ]
  %20 = ptrtoint ptr %num_ep to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %storemerge, ptr %num_ep, align 4
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %storemerge, i32 100) #10
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %if.end29.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !244

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end29
  %23 = extractvalue { i32, i1 } %21, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %23, i32 noundef 3520) #10
  %tobool33.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool33.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end36

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36:                                         ; preds = %devm_kcalloc.exit
  %ep37 = getelementptr inbounds %struct.usba_ep, ptr %call5.i.i, i32 0, i32 5
  %ep0 = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 4, i32 3
  %24 = ptrtoint ptr %ep0 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %ep37, ptr %ep0, align 4
  %ep_list = getelementptr inbounds %struct.usba_ep, ptr %call5.i.i, i32 0, i32 5, i32 3
  %25 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %ep_list, ptr %ep_list, align 4
  %prev.i = getelementptr inbounds %struct.usba_ep, ptr %call5.i.i, i32 0, i32 5, i32 3, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %ep_list, ptr %prev.i, align 4
  %27 = ptrtoint ptr %num_ep to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_ep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp41320 = icmp sgt i32 %28, 0
  br i1 %cmp41320, label %while.body.lr.ph, label %if.end36.do.end210_crit_edge

if.end36.do.end210_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end210

while.body.lr.ph:                                 ; preds = %if.end36
  %config = getelementptr inbounds %struct.usba_udc_config, ptr %3, i32 0, i32 1
  %fifo_cfg = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 11
  %regs = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 2
  %fifo = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 3
  %ep_list203 = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 4, i32 4
  %prev.i313 = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 4, i32 4, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end204.while.body_crit_edge, %while.body.lr.ph
  %i.0321 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end204.while.body_crit_edge ]
  %29 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %config, align 4
  %arrayidx43 = getelementptr %struct.usba_ep_config, ptr %30, i32 %i.0321
  %31 = load i16, ptr @fifo_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool46.not = icmp eq i16 %31, 0
  br i1 %tobool46.not, label %while.body.cond.end_crit_edge, label %cond.true

while.body.cond.end_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %fifo_cfg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fifo_cfg, align 8
  %arrayidx47 = getelementptr %struct.usba_fifo_cfg, ptr %33, i32 %i.0321
  %34 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx47, align 2
  %conv48 = zext i8 %35 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %while.body.cond.end_crit_edge
  %cond = phi i32 [ %conv48, %cond.true ], [ %i.0321, %while.body.cond.end_crit_edge ]
  %conv49 = trunc i32 %cond to i8
  %index = getelementptr %struct.usba_ep, ptr %call5.i.i, i32 %i.0321, i32 10
  %36 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv49, ptr %index, align 1
  %conv51 = and i32 %cond, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv51)
  %cmp52 = icmp eq i32 %conv51, 0
  %spec.select = select i1 %cmp52, i16 64, i16 1024
  %37 = getelementptr %struct.usba_ep, ptr %call5.i.i, i32 %i.0321, i32 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %spec.select, ptr %37, align 4
  %39 = load i16, ptr @fifo_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool58.not = icmp eq i16 %39, 0
  br i1 %tobool58.not, label %if.end76.thread, label %if.then59

if.end76.thread:                                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx43, align 4
  %nr_banks77317 = getelementptr %struct.usba_ep, ptr %call5.i.i, i32 %i.0321, i32 9
  %42 = ptrtoint ptr %nr_banks77317 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %nr_banks77317, align 2
  br label %if.end99

if.then59:                                        ; preds = %cond.end
  %43 = ptrtoint ptr %37 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %37, align 4
  %45 = ptrtoint ptr %fifo_cfg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fifo_cfg, align 8
  %fifo_size64 = getelementptr %struct.usba_fifo_cfg, ptr %46, i32 %i.0321, i32 1
  %47 = ptrtoint ptr %fifo_size64 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %fifo_size64, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %44, i16 %48)
  %cmp66 = icmp ult i16 %44, %48
  br i1 %cmp66, label %do.end, label %if.else70

do.end:                                           ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.27) #13
  br label %if.end76

if.else70:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %37 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %37, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.else70, %do.end
  %.pr = load i16, ptr @fifo_mode, align 2
  %50 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx43, align 4
  %nr_banks77 = getelementptr %struct.usba_ep, ptr %call5.i.i, i32 %i.0321, i32 9
  %52 = ptrtoint ptr %nr_banks77 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %nr_banks77, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %tobool78.not = icmp eq i16 %.pr, 0
  br i1 %tobool78.not, label %if.end76.if.end99_crit_edge, label %if.then79

if.end76.if.end99_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

if.then79:                                        ; preds = %if.end76
  %53 = ptrtoint ptr %fifo_cfg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fifo_cfg, align 8
  %nr_banks84 = getelementptr %struct.usba_fifo_cfg, ptr %54, i32 %i.0321, i32 2
  %55 = ptrtoint ptr %nr_banks84 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %nr_banks84, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %56)
  %cmp86 = icmp ult i8 %51, %56
  br i1 %cmp86, label %do.end91, label %if.else93

do.end91:                                         ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.30) #13
  br label %if.end99

if.else93:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %nr_banks77 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %nr_banks77, align 2
  br label %if.end99

if.end99:                                         ; preds = %if.else93, %do.end91, %if.end76.if.end99_crit_edge, %if.end76.thread
  %nr_banks77319 = phi ptr [ %nr_banks77317, %if.end76.thread ], [ %nr_banks77, %do.end91 ], [ %nr_banks77, %if.else93 ], [ %nr_banks77, %if.end76.if.end99_crit_edge ]
  %can_dma = getelementptr %struct.usba_ep_config, ptr %30, i32 %i.0321, i32 1
  %58 = ptrtoint ptr %can_dma to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load = load i8, ptr %can_dma, align 1
  %bf.lshr = and i8 %bf.load, -128
  %can_dma100 = getelementptr %struct.usba_ep, ptr %call5.i.i, i32 %i.0321, i32 11
  %59 = ptrtoint ptr %can_dma100 to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load101 = load i8, ptr %can_dma100, align 4
  %bf.clear = and i8 %bf.load101, 127
  %bf.set = or i8 %bf.clear, %bf.lshr
  store i8 %bf.set, ptr %can_dma100, align 4
  %bf.load102 = load i8, ptr %can_dma, align 1
  %bf.clear104 = and i8 %bf.load102, 64
  %bf.clear110 = and i8 %bf.set, -65
  %bf.set111 = or i8 %bf.clear110, %bf.clear104
  store i8 %bf.set111, ptr %can_dma100, align 4
  %name = getelementptr %struct.usba_ep, ptr %call5.i.i, i32 %i.0321, i32 4
  %60 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %index, align 1
  %conv114 = zext i8 %61 to i32
  %call115 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.32, i32 noundef %conv114)
  %ep118 = getelementptr %struct.usba_ep, ptr %call5.i.i, i32 %i.0321, i32 5
  %name119 = getelementptr %struct.usba_ep, ptr %call5.i.i, i32 %i.0321, i32 5, i32 1
  %62 = ptrtoint ptr %name119 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %name, ptr %name119, align 4
  %63 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs, align 8
  %mul = shl i32 %i.0321, 5
  %add = add i32 %mul, 256
  %add.ptr = getelementptr i8, ptr %64, i32 %add
  %ep_regs = getelementptr %struct.usba_ep, ptr %call5.i.i, i32 %i.0321, i32 1
  %65 = ptrtoint ptr %ep_regs to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %add.ptr, ptr %ep_regs, align 4
  %mul121 = shl i32 %i.0321, 4
  %add122 = add i32 %mul121, 768
  %add.ptr123 = getelementptr i8, ptr %64, i32 %add122
  %dma_regs = getelementptr %struct.usba_ep, ptr %call5.i.i, i32 %i.0321, i32 2
  %66 = ptrtoint ptr %dma_regs to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %add.ptr123, ptr %dma_regs, align 4
  %67 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fifo, align 4
  %shl = shl i32 %i.0321, 16
  %add.ptr124 = getelementptr i8, ptr %68, i32 %shl
  %fifo125 = getelementptr %struct.usba_ep, ptr %call5.i.i, i32 %i.0321, i32 3
  %69 = ptrtoint ptr %fifo125 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %add.ptr124, ptr %fifo125, align 4
  %ops = getelementptr %struct.usba_ep, ptr %call5.i.i, i32 %i.0321, i32 5, i32 2
  %70 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @usba_ep_ops, ptr %ops, align 4
  %71 = ptrtoint ptr %37 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %37, align 4
  %conv129 = zext i16 %72 to i32
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %ep118, i32 noundef %conv129) #10
  %udc130 = getelementptr %struct.usba_ep, ptr %call5.i.i, i32 %i.0321, i32 6
  %73 = ptrtoint ptr %udc130 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %udc, ptr %udc130, align 4
  %queue = getelementptr %struct.usba_ep, ptr %call5.i.i, i32 %i.0321, i32 7
  %74 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i312 = getelementptr %struct.usba_ep, ptr %call5.i.i, i32 %i.0321, i32 7, i32 1
  %75 = ptrtoint ptr %prev.i312 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %queue, ptr %prev.i312, align 4
  %76 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %index, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %cmp133 = icmp eq i8 %77, 0
  br i1 %cmp133, label %if.then135, label %if.else140

if.then135:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  %caps = getelementptr %struct.usba_ep, ptr %call5.i.i, i32 %i.0321, i32 5, i32 4
  %78 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load137 = load i8, ptr %caps, align 4
  %bf.set139 = or i8 %bf.load137, -128
  store i8 %bf.set139, ptr %caps, align 4
  br label %if.end164

if.else140:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %can_dma100 to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load142 = load i8, ptr %can_dma100, align 4
  %bf.clear144 = and i8 %bf.load142, 64
  %caps147 = getelementptr %struct.usba_ep, ptr %call5.i.i, i32 %i.0321, i32 5, i32 4
  %80 = ptrtoint ptr %caps147 to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load148 = load i8, ptr %caps147, align 4
  %bf.clear151 = and i8 %bf.load148, -113
  %bf.set152 = or i8 %bf.clear144, %bf.clear151
  %bf.set163 = or i8 %bf.set152, 48
  store i8 %bf.set163, ptr %caps147, align 4
  br label %if.end164

if.end164:                                        ; preds = %if.else140, %if.then135
  %caps166 = getelementptr %struct.usba_ep, ptr %call5.i.i, i32 %i.0321, i32 5, i32 4
  %81 = ptrtoint ptr %caps166 to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load167 = load i8, ptr %caps166, align 4
  %bf.set174 = or i8 %bf.load167, 12
  store i8 %bf.set174, ptr %caps166, align 4
  %82 = load i16, ptr @fifo_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %cmp176.not = icmp eq i16 %82, 0
  br i1 %cmp176.not, label %if.end164.if.end197_crit_edge, label %if.then178

if.end164.if.end197_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end197

if.then178:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %37 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %37, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %84)
  %cmp181 = icmp ult i16 %84, 9
  %conv180 = zext i16 %84 to i32
  %sub = add nsw i32 %conv180, -1
  %85 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 true) #10, !range !245
  %sub188 = sub nsw i32 5, %85
  %and = and i32 %sub188, 7
  %and.sink = select i1 %cmp181, i32 0, i32 %and
  %86 = getelementptr %struct.usba_ep, ptr %call5.i.i, i32 %i.0321, i32 12
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %and.sink, ptr %86, align 4
  %88 = ptrtoint ptr %nr_banks77319 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %nr_banks77319, align 2
  %90 = shl i8 %89, 6
  %shl195 = zext i8 %90 to i32
  %or = or i32 %and.sink, %shl195
  store i32 %or, ptr %86, align 4
  br label %if.end197

if.end197:                                        ; preds = %if.then178, %if.end164.if.end197_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0321)
  %tobool198.not = icmp eq i32 %i.0321, 0
  br i1 %tobool198.not, label %if.end197.if.end204_crit_edge, label %if.then199

if.end197.if.end204_crit_edge:                    ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end204

if.then199:                                       ; preds = %if.end197
  %ep_list201 = getelementptr %struct.usba_ep, ptr %call5.i.i, i32 %i.0321, i32 5, i32 3
  %91 = ptrtoint ptr %prev.i313 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %prev.i313, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list201, ptr noundef %92, ptr noundef %ep_list203) #10
  br i1 %call.i.i, label %if.end.i.i314, label %if.then199.if.end204_crit_edge

if.then199.if.end204_crit_edge:                   ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end204

if.end.i.i314:                                    ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #12
  %93 = ptrtoint ptr %prev.i313 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %ep_list201, ptr %prev.i313, align 4
  %94 = ptrtoint ptr %ep_list201 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %ep_list203, ptr %ep_list201, align 4
  %prev3.i.i = getelementptr %struct.usba_ep, ptr %call5.i.i, i32 %i.0321, i32 5, i32 3, i32 1
  %95 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %92, ptr %prev3.i.i, align 4
  %96 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %ep_list201, ptr %92, align 4
  br label %if.end204

if.end204:                                        ; preds = %if.end.i.i314, %if.then199.if.end204_crit_edge, %if.end197.if.end204_crit_edge
  %inc = add nuw nsw i32 %i.0321, 1
  %97 = ptrtoint ptr %num_ep to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %num_ep, align 4
  %cmp41 = icmp slt i32 %inc, %98
  br i1 %cmp41, label %if.end204.while.body_crit_edge, label %while.end

if.end204.while.body_crit_edge:                   ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %if.end204
  br i1 %cmp41320, label %while.end.cleanup_crit_edge, label %while.end.do.end210_crit_edge

while.end.do.end210_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end210

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end210:                                        ; preds = %while.end.do.end210_crit_edge, %if.end36.do.end210_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end210, %while.end.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end210 ], [ %call5.i.i, %while.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.then7.cleanup_crit_edge ], [ %12, %if.end12.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end29.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usba_udc_irq(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  %crq.i = alloca %union.anon.72, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %devid) #10
  %int_enb_cache.i = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 22
  %0 = ptrtoint ptr %int_enb_cache.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %int_enb_cache.i, align 4
  %regs = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !246
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %or = or i32 %1, 1
  %and = and i32 %5, %or
  %and2 = and i32 %and, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %add.ptr4 = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 570425344) #10, !srcloc !242
  %8 = ptrtoint ptr %int_enb_cache.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %int_enb_cache.i, align 4
  %or.i = or i32 %9, 32
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 8
  %add.ptr.i = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #10, !srcloc !242
  %13 = ptrtoint ptr %int_enb_cache.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.i, ptr %int_enb_cache.i, align 4
  %and.i = and i32 %or.i, -3
  %14 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 8
  %add.ptr.i268 = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i268, i32 %14) #10, !srcloc !242
  %17 = ptrtoint ptr %int_enb_cache.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and.i, ptr %int_enb_cache.i, align 4
  %suspended = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 17
  %18 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %suspended, align 2
  %errata.i = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 7
  %19 = ptrtoint ptr %errata.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %errata.i, align 8
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.then.toggle_bias.exit_crit_edge, label %land.lhs.true.i

if.then.toggle_bias.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %toggle_bias.exit

land.lhs.true.i:                                  ; preds = %if.then
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool2.not.i = icmp eq ptr %22, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.toggle_bias.exit_crit_edge, label %if.then.i

land.lhs.true.i.toggle_bias.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %toggle_bias.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %22(ptr noundef %devid, i32 noundef 0) #10
  br label %toggle_bias.exit

toggle_bias.exit:                                 ; preds = %if.then.i, %land.lhs.true.i.toggle_bias.exit_crit_edge, %if.then.toggle_bias.exit_crit_edge
  %bias_pulse_needed = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 15
  %23 = ptrtoint ptr %bias_pulse_needed to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %bias_pulse_needed, align 8
  %clocked.i = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 16
  %24 = ptrtoint ptr %clocked.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %clocked.i, align 1, !range !243
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i269 = icmp eq i8 %25, 0
  br i1 %tobool.not.i269, label %toggle_bias.exit.stop_clock.exit_crit_edge, label %if.end.i

toggle_bias.exit.stop_clock.exit_crit_edge:       ; preds = %toggle_bias.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %stop_clock.exit

if.end.i:                                         ; preds = %toggle_bias.exit
  call void @__sanitizer_cov_trace_pc() #12
  %hclk.i = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 13
  %26 = ptrtoint ptr %hclk.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hclk.i, align 8
  tail call void @clk_disable(ptr noundef %27) #10
  tail call void @clk_unprepare(ptr noundef %27) #10
  %pclk.i = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 12
  %28 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pclk.i, align 4
  tail call void @clk_disable(ptr noundef %29) #10
  tail call void @clk_unprepare(ptr noundef %29) #10
  %30 = ptrtoint ptr %clocked.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %clocked.i, align 1
  %pdev.i = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 6
  %31 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %32, i32 0, i32 3
  tail call void @pm_relax(ptr noundef %dev.i) #10
  br label %stop_clock.exit

stop_clock.exit:                                  ; preds = %if.end.i, %toggle_bias.exit.stop_clock.exit_crit_edge
  %gadget = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 4
  %speed = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 4, i32 5
  %33 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.not = icmp eq i32 %34, 0
  br i1 %cmp.not, label %stop_clock.exit.if.end18_crit_edge, label %land.lhs.true

stop_clock.exit.if.end18_crit_edge:               ; preds = %stop_clock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

land.lhs.true:                                    ; preds = %stop_clock.exit
  %driver = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 5
  %35 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver, align 8
  %tobool8.not = icmp eq ptr %36, null
  br i1 %tobool8.not, label %land.lhs.true.if.end18_crit_edge, label %land.lhs.true9

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

land.lhs.true9:                                   ; preds = %land.lhs.true
  %suspend = getelementptr inbounds %struct.usb_gadget_driver, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %suspend, align 4
  %tobool11.not = icmp eq ptr %38, null
  br i1 %tobool11.not, label %land.lhs.true9.if.end18_crit_edge, label %if.then12

land.lhs.true9.if.end18_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then12:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %devid) #10
  %39 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %driver, align 8
  %suspend15 = getelementptr inbounds %struct.usb_gadget_driver, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %suspend15 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %suspend15, align 4
  tail call void %42(ptr noundef %gadget) #10
  tail call void @_raw_spin_lock(ptr noundef %devid) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %land.lhs.true9.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %stop_clock.exit.if.end18_crit_edge, %entry.if.end18_crit_edge
  %and19 = and i32 %and, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end28_crit_edge, label %if.then21

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then21:                                        ; preds = %if.end18
  %call22 = tail call fastcc i32 @start_clock(ptr noundef %devid)
  %errata.i270 = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 7
  %43 = ptrtoint ptr %errata.i270 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %errata.i270, align 8
  %tobool.not.i271 = icmp eq ptr %44, null
  br i1 %tobool.not.i271, label %if.then21.toggle_bias.exit276_crit_edge, label %land.lhs.true.i273

if.then21.toggle_bias.exit276_crit_edge:          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %toggle_bias.exit276

land.lhs.true.i273:                               ; preds = %if.then21
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %tobool2.not.i272 = icmp eq ptr %46, null
  br i1 %tobool2.not.i272, label %land.lhs.true.i273.toggle_bias.exit276_crit_edge, label %if.then.i274

land.lhs.true.i273.toggle_bias.exit276_crit_edge: ; preds = %land.lhs.true.i273
  call void @__sanitizer_cov_trace_pc() #12
  br label %toggle_bias.exit276

if.then.i274:                                     ; preds = %land.lhs.true.i273
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %46(ptr noundef %devid, i32 noundef 1) #10
  br label %toggle_bias.exit276

toggle_bias.exit276:                              ; preds = %if.then.i274, %land.lhs.true.i273.toggle_bias.exit276_crit_edge, %if.then21.toggle_bias.exit276_crit_edge
  %47 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs, align 8
  %add.ptr24 = getelementptr i8, ptr %48, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 536870912) #10, !srcloc !242
  br label %if.end28

if.end28:                                         ; preds = %toggle_bias.exit276, %if.end18.if.end28_crit_edge
  %and29 = and i32 %and, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.end54_crit_edge, label %if.then31

if.end28.if.end54_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then31:                                        ; preds = %if.end28
  %suspended32 = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 17
  %49 = ptrtoint ptr %suspended32 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %suspended32, align 2
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 8
  %add.ptr34 = getelementptr i8, ptr %51, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 1073741824) #10, !srcloc !242
  %52 = ptrtoint ptr %int_enb_cache.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %int_enb_cache.i, align 4
  %and.i278 = and i32 %53, -33
  %54 = tail call i32 @llvm.bswap.i32(i32 %and.i278) #10
  %55 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs, align 8
  %add.ptr.i280 = getelementptr i8, ptr %56, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i280, i32 %54) #10, !srcloc !242
  %57 = ptrtoint ptr %int_enb_cache.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %and.i278, ptr %int_enb_cache.i, align 4
  %or.i282 = or i32 %and.i278, 2
  %58 = tail call i32 @llvm.bswap.i32(i32 %or.i282) #10
  %59 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs, align 8
  %add.ptr.i284 = getelementptr i8, ptr %60, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i284, i32 %58) #10, !srcloc !242
  %61 = ptrtoint ptr %int_enb_cache.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or.i282, ptr %int_enb_cache.i, align 4
  %bias_pulse_needed.i = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 15
  %62 = ptrtoint ptr %bias_pulse_needed.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %bias_pulse_needed.i, align 8, !range !243
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i285 = icmp eq i8 %63, 0
  br i1 %tobool.not.i285, label %if.then31.generate_bias_pulse.exit_crit_edge, label %if.end.i287

if.then31.generate_bias_pulse.exit_crit_edge:     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %generate_bias_pulse.exit

if.end.i287:                                      ; preds = %if.then31
  %errata.i286 = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 7
  %64 = ptrtoint ptr %errata.i286 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %errata.i286, align 8
  %tobool1.not.i = icmp eq ptr %65, null
  br i1 %tobool1.not.i, label %if.end.i287.if.end7.i_crit_edge, label %land.lhs.true.i288

if.end.i287.if.end7.i_crit_edge:                  ; preds = %if.end.i287
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

land.lhs.true.i288:                               ; preds = %if.end.i287
  %pulse_bias.i = getelementptr inbounds %struct.usba_udc_errata, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %pulse_bias.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pulse_bias.i, align 4
  %tobool3.not.i = icmp eq ptr %67, null
  br i1 %tobool3.not.i, label %land.lhs.true.i288.if.end7.i_crit_edge, label %if.then4.i

land.lhs.true.i288.if.end7.i_crit_edge:           ; preds = %land.lhs.true.i288
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then4.i:                                       ; preds = %land.lhs.true.i288
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %67(ptr noundef %devid) #10
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %land.lhs.true.i288.if.end7.i_crit_edge, %if.end.i287.if.end7.i_crit_edge
  %68 = ptrtoint ptr %bias_pulse_needed.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %bias_pulse_needed.i, align 8
  br label %generate_bias_pulse.exit

generate_bias_pulse.exit:                         ; preds = %if.end7.i, %if.then31.generate_bias_pulse.exit_crit_edge
  %gadget38 = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 4
  %speed39 = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 4, i32 5
  %69 = ptrtoint ptr %speed39 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %speed39, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp40.not = icmp eq i32 %70, 0
  br i1 %cmp40.not, label %generate_bias_pulse.exit.if.end54_crit_edge, label %land.lhs.true41

generate_bias_pulse.exit.if.end54_crit_edge:      ; preds = %generate_bias_pulse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

land.lhs.true41:                                  ; preds = %generate_bias_pulse.exit
  %driver42 = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 5
  %71 = ptrtoint ptr %driver42 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %driver42, align 8
  %tobool43.not = icmp eq ptr %72, null
  br i1 %tobool43.not, label %land.lhs.true41.if.end54_crit_edge, label %land.lhs.true44

land.lhs.true41.if.end54_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

land.lhs.true44:                                  ; preds = %land.lhs.true41
  %resume = getelementptr inbounds %struct.usb_gadget_driver, ptr %72, i32 0, i32 7
  %73 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %resume, align 4
  %tobool46.not = icmp eq ptr %74, null
  br i1 %tobool46.not, label %land.lhs.true44.if.end54_crit_edge, label %if.then47

land.lhs.true44.if.end54_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then47:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %devid) #10
  %75 = ptrtoint ptr %driver42 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %driver42, align 8
  %resume50 = getelementptr inbounds %struct.usb_gadget_driver, ptr %76, i32 0, i32 7
  %77 = ptrtoint ptr %resume50 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %resume50, align 4
  tail call void %78(ptr noundef %gadget38) #10
  tail call void @_raw_spin_lock(ptr noundef %devid) #10
  br label %if.end54

if.end54:                                         ; preds = %if.then47, %land.lhs.true44.if.end54_crit_edge, %land.lhs.true41.if.end54_crit_edge, %generate_bias_pulse.exit.if.end54_crit_edge, %if.end28.if.end54_crit_edge
  %shr = lshr i32 %and, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %and)
  %tobool56.not = icmp ult i32 %and, 16777216
  br i1 %tobool56.not, label %if.end54.if.end63_crit_edge, label %if.then57

if.end54.if.end63_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.then57:                                        ; preds = %if.end54
  %79 = ptrtoint ptr %int_enb_cache.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %int_enb_cache.i, align 4
  %or.i290 = or i32 %80, 2
  %81 = tail call i32 @llvm.bswap.i32(i32 %or.i290) #10
  %82 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs, align 8
  %add.ptr.i292 = getelementptr i8, ptr %83, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i292, i32 %81) #10, !srcloc !242
  %84 = ptrtoint ptr %int_enb_cache.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %or.i290, ptr %int_enb_cache.i, align 4
  %usba_ep = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 14
  %pdev.i296 = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then57
  %i.0459 = phi i32 [ 1, %if.then57 ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.0459
  %and59 = and i32 %shl, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %for.body.for.inc_crit_edge, label %if.then61

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then61:                                        ; preds = %for.body
  %85 = ptrtoint ptr %usba_ep to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %usba_ep, align 4
  %arrayidx = getelementptr %struct.usba_ep, ptr %86, i32 %i.0459
  %dma_regs.i = getelementptr %struct.usba_ep, ptr %86, i32 %i.0459, i32 2
  %87 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i293 = getelementptr i8, ptr %88, i32 12
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i293) #10, !srcloc !246
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #10
  %91 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %92, i32 8
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #10, !srcloc !246
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #10
  %last_dma_status.i = getelementptr %struct.usba_ep, ptr %86, i32 %i.0459, i32 13
  %95 = ptrtoint ptr %last_dma_status.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %90, ptr %last_dma_status.i, align 4
  %and.i294 = and i32 %94, %90
  %and6.i = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool.not.i295 = icmp eq i32 %and6.i, 0
  br i1 %tobool.not.i295, label %if.then61.if.end.i298_crit_edge, label %do.end9.i

if.then61.if.end.i298_crit_edge:                  ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i298

do.end9.i:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %pdev.i296 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pdev.i296, align 4
  %dev.i297 = getelementptr inbounds %struct.platform_device, ptr %97, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i297, ptr noundef nonnull @.str.54) #13
  %98 = ptrtoint ptr %pdev.i296 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pdev.i296, align 4
  %dev14.i = getelementptr inbounds %struct.platform_device, ptr %99, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14.i, ptr noundef nonnull @.str.57, i32 noundef %90, i32 noundef %and.i294, i32 noundef %94) #13
  br label %if.end.i298

if.end.i298:                                      ; preds = %do.end9.i, %if.then61.if.end.i298_crit_edge
  %queue.i = getelementptr %struct.usba_ep, ptr %86, i32 %i.0459, i32 7
  %100 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.i = icmp eq ptr %101, %queue.i
  %and19.i = and i32 %and.i294, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %or.cond.i = select i1 %cmp.i.i, i1 true, i1 %tobool20.not.i
  br i1 %or.cond.i, label %if.end.i298.for.inc_crit_edge, label %if.then21.i

if.end.i298.for.inc_crit_edge:                    ; preds = %if.end.i298
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then21.i:                                      ; preds = %if.end.i298
  %add.ptr24.i = getelementptr i8, ptr %101, i32 -56
  %length.i.i = getelementptr i8, ptr %101, i32 -52
  %102 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %length.i.i, align 4
  %shr.i.i = lshr i32 %90, 16
  %sub.i.i = sub i32 %103, %shr.i.i
  %actual.i.i = getelementptr i8, ptr %101, i32 -4
  %104 = ptrtoint ptr %actual.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %sub.i.i, ptr %actual.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %101) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then21.i.list_del_init.exit.i_crit_edge

if.then21.i.list_del_init.exit.i_crit_edge:       ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %101, i32 0, i32 1
  %105 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %prev.i.i.i, align 4
  %107 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %101, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %106, ptr %prev1.i.i.i.i, align 4
  %110 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %108, ptr %106, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then21.i.list_del_init.exit.i_crit_edge
  %111 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %101, ptr %101, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %101, i32 0, i32 1
  %112 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %101, ptr %prev.i3.i.i, align 4
  %113 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %114, %queue.i
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %ep_regs.i.i = getelementptr %struct.usba_ep, ptr %86, i32 %i.0459, i32 1
  %115 = ptrtoint ptr %ep_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ep_regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %116, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 655360) #10, !srcloc !242
  br label %submit_next_request.exit.i

if.end.i.i:                                       ; preds = %list_del_init.exit.i
  %submitted.i.i = getelementptr i8, ptr %114, i32 12
  %117 = ptrtoint ptr %submitted.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %bf.load.i.i = load i8, ptr %submitted.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool3.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool3.not.i.i, label %if.then4.i.i, label %if.end.i.i.submit_next_request.exit.i_crit_edge

if.end.i.i.submit_next_request.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %submit_next_request.exit.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr2.i.i = getelementptr i8, ptr %114, i32 -56
  tail call fastcc void @submit_request(ptr noundef %arrayidx, ptr noundef %add.ptr2.i.i) #10
  br label %submit_next_request.exit.i

submit_next_request.exit.i:                       ; preds = %if.then4.i.i, %if.end.i.i.submit_next_request.exit.i_crit_edge, %if.then.i.i
  tail call fastcc void @request_complete(ptr noundef %arrayidx, ptr noundef %add.ptr24.i, i32 noundef 0) #10
  br label %for.inc

for.inc:                                          ; preds = %submit_next_request.exit.i, %if.end.i298.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0459, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.if.end63_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.if.end63_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.end63:                                         ; preds = %for.inc.if.end63_crit_edge, %if.end54.if.end63_crit_edge
  %shr64 = lshr i32 %and, 8
  %and65 = and i32 %shr64, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end63.if.end90_crit_edge, label %if.then67

if.end63.if.end90_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then67:                                        ; preds = %if.end63
  %118 = ptrtoint ptr %int_enb_cache.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %int_enb_cache.i, align 4
  %or.i300 = or i32 %119, 2
  %120 = tail call i32 @llvm.bswap.i32(i32 %or.i300) #10
  %121 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regs, align 8
  %add.ptr.i302 = getelementptr i8, ptr %122, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i302, i32 %120) #10, !srcloc !242
  %123 = ptrtoint ptr %int_enb_cache.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %or.i300, ptr %int_enb_cache.i, align 4
  %num_ep = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 10
  %124 = ptrtoint ptr %num_ep to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %num_ep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp70462 = icmp sgt i32 %125, 0
  br i1 %cmp70462, label %for.body71.lr.ph, label %if.then67.if.end90_crit_edge

if.then67.if.end90_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

for.body71.lr.ph:                                 ; preds = %if.then67
  %usba_ep76 = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 14
  %pdev.i334 = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 6
  %test_mode2.i.i = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 20
  %ep0.i.i.i = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 4, i32 3
  %126 = getelementptr inbounds [2 x i32], ptr %crq.i, i32 0, i32 1
  %wLength.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %crq.i, i32 0, i32 4
  %bRequest.i.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %crq.i, i32 0, i32 1
  %wValue.i.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %crq.i, i32 0, i32 2
  %ep_list.i = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 4, i32 4
  %devstatus93.i.i = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 19
  %driver.i.i = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 5
  %gadget.i.i = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 4
  br label %for.body71

for.body71:                                       ; preds = %for.inc87.for.body71_crit_edge, %for.body71.lr.ph
  %i68.0463 = phi i32 [ 0, %for.body71.lr.ph ], [ %inc88, %for.inc87.for.body71_crit_edge ]
  %shl72 = shl nuw i32 1, %i68.0463
  %and73 = and i32 %shl72, %and65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %for.body71.for.inc87_crit_edge, label %if.then75

for.body71.for.inc87_crit_edge:                   ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc87

if.then75:                                        ; preds = %for.body71
  %127 = ptrtoint ptr %usba_ep76 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %usba_ep76, align 4
  %arrayidx77 = getelementptr %struct.usba_ep, ptr %128, i32 %i68.0463
  %index = getelementptr %struct.usba_ep, ptr %128, i32 %i68.0463, i32 10
  %129 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %index, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %cmp78 = icmp eq i8 %130, 0
  %ep_regs.i = getelementptr %struct.usba_ep, ptr %128, i32 %i68.0463, i32 1
  br i1 %cmp78, label %if.then80, label %if.else

if.then80:                                        ; preds = %if.then75
  %queue.i303 = getelementptr %struct.usba_ep, ptr %128, i32 %i68.0463, i32 7
  %name.i = getelementptr %struct.usba_ep, ptr %128, i32 %i68.0463, i32 5, i32 1
  %maxpacket.i.i = getelementptr %struct.usba_ep, ptr %128, i32 %i68.0463, i32 5, i32 7
  %fifo.i.i = getelementptr %struct.usba_ep, ptr %128, i32 %i68.0463, i32 3
  br label %restart.i

restart.i:                                        ; preds = %restart.i.backedge, %if.then80
  %131 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr.i304 = getelementptr i8, ptr %132, i32 28
  %133 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i304) #10, !srcloc !246
  %134 = call i32 @llvm.bswap.i32(i32 %133) #10
  %135 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr3.i305 = getelementptr i8, ptr %136, i32 12
  %137 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i305) #10, !srcloc !246
  %138 = call i32 @llvm.bswap.i32(i32 %137) #10
  %139 = ptrtoint ptr %queue.i303 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile ptr, ptr %queue.i303, align 4
  %cmp.i.not.i = icmp eq ptr %140, %queue.i303
  %add.ptr9.i = getelementptr i8, ptr %140, i32 -56
  %spec.select.i = select i1 %cmp.i.not.i, ptr null, ptr %add.ptr9.i
  %and.i306 = and i32 %138, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i306)
  %tobool10.not.i = icmp ne i32 %and.i306, 0
  %and11.i = and i32 %134, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %or.cond.i307 = select i1 %tobool10.not.i, i1 %tobool12.not.i, i1 false
  br i1 %or.cond.i307, label %if.then13.i, label %if.end27.i

if.then13.i:                                      ; preds = %restart.i
  %submitted.i = getelementptr inbounds %struct.usba_request, ptr %spec.select.i, i32 0, i32 3
  %141 = ptrtoint ptr %submitted.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %bf.load.i = load i8, ptr %submitted.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool14.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool14.not.i, label %if.else.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.then13.i
  %length.i.i308 = getelementptr inbounds %struct.usb_request, ptr %spec.select.i, i32 0, i32 1
  %142 = ptrtoint ptr %length.i.i308 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %length.i.i308, align 4
  %actual.i.i309 = getelementptr inbounds %struct.usb_request, ptr %spec.select.i, i32 0, i32 12
  %144 = ptrtoint ptr %actual.i.i309 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %actual.i.i309, align 4
  %sub.i.i310 = sub i32 %143, %145
  %bf.clear.i.i = and i8 %bf.load.i, -65
  %bf.set.i.i = or i8 %bf.load.i, 64
  %146 = ptrtoint ptr %submitted.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %bf.set.i.i, ptr %submitted.i, align 4
  %147 = ptrtoint ptr %maxpacket.i.i to i32
  call void @__asan_loadN_noabort(i32 %147, i32 7)
  %bf.load4.i.i = load i56, ptr %maxpacket.i.i, align 2
  %bf.lshr.i.i = lshr i56 %bf.load4.i.i, 40
  %bf.cast.i.i = trunc i56 %bf.lshr.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i310, i32 %bf.cast.i.i)
  %cmp.i262.i = icmp ugt i32 %sub.i.i310, %bf.cast.i.i
  br i1 %cmp.i262.i, label %if.then15.i.do.end.sink.split.i.i_crit_edge, label %if.else.i.i

if.then15.i.do.end.sink.split.i.i_crit_edge:      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.sink.split.i.i

if.else.i.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i310, i32 %bf.cast.i.i)
  %cmp19.i.i = icmp eq i32 %sub.i.i310, %bf.cast.i.i
  br i1 %cmp19.i.i, label %land.lhs.true.i.i, label %if.else.i.i.next_fifo_transaction.exit.i_crit_edge

if.else.i.i.next_fifo_transaction.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %next_fifo_transaction.exit.i

land.lhs.true.i.i:                                ; preds = %if.else.i.i
  %zero.i.i = getelementptr inbounds %struct.usb_request, ptr %spec.select.i, i32 0, i32 6
  %148 = ptrtoint ptr %zero.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %bf.load21.i.i = load i32, ptr %zero.i.i, align 4
  %149 = and i32 %bf.load21.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool.not.i.i = icmp eq i32 %149, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.next_fifo_transaction.exit.i_crit_edge, label %land.lhs.true.i.i.do.end.sink.split.i.i_crit_edge

land.lhs.true.i.i.do.end.sink.split.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.sink.split.i.i

land.lhs.true.i.i.next_fifo_transaction.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %next_fifo_transaction.exit.i

do.end.sink.split.i.i:                            ; preds = %land.lhs.true.i.i.do.end.sink.split.i.i_crit_edge, %if.then15.i.do.end.sink.split.i.i_crit_edge
  %transaction_len.0.ph.i.i = phi i32 [ %bf.cast.i.i, %if.then15.i.do.end.sink.split.i.i_crit_edge ], [ %sub.i.i310, %land.lhs.true.i.i.do.end.sink.split.i.i_crit_edge ]
  %150 = ptrtoint ptr %submitted.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %bf.clear.i.i, ptr %submitted.i, align 4
  br label %next_fifo_transaction.exit.i

next_fifo_transaction.exit.i:                     ; preds = %do.end.sink.split.i.i, %land.lhs.true.i.i.next_fifo_transaction.exit.i_crit_edge, %if.else.i.i.next_fifo_transaction.exit.i_crit_edge
  %transaction_len.0.i.i = phi i32 [ %sub.i.i310, %land.lhs.true.i.i.next_fifo_transaction.exit.i_crit_edge ], [ %sub.i.i310, %if.else.i.i.next_fifo_transaction.exit.i_crit_edge ], [ %transaction_len.0.ph.i.i, %do.end.sink.split.i.i ]
  %151 = ptrtoint ptr %fifo.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %fifo.i.i, align 4
  %153 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %spec.select.i, align 4
  %add.ptr.i.i311 = getelementptr i8, ptr %154, i32 %145
  call void @mmiocpy(ptr noundef %152, ptr noundef %add.ptr.i.i311, i32 noundef %transaction_len.0.i.i) #10
  %155 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr33.i.i = getelementptr i8, ptr %156, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i.i, i32 524288) #10, !srcloc !242
  %157 = ptrtoint ptr %actual.i.i309 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %actual.i.i309, align 4
  %add.i.i = add i32 %158, %transaction_len.0.i.i
  store i32 %add.i.i, ptr %actual.i.i309, align 4
  br label %if.end16.i

if.else.i:                                        ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @submit_request(ptr noundef %arrayidx77, ptr noundef %spec.select.i) #10
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else.i, %next_fifo_transaction.exit.i
  %159 = ptrtoint ptr %submitted.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %bf.load17.i = load i8, ptr %submitted.i, align 4
  %160 = and i8 %bf.load17.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool20.not.i312 = icmp eq i8 %160, 0
  br i1 %tobool20.not.i312, label %if.end16.i.restart.i.backedge_crit_edge, label %if.then21.i313

if.end16.i.restart.i.backedge_crit_edge:          ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %restart.i.backedge

if.then21.i313:                                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %161 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %162, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 524288) #10, !srcloc !242
  %163 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %164, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 262144) #10, !srcloc !242
  br label %restart.i.backedge

if.end27.i:                                       ; preds = %restart.i
  %and28.i = and i32 %138, %134
  %and29.i = and i32 %and28.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end72.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.end27.i
  %165 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr33.i = getelementptr i8, ptr %166, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 262144) #10, !srcloc !242
  %167 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx77, align 4
  %169 = zext i32 %168 to i64
  call void @__sanitizer_cov_trace_switch(i64 %169, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %168, label %do.end67.i [
    i32 1, label %sw.bb.i
    i32 5, label %sw.bb39.i
    i32 3, label %sw.bb49.i
    i32 6, label %sw.bb57.i
  ]

sw.bb.i:                                          ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #12
  %170 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr35.i = getelementptr i8, ptr %171, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 131072) #10, !srcloc !242
  %172 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr37.i = getelementptr i8, ptr %173, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 262144) #10, !srcloc !242
  %174 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 4, ptr %arrayidx77, align 4
  br label %restart.i.backedge

sw.bb39.i:                                        ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #12
  %175 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %regs, align 8
  %177 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %176) #10, !srcloc !246
  %178 = or i32 %177, -2147483648
  %179 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %regs, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %180, i32 %178) #10, !srcloc !242
  %181 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr47.i = getelementptr i8, ptr %182, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.i, i32 262144) #10, !srcloc !242
  %183 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 0, ptr %arrayidx77, align 4
  br label %restart.i.backedge

sw.bb49.i:                                        ; preds = %if.then31.i
  %tobool50.not.i = icmp eq ptr %spec.select.i, null
  br i1 %tobool50.not.i, label %sw.bb49.i.if.end53.i_crit_edge, label %if.then51.i

sw.bb49.i.if.end53.i_crit_edge:                   ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.i

if.then51.i:                                      ; preds = %sw.bb49.i
  %queue52.i = getelementptr inbounds %struct.usba_request, ptr %spec.select.i, i32 0, i32 1
  %call.i.i.i314 = call zeroext i1 @__list_del_entry_valid(ptr noundef %queue52.i) #10
  br i1 %call.i.i.i314, label %if.end.i.i.i317, label %if.then51.i.list_del_init.exit.i320_crit_edge

if.then51.i.list_del_init.exit.i320_crit_edge:    ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i320

if.end.i.i.i317:                                  ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i315 = getelementptr inbounds %struct.usba_request, ptr %spec.select.i, i32 0, i32 1, i32 1
  %184 = ptrtoint ptr %prev.i.i.i315 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %prev.i.i.i315, align 4
  %186 = ptrtoint ptr %queue52.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %queue52.i, align 4
  %prev1.i.i.i.i316 = getelementptr inbounds %struct.list_head, ptr %187, i32 0, i32 1
  %188 = ptrtoint ptr %prev1.i.i.i.i316 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %185, ptr %prev1.i.i.i.i316, align 4
  %189 = ptrtoint ptr %185 to i32
  call void @__asan_store4_noabort(i32 %189)
  store volatile ptr %187, ptr %185, align 4
  br label %list_del_init.exit.i320

list_del_init.exit.i320:                          ; preds = %if.end.i.i.i317, %if.then51.i.list_del_init.exit.i320_crit_edge
  %190 = ptrtoint ptr %queue52.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store volatile ptr %queue52.i, ptr %queue52.i, align 4
  %prev.i3.i.i318 = getelementptr inbounds %struct.usba_request, ptr %spec.select.i, i32 0, i32 1, i32 1
  %191 = ptrtoint ptr %prev.i3.i.i318 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %queue52.i, ptr %prev.i3.i.i318, align 4
  call fastcc void @request_complete(ptr noundef %arrayidx77, ptr noundef nonnull %spec.select.i, i32 noundef 0) #10
  %192 = ptrtoint ptr %queue.i303 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load volatile ptr, ptr %queue.i303, align 4
  %cmp.i.not.i.i319 = icmp eq ptr %193, %queue.i303
  br i1 %cmp.i.not.i.i319, label %if.then.i.i321, label %if.end.i.i324

if.then.i.i321:                                   ; preds = %list_del_init.exit.i320
  call void @__sanitizer_cov_trace_pc() #12
  %194 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr.i264.i = getelementptr i8, ptr %195, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i264.i, i32 655360) #10, !srcloc !242
  br label %if.end53.i

if.end.i.i324:                                    ; preds = %list_del_init.exit.i320
  %submitted.i.i322 = getelementptr i8, ptr %193, i32 12
  %196 = ptrtoint ptr %submitted.i.i322 to i32
  call void @__asan_load1_noabort(i32 %196)
  %bf.load.i265.i = load i8, ptr %submitted.i.i322, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i265.i)
  %tobool3.not.i.i323 = icmp sgt i8 %bf.load.i265.i, -1
  br i1 %tobool3.not.i.i323, label %if.then4.i.i326, label %if.end.i.i324.if.end53.i_crit_edge

if.end.i.i324.if.end53.i_crit_edge:               ; preds = %if.end.i.i324
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.i

if.then4.i.i326:                                  ; preds = %if.end.i.i324
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr2.i.i325 = getelementptr i8, ptr %193, i32 -56
  call fastcc void @submit_request(ptr noundef %arrayidx77, ptr noundef %add.ptr2.i.i325) #10
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then4.i.i326, %if.end.i.i324.if.end53.i_crit_edge, %if.then.i.i321, %sw.bb49.i.if.end53.i_crit_edge
  %197 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr55.i = getelementptr i8, ptr %198, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55.i, i32 262144) #10, !srcloc !242
  %199 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 0, ptr %arrayidx77, align 4
  br label %restart.i.backedge

sw.bb57.i:                                        ; preds = %if.then31.i
  %200 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr59.i = getelementptr i8, ptr %201, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.i, i32 262144) #10, !srcloc !242
  %202 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 0, ptr %arrayidx77, align 4
  %203 = ptrtoint ptr %pdev.i334 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %pdev.i334, align 4
  %dev1.i.i = getelementptr inbounds %struct.platform_device, ptr %204, i32 0, i32 3
  %205 = ptrtoint ptr %test_mode2.i.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %test_mode2.i.i, align 2
  %conv.i266.i = zext i16 %206 to i32
  %207 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %regs, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %208, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 -1) #10, !srcloc !242
  %209 = ptrtoint ptr %ep0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %ep0.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %210, i32 -24
  %queue.i.i.i = getelementptr i8, ptr %210, i32 48
  %211 = ptrtoint ptr %queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %queue.i.i.i, align 4
  %cmp.not23.i.i.i = icmp eq ptr %212, %queue.i.i.i
  br i1 %cmp.not23.i.i.i, label %sw.bb57.i.reset_all_endpoints.exit.i.i_crit_edge, label %sw.bb57.i.for.body.i.i.i_crit_edge

sw.bb57.i.for.body.i.i.i_crit_edge:               ; preds = %sw.bb57.i
  br label %for.body.i.i.i

sw.bb57.i.reset_all_endpoints.exit.i.i_crit_edge: ; preds = %sw.bb57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %reset_all_endpoints.exit.i.i

for.body.i.i.i:                                   ; preds = %list_del_init.exit.i.i.i.for.body.i.i.i_crit_edge, %sw.bb57.i.for.body.i.i.i_crit_edge
  %.pn.in24.i.i.i = phi ptr [ %.pn.i.i.i, %list_del_init.exit.i.i.i.for.body.i.i.i_crit_edge ], [ %212, %sw.bb57.i.for.body.i.i.i_crit_edge ]
  %req.0.i.i.i = getelementptr i8, ptr %.pn.in24.i.i.i, i32 -56
  %213 = ptrtoint ptr %.pn.in24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %.pn.i.i.i = load ptr, ptr %.pn.in24.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in24.i.i.i) #10
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %for.body.i.i.i.list_del_init.exit.i.i.i_crit_edge

for.body.i.i.i.list_del_init.exit.i.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in24.i.i.i, i32 0, i32 1
  %214 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %216 = ptrtoint ptr %.pn.in24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %.pn.in24.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %217, i32 0, i32 1
  %218 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %215, ptr %prev1.i.i.i.i.i.i, align 4
  %219 = ptrtoint ptr %215 to i32
  call void @__asan_store4_noabort(i32 %219)
  store volatile ptr %217, ptr %215, align 4
  br label %list_del_init.exit.i.i.i

list_del_init.exit.i.i.i:                         ; preds = %if.end.i.i.i.i.i, %for.body.i.i.i.list_del_init.exit.i.i.i_crit_edge
  %220 = ptrtoint ptr %.pn.in24.i.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store volatile ptr %.pn.in24.i.i.i, ptr %.pn.in24.i.i.i, align 4
  %prev.i3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in24.i.i.i, i32 0, i32 1
  %221 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %.pn.in24.i.i.i, ptr %prev.i3.i.i.i.i, align 4
  call fastcc void @request_complete(ptr noundef %add.ptr.i.i.i.i, ptr noundef %req.0.i.i.i, i32 noundef -104) #10
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %queue.i.i.i
  br i1 %cmp.not.i.i.i, label %list_del_init.exit.i.i.i.reset_all_endpoints.exit.i.i_crit_edge, label %list_del_init.exit.i.i.i.for.body.i.i.i_crit_edge

list_del_init.exit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %list_del_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

list_del_init.exit.i.i.i.reset_all_endpoints.exit.i.i_crit_edge: ; preds = %list_del_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %reset_all_endpoints.exit.i.i

reset_all_endpoints.exit.i.i:                     ; preds = %list_del_init.exit.i.i.i.reset_all_endpoints.exit.i.i_crit_edge, %sw.bb57.i.reset_all_endpoints.exit.i.i_crit_edge
  %222 = add nsw i32 %conv.i266.i, -256
  %223 = call i32 @llvm.fshl.i32(i32 %222, i32 %222, i32 24) #10
  %224 = zext i32 %223 to i64
  call void @__sanitizer_cov_trace_switch(i64 %224, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %223, label %if.then63.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb3.i.i
    i32 2, label %sw.bb9.i.i
    i32 3, label %sw.bb23.i.i
  ]

sw.bb.i.i:                                        ; preds = %reset_all_endpoints.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %225 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %regs, align 8
  %add.ptr.i267.i = getelementptr i8, ptr %226, i32 224
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i267.i, i32 67108864) #10, !srcloc !242
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.67) #13
  br label %restart.i.backedge

sw.bb3.i.i:                                       ; preds = %reset_all_endpoints.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %227 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %regs, align 8
  %add.ptr5.i.i = getelementptr i8, ptr %228, i32 224
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 134217728) #10, !srcloc !242
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.70) #13
  br label %restart.i.backedge

sw.bb9.i.i:                                       ; preds = %reset_all_endpoints.exit.i.i
  %229 = ptrtoint ptr %usba_ep76 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %usba_ep76, align 4
  %231 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %regs, align 8
  %add.ptr11.i.i = getelementptr i8, ptr %232, i32 224
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i.i, i32 33554432) #10, !srcloc !242
  %ep_regs.i268.i = getelementptr inbounds %struct.usba_ep, ptr %230, i32 0, i32 1
  %233 = ptrtoint ptr %ep_regs.i268.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %ep_regs.i268.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %234, i32 1795162112) #10, !srcloc !242
  %235 = ptrtoint ptr %ep_regs.i268.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %ep_regs.i268.i, align 4
  %237 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %236) #10, !srcloc !246
  %.mask81.i.i = and i32 %237, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask81.i.i)
  %tobool.not.i269.i = icmp eq i32 %.mask81.i.i, 0
  %238 = ptrtoint ptr %ep_regs.i268.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %ep_regs.i268.i, align 4
  br i1 %tobool.not.i269.i, label %if.then.i270.i, label %if.else.i271.i

if.then.i270.i:                                   ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i82.i.i = getelementptr i8, ptr %239, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82.i.i, i32 536870912) #10, !srcloc !242
  %240 = ptrtoint ptr %230 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 0, ptr %230, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.73) #13
  br label %restart.i.backedge

if.else.i271.i:                                   ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr19.i.i = getelementptr i8, ptr %239, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i.i, i32 16777216) #10, !srcloc !242
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.76) #13
  br label %restart.i.backedge

sw.bb23.i.i:                                      ; preds = %reset_all_endpoints.exit.i.i
  %241 = ptrtoint ptr %usba_ep76 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %usba_ep76, align 4
  %ep_regs26.i.i = getelementptr inbounds %struct.usba_ep, ptr %242, i32 0, i32 1
  %243 = ptrtoint ptr %ep_regs26.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %ep_regs26.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %244, i32 1795162112) #10, !srcloc !242
  %245 = ptrtoint ptr %ep_regs26.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %ep_regs26.i.i, align 4
  %247 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %246) #10, !srcloc !246
  %.mask.i.i = and i32 %247, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.i)
  %tobool34.not.i.i = icmp eq i32 %.mask.i.i, 0
  %248 = ptrtoint ptr %ep_regs26.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %ep_regs26.i.i, align 4
  br i1 %tobool34.not.i.i, label %if.then35.i.i, label %if.else39.i.i

if.then35.i.i:                                    ; preds = %sw.bb23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i84.i.i = getelementptr i8, ptr %249, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84.i.i, i32 536870912) #10, !srcloc !242
  %250 = ptrtoint ptr %242 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 0, ptr %242, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.79) #13
  br label %restart.i.backedge

if.else39.i.i:                                    ; preds = %sw.bb23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr41.i.i = getelementptr i8, ptr %249, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41.i.i, i32 16777216) #10, !srcloc !242
  %251 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %regs, align 8
  %add.ptr43.i.i = getelementptr i8, ptr %252, i32 224
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i.i, i32 268435456) #10, !srcloc !242
  %fifo.i272.i = getelementptr inbounds %struct.usba_ep, ptr %242, i32 0, i32 3
  %253 = ptrtoint ptr %fifo.i272.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %fifo.i272.i, align 4
  call void @mmiocpy(ptr noundef %254, ptr noundef nonnull @do_test_mode.test_packet_buffer, i32 noundef 53) #10
  %255 = ptrtoint ptr %ep_regs26.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %ep_regs26.i.i, align 4
  %add.ptr45.i.i = getelementptr i8, ptr %256, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45.i.i, i32 524288) #10, !srcloc !242
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.82) #13
  br label %restart.i.backedge

if.then63.i:                                      ; preds = %reset_all_endpoints.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.85, i32 noundef %conv.i266.i) #13
  %257 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr.i274.i = getelementptr i8, ptr %258, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i274.i, i32 536870912) #10, !srcloc !242
  %259 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 0, ptr %arrayidx77, align 4
  br label %restart.i.backedge

do.end67.i:                                       ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #12
  %260 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %name.i, align 4
  %call71.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %261, i32 noundef %168) #13
  %262 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr.i276.i = getelementptr i8, ptr %263, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i276.i, i32 536870912) #10, !srcloc !242
  %264 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 0, ptr %arrayidx77, align 4
  br label %restart.i.backedge

if.end72.i:                                       ; preds = %if.end27.i
  %and74.i = and i32 %and28.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool75.not.i = icmp eq i32 %and74.i, 0
  br i1 %tobool75.not.i, label %if.end103.i, label %if.then76.i

if.then76.i:                                      ; preds = %if.end72.i
  %265 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %arrayidx77, align 4
  %267 = zext i32 %266 to i64
  call void @__sanitizer_cov_trace_switch(i64 %267, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %266, label %sw.default89.i [
    i32 4, label %sw.bb78.i
    i32 2, label %sw.bb88.i
  ]

sw.bb78.i:                                        ; preds = %if.then76.i
  %268 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr80.i = getelementptr i8, ptr %269, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80.i, i32 131072) #10, !srcloc !242
  %270 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr82.i = getelementptr i8, ptr %271, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i, i32 131072) #10, !srcloc !242
  %tobool83.not.i = icmp eq ptr %spec.select.i, null
  br i1 %tobool83.not.i, label %sw.bb78.i.if.end86.i_crit_edge, label %if.then84.i

sw.bb78.i.if.end86.i_crit_edge:                   ; preds = %sw.bb78.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86.i

if.then84.i:                                      ; preds = %sw.bb78.i
  %queue85.i = getelementptr inbounds %struct.usba_request, ptr %spec.select.i, i32 0, i32 1
  %call.i.i277.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %queue85.i) #10
  br i1 %call.i.i277.i, label %if.end.i.i280.i, label %if.then84.i.list_del_init.exit282.i_crit_edge

if.then84.i.list_del_init.exit282.i_crit_edge:    ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit282.i

if.end.i.i280.i:                                  ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i278.i = getelementptr inbounds %struct.usba_request, ptr %spec.select.i, i32 0, i32 1, i32 1
  %272 = ptrtoint ptr %prev.i.i278.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %prev.i.i278.i, align 4
  %274 = ptrtoint ptr %queue85.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %queue85.i, align 4
  %prev1.i.i.i279.i = getelementptr inbounds %struct.list_head, ptr %275, i32 0, i32 1
  %276 = ptrtoint ptr %prev1.i.i.i279.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store ptr %273, ptr %prev1.i.i.i279.i, align 4
  %277 = ptrtoint ptr %273 to i32
  call void @__asan_store4_noabort(i32 %277)
  store volatile ptr %275, ptr %273, align 4
  br label %list_del_init.exit282.i

list_del_init.exit282.i:                          ; preds = %if.end.i.i280.i, %if.then84.i.list_del_init.exit282.i_crit_edge
  %278 = ptrtoint ptr %queue85.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store volatile ptr %queue85.i, ptr %queue85.i, align 4
  %prev.i3.i281.i = getelementptr inbounds %struct.usba_request, ptr %spec.select.i, i32 0, i32 1, i32 1
  %279 = ptrtoint ptr %prev.i3.i281.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %queue85.i, ptr %prev.i3.i281.i, align 4
  call fastcc void @request_complete(ptr noundef %arrayidx77, ptr noundef nonnull %spec.select.i, i32 noundef 0) #10
  br label %if.end86.i

if.end86.i:                                       ; preds = %list_del_init.exit282.i, %sw.bb78.i.if.end86.i_crit_edge
  %280 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 0, ptr %arrayidx77, align 4
  br label %restart.i.backedge

sw.bb88.i:                                        ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @receive_data(ptr noundef %arrayidx77) #10
  br label %restart.i.backedge

sw.default89.i:                                   ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #12
  %281 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr91.i = getelementptr i8, ptr %282, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91.i, i32 131072) #10, !srcloc !242
  %283 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr93.i = getelementptr i8, ptr %284, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93.i, i32 131072) #10, !srcloc !242
  %285 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %name.i, align 4
  %287 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %arrayidx77, align 4
  %call101.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %286, i32 noundef %288) #13
  %289 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr.i284.i = getelementptr i8, ptr %290, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i284.i, i32 536870912) #10, !srcloc !242
  %291 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 0, ptr %arrayidx77, align 4
  br label %restart.i.backedge

restart.i.backedge:                               ; preds = %sw.default89.i, %sw.bb88.i, %if.end86.i, %do.end67.i, %if.then63.i, %if.else39.i.i, %if.then35.i.i, %if.else.i271.i, %if.then.i270.i, %sw.bb3.i.i, %sw.bb.i.i, %if.end53.i, %sw.bb39.i, %sw.bb.i, %if.then21.i313, %if.end16.i.restart.i.backedge_crit_edge
  br label %restart.i

if.end103.i:                                      ; preds = %if.end72.i
  %and104.i = and i32 %134, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104.i)
  %tobool105.not.i = icmp eq i32 %and104.i, 0
  br i1 %tobool105.not.i, label %if.end103.i.for.inc87_crit_edge, label %if.then106.i

if.end103.i.for.inc87_crit_edge:                  ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc87

if.then106.i:                                     ; preds = %if.end103.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %crq.i) #10
  %292 = ptrtoint ptr %crq.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 -1, ptr %crq.i, align 4, !annotation !247
  %293 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 -1, ptr %126, align 4, !annotation !247
  %294 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %arrayidx77, align 4
  %296 = zext i32 %295 to i64
  call void @__sanitizer_cov_trace_switch(i64 %296, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %295, label %if.then106.i.if.end116.i_crit_edge [
    i32 0, label %if.then106.i.if.end121.i_crit_edge
    i32 4, label %if.then106.i.if.then113.i_crit_edge
    i32 3, label %if.then106.i.if.then113.i_crit_edge503
  ]

if.then106.i.if.then113.i_crit_edge503:           ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then113.i

if.then106.i.if.then113.i_crit_edge:              ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then113.i

if.then106.i.if.end121.i_crit_edge:               ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121.i

if.then106.i.if.end116.i_crit_edge:               ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116.i

if.then113.i:                                     ; preds = %if.then106.i.if.then113.i_crit_edge, %if.then106.i.if.then113.i_crit_edge503
  %297 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr115.i = getelementptr i8, ptr %298, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115.i, i32 131072) #10, !srcloc !242
  br label %if.end116.i

if.end116.i:                                      ; preds = %if.then113.i, %if.then106.i.if.end116.i_crit_edge
  %status.0.i = phi i32 [ 0, %if.then113.i ], [ -71, %if.then106.i.if.end116.i_crit_edge ]
  %tobool117.not.i = icmp eq ptr %spec.select.i, null
  br i1 %tobool117.not.i, label %if.end116.i.if.end121.i_crit_edge, label %if.then118.i

if.end116.i.if.end121.i_crit_edge:                ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121.i

if.then118.i:                                     ; preds = %if.end116.i
  %queue119.i = getelementptr inbounds %struct.usba_request, ptr %spec.select.i, i32 0, i32 1
  %call.i.i285.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %queue119.i) #10
  br i1 %call.i.i285.i, label %if.end.i.i288.i, label %if.then118.i.list_del_init.exit290.i_crit_edge

if.then118.i.list_del_init.exit290.i_crit_edge:   ; preds = %if.then118.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit290.i

if.end.i.i288.i:                                  ; preds = %if.then118.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i286.i = getelementptr inbounds %struct.usba_request, ptr %spec.select.i, i32 0, i32 1, i32 1
  %299 = ptrtoint ptr %prev.i.i286.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %prev.i.i286.i, align 4
  %301 = ptrtoint ptr %queue119.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %queue119.i, align 4
  %prev1.i.i.i287.i = getelementptr inbounds %struct.list_head, ptr %302, i32 0, i32 1
  %303 = ptrtoint ptr %prev1.i.i.i287.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %300, ptr %prev1.i.i.i287.i, align 4
  %304 = ptrtoint ptr %300 to i32
  call void @__asan_store4_noabort(i32 %304)
  store volatile ptr %302, ptr %300, align 4
  br label %list_del_init.exit290.i

list_del_init.exit290.i:                          ; preds = %if.end.i.i288.i, %if.then118.i.list_del_init.exit290.i_crit_edge
  %305 = ptrtoint ptr %queue119.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store volatile ptr %queue119.i, ptr %queue119.i, align 4
  %prev.i3.i289.i = getelementptr inbounds %struct.usba_request, ptr %spec.select.i, i32 0, i32 1, i32 1
  %306 = ptrtoint ptr %prev.i3.i289.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr %queue119.i, ptr %prev.i3.i289.i, align 4
  call fastcc void @request_complete(ptr noundef %arrayidx77, ptr noundef nonnull %spec.select.i, i32 noundef %status.0.i) #10
  br label %if.end121.i

if.end121.i:                                      ; preds = %list_del_init.exit290.i, %if.end116.i.if.end121.i_crit_edge, %if.then106.i.if.end121.i_crit_edge
  %307 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr124.i = getelementptr i8, ptr %308, i32 28
  %309 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr124.i) #10, !srcloc !246
  %310 = call i32 @llvm.bswap.i32(i32 %309) #10
  %shr.i = lshr i32 %310, 20
  %and127.i = and i32 %shr.i, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and127.i)
  %cmp131.not.i = icmp eq i32 %and127.i, 8
  br i1 %cmp131.not.i, label %do.end141.i, label %do.end135.i

do.end135.i:                                      ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #12
  %call137.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %and127.i, i32 noundef 8) #13
  %311 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr.i292.i = getelementptr i8, ptr %312, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i292.i, i32 536870912) #10, !srcloc !242
  %313 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 0, ptr %arrayidx77, align 4
  br label %cleanup.i

do.end141.i:                                      ; preds = %if.end121.i
  %314 = ptrtoint ptr %fifo.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %fifo.i.i, align 4
  call void @mmiocpy(ptr noundef nonnull %crq.i, ptr noundef %315, i32 noundef 8) #10
  %316 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr143.i = getelementptr i8, ptr %317, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr143.i, i32 1048576) #10, !srcloc !242
  %318 = ptrtoint ptr %crq.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %crq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %319)
  %tobool145.not.i = icmp sgt i8 %319, -1
  br i1 %tobool145.not.i, label %if.else148.i, label %do.end141.i.if.end157.i_crit_edge

do.end141.i.if.end157.i_crit_edge:                ; preds = %do.end141.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end157.i

if.else148.i:                                     ; preds = %do.end141.i
  call void @__sanitizer_cov_trace_pc() #12
  %320 = ptrtoint ptr %wLength.i to i32
  call void @__asan_load2_noabort(i32 %320)
  %321 = load i16, ptr %wLength.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %321)
  %cmp150.not.i = icmp eq i16 %321, 0
  %..i = select i1 %cmp150.not.i, i32 3, i32 2
  br label %if.end157.i

if.end157.i:                                      ; preds = %if.else148.i, %do.end141.i.if.end157.i_crit_edge
  %.sink.i = phi i32 [ 1, %do.end141.i.if.end157.i_crit_edge ], [ %..i, %if.else148.i ]
  %322 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %.sink.i, ptr %arrayidx77, align 4
  %323 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %index, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %324)
  %cmp159.i = icmp eq i8 %324, 0
  br i1 %cmp159.i, label %if.then161.i, label %if.end157.i.do.end169.i_crit_edge

if.end157.i.do.end169.i_crit_edge:                ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169.i

if.then161.i:                                     ; preds = %if.end157.i
  %325 = ptrtoint ptr %bRequest.i.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %bRequest.i.i, align 1
  %327 = zext i8 %326 to i64
  call void @__sanitizer_cov_trace_switch(i64 %327, ptr @__sancov_gen_cov_switch_values.101)
  switch i8 %326, label %if.then161.i.do.end169.i_crit_edge [
    i8 0, label %sw.bb.i293.i
    i8 1, label %sw.bb33.i.i
    i8 3, label %sw.bb80.i.i
    i8 5, label %sw.bb128.i.i
  ]

if.then161.i.do.end169.i_crit_edge:               ; preds = %if.then161.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169.i

sw.bb.i293.i:                                     ; preds = %if.then161.i
  %328 = zext i8 %319 to i64
  call void @__sanitizer_cov_trace_switch(i64 %328, ptr @__sancov_gen_cov_switch_values.102)
  switch i8 %319, label %sw.bb.i293.i.do.end169.i_crit_edge [
    i8 -128, label %if.then.i294.i
    i8 -127, label %sw.bb.i293.i.if.end25.i.i_crit_edge
    i8 -126, label %if.then14.i.i
  ]

sw.bb.i293.i.if.end25.i.i_crit_edge:              ; preds = %sw.bb.i293.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i.i

sw.bb.i293.i.do.end169.i_crit_edge:               ; preds = %sw.bb.i293.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169.i

if.then.i294.i:                                   ; preds = %sw.bb.i293.i
  call void @__sanitizer_cov_trace_pc() #12
  %329 = ptrtoint ptr %devstatus93.i.i to i32
  call void @__asan_load2_noabort(i32 %329)
  %330 = load i16, ptr %devstatus93.i.i, align 4
  %331 = call i16 @llvm.bswap.i16(i16 %330) #10
  br label %if.end25.i.i

if.then14.i.i:                                    ; preds = %sw.bb.i293.i
  %332 = ptrtoint ptr %126 to i32
  call void @__asan_load2_noabort(i32 %332)
  %333 = load i16, ptr %126, align 4
  %334 = call i16 @llvm.bswap.i16(i16 %333) #10
  %conv.i.i.i = zext i16 %334 to i32
  %and.i.i.i = and i32 %conv.i.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i297.i

if.then.i.i.i:                                    ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %335 = ptrtoint ptr %ep0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %ep0.i.i.i, align 4
  %add.ptr.i.i.i296.i = getelementptr i8, ptr %336, i32 -24
  br label %get_ep_by_addr.exit.i.i

if.end.i.i297.i:                                  ; preds = %if.then14.i.i
  %337 = ptrtoint ptr %ep_list.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %.pn50.i.i.i = load ptr, ptr %ep_list.i, align 4
  %cmp7.not51.i.i.i = icmp eq ptr %.pn50.i.i.i, %ep_list.i
  br i1 %cmp7.not51.i.i.i, label %if.end.i.i297.i.do.end169.thread313.i_crit_edge, label %if.end.i.i297.i.for.body.i.i298.i_crit_edge

if.end.i.i297.i.for.body.i.i298.i_crit_edge:      ; preds = %if.end.i.i297.i
  br label %for.body.i.i298.i

if.end.i.i297.i.do.end169.thread313.i_crit_edge:  ; preds = %if.end.i.i297.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169.thread313.i

for.body.i.i298.i:                                ; preds = %for.inc.i.i.i.for.body.i.i298.i_crit_edge, %if.end.i.i297.i.for.body.i.i298.i_crit_edge
  %.pn52.i.i.i = phi ptr [ %.pn.i.i299.i, %for.inc.i.i.i.for.body.i.i298.i_crit_edge ], [ %.pn50.i.i.i, %if.end.i.i297.i.for.body.i.i298.i_crit_edge ]
  %desc.i.i.i = getelementptr i8, ptr %.pn52.i.i.i, i32 24
  %338 = ptrtoint ptr %desc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %desc.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %339, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i298.i.for.inc.i.i.i_crit_edge, label %if.end11.i.i.i

for.body.i.i298.i.for.inc.i.i.i_crit_edge:        ; preds = %for.body.i.i298.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

if.end11.i.i.i:                                   ; preds = %for.body.i.i298.i
  %bEndpointAddress14.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %339, i32 0, i32 2
  %340 = ptrtoint ptr %bEndpointAddress14.i.i.i to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %bEndpointAddress14.i.i.i, align 1
  %conv16.i.i.i = zext i8 %341 to i32
  %xor.i.i.i = xor i32 %conv16.i.i.i, %conv.i.i.i
  %and17.i.i.i = and i32 %xor.i.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and17.i.i.i, 0
  %and22.i.i.i = and i32 %conv16.i.i.i, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and22.i.i.i, i32 %and.i.i.i)
  %cmp25.i.i.i = icmp eq i32 %and22.i.i.i, %and.i.i.i
  %or.cond.i.i.i = select i1 %tobool18.not.i.i.i, i1 %cmp25.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %cleanup35.loopexit.split.loop.exit48.i.i.i, label %if.end11.i.i.i.for.inc.i.i.i_crit_edge

if.end11.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.end11.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i298.i.for.inc.i.i.i_crit_edge
  %342 = ptrtoint ptr %.pn52.i.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %.pn.i.i299.i = load ptr, ptr %.pn52.i.i.i, align 4
  %cmp7.not.i.i.i = icmp eq ptr %.pn.i.i299.i, %ep_list.i
  br i1 %cmp7.not.i.i.i, label %for.inc.i.i.i.do.end169.thread313.i_crit_edge, label %for.inc.i.i.i.for.body.i.i298.i_crit_edge

for.inc.i.i.i.for.body.i.i298.i_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i298.i

for.inc.i.i.i.do.end169.thread313.i_crit_edge:    ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169.thread313.i

cleanup35.loopexit.split.loop.exit48.i.i.i:       ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ep.0.le.i.i.i = getelementptr i8, ptr %.pn52.i.i.i, i32 -36
  br label %get_ep_by_addr.exit.i.i

get_ep_by_addr.exit.i.i:                          ; preds = %cleanup35.loopexit.split.loop.exit48.i.i.i, %if.then.i.i.i
  %retval.2.i.i.i = phi ptr [ %add.ptr.i.i.i296.i, %if.then.i.i.i ], [ %ep.0.le.i.i.i, %cleanup35.loopexit.split.loop.exit48.i.i.i ]
  %tobool.not.i300.i = icmp eq ptr %retval.2.i.i.i, null
  br i1 %tobool.not.i300.i, label %get_ep_by_addr.exit.i.i.do.end169.thread313.i_crit_edge, label %cleanup.i.i

get_ep_by_addr.exit.i.i.do.end169.thread313.i_crit_edge: ; preds = %get_ep_by_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169.thread313.i

cleanup.i.i:                                      ; preds = %get_ep_by_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ep_regs.i.i.i = getelementptr inbounds %struct.usba_ep, ptr %retval.2.i.i.i, i32 0, i32 1
  %343 = ptrtoint ptr %ep_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %ep_regs.i.i.i, align 4
  %add.ptr.i.i301.i = getelementptr i8, ptr %344, i32 28
  %345 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i301.i) #10, !srcloc !246
  %346 = lshr i32 %345, 21
  %347 = trunc i32 %346 to i16
  %348 = and i16 %347, 256
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %cleanup.i.i, %if.then.i294.i, %sw.bb.i293.i.if.end25.i.i_crit_edge
  %status.2.i.i = phi i16 [ %331, %if.then.i294.i ], [ %348, %cleanup.i.i ], [ 0, %sw.bb.i293.i.if.end25.i.i_crit_edge ]
  %349 = ptrtoint ptr %wLength.i to i32
  call void @__asan_load2_noabort(i32 %349)
  %350 = load i16, ptr %wLength.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %350)
  %cmp27.not.i.i = icmp eq i16 %350, 512
  br i1 %cmp27.not.i.i, label %cleanup31.thread244.i.i, label %if.end25.i.i.do.end169.thread313.i_crit_edge

if.end25.i.i.do.end169.thread313.i_crit_edge:     ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169.thread313.i

cleanup31.thread244.i.i:                          ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %351 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 1, ptr %arrayidx77, align 4
  %352 = call i16 @llvm.bswap.i16(i16 %status.2.i.i) #10
  %353 = ptrtoint ptr %fifo.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %fifo.i.i, align 4
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %354, i16 %352) #10, !srcloc !248
  %355 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr.i304.i = getelementptr i8, ptr %356, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i304.i, i32 524288) #10, !srcloc !242
  br label %cleanup.i

sw.bb33.i.i:                                      ; preds = %if.then161.i
  %357 = zext i8 %319 to i64
  call void @__sanitizer_cov_trace_switch(i64 %357, ptr @__sancov_gen_cov_switch_values.103)
  switch i8 %319, label %sw.bb33.i.i.do.end169.i_crit_edge [
    i8 0, label %if.then38.i.i
    i8 2, label %if.then51.i.i
  ]

sw.bb33.i.i.do.end169.i_crit_edge:                ; preds = %sw.bb33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169.i

if.then38.i.i:                                    ; preds = %sw.bb33.i.i
  %358 = ptrtoint ptr %wValue.i.i to i32
  call void @__asan_load2_noabort(i32 %358)
  %359 = load i16, ptr %wValue.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %359)
  %cmp.i215.i.i = icmp eq i16 %359, 256
  br i1 %cmp.i215.i.i, label %if.then40.i.i, label %if.then38.i.i.do.end169.thread313.i_crit_edge

if.then38.i.i.do.end169.thread313.i_crit_edge:    ; preds = %if.then38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169.thread313.i

if.then40.i.i:                                    ; preds = %if.then38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %360 = ptrtoint ptr %devstatus93.i.i to i32
  call void @__asan_load2_noabort(i32 %360)
  %361 = load i16, ptr %devstatus93.i.i, align 4
  %362 = and i16 %361, -3
  store i16 %362, ptr %devstatus93.i.i, align 4
  br label %if.end79.i.i

if.then51.i.i:                                    ; preds = %sw.bb33.i.i
  %363 = ptrtoint ptr %wLength.i to i32
  call void @__asan_load2_noabort(i32 %363)
  %364 = load i16, ptr %wLength.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %364)
  %cmp55.not.i.i = icmp eq i16 %364, 0
  br i1 %cmp55.not.i.i, label %lor.lhs.false.i.i, label %if.then51.i.i.do.end169.thread313.i_crit_edge

if.then51.i.i.do.end169.thread313.i_crit_edge:    ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169.thread313.i

lor.lhs.false.i.i:                                ; preds = %if.then51.i.i
  %365 = ptrtoint ptr %wValue.i.i to i32
  call void @__asan_load2_noabort(i32 %365)
  %366 = load i16, ptr %wValue.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %366)
  %cmp.i217.i.i = icmp eq i16 %366, 0
  br i1 %cmp.i217.i.i, label %if.end59.i.i, label %lor.lhs.false.i.i.do.end169.thread313.i_crit_edge

lor.lhs.false.i.i.do.end169.thread313.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169.thread313.i

if.end59.i.i:                                     ; preds = %lor.lhs.false.i.i
  %367 = ptrtoint ptr %126 to i32
  call void @__asan_load2_noabort(i32 %367)
  %368 = load i16, ptr %126, align 4
  %369 = call i16 @llvm.bswap.i16(i16 %368) #10
  %conv.i418 = zext i16 %369 to i32
  %and.i419 = and i32 %conv.i418, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i419)
  %cmp.i420 = icmp eq i32 %and.i419, 0
  br i1 %cmp.i420, label %if.then.i423, label %if.end.i427

if.then.i423:                                     ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %370 = ptrtoint ptr %ep0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %ep0.i.i.i, align 4
  %add.ptr.i.i422 = getelementptr i8, ptr %371, i32 -24
  br label %get_ep_by_addr.exit447

if.end.i427:                                      ; preds = %if.end59.i.i
  %372 = ptrtoint ptr %ep_list.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %.pn50.i425 = load ptr, ptr %ep_list.i, align 4
  %cmp7.not51.i426 = icmp eq ptr %.pn50.i425, %ep_list.i
  br i1 %cmp7.not51.i426, label %if.end.i427.do.end169.thread313.i_crit_edge, label %if.end.i427.for.body.i431_crit_edge

if.end.i427.for.body.i431_crit_edge:              ; preds = %if.end.i427
  br label %for.body.i431

if.end.i427.do.end169.thread313.i_crit_edge:      ; preds = %if.end.i427
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169.thread313.i

for.body.i431:                                    ; preds = %for.inc.i443.for.body.i431_crit_edge, %if.end.i427.for.body.i431_crit_edge
  %.pn52.i428 = phi ptr [ %.pn.i441, %for.inc.i443.for.body.i431_crit_edge ], [ %.pn50.i425, %if.end.i427.for.body.i431_crit_edge ]
  %desc.i429 = getelementptr i8, ptr %.pn52.i428, i32 24
  %373 = ptrtoint ptr %desc.i429 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %desc.i429, align 4
  %tobool.not.i430 = icmp eq ptr %374, null
  br i1 %tobool.not.i430, label %for.body.i431.for.inc.i443_crit_edge, label %if.end11.i440

for.body.i431.for.inc.i443_crit_edge:             ; preds = %for.body.i431
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i443

if.end11.i440:                                    ; preds = %for.body.i431
  %bEndpointAddress14.i432 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %374, i32 0, i32 2
  %375 = ptrtoint ptr %bEndpointAddress14.i432 to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %bEndpointAddress14.i432, align 1
  %conv16.i433 = zext i8 %376 to i32
  %xor.i434 = xor i32 %conv16.i433, %conv.i418
  %and17.i435 = and i32 %xor.i434, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i435)
  %tobool18.not.i436 = icmp eq i32 %and17.i435, 0
  %and22.i437 = and i32 %conv16.i433, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and22.i437, i32 %and.i419)
  %cmp25.i438 = icmp eq i32 %and22.i437, %and.i419
  %or.cond.i439 = select i1 %tobool18.not.i436, i1 %cmp25.i438, i1 false
  br i1 %or.cond.i439, label %cleanup35.loopexit.split.loop.exit48.i445, label %if.end11.i440.for.inc.i443_crit_edge

if.end11.i440.for.inc.i443_crit_edge:             ; preds = %if.end11.i440
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i443

for.inc.i443:                                     ; preds = %if.end11.i440.for.inc.i443_crit_edge, %for.body.i431.for.inc.i443_crit_edge
  %377 = ptrtoint ptr %.pn52.i428 to i32
  call void @__asan_load4_noabort(i32 %377)
  %.pn.i441 = load ptr, ptr %.pn52.i428, align 4
  %cmp7.not.i442 = icmp eq ptr %.pn.i441, %ep_list.i
  br i1 %cmp7.not.i442, label %for.inc.i443.do.end169.thread313.i_crit_edge, label %for.inc.i443.for.body.i431_crit_edge

for.inc.i443.for.body.i431_crit_edge:             ; preds = %for.inc.i443
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i431

for.inc.i443.do.end169.thread313.i_crit_edge:     ; preds = %for.inc.i443
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169.thread313.i

cleanup35.loopexit.split.loop.exit48.i445:        ; preds = %if.end11.i440
  call void @__sanitizer_cov_trace_pc() #12
  %ep.0.le.i444 = getelementptr i8, ptr %.pn52.i428, i32 -36
  br label %get_ep_by_addr.exit447

get_ep_by_addr.exit447:                           ; preds = %cleanup35.loopexit.split.loop.exit48.i445, %if.then.i423
  %retval.2.i446 = phi ptr [ %add.ptr.i.i422, %if.then.i423 ], [ %ep.0.le.i444, %cleanup35.loopexit.split.loop.exit48.i445 ]
  %tobool62.not.i.i = icmp eq ptr %retval.2.i446, null
  br i1 %tobool62.not.i.i, label %get_ep_by_addr.exit447.do.end169.thread313.i_crit_edge, label %if.end64.i.i

get_ep_by_addr.exit447.do.end169.thread313.i_crit_edge: ; preds = %get_ep_by_addr.exit447
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169.thread313.i

if.end64.i.i:                                     ; preds = %get_ep_by_addr.exit447
  %ep_regs65.i.i = getelementptr inbounds %struct.usba_ep, ptr %retval.2.i446, i32 0, i32 1
  %378 = ptrtoint ptr %ep_regs65.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %ep_regs65.i.i, align 4
  %add.ptr66.i.i = getelementptr i8, ptr %379, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66.i.i, i32 536870912) #10, !srcloc !242
  %index.i.i = getelementptr inbounds %struct.usba_ep, ptr %retval.2.i446, i32 0, i32 10
  %380 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %index.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %381)
  %cmp68.not.i.i = icmp eq i8 %381, 0
  br i1 %cmp68.not.i.i, label %if.end64.i.i.if.end79.i.i_crit_edge, label %if.then70.i.i

if.end64.i.i.if.end79.i.i_crit_edge:              ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79.i.i

if.then70.i.i:                                    ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %382 = ptrtoint ptr %ep_regs65.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %ep_regs65.i.i, align 4
  %add.ptr72.i.i = getelementptr i8, ptr %383, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72.i.i, i32 1073741824) #10, !srcloc !242
  br label %if.end79.i.i

if.end79.i.i:                                     ; preds = %if.then70.i.i, %if.end64.i.i.if.end79.i.i_crit_edge, %if.then40.i.i
  %384 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %384)
  store i32 3, ptr %arrayidx77, align 4
  %385 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr.i219.i.i = getelementptr i8, ptr %386, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i219.i.i, i32 524288) #10, !srcloc !242
  %387 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr2.i.i.i = getelementptr i8, ptr %388, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i.i, i32 262144) #10, !srcloc !242
  br label %cleanup.i

sw.bb80.i.i:                                      ; preds = %if.then161.i
  %389 = zext i8 %319 to i64
  call void @__sanitizer_cov_trace_switch(i64 %389, ptr @__sancov_gen_cov_switch_values.104)
  switch i8 %319, label %sw.bb80.i.i.do.end169.i_crit_edge [
    i8 0, label %if.then85.i.i
    i8 2, label %if.then105.i.i
  ]

sw.bb80.i.i.do.end169.i_crit_edge:                ; preds = %sw.bb80.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169.i

if.then85.i.i:                                    ; preds = %sw.bb80.i.i
  %390 = ptrtoint ptr %wValue.i.i to i32
  call void @__asan_load2_noabort(i32 %390)
  %391 = load i16, ptr %wValue.i.i, align 2
  %392 = zext i16 %391 to i64
  call void @__sanitizer_cov_trace_switch(i64 %392, ptr @__sancov_gen_cov_switch_values.105)
  switch i16 %391, label %if.then85.i.i.do.end169.thread313.i_crit_edge [
    i16 512, label %if.then87.i.i
    i16 256, label %if.then92.i.i
  ]

if.then85.i.i.do.end169.thread313.i_crit_edge:    ; preds = %if.then85.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169.thread313.i

if.then87.i.i:                                    ; preds = %if.then85.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %393 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %393)
  store i32 3, ptr %arrayidx77, align 4
  %394 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr.i223.i.i = getelementptr i8, ptr %395, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i223.i.i, i32 524288) #10, !srcloc !242
  %396 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr2.i224.i.i = getelementptr i8, ptr %397, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i224.i.i, i32 262144) #10, !srcloc !242
  %398 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 6, ptr %arrayidx77, align 4
  %399 = ptrtoint ptr %126 to i32
  call void @__asan_load2_noabort(i32 %399)
  %400 = load i16, ptr %126, align 4
  %401 = call i16 @llvm.bswap.i16(i16 %400) #10
  %402 = ptrtoint ptr %test_mode2.i.i to i32
  call void @__asan_store2_noabort(i32 %402)
  store i16 %401, ptr %test_mode2.i.i, align 2
  br label %cleanup.i

if.then92.i.i:                                    ; preds = %if.then85.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %403 = ptrtoint ptr %devstatus93.i.i to i32
  call void @__asan_load2_noabort(i32 %403)
  %404 = load i16, ptr %devstatus93.i.i, align 4
  %405 = or i16 %404, 2
  store i16 %405, ptr %devstatus93.i.i, align 4
  br label %if.end127.i.i

if.then105.i.i:                                   ; preds = %sw.bb80.i.i
  %406 = ptrtoint ptr %wLength.i to i32
  call void @__asan_load2_noabort(i32 %406)
  %407 = load i16, ptr %wLength.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %407)
  %cmp109.not.i.i = icmp eq i16 %407, 0
  br i1 %cmp109.not.i.i, label %lor.lhs.false111.i.i, label %if.then105.i.i.do.end169.thread313.i_crit_edge

if.then105.i.i.do.end169.thread313.i_crit_edge:   ; preds = %if.then105.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169.thread313.i

lor.lhs.false111.i.i:                             ; preds = %if.then105.i.i
  %408 = ptrtoint ptr %wValue.i.i to i32
  call void @__asan_load2_noabort(i32 %408)
  %409 = load i16, ptr %wValue.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %409)
  %cmp.i228.i.i = icmp eq i16 %409, 0
  br i1 %cmp.i228.i.i, label %if.end114.i.i, label %lor.lhs.false111.i.i.do.end169.thread313.i_crit_edge

lor.lhs.false111.i.i.do.end169.thread313.i_crit_edge: ; preds = %lor.lhs.false111.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169.thread313.i

if.end114.i.i:                                    ; preds = %lor.lhs.false111.i.i
  %410 = ptrtoint ptr %126 to i32
  call void @__asan_load2_noabort(i32 %410)
  %411 = load i16, ptr %126, align 4
  %412 = call i16 @llvm.bswap.i16(i16 %411) #10
  %conv.i = zext i16 %412 to i32
  %and.i409 = and i32 %conv.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i409)
  %cmp.i = icmp eq i32 %and.i409, 0
  br i1 %cmp.i, label %if.then.i412, label %if.end.i413

if.then.i412:                                     ; preds = %if.end114.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %413 = ptrtoint ptr %ep0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %ep0.i.i.i, align 4
  %add.ptr.i.i411 = getelementptr i8, ptr %414, i32 -24
  br label %get_ep_by_addr.exit

if.end.i413:                                      ; preds = %if.end114.i.i
  %415 = ptrtoint ptr %ep_list.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %.pn50.i = load ptr, ptr %ep_list.i, align 4
  %cmp7.not51.i = icmp eq ptr %.pn50.i, %ep_list.i
  br i1 %cmp7.not51.i, label %if.end.i413.do.end169.thread313.i_crit_edge, label %if.end.i413.for.body.i415_crit_edge

if.end.i413.for.body.i415_crit_edge:              ; preds = %if.end.i413
  br label %for.body.i415

if.end.i413.do.end169.thread313.i_crit_edge:      ; preds = %if.end.i413
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169.thread313.i

for.body.i415:                                    ; preds = %for.inc.i.for.body.i415_crit_edge, %if.end.i413.for.body.i415_crit_edge
  %.pn52.i = phi ptr [ %.pn.i417, %for.inc.i.for.body.i415_crit_edge ], [ %.pn50.i, %if.end.i413.for.body.i415_crit_edge ]
  %desc.i = getelementptr i8, ptr %.pn52.i, i32 24
  %416 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %desc.i, align 4
  %tobool.not.i414 = icmp eq ptr %417, null
  br i1 %tobool.not.i414, label %for.body.i415.for.inc.i_crit_edge, label %if.end11.i

for.body.i415.for.inc.i_crit_edge:                ; preds = %for.body.i415
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end11.i:                                       ; preds = %for.body.i415
  %bEndpointAddress14.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %417, i32 0, i32 2
  %418 = ptrtoint ptr %bEndpointAddress14.i to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %bEndpointAddress14.i, align 1
  %conv16.i = zext i8 %419 to i32
  %xor.i = xor i32 %conv16.i, %conv.i
  %and17.i = and i32 %xor.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  %and22.i = and i32 %conv16.i, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and22.i, i32 %and.i409)
  %cmp25.i = icmp eq i32 %and22.i, %and.i409
  %or.cond.i416 = select i1 %tobool18.not.i, i1 %cmp25.i, i1 false
  br i1 %or.cond.i416, label %cleanup35.loopexit.split.loop.exit48.i, label %if.end11.i.for.inc.i_crit_edge

if.end11.i.for.inc.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end11.i.for.inc.i_crit_edge, %for.body.i415.for.inc.i_crit_edge
  %420 = ptrtoint ptr %.pn52.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %.pn.i417 = load ptr, ptr %.pn52.i, align 4
  %cmp7.not.i = icmp eq ptr %.pn.i417, %ep_list.i
  br i1 %cmp7.not.i, label %for.inc.i.do.end169.thread313.i_crit_edge, label %for.inc.i.for.body.i415_crit_edge

for.inc.i.for.body.i415_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i415

for.inc.i.do.end169.thread313.i_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169.thread313.i

cleanup35.loopexit.split.loop.exit48.i:           ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %ep.0.le.i = getelementptr i8, ptr %.pn52.i, i32 -36
  br label %get_ep_by_addr.exit

get_ep_by_addr.exit:                              ; preds = %cleanup35.loopexit.split.loop.exit48.i, %if.then.i412
  %retval.2.i = phi ptr [ %add.ptr.i.i411, %if.then.i412 ], [ %ep.0.le.i, %cleanup35.loopexit.split.loop.exit48.i ]
  %tobool117.not.i.i = icmp eq ptr %retval.2.i, null
  br i1 %tobool117.not.i.i, label %get_ep_by_addr.exit.do.end169.thread313.i_crit_edge, label %cleanup122.i.i

get_ep_by_addr.exit.do.end169.thread313.i_crit_edge: ; preds = %get_ep_by_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169.thread313.i

cleanup122.i.i:                                   ; preds = %get_ep_by_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %ep_regs120.i.i = getelementptr inbounds %struct.usba_ep, ptr %retval.2.i, i32 0, i32 1
  %421 = ptrtoint ptr %ep_regs120.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %ep_regs120.i.i, align 4
  %add.ptr121.i.i = getelementptr i8, ptr %422, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121.i.i, i32 536870912) #10, !srcloc !242
  br label %if.end127.i.i

if.end127.i.i:                                    ; preds = %cleanup122.i.i, %if.then92.i.i
  %423 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 3, ptr %arrayidx77, align 4
  %424 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr.i230.i.i = getelementptr i8, ptr %425, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i230.i.i, i32 524288) #10, !srcloc !242
  %426 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr2.i231.i.i = getelementptr i8, ptr %427, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i231.i.i, i32 262144) #10, !srcloc !242
  br label %cleanup.i

sw.bb128.i.i:                                     ; preds = %if.then161.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %319)
  %cmp131.not.i.i = icmp eq i8 %319, 0
  br i1 %cmp131.not.i.i, label %if.end134.i.i, label %sw.bb128.i.i.do.end169.i_crit_edge

sw.bb128.i.i.do.end169.i_crit_edge:               ; preds = %sw.bb128.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169.i

if.end134.i.i:                                    ; preds = %sw.bb128.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %428 = ptrtoint ptr %wValue.i.i to i32
  call void @__asan_load2_noabort(i32 %428)
  %429 = load i16, ptr %wValue.i.i, align 2
  %430 = lshr i16 %429, 8
  %431 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %regs, align 8
  %433 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %432) #10, !srcloc !246
  %434 = and i32 %433, -2130706433
  %435 = call i32 @llvm.bswap.i32(i32 %434) #10
  %436 = and i16 %430, 127
  %and1.i.i.i = zext i16 %436 to i32
  %or.i.i.i = or i32 %435, %and1.i.i.i
  %437 = call i32 @llvm.bswap.i32(i32 %or.i.i.i) #10
  %438 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %regs, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %439, i32 %437) #10, !srcloc !242
  %440 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %440)
  store i32 3, ptr %arrayidx77, align 4
  %441 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr.i233.i.i = getelementptr i8, ptr %442, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i233.i.i, i32 524288) #10, !srcloc !242
  %443 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr2.i234.i.i = getelementptr i8, ptr %444, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i234.i.i, i32 262144) #10, !srcloc !242
  %445 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %445)
  store i32 5, ptr %arrayidx77, align 4
  br label %cleanup.i

do.end169.thread313.i:                            ; preds = %get_ep_by_addr.exit.do.end169.thread313.i_crit_edge, %for.inc.i.do.end169.thread313.i_crit_edge, %if.end.i413.do.end169.thread313.i_crit_edge, %lor.lhs.false111.i.i.do.end169.thread313.i_crit_edge, %if.then105.i.i.do.end169.thread313.i_crit_edge, %if.then85.i.i.do.end169.thread313.i_crit_edge, %get_ep_by_addr.exit447.do.end169.thread313.i_crit_edge, %for.inc.i443.do.end169.thread313.i_crit_edge, %if.end.i427.do.end169.thread313.i_crit_edge, %lor.lhs.false.i.i.do.end169.thread313.i_crit_edge, %if.then51.i.i.do.end169.thread313.i_crit_edge, %if.then38.i.i.do.end169.thread313.i_crit_edge, %if.end25.i.i.do.end169.thread313.i_crit_edge, %get_ep_by_addr.exit.i.i.do.end169.thread313.i_crit_edge, %for.inc.i.i.i.do.end169.thread313.i_crit_edge, %if.end.i.i297.i.do.end169.thread313.i_crit_edge
  %446 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %name.i, align 4
  %448 = ptrtoint ptr %crq.i to i32
  call void @__asan_load1_noabort(i32 %448)
  %449 = load i8, ptr %crq.i, align 4
  %conv141.i.i = zext i8 %449 to i32
  %450 = ptrtoint ptr %bRequest.i.i to i32
  call void @__asan_load1_noabort(i32 %450)
  %451 = load i8, ptr %bRequest.i.i, align 1
  %conv143.i.i = zext i8 %451 to i32
  %452 = ptrtoint ptr %wValue.i.i to i32
  call void @__asan_load2_noabort(i32 %452)
  %453 = load i16, ptr %wValue.i.i, align 2
  %454 = call i16 @llvm.bswap.i16(i16 %453) #10
  %conv145.i.i = zext i16 %454 to i32
  %455 = ptrtoint ptr %126 to i32
  call void @__asan_load2_noabort(i32 %455)
  %456 = load i16, ptr %126, align 4
  %457 = call i16 @llvm.bswap.i16(i16 %456) #10
  %conv147.i.i = zext i16 %457 to i32
  %458 = ptrtoint ptr %wLength.i to i32
  call void @__asan_load2_noabort(i32 %458)
  %459 = load i16, ptr %wLength.i, align 2
  %460 = call i16 @llvm.bswap.i16(i16 %459) #10
  %conv149.i.i = zext i16 %460 to i32
  %call150.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %447, i32 noundef %conv141.i.i, i32 noundef %conv143.i.i, i32 noundef %conv145.i.i, i32 noundef %conv147.i.i, i32 noundef %conv149.i.i) #13
  %461 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr.i236.i.i = getelementptr i8, ptr %462, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i236.i.i, i32 536870912) #10, !srcloc !242
  %463 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %463)
  store i32 0, ptr %arrayidx77, align 4
  br label %if.then172.i

do.end169.i:                                      ; preds = %sw.bb128.i.i.do.end169.i_crit_edge, %sw.bb80.i.i.do.end169.i_crit_edge, %sw.bb33.i.i.do.end169.i_crit_edge, %sw.bb.i293.i.do.end169.i_crit_edge, %if.then161.i.do.end169.i_crit_edge, %if.end157.i.do.end169.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %devid) #10
  %464 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %driver.i.i, align 8
  %setup.i.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %465, i32 0, i32 4
  %466 = ptrtoint ptr %setup.i.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %setup.i.i, align 4
  %call137.i.i = call i32 %467(ptr noundef %gadget.i.i, ptr noundef nonnull %crq.i) #10
  call void @_raw_spin_lock(ptr noundef %devid) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i.i)
  %cmp170.i = icmp slt i32 %call137.i.i, 0
  br i1 %cmp170.i, label %do.end169.i.if.then172.i_crit_edge, label %do.end169.i.cleanup.i_crit_edge

do.end169.i.cleanup.i_crit_edge:                  ; preds = %do.end169.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

do.end169.i.if.then172.i_crit_edge:               ; preds = %do.end169.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then172.i

if.then172.i:                                     ; preds = %do.end169.i.if.then172.i_crit_edge, %do.end169.thread313.i
  %468 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr.i308.i = getelementptr i8, ptr %469, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i308.i, i32 536870912) #10, !srcloc !242
  %470 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %470)
  store i32 0, ptr %arrayidx77, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then172.i, %do.end169.i.cleanup.i_crit_edge, %if.end134.i.i, %if.end127.i.i, %if.then87.i.i, %if.end79.i.i, %cleanup31.thread244.i.i, %do.end135.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %crq.i) #10
  br label %for.inc87

if.else:                                          ; preds = %if.then75
  %471 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr.i328 = getelementptr i8, ptr %472, i32 28
  %473 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i328) #10, !srcloc !246
  %474 = call i32 @llvm.bswap.i32(i32 %473) #10
  %475 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr3.i329 = getelementptr i8, ptr %476, i32 12
  %477 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i329) #10, !srcloc !246
  %478 = call i32 @llvm.bswap.i32(i32 %477) #10
  %and113.i = and i32 %478, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113.i)
  %tobool.not114.i = icmp ne i32 %and113.i, 0
  %and6115.i = and i32 %474, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6115.i)
  %tobool7.not116.i = icmp eq i32 %and6115.i, 0
  %or.cond117.i = select i1 %tobool.not114.i, i1 %tobool7.not116.i, i1 false
  br i1 %or.cond117.i, label %do.end10.lr.ph.i, label %if.else.while.end.i_crit_edge

if.else.while.end.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

do.end10.lr.ph.i:                                 ; preds = %if.else
  %queue.i330 = getelementptr %struct.usba_ep, ptr %128, i32 %i68.0463, i32 7
  %maxpacket.i.i331 = getelementptr %struct.usba_ep, ptr %128, i32 %i68.0463, i32 5, i32 7
  %fifo.i.i332 = getelementptr %struct.usba_ep, ptr %128, i32 %i68.0463, i32 3
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.end43.i.do.end10.i_crit_edge, %do.end10.lr.ph.i
  %479 = ptrtoint ptr %queue.i330 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load volatile ptr, ptr %queue.i330, align 4
  %cmp.i.not.i333 = icmp eq ptr %480, %queue.i330
  br i1 %cmp.i.not.i333, label %do.end15.i, label %if.end.i337

do.end15.i:                                       ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %481 = ptrtoint ptr %pdev.i334 to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %pdev.i334, align 4
  %dev.i335 = getelementptr inbounds %struct.platform_device, ptr %482, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i335, ptr noundef nonnull @.str.89) #13
  %483 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %484, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 524288) #10, !srcloc !242
  br label %for.inc87

if.end.i337:                                      ; preds = %do.end10.i
  %add.ptr20.i = getelementptr i8, ptr %480, i32 -56
  %using_dma.i = getelementptr i8, ptr %480, i32 12
  %485 = ptrtoint ptr %using_dma.i to i32
  call void @__asan_load1_noabort(i32 %485)
  %bf.load.i336 = load i8, ptr %using_dma.i, align 4
  %486 = and i8 %bf.load.i336, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %486)
  %tobool21.not.i = icmp eq i8 %486, 0
  br i1 %tobool21.not.i, label %if.else.i354, label %if.then22.i

if.then22.i:                                      ; preds = %if.end.i337
  %487 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr24.i338 = getelementptr i8, ptr %488, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i338, i32 524288) #10, !srcloc !242
  %489 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %490, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 524288) #10, !srcloc !242
  %call.i.i.i339 = call zeroext i1 @__list_del_entry_valid(ptr noundef %480) #10
  br i1 %call.i.i.i339, label %if.end.i.i.i342, label %if.then22.i.list_del_init.exit.i345_crit_edge

if.then22.i.list_del_init.exit.i345_crit_edge:    ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i345

if.end.i.i.i342:                                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i340 = getelementptr inbounds %struct.list_head, ptr %480, i32 0, i32 1
  %491 = ptrtoint ptr %prev.i.i.i340 to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %prev.i.i.i340, align 4
  %493 = ptrtoint ptr %480 to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %480, align 4
  %prev1.i.i.i.i341 = getelementptr inbounds %struct.list_head, ptr %494, i32 0, i32 1
  %495 = ptrtoint ptr %prev1.i.i.i.i341 to i32
  call void @__asan_store4_noabort(i32 %495)
  store ptr %492, ptr %prev1.i.i.i.i341, align 4
  %496 = ptrtoint ptr %492 to i32
  call void @__asan_store4_noabort(i32 %496)
  store volatile ptr %494, ptr %492, align 4
  br label %list_del_init.exit.i345

list_del_init.exit.i345:                          ; preds = %if.end.i.i.i342, %if.then22.i.list_del_init.exit.i345_crit_edge
  %497 = ptrtoint ptr %480 to i32
  call void @__asan_store4_noabort(i32 %497)
  store volatile ptr %480, ptr %480, align 4
  %prev.i3.i.i343 = getelementptr inbounds %struct.list_head, ptr %480, i32 0, i32 1
  %498 = ptrtoint ptr %prev.i3.i.i343 to i32
  call void @__asan_store4_noabort(i32 %498)
  store ptr %480, ptr %prev.i3.i.i343, align 4
  %499 = ptrtoint ptr %queue.i330 to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load volatile ptr, ptr %queue.i330, align 4
  %cmp.i.not.i.i344 = icmp eq ptr %500, %queue.i330
  br i1 %cmp.i.not.i.i344, label %if.then.i.i347, label %if.end.i.i351

if.then.i.i347:                                   ; preds = %list_del_init.exit.i345
  call void @__sanitizer_cov_trace_pc() #12
  %501 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr.i.i346 = getelementptr i8, ptr %502, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i346, i32 655360) #10, !srcloc !242
  br label %if.end43.sink.split.i

if.end.i.i351:                                    ; preds = %list_del_init.exit.i345
  %submitted.i.i348 = getelementptr i8, ptr %500, i32 12
  %503 = ptrtoint ptr %submitted.i.i348 to i32
  call void @__asan_load1_noabort(i32 %503)
  %bf.load.i.i349 = load i8, ptr %submitted.i.i348, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i349)
  %tobool3.not.i.i350 = icmp sgt i8 %bf.load.i.i349, -1
  br i1 %tobool3.not.i.i350, label %if.then4.i.i353, label %if.end.i.i351.if.end43.sink.split.i_crit_edge

if.end.i.i351.if.end43.sink.split.i_crit_edge:    ; preds = %if.end.i.i351
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.sink.split.i

if.then4.i.i353:                                  ; preds = %if.end.i.i351
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr2.i.i352 = getelementptr i8, ptr %500, i32 -56
  call fastcc void @submit_request(ptr noundef %arrayidx77, ptr noundef %add.ptr2.i.i352) #10
  br label %if.end43.sink.split.i

if.else.i354:                                     ; preds = %if.end.i337
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i336)
  %tobool31.not.i = icmp sgt i8 %bf.load.i336, -1
  br i1 %tobool31.not.i, label %if.else33.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.else.i354
  %length.i.i355 = getelementptr i8, ptr %480, i32 -52
  %504 = ptrtoint ptr %length.i.i355 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %length.i.i355, align 4
  %actual.i.i356 = getelementptr i8, ptr %480, i32 -4
  %506 = ptrtoint ptr %actual.i.i356 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %actual.i.i356, align 4
  %sub.i.i357 = sub i32 %505, %507
  %bf.clear.i.i358 = and i8 %bf.load.i336, -65
  %bf.set.i.i359 = or i8 %bf.load.i336, 64
  %508 = ptrtoint ptr %using_dma.i to i32
  call void @__asan_store1_noabort(i32 %508)
  store i8 %bf.set.i.i359, ptr %using_dma.i, align 4
  %509 = ptrtoint ptr %maxpacket.i.i331 to i32
  call void @__asan_loadN_noabort(i32 %509, i32 7)
  %bf.load4.i.i360 = load i56, ptr %maxpacket.i.i331, align 2
  %bf.lshr.i.i361 = lshr i56 %bf.load4.i.i360, 40
  %bf.cast.i.i362 = trunc i56 %bf.lshr.i.i361 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i357, i32 %bf.cast.i.i362)
  %cmp.i90.i = icmp ugt i32 %sub.i.i357, %bf.cast.i.i362
  br i1 %cmp.i90.i, label %if.then32.i.do.end.sink.split.i.i370_crit_edge, label %if.else.i.i364

if.then32.i.do.end.sink.split.i.i370_crit_edge:   ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.sink.split.i.i370

if.else.i.i364:                                   ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i357, i32 %bf.cast.i.i362)
  %cmp19.i.i363 = icmp eq i32 %sub.i.i357, %bf.cast.i.i362
  br i1 %cmp19.i.i363, label %land.lhs.true.i.i368, label %if.else.i.i364.next_fifo_transaction.exit.i374_crit_edge

if.else.i.i364.next_fifo_transaction.exit.i374_crit_edge: ; preds = %if.else.i.i364
  call void @__sanitizer_cov_trace_pc() #12
  br label %next_fifo_transaction.exit.i374

land.lhs.true.i.i368:                             ; preds = %if.else.i.i364
  %zero.i.i365 = getelementptr i8, ptr %480, i32 -32
  %510 = ptrtoint ptr %zero.i.i365 to i32
  call void @__asan_load4_noabort(i32 %510)
  %bf.load21.i.i366 = load i32, ptr %zero.i.i365, align 4
  %511 = and i32 %bf.load21.i.i366, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %511)
  %tobool.not.i.i367 = icmp eq i32 %511, 0
  br i1 %tobool.not.i.i367, label %land.lhs.true.i.i368.next_fifo_transaction.exit.i374_crit_edge, label %land.lhs.true.i.i368.do.end.sink.split.i.i370_crit_edge

land.lhs.true.i.i368.do.end.sink.split.i.i370_crit_edge: ; preds = %land.lhs.true.i.i368
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.sink.split.i.i370

land.lhs.true.i.i368.next_fifo_transaction.exit.i374_crit_edge: ; preds = %land.lhs.true.i.i368
  call void @__sanitizer_cov_trace_pc() #12
  br label %next_fifo_transaction.exit.i374

do.end.sink.split.i.i370:                         ; preds = %land.lhs.true.i.i368.do.end.sink.split.i.i370_crit_edge, %if.then32.i.do.end.sink.split.i.i370_crit_edge
  %transaction_len.0.ph.i.i369 = phi i32 [ %bf.cast.i.i362, %if.then32.i.do.end.sink.split.i.i370_crit_edge ], [ %sub.i.i357, %land.lhs.true.i.i368.do.end.sink.split.i.i370_crit_edge ]
  %512 = ptrtoint ptr %using_dma.i to i32
  call void @__asan_store1_noabort(i32 %512)
  store i8 %bf.clear.i.i358, ptr %using_dma.i, align 4
  br label %next_fifo_transaction.exit.i374

next_fifo_transaction.exit.i374:                  ; preds = %do.end.sink.split.i.i370, %land.lhs.true.i.i368.next_fifo_transaction.exit.i374_crit_edge, %if.else.i.i364.next_fifo_transaction.exit.i374_crit_edge
  %transaction_len.0.i.i371 = phi i32 [ %sub.i.i357, %land.lhs.true.i.i368.next_fifo_transaction.exit.i374_crit_edge ], [ %sub.i.i357, %if.else.i.i364.next_fifo_transaction.exit.i374_crit_edge ], [ %transaction_len.0.ph.i.i369, %do.end.sink.split.i.i370 ]
  %513 = ptrtoint ptr %fifo.i.i332 to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %fifo.i.i332, align 4
  %515 = ptrtoint ptr %add.ptr20.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %add.ptr20.i, align 4
  %add.ptr.i91.i = getelementptr i8, ptr %516, i32 %507
  call void @mmiocpy(ptr noundef %514, ptr noundef %add.ptr.i91.i, i32 noundef %transaction_len.0.i.i371) #10
  %517 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr33.i.i372 = getelementptr i8, ptr %518, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i.i372, i32 524288) #10, !srcloc !242
  %519 = ptrtoint ptr %actual.i.i356 to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load i32, ptr %actual.i.i356, align 4
  %add.i.i373 = add i32 %520, %transaction_len.0.i.i371
  store i32 %add.i.i373, ptr %actual.i.i356, align 4
  br label %if.end34.i

if.else33.i:                                      ; preds = %if.else.i354
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @submit_request(ptr noundef %arrayidx77, ptr noundef %add.ptr20.i) #10
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else33.i, %next_fifo_transaction.exit.i374
  %521 = ptrtoint ptr %using_dma.i to i32
  call void @__asan_load1_noabort(i32 %521)
  %bf.load35.i = load i8, ptr %using_dma.i, align 4
  %522 = and i8 %bf.load35.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %522)
  %tobool39.not.i = icmp eq i8 %522, 0
  br i1 %tobool39.not.i, label %if.end34.i.if.end43.i_crit_edge, label %if.then40.i

if.end34.i.if.end43.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

if.then40.i:                                      ; preds = %if.end34.i
  %call.i.i93.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %480) #10
  br i1 %call.i.i93.i, label %if.end.i.i96.i, label %if.then40.i.list_del_init.exit98.i_crit_edge

if.then40.i.list_del_init.exit98.i_crit_edge:     ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit98.i

if.end.i.i96.i:                                   ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i94.i = getelementptr inbounds %struct.list_head, ptr %480, i32 0, i32 1
  %523 = ptrtoint ptr %prev.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %prev.i.i94.i, align 4
  %525 = ptrtoint ptr %480 to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %480, align 4
  %prev1.i.i.i95.i = getelementptr inbounds %struct.list_head, ptr %526, i32 0, i32 1
  %527 = ptrtoint ptr %prev1.i.i.i95.i to i32
  call void @__asan_store4_noabort(i32 %527)
  store ptr %524, ptr %prev1.i.i.i95.i, align 4
  %528 = ptrtoint ptr %524 to i32
  call void @__asan_store4_noabort(i32 %528)
  store volatile ptr %526, ptr %524, align 4
  br label %list_del_init.exit98.i

list_del_init.exit98.i:                           ; preds = %if.end.i.i96.i, %if.then40.i.list_del_init.exit98.i_crit_edge
  %529 = ptrtoint ptr %480 to i32
  call void @__asan_store4_noabort(i32 %529)
  store volatile ptr %480, ptr %480, align 4
  %prev.i3.i97.i = getelementptr inbounds %struct.list_head, ptr %480, i32 0, i32 1
  %530 = ptrtoint ptr %prev.i3.i97.i to i32
  call void @__asan_store4_noabort(i32 %530)
  store ptr %480, ptr %prev.i3.i97.i, align 4
  %531 = ptrtoint ptr %queue.i330 to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load volatile ptr, ptr %queue.i330, align 4
  %cmp.i.not.i100.i = icmp eq ptr %532, %queue.i330
  br i1 %cmp.i.not.i100.i, label %if.then.i103.i, label %if.end.i107.i

if.then.i103.i:                                   ; preds = %list_del_init.exit98.i
  call void @__sanitizer_cov_trace_pc() #12
  %533 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr.i102.i = getelementptr i8, ptr %534, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102.i, i32 655360) #10, !srcloc !242
  br label %if.end43.sink.split.i

if.end.i107.i:                                    ; preds = %list_del_init.exit98.i
  %submitted.i104.i = getelementptr i8, ptr %532, i32 12
  %535 = ptrtoint ptr %submitted.i104.i to i32
  call void @__asan_load1_noabort(i32 %535)
  %bf.load.i105.i = load i8, ptr %submitted.i104.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i105.i)
  %tobool3.not.i106.i = icmp sgt i8 %bf.load.i105.i, -1
  br i1 %tobool3.not.i106.i, label %if.then4.i109.i, label %if.end.i107.i.if.end43.sink.split.i_crit_edge

if.end.i107.i.if.end43.sink.split.i_crit_edge:    ; preds = %if.end.i107.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.sink.split.i

if.then4.i109.i:                                  ; preds = %if.end.i107.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr2.i108.i = getelementptr i8, ptr %532, i32 -56
  call fastcc void @submit_request(ptr noundef %arrayidx77, ptr noundef %add.ptr2.i108.i) #10
  br label %if.end43.sink.split.i

if.end43.sink.split.i:                            ; preds = %if.then4.i109.i, %if.end.i107.i.if.end43.sink.split.i_crit_edge, %if.then.i103.i, %if.then4.i.i353, %if.end.i.i351.if.end43.sink.split.i_crit_edge, %if.then.i.i347
  call fastcc void @request_complete(ptr noundef %arrayidx77, ptr noundef %add.ptr20.i, i32 noundef 0) #10
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.end43.sink.split.i, %if.end34.i.if.end43.i_crit_edge
  %536 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr46.i = getelementptr i8, ptr %537, i32 28
  %538 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.i) #10, !srcloc !246
  %539 = call i32 @llvm.bswap.i32(i32 %538) #10
  %540 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr51.i = getelementptr i8, ptr %541, i32 12
  %542 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i) #10, !srcloc !246
  %543 = call i32 @llvm.bswap.i32(i32 %542) #10
  %and.i375 = and i32 %543, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i375)
  %tobool.not.i376 = icmp ne i32 %and.i375, 0
  %and6.i377 = and i32 %539, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i377)
  %tobool7.not.i = icmp eq i32 %and6.i377, 0
  %or.cond.i378 = select i1 %tobool.not.i376, i1 %tobool7.not.i, i1 false
  br i1 %or.cond.i378, label %if.end43.i.do.end10.i_crit_edge, label %if.end43.i.while.end.i_crit_edge

if.end43.i.while.end.i_crit_edge:                 ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.end43.i.do.end10.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

while.end.i:                                      ; preds = %if.end43.i.while.end.i_crit_edge, %if.else.while.end.i_crit_edge
  %epctrl.0.lcssa.i = phi i32 [ %478, %if.else.while.end.i_crit_edge ], [ %543, %if.end43.i.while.end.i_crit_edge ]
  %epstatus.0.lcssa.i = phi i32 [ %474, %if.else.while.end.i_crit_edge ], [ %539, %if.end43.i.while.end.i_crit_edge ]
  %and54.i = and i32 %epctrl.0.lcssa.i, 512
  %and55.i = and i32 %and54.i, %epstatus.0.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %while.end.i.for.inc87_crit_edge, label %do.end60.i

while.end.i.for.inc87_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc87

do.end60.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @receive_data(ptr noundef %arrayidx77) #10
  br label %for.inc87

for.inc87:                                        ; preds = %do.end60.i, %while.end.i.for.inc87_crit_edge, %do.end15.i, %cleanup.i, %if.end103.i.for.inc87_crit_edge, %for.body71.for.inc87_crit_edge
  %inc88 = add nuw nsw i32 %i68.0463, 1
  %544 = ptrtoint ptr %num_ep to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %num_ep, align 4
  %cmp70 = icmp slt i32 %inc88, %545
  br i1 %cmp70, label %for.inc87.for.body71_crit_edge, label %for.inc87.if.end90_crit_edge

for.inc87.if.end90_crit_edge:                     ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

for.inc87.for.body71_crit_edge:                   ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body71

if.end90:                                         ; preds = %for.inc87.if.end90_crit_edge, %if.then67.if.end90_crit_edge, %if.end63.if.end90_crit_edge
  %and91 = and i32 %and, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end90.if.end173_crit_edge, label %if.then93

if.end90.if.end173_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end173

if.then93:                                        ; preds = %if.end90
  %546 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %regs, align 8
  %add.ptr96 = getelementptr i8, ptr %547, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96, i32 1912602624) #10, !srcloc !242
  %bias_pulse_needed.i380 = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 15
  %548 = ptrtoint ptr %bias_pulse_needed.i380 to i32
  call void @__asan_load1_noabort(i32 %548)
  %549 = load i8, ptr %bias_pulse_needed.i380, align 8, !range !243
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %549)
  %tobool.not.i381 = icmp eq i8 %549, 0
  br i1 %tobool.not.i381, label %if.then93.generate_bias_pulse.exit390_crit_edge, label %if.end.i384

if.then93.generate_bias_pulse.exit390_crit_edge:  ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  br label %generate_bias_pulse.exit390

if.end.i384:                                      ; preds = %if.then93
  %errata.i382 = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 7
  %550 = ptrtoint ptr %errata.i382 to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %errata.i382, align 8
  %tobool1.not.i383 = icmp eq ptr %551, null
  br i1 %tobool1.not.i383, label %if.end.i384.if.end7.i389_crit_edge, label %land.lhs.true.i387

if.end.i384.if.end7.i389_crit_edge:               ; preds = %if.end.i384
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i389

land.lhs.true.i387:                               ; preds = %if.end.i384
  %pulse_bias.i385 = getelementptr inbounds %struct.usba_udc_errata, ptr %551, i32 0, i32 1
  %552 = ptrtoint ptr %pulse_bias.i385 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %pulse_bias.i385, align 4
  %tobool3.not.i386 = icmp eq ptr %553, null
  br i1 %tobool3.not.i386, label %land.lhs.true.i387.if.end7.i389_crit_edge, label %if.then4.i388

land.lhs.true.i387.if.end7.i389_crit_edge:        ; preds = %land.lhs.true.i387
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i389

if.then4.i388:                                    ; preds = %land.lhs.true.i387
  call void @__sanitizer_cov_trace_pc() #12
  call void %553(ptr noundef %devid) #10
  br label %if.end7.i389

if.end7.i389:                                     ; preds = %if.then4.i388, %land.lhs.true.i387.if.end7.i389_crit_edge, %if.end.i384.if.end7.i389_crit_edge
  %554 = ptrtoint ptr %bias_pulse_needed.i380 to i32
  call void @__asan_store1_noabort(i32 %554)
  store i8 0, ptr %bias_pulse_needed.i380, align 8
  br label %generate_bias_pulse.exit390

generate_bias_pulse.exit390:                      ; preds = %if.end7.i389, %if.then93.generate_bias_pulse.exit390_crit_edge
  %555 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %regs, align 8
  %add.ptr.i392 = getelementptr i8, ptr %556, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i392, i32 -1) #10, !srcloc !242
  %ep0.i = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 4, i32 3
  %557 = ptrtoint ptr %ep0.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %ep0.i, align 4
  %add.ptr.i.i393 = getelementptr i8, ptr %558, i32 -24
  %queue.i394 = getelementptr i8, ptr %558, i32 48
  %559 = ptrtoint ptr %queue.i394 to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %queue.i394, align 4
  %cmp.not23.i = icmp eq ptr %560, %queue.i394
  br i1 %cmp.not23.i, label %generate_bias_pulse.exit390.reset_all_endpoints.exit_crit_edge, label %generate_bias_pulse.exit390.for.body.i_crit_edge

generate_bias_pulse.exit390.for.body.i_crit_edge: ; preds = %generate_bias_pulse.exit390
  br label %for.body.i

generate_bias_pulse.exit390.reset_all_endpoints.exit_crit_edge: ; preds = %generate_bias_pulse.exit390
  call void @__sanitizer_cov_trace_pc() #12
  br label %reset_all_endpoints.exit

for.body.i:                                       ; preds = %list_del_init.exit.i400.for.body.i_crit_edge, %generate_bias_pulse.exit390.for.body.i_crit_edge
  %.pn.in24.i = phi ptr [ %.pn.i, %list_del_init.exit.i400.for.body.i_crit_edge ], [ %560, %generate_bias_pulse.exit390.for.body.i_crit_edge ]
  %req.0.i = getelementptr i8, ptr %.pn.in24.i, i32 -56
  %561 = ptrtoint ptr %.pn.in24.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %.pn.i = load ptr, ptr %.pn.in24.i, align 4
  %call.i.i.i395 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in24.i) #10
  br i1 %call.i.i.i395, label %if.end.i.i.i398, label %for.body.i.list_del_init.exit.i400_crit_edge

for.body.i.list_del_init.exit.i400_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i400

if.end.i.i.i398:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i396 = getelementptr inbounds %struct.list_head, ptr %.pn.in24.i, i32 0, i32 1
  %562 = ptrtoint ptr %prev.i.i.i396 to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %prev.i.i.i396, align 4
  %564 = ptrtoint ptr %.pn.in24.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %.pn.in24.i, align 4
  %prev1.i.i.i.i397 = getelementptr inbounds %struct.list_head, ptr %565, i32 0, i32 1
  %566 = ptrtoint ptr %prev1.i.i.i.i397 to i32
  call void @__asan_store4_noabort(i32 %566)
  store ptr %563, ptr %prev1.i.i.i.i397, align 4
  %567 = ptrtoint ptr %563 to i32
  call void @__asan_store4_noabort(i32 %567)
  store volatile ptr %565, ptr %563, align 4
  br label %list_del_init.exit.i400

list_del_init.exit.i400:                          ; preds = %if.end.i.i.i398, %for.body.i.list_del_init.exit.i400_crit_edge
  %568 = ptrtoint ptr %.pn.in24.i to i32
  call void @__asan_store4_noabort(i32 %568)
  store volatile ptr %.pn.in24.i, ptr %.pn.in24.i, align 4
  %prev.i3.i.i399 = getelementptr inbounds %struct.list_head, ptr %.pn.in24.i, i32 0, i32 1
  %569 = ptrtoint ptr %prev.i3.i.i399 to i32
  call void @__asan_store4_noabort(i32 %569)
  store ptr %.pn.in24.i, ptr %prev.i3.i.i399, align 4
  call fastcc void @request_complete(ptr noundef %add.ptr.i.i393, ptr noundef %req.0.i, i32 noundef -104) #10
  %cmp.not.i = icmp eq ptr %.pn.i, %queue.i394
  br i1 %cmp.not.i, label %list_del_init.exit.i400.reset_all_endpoints.exit_crit_edge, label %list_del_init.exit.i400.for.body.i_crit_edge

list_del_init.exit.i400.for.body.i_crit_edge:     ; preds = %list_del_init.exit.i400
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

list_del_init.exit.i400.reset_all_endpoints.exit_crit_edge: ; preds = %list_del_init.exit.i400
  call void @__sanitizer_cov_trace_pc() #12
  br label %reset_all_endpoints.exit

reset_all_endpoints.exit:                         ; preds = %list_del_init.exit.i400.reset_all_endpoints.exit_crit_edge, %generate_bias_pulse.exit390.reset_all_endpoints.exit_crit_edge
  %gadget97 = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 4
  %speed98 = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 4, i32 5
  %570 = ptrtoint ptr %speed98 to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load i32, ptr %speed98, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %571)
  %cmp99.not = icmp eq i32 %571, 0
  br i1 %cmp99.not, label %reset_all_endpoints.exit.if.end111_crit_edge, label %land.lhs.true101

reset_all_endpoints.exit.if.end111_crit_edge:     ; preds = %reset_all_endpoints.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

land.lhs.true101:                                 ; preds = %reset_all_endpoints.exit
  %driver102 = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 5
  %572 = ptrtoint ptr %driver102 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %driver102, align 8
  %tobool103.not = icmp eq ptr %573, null
  br i1 %tobool103.not, label %land.lhs.true101.if.end111_crit_edge, label %if.then104

land.lhs.true101.if.end111_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

if.then104:                                       ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #12
  %574 = ptrtoint ptr %speed98 to i32
  call void @__asan_store4_noabort(i32 %574)
  store i32 0, ptr %speed98, align 8
  call void @_raw_spin_unlock(ptr noundef %devid) #10
  %575 = ptrtoint ptr %driver102 to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %driver102, align 8
  call void @usb_gadget_udc_reset(ptr noundef %gadget97, ptr noundef %576) #10
  call void @_raw_spin_lock(ptr noundef %devid) #10
  br label %if.end111

if.end111:                                        ; preds = %if.then104, %land.lhs.true101.if.end111_crit_edge, %reset_all_endpoints.exit.if.end111_crit_edge
  %and112 = and i32 %5, 1
  %577 = or i32 %and112, 2
  %578 = ptrtoint ptr %speed98 to i32
  call void @__asan_store4_noabort(i32 %578)
  store i32 %577, ptr %speed98, align 8
  %usba_ep124 = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 14
  %579 = ptrtoint ptr %usba_ep124 to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %usba_ep124, align 4
  %desc = getelementptr inbounds %struct.usba_ep, ptr %580, i32 0, i32 5, i32 9
  %581 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %581)
  store ptr @usba_ep0_desc, ptr %desc, align 4
  %582 = ptrtoint ptr %580 to i32
  call void @__asan_store4_noabort(i32 %582)
  store i32 0, ptr %580, align 4
  %ep_regs = getelementptr inbounds %struct.usba_ep, ptr %580, i32 0, i32 1
  %583 = ptrtoint ptr %ep_regs to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %ep_regs, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %584, i32 1124073472) #10, !srcloc !242
  %585 = ptrtoint ptr %ep_regs to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %ep_regs, align 4
  %add.ptr129 = getelementptr i8, ptr %586, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129, i32 17825792) #10, !srcloc !242
  %suspended130 = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 17
  %587 = ptrtoint ptr %suspended130 to i32
  call void @__asan_store1_noabort(i32 %587)
  store i8 0, ptr %suspended130, align 2
  %588 = ptrtoint ptr %int_enb_cache.i to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load i32, ptr %int_enb_cache.i, align 4
  %and.i402 = and i32 %589, -33
  %590 = call i32 @llvm.bswap.i32(i32 %and.i402) #10
  %591 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %regs, align 8
  %add.ptr.i404 = getelementptr i8, ptr %592, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i404, i32 %590) #10, !srcloc !242
  %593 = ptrtoint ptr %int_enb_cache.i to i32
  call void @__asan_store4_noabort(i32 %593)
  store i32 %and.i402, ptr %int_enb_cache.i, align 4
  %or.i406 = or i32 %and.i402, 322
  %594 = call i32 @llvm.bswap.i32(i32 %or.i406) #10
  %595 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %regs, align 8
  %add.ptr.i408 = getelementptr i8, ptr %596, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i408, i32 %594) #10, !srcloc !242
  %597 = ptrtoint ptr %int_enb_cache.i to i32
  call void @__asan_store4_noabort(i32 %597)
  store i32 %or.i406, ptr %int_enb_cache.i, align 4
  %598 = ptrtoint ptr %ep_regs to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %ep_regs, align 4
  %600 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %599) #10, !srcloc !246
  %.mask = and i32 %600, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool137.not = icmp eq i32 %.mask, 0
  br i1 %tobool137.not, label %do.end141, label %if.end111.if.end142_crit_edge

if.end111.if.end142_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end142

do.end141:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 6
  %601 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %602, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #13
  br label %if.end142

if.end142:                                        ; preds = %do.end141, %if.end111.if.end142_crit_edge
  %num_ep144 = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 10
  %603 = ptrtoint ptr %num_ep144 to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load i32, ptr %num_ep144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %604)
  %cmp145467 = icmp sgt i32 %604, 1
  br i1 %cmp145467, label %for.body147.lr.ph, label %if.end142.if.end173_crit_edge

if.end142.if.end173_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end173

for.body147.lr.ph:                                ; preds = %if.end142
  %pdev166 = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 6
  br label %for.body147

for.body147:                                      ; preds = %for.inc170.for.body147_crit_edge, %for.body147.lr.ph
  %i94.0468 = phi i32 [ 1, %for.body147.lr.ph ], [ %inc171, %for.inc170.for.body147_crit_edge ]
  %605 = ptrtoint ptr %usba_ep124 to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %usba_ep124, align 4
  %claimed = getelementptr %struct.usba_ep, ptr %606, i32 %i94.0468, i32 5, i32 5
  %607 = ptrtoint ptr %claimed to i32
  call void @__asan_load1_noabort(i32 %607)
  %608 = load i8, ptr %claimed, align 4, !range !243
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %608)
  %tobool151.not = icmp eq i8 %608, 0
  br i1 %tobool151.not, label %for.body147.for.inc170_crit_edge, label %if.then152

for.body147.for.inc170_crit_edge:                 ; preds = %for.body147
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc170

if.then152:                                       ; preds = %for.body147
  %ept_cfg = getelementptr %struct.usba_ep, ptr %606, i32 %i94.0468, i32 12
  %609 = ptrtoint ptr %ept_cfg to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load i32, ptr %ept_cfg, align 4
  %611 = call i32 @llvm.bswap.i32(i32 %610)
  %ep_regs153 = getelementptr %struct.usba_ep, ptr %606, i32 %i94.0468, i32 1
  %612 = ptrtoint ptr %ep_regs153 to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %ep_regs153, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %613, i32 %611) #10, !srcloc !242
  %614 = ptrtoint ptr %ep_regs153 to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %ep_regs153, align 4
  %616 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %615) #10, !srcloc !246
  %.mask264 = and i32 %616, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask264)
  %tobool161.not = icmp eq i32 %.mask264, 0
  br i1 %tobool161.not, label %do.end165, label %if.then152.for.inc170_crit_edge

if.then152.for.inc170_crit_edge:                  ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc170

do.end165:                                        ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #12
  %617 = ptrtoint ptr %pdev166 to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %pdev166, align 4
  %dev167 = getelementptr inbounds %struct.platform_device, ptr %618, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev167, ptr noundef nonnull @.str.52, i32 noundef %i94.0468) #13
  br label %for.inc170

for.inc170:                                       ; preds = %do.end165, %if.then152.for.inc170_crit_edge, %for.body147.for.inc170_crit_edge
  %inc171 = add nuw nsw i32 %i94.0468, 1
  %619 = ptrtoint ptr %num_ep144 to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load i32, ptr %num_ep144, align 4
  %cmp145 = icmp slt i32 %inc171, %620
  br i1 %cmp145, label %for.inc170.for.body147_crit_edge, label %for.inc170.if.end173_crit_edge

for.inc170.if.end173_crit_edge:                   ; preds = %for.inc170
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end173

for.inc170.for.body147_crit_edge:                 ; preds = %for.inc170
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body147

if.end173:                                        ; preds = %for.inc170.if.end173_crit_edge, %if.end142.if.end173_crit_edge, %if.end90.if.end173_crit_edge
  call void @_raw_spin_unlock(ptr noundef %devid) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usba_vbus_irq_thread(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #10
  %vbus_mutex = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %vbus_mutex, i32 noundef 0) #10
  %vbus_pin.i = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 9
  %1 = ptrtoint ptr %vbus_pin.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vbus_pin.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %vbus_is_present.exit.thread, label %vbus_is_present.exit

vbus_is_present.exit:                             ; preds = %entry
  %call.i = tail call i32 @gpiod_get_value(ptr noundef nonnull %2) #10
  %vbus_prev = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 21
  %3 = ptrtoint ptr %vbus_prev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vbus_prev, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %4)
  %cmp.not = icmp eq i32 %call.i, %4
  br i1 %cmp.not, label %vbus_is_present.exit.if.end9_crit_edge, label %if.then

vbus_is_present.exit.if.end9_crit_edge:           ; preds = %vbus_is_present.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

vbus_is_present.exit.thread:                      ; preds = %entry
  %vbus_prev24 = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 21
  %5 = ptrtoint ptr %vbus_prev24 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vbus_prev24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not25 = icmp eq i32 %6, 1
  br i1 %cmp.not25, label %vbus_is_present.exit.thread.if.end9_crit_edge, label %vbus_is_present.exit.thread.if.then1_crit_edge

vbus_is_present.exit.thread.if.then1_crit_edge:   ; preds = %vbus_is_present.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then1

vbus_is_present.exit.thread.if.end9_crit_edge:    ; preds = %vbus_is_present.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then:                                          ; preds = %vbus_is_present.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.else, label %if.then.if.then1_crit_edge

if.then.if.then1_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then1

if.then1:                                         ; preds = %if.then.if.then1_crit_edge, %vbus_is_present.exit.thread.if.then1_crit_edge
  %retval.0.i2634 = phi i32 [ %call.i, %if.then.if.then1_crit_edge ], [ 1, %vbus_is_present.exit.thread.if.then1_crit_edge ]
  %vbus_prev2732 = phi ptr [ %vbus_prev, %if.then.if.then1_crit_edge ], [ %vbus_prev24, %vbus_is_present.exit.thread.if.then1_crit_edge ]
  %call2 = tail call fastcc i32 @usba_start(ptr noundef %devid)
  br label %if.end7

if.else:                                          ; preds = %if.then
  %suspended = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 17
  %7 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %suspended, align 2
  %driver = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 5
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver, align 8
  %disconnect = getelementptr inbounds %struct.usb_gadget_driver, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disconnect, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %if.else.if.end_crit_edge, label %if.then4

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %gadget = getelementptr inbounds %struct.usba_udc, ptr %devid, i32 0, i32 4
  tail call void %11(ptr noundef %gadget) #10
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.else.if.end_crit_edge
  tail call fastcc void @usba_stop(ptr noundef %devid)
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then1
  %retval.0.i2633 = phi i32 [ 0, %if.end ], [ %retval.0.i2634, %if.then1 ]
  %vbus_prev2731 = phi ptr [ %vbus_prev, %if.end ], [ %vbus_prev2732, %if.then1 ]
  %12 = ptrtoint ptr %vbus_prev2731 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %retval.0.i2633, ptr %vbus_prev2731, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.end7, %vbus_is_present.exit.thread.if.end9_crit_edge, %vbus_is_present.exit.if.end9_crit_edge
  tail call void @mutex_unlock(ptr noundef %vbus_mutex) #10
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usba_init_debugfs(ptr noundef %udc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 4, i32 10
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usb_debug_root to i32))
  %2 = load ptr, ptr @usb_debug_root, align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef %1, ptr noundef %2) #10
  %debugfs_root = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 23
  %3 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %debugfs_root, align 8
  %pdev = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 6
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %call1 = tail call ptr @platform_get_resource(ptr noundef %5, i32 noundef 512, i32 noundef 1) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %end.i = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  %8 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call1, align 4
  %sub.i = add i32 %7, 1
  %add.i = sub i32 %sub.i, %9
  %conv = zext i32 %add.i to i64
  tail call void @debugfs_create_file_size(ptr noundef nonnull @.str.91, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %udc, ptr noundef nonnull @regs_dbg_fops, i64 noundef %conv) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ep0 = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ep0, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 -24
  %name.i = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name.i, align 4
  %14 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %debugfs_root, align 8
  %call.i = tail call ptr @debugfs_create_dir(ptr noundef %13, ptr noundef %15) #10
  %debugfs_dir.i = getelementptr i8, ptr %11, i32 72
  %16 = ptrtoint ptr %debugfs_dir.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %debugfs_dir.i, align 4
  %call2.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.92, i16 noundef zeroext 256, ptr noundef %call.i, ptr noundef %add.ptr.i, ptr noundef nonnull @queue_dbg_fops) #10
  %can_dma.i = getelementptr i8, ptr %11, i32 60
  %17 = ptrtoint ptr %can_dma.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i = load i8, ptr %can_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %last_dma_status.i = getelementptr i8, ptr %11, i32 68
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.93, i16 noundef zeroext 256, ptr noundef %call.i, ptr noundef %last_dma_status.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %index.i = getelementptr i8, ptr %11, i32 59
  %18 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %index.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp.i = icmp eq i8 %19, 0
  br i1 %cmp.i, label %if.then4.i, label %if.end.i.usba_ep_init_debugfs.exit_crit_edge

if.end.i.usba_ep_init_debugfs.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usba_ep_init_debugfs.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.94, i16 noundef zeroext 256, ptr noundef %call.i, ptr noundef %add.ptr.i) #10
  br label %usba_ep_init_debugfs.exit

usba_ep_init_debugfs.exit:                        ; preds = %if.then4.i, %if.end.i.usba_ep_init_debugfs.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usba_ep_init_debugfs(ptr nocapture noundef readonly %udc, ptr noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.usba_ep, ptr %ep, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %debugfs_root = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 23
  %2 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_root, align 8
  %call = tail call ptr @debugfs_create_dir(ptr noundef %1, ptr noundef %3) #10
  %debugfs_dir = getelementptr inbounds %struct.usba_ep, ptr %ep, i32 0, i32 14
  %4 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %debugfs_dir, align 4
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.92, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %ep, ptr noundef nonnull @queue_dbg_fops) #10
  %can_dma = getelementptr inbounds %struct.usba_ep, ptr %ep, i32 0, i32 11
  %5 = ptrtoint ptr %can_dma to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %can_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %last_dma_status = getelementptr inbounds %struct.usba_ep, ptr %ep, i32 0, i32 13
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.93, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %last_dma_status) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %index = getelementptr inbounds %struct.usba_ep, ptr %ep, i32 0, i32 10
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %index, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.94, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %ep) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usba_udc_get_frame(ptr nocapture noundef readonly %gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr i8, ptr %gadget, i32 -8
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !246
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shr = lshr i32 %3, 3
  %and = and i32 %shr, 2047
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usba_udc_wakeup(ptr noundef %gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %gadget, i32 -144
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i) #10
  %devstatus = getelementptr i8, ptr %gadget, i32 1092
  %0 = ptrtoint ptr %devstatus to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %devstatus, align 4
  %2 = and i16 %1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %regs = getelementptr i8, ptr %gadget, i32 -8
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #10, !srcloc !246
  %6 = or i32 %5, 262144
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #10, !srcloc !242
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then ], [ -22, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call3) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usba_udc_set_selfpowered(ptr noundef %gadget, i32 noundef %is_selfpowered) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %gadget, i32 -144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_selfpowered)
  %cmp.not = icmp eq i32 %is_selfpowered, 0
  %is_selfpowered1 = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 17
  %0 = ptrtoint ptr %is_selfpowered1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %is_selfpowered1, align 4
  %bf.shl = select i1 %cmp.not, i32 0, i32 262144
  %bf.clear = and i32 %bf.load, -262145
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %is_selfpowered1, align 4
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i) #10
  %devstatus11 = getelementptr i8, ptr %gadget, i32 1092
  %1 = ptrtoint ptr %devstatus11 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %devstatus11, align 4
  %3 = and i16 %2, -2
  %not.cmp.not = xor i1 %cmp.not, true
  %masksel = zext i1 %not.cmp.not to i16
  %.sink = or i16 %3, %masksel
  store i16 %.sink, ptr %devstatus11, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call6) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_usba_pullup(ptr noundef %gadget, i32 noundef %is_on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %gadget, i32 -144
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #10
  %regs = getelementptr i8, ptr %gadget, i32 -8
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #10, !srcloc !246
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool.not = icmp eq i32 %is_on, 0
  %3 = and i32 %2, -131073
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %masksel = select i1 %tobool.not, i32 512, i32 0
  %ctrl.0 = or i32 %4, %masksel
  %5 = tail call i32 @llvm.bswap.i32(i32 %ctrl.0)
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #10, !srcloc !242
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_usba_start(ptr noundef %gadget, ptr noundef %driver) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %gadget, i32 -144
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #10
  %devstatus = getelementptr i8, ptr %gadget, i32 1092
  %0 = ptrtoint ptr %devstatus to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 1, ptr %devstatus, align 4
  %driver6 = getelementptr i8, ptr %gadget, i32 1048
  %1 = ptrtoint ptr %driver6 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %driver, ptr %driver6, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3) #10
  %vbus_mutex = getelementptr i8, ptr %gadget, i32 -100
  tail call void @mutex_lock_nested(ptr noundef %vbus_mutex, i32 noundef 0) #10
  %vbus_pin = getelementptr i8, ptr %gadget, i32 1064
  %2 = ptrtoint ptr %vbus_pin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vbus_pin, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.vbus_is_present.exit.thread_crit_edge, label %if.end

entry.vbus_is_present.exit.thread_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %vbus_is_present.exit.thread

if.end:                                           ; preds = %entry
  %call9 = tail call i32 @gpiod_to_irq(ptr noundef nonnull %3) #10
  tail call void @enable_irq(i32 noundef %call9) #10
  %4 = ptrtoint ptr %vbus_pin to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load ptr, ptr %vbus_pin, align 8
  %tobool.not.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i, label %if.end.vbus_is_present.exit.thread_crit_edge, label %vbus_is_present.exit

if.end.vbus_is_present.exit.thread_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %vbus_is_present.exit.thread

vbus_is_present.exit.thread:                      ; preds = %if.end.vbus_is_present.exit.thread_crit_edge, %entry.vbus_is_present.exit.thread_crit_edge
  %vbus_prev70 = getelementptr i8, ptr %gadget, i32 1096
  %5 = ptrtoint ptr %vbus_prev70 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %vbus_prev70, align 8
  br label %if.then13

vbus_is_present.exit:                             ; preds = %if.end
  %call.i = tail call i32 @gpiod_get_value(ptr noundef nonnull %.pr) #10
  %vbus_prev = getelementptr i8, ptr %gadget, i32 1096
  %6 = ptrtoint ptr %vbus_prev to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.i, ptr %vbus_prev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %vbus_is_present.exit.if.end18_crit_edge, label %vbus_is_present.exit.if.then13_crit_edge

vbus_is_present.exit.if.then13_crit_edge:         ; preds = %vbus_is_present.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

vbus_is_present.exit.if.end18_crit_edge:          ; preds = %vbus_is_present.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then13:                                        ; preds = %vbus_is_present.exit.if.then13_crit_edge, %vbus_is_present.exit.thread
  %call14 = tail call fastcc i32 @usba_start(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then13.if.end18_crit_edge, label %err

if.then13.if.end18_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.end18:                                         ; preds = %if.then13.if.end18_crit_edge, %vbus_is_present.exit.if.end18_crit_edge
  tail call void @mutex_unlock(ptr noundef %vbus_mutex) #10
  br label %cleanup

err:                                              ; preds = %if.then13
  %7 = ptrtoint ptr %vbus_pin to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vbus_pin, align 8
  %tobool21.not = icmp eq ptr %8, null
  br i1 %tobool21.not, label %err.if.end25_crit_edge, label %if.then22

err.if.end25_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then22:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  %call24 = tail call i32 @gpiod_to_irq(ptr noundef nonnull %8) #10
  tail call void @disable_irq(i32 noundef %call24) #10
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %err.if.end25_crit_edge
  tail call void @mutex_unlock(ptr noundef %vbus_mutex) #10
  %call36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #10
  %9 = ptrtoint ptr %devstatus to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %devstatus, align 4
  %11 = and i16 %10, -2
  store i16 %11, ptr %devstatus, align 4
  %12 = ptrtoint ptr %driver6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %driver6, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call36) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end18
  %retval.0 = phi i32 [ %call14, %if.end25 ], [ 0, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_usba_stop(ptr noundef %gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vbus_pin = getelementptr i8, ptr %gadget, i32 1064
  %0 = ptrtoint ptr %vbus_pin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vbus_pin, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @gpiod_to_irq(ptr noundef nonnull %1) #10
  tail call void @disable_irq(i32 noundef %call) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %gadget, i32 -144
  %suspended = getelementptr i8, ptr %gadget, i32 1090
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %suspended, align 2
  tail call fastcc void @usba_stop(ptr noundef %add.ptr)
  %driver = getelementptr i8, ptr %gadget, i32 1048
  %3 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %driver, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @atmel_usba_match_ep(ptr noundef %gadget, ptr noundef %desc, ptr noundef %ep_comp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ep_list = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %ep_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %ep_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %_ep.0 = getelementptr i8, ptr %.pn, i32 -12
  %call = tail call i32 @usb_gadget_ep_match_desc(ptr noundef %gadget, ptr noundef %_ep.0, ptr noundef %desc, ptr noundef %ep_comp) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %found_ep

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

found_ep:                                         ; preds = %for.body
  %1 = load i16, ptr @fifo_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp8 = icmp eq i16 %1, 0
  br i1 %cmp8, label %if.then10, label %found_ep.cleanup_crit_edge

found_ep.cleanup_crit_edge:                       ; preds = %found_ep
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %found_ep
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %2 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bmAttributes.i, align 1
  %4 = and i8 %3, 3
  %and.i = zext i8 %4 to i32
  %5 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %and.i, label %if.then10.unreachabledefault [
    i32 0, label %if.then10.sw.epilog.sink.split_crit_edge
    i32 1, label %sw.bb13
    i32 2, label %sw.bb18
    i32 3, label %sw.bb26
  ]

if.then10.sw.epilog.sink.split_crit_edge:         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb13:                                          ; preds = %if.then10
  %fifo_size = getelementptr i8, ptr %.pn, i32 44
  %6 = ptrtoint ptr %fifo_size to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1024, ptr %fifo_size, align 4
  %udc = getelementptr i8, ptr %.pn, i32 32
  %7 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udc, align 4
  %ep_prealloc = getelementptr inbounds %struct.usba_udc, ptr %8, i32 0, i32 18
  %9 = ptrtoint ptr %ep_prealloc to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ep_prealloc, align 1, !range !243
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool14.not = icmp eq i8 %10, 0
  br i1 %tobool14.not, label %sw.bb13.sw.epilog_crit_edge, label %sw.bb13.sw.epilog.sink.split_crit_edge

sw.bb13.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.then10
  %fifo_size19 = getelementptr i8, ptr %.pn, i32 44
  %11 = ptrtoint ptr %fifo_size19 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 512, ptr %fifo_size19, align 4
  %udc20 = getelementptr i8, ptr %.pn, i32 32
  %12 = ptrtoint ptr %udc20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %udc20, align 4
  %ep_prealloc21 = getelementptr inbounds %struct.usba_udc, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %ep_prealloc21 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ep_prealloc21, align 1, !range !243
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool22.not = icmp eq i8 %15, 0
  br i1 %tobool22.not, label %sw.bb18.sw.epilog_crit_edge, label %sw.bb18.sw.epilog.sink.split_crit_edge

sw.bb18.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb18.sw.epilog_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.then10
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %16 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %wMaxPacketSize, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp28 = icmp eq i16 %17, 0
  br i1 %cmp28, label %cond.false75, label %cond.false124

cond.false75:                                     ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #12
  %maxpacket_limit = getelementptr i8, ptr %.pn, i32 14
  %18 = ptrtoint ptr %maxpacket_limit to i32
  call void @__asan_loadN_noabort(i32 %18, i32 7)
  %bf.load = load i56, ptr %maxpacket_limit, align 2
  %bf.lshr = lshr i56 %bf.load, 24
  %19 = trunc i56 %bf.lshr to i32
  %bf.cast = and i32 %19, 65535
  br label %if.end132

cond.false124:                                    ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #12
  %20 = tail call i16 @llvm.bswap.i16(i16 %17)
  %conv126 = zext i16 %20 to i32
  br label %if.end132

if.end132:                                        ; preds = %cond.false124, %cond.false75
  %conv126.sink = phi i32 [ %conv126, %cond.false124 ], [ %bf.cast, %cond.false75 ]
  %sub.i208 = add nsw i32 %conv126.sink, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i208)
  %tobool.not.i.i.i209 = icmp eq i32 %sub.i208, 0
  %21 = tail call i32 @llvm.ctlz.i32(i32 %sub.i208, i1 true) #10, !range !245
  %sub.i.i.i210 = sub nuw nsw i32 32, %21
  %sub.i.i.op.i211 = shl nuw i32 1, %sub.i.i.i210
  %22 = trunc i32 %sub.i.i.op.i211 to i16
  %conv130 = select i1 %tobool.not.i.i.i209, i16 1, i16 %22
  %fifo_size131 = getelementptr i8, ptr %.pn, i32 44
  %23 = ptrtoint ptr %fifo_size131 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv130, ptr %fifo_size131, align 4
  %udc133 = getelementptr i8, ptr %.pn, i32 32
  %24 = ptrtoint ptr %udc133 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %udc133, align 4
  %ep_prealloc134 = getelementptr inbounds %struct.usba_udc, ptr %25, i32 0, i32 18
  %26 = ptrtoint ptr %ep_prealloc134 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ep_prealloc134, align 1, !range !243
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool135.not = icmp eq i8 %27, 0
  br i1 %tobool135.not, label %if.end132.sw.epilog_crit_edge, label %if.end132.sw.epilog.sink.split_crit_edge

if.end132.sw.epilog.sink.split_crit_edge:         ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

if.end132.sw.epilog_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then10.unreachabledefault:                     ; preds = %if.then10
  unreachable

sw.epilog.sink.split:                             ; preds = %if.end132.sw.epilog.sink.split_crit_edge, %sw.bb18.sw.epilog.sink.split_crit_edge, %sw.bb13.sw.epilog.sink.split_crit_edge, %if.then10.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 1, %if.then10.sw.epilog.sink.split_crit_edge ], [ 2, %sw.bb13.sw.epilog.sink.split_crit_edge ], [ 1, %sw.bb18.sw.epilog.sink.split_crit_edge ], [ 1, %if.end132.sw.epilog.sink.split_crit_edge ]
  %nr_banks137 = getelementptr i8, ptr %.pn, i32 46
  %28 = ptrtoint ptr %nr_banks137 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %.sink, ptr %nr_banks137, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end132.sw.epilog_crit_edge, %sw.bb18.sw.epilog_crit_edge, %sw.bb13.sw.epilog_crit_edge
  %fifo_size140 = getelementptr i8, ptr %.pn, i32 44
  %29 = ptrtoint ptr %fifo_size140 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %fifo_size140, align 4
  %conv141 = zext i16 %30 to i32
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %_ep.0, i32 noundef %conv141) #10
  %31 = ptrtoint ptr %fifo_size140 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %fifo_size140, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %32)
  %cmp144 = icmp ult i16 %32, 9
  %conv143 = zext i16 %32 to i32
  %sub150 = add nsw i32 %conv143, -1
  %33 = tail call i32 @llvm.ctlz.i32(i32 %sub150, i1 true) #10, !range !245
  %sub152 = sub nsw i32 5, %33
  %and = and i32 %sub152, 7
  %and.sink = select i1 %cmp144, i32 0, i32 %and
  %34 = getelementptr i8, ptr %.pn, i32 52
  %nr_banks156 = getelementptr i8, ptr %.pn, i32 46
  %35 = ptrtoint ptr %nr_banks156 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %nr_banks156, align 2
  %37 = shl i8 %36, 6
  %shl159 = zext i8 %37 to i32
  %or = or i32 %and.sink, %shl159
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or, ptr %34, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %found_ep.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %_ep.0, %sw.epilog ], [ %_ep.0, %found_ep.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usba_start(ptr noundef %udc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @start_clock(ptr noundef %udc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %suspended = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 17
  %0 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %suspended, align 2, !range !243
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %do.body4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body4:                                         ; preds = %if.end
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %udc) #10
  %errata.i = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 7
  %2 = ptrtoint ptr %errata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %errata.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body4.toggle_bias.exit_crit_edge, label %land.lhs.true.i

do.body4.toggle_bias.exit_crit_edge:              ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %toggle_bias.exit

land.lhs.true.i:                                  ; preds = %do.body4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.toggle_bias.exit_crit_edge, label %if.then.i

land.lhs.true.i.toggle_bias.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %toggle_bias.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %5(ptr noundef %udc, i32 noundef 1) #10
  br label %toggle_bias.exit

toggle_bias.exit:                                 ; preds = %if.then.i, %land.lhs.true.i.toggle_bias.exit_crit_edge, %do.body4.toggle_bias.exit_crit_edge
  %regs = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 2
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 589824) #10, !srcloc !242
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %add.ptr10 = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #10, !srcloc !242
  %int_enb_cache = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 22
  %10 = ptrtoint ptr %int_enb_cache to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %int_enb_cache, align 4
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 8
  %add.ptr12 = getelementptr i8, ptr %12, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 1912602624) #10, !srcloc !242
  %13 = ptrtoint ptr %int_enb_cache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %int_enb_cache, align 4
  %or.i = or i32 %14, 16
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #10, !srcloc !242
  %18 = ptrtoint ptr %int_enb_cache to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i, ptr %int_enb_cache, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %udc, i32 noundef %call6) #10
  br label %cleanup

cleanup:                                          ; preds = %toggle_bias.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @start_clock(ptr nocapture noundef %udc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %clocked = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 16
  %0 = ptrtoint ptr %clocked to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %clocked, align 1, !range !243
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 6
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void @pm_stay_awake(ptr noundef %dev) #10
  %pclk = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 12
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end3, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %5) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end.i
  %hclk = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 13
  %6 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hclk, align 8
  %call.i18 = tail call i32 @clk_prepare(ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool.not.i19 = icmp eq i32 %call.i18, 0
  br i1 %tobool.not.i19, label %if.end.i22, label %if.end3.if.then6_crit_edge

if.end3.if.then6_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.end.i22:                                       ; preds = %if.end3
  %call1.i20 = tail call i32 @clk_enable(ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %tobool2.not.i21 = icmp eq i32 %call1.i20, 0
  br i1 %tobool2.not.i21, label %if.end8, label %if.then3.i23

if.then3.i23:                                     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %7) #10
  br label %if.then6

if.then6:                                         ; preds = %if.then3.i23, %if.end3.if.then6_crit_edge
  %retval.0.i24.ph = phi i32 [ %call1.i20, %if.then3.i23 ], [ %call.i18, %if.end3.if.then6_crit_edge ]
  %8 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %9) #10
  tail call void @clk_unprepare(ptr noundef %9) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %clocked to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %clocked, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %if.then3.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i24.ph, %if.then6 ], [ 0, %if.end8 ], [ 0, %entry.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_stay_awake(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usba_stop(ptr noundef %udc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %suspended = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 17
  %0 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %suspended, align 2, !range !243
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body1:                                         ; preds = %entry
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %udc) #10
  %speed = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 4, i32 5
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %speed, align 8
  %regs.i = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 2
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #10, !srcloc !242
  %ep0.i = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 4, i32 3
  %5 = ptrtoint ptr %ep0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ep0.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 -24
  %queue.i = getelementptr i8, ptr %6, i32 48
  %7 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %queue.i, align 4
  %cmp.not23.i = icmp eq ptr %8, %queue.i
  br i1 %cmp.not23.i, label %do.body1.reset_all_endpoints.exit_crit_edge, label %do.body1.for.body.i_crit_edge

do.body1.for.body.i_crit_edge:                    ; preds = %do.body1
  br label %for.body.i

do.body1.reset_all_endpoints.exit_crit_edge:      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  br label %reset_all_endpoints.exit

for.body.i:                                       ; preds = %list_del_init.exit.i.for.body.i_crit_edge, %do.body1.for.body.i_crit_edge
  %.pn.in24.i = phi ptr [ %.pn.i, %list_del_init.exit.i.for.body.i_crit_edge ], [ %8, %do.body1.for.body.i_crit_edge ]
  %req.0.i = getelementptr i8, ptr %.pn.in24.i, i32 -56
  %9 = ptrtoint ptr %.pn.in24.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i = load ptr, ptr %.pn.in24.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in24.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del_init.exit.i_crit_edge

for.body.i.list_del_init.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in24.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %.pn.in24.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %.pn.in24.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_del_init.exit.i_crit_edge
  %16 = ptrtoint ptr %.pn.in24.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %.pn.in24.i, ptr %.pn.in24.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in24.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %.pn.in24.i, ptr %prev.i3.i.i, align 4
  tail call fastcc void @request_complete(ptr noundef %add.ptr.i.i, ptr noundef %req.0.i, i32 noundef -104) #10
  %cmp.not.i = icmp eq ptr %.pn.i, %queue.i
  br i1 %cmp.not.i, label %list_del_init.exit.i.reset_all_endpoints.exit_crit_edge, label %list_del_init.exit.i.for.body.i_crit_edge

list_del_init.exit.i.for.body.i_crit_edge:        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

list_del_init.exit.i.reset_all_endpoints.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %reset_all_endpoints.exit

reset_all_endpoints.exit:                         ; preds = %list_del_init.exit.i.reset_all_endpoints.exit_crit_edge, %do.body1.reset_all_endpoints.exit_crit_edge
  %errata.i = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 7
  %18 = ptrtoint ptr %errata.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %errata.i, align 8
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %reset_all_endpoints.exit.toggle_bias.exit_crit_edge, label %land.lhs.true.i

reset_all_endpoints.exit.toggle_bias.exit_crit_edge: ; preds = %reset_all_endpoints.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %toggle_bias.exit

land.lhs.true.i:                                  ; preds = %reset_all_endpoints.exit
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool2.not.i = icmp eq ptr %21, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.toggle_bias.exit_crit_edge, label %if.then.i

land.lhs.true.i.toggle_bias.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %toggle_bias.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %21(ptr noundef %udc, i32 noundef 0) #10
  br label %toggle_bias.exit

toggle_bias.exit:                                 ; preds = %if.then.i, %land.lhs.true.i.toggle_bias.exit_crit_edge, %reset_all_endpoints.exit.toggle_bias.exit_crit_edge
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 131072) #10, !srcloc !242
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %udc, i32 noundef %call2) #10
  %clocked.i = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 16
  %24 = ptrtoint ptr %clocked.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %clocked.i, align 1, !range !243
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i13 = icmp eq i8 %25, 0
  br i1 %tobool.not.i13, label %toggle_bias.exit.cleanup_crit_edge, label %if.end.i

toggle_bias.exit.cleanup_crit_edge:               ; preds = %toggle_bias.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %toggle_bias.exit
  call void @__sanitizer_cov_trace_pc() #12
  %hclk.i = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 13
  %26 = ptrtoint ptr %hclk.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hclk.i, align 8
  tail call void @clk_disable(ptr noundef %27) #10
  tail call void @clk_unprepare(ptr noundef %27) #10
  %pclk.i = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 12
  %28 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pclk.i, align 4
  tail call void @clk_disable(ptr noundef %29) #10
  tail call void @clk_unprepare(ptr noundef %29) #10
  %30 = ptrtoint ptr %clocked.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %clocked.i, align 1
  %pdev.i = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 6
  %31 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %32, i32 0, i32 3
  tail call void @pm_relax(ptr noundef %dev.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %toggle_bias.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @request_complete(ptr noundef %ep, ptr noundef %req, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %udc1 = getelementptr inbounds %struct.usba_ep, ptr %ep, i32 0, i32 6
  %0 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc1, align 4
  %queue = getelementptr inbounds %struct.usba_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %3, %queue
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !249

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 545, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %status23 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %4 = ptrtoint ptr %status23 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %5)
  %cmp = icmp eq i32 %5, -115
  br i1 %cmp, label %if.then24, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %status23 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %status, ptr %status23, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end.if.end27_crit_edge
  %using_dma = getelementptr inbounds %struct.usba_request, ptr %req, i32 0, i32 3
  %7 = ptrtoint ptr %using_dma to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %using_dma, align 4
  %8 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool28.not = icmp eq i8 %8, 0
  br i1 %tobool28.not, label %if.end27.do.end38_crit_edge, label %if.then29

if.end27.do.end38_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end38

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %gadget = getelementptr inbounds %struct.usba_udc, ptr %1, i32 0, i32 4
  %is_in = getelementptr inbounds %struct.usba_ep, ptr %ep, i32 0, i32 11
  %9 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load31 = load i8, ptr %is_in, align 4
  %bf.lshr32 = lshr i8 %bf.load31, 4
  %bf.clear33 = and i8 %bf.lshr32, 1
  %bf.cast34 = zext i8 %bf.clear33 to i32
  tail call void @usb_gadget_unmap_request(ptr noundef %gadget, ptr noundef %req, i32 noundef %bf.cast34) #10
  br label %do.end38

do.end38:                                         ; preds = %if.then29, %if.end27.do.end38_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %1) #10
  %ep39 = getelementptr inbounds %struct.usba_ep, ptr %ep, i32 0, i32 5
  tail call void @usb_gadget_giveback_request(ptr noundef %ep39, ptr noundef %req) #10
  tail call void @_raw_spin_lock(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_unmap_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_relax(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_ep_match_desc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91sam9rl_toggle_bias(ptr nocapture noundef readonly %udc, i32 noundef %is_on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pmc = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 24
  %0 = ptrtoint ptr %pmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool.not = icmp eq i32 %is_on, 0
  %cond = select i1 %tobool.not, i32 0, i32 16777216
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 28, i32 noundef 16777216, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91sam9g45_pulse_bias(ptr nocapture noundef readonly %udc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pmc = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 24
  %0 = ptrtoint ptr %pmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmc, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 28, i32 noundef 16777216, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %2 = ptrtoint ptr %pmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmc, align 4
  %call.i4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 28, i32 noundef 16777216, i32 noundef 16777216, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usba_ep_enable(ptr nocapture noundef %_ep, ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %udc1 = getelementptr i8, ptr %_ep, i32 44
  %0 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc1, align 4
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %2 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %wMaxPacketSize.i, align 1
  %4 = and i16 %3, -249
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #10
  %and.i = zext i16 %5 to i32
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 2
  %6 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bEndpointAddress, align 1
  %8 = and i8 %7, 15
  %index = getelementptr i8, ptr %_ep, i32 59
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %index, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %10)
  %cmp.not = icmp ne i8 %8, %10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp7 = icmp eq i8 %10, 0
  %or.cond = or i1 %cmp.not, %cmp7
  br i1 %or.cond, label %entry.do.body21_crit_edge, label %lor.lhs.false9

entry.do.body21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body21

lor.lhs.false9:                                   ; preds = %entry
  %bDescriptorType = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 1
  %11 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bDescriptorType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %12)
  %cmp11.not = icmp ne i8 %12, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp14 = icmp eq i16 %4, 0
  %or.cond215 = select i1 %cmp11.not, i1 true, i1 %cmp14
  br i1 %or.cond215, label %lor.lhs.false9.do.body21_crit_edge, label %lor.lhs.false16

lor.lhs.false9.do.body21_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body21

lor.lhs.false16:                                  ; preds = %lor.lhs.false9
  %fifo_size = getelementptr i8, ptr %_ep, i32 56
  %13 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %fifo_size, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %14)
  %cmp18 = icmp ugt i16 %5, %14
  br i1 %cmp18, label %lor.lhs.false16.do.body21_crit_edge, label %if.end31

lor.lhs.false16.do.body21_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body21

do.body21:                                        ; preds = %lor.lhs.false16.do.body21_crit_edge, %lor.lhs.false9.do.body21_crit_edge, %entry.do.body21_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usba_ep_enable.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@usba_ep_enable, %cleanup)) #10
          to label %if.then26 [label %cleanup], !srcloc !250

if.then26:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usba_ep_enable.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.37) #10
  br label %cleanup

if.end31:                                         ; preds = %lor.lhs.false16
  %is_isoc = getelementptr i8, ptr %_ep, i32 60
  %15 = ptrtoint ptr %is_isoc to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %is_isoc, align 4
  %bf.clear33 = and i8 %bf.load, -49
  store i8 %bf.clear33, ptr %is_isoc, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usba_ep_enable.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@usba_ep_enable, %do.end56)) #10
          to label %if.then50 [label %do.end56], !srcloc !250

if.then50:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr i8, ptr %_ep, i32 4
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 4
  %ept_cfg = getelementptr i8, ptr %_ep, i32 64
  %18 = ptrtoint ptr %ept_cfg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ept_cfg, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usba_ep_enable.__UNIQUE_ID_ddebug251, ptr noundef nonnull @.str.38, ptr noundef %17, i32 noundef %19, i32 noundef %and.i) #10
  br label %do.end56

do.end56:                                         ; preds = %if.then50, %if.end31
  %20 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bEndpointAddress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %tobool58.not = icmp sgt i8 %21, -1
  br i1 %tobool58.not, label %do.end56.if.end65_crit_edge, label %if.then59

do.end56.if.end65_crit_edge:                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then59:                                        ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %is_isoc to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load61 = load i8, ptr %is_isoc, align 4
  %bf.set63 = or i8 %bf.load61, 16
  store i8 %bf.set63, ptr %is_isoc, align 4
  %ept_cfg64 = getelementptr i8, ptr %_ep, i32 64
  %23 = ptrtoint ptr %ept_cfg64 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ept_cfg64, align 4
  %or = or i32 %24, 8
  store i32 %or, ptr %ept_cfg64, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then59, %do.end56.if.end65_crit_edge
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %25 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bmAttributes.i, align 1
  %27 = and i8 %26, 3
  %and.i222 = zext i8 %27 to i32
  %28 = zext i32 %and.i222 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %and.i222, label %if.end65.do.body119_crit_edge [
    i32 3, label %sw.bb115
    i32 1, label %sw.bb69
    i32 2, label %sw.bb112
  ]

if.end65.do.body119_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body119

sw.bb69:                                          ; preds = %if.end65
  %29 = ptrtoint ptr %is_isoc to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load70 = load i8, ptr %is_isoc, align 4
  %30 = and i8 %bf.load70, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool72.not = icmp eq i8 %30, 0
  br i1 %tobool72.not, label %do.body75, label %if.end97

do.body75:                                        ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usba_ep_enable.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@usba_ep_enable, %cleanup)) #10
          to label %if.then89 [label %cleanup], !srcloc !250

if.then89:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #12
  %name91 = getelementptr i8, ptr %_ep, i32 4
  %31 = ptrtoint ptr %name91 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name91, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usba_ep_enable.__UNIQUE_ID_ddebug252, ptr noundef nonnull @.str.39, ptr noundef %32) #10
  br label %cleanup

if.end97:                                         ; preds = %sw.bb69
  %33 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %wMaxPacketSize.i, align 1
  %35 = lshr i16 %34, 3
  %36 = and i16 %35, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %36)
  %cmp99 = icmp eq i16 %36, 3
  br i1 %cmp99, label %if.end97.cleanup_crit_edge, label %if.end102

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end102:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set106 = or i8 %bf.load70, 32
  %37 = ptrtoint ptr %is_isoc to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %bf.set106, ptr %is_isoc, align 4
  %ept_cfg107 = getelementptr i8, ptr %_ep, i32 64
  %38 = ptrtoint ptr %ept_cfg107 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ept_cfg107, align 4
  %narrow.i = shl nuw nsw i16 %36, 8
  %40 = add nuw nsw i16 %narrow.i, 256
  %41 = and i16 %40, 768
  %42 = or i16 %41, 16
  %or108 = zext i16 %42 to i32
  %or111 = or i32 %39, %or108
  store i32 %or111, ptr %ept_cfg107, align 4
  br label %do.body119

sw.bb112:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  %ept_cfg113 = getelementptr i8, ptr %_ep, i32 64
  %43 = ptrtoint ptr %ept_cfg113 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ept_cfg113, align 4
  %or114 = or i32 %44, 32
  store i32 %or114, ptr %ept_cfg113, align 4
  br label %do.body119

sw.bb115:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  %ept_cfg116 = getelementptr i8, ptr %_ep, i32 64
  %45 = ptrtoint ptr %ept_cfg116 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ept_cfg116, align 4
  %or117 = or i32 %46, 48
  store i32 %or117, ptr %ept_cfg116, align 4
  br label %do.body119

do.body119:                                       ; preds = %sw.bb115, %sw.bb112, %if.end102, %if.end65.do.body119_crit_edge
  %47 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %udc1, align 4
  %call125 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %48) #10
  %desc131 = getelementptr i8, ptr %_ep, i32 36
  %49 = ptrtoint ptr %desc131 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %desc, ptr %desc131, align 4
  %maxpacket133 = getelementptr i8, ptr %_ep, i32 26
  %50 = ptrtoint ptr %maxpacket133 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 7)
  %bf.load134 = load i56, ptr %maxpacket133, align 2
  %bf.value = zext i16 %5 to i56
  %bf.shl = shl nuw nsw i56 %bf.value, 40
  %bf.clear135 = and i56 %bf.load134, 1099511627775
  %bf.set136 = or i56 %bf.clear135, %bf.shl
  store i56 %bf.set136, ptr %maxpacket133, align 2
  %ept_cfg137 = getelementptr i8, ptr %_ep, i32 64
  %51 = ptrtoint ptr %ept_cfg137 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ept_cfg137, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %ep_regs = getelementptr i8, ptr %_ep, i32 -20
  %54 = ptrtoint ptr %ep_regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ep_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #10, !srcloc !242
  %56 = ptrtoint ptr %ep_regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ep_regs, align 4
  %add.ptr139 = getelementptr i8, ptr %57, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr139, i32 16777216) #10, !srcloc !242
  %58 = ptrtoint ptr %is_isoc to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load140 = load i8, ptr %is_isoc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load140)
  %tobool143.not = icmp sgt i8 %bf.load140, -1
  %59 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %index, align 1
  %conv159 = zext i8 %60 to i32
  br i1 %tobool143.not, label %if.else, label %if.then144

if.then144:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #12
  %shl147 = shl nuw i32 1, %conv159
  %and148 = shl i32 %shl147, 8
  %shl149 = and i32 %and148, 16776960
  %shl154 = shl i32 %shl147, 24
  %or155 = or i32 %shl149, %shl154
  %int_enb_cache.i = getelementptr inbounds %struct.usba_udc, ptr %1, i32 0, i32 22
  %61 = ptrtoint ptr %int_enb_cache.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %int_enb_cache.i, align 4
  %or.i = or i32 %or155, %62
  %63 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %regs.i = getelementptr inbounds %struct.usba_udc, ptr %1, i32 0, i32 2
  %64 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i, align 8
  %add.ptr.i224 = getelementptr i8, ptr %65, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i224, i32 %63) #10, !srcloc !242
  %66 = ptrtoint ptr %int_enb_cache.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or.i, ptr %int_enb_cache.i, align 4
  %67 = ptrtoint ptr %ep_regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ep_regs, align 4
  %add.ptr157 = getelementptr i8, ptr %68, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr157, i32 167772160) #10, !srcloc !242
  br label %if.end163

if.else:                                          ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #12
  %and161 = shl i32 256, %conv159
  %shl162 = and i32 %and161, 16776960
  %int_enb_cache.i225 = getelementptr inbounds %struct.usba_udc, ptr %1, i32 0, i32 22
  %69 = ptrtoint ptr %int_enb_cache.i225 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %int_enb_cache.i225, align 4
  %or.i226 = or i32 %shl162, %70
  %71 = tail call i32 @llvm.bswap.i32(i32 %or.i226) #10
  %regs.i227 = getelementptr inbounds %struct.usba_udc, ptr %1, i32 0, i32 2
  %72 = ptrtoint ptr %regs.i227 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i227, align 8
  %add.ptr.i228 = getelementptr i8, ptr %73, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i228, i32 %71) #10, !srcloc !242
  %74 = ptrtoint ptr %int_enb_cache.i225 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %or.i226, ptr %int_enb_cache.i225, align 4
  br label %if.end163

if.end163:                                        ; preds = %if.else, %if.then144
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call125) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end163, %if.end97.cleanup_crit_edge, %if.then89, %do.body75, %if.then26, %do.body21
  %retval.0 = phi i32 [ 0, %if.end163 ], [ -22, %if.then26 ], [ -22, %if.then89 ], [ -22, %if.end97.cleanup_crit_edge ], [ -22, %do.body21 ], [ -22, %do.body75 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usba_ep_disable(ptr noundef %_ep) #2 align 64 {
entry:
  %req_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %_ep, i32 -24
  %udc1 = getelementptr i8, ptr %_ep, i32 44
  %0 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req_list) #10
  %2 = getelementptr inbounds %struct.list_head, ptr %req_list, i32 0, i32 1
  %3 = ptrtoint ptr %req_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %req_list, ptr %req_list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %req_list, ptr %2, align 4
  %call5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %desc = getelementptr i8, ptr %_ep, i32 36
  %5 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.then, label %if.end26

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call5) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usba_ep_disable.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@usba_ep_disable, %cleanup)) #10
          to label %if.then20 [label %cleanup], !srcloc !250

if.then20:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr i8, ptr %_ep, i32 4
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usba_ep_disable.__UNIQUE_ID_ddebug256, ptr noundef nonnull @.str.41, ptr noundef %8) #10
  br label %cleanup

if.end26:                                         ; preds = %entry
  %9 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %desc, align 4
  %queue = getelementptr i8, ptr %_ep, i32 48
  %10 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not.i = icmp eq ptr %11, %queue
  br i1 %cmp.i.not.i, label %if.end26.list_splice_init.exit_crit_edge, label %if.then.i

if.end26.list_splice_init.exit_crit_edge:         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %req_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %req_list, align 4
  %prev2.i.i = getelementptr i8, ptr %_ep, i32 52
  %14 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %req_list, ptr %prev3.i.i, align 4
  store ptr %11, ptr %req_list, align 4
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %13, ptr %15, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev6.i.i, align 4
  %19 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %queue, ptr %queue, align 4
  store ptr %queue, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %if.end26.list_splice_init.exit_crit_edge
  %can_dma = getelementptr i8, ptr %_ep, i32 60
  %20 = ptrtoint ptr %can_dma to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %can_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool29.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool29.not, label %list_splice_init.exit.if.end37_crit_edge, label %if.then30

list_splice_init.exit.if.end37_crit_edge:         ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then30:                                        ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dma_regs = getelementptr i8, ptr %_ep, i32 -16
  %21 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_regs, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !242
  %23 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma_regs, align 4
  %add.ptr32 = getelementptr i8, ptr %24, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 0) #10, !srcloc !242
  %25 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dma_regs, align 4
  %add.ptr34 = getelementptr i8, ptr %26, i32 12
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #10, !srcloc !246
  br label %if.end37

if.end37:                                         ; preds = %if.then30, %list_splice_init.exit.if.end37_crit_edge
  %ep_regs = getelementptr i8, ptr %_ep, i32 -20
  %28 = ptrtoint ptr %ep_regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ep_regs, align 4
  %add.ptr38 = getelementptr i8, ptr %29, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 16777216) #10, !srcloc !242
  %index = getelementptr i8, ptr %_ep, i32 59
  %30 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %index, align 1
  %conv39 = zext i8 %31 to i32
  %and = shl i32 256, %conv39
  %shl40 = and i32 %and, 16776960
  %int_enb_cache.i = getelementptr inbounds %struct.usba_udc, ptr %1, i32 0, i32 22
  %32 = ptrtoint ptr %int_enb_cache.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %int_enb_cache.i, align 4
  %neg.i = xor i32 %shl40, -1
  %and.i = and i32 %33, %neg.i
  %34 = call i32 @llvm.bswap.i32(i32 %and.i) #10
  %regs.i = getelementptr inbounds %struct.usba_udc, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 8
  %add.ptr.i60 = getelementptr i8, ptr %36, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %34) #10, !srcloc !242
  %37 = ptrtoint ptr %int_enb_cache.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and.i, ptr %int_enb_cache.i, align 4
  %38 = ptrtoint ptr %req_list to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %req_list, align 4
  %cmp.not2.i = icmp eq ptr %39, %req_list
  br i1 %cmp.not2.i, label %if.end37.request_complete_list.exit_crit_edge, label %if.end37.for.body.i_crit_edge

if.end37.for.body.i_crit_edge:                    ; preds = %if.end37
  br label %for.body.i

if.end37.request_complete_list.exit_crit_edge:    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %request_complete_list.exit

for.body.i:                                       ; preds = %list_del_init.exit.i.for.body.i_crit_edge, %if.end37.for.body.i_crit_edge
  %.pn.in3.i = phi ptr [ %.pn.i, %list_del_init.exit.i.for.body.i_crit_edge ], [ %39, %if.end37.for.body.i_crit_edge ]
  %req.0.i = getelementptr i8, ptr %.pn.in3.i, i32 -56
  %40 = ptrtoint ptr %.pn.in3.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn.i = load ptr, ptr %.pn.in3.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in3.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del_init.exit.i_crit_edge

for.body.i.list_del_init.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in3.i, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i.i, align 4
  %43 = ptrtoint ptr %.pn.in3.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %.pn.in3.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_del_init.exit.i_crit_edge
  %47 = ptrtoint ptr %.pn.in3.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %.pn.in3.i, ptr %.pn.in3.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in3.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %.pn.in3.i, ptr %prev.i3.i.i, align 4
  call fastcc void @request_complete(ptr noundef %add.ptr.i, ptr noundef %req.0.i, i32 noundef -108) #10
  %cmp.not.i = icmp eq ptr %.pn.i, %req_list
  br i1 %cmp.not.i, label %list_del_init.exit.i.request_complete_list.exit_crit_edge, label %list_del_init.exit.i.for.body.i_crit_edge

list_del_init.exit.i.for.body.i_crit_edge:        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

list_del_init.exit.i.request_complete_list.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %request_complete_list.exit

request_complete_list.exit:                       ; preds = %list_del_init.exit.i.request_complete_list.exit_crit_edge, %if.end37.request_complete_list.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call5) #10
  br label %cleanup

cleanup:                                          ; preds = %request_complete_list.exit, %if.then20, %if.then
  %retval.0 = phi i32 [ 0, %request_complete_list.exit ], [ -22, %if.then20 ], [ -22, %if.then ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req_list) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @usba_ep_alloc_request(ptr nocapture noundef readnone %_ep, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i20.i.i, !prof !249

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end.i20.i.i:                                   ; preds = %entry
  %and2.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i20.i.i.kzalloc.exit_crit_edge

if.end.i20.i.i.kzalloc.exit_crit_edge:            ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and6.i.i.i = and i32 %gfp_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i20.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i21.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i20.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp_flags, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 72) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %queue = getelementptr inbounds %struct.usba_request, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %queue, ptr %queue, align 8
  %prev.i = getelementptr inbounds %struct.usba_request, ptr %call7.i.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %queue, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kzalloc.exit.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usba_ep_free_request(ptr nocapture noundef readnone %_ep, ptr noundef %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %_req) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usba_ep_queue(ptr noundef %_ep, ptr noundef %_req, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %_ep, i32 -24
  %udc2 = getelementptr i8, ptr %_ep, i32 44
  %0 = ptrtoint ptr %udc2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc2, align 4
  %driver = getelementptr inbounds %struct.usba_udc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %speed = getelementptr inbounds %struct.usba_udc, ptr %1, i32 0, i32 4, i32 5
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %desc = getelementptr i8, ptr %_ep, i32 36
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %submitted = getelementptr inbounds %struct.usba_request, ptr %_req, i32 0, i32 3
  %8 = ptrtoint ptr %submitted to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %submitted, align 4
  %bf.clear10 = and i8 %bf.load, 31
  store i8 %bf.clear10, ptr %submitted, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 11
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -115, ptr %status, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 12
  %10 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %actual, align 4
  %can_dma = getelementptr i8, ptr %_ep, i32 60
  %11 = ptrtoint ptr %can_dma to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load12 = load i8, ptr %can_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load12)
  %tobool13.not = icmp sgt i8 %bf.load12, -1
  br i1 %tobool13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call fastcc i32 @queue_dma(ptr noundef %1, ptr noundef %add.ptr.i, ptr noundef %_req)
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc, align 4
  %tobool28.not = icmp eq ptr %13, null
  br i1 %tobool28.not, label %if.end16.if.end55_crit_edge, label %if.then29

if.end16.if.end55_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then29:                                        ; preds = %if.end16
  %queue = getelementptr inbounds %struct.usba_request, ptr %_req, i32 0, i32 1
  %queue30 = getelementptr i8, ptr %_ep, i32 48
  %prev.i = getelementptr i8, ptr %_ep, i32 52
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %15, ptr noundef %queue30) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then29.list_add_tail.exit_crit_edge

if.then29.list_add_tail.exit_crit_edge:           ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %queue, ptr %prev.i, align 4
  %17 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %queue30, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.usba_request, ptr %_req, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %queue, ptr %15, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then29.list_add_tail.exit_crit_edge
  %index = getelementptr i8, ptr %_ep, i32 59
  %20 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %index, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp32 = icmp eq i8 %21, 0
  br i1 %cmp32, label %land.lhs.true44, label %land.lhs.true

land.lhs.true:                                    ; preds = %list_add_tail.exit
  %22 = ptrtoint ptr %can_dma to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load34 = load i8, ptr %can_dma, align 4
  %23 = and i8 %bf.load34, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool38.not = icmp eq i8 %23, 0
  br i1 %tobool38.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.then51_crit_edge

land.lhs.true.if.then51_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then51

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true44:                                  ; preds = %list_add_tail.exit
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %25, label %land.lhs.true44.if.else_crit_edge [
    i32 1, label %land.lhs.true44.if.then51_crit_edge
    i32 3, label %land.lhs.true44.if.then51_crit_edge83
  ]

land.lhs.true44.if.then51_crit_edge83:            ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then51

land.lhs.true44.if.then51_crit_edge:              ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then51

land.lhs.true44.if.else_crit_edge:                ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then51:                                        ; preds = %land.lhs.true44.if.then51_crit_edge, %land.lhs.true44.if.then51_crit_edge83, %land.lhs.true.if.then51_crit_edge
  %ep_regs = getelementptr i8, ptr %_ep, i32 -20
  %27 = ptrtoint ptr %ep_regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ep_regs, align 4
  %add.ptr = getelementptr i8, ptr %28, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 524288) #10, !srcloc !242
  br label %if.end55

if.else:                                          ; preds = %land.lhs.true44.if.else_crit_edge, %land.lhs.true.if.else_crit_edge
  %ep_regs52 = getelementptr i8, ptr %_ep, i32 -20
  %29 = ptrtoint ptr %ep_regs52 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ep_regs52, align 4
  %add.ptr53 = getelementptr i8, ptr %30, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 131072) #10, !srcloc !242
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then51, %if.end16.if.end55_crit_edge
  %ret.0 = phi i32 [ -108, %if.end16.if.end55_crit_edge ], [ 0, %if.else ], [ 0, %if.then51 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call21) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then14, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.then14 ], [ %ret.0, %if.end55 ], [ -108, %lor.lhs.false3.cleanup_crit_edge ], [ -108, %lor.lhs.false.cleanup_crit_edge ], [ -108, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usba_ep_dequeue(ptr noundef %_ep, ptr noundef readnone %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %udc1 = getelementptr i8, ptr %_ep, i32 44
  %0 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc1, align 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %queue = getelementptr i8, ptr %_ep, i32 48
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %queue, %entry ], [ %.pn, %for.cond.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %req.0 = getelementptr i8, ptr %.pn, i32 -56
  %cmp13.not = icmp eq ptr %.pn, %queue
  %cmp16 = icmp eq ptr %req.0, %_req
  %or.cond = or i1 %cmp13.not, %cmp16
  br i1 %or.cond, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %add.ptr.i = getelementptr i8, ptr %_ep, i32 -24
  br i1 %cmp16, label %if.end28, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %for.end
  %using_dma = getelementptr i8, ptr %.pn, i32 12
  %3 = ptrtoint ptr %using_dma to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %using_dma, align 4
  %4 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end28.if.end46_crit_edge, label %if.then29

if.end28.if.end46_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then29:                                        ; preds = %if.end28
  %5 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %queue, align 4
  %cmp33 = icmp eq ptr %6, %.pn
  br i1 %cmp33, label %if.then35, label %if.then29.if.end46_crit_edge

if.then29.if.end46_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then35:                                        ; preds = %if.then29
  %dma_regs = getelementptr i8, ptr %_ep, i32 -16
  %7 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_regs, align 4
  %add.ptr36 = getelementptr i8, ptr %8, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #10, !srcloc !246
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %if.then35.if.end42_crit_edge, label %if.then40

if.then35.if.end42_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then40:                                        ; preds = %if.then35
  %11 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_regs, align 4
  %add.ptr.i76 = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76, i32 0) #10, !srcloc !242
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then40
  %timeout.01.i = phi i32 [ 40, %if.then40 ], [ %dec.i, %if.end.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dma_regs, align 4
  %add.ptr2.i = getelementptr i8, ptr %14, i32 12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !246
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %for.body.i.if.end42_crit_edge, label %if.end.i

for.body.i.if.end42_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #10
  %dec.i = add nsw i32 %timeout.01.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %udc1, align 4
  %pdev.i = getelementptr inbounds %struct.usba_udc, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  %name.i = getelementptr i8, ptr %_ep, i32 4
  %22 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.44, ptr noundef %23) #13
  br label %if.end42

if.end42:                                         ; preds = %do.end.i, %for.body.i.if.end42_crit_edge, %if.then35.if.end42_crit_edge
  %status.0 = phi i32 [ %10, %if.then35.if.end42_crit_edge ], [ %16, %do.end.i ], [ %16, %for.body.i.if.end42_crit_edge ]
  %last_dma_status = getelementptr i8, ptr %_ep, i32 68
  %24 = ptrtoint ptr %last_dma_status to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %status.0, ptr %last_dma_status, align 4
  %index = getelementptr i8, ptr %_ep, i32 59
  %25 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %index, align 1
  %conv43 = zext i8 %26 to i32
  %shl = shl nuw i32 1, %conv43
  %27 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %regs = getelementptr inbounds %struct.usba_udc, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 8
  %add.ptr44 = getelementptr i8, ptr %29, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %27) #10, !srcloc !242
  %length.i = getelementptr i8, ptr %.pn, i32 -52
  %30 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %length.i, align 4
  %shr.i = lshr i32 %status.0, 16
  %sub.i = sub i32 %31, %shr.i
  %actual.i = getelementptr i8, ptr %.pn, i32 -4
  %32 = ptrtoint ptr %actual.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub.i, ptr %actual.i, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.end42, %if.then29.if.end46_crit_edge, %if.end28.if.end46_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end46.list_del_init.exit_crit_edge

if.end46.list_del_init.exit_crit_edge:            ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end46.list_del_init.exit_crit_edge
  %39 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %.pn, ptr %.pn, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %.pn, ptr %prev.i3.i, align 4
  tail call fastcc void @request_complete(ptr noundef %add.ptr.i, ptr noundef %_req, i32 noundef -104)
  %41 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not.i = icmp eq ptr %42, %queue
  br i1 %cmp.i.not.i, label %if.then.i, label %if.end.i79

if.then.i:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %ep_regs.i = getelementptr i8, ptr %_ep, i32 -20
  %43 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr.i77 = getelementptr i8, ptr %44, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77, i32 655360) #10, !srcloc !242
  br label %cleanup

if.end.i79:                                       ; preds = %list_del_init.exit
  %submitted.i = getelementptr i8, ptr %42, i32 12
  %45 = ptrtoint ptr %submitted.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load.i = load i8, ptr %submitted.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool3.not.i78 = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool3.not.i78, label %if.then4.i, label %if.end.i79.cleanup_crit_edge

if.end.i79.cleanup_crit_edge:                     ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4.i:                                       ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr2.i80 = getelementptr i8, ptr %42, i32 -56
  tail call fastcc void @submit_request(ptr noundef %add.ptr.i, ptr noundef %add.ptr2.i80) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then4.i, %if.end.i79.cleanup_crit_edge, %if.then.i, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %for.end.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %if.end.i79.cleanup_crit_edge ], [ 0, %if.then4.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call5) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usba_ep_set_halt(ptr noundef %_ep, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %udc1 = getelementptr i8, ptr %_ep, i32 44
  %0 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc1, align 4
  %desc = getelementptr i8, ptr %_ep, i32 36
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body4, label %if.end16

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usba_ep_set_halt.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@usba_ep_set_halt, %cleanup)) #10
          to label %if.then10 [label %cleanup], !srcloc !250

if.then10:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr i8, ptr %_ep, i32 4
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usba_ep_set_halt.__UNIQUE_ID_ddebug264, ptr noundef nonnull @.str.47, ptr noundef %5) #10
  br label %cleanup

if.end16:                                         ; preds = %entry
  %is_isoc = getelementptr i8, ptr %_ep, i32 60
  %6 = ptrtoint ptr %is_isoc to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %is_isoc, align 4
  %7 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool17.not = icmp eq i8 %7, 0
  br i1 %tobool17.not, label %do.body44, label %do.body20

do.body20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usba_ep_set_halt.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@usba_ep_set_halt, %cleanup)) #10
          to label %if.then34 [label %cleanup], !srcloc !250

if.then34:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  %name36 = getelementptr i8, ptr %_ep, i32 4
  %8 = ptrtoint ptr %name36 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name36, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usba_ep_set_halt.__UNIQUE_ID_ddebug265, ptr noundef nonnull @.str.48, ptr noundef %9) #10
  br label %cleanup

do.body44:                                        ; preds = %if.end16
  %call47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %queue = getelementptr i8, ptr %_ep, i32 48
  %10 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %11, %queue
  br i1 %cmp.i.not, label %lor.lhs.false, label %do.body44.if.end78_crit_edge

do.body44.if.end78_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

lor.lhs.false:                                    ; preds = %do.body44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool54.not = icmp eq i32 %value, 0
  br i1 %tobool54.not, label %if.else69, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %is_isoc to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load55 = load i8, ptr %is_isoc, align 4
  %13 = and i8 %bf.load55, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool59.not = icmp eq i8 %13, 0
  br i1 %tobool59.not, label %land.lhs.true.if.then66_crit_edge, label %land.lhs.true60

land.lhs.true.if.then66_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66

land.lhs.true60:                                  ; preds = %land.lhs.true
  %ep_regs = getelementptr i8, ptr %_ep, i32 -20
  %14 = ptrtoint ptr %ep_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ep_regs, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 28
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !246
  %17 = and i32 %16, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool63.not = icmp eq i32 %17, 0
  br i1 %tobool63.not, label %land.lhs.true60.if.then66_crit_edge, label %land.lhs.true60.if.end78_crit_edge

land.lhs.true60.if.end78_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

land.lhs.true60.if.then66_crit_edge:              ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66

if.then66:                                        ; preds = %land.lhs.true60.if.then66_crit_edge, %land.lhs.true.if.then66_crit_edge
  %ep_regs67 = getelementptr i8, ptr %_ep, i32 -20
  %18 = ptrtoint ptr %ep_regs67 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ep_regs67, align 4
  %add.ptr68 = getelementptr i8, ptr %19, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 536870912) #10, !srcloc !242
  br label %if.end72

if.else69:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %ep_regs70 = getelementptr i8, ptr %_ep, i32 -20
  %20 = ptrtoint ptr %ep_regs70 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ep_regs70, align 4
  %add.ptr71 = getelementptr i8, ptr %21, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 1610612736) #10, !srcloc !242
  br label %if.end72

if.end72:                                         ; preds = %if.else69, %if.then66
  %ep_regs74 = getelementptr i8, ptr %_ep, i32 -20
  %22 = ptrtoint ptr %ep_regs74 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ep_regs74, align 4
  %add.ptr75 = getelementptr i8, ptr %23, i32 28
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr75) #10, !srcloc !246
  br label %if.end78

if.end78:                                         ; preds = %if.end72, %land.lhs.true60.if.end78_crit_edge, %do.body44.if.end78_crit_edge
  %ret.0 = phi i32 [ 0, %if.end72 ], [ -11, %land.lhs.true60.if.end78_crit_edge ], [ -11, %do.body44.if.end78_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call47) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %if.then34, %do.body20, %if.then10, %do.body4
  %retval.0 = phi i32 [ %ret.0, %if.end78 ], [ -19, %if.then10 ], [ -25, %if.then34 ], [ -19, %do.body4 ], [ -25, %do.body20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usba_ep_fifo_status(ptr nocapture noundef readonly %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ep_regs = getelementptr i8, ptr %_ep, i32 -20
  %0 = ptrtoint ptr %ep_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !246
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shr = lshr i32 %3, 20
  %and = and i32 %shr, 2047
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usba_ep_fifo_flush(ptr nocapture noundef readonly %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %udc1 = getelementptr i8, ptr %_ep, i32 44
  %0 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc1, align 4
  %index = getelementptr i8, ptr %_ep, i32 59
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %regs = getelementptr inbounds %struct.usba_udc, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #10, !srcloc !242
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @queue_dma(ptr noundef %udc, ptr noundef %ep, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %1)
  %cmp = icmp ugt i32 %1, 65536
  br i1 %cmp, label %do.body3, label %if.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @queue_dma.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@queue_dma, %cleanup)) #10
          to label %if.then7 [label %cleanup], !srcloc !250

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @queue_dma.__UNIQUE_ID_ddebug260, ptr noundef nonnull @.str.43, i32 noundef %3) #10
  br label %cleanup

if.end14:                                         ; preds = %entry
  %gadget = getelementptr inbounds %struct.usba_udc, ptr %udc, i32 0, i32 4
  %is_in = getelementptr inbounds %struct.usba_ep, ptr %ep, i32 0, i32 11
  %4 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %is_in, align 4
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %call16 = tail call i32 @usb_gadget_map_request(ptr noundef %gadget, ptr noundef %req, i32 noundef %bf.cast) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %using_dma = getelementptr inbounds %struct.usba_request, ptr %req, i32 0, i32 3
  %5 = ptrtoint ptr %using_dma to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load20 = load i8, ptr %using_dma, align 4
  %bf.set = or i8 %bf.load20, 32
  store i8 %bf.set, ptr %using_dma, align 4
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  %shl = shl i32 %7, 16
  %or25 = or i32 %shl, 41
  %ctrl = getelementptr inbounds %struct.usba_request, ptr %req, i32 0, i32 2
  %8 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or25, ptr %ctrl, align 4
  %9 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load27 = load i8, ptr %is_in, align 4
  %10 = and i8 %bf.load27, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool31.not = icmp eq i8 %10, 0
  br i1 %tobool31.not, label %if.then32, label %if.end19.if.end35_crit_edge

if.end19.if.end35_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then32:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %or34 = or i32 %shl, 61
  %11 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or34, ptr %ctrl, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end19.if.end35_crit_edge
  %call41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %udc) #10
  %desc = getelementptr inbounds %struct.usba_ep, ptr %ep, i32 0, i32 5, i32 9
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc, align 4
  %tobool47.not = icmp eq ptr %13, null
  br i1 %tobool47.not, label %if.end35.if.end55_crit_edge, label %if.then48

if.end35.if.end55_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then48:                                        ; preds = %if.end35
  %queue = getelementptr inbounds %struct.usba_ep, ptr %ep, i32 0, i32 7
  %14 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %15, %queue
  br i1 %cmp.i.not, label %if.then51, label %if.then48.if.end52_crit_edge

if.then48.if.end52_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then51:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @submit_request(ptr noundef %ep, ptr noundef %req)
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.then48.if.end52_crit_edge
  %queue53 = getelementptr inbounds %struct.usba_request, ptr %req, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.usba_ep, ptr %ep, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue53, ptr noundef %17, ptr noundef %queue) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end52.if.end55_crit_edge

if.end52.if.end55_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.end.i.i:                                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %queue53, ptr %prev.i, align 4
  %19 = ptrtoint ptr %queue53 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %queue, ptr %queue53, align 4
  %prev3.i.i = getelementptr inbounds %struct.usba_request, ptr %req, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %queue53, ptr %17, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.end.i.i, %if.end52.if.end55_crit_edge, %if.end35.if.end55_crit_edge
  %ret.0 = phi i32 [ -108, %if.end35.if.end55_crit_edge ], [ 0, %if.end52.if.end55_crit_edge ], [ 0, %if.end.i.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %udc, i32 noundef %call41) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.end14.cleanup_crit_edge, %if.then7, %do.body3
  %retval.0 = phi i32 [ %ret.0, %if.end55 ], [ -22, %if.then7 ], [ %call16, %if.end14.cleanup_crit_edge ], [ -22, %do.body3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_map_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @submit_request(ptr nocapture noundef readonly %ep, ptr nocapture noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %0 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %actual, align 4
  %submitted = getelementptr inbounds %struct.usba_request, ptr %req, i32 0, i32 3
  %1 = ptrtoint ptr %submitted to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %submitted, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %submitted, align 4
  %2 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %length.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %3 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %length.i, align 4
  br i1 %tobool.not, label %if.else21, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %ep_regs = getelementptr inbounds %struct.usba_ep, ptr %ep, i32 0, i32 1
  %5 = ptrtoint ptr %ep_regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ep_regs, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 524288) #10, !srcloc !242
  br label %if.end48

if.end:                                           ; preds = %if.then
  %zero = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %7 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load7 = load i32, ptr %zero, align 4
  %8 = and i32 %bf.load7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  %ep_regs14 = getelementptr inbounds %struct.usba_ep, ptr %ep, i32 0, i32 1
  %9 = ptrtoint ptr %ep_regs14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ep_regs14, align 4
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr13 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 128) #10, !srcloc !242
  br label %if.end16

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr15 = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 128) #10, !srcloc !242
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then11
  %dma = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 2
  %11 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %dma_regs = getelementptr inbounds %struct.usba_ep, ptr %ep, i32 0, i32 2
  %14 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_regs, align 4
  %add.ptr18 = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %13) #10, !srcloc !242
  %ctrl = getelementptr inbounds %struct.usba_request, ptr %req, i32 0, i32 2
  %16 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ctrl, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma_regs, align 4
  %add.ptr20 = getelementptr i8, ptr %20, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %18) #10, !srcloc !242
  br label %if.end48

if.else21:                                        ; preds = %entry
  %bf.clear.i = and i8 %bf.set, -65
  %bf.set.i = or i8 %bf.load, -64
  %21 = ptrtoint ptr %submitted to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %bf.set.i, ptr %submitted, align 4
  %maxpacket.i = getelementptr inbounds %struct.usba_ep, ptr %ep, i32 0, i32 5, i32 7
  %22 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 7)
  %bf.load4.i = load i56, ptr %maxpacket.i, align 2
  %bf.lshr.i = lshr i56 %bf.load4.i, 40
  %bf.cast.i = trunc i56 %bf.lshr.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %bf.cast.i)
  %cmp.i = icmp ugt i32 %4, %bf.cast.i
  br i1 %cmp.i, label %if.else21.do.end.sink.split.i_crit_edge, label %if.else.i

if.else21.do.end.sink.split.i_crit_edge:          ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.sink.split.i

if.else.i:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %bf.cast.i)
  %cmp19.i = icmp eq i32 %4, %bf.cast.i
  br i1 %cmp19.i, label %land.lhs.true.i, label %if.else.i.next_fifo_transaction.exit_crit_edge

if.else.i.next_fifo_transaction.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %next_fifo_transaction.exit

land.lhs.true.i:                                  ; preds = %if.else.i
  %zero.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %23 = ptrtoint ptr %zero.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load21.i = load i32, ptr %zero.i, align 4
  %24 = and i32 %bf.load21.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.next_fifo_transaction.exit_crit_edge, label %land.lhs.true.i.do.end.sink.split.i_crit_edge

land.lhs.true.i.do.end.sink.split.i_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.sink.split.i

land.lhs.true.i.next_fifo_transaction.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %next_fifo_transaction.exit

do.end.sink.split.i:                              ; preds = %land.lhs.true.i.do.end.sink.split.i_crit_edge, %if.else21.do.end.sink.split.i_crit_edge
  %transaction_len.0.ph.i = phi i32 [ %bf.cast.i, %if.else21.do.end.sink.split.i_crit_edge ], [ %4, %land.lhs.true.i.do.end.sink.split.i_crit_edge ]
  %25 = ptrtoint ptr %submitted to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %bf.clear.i, ptr %submitted, align 4
  br label %next_fifo_transaction.exit

next_fifo_transaction.exit:                       ; preds = %do.end.sink.split.i, %land.lhs.true.i.next_fifo_transaction.exit_crit_edge, %if.else.i.next_fifo_transaction.exit_crit_edge
  %transaction_len.0.i = phi i32 [ %4, %land.lhs.true.i.next_fifo_transaction.exit_crit_edge ], [ %4, %if.else.i.next_fifo_transaction.exit_crit_edge ], [ %transaction_len.0.ph.i, %do.end.sink.split.i ]
  %fifo.i = getelementptr inbounds %struct.usba_ep, ptr %ep, i32 0, i32 3
  %26 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fifo.i, align 4
  %28 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %req, align 4
  tail call void @mmiocpy(ptr noundef %27, ptr noundef %29, i32 noundef %transaction_len.0.i) #10
  %ep_regs.i = getelementptr inbounds %struct.usba_ep, ptr %ep, i32 0, i32 1
  %30 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr33.i = getelementptr i8, ptr %31, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 524288) #10, !srcloc !242
  %32 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %actual, align 4
  %add.i = add i32 %33, %transaction_len.0.i
  store i32 %add.i, ptr %actual, align 4
  %34 = ptrtoint ptr %submitted to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load22 = load i8, ptr %submitted, align 4
  %35 = and i8 %bf.load22, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool26.not = icmp eq i8 %35, 0
  br i1 %tobool26.not, label %if.else36, label %if.then27

if.then27:                                        ; preds = %next_fifo_transaction.exit
  %36 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr29 = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 524288) #10, !srcloc !242
  %index = getelementptr inbounds %struct.usba_ep, ptr %ep, i32 0, i32 10
  %38 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %index, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp30 = icmp eq i8 %39, 0
  br i1 %cmp30, label %if.then32, label %if.then27.if.end48_crit_edge

if.then27.if.end48_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then32:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr34 = getelementptr i8, ptr %41, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 262144) #10, !srcloc !242
  br label %if.end48

if.else36:                                        ; preds = %next_fifo_transaction.exit
  %index37 = getelementptr inbounds %struct.usba_ep, ptr %ep, i32 0, i32 10
  %42 = ptrtoint ptr %index37 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %index37, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp39 = icmp eq i8 %43, 0
  br i1 %cmp39, label %if.then41, label %if.else36.if.end44_crit_edge

if.else36.if.end44_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then41:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr43 = getelementptr i8, ptr %45, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 262144) #10, !srcloc !242
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.else36.if.end44_crit_edge
  %46 = ptrtoint ptr %ep_regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ep_regs.i, align 4
  %add.ptr46 = getelementptr i8, ptr %47, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 524288) #10, !srcloc !242
  br label %if.end48

if.end48:                                         ; preds = %if.end44, %if.then32, %if.then27.if.end48_crit_edge, %if.end16, %if.then5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_udc_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @receive_data(ptr noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %udc1 = getelementptr inbounds %struct.usba_ep, ptr %ep, i32 0, i32 6
  %0 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc1, align 4
  %ep_regs = getelementptr inbounds %struct.usba_ep, ptr %ep, i32 0, i32 1
  %2 = ptrtoint ptr %ep_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep_regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 28
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !246
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = and i32 %5, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not86 = icmp eq i32 %6, 0
  br i1 %cmp.not86, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %queue = getelementptr inbounds %struct.usba_ep, ptr %ep, i32 0, i32 7
  %fifo = getelementptr inbounds %struct.usba_ep, ptr %ep, i32 0, i32 3
  %ep42 = getelementptr inbounds %struct.usba_ep, ptr %ep, i32 0, i32 5
  %index = getelementptr inbounds %struct.usba_ep, ptr %ep, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %if.end57.while.body_crit_edge, %while.body.lr.ph
  %status.088 = phi i32 [ %5, %while.body.lr.ph ], [ %38, %if.end57.while.body_crit_edge ]
  %is_complete.087 = phi i32 [ 0, %while.body.lr.ph ], [ %is_complete.2, %if.end57.while.body_crit_edge ]
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %8, %queue
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %ep_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ep_regs, align 4
  %add.ptr4 = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 131072) #10, !srcloc !242
  br label %while.end

if.end:                                           ; preds = %while.body
  %add.ptr7 = getelementptr i8, ptr %8, i32 -56
  %shr8 = lshr i32 %status.088, 20
  %and9 = and i32 %shr8, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %status.088)
  %tobool11.not = icmp sgt i32 %status.088, -1
  %actual = getelementptr i8, ptr %8, i32 -4
  %11 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %actual, align 4
  %add = add i32 %12, %and9
  %length = getelementptr i8, ptr %8, i32 -52
  %13 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %14)
  %cmp16.not = icmp ult i32 %add, %14
  %sub = sub i32 %14, %12
  %15 = select i1 %cmp16.not, i1 %tobool11.not, i1 false
  %is_complete.2 = select i1 %15, i32 %is_complete.087, i32 1
  %bytecount.0 = select i1 %cmp16.not, i32 %and9, i32 %sub
  %16 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr7, align 4
  %add.ptr26 = getelementptr i8, ptr %17, i32 %12
  %18 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fifo, align 4
  tail call void @mmiocpy(ptr noundef %add.ptr26, ptr noundef %19, i32 noundef %bytecount.0) #10
  %20 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %actual, align 4
  %add29 = add i32 %21, %bytecount.0
  store i32 %add29, ptr %actual, align 4
  %22 = ptrtoint ptr %ep_regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ep_regs, align 4
  %add.ptr31 = getelementptr i8, ptr %23, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 131072) #10, !srcloc !242
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_complete.2)
  %tobool32.not = icmp eq i32 %is_complete.2, 0
  br i1 %tobool32.not, label %if.end.if.end45_crit_edge, label %do.end36

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

do.end36:                                         ; preds = %if.end
  %status38 = getelementptr i8, ptr %8, i32 -8
  %24 = ptrtoint ptr %status38 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %status38, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.end36.list_del_init.exit_crit_edge

do.end36.list_del_init.exit_crit_edge:            ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %8, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end36.list_del_init.exit_crit_edge
  %31 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %8, ptr %8, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %8, ptr %prev.i3.i, align 4
  %33 = ptrtoint ptr %ep_regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ep_regs, align 4
  %add.ptr41 = getelementptr i8, ptr %34, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 131072) #10, !srcloc !242
  tail call void @_raw_spin_unlock(ptr noundef %1) #10
  tail call void @usb_gadget_giveback_request(ptr noundef %ep42, ptr noundef %add.ptr7) #10
  tail call void @_raw_spin_lock(ptr noundef %1) #10
  br label %if.end45

if.end45:                                         ; preds = %list_del_init.exit, %if.end.if.end45_crit_edge
  %35 = ptrtoint ptr %ep_regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ep_regs, align 4
  %add.ptr48 = getelementptr i8, ptr %36, i32 28
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #10, !srcloc !246
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  br i1 %tobool32.not, label %if.end45.if.end57_crit_edge, label %land.lhs.true

if.end45.if.end57_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

land.lhs.true:                                    ; preds = %if.end45
  %39 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %index, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp54 = icmp eq i8 %40, 0
  br i1 %cmp54, label %if.then56, label %land.lhs.true.if.end57_crit_edge

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then56:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %ep to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 3, ptr %ep, align 4
  %42 = ptrtoint ptr %ep_regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ep_regs, align 4
  %add.ptr.i = getelementptr i8, ptr %43, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 524288) #10, !srcloc !242
  %44 = ptrtoint ptr %ep_regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ep_regs, align 4
  %add.ptr2.i = getelementptr i8, ptr %45, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 262144) #10, !srcloc !242
  br label %while.end

if.end57:                                         ; preds = %land.lhs.true.if.end57_crit_edge, %if.end45.if.end57_crit_edge
  %46 = and i32 %38, 786432
  %cmp.not = icmp eq i32 %46, 0
  br i1 %cmp.not, label %if.end57.while.end_crit_edge, label %if.end57.while.body_crit_edge

if.end57.while.body_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end57.while.end_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end57.while.end_crit_edge, %if.then56, %if.then, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_file_size(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regs_dbg_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %nbytes, ptr noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #10
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_size, align 8
  %conv = trunc i64 %7 to i32
  %call2 = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %nbytes, ptr noundef %ppos, ptr noundef %3, i32 noundef %conv) #10
  tail call void @up_write(ptr noundef %i_rwsem.i) #10
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regs_dbg_open(ptr noundef %inode, ptr nocapture noundef writeonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #10
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %2 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_size, align 8
  %conv = trunc i64 %3 to i32
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv, i32 noundef 3264) #15
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %4 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %5)
  %cmp22 = icmp sgt i64 %5, 3
  br i1 %cmp22, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %regs = getelementptr inbounds %struct.usba_udc, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %mul = shl i32 %i.023, 2
  %add.ptr = getelementptr i8, ptr %7, i32 %mul
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !246
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %arrayidx = getelementptr i32, ptr %call9.i, i32 %i.023
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx, align 4
  %inc = add i32 %i.023, 1
  %conv1 = zext i32 %inc to i64
  %11 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %i_size, align 8
  %div = sdiv i64 %12, 4
  %cmp = icmp sgt i64 %div, %conv1
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %13 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i, ptr %private_data, align 4
  br label %out

out:                                              ; preds = %for.end, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %for.end ], [ -12, %entry.out_crit_edge ]
  tail call void @up_write(ptr noundef %i_rwsem.i) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regs_dbg_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @kfree(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_dbg_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %nbytes, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %tmpbuf = alloca [38 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %tmpbuf) #10
  %2 = call ptr @memset(ptr %tmpbuf, i32 255, i32 38)
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %nbytes, i32 -1226833920) #16, !srcloc !251
  %asmresult = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp = icmp eq i32 %asmresult, 0
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #10
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %cmp9.not105 = icmp eq ptr %7, %1
  br i1 %cmp9.not105, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %__copy_to_user.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %buf.addr.0110 = phi ptr [ %add.ptr57, %__copy_to_user.exit.for.body_crit_edge ], [ %buf, %if.end.for.body_crit_edge ]
  %nbytes.addr.0109 = phi i32 [ %sub56, %__copy_to_user.exit.for.body_crit_edge ], [ %nbytes, %if.end.for.body_crit_edge ]
  %.pn.in107 = phi ptr [ %.pn113, %__copy_to_user.exit.for.body_crit_edge ], [ %7, %if.end.for.body_crit_edge ]
  %actual.0106 = phi i32 [ %add, %__copy_to_user.exit.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %req.0112 = getelementptr i8, ptr %.pn.in107, i32 -56
  %8 = ptrtoint ptr %.pn.in107 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn113 = load ptr, ptr %.pn.in107, align 4
  %9 = ptrtoint ptr %req.0112 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %req.0112, align 4
  %length = getelementptr i8, ptr %.pn.in107, i32 -52
  %11 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length, align 4
  %no_interrupt = getelementptr i8, ptr %.pn.in107, i32 -32
  %13 = ptrtoint ptr %no_interrupt to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load = load i32, ptr %no_interrupt, align 4
  %14 = and i32 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  %cond = select i1 %tobool.not, i32 73, i32 105
  %15 = and i32 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool18.not = icmp eq i32 %15, 0
  %cond19 = select i1 %tobool18.not, i32 122, i32 90
  %16 = and i32 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool24.not = icmp eq i32 %16, 0
  %cond25 = select i1 %tobool24.not, i32 83, i32 115
  %status = getelementptr i8, ptr %.pn.in107, i32 -8
  %17 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status, align 4
  %submitted = getelementptr i8, ptr %.pn.in107, i32 12
  %19 = ptrtoint ptr %submitted to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load27 = load i8, ptr %submitted, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load27)
  %tobool29.not = icmp sgt i8 %bf.load27, -1
  %cond30 = select i1 %tobool29.not, i32 102, i32 70
  %20 = and i8 %bf.load27, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool35.not = icmp eq i8 %20, 0
  %cond36 = select i1 %tobool35.not, i32 100, i32 68
  %21 = and i8 %bf.load27, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool41.not = icmp eq i8 %21, 0
  %cond42 = select i1 %tobool41.not, i32 108, i32 76
  %call43 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmpbuf, i32 noundef 38, ptr noundef nonnull @.str.95, ptr noundef %10, i32 noundef %12, i32 noundef %cond, i32 noundef %cond19, i32 noundef %cond25, i32 noundef %18, i32 noundef %cond30, i32 noundef %cond36, i32 noundef %cond42)
  %22 = call i32 @llvm.umin.i32(i32 %call43, i32 38)
  call void @__sanitizer_cov_trace_cmp4(i32 %nbytes.addr.0109, i32 %22)
  %cmp47 = icmp ult i32 %nbytes.addr.0109, %22
  br i1 %cmp47, label %for.body.for.end_crit_edge, label %if.end49

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end49:                                         ; preds = %for.body
  %call.i.i100 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in107) #10
  br i1 %call.i.i100, label %if.end.i.i, label %if.end49.list_del.exit_crit_edge

if.end49.list_del.exit_crit_edge:                 ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in107, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %.pn.in107 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %.pn.in107, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end49.list_del.exit_crit_edge
  %29 = ptrtoint ptr %.pn.in107 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in107, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in107, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %req.0112) #10
  call void @__might_fault(ptr noundef nonnull @.str.96, i32 noundef 143) #10
  %call.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i, label %list_del.exit.__copy_to_user.exit_crit_edge, label %if.end.i

list_del.exit.__copy_to_user.exit_crit_edge:      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %__copy_to_user.exit

if.end.i:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %tmpbuf, i32 noundef %22) #10
  call void @__check_object_size(ptr noundef nonnull %tmpbuf, i32 noundef %22, i1 noundef zeroext true) #10
  %call.i8.i = call i32 @arm_copy_to_user(ptr noundef %buf.addr.0110, ptr noundef nonnull %tmpbuf, i32 noundef %22) #10
  br label %__copy_to_user.exit

__copy_to_user.exit:                              ; preds = %if.end.i, %list_del.exit.__copy_to_user.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i8.i, %if.end.i ], [ %22, %list_del.exit.__copy_to_user.exit_crit_edge ]
  %sub = sub i32 %22, %retval.0.i
  %add = add i32 %sub, %actual.0106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool53.not = icmp ne i32 %retval.0.i, 0
  %sub56 = sub i32 %nbytes.addr.0109, %22
  %add.ptr57 = getelementptr i8, ptr %buf.addr.0110, i32 %22
  %cmp9.not = icmp eq ptr %.pn113, %1
  %or.cond = select i1 %tobool53.not, i1 true, i1 %cmp9.not
  br i1 %or.cond, label %__copy_to_user.exit.for.end_crit_edge, label %__copy_to_user.exit.for.body_crit_edge

__copy_to_user.exit.for.body_crit_edge:           ; preds = %__copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

__copy_to_user.exit.for.end_crit_edge:            ; preds = %__copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %__copy_to_user.exit.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %actual.1 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %add, %__copy_to_user.exit.for.end_crit_edge ], [ %actual.0106, %for.body.for.end_crit_edge ]
  %31 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %f_inode.i, align 8
  %i_rwsem.i102 = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i102) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %actual.1, %for.end ], [ -14, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %tmpbuf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_dbg_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 8) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i, ptr %prev.i, align 4
  %udc = getelementptr inbounds %struct.usba_ep, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udc, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %6) #10
  %queue = getelementptr inbounds %struct.usba_ep, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn67 = load ptr, ptr %queue, align 4
  %cmp.not68 = icmp eq ptr %.pn67, %queue
  br i1 %cmp.not68, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn69 = phi ptr [ %.pn, %list_add_tail.exit.for.body_crit_edge ], [ %.pn67, %if.end.for.body_crit_edge ]
  %req.0 = getelementptr i8, ptr %.pn69, i32 -56
  %call3 = tail call ptr @kmemdup(ptr noundef %req.0, i32 noundef 72, i32 noundef 2592) #10
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %fail, label %if.end6

if.end6:                                          ; preds = %for.body
  %queue7 = getelementptr inbounds %struct.usba_request, ptr %call3, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue7, ptr noundef %9, ptr noundef nonnull %call7.i) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end6.list_add_tail.exit_crit_edge

if.end6.list_add_tail.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %queue7, ptr %prev.i, align 4
  %11 = ptrtoint ptr %queue7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i, ptr %queue7, align 4
  %prev3.i.i = getelementptr inbounds %struct.usba_request, ptr %call3, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %queue7, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end6.list_add_tail.exit_crit_edge
  %14 = ptrtoint ptr %.pn69 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn69, align 4
  %cmp.not = icmp eq ptr %.pn, %queue
  br i1 %cmp.not, label %list_add_tail.exit.for.end_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %15 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %udc, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %16) #10
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %17 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i, ptr %private_data, align 4
  br label %cleanup

fail:                                             ; preds = %for.body
  %18 = ptrtoint ptr %udc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %udc, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %19) #10
  %20 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call7.i, align 8
  %cmp28.not70 = icmp eq ptr %21, %call7.i
  br i1 %cmp28.not70, label %fail.for.end38_crit_edge, label %fail.for.body30_crit_edge

fail.for.body30_crit_edge:                        ; preds = %fail
  br label %for.body30

fail.for.end38_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end38

for.body30:                                       ; preds = %list_del.exit.for.body30_crit_edge, %fail.for.body30_crit_edge
  %.pn61.in71 = phi ptr [ %.pn61, %list_del.exit.for.body30_crit_edge ], [ %21, %fail.for.body30_crit_edge ]
  %req.1 = getelementptr i8, ptr %.pn61.in71, i32 -56
  %22 = ptrtoint ptr %.pn61.in71 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn61 = load ptr, ptr %.pn61.in71, align 4
  %call.i.i64 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn61.in71) #10
  br i1 %call.i.i64, label %if.end.i.i65, label %for.body30.list_del.exit_crit_edge

for.body30.list_del.exit_crit_edge:               ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i65:                                     ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn61.in71, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %.pn61.in71 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %.pn61.in71, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i65, %for.body30.list_del.exit_crit_edge
  %29 = ptrtoint ptr %.pn61.in71 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn61.in71, align 4
  %prev.i66 = getelementptr inbounds %struct.list_head, ptr %.pn61.in71, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i66 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i66, align 4
  tail call void @kfree(ptr noundef %req.1) #10
  %cmp28.not = icmp eq ptr %.pn61, %call7.i
  br i1 %cmp28.not, label %list_del.exit.for.end38_crit_edge, label %list_del.exit.for.body30_crit_edge

list_del.exit.for.body30_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body30

list_del.exit.for.end38_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end38

for.end38:                                        ; preds = %list_del.exit.for.end38_crit_edge, %fail.for.end38_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end38, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %for.end38 ], [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_dbg_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp.not19 = icmp eq ptr %3, %1
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in20 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %req.0 = getelementptr i8, ptr %.pn.in20, i32 -56
  %4 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in20, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in20, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in20, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %req.0) #10
  %cmp.not = icmp eq ptr %.pn, %1
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usba_udc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext false) #10
  %gadget = getelementptr inbounds %struct.usba_udc, ptr %1, i32 0, i32 4
  tail call void @usb_del_gadget_udc(ptr noundef %gadget) #10
  %num_ep = getelementptr inbounds %struct.usba_udc, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num_ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp8 = icmp sgt i32 %3, 1
  br i1 %cmp8, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %usba_ep = getelementptr inbounds %struct.usba_udc, ptr %1, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %usba_ep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usba_ep, align 4
  %debugfs_dir.i = getelementptr %struct.usba_ep, ptr %5, i32 %i.09, i32 14
  %6 = ptrtoint ptr %debugfs_dir.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debugfs_dir.i, align 4
  tail call void @debugfs_remove(ptr noundef %7) #10
  %inc = add nuw nsw i32 %i.09, 1
  %8 = ptrtoint ptr %num_ep to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_ep, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %ep0.i = getelementptr inbounds %struct.usba_udc, ptr %1, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %ep0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ep0.i, align 4
  %debugfs_dir.i.i = getelementptr i8, ptr %11, i32 72
  %12 = ptrtoint ptr %debugfs_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %debugfs_dir.i.i, align 4
  tail call void @debugfs_remove(ptr noundef %13) #10
  %debugfs_root.i = getelementptr inbounds %struct.usba_udc, ptr %1, i32 0, i32 23
  %14 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %debugfs_root.i, align 8
  tail call void @debugfs_remove(ptr noundef %15) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usba_udc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver = getelementptr inbounds %struct.usba_udc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %vbus_mutex = getelementptr inbounds %struct.usba_udc, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %vbus_mutex, i32 noundef 0) #10
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.if.then2_crit_edge, label %device_may_wakeup.exit

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then2

device_may_wakeup.exit:                           ; preds = %if.end
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.then2_crit_edge, label %if.end3

device_may_wakeup.exit.if.then2_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then2

if.then2:                                         ; preds = %device_may_wakeup.exit.if.then2_crit_edge, %if.end.if.then2_crit_edge
  %suspended = getelementptr inbounds %struct.usba_udc, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %suspended, align 2
  tail call fastcc void @usba_stop(ptr noundef %1)
  br label %out

if.end3:                                          ; preds = %device_may_wakeup.exit
  %vbus_pin = getelementptr inbounds %struct.usba_udc, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %vbus_pin to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vbus_pin, align 8
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end3.if.end9_crit_edge, label %if.then5

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @usba_stop(ptr noundef %1)
  %10 = ptrtoint ptr %vbus_pin to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vbus_pin, align 8
  %call7 = tail call i32 @gpiod_to_irq(ptr noundef %11) #10
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %call7, i32 noundef 1) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end3.if.end9_crit_edge
  %irq = getelementptr inbounds %struct.usba_udc, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %call.i21 = tail call i32 @irq_set_irq_wake(i32 noundef %13, i32 noundef 1) #10
  br label %out

out:                                              ; preds = %if.end9, %if.then2
  tail call void @mutex_unlock(ptr noundef %vbus_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usba_udc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver = getelementptr inbounds %struct.usba_udc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.if.end10_crit_edge, label %device_may_wakeup.exit

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

device_may_wakeup.exit:                           ; preds = %if.end
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end10_crit_edge, label %if.then2

device_may_wakeup.exit.if.end10_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then2:                                         ; preds = %device_may_wakeup.exit
  %vbus_pin = getelementptr inbounds %struct.usba_udc, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %vbus_pin to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vbus_pin, align 8
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %if.then2.if.end8_crit_edge, label %if.then4

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 @gpiod_to_irq(ptr noundef nonnull %8) #10
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %call6, i32 noundef 0) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.then2.if.end8_crit_edge
  %irq = getelementptr inbounds %struct.usba_udc, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %call.i28 = tail call i32 @irq_set_irq_wake(i32 noundef %10, i32 noundef 0) #10
  br label %if.end10

if.end10:                                         ; preds = %if.end8, %device_may_wakeup.exit.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %vbus_mutex = getelementptr inbounds %struct.usba_udc, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %vbus_mutex, i32 noundef 0) #10
  %vbus_pin.i = getelementptr inbounds %struct.usba_udc, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %vbus_pin.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vbus_pin.i, align 8
  %tobool.not.i29 = icmp eq ptr %12, null
  br i1 %tobool.not.i29, label %vbus_is_present.exit.thread, label %vbus_is_present.exit

vbus_is_present.exit.thread:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %vbus_prev32 = getelementptr inbounds %struct.usba_udc, ptr %1, i32 0, i32 21
  %13 = ptrtoint ptr %vbus_prev32 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %vbus_prev32, align 8
  br label %if.then14

vbus_is_present.exit:                             ; preds = %if.end10
  %call.i30 = tail call i32 @gpiod_get_value(ptr noundef nonnull %12) #10
  %vbus_prev = getelementptr inbounds %struct.usba_udc, ptr %1, i32 0, i32 21
  %14 = ptrtoint ptr %vbus_prev to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.i30, ptr %vbus_prev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool13.not = icmp eq i32 %call.i30, 0
  br i1 %tobool13.not, label %vbus_is_present.exit.if.end16_crit_edge, label %vbus_is_present.exit.if.then14_crit_edge

vbus_is_present.exit.if.then14_crit_edge:         ; preds = %vbus_is_present.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

vbus_is_present.exit.if.end16_crit_edge:          ; preds = %vbus_is_present.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then14:                                        ; preds = %vbus_is_present.exit.if.then14_crit_edge, %vbus_is_present.exit.thread
  %call15 = tail call fastcc i32 @usba_start(ptr noundef %1)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %vbus_is_present.exit.if.end16_crit_edge
  tail call void @mutex_unlock(ptr noundef %vbus_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !19, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !36, !38, !39, !41, !42, !44, !45, !46, !47, !49, !51, !52, !53, !55, !56, !57, !58, !60, !62, !64, !66, !67, !68, !69, !71, !72, !73, !75, !77, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !112, !113, !115, !116, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !141, !142, !143, !144, !146, !147, !148, !150, !151, !152, !153, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !174, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !206, !208, !209, !210, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231}
!llvm.module.flags = !{!233, !234, !235, !236, !237, !238, !239, !240}
!llvm.ident = !{!241}

!0 = !{ptr @__param_fifo_mode, !1, !"__param_fifo_mode", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 275, i32 1}
!2 = !{ptr @__UNIQUE_ID_fifo_modetype241, !1, !"__UNIQUE_ID_fifo_modetype241", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_fifo_mode242, !4, !"__UNIQUE_ID_fifo_mode242", i1 false, i1 false}
!4 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 276, i32 1}
!5 = !{ptr @__initcall__kmod_atmel_usba_udc__280_2455_udc_driver_init6, !6, !"__initcall__kmod_atmel_usba_udc__280_2455_udc_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 2455, i32 1}
!7 = !{ptr @__exitcall_udc_driver_exit, !6, !"__exitcall_udc_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description281, !9, !"__UNIQUE_ID_description281", i1 false, i1 false}
!9 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 2457, i32 1}
!10 = !{ptr @__UNIQUE_ID_author282, !11, !"__UNIQUE_ID_author282", i1 false, i1 false}
!11 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 2458, i32 1}
!12 = !{ptr @__UNIQUE_ID_file283, !13, !"__UNIQUE_ID_file283", i1 false, i1 false}
!13 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 2459, i32 1}
!14 = !{ptr @__UNIQUE_ID_license284, !13, !"__UNIQUE_ID_license284", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_alias285, !16, !"__UNIQUE_ID_alias285", i1 false, i1 false}
!16 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 2460, i32 1}
!17 = !{ptr @fifo_mode, !18, !"fifo_mode", i1 false, i1 false}
!18 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 273, i32 15}
!19 = !{ptr @__param_str_fifo_mode, !1, !"__param_str_fifo_mode", i1 false, i1 false}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 2287, i32 2}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @usba_udc_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @usba_udc_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 2294, i32 2}
!30 = !{ptr @usba_udc_probe._entry.5, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @usba_udc_probe._entry_ptr.7, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 2300, i32 34}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 2303, i32 34}
!36 = !{ptr @usba_udc_probe.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 2307, i32 2}
!38 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @usba_udc_probe.__key.11, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 2308, i32 2}
!41 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 2318, i32 3}
!44 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @usba_udc_probe._entry.13, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @usba_udc_probe._entry_ptr.16, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 2333, i32 5}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 2335, i32 3}
!51 = !{ptr @usba_udc_probe._entry.18, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @usba_udc_probe._entry_ptr.20, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 2349, i32 4}
!55 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @usba_udc_probe._entry.21, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @usba_udc_probe._entry_ptr.24, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @usba_gadget_template, !59, !"usba_gadget_template", i1 false, i1 false}
!59 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 1123, i32 32}
!60 = !{ptr @usba_udc_ops, !61, !"usba_udc_ops", i1 false, i1 false}
!61 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 1103, i32 36}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 2163, i32 54}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 2197, i32 5}
!66 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @atmel_udc_of_init._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @atmel_udc_of_init._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 2206, i32 5}
!71 = !{ptr @atmel_udc_of_init._entry.29, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @atmel_udc_of_init._entry_ptr.31, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 2215, i32 21}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 2259, i32 3}
!77 = !{ptr @atmel_udc_of_init._entry.33, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @atmel_udc_of_init._entry_ptr.35, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @atmel_udc_dt_ids, !80, !"atmel_udc_dt_ids", i1 false, i1 false}
!80 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 2115, i32 34}
!81 = !{ptr @udc_at91sam9rl_cfg, !82, !"udc_at91sam9rl_cfg", i1 false, i1 false}
!82 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 2089, i32 37}
!83 = !{ptr @at91sam9rl_errata, !84, !"at91sam9rl_errata", i1 false, i1 false}
!84 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 2052, i32 37}
!85 = !{ptr @ep_config_sam9, !86, !"ep_config_sam9", i1 false, i1 false}
!86 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 2060, i32 36}
!87 = !{ptr @udc_at91sam9g45_cfg, !88, !"udc_at91sam9g45_cfg", i1 false, i1 false}
!88 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 2096, i32 37}
!89 = !{ptr @at91sam9g45_errata, !90, !"at91sam9g45_errata", i1 false, i1 false}
!90 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 2056, i32 37}
!91 = !{ptr @udc_sama5d3_cfg, !92, !"udc_sama5d3_cfg", i1 false, i1 false}
!92 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 2103, i32 37}
!93 = !{ptr @ep_config_sama5, !94, !"ep_config_sama5", i1 false, i1 false}
!94 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 2070, i32 36}
!95 = !{ptr @udc_sam9x60_cfg, !96, !"udc_sam9x60_cfg", i1 false, i1 false}
!96 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 2109, i32 37}
!97 = !{ptr @atmel_pmc_dt_ids, !98, !"atmel_pmc_dt_ids", i1 false, i1 false}
!98 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 2125, i32 34}
!99 = !{ptr @mode_1_cfg, !100, !"mode_1_cfg", i1 false, i1 false}
!100 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 281, i32 29}
!101 = !{ptr @mode_2_cfg, !102, !"mode_2_cfg", i1 false, i1 false}
!102 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 292, i32 29}
!103 = !{ptr @mode_3_cfg, !104, !"mode_3_cfg", i1 false, i1 false}
!104 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 300, i32 29}
!105 = !{ptr @mode_4_cfg, !106, !"mode_4_cfg", i1 false, i1 false}
!106 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 311, i32 29}
!107 = !{ptr @usba_ep_ops, !108, !"usba_ep_ops", i1 false, i1 false}
!108 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 977, i32 32}
!109 = !{ptr @.str.36, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 590, i32 3}
!111 = !{ptr @.str.37, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @usba_ep_enable.__UNIQUE_ID_ddebug250, !110, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!113 = !{ptr @.str.38, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 597, i32 2}
!115 = !{ptr @usba_ep_enable.__UNIQUE_ID_ddebug251, !114, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!116 = !{ptr @.str.39, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 611, i32 4}
!118 = !{ptr @usba_ep_enable.__UNIQUE_ID_ddebug252, !117, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!119 = !{ptr @.str.40, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 679, i32 3}
!121 = !{ptr @.str.41, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @usba_ep_disable.__UNIQUE_ID_ddebug256, !120, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!123 = !{ptr @.str.42, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 740, i32 3}
!125 = !{ptr @.str.43, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @queue_dma.__UNIQUE_ID_ddebug260, !124, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!127 = !{ptr @.str.44, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 850, i32 3}
!129 = !{ptr @.str.45, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @stop_dma._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @stop_dma._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.46, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 928, i32 3}
!134 = !{ptr @.str.47, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @usba_ep_set_halt.__UNIQUE_ID_ddebug264, !133, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!136 = !{ptr @.str.48, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 933, i32 3}
!138 = !{ptr @usba_ep_set_halt.__UNIQUE_ID_ddebug265, !137, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!139 = !{ptr @.str.49, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 1835, i32 4}
!141 = !{ptr @.str.50, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @usba_udc_irq._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @usba_udc_irq._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.52, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 1844, i32 6}
!146 = !{ptr @usba_udc_irq._entry.51, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @usba_udc_irq._entry_ptr.53, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.54, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 1682, i32 3}
!150 = !{ptr @.str.55, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @usba_dma_irq._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @usba_dma_irq._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.57, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 1684, i32 3}
!155 = !{ptr @usba_dma_irq._entry.56, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @usba_dma_irq._entry_ptr.58, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.59, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 1489, i32 4}
!159 = !{ptr @.str.60, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @usba_control_irq._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @usba_control_irq._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.62, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 1518, i32 4}
!164 = !{ptr @usba_control_irq._entry.61, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @usba_control_irq._entry_ptr.63, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.65, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 1563, i32 4}
!168 = !{ptr @usba_control_irq._entry.64, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @usba_control_irq._entry_ptr.66, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @do_test_mode.test_packet_buffer, !171, !"test_packet_buffer", i1 false, i1 false}
!171 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 1195, i32 20}
!172 = !{ptr @.str.67, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 1223, i32 3}
!174 = !{ptr @.str.68, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @do_test_mode._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @do_test_mode._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.70, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 1228, i32 3}
!179 = !{ptr @do_test_mode._entry.69, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @do_test_mode._entry_ptr.71, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.73, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 1245, i32 4}
!183 = !{ptr @do_test_mode._entry.72, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @do_test_mode._entry_ptr.74, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.76, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 1248, i32 4}
!187 = !{ptr @do_test_mode._entry.75, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @do_test_mode._entry_ptr.77, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.79, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 1261, i32 4}
!191 = !{ptr @do_test_mode._entry.78, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @do_test_mode._entry_ptr.80, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.82, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 1268, i32 4}
!195 = !{ptr @do_test_mode._entry.81, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @do_test_mode._entry_ptr.83, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.85, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 1272, i32 3}
!199 = !{ptr @do_test_mode._entry.84, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @do_test_mode._entry_ptr.86, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.87, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 1418, i32 2}
!203 = !{ptr @.str.88, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @handle_ep0_setup._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @handle_ep0_setup._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.89, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 1630, i32 4}
!208 = !{ptr @.str.90, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @usba_ep_irq._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @usba_ep_irq._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @usba_ep0_desc, !212, !"usba_ep0_desc", i1 false, i1 false}
!212 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 1113, i32 39}
!213 = !{ptr @.str.91, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 237, i32 28}
!215 = !{ptr @regs_dbg_fops, !216, !"regs_dbg_fops", i1 false, i1 false}
!216 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 196, i32 37}
!217 = !{ptr @.str.92, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 212, i32 22}
!219 = !{ptr @.str.93, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 214, i32 22}
!221 = !{ptr @.str.94, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 217, i32 22}
!223 = !{ptr @queue_dbg_fops, !224, !"queue_dbg_fops", i1 false, i1 false}
!224 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 188, i32 37}
!225 = !{ptr @.str.95, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 98, i32 5}
!227 = !{ptr @.str.96, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../include/linux/uaccess.h", i32 143, i32 2}
!229 = !{ptr @udc_driver, !230, !"udc_driver", i1 false, i1 false}
!230 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 2446, i32 31}
!231 = !{ptr @usba_udc_pm_ops, !232, !"usba_udc_pm_ops", i1 false, i1 false}
!232 = !{!"../drivers/usb/gadget/udc/atmel_usba_udc.c", i32 2444, i32 8}
!233 = !{i32 1, !"wchar_size", i32 2}
!234 = !{i32 1, !"min_enum_size", i32 4}
!235 = !{i32 8, !"branch-target-enforcement", i32 0}
!236 = !{i32 8, !"sign-return-address", i32 0}
!237 = !{i32 8, !"sign-return-address-all", i32 0}
!238 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!239 = !{i32 7, !"uwtable", i32 1}
!240 = !{i32 7, !"frame-pointer", i32 2}
!241 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!242 = !{i64 4719850}
!243 = !{i8 0, i8 2}
!244 = !{!"branch_weights", i32 1, i32 2000}
!245 = !{i32 0, i32 33}
!246 = !{i64 4720268}
!247 = !{!"auto-init"}
!248 = !{i64 4719230}
!249 = !{!"branch_weights", i32 2000, i32 1}
!250 = !{i64 2148780098, i64 2148780103, i64 2148780116, i64 2148780160, i64 2148780194, i64 2148780215}
!251 = !{i64 2154678602, i64 2154678627}
