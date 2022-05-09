; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/at91_udc.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/at91_udc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.at91_udc_caps = type { ptr, ptr }
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
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.at91_udc = type { %struct.usb_gadget, [6 x %struct.at91_ep], ptr, ptr, i8, i8, %struct.at91_udc_data, ptr, ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.timer_list, %struct.work_struct, ptr }
%struct.at91_ep = type { %struct.usb_ep, %struct.list_head, ptr, ptr, i16, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.at91_udc_data = type { ptr, i8, ptr }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.at91_request = type { %struct.usb_request, %struct.list_head }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%union.setup = type { %struct.usb_ctrlrequest }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_at91_udc__250_2012_at91_udc_driver_init6 = internal global ptr @at91_udc_driver_init, section ".initcall6.init", align 4
@at91_udc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr @at91udc_remove, ptr @at91udc_shutdown, ptr @at91udc_suspend, ptr @at91udc_resume, %struct.device_driver { ptr @driver_name, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @at91_udc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_at91_udc_driver_exit = internal global ptr @at91_udc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description251 = internal constant [37 x i8] c"at91_udc.description=AT91 udc driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [48 x i8] c"at91_udc.author=Thomas Rathbone, David Brownell\00", section ".modinfo", align 1
@__UNIQUE_ID_file253 = internal constant [46 x i8] c"at91_udc.file=drivers/usb/gadget/udc/at91_udc\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [21 x i8] c"at91_udc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias255 = internal constant [33 x i8] c"at91_udc.alias=platform:at91_udc\00", section ".modinfo", align 1
@at91udc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&udc->lock\00", [21 x i8] zeroinitializer }, align 32
@at91_udc_ops = internal constant { %struct.usb_gadget_ops, [36 x i8] } { %struct.usb_gadget_ops { ptr @at91_get_frame, ptr @at91_wakeup, ptr @at91_set_selfpowered, ptr @at91_vbus_session, ptr null, ptr @at91_pullup, ptr null, ptr null, ptr @at91_start, ptr @at91_stop, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@driver_name = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"at91_udc\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gadget\00", [25 x i8] zeroinitializer }, align 32
@at91_ep_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @at91_ep_enable, ptr @at91_ep_disable, ptr null, ptr @at91_ep_alloc_request, ptr @at91_ep_free_request, ptr @at91_ep_queue, ptr @at91_ep_dequeue, ptr @at91_ep_set_halt, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hclk\00", [27 x i8] zeroinitializer }, align 32
@at91udc_probe.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 1, i8 -44, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"at91_udc\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"at91udc_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/usb/gadget/udc/at91_udc.c\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"udc: request irq %d failed\0A\00", [36 x i8] zeroinitializer }, align 32
@at91udc_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&udc->vbus_timer_work)\00", [55 x i8] zeroinitializer }, align 32
@at91udc_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&udc->vbus_timer)\00", [45 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@at91udc_probe.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.12, i8 1, i8 -38, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"udc: request vbus irq %d failed\0A\00", [63 x i8] zeroinitializer }, align 32
@at91udc_probe.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.13, i8 1, i8 -37, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"udc: no VBUS detection, assuming always-on\0A\00", [52 x i8] zeroinitializer }, align 32
@at91udc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 1913, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016udc: %s version %s\0A\00", [42 x i8] zeroinitializer }, align 32
@at91udc_probe._entry_ptr = internal global ptr @at91udc_probe._entry, section ".printk_index", align 4
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"3 May 2006\00", [21 x i8] zeroinitializer }, align 32
@at91udc_probe.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.16, i8 1, i8 -32, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"udc: %s probe failed, %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atmel,vbus-polled\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atmel,vbus-gpio\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"udc_vbus\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atmel,pullup-gpio\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"udc_pullup\00", [21 x i8] zeroinitializer }, align 32
@at91_udc_dt_ids = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-udc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91rm9200_udc_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9260-udc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9260_udc_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9261-udc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9261_udc_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9263-udc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9263_udc_caps }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@at91rm9200_udc_caps = internal constant { %struct.at91_udc_caps, [24 x i8] } { %struct.at91_udc_caps { ptr @at91rm9200_udc_init, ptr @at91rm9200_udc_pullup }, [24 x i8] zeroinitializer }, align 32
@at91sam9260_udc_caps = internal constant { %struct.at91_udc_caps, [24 x i8] } { %struct.at91_udc_caps { ptr @at91sam9260_udc_init, ptr @at91sam9260_udc_pullup }, [24 x i8] zeroinitializer }, align 32
@at91sam9261_udc_caps = internal constant { %struct.at91_udc_caps, [24 x i8] } { %struct.at91_udc_caps { ptr @at91sam9261_udc_init, ptr @at91sam9261_udc_pullup }, [24 x i8] zeroinitializer }, align 32
@at91sam9263_udc_caps = internal constant { %struct.at91_udc_caps, [24 x i8] } { %struct.at91_udc_caps { ptr @at91sam9263_udc_init, ptr @at91sam9260_udc_pullup }, [24 x i8] zeroinitializer }, align 32
@at91rm9200_udc_init.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.22, ptr @.str.6, ptr @.str.23, i8 1, i8 -108, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"at91rm9200_udc_init\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"udc: no D+ pullup?\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atmel,matrix\00", [19 x i8] zeroinitializer }, align 32
@at91_wakeup.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.25, ptr @.str.6, ptr @.str.26, i8 0, i8 -55, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"at91_wakeup\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"udc: %s\0A\00", [23 x i8] zeroinitializer }, align 32
@pullup.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.27, ptr @.str.6, ptr @.str.28, i8 0, i8 -25, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pullup\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"udc: %sactive\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep0\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep1\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep2\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep3-int\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep4\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep5\00", [28 x i8] zeroinitializer }, align 32
@at91_ep_enable.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.37, ptr @.str.6, ptr @.str.38, i8 0, i8 121, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"at91_ep_enable\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"udc: bad ep or descriptor\0A\00", [37 x i8] zeroinitializer }, align 32
@at91_ep_enable.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.37, ptr @.str.6, ptr @.str.39, i8 0, i8 122, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"udc: bogus device state\0A\00", [39 x i8] zeroinitializer }, align 32
@at91_ep_enable.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.37, ptr @.str.6, ptr @.str.40, i8 0, i8 124, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"udc: only one control endpoint\0A\00", [32 x i8] zeroinitializer }, align 32
@at91_ep_enable.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.37, ptr @.str.6, ptr @.str.41, i8 0, i8 -128, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"udc: bogus maxpacket %d\0A\00", [39 x i8] zeroinitializer }, align 32
@at91_ep_enable.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.37, ptr @.str.6, ptr @.str.42, i8 0, i8 -127, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"udc: iso requires double buffering\0A\00", [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@at91_ep_queue.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.43, ptr @.str.6, ptr @.str.44, i8 0, i8 -102, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"at91_ep_queue\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"udc: invalid request\0A\00", [42 x i8] zeroinitializer }, align 32
@at91_ep_queue.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.43, ptr @.str.6, ptr @.str.45, i8 0, i8 -101, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"udc: invalid ep\0A\00", [47 x i8] zeroinitializer }, align 32
@at91_ep_queue.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.43, ptr @.str.6, ptr @.str.46, i8 0, i8 -99, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"udc: invalid device\0A\00", [43 x i8] zeroinitializer }, align 32
@read_fifo.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.47, ptr @.str.6, ptr @.str.48, i8 0, i8 83, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"read_fifo\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"udc: %s buffer overflow\0A\00", [39 x i8] zeroinitializer }, align 32
@handle_ep0.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.49, ptr @.str.6, ptr @.str.50, i8 1, i8 88, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"handle_ep0\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"udc: no control-OUT deferred responses!\0A\00", [55 x i8] zeroinitializer }, align 32
@handle_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.6, i32 1068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013udc: SETUP len %d, csr %08x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"handle_setup\00", [19 x i8] zeroinitializer }, align 32
@handle_setup._entry_ptr = internal global ptr @handle_setup._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@debug_filename = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"driver/udc\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: version %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"vbus %s, pullup %s, %s powered%s, gadget %s\0A\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"present\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"active\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"self\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VBUS\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c", suspended\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(none)\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(not clocked)\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"frame %05x:%s%s frame=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" ok\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" err\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"glbstate %02x:%s%s%s%s%s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" rmwupe\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" rsminpr\00", [23 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" esr\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" confg\00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" fadden\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"faddr   %03x:%s fadd=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" fen\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"imr   \00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"isr   \00", [25 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s %04x:%s%s%s%s%s%s\00", [43 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" wakeup\00", [24 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" endbusres\00", [21 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" sofint\00", [24 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" extrsm\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" rxrsm\00", [25 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" rxsusp\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" ep%d\00", [26 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@proc_ep_show.types = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94], [32 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"out-iso\00", [24 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"out-bulk\00", [23 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"out-int\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BOGUS\00", [26 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"in-iso\00", [25 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in-bulk\00", [24 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"in-int\00", [25 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s, maxpacket %d %s%s %s%s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" iso\00", [27 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pong\00", [27 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ping\00", [27 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" stopped\00", [23 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"csr %08x rxbytes=%d %s %s %s%s%s%s%s%s%s%s%s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DATA1\00", [26 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DATA0\00", [26 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" IN\00", [28 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" OUT\00", [27 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" rxdatabk1\00", [21 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" forcestall\00", [20 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" txpktrdy\00", [22 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" stallsent\00", [21 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" rxsetup\00", [23 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" rxdatabk0\00", [21 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" txcomp\00", [24 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\09(queue empty)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\09req %p len %d/%d buf %p\0A\00", [38 x i8] zeroinitializer }, align 32
@at91udc_remove.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.115, ptr @.str.6, ptr @.str.116, i8 1, i8 -30, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"at91udc_remove\00", [17 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"udc: remove\0A\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.117 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.118 = internal global [13 x i64] [i64 11, i64 16, i64 1, i64 3, i64 5, i64 9, i64 257, i64 259, i64 513, i64 515, i64 32768, i64 33024, i64 33280]
@___asan_gen_.119 = private unnamed_addr constant [16 x i8] c"at91_udc_driver\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 2001, i32 31 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1812, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [13 x i8] c"at91_udc_ops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 985, i32 36 }
@___asan_gen_.131 = private unnamed_addr constant [12 x i8] c"driver_name\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 57, i32 19 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1817, i32 30 }
@___asan_gen_.137 = private unnamed_addr constant [12 x i8] c"at91_ep_ops\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 776, i32 32 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1843, i32 32 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1847, i32 32 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1874, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1888, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1889, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1897, i32 5 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1903, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1913, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1921, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1777, i32 31 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1780, i32 47 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1781, i32 18 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1785, i32 49 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1786, i32 22 }
@___asan_gen_.203 = private unnamed_addr constant [16 x i8] c"at91_udc_dt_ids\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1750, i32 34 }
@___asan_gen_.206 = private unnamed_addr constant [20 x i8] c"at91rm9200_udc_caps\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1635, i32 35 }
@___asan_gen_.209 = private unnamed_addr constant [21 x i8] c"at91sam9260_udc_caps\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1673, i32 35 }
@___asan_gen_.212 = private unnamed_addr constant [21 x i8] c"at91sam9261_udc_caps\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1715, i32 35 }
@___asan_gen_.215 = private unnamed_addr constant [21 x i8] c"at91sam9263_udc_caps\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1745, i32 35 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1617, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1700, i32 13 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 804, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 924, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 69, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 71, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 73, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 75, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 77, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 79, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 485, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 491, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 498, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 513, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 517, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 618, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 623, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 630, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 334, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1377, i32 5 }
@___asan_gen_.305 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1068, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant [15 x i8] c"debug_filename\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 100, i32 19 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 188, i32 16 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 190, i32 16 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 191, i32 15 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 191, i32 27 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 193, i32 19 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 193, i32 30 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 194, i32 6 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 195, i32 32 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 195, i32 41 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 196, i32 20 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 197, i32 44 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 201, i32 17 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 206, i32 16 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 207, i32 29 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 208, i32 30 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 212, i32 16 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 213, i32 29 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 214, i32 30 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 215, i32 26 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 216, i32 28 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 217, i32 29 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 220, i32 16 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 221, i32 26 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 224, i32 19 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 225, i32 19 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 167, i32 16 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 168, i32 24 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 169, i32 24 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 171, i32 24 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 172, i32 24 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 173, i32 23 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 174, i32 23 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 177, i32 18 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 179, i32 16 }
@___asan_gen_.419 = private unnamed_addr constant [6 x i8] c"types\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 107, i32 16 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 108, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 108, i32 14 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 108, i32 25 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 108, i32 37 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 109, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 109, i32 14 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 109, i32 25 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 109, i32 37 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 123, i32 16 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 125, i32 23 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 126, i32 17 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 128, i32 24 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 128, i32 33 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 130, i32 18 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 131, i32 16 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 135, i32 23 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 135, i32 33 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 140, i32 26 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 140, i32 34 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 142, i32 22 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 143, i32 22 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 144, i32 22 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 146, i32 22 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 147, i32 22 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 148, i32 22 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 149, i32 22 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 151, i32 17 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 156, i32 17 }
@___asan_gen_.509 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.510 = private constant [37 x i8] c"../drivers/usb/gadget/udc/at91_udc.c\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.510, i32 1931, i32 2 }
@llvm.compiler.used = appending global [141 x ptr] [ptr @__UNIQUE_ID_alias255, ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file253, ptr @__UNIQUE_ID_license254, ptr @__exitcall_at91_udc_driver_exit, ptr @__initcall__kmod_at91_udc__250_2012_at91_udc_driver_init6, ptr @at91_udc_driver_exit, ptr @at91udc_probe._entry, ptr @at91udc_probe._entry_ptr, ptr @handle_setup._entry, ptr @handle_setup._entry_ptr, ptr @at91_udc_driver, ptr @at91udc_probe.__key, ptr @.str, ptr @at91_udc_ops, ptr @driver_name, ptr @.str.1, ptr @at91_ep_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @at91udc_probe.__key.8, ptr @.str.9, ptr @at91udc_probe.__key.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @at91_udc_dt_ids, ptr @at91rm9200_udc_caps, ptr @at91sam9260_udc_caps, ptr @at91sam9261_udc_caps, ptr @at91sam9263_udc_caps, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @debug_filename, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @proc_ep_show.types, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116], section "llvm.metadata"
@0 = internal global [131 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_udc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91udc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_udc_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_name to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_ep_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91udc_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91udc_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91udc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_udc_dt_ids to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91rm9200_udc_caps to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9260_udc_caps to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9261_udc_caps to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9263_udc_caps to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_filename to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_ep_show.types to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_udc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @at91_udc_driver, ptr noundef nonnull @at91udc_probe, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @at91_udc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @at91_udc_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91udc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1624, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %board1.i = getelementptr inbounds %struct.at91_udc, ptr %call.i, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val.i, align 4, !annotation !285
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.17, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %vbus_polled.i = getelementptr inbounds %struct.at91_udc, ptr %call.i, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %vbus_polled.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %vbus_polled.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %call2.i = call ptr @gpiod_get_from_of_node(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @.str.19) #9
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  %spec.store.select.i = select i1 %cmp.i.i, ptr null, ptr %call2.i
  %5 = ptrtoint ptr %board1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.store.select.i, ptr %board1.i, align 4
  %call8.i = call ptr @gpiod_get_from_of_node(ptr noundef %2, ptr noundef nonnull @.str.20, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.21) #9
  %pullup_pin.i = getelementptr inbounds %struct.at91_udc, ptr %call.i, i32 0, i32 6, i32 2
  %cmp.i28.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  %spec.store.select29.i = select i1 %cmp.i28.i, ptr null, ptr %call8.i
  %6 = ptrtoint ptr %pullup_pin.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %spec.store.select29.i, ptr %pullup_pin.i, align 4
  %call14.i = call ptr @of_match_node(ptr noundef nonnull @at91_udc_dt_ids, ptr noundef %2) #9
  %tobool.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool.not.i, label %if.end.i.for.inc.5_crit_edge, label %if.then15.i

if.end.i.for.inc.5_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call14.i, i32 0, i32 3
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %caps.i = getelementptr inbounds %struct.at91_udc, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %caps.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %caps.i, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then15.i, %if.end.i.for.inc.5_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  %pdev5 = getelementptr inbounds %struct.at91_udc, ptr %call.i, i32 0, i32 9
  %10 = ptrtoint ptr %pdev5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pdev, ptr %pdev5, align 8
  %enabled = getelementptr inbounds %struct.at91_udc, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %enabled, align 8
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %enabled, align 8
  %lock = getelementptr inbounds %struct.at91_udc, ptr %call.i, i32 0, i32 13
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @at91udc_probe.__key, i16 noundef signext 3) #9
  %ops = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @at91_udc_ops, ptr %ops, align 8
  %ep8 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %ep0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ep8, ptr %ep0, align 4
  %name = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 10
  %14 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @driver_name, ptr %name, align 4
  %init_name = getelementptr inbounds %struct.usb_gadget, ptr %call.i, i32 0, i32 11, i32 3
  %15 = ptrtoint ptr %init_name to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.1, ptr %init_name, align 8
  %name19 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %name19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.31, ptr %name19, align 4
  %caps = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 4
  %17 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1946157056, ptr %caps, align 4
  %ops24 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %18 = ptrtoint ptr %ops24 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @at91_ep_ops, ptr %ops24, align 4
  %udc25 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %udc25 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %udc25, align 4
  %int_mask = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 0, i32 5
  %20 = ptrtoint ptr %int_mask to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %int_mask, align 2
  %name19.1 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %name19.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.32, ptr %name19.1, align 4
  %caps.1 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 1, i32 0, i32 4
  %22 = ptrtoint ptr %caps.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2080374784, ptr %caps.1, align 4
  %ops24.1 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 1, i32 0, i32 2
  %23 = ptrtoint ptr %ops24.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @at91_ep_ops, ptr %ops24.1, align 4
  %udc25.1 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 1, i32 2
  %24 = ptrtoint ptr %udc25.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %udc25.1, align 4
  %int_mask.1 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 1, i32 5
  %25 = ptrtoint ptr %int_mask.1 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %int_mask.1, align 2
  %is_pingpong.1 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 1, i32 6
  %26 = ptrtoint ptr %is_pingpong.1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load31.1 = load i8, ptr %is_pingpong.1, align 1
  %bf.set33.1 = or i8 %bf.load31.1, -128
  store i8 %bf.set33.1, ptr %is_pingpong.1, align 1
  %name19.2 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 2, i32 0, i32 1
  %27 = ptrtoint ptr %name19.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.33, ptr %name19.2, align 4
  %caps.2 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 2, i32 0, i32 4
  %28 = ptrtoint ptr %caps.2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2080374784, ptr %caps.2, align 4
  %ops24.2 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 2, i32 0, i32 2
  %29 = ptrtoint ptr %ops24.2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @at91_ep_ops, ptr %ops24.2, align 4
  %udc25.2 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 2, i32 2
  %30 = ptrtoint ptr %udc25.2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %udc25.2, align 4
  %int_mask.2 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 2, i32 5
  %31 = ptrtoint ptr %int_mask.2 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 4, ptr %int_mask.2, align 2
  %is_pingpong.2 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 2, i32 6
  %32 = ptrtoint ptr %is_pingpong.2 to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load31.2 = load i8, ptr %is_pingpong.2, align 1
  %bf.set33.2 = or i8 %bf.load31.2, -128
  store i8 %bf.set33.2, ptr %is_pingpong.2, align 1
  %name19.3 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 3, i32 0, i32 1
  %33 = ptrtoint ptr %name19.3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.34, ptr %name19.3, align 4
  %caps.3 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 3, i32 0, i32 4
  %34 = ptrtoint ptr %caps.3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 469762048, ptr %caps.3, align 4
  %ops24.3 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 3, i32 0, i32 2
  %35 = ptrtoint ptr %ops24.3 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @at91_ep_ops, ptr %ops24.3, align 4
  %udc25.3 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 3, i32 2
  %36 = ptrtoint ptr %udc25.3 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %udc25.3, align 4
  %int_mask.3 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 3, i32 5
  %37 = ptrtoint ptr %int_mask.3 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 8, ptr %int_mask.3, align 2
  %name19.4 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 4, i32 0, i32 1
  %38 = ptrtoint ptr %name19.4 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.35, ptr %name19.4, align 4
  %caps.4 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 4, i32 0, i32 4
  %39 = ptrtoint ptr %caps.4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2080374784, ptr %caps.4, align 4
  %ops24.4 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 4, i32 0, i32 2
  %40 = ptrtoint ptr %ops24.4 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @at91_ep_ops, ptr %ops24.4, align 4
  %udc25.4 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 4, i32 2
  %41 = ptrtoint ptr %udc25.4 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %udc25.4, align 4
  %int_mask.4 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 4, i32 5
  %42 = ptrtoint ptr %int_mask.4 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 16, ptr %int_mask.4, align 2
  %is_pingpong.4 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 4, i32 6
  %43 = ptrtoint ptr %is_pingpong.4 to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load31.4 = load i8, ptr %is_pingpong.4, align 1
  %bf.set33.4 = or i8 %bf.load31.4, -128
  store i8 %bf.set33.4, ptr %is_pingpong.4, align 1
  %name19.5 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 5, i32 0, i32 1
  %44 = ptrtoint ptr %name19.5 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.36, ptr %name19.5, align 4
  %caps.5 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 5, i32 0, i32 4
  %45 = ptrtoint ptr %caps.5 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2080374784, ptr %caps.5, align 4
  %ops24.5 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 5, i32 0, i32 2
  %46 = ptrtoint ptr %ops24.5 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @at91_ep_ops, ptr %ops24.5, align 4
  %udc25.5 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 5, i32 2
  %47 = ptrtoint ptr %udc25.5 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %udc25.5, align 4
  %int_mask.5 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 5, i32 5
  %48 = ptrtoint ptr %int_mask.5 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 32, ptr %int_mask.5, align 2
  %is_pingpong.5 = getelementptr %struct.at91_udc, ptr %call.i, i32 0, i32 1, i32 5, i32 6
  %49 = ptrtoint ptr %is_pingpong.5 to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load31.5 = load i8, ptr %is_pingpong.5, align 1
  %bf.set33.5 = or i8 %bf.load31.5, -128
  store i8 %bf.set33.5, ptr %is_pingpong.5, align 1
  %call35 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %udp_baseaddr = getelementptr inbounds %struct.at91_udc, ptr %call.i, i32 0, i32 11
  %50 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call35, ptr %udp_baseaddr, align 8
  %cmp.i327 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i327, label %if.then38, label %if.end41

if.then38:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %call35 to i32
  br label %cleanup

if.end41:                                         ; preds = %for.inc.5
  %caps42 = getelementptr inbounds %struct.at91_udc, ptr %call.i, i32 0, i32 3
  %52 = ptrtoint ptr %caps42 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %caps42, align 4
  %tobool43.not = icmp eq ptr %53, null
  br i1 %tobool43.not, label %if.end41.if.end54_crit_edge, label %land.lhs.true44

if.end41.if.end54_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

land.lhs.true44:                                  ; preds = %if.end41
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %tobool46.not = icmp eq ptr %55, null
  br i1 %tobool46.not, label %land.lhs.true44.if.end54_crit_edge, label %if.then47

land.lhs.true44.if.end54_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then47:                                        ; preds = %land.lhs.true44
  %call50 = call i32 %55(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then47.if.end54_crit_edge, label %if.then47.cleanup_crit_edge

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then47.if.end54_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.end54:                                         ; preds = %if.then47.if.end54_crit_edge, %land.lhs.true44.if.end54_crit_edge, %if.end41.if.end54_crit_edge
  call fastcc void @udc_reinit(ptr noundef nonnull %call.i)
  %call55 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  %iclk = getelementptr inbounds %struct.at91_udc, ptr %call.i, i32 0, i32 7
  %56 = ptrtoint ptr %iclk to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call55, ptr %iclk, align 8
  %cmp.i328 = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i328, label %if.then58, label %if.end61

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %call55 to i32
  br label %cleanup

if.end61:                                         ; preds = %if.end54
  %call62 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.3) #9
  %fclk = getelementptr inbounds %struct.at91_udc, ptr %call.i, i32 0, i32 8
  %58 = ptrtoint ptr %fclk to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call62, ptr %fclk, align 4
  %cmp.i329 = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i329, label %if.then65, label %if.end68

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %call62 to i32
  br label %cleanup

if.end68:                                         ; preds = %if.end61
  %call70 = call i32 @clk_set_rate(ptr noundef %call62, i32 noundef 48000000) #9
  %60 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fclk, align 4
  %call72 = call i32 @clk_prepare(ptr noundef %61) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end75:                                         ; preds = %if.end68
  %62 = ptrtoint ptr %iclk to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %iclk, align 8
  %call.i330 = call i32 @clk_prepare(ptr noundef %63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i330)
  %tobool.not.i331 = icmp eq i32 %call.i330, 0
  br i1 %tobool.not.i331, label %if.end.i332, label %if.end75.err_unprepare_fclk_crit_edge

if.end75.err_unprepare_fclk_crit_edge:            ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unprepare_fclk

if.end.i332:                                      ; preds = %if.end75
  %call1.i = call i32 @clk_enable(ptr noundef %63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end80, label %if.end.i332.err_unprepare_fclk.sink.split_crit_edge

if.end.i332.err_unprepare_fclk.sink.split_crit_edge: ; preds = %if.end.i332
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unprepare_fclk.sink.split

if.end80:                                         ; preds = %if.end.i332
  %64 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr = getelementptr i8, ptr %65, i32 116
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 256) #9, !srcloc !286
  %66 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr83 = getelementptr i8, ptr %67, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 -1) #9, !srcloc !286
  %68 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr85 = getelementptr i8, ptr %69, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85, i32 -1) #9, !srcloc !286
  %70 = ptrtoint ptr %iclk to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %iclk, align 8
  call void @clk_disable(ptr noundef %71) #9
  %call87 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %udp_irq = getelementptr inbounds %struct.at91_udc, ptr %call.i, i32 0, i32 12
  %72 = ptrtoint ptr %udp_irq to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %call87, ptr %udp_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %if.end80.err_unprepare_iclk_crit_edge, label %if.end91

if.end80.err_unprepare_iclk_crit_edge:            ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unprepare_iclk

if.end91:                                         ; preds = %if.end80
  %call.i334 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call87, ptr noundef nonnull @at91_udc_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @driver_name, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i334)
  %tobool94.not = icmp eq i32 %call.i334, 0
  br i1 %tobool94.not, label %if.end107, label %do.body96

do.body96:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91udc_probe.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91udc_probe, %err_unprepare_iclk)) #9
          to label %if.then102 [label %err_unprepare_iclk], !srcloc !287

if.then102:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %udp_irq to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %udp_irq, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @at91udc_probe.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.7, i32 noundef %74) #9
  br label %err_unprepare_iclk

if.end107:                                        ; preds = %if.end91
  %75 = ptrtoint ptr %board1.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %board1.i, align 4
  %tobool108.not = icmp eq ptr %76, null
  br i1 %tobool108.not, label %do.body166, label %if.then109

if.then109:                                       ; preds = %if.end107
  %call112 = call i32 @gpiod_direction_input(ptr noundef nonnull %76) #9
  %77 = ptrtoint ptr %board1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %board1.i, align 4
  %call115 = call i32 @gpiod_get_value_cansleep(ptr noundef %78) #9
  %79 = trunc i32 %call115 to i8
  %80 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load116 = load i8, ptr %enabled, align 8
  %bf.shl = shl i8 %79, 7
  %bf.clear117 = and i8 %bf.load116, 127
  %bf.set118 = or i8 %bf.clear117, %bf.shl
  store i8 %bf.set118, ptr %enabled, align 8
  %vbus_polled = getelementptr inbounds %struct.at91_udc, ptr %call.i, i32 0, i32 6, i32 1
  %81 = ptrtoint ptr %vbus_polled to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %vbus_polled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool120.not = icmp eq i8 %82, 0
  br i1 %tobool120.not, label %if.else, label %do.body122

do.body122:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #11
  %vbus_timer_work = getelementptr inbounds %struct.at91_udc, ptr %call.i, i32 0, i32 15
  call void @__init_work(ptr noundef %vbus_timer_work, i32 noundef 0) #9
  %83 = ptrtoint ptr %vbus_timer_work to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -64, ptr %vbus_timer_work, align 4
  %lockdep_map = getelementptr inbounds %struct.at91_udc, ptr %call.i, i32 0, i32 15, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @at91udc_probe.__key.8, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry126 = getelementptr inbounds %struct.at91_udc, ptr %call.i, i32 0, i32 15, i32 1
  %84 = ptrtoint ptr %entry126 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %entry126, ptr %entry126, align 4
  %prev.i = getelementptr inbounds %struct.at91_udc, ptr %call.i, i32 0, i32 15, i32 1, i32 1
  %85 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %entry126, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.at91_udc, ptr %call.i, i32 0, i32 15, i32 2
  %86 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @at91_vbus_timer_work, ptr %func, align 4
  %vbus_timer = getelementptr inbounds %struct.at91_udc, ptr %call.i, i32 0, i32 14
  call void @init_timer_key(ptr noundef %vbus_timer, ptr noundef nonnull @at91_vbus_timer, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @at91udc_probe.__key.10) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %87 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %87, 100
  %call135 = call i32 @mod_timer(ptr noundef %vbus_timer, i32 noundef %add) #9
  br label %if.end188

if.else:                                          ; preds = %if.then109
  %88 = ptrtoint ptr %board1.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %board1.i, align 4
  %call138 = call i32 @gpiod_to_irq(ptr noundef %89) #9
  %call.i335 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call138, ptr noundef nonnull @at91_vbus_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @driver_name, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i335)
  %tobool140.not = icmp eq i32 %call.i335, 0
  br i1 %tobool140.not, label %if.else.if.end188_crit_edge, label %do.body142

if.else.if.end188_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end188

do.body142:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91udc_probe.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91udc_probe, %err_unprepare_iclk)) #9
          to label %if.then156 [label %err_unprepare_iclk], !srcloc !287

if.then156:                                       ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %board1.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %board1.i, align 4
  %call159 = call i32 @desc_to_gpio(ptr noundef %91) #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @at91udc_probe.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.12, i32 noundef %call159) #9
  br label %err_unprepare_iclk

do.body166:                                       ; preds = %if.end107
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91udc_probe.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91udc_probe, %do.end183)) #9
          to label %if.then180 [label %do.end183], !srcloc !287

if.then180:                                       ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @at91udc_probe.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.13) #9
  br label %do.end183

do.end183:                                        ; preds = %if.then180, %do.body166
  %92 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load185 = load i8, ptr %enabled, align 8
  %bf.set187 = or i8 %bf.load185, -128
  store i8 %bf.set187, ptr %enabled, align 8
  br label %if.end188

if.end188:                                        ; preds = %do.end183, %if.else.if.end188_crit_edge, %do.body122
  %call190 = call i32 @usb_add_gadget_udc(ptr noundef %dev1, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %if.end193, label %if.end188.err_unprepare_iclk_crit_edge

if.end188.err_unprepare_iclk_crit_edge:           ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unprepare_iclk

if.end193:                                        ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %93 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call194 = call i32 @device_init_wakeup(ptr noundef %dev1, i1 noundef zeroext true) #9
  %call.i336 = call ptr @proc_create_single_data(ptr noundef nonnull @debug_filename, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @proc_udc_show, ptr noundef nonnull %call.i) #9
  %pde.i = getelementptr inbounds %struct.at91_udc, ptr %call.i, i32 0, i32 10
  %94 = ptrtoint ptr %pde.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call.i336, ptr %pde.i, align 4
  %call199 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @driver_name, ptr noundef nonnull @.str.15) #12
  br label %cleanup

err_unprepare_iclk:                               ; preds = %if.end188.err_unprepare_iclk_crit_edge, %if.then156, %do.body142, %if.then102, %do.body96, %if.end80.err_unprepare_iclk_crit_edge
  %retval2.0 = phi i32 [ %call87, %if.end80.err_unprepare_iclk_crit_edge ], [ %call.i334, %if.then102 ], [ %call190, %if.end188.err_unprepare_iclk_crit_edge ], [ %call.i335, %if.then156 ], [ %call.i334, %do.body96 ], [ %call.i335, %do.body142 ]
  %95 = ptrtoint ptr %iclk to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %iclk, align 8
  br label %err_unprepare_fclk.sink.split

err_unprepare_fclk.sink.split:                    ; preds = %err_unprepare_iclk, %if.end.i332.err_unprepare_fclk.sink.split_crit_edge
  %.sink = phi ptr [ %96, %err_unprepare_iclk ], [ %63, %if.end.i332.err_unprepare_fclk.sink.split_crit_edge ]
  %retval2.1.ph = phi i32 [ %retval2.0, %err_unprepare_iclk ], [ %call1.i, %if.end.i332.err_unprepare_fclk.sink.split_crit_edge ]
  call void @clk_unprepare(ptr noundef %.sink) #9
  br label %err_unprepare_fclk

err_unprepare_fclk:                               ; preds = %err_unprepare_fclk.sink.split, %if.end75.err_unprepare_fclk_crit_edge
  %retval2.1 = phi i32 [ %call.i330, %if.end75.err_unprepare_fclk_crit_edge ], [ %retval2.1.ph, %err_unprepare_fclk.sink.split ]
  %97 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %fclk, align 4
  call void @clk_unprepare(ptr noundef %98) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91udc_probe.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91udc_probe, %cleanup)) #9
          to label %if.then216 [label %cleanup], !srcloc !287

if.then216:                                       ; preds = %err_unprepare_fclk
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @at91udc_probe.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.16, ptr noundef nonnull @driver_name, i32 noundef %retval2.1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then216, %err_unprepare_fclk, %if.end193, %if.end68.cleanup_crit_edge, %if.then65, %if.then58, %if.then47.cleanup_crit_edge, %if.then38, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %51, %if.then38 ], [ %57, %if.then58 ], [ %59, %if.then65 ], [ 0, %if.end193 ], [ -12, %entry.cleanup_crit_edge ], [ %call50, %if.then47.cleanup_crit_edge ], [ %call72, %if.end68.cleanup_crit_edge ], [ %retval2.1, %if.then216 ], [ %retval2.1, %err_unprepare_fclk ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udc_reinit(ptr noundef %udc) unnamed_addr #2 align 64 {
for.body.peel.next:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ep_list = getelementptr inbounds %struct.usb_gadget, ptr %udc, i32 0, i32 4
  %0 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %ep_list, ptr %ep_list, align 4
  %prev.i = getelementptr inbounds %struct.usb_gadget, ptr %udc, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ep_list, ptr %prev.i, align 4
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %udc, i32 0, i32 3
  %2 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep0, align 4
  %ep_list2 = getelementptr inbounds %struct.usb_ep, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ep_list2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %ep_list2, ptr %ep_list2, align 4
  %prev.i35 = getelementptr inbounds %struct.usb_ep, ptr %3, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %prev.i35 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ep_list2, ptr %prev.i35, align 4
  %quirk_stall_not_supp = getelementptr inbounds %struct.usb_gadget, ptr %udc, i32 0, i32 17
  %6 = ptrtoint ptr %quirk_stall_not_supp to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load i32, ptr %quirk_stall_not_supp, align 4
  %bf.set = or i32 %bf.load, 2097152
  store i32 %bf.set, ptr %quirk_stall_not_supp, align 4
  %udp_baseaddr = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 11
  %arrayidx.peel = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 0
  %desc.peel = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 0, i32 0, i32 9
  %7 = ptrtoint ptr %desc.peel to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %desc.peel, align 4
  %stopped.peel = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 0, i32 6
  %8 = ptrtoint ptr %stopped.peel to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load11.peel = load i8, ptr %stopped.peel, align 1
  %bf.clear15.peel = and i8 %bf.load11.peel, -73
  store i8 %bf.clear15.peel, ptr %stopped.peel, align 1
  %maxpacket.peel = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 0, i32 4
  %9 = ptrtoint ptr %maxpacket.peel to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load18.peel = load i16, ptr %maxpacket.peel, align 4
  %bf.cast.peel = zext i16 %bf.load18.peel to i32
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %arrayidx.peel, i32 noundef %bf.cast.peel) #9
  %10 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr.peel = getelementptr i8, ptr %11, i32 48
  %creg.peel = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 0, i32 3
  %12 = ptrtoint ptr %creg.peel to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr.peel, ptr %creg.peel, align 4
  %queue.peel = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %queue.peel to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %queue.peel, ptr %queue.peel, align 4
  %prev.i37.peel = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i37.peel to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %queue.peel, ptr %prev.i37.peel, align 4
  br label %if.then

if.then:                                          ; preds = %if.end.if.then_crit_edge, %for.body.peel.next
  %i.038 = phi i32 [ 1, %for.body.peel.next ], [ %inc, %if.end.if.then_crit_edge ]
  %arrayidx = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 %i.038
  %ep_list7 = getelementptr inbounds %struct.usb_ep, ptr %arrayidx, i32 0, i32 3
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list7, ptr noundef %16, ptr noundef %ep_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ep_list7, ptr %prev.i, align 4
  %18 = ptrtoint ptr %ep_list7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %ep_list, ptr %ep_list7, align 4
  %prev3.i.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %ep_list7, ptr %16, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.then.if.end_crit_edge
  %desc = getelementptr inbounds %struct.usb_ep, ptr %arrayidx, i32 0, i32 9
  %21 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %desc, align 4
  %stopped = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 %i.038, i32 6
  %22 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load11 = load i8, ptr %stopped, align 1
  %bf.clear15 = and i8 %bf.load11, -73
  store i8 %bf.clear15, ptr %stopped, align 1
  %maxpacket = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 %i.038, i32 4
  %23 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load18 = load i16, ptr %maxpacket, align 4
  %bf.cast = zext i16 %bf.load18 to i32
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %arrayidx, i32 noundef %bf.cast) #9
  %24 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %udp_baseaddr, align 8
  %mul = shl nuw nsw i32 %i.038, 2
  %add = add nuw nsw i32 %mul, 48
  %add.ptr = getelementptr i8, ptr %25, i32 %add
  %creg = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 %i.038, i32 3
  %26 = ptrtoint ptr %creg to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr, ptr %creg, align 4
  %queue = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 %i.038, i32 1
  %27 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i37 = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 %i.038, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i37 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %queue, ptr %prev.i37, align 4
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %if.end.if.then_crit_edge, !llvm.loop !288

if.end.if.then_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_udc_irq(i32 noundef %irq, ptr noundef %_udc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.at91_udc, ptr %_udc, i32 0, i32 13
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %clocked = getelementptr inbounds %struct.at91_udc, ptr %_udc, i32 0, i32 4
  %0 = ptrtoint ptr %clocked to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %clocked, align 8
  %1 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %clk_on.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

clk_on.exit:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set.i = or i8 %bf.load, 32
  %2 = ptrtoint ptr %clocked to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %bf.set.i, ptr %clocked, align 8
  %iclk.i = getelementptr inbounds %struct.at91_udc, ptr %_udc, i32 0, i32 7
  %3 = ptrtoint ptr %iclk.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iclk.i, align 8
  %call.i = tail call i32 @clk_enable(ptr noundef %4) #9
  %fclk.i = getelementptr inbounds %struct.at91_udc, ptr %_udc, i32 0, i32 8
  %5 = ptrtoint ptr %fclk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fclk.i, align 4
  %call4.i = tail call i32 @clk_enable(ptr noundef %6) #9
  br label %if.end

if.end:                                           ; preds = %clk_on.exit, %entry.if.end_crit_edge
  %udp_baseaddr = getelementptr inbounds %struct.at91_udc, ptr %_udc, i32 0, i32 11
  %addr = getelementptr inbounds %struct.at91_udc, ptr %_udc, i32 0, i32 5
  %driver1.i = getelementptr inbounds %struct.at91_udc, ptr %_udc, i32 0, i32 2
  %speed.i = getelementptr inbounds %struct.usb_gadget, ptr %_udc, i32 0, i32 5
  %arrayidx.i = getelementptr %struct.at91_udc, ptr %_udc, i32 0, i32 1, i32 0
  %stopped.i = getelementptr %struct.at91_udc, ptr %_udc, i32 0, i32 1, i32 0, i32 6
  %queue.i.i = getelementptr %struct.at91_udc, ptr %_udc, i32 0, i32 1, i32 0, i32 1
  %arrayidx.1.i = getelementptr %struct.at91_udc, ptr %_udc, i32 0, i32 1, i32 1
  %stopped.1.i = getelementptr %struct.at91_udc, ptr %_udc, i32 0, i32 1, i32 1, i32 6
  %queue.i.1.i = getelementptr %struct.at91_udc, ptr %_udc, i32 0, i32 1, i32 1, i32 1
  %arrayidx.2.i = getelementptr %struct.at91_udc, ptr %_udc, i32 0, i32 1, i32 2
  %stopped.2.i = getelementptr %struct.at91_udc, ptr %_udc, i32 0, i32 1, i32 2, i32 6
  %queue.i.2.i = getelementptr %struct.at91_udc, ptr %_udc, i32 0, i32 1, i32 2, i32 1
  %arrayidx.3.i = getelementptr %struct.at91_udc, ptr %_udc, i32 0, i32 1, i32 3
  %stopped.3.i = getelementptr %struct.at91_udc, ptr %_udc, i32 0, i32 1, i32 3, i32 6
  %queue.i.3.i = getelementptr %struct.at91_udc, ptr %_udc, i32 0, i32 1, i32 3, i32 1
  %arrayidx.4.i = getelementptr %struct.at91_udc, ptr %_udc, i32 0, i32 1, i32 4
  %stopped.4.i = getelementptr %struct.at91_udc, ptr %_udc, i32 0, i32 1, i32 4, i32 6
  %queue.i.4.i = getelementptr %struct.at91_udc, ptr %_udc, i32 0, i32 1, i32 4, i32 1
  %arrayidx.5.i = getelementptr %struct.at91_udc, ptr %_udc, i32 0, i32 1, i32 5
  %stopped.5.i = getelementptr %struct.at91_udc, ptr %_udc, i32 0, i32 1, i32 5, i32 6
  %queue.i.5.i = getelementptr %struct.at91_udc, ptr %_udc, i32 0, i32 1, i32 5, i32 1
  %incdec.ptr = getelementptr %struct.at91_udc, ptr %_udc, i32 0, i32 1, i32 2
  %incdec.ptr.1 = getelementptr %struct.at91_udc, ptr %_udc, i32 0, i32 1, i32 3
  %incdec.ptr.2 = getelementptr %struct.at91_udc, ptr %_udc, i32 0, i32 1, i32 4
  %incdec.ptr.3 = getelementptr %struct.at91_udc, ptr %_udc, i32 0, i32 1, i32 5
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end
  %dec187 = phi i32 [ 4, %if.end ], [ %dec, %cleanup.while.body_crit_edge ]
  %7 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr = getelementptr i8, ptr %8, i32 28
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !290
  %10 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr8 = getelementptr i8, ptr %11, i32 24
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #9, !srcloc !290
  %and = and i32 %12, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %while.body.while.end_crit_edge, label %if.end12

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end12:                                         ; preds = %while.body
  %and13 = and i32 %and, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end12
  %13 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr17 = getelementptr i8, ptr %14, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 -4865) #9, !srcloc !286
  %15 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr19 = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 4864) #9, !srcloc !286
  %17 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr21 = getelementptr i8, ptr %18, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 4096) #9, !srcloc !286
  %19 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr23 = getelementptr i8, ptr %20, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 4096) #9, !srcloc !286
  %21 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %addr, align 1
  %22 = ptrtoint ptr %driver1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver1.i, align 8
  %24 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  %26 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %speed.i, align 8
  %27 = ptrtoint ptr %clocked to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i172 = load i8, ptr %clocked, align 8
  %bf.clear.i = and i8 %bf.load.i172, -17
  store i8 %bf.clear.i, ptr %clocked, align 8
  %28 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load6.i = load i8, ptr %stopped.i, align 1
  %bf.set8.i = or i8 %bf.load6.i, 64
  store i8 %bf.set8.i, ptr %stopped.i, align 1
  %29 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %queue.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %30, %queue.i.i
  br i1 %cmp.i.not.i.i, label %if.then15.nuke.exit.i_crit_edge, label %while.cond.preheader.i.i

if.then15.nuke.exit.i_crit_edge:                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.i

while.cond.preheader.i.i:                         ; preds = %if.then15
  %31 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %queue.i.i, align 4
  %cmp.i9.not11.i.i = icmp eq ptr %32, %queue.i.i
  br i1 %cmp.i9.not11.i.i, label %while.cond.preheader.i.i.nuke.exit.i_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.nuke.exit.i_crit_edge:   ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %33 = phi ptr [ %35, %while.body.i.i.while.body.i.i_crit_edge ], [ %32, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 -56
  tail call fastcc void @done(ptr noundef %arrayidx.i, ptr noundef %add.ptr.i.i, i32 noundef -108) #9
  %34 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %queue.i.i, align 4
  %cmp.i9.not.i.i = icmp eq ptr %35, %queue.i.i
  br i1 %cmp.i9.not.i.i, label %while.body.i.i.nuke.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.body.i.i.nuke.exit.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.i

nuke.exit.i:                                      ; preds = %while.body.i.i.nuke.exit.i_crit_edge, %while.cond.preheader.i.i.nuke.exit.i_crit_edge, %if.then15.nuke.exit.i_crit_edge
  %36 = ptrtoint ptr %stopped.1.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load6.1.i = load i8, ptr %stopped.1.i, align 1
  %bf.set8.1.i = or i8 %bf.load6.1.i, 64
  store i8 %bf.set8.1.i, ptr %stopped.1.i, align 1
  %37 = ptrtoint ptr %queue.i.1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %queue.i.1.i, align 4
  %cmp.i.not.i.1.i = icmp eq ptr %38, %queue.i.1.i
  br i1 %cmp.i.not.i.1.i, label %nuke.exit.i.nuke.exit.1.i_crit_edge, label %while.cond.preheader.i.1.i

nuke.exit.i.nuke.exit.1.i_crit_edge:              ; preds = %nuke.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.1.i

while.cond.preheader.i.1.i:                       ; preds = %nuke.exit.i
  %39 = ptrtoint ptr %queue.i.1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %queue.i.1.i, align 4
  %cmp.i9.not11.i.1.i = icmp eq ptr %40, %queue.i.1.i
  br i1 %cmp.i9.not11.i.1.i, label %while.cond.preheader.i.1.i.nuke.exit.1.i_crit_edge, label %while.cond.preheader.i.1.i.while.body.i.1.i_crit_edge

while.cond.preheader.i.1.i.while.body.i.1.i_crit_edge: ; preds = %while.cond.preheader.i.1.i
  br label %while.body.i.1.i

while.cond.preheader.i.1.i.nuke.exit.1.i_crit_edge: ; preds = %while.cond.preheader.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.1.i

while.body.i.1.i:                                 ; preds = %while.body.i.1.i.while.body.i.1.i_crit_edge, %while.cond.preheader.i.1.i.while.body.i.1.i_crit_edge
  %41 = phi ptr [ %43, %while.body.i.1.i.while.body.i.1.i_crit_edge ], [ %40, %while.cond.preheader.i.1.i.while.body.i.1.i_crit_edge ]
  %add.ptr.i.1.i = getelementptr i8, ptr %41, i32 -56
  tail call fastcc void @done(ptr noundef %arrayidx.1.i, ptr noundef %add.ptr.i.1.i, i32 noundef -108) #9
  %42 = ptrtoint ptr %queue.i.1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %queue.i.1.i, align 4
  %cmp.i9.not.i.1.i = icmp eq ptr %43, %queue.i.1.i
  br i1 %cmp.i9.not.i.1.i, label %while.body.i.1.i.nuke.exit.1.i_crit_edge, label %while.body.i.1.i.while.body.i.1.i_crit_edge

while.body.i.1.i.while.body.i.1.i_crit_edge:      ; preds = %while.body.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.1.i

while.body.i.1.i.nuke.exit.1.i_crit_edge:         ; preds = %while.body.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.1.i

nuke.exit.1.i:                                    ; preds = %while.body.i.1.i.nuke.exit.1.i_crit_edge, %while.cond.preheader.i.1.i.nuke.exit.1.i_crit_edge, %nuke.exit.i.nuke.exit.1.i_crit_edge
  %44 = ptrtoint ptr %stopped.2.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load6.2.i = load i8, ptr %stopped.2.i, align 1
  %bf.set8.2.i = or i8 %bf.load6.2.i, 64
  store i8 %bf.set8.2.i, ptr %stopped.2.i, align 1
  %45 = ptrtoint ptr %queue.i.2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %queue.i.2.i, align 4
  %cmp.i.not.i.2.i = icmp eq ptr %46, %queue.i.2.i
  br i1 %cmp.i.not.i.2.i, label %nuke.exit.1.i.nuke.exit.2.i_crit_edge, label %while.cond.preheader.i.2.i

nuke.exit.1.i.nuke.exit.2.i_crit_edge:            ; preds = %nuke.exit.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.2.i

while.cond.preheader.i.2.i:                       ; preds = %nuke.exit.1.i
  %47 = ptrtoint ptr %queue.i.2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %queue.i.2.i, align 4
  %cmp.i9.not11.i.2.i = icmp eq ptr %48, %queue.i.2.i
  br i1 %cmp.i9.not11.i.2.i, label %while.cond.preheader.i.2.i.nuke.exit.2.i_crit_edge, label %while.cond.preheader.i.2.i.while.body.i.2.i_crit_edge

while.cond.preheader.i.2.i.while.body.i.2.i_crit_edge: ; preds = %while.cond.preheader.i.2.i
  br label %while.body.i.2.i

while.cond.preheader.i.2.i.nuke.exit.2.i_crit_edge: ; preds = %while.cond.preheader.i.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.2.i

while.body.i.2.i:                                 ; preds = %while.body.i.2.i.while.body.i.2.i_crit_edge, %while.cond.preheader.i.2.i.while.body.i.2.i_crit_edge
  %49 = phi ptr [ %51, %while.body.i.2.i.while.body.i.2.i_crit_edge ], [ %48, %while.cond.preheader.i.2.i.while.body.i.2.i_crit_edge ]
  %add.ptr.i.2.i = getelementptr i8, ptr %49, i32 -56
  tail call fastcc void @done(ptr noundef %arrayidx.2.i, ptr noundef %add.ptr.i.2.i, i32 noundef -108) #9
  %50 = ptrtoint ptr %queue.i.2.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %queue.i.2.i, align 4
  %cmp.i9.not.i.2.i = icmp eq ptr %51, %queue.i.2.i
  br i1 %cmp.i9.not.i.2.i, label %while.body.i.2.i.nuke.exit.2.i_crit_edge, label %while.body.i.2.i.while.body.i.2.i_crit_edge

while.body.i.2.i.while.body.i.2.i_crit_edge:      ; preds = %while.body.i.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.2.i

while.body.i.2.i.nuke.exit.2.i_crit_edge:         ; preds = %while.body.i.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.2.i

nuke.exit.2.i:                                    ; preds = %while.body.i.2.i.nuke.exit.2.i_crit_edge, %while.cond.preheader.i.2.i.nuke.exit.2.i_crit_edge, %nuke.exit.1.i.nuke.exit.2.i_crit_edge
  %52 = ptrtoint ptr %stopped.3.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load6.3.i = load i8, ptr %stopped.3.i, align 1
  %bf.set8.3.i = or i8 %bf.load6.3.i, 64
  store i8 %bf.set8.3.i, ptr %stopped.3.i, align 1
  %53 = ptrtoint ptr %queue.i.3.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %queue.i.3.i, align 4
  %cmp.i.not.i.3.i = icmp eq ptr %54, %queue.i.3.i
  br i1 %cmp.i.not.i.3.i, label %nuke.exit.2.i.nuke.exit.3.i_crit_edge, label %while.cond.preheader.i.3.i

nuke.exit.2.i.nuke.exit.3.i_crit_edge:            ; preds = %nuke.exit.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.3.i

while.cond.preheader.i.3.i:                       ; preds = %nuke.exit.2.i
  %55 = ptrtoint ptr %queue.i.3.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %queue.i.3.i, align 4
  %cmp.i9.not11.i.3.i = icmp eq ptr %56, %queue.i.3.i
  br i1 %cmp.i9.not11.i.3.i, label %while.cond.preheader.i.3.i.nuke.exit.3.i_crit_edge, label %while.cond.preheader.i.3.i.while.body.i.3.i_crit_edge

while.cond.preheader.i.3.i.while.body.i.3.i_crit_edge: ; preds = %while.cond.preheader.i.3.i
  br label %while.body.i.3.i

while.cond.preheader.i.3.i.nuke.exit.3.i_crit_edge: ; preds = %while.cond.preheader.i.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.3.i

while.body.i.3.i:                                 ; preds = %while.body.i.3.i.while.body.i.3.i_crit_edge, %while.cond.preheader.i.3.i.while.body.i.3.i_crit_edge
  %57 = phi ptr [ %59, %while.body.i.3.i.while.body.i.3.i_crit_edge ], [ %56, %while.cond.preheader.i.3.i.while.body.i.3.i_crit_edge ]
  %add.ptr.i.3.i = getelementptr i8, ptr %57, i32 -56
  tail call fastcc void @done(ptr noundef %arrayidx.3.i, ptr noundef %add.ptr.i.3.i, i32 noundef -108) #9
  %58 = ptrtoint ptr %queue.i.3.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %queue.i.3.i, align 4
  %cmp.i9.not.i.3.i = icmp eq ptr %59, %queue.i.3.i
  br i1 %cmp.i9.not.i.3.i, label %while.body.i.3.i.nuke.exit.3.i_crit_edge, label %while.body.i.3.i.while.body.i.3.i_crit_edge

while.body.i.3.i.while.body.i.3.i_crit_edge:      ; preds = %while.body.i.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.3.i

while.body.i.3.i.nuke.exit.3.i_crit_edge:         ; preds = %while.body.i.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.3.i

nuke.exit.3.i:                                    ; preds = %while.body.i.3.i.nuke.exit.3.i_crit_edge, %while.cond.preheader.i.3.i.nuke.exit.3.i_crit_edge, %nuke.exit.2.i.nuke.exit.3.i_crit_edge
  %60 = ptrtoint ptr %stopped.4.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load6.4.i = load i8, ptr %stopped.4.i, align 1
  %bf.set8.4.i = or i8 %bf.load6.4.i, 64
  store i8 %bf.set8.4.i, ptr %stopped.4.i, align 1
  %61 = ptrtoint ptr %queue.i.4.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %queue.i.4.i, align 4
  %cmp.i.not.i.4.i = icmp eq ptr %62, %queue.i.4.i
  br i1 %cmp.i.not.i.4.i, label %nuke.exit.3.i.nuke.exit.4.i_crit_edge, label %while.cond.preheader.i.4.i

nuke.exit.3.i.nuke.exit.4.i_crit_edge:            ; preds = %nuke.exit.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.4.i

while.cond.preheader.i.4.i:                       ; preds = %nuke.exit.3.i
  %63 = ptrtoint ptr %queue.i.4.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %queue.i.4.i, align 4
  %cmp.i9.not11.i.4.i = icmp eq ptr %64, %queue.i.4.i
  br i1 %cmp.i9.not11.i.4.i, label %while.cond.preheader.i.4.i.nuke.exit.4.i_crit_edge, label %while.cond.preheader.i.4.i.while.body.i.4.i_crit_edge

while.cond.preheader.i.4.i.while.body.i.4.i_crit_edge: ; preds = %while.cond.preheader.i.4.i
  br label %while.body.i.4.i

while.cond.preheader.i.4.i.nuke.exit.4.i_crit_edge: ; preds = %while.cond.preheader.i.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.4.i

while.body.i.4.i:                                 ; preds = %while.body.i.4.i.while.body.i.4.i_crit_edge, %while.cond.preheader.i.4.i.while.body.i.4.i_crit_edge
  %65 = phi ptr [ %67, %while.body.i.4.i.while.body.i.4.i_crit_edge ], [ %64, %while.cond.preheader.i.4.i.while.body.i.4.i_crit_edge ]
  %add.ptr.i.4.i = getelementptr i8, ptr %65, i32 -56
  tail call fastcc void @done(ptr noundef %arrayidx.4.i, ptr noundef %add.ptr.i.4.i, i32 noundef -108) #9
  %66 = ptrtoint ptr %queue.i.4.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %queue.i.4.i, align 4
  %cmp.i9.not.i.4.i = icmp eq ptr %67, %queue.i.4.i
  br i1 %cmp.i9.not.i.4.i, label %while.body.i.4.i.nuke.exit.4.i_crit_edge, label %while.body.i.4.i.while.body.i.4.i_crit_edge

while.body.i.4.i.while.body.i.4.i_crit_edge:      ; preds = %while.body.i.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.4.i

while.body.i.4.i.nuke.exit.4.i_crit_edge:         ; preds = %while.body.i.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.4.i

nuke.exit.4.i:                                    ; preds = %while.body.i.4.i.nuke.exit.4.i_crit_edge, %while.cond.preheader.i.4.i.nuke.exit.4.i_crit_edge, %nuke.exit.3.i.nuke.exit.4.i_crit_edge
  %68 = ptrtoint ptr %stopped.5.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load6.5.i = load i8, ptr %stopped.5.i, align 1
  %bf.set8.5.i = or i8 %bf.load6.5.i, 64
  store i8 %bf.set8.5.i, ptr %stopped.5.i, align 1
  %69 = ptrtoint ptr %queue.i.5.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %queue.i.5.i, align 4
  %cmp.i.not.i.5.i = icmp eq ptr %70, %queue.i.5.i
  br i1 %cmp.i.not.i.5.i, label %nuke.exit.4.i.nuke.exit.5.i_crit_edge, label %while.cond.preheader.i.5.i

nuke.exit.4.i.nuke.exit.5.i_crit_edge:            ; preds = %nuke.exit.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.5.i

while.cond.preheader.i.5.i:                       ; preds = %nuke.exit.4.i
  %71 = ptrtoint ptr %queue.i.5.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %queue.i.5.i, align 4
  %cmp.i9.not11.i.5.i = icmp eq ptr %72, %queue.i.5.i
  br i1 %cmp.i9.not11.i.5.i, label %while.cond.preheader.i.5.i.nuke.exit.5.i_crit_edge, label %while.cond.preheader.i.5.i.while.body.i.5.i_crit_edge

while.cond.preheader.i.5.i.while.body.i.5.i_crit_edge: ; preds = %while.cond.preheader.i.5.i
  br label %while.body.i.5.i

while.cond.preheader.i.5.i.nuke.exit.5.i_crit_edge: ; preds = %while.cond.preheader.i.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.5.i

while.body.i.5.i:                                 ; preds = %while.body.i.5.i.while.body.i.5.i_crit_edge, %while.cond.preheader.i.5.i.while.body.i.5.i_crit_edge
  %73 = phi ptr [ %75, %while.body.i.5.i.while.body.i.5.i_crit_edge ], [ %72, %while.cond.preheader.i.5.i.while.body.i.5.i_crit_edge ]
  %add.ptr.i.5.i = getelementptr i8, ptr %73, i32 -56
  tail call fastcc void @done(ptr noundef %arrayidx.5.i, ptr noundef %add.ptr.i.5.i, i32 noundef -108) #9
  %74 = ptrtoint ptr %queue.i.5.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile ptr, ptr %queue.i.5.i, align 4
  %cmp.i9.not.i.5.i = icmp eq ptr %75, %queue.i.5.i
  br i1 %cmp.i9.not.i.5.i, label %while.body.i.5.i.nuke.exit.5.i_crit_edge, label %while.body.i.5.i.while.body.i.5.i_crit_edge

while.body.i.5.i.while.body.i.5.i_crit_edge:      ; preds = %while.body.i.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.5.i

while.body.i.5.i.nuke.exit.5.i_crit_edge:         ; preds = %while.body.i.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.5.i

nuke.exit.5.i:                                    ; preds = %while.body.i.5.i.nuke.exit.5.i_crit_edge, %while.cond.preheader.i.5.i.nuke.exit.5.i_crit_edge, %nuke.exit.4.i.nuke.exit.5.i_crit_edge
  %tobool.not26.i = icmp eq ptr %23, null
  %tobool.not.i173 = select i1 %cmp.i, i1 true, i1 %tobool.not26.i
  br i1 %tobool.not.i173, label %nuke.exit.5.i.reset_gadget.exit_crit_edge, label %if.then9.i

nuke.exit.5.i.reset_gadget.exit_crit_edge:        ; preds = %nuke.exit.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %reset_gadget.exit

if.then9.i:                                       ; preds = %nuke.exit.5.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  tail call void @usb_gadget_udc_reset(ptr noundef %_udc, ptr noundef nonnull %23) #9
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  br label %reset_gadget.exit

reset_gadget.exit:                                ; preds = %if.then9.i, %nuke.exit.5.i.reset_gadget.exit_crit_edge
  tail call fastcc void @udc_reinit(ptr noundef %_udc) #9
  %76 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr28 = getelementptr i8, ptr %77, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 32768) #9, !srcloc !286
  %78 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 2, ptr %speed.i, align 8
  %79 = ptrtoint ptr %clocked to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load29 = load i8, ptr %clocked, align 8
  %bf.clear30 = and i8 %bf.load29, -17
  store i8 %bf.clear30, ptr %clocked, align 8
  %80 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr32 = getelementptr i8, ptr %81, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 1) #9, !srcloc !286
  br label %cleanup

if.else:                                          ; preds = %if.end12
  %and33 = and i32 %and, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else64, label %if.then35

if.then35:                                        ; preds = %if.else
  %82 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr37 = getelementptr i8, ptr %83, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 256) #9, !srcloc !286
  %84 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr39 = getelementptr i8, ptr %85, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 512) #9, !srcloc !286
  %86 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr41 = getelementptr i8, ptr %87, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 256) #9, !srcloc !286
  %88 = ptrtoint ptr %clocked to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load43 = load i8, ptr %clocked, align 8
  %89 = and i8 %bf.load43, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool47.not = icmp eq i8 %89, 0
  br i1 %tobool47.not, label %if.end49, label %if.then35.cleanup_crit_edge

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end49:                                         ; preds = %if.then35
  %bf.set53 = or i8 %bf.load43, 16
  %90 = ptrtoint ptr %clocked to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %bf.set53, ptr %clocked, align 8
  %91 = ptrtoint ptr %driver1.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %driver1.i, align 8
  %tobool54.not = icmp eq ptr %92, null
  br i1 %tobool54.not, label %if.end49.cleanup_crit_edge, label %land.lhs.true

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end49
  %suspend = getelementptr inbounds %struct.usb_gadget_driver, ptr %92, i32 0, i32 6
  %93 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %suspend, align 4
  %tobool56.not = icmp eq ptr %94, null
  br i1 %tobool56.not, label %land.lhs.true.cleanup_crit_edge, label %if.then57

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then57:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %95 = ptrtoint ptr %driver1.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %driver1.i, align 8
  %suspend60 = getelementptr inbounds %struct.usb_gadget_driver, ptr %96, i32 0, i32 6
  %97 = ptrtoint ptr %suspend60 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %suspend60, align 4
  tail call void %98(ptr noundef %_udc) #9
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  br label %cleanup

if.else64:                                        ; preds = %if.else
  %and65 = and i32 %and, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.else98, label %if.then67

if.then67:                                        ; preds = %if.else64
  %99 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr69 = getelementptr i8, ptr %100, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 512) #9, !srcloc !286
  %101 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr71 = getelementptr i8, ptr %102, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 256) #9, !srcloc !286
  %103 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr73 = getelementptr i8, ptr %104, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 512) #9, !srcloc !286
  %105 = ptrtoint ptr %clocked to i32
  call void @__asan_load1_noabort(i32 %105)
  %bf.load75 = load i8, ptr %clocked, align 8
  %106 = and i8 %bf.load75, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool79.not = icmp eq i8 %106, 0
  br i1 %tobool79.not, label %if.then67.cleanup_crit_edge, label %if.end81

if.then67.cleanup_crit_edge:                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end81:                                         ; preds = %if.then67
  %bf.clear84 = and i8 %bf.load75, -17
  %107 = ptrtoint ptr %clocked to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %bf.clear84, ptr %clocked, align 8
  %108 = ptrtoint ptr %driver1.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %driver1.i, align 8
  %tobool87.not = icmp eq ptr %109, null
  br i1 %tobool87.not, label %if.end81.cleanup_crit_edge, label %land.lhs.true88

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true88:                                  ; preds = %if.end81
  %resume = getelementptr inbounds %struct.usb_gadget_driver, ptr %109, i32 0, i32 7
  %110 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %resume, align 4
  %tobool90.not = icmp eq ptr %111, null
  br i1 %tobool90.not, label %land.lhs.true88.cleanup_crit_edge, label %if.then91

land.lhs.true88.cleanup_crit_edge:                ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then91:                                        ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %112 = ptrtoint ptr %driver1.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %driver1.i, align 8
  %resume94 = getelementptr inbounds %struct.usb_gadget_driver, ptr %113, i32 0, i32 7
  %114 = ptrtoint ptr %resume94 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %resume94, align 4
  tail call void %115(ptr noundef %_udc) #9
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  br label %cleanup

if.else98:                                        ; preds = %if.else64
  %and100 = and i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.else98.if.end103_crit_edge, label %if.then102

if.else98.if.end103_crit_edge:                    ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.then102:                                       ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @handle_ep0(ptr noundef %_udc)
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %if.else98.if.end103_crit_edge
  %and106 = and i32 %and, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.end103.if.end110_crit_edge, label %if.then108

if.end103.if.end110_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

if.then108:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  %call109 = tail call fastcc i32 @handle_ep(ptr noundef %arrayidx.1.i)
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %if.end103.if.end110_crit_edge
  %and106.1 = and i32 %and, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106.1)
  %tobool107.not.1 = icmp eq i32 %and106.1, 0
  br i1 %tobool107.not.1, label %if.end110.if.end110.1_crit_edge, label %if.then108.1

if.end110.if.end110.1_crit_edge:                  ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110.1

if.then108.1:                                     ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  %call109.1 = tail call fastcc i32 @handle_ep(ptr noundef %incdec.ptr)
  br label %if.end110.1

if.end110.1:                                      ; preds = %if.then108.1, %if.end110.if.end110.1_crit_edge
  %and106.2 = and i32 %and, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106.2)
  %tobool107.not.2 = icmp eq i32 %and106.2, 0
  br i1 %tobool107.not.2, label %if.end110.1.if.end110.2_crit_edge, label %if.then108.2

if.end110.1.if.end110.2_crit_edge:                ; preds = %if.end110.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110.2

if.then108.2:                                     ; preds = %if.end110.1
  call void @__sanitizer_cov_trace_pc() #11
  %call109.2 = tail call fastcc i32 @handle_ep(ptr noundef %incdec.ptr.1)
  br label %if.end110.2

if.end110.2:                                      ; preds = %if.then108.2, %if.end110.1.if.end110.2_crit_edge
  %and106.3 = and i32 %and, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106.3)
  %tobool107.not.3 = icmp eq i32 %and106.3, 0
  br i1 %tobool107.not.3, label %if.end110.2.if.end110.3_crit_edge, label %if.then108.3

if.end110.2.if.end110.3_crit_edge:                ; preds = %if.end110.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110.3

if.then108.3:                                     ; preds = %if.end110.2
  call void @__sanitizer_cov_trace_pc() #11
  %call109.3 = tail call fastcc i32 @handle_ep(ptr noundef %incdec.ptr.2)
  br label %if.end110.3

if.end110.3:                                      ; preds = %if.then108.3, %if.end110.2.if.end110.3_crit_edge
  %and106.4 = and i32 %and, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106.4)
  %tobool107.not.4 = icmp eq i32 %and106.4, 0
  br i1 %tobool107.not.4, label %if.end110.3.cleanup_crit_edge, label %if.then108.4

if.end110.3.cleanup_crit_edge:                    ; preds = %if.end110.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then108.4:                                     ; preds = %if.end110.3
  call void @__sanitizer_cov_trace_pc() #11
  %call109.4 = tail call fastcc i32 @handle_ep(ptr noundef %incdec.ptr.3)
  br label %cleanup

cleanup:                                          ; preds = %if.then108.4, %if.end110.3.cleanup_crit_edge, %if.then91, %land.lhs.true88.cleanup_crit_edge, %if.end81.cleanup_crit_edge, %if.then67.cleanup_crit_edge, %if.then57, %land.lhs.true.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.then35.cleanup_crit_edge, %reset_gadget.exit
  %dec = add nsw i32 %dec187, -1
  %tobool5.not = icmp eq i32 %dec187, 0
  br i1 %tobool5.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge
  br i1 %tobool.not, label %if.then115, label %while.end.if.end116_crit_edge

while.end.if.end116_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116

if.then115:                                       ; preds = %while.end
  %116 = ptrtoint ptr %clocked to i32
  call void @__asan_load1_noabort(i32 %116)
  %bf.load.i175 = load i8, ptr %clocked, align 8
  %117 = and i8 %bf.load.i175, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i176 = icmp eq i8 %117, 0
  br i1 %tobool.not.i176, label %if.then115.if.end116_crit_edge, label %if.end.i180

if.then115.if.end116_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116

if.end.i180:                                      ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear3.i = and i8 %bf.load.i175, -33
  %118 = ptrtoint ptr %clocked to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %bf.clear3.i, ptr %clocked, align 8
  %119 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %speed.i, align 8
  %fclk.i178 = getelementptr inbounds %struct.at91_udc, ptr %_udc, i32 0, i32 8
  %120 = ptrtoint ptr %fclk.i178 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %fclk.i178, align 4
  tail call void @clk_disable(ptr noundef %121) #9
  %iclk.i179 = getelementptr inbounds %struct.at91_udc, ptr %_udc, i32 0, i32 7
  %122 = ptrtoint ptr %iclk.i179 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %iclk.i179, align 8
  tail call void @clk_disable(ptr noundef %123) #9
  br label %if.end116

if.end116:                                        ; preds = %if.end.i180, %if.then115.if.end116_crit_edge, %while.end.if.end116_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_vbus_timer_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %board = getelementptr i8, ptr %work, i32 -128
  %0 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board, align 4
  %call = tail call i32 @gpiod_get_value_cansleep(ptr noundef %1) #9
  %vbus.i = getelementptr i8, ptr %work, i32 -132
  %2 = ptrtoint ptr %vbus.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %vbus.i, align 8
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %bf.cast.i)
  %cmp.not.i = icmp eq i32 %call, %bf.cast.i
  br i1 %cmp.not.i, label %entry.at91_vbus_update.exit_crit_edge, label %if.then.i

entry.at91_vbus_update.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %at91_vbus_update.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %work, i32 -1572
  %lock.i.i = getelementptr i8, ptr %work, i32 -92
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6.not.i.i = icmp eq i32 %call, 0
  %3 = ptrtoint ptr %vbus.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i.i = load i8, ptr %vbus.i, align 8
  %bf.shl.i.i = select i1 %cmp6.not.i.i, i8 0, i8 -128
  %bf.clear.i.i = and i8 %bf.load.i.i, 127
  %bf.set.i.i = or i8 %bf.clear.i.i, %bf.shl.i.i
  store i8 %bf.set.i.i, ptr %vbus.i, align 8
  %driver.i.i = getelementptr i8, ptr %work, i32 -140
  %4 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  %.is_active.i.i = select i1 %tobool.not.i.i, i32 0, i32 %call
  tail call fastcc void @pullup(ptr noundef %add.ptr, i32 noundef %.is_active.i.i) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call3.i.i) #9
  br label %at91_vbus_update.exit

at91_vbus_update.exit:                            ; preds = %if.then.i, %entry.at91_vbus_update.exit_crit_edge
  %pprev.i.i = getelementptr i8, ptr %work, i32 -44
  %6 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i8.not = icmp eq ptr %7, null
  br i1 %tobool.not.i.i8.not, label %if.then, label %at91_vbus_update.exit.if.end_crit_edge

at91_vbus_update.exit.if.end_crit_edge:           ; preds = %at91_vbus_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %at91_vbus_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  %vbus_timer = getelementptr i8, ptr %work, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %8, 100
  %call4 = tail call i32 @mod_timer(ptr noundef %vbus_timer, i32 noundef %add) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %at91_vbus_update.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_vbus_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vbus_timer_work = getelementptr i8, ptr %t, i32 48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %vbus_timer_work) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_vbus_irq(i32 noundef %irq, ptr noundef %_udc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #9
  %board = getelementptr inbounds %struct.at91_udc, ptr %_udc, i32 0, i32 6
  %1 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %board, align 4
  %call = tail call i32 @gpiod_get_value(ptr noundef %2) #9
  %vbus.i = getelementptr inbounds %struct.at91_udc, ptr %_udc, i32 0, i32 4
  %3 = ptrtoint ptr %vbus.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i = load i8, ptr %vbus.i, align 8
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %bf.cast.i)
  %cmp.not.i = icmp eq i32 %call, %bf.cast.i
  br i1 %cmp.not.i, label %entry.at91_vbus_update.exit_crit_edge, label %if.then.i

entry.at91_vbus_update.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %at91_vbus_update.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i.i = getelementptr inbounds %struct.at91_udc, ptr %_udc, i32 0, i32 13
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6.not.i.i = icmp eq i32 %call, 0
  %4 = ptrtoint ptr %vbus.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i.i = load i8, ptr %vbus.i, align 8
  %bf.shl.i.i = select i1 %cmp6.not.i.i, i8 0, i8 -128
  %bf.clear.i.i = and i8 %bf.load.i.i, 127
  %bf.set.i.i = or i8 %bf.clear.i.i, %bf.shl.i.i
  store i8 %bf.set.i.i, ptr %vbus.i, align 8
  %driver.i.i = getelementptr inbounds %struct.at91_udc, ptr %_udc, i32 0, i32 2
  %5 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  %.is_active.i.i = select i1 %tobool.not.i.i, i32 0, i32 %call
  tail call fastcc void @pullup(ptr noundef %_udc, i32 noundef %.is_active.i.i) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call3.i.i) #9
  br label %at91_vbus_update.exit

at91_vbus_update.exit:                            ; preds = %if.then.i, %entry.at91_vbus_update.exit_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @desc_to_gpio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get_from_of_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91rm9200_udc_init(ptr nocapture noundef %udc) #2 align 64 {
for.inc.5:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %maxpacket = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 0, i32 4
  %0 = ptrtoint ptr %maxpacket to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 8, ptr %maxpacket, align 4
  %maxpacket3.1 = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 1, i32 4
  %1 = ptrtoint ptr %maxpacket3.1 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 64, ptr %maxpacket3.1, align 4
  %maxpacket3.2 = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 2, i32 4
  %2 = ptrtoint ptr %maxpacket3.2 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 64, ptr %maxpacket3.2, align 4
  %maxpacket.3 = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 3, i32 4
  %3 = ptrtoint ptr %maxpacket.3 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 8, ptr %maxpacket.3, align 4
  %maxpacket5.4 = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 4, i32 4
  %4 = ptrtoint ptr %maxpacket5.4 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 256, ptr %maxpacket5.4, align 4
  %maxpacket5.5 = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 5, i32 4
  %5 = ptrtoint ptr %maxpacket5.5 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 256, ptr %maxpacket5.5, align 4
  %pullup_pin = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %pullup_pin to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pullup_pin, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.body, label %if.end11

do.body:                                          ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91rm9200_udc_init.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91rm9200_udc_init, %cleanup)) #9
          to label %if.then10 [label %cleanup], !srcloc !287

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @at91rm9200_udc_init.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.23) #9
  br label %cleanup

if.end11:                                         ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = tail call i32 @gpiod_is_active_low(ptr noundef nonnull %7) #9
  %call17 = tail call i32 @gpiod_direction_output(ptr noundef nonnull %7, i32 noundef %call16) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10, %do.body
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -19, %if.then10 ], [ -19, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91rm9200_udc_pullup(ptr nocapture noundef readonly %udc, i32 noundef %is_on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool.not = icmp ne i32 %is_on, 0
  %pullup_pin2 = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 6, i32 2
  %0 = ptrtoint ptr %pullup_pin2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pullup_pin2, align 4
  %. = zext i1 %tobool.not to i32
  tail call void @gpiod_set_value(ptr noundef %1, i32 noundef %.) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_is_active_low(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal i32 @at91sam9260_udc_init(ptr nocapture noundef writeonly %udc) #5 align 64 {
for.inc.5:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %maxpacket = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 0, i32 4
  %0 = ptrtoint ptr %maxpacket to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 64, ptr %maxpacket, align 4
  %maxpacket.1 = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 1, i32 4
  %1 = ptrtoint ptr %maxpacket.1 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 64, ptr %maxpacket.1, align 4
  %maxpacket.2 = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 2, i32 4
  %2 = ptrtoint ptr %maxpacket.2 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 64, ptr %maxpacket.2, align 4
  %maxpacket.3 = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 3, i32 4
  %3 = ptrtoint ptr %maxpacket.3 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 64, ptr %maxpacket.3, align 4
  %maxpacket3.4 = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 4, i32 4
  %4 = ptrtoint ptr %maxpacket3.4 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 512, ptr %maxpacket3.4, align 4
  %maxpacket3.5 = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 5, i32 4
  %5 = ptrtoint ptr %maxpacket3.5 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 512, ptr %maxpacket3.5, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91sam9260_udc_pullup(ptr nocapture noundef readonly %udc, i32 noundef %is_on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %udp_baseaddr = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 11
  %0 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 116
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !290
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool.not = icmp eq i32 %is_on, 0
  %and = and i32 %2, -513
  %masksel = select i1 %tobool.not, i32 0, i32 512
  %txvc.0 = or i32 %and, %masksel
  %3 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr2 = getelementptr i8, ptr %4, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %txvc.0) #9, !srcloc !286
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91sam9261_udc_init(ptr nocapture noundef %udc) #2 align 64 {
for.inc.5:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %maxpacket = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 0, i32 4
  %0 = ptrtoint ptr %maxpacket to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 8, ptr %maxpacket, align 4
  %maxpacket3.1 = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 1, i32 4
  %1 = ptrtoint ptr %maxpacket3.1 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 64, ptr %maxpacket3.1, align 4
  %maxpacket3.2 = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 2, i32 4
  %2 = ptrtoint ptr %maxpacket3.2 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 64, ptr %maxpacket3.2, align 4
  %maxpacket3.3 = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 3, i32 4
  %3 = ptrtoint ptr %maxpacket3.3 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 64, ptr %maxpacket3.3, align 4
  %maxpacket5.4 = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 4, i32 4
  %4 = ptrtoint ptr %maxpacket5.4 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 256, ptr %maxpacket5.4, align 4
  %maxpacket5.5 = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 5, i32 4
  %5 = ptrtoint ptr %maxpacket5.5 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 256, ptr %maxpacket5.5, align 4
  %pdev = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 9
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %9, ptr noundef nonnull @.str.24) #9
  %matrix = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 16
  %10 = ptrtoint ptr %matrix to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %matrix, align 8
  %cmp.i.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %11 = ptrtoint ptr %call to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %11, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91sam9261_udc_pullup(ptr nocapture noundef readonly %udc, i32 noundef %is_on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool.not = icmp eq i32 %is_on, 0
  %spec.store.select = select i1 %tobool.not, i32 0, i32 1073741824
  %matrix = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 16
  %0 = ptrtoint ptr %matrix to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matrix, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 52, i32 noundef 1073741824, i32 noundef %spec.store.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal i32 @at91sam9263_udc_init(ptr nocapture noundef writeonly %udc) #5 align 64 {
for.inc.5:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %maxpacket = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 0, i32 4
  %0 = ptrtoint ptr %maxpacket to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 64, ptr %maxpacket, align 4
  %maxpacket.1 = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 1, i32 4
  %1 = ptrtoint ptr %maxpacket.1 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 64, ptr %maxpacket.1, align 4
  %maxpacket.2 = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 2, i32 4
  %2 = ptrtoint ptr %maxpacket.2 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 64, ptr %maxpacket.2, align 4
  %maxpacket.3 = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 3, i32 4
  %3 = ptrtoint ptr %maxpacket.3 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 64, ptr %maxpacket.3, align 4
  %maxpacket3.4 = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 4, i32 4
  %4 = ptrtoint ptr %maxpacket3.4 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 256, ptr %maxpacket3.4, align 4
  %maxpacket3.5 = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 5, i32 4
  %5 = ptrtoint ptr %maxpacket3.5 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 256, ptr %maxpacket3.5, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_get_frame(ptr nocapture noundef readonly %gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %clocked = getelementptr inbounds %struct.at91_udc, ptr %gadget, i32 0, i32 4
  %0 = ptrtoint ptr %clocked to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %clocked, align 8
  %1 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %udp_baseaddr = getelementptr inbounds %struct.at91_udc, ptr %gadget, i32 0, i32 11
  %2 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udp_baseaddr, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !290
  %and = and i32 %4, 2047
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_wakeup(ptr noundef %gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_wakeup.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_wakeup, %do.body6)) #9
          to label %if.then [label %do.body6], !srcloc !287

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @at91_wakeup.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25) #9
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.at91_udc, ptr %gadget, i32 0, i32 13
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %clocked = getelementptr inbounds %struct.at91_udc, ptr %gadget, i32 0, i32 4
  %0 = ptrtoint ptr %clocked to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %clocked, align 8
  %1 = and i8 %bf.load, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %1)
  %.not = icmp eq i8 %1, 48
  br i1 %.not, label %if.end21, label %do.body6.done_crit_edge

do.body6.done_crit_edge:                          ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end21:                                         ; preds = %do.body6
  %udp_baseaddr = getelementptr inbounds %struct.at91_udc, ptr %gadget, i32 0, i32 11
  %2 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !290
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.end21.done_crit_edge, label %if.end25

if.end21.done_crit_edge:                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %4, 4
  %5 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr27 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %or) #9, !srcloc !286
  br label %done

done:                                             ; preds = %if.end25, %if.end21.done_crit_edge, %do.body6.done_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_set_selfpowered(ptr noundef %gadget, i32 noundef %is_on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.at91_udc, ptr %gadget, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %cmp6.not = icmp eq i32 %is_on, 0
  %is_selfpowered = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 17
  %0 = ptrtoint ptr %is_selfpowered to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %is_selfpowered, align 4
  %bf.shl = select i1 %cmp6.not, i32 0, i32 262144
  %bf.clear = and i32 %bf.load, -262145
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %is_selfpowered, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_vbus_session(ptr noundef %gadget, i32 noundef %is_active) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.at91_udc, ptr %gadget, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_active)
  %cmp6.not = icmp eq i32 %is_active, 0
  %vbus = getelementptr inbounds %struct.at91_udc, ptr %gadget, i32 0, i32 4
  %0 = ptrtoint ptr %vbus to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %vbus, align 8
  %bf.shl = select i1 %cmp6.not, i8 0, i8 -128
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %vbus, align 8
  %driver = getelementptr inbounds %struct.at91_udc, ptr %gadget, i32 0, i32 2
  %1 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver, align 8
  %tobool.not = icmp eq ptr %2, null
  %.is_active = select i1 %tobool.not, i32 0, i32 %is_active
  tail call fastcc void @pullup(ptr noundef %gadget, i32 noundef %.is_active)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_pullup(ptr noundef %gadget, i32 noundef %is_on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.at91_udc, ptr %gadget, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool = icmp ne i32 %is_on, 0
  %lnot.ext = zext i1 %tobool to i32
  %enabled = getelementptr inbounds %struct.at91_udc, ptr %gadget, i32 0, i32 4
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %enabled, align 8
  %bf.shl = select i1 %tobool, i8 64, i8 0
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %enabled, align 8
  tail call fastcc void @pullup(ptr noundef %gadget, i32 noundef %lnot.ext)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @at91_start(ptr nocapture noundef %gadget, ptr noundef %driver) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver1 = getelementptr inbounds %struct.at91_udc, ptr %gadget, i32 0, i32 2
  %0 = ptrtoint ptr %driver1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %driver, ptr %driver1, align 8
  %pdev = getelementptr inbounds %struct.at91_udc, ptr %gadget, i32 0, i32 9
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %of_node4 = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 11, i32 27
  %5 = ptrtoint ptr %of_node4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %of_node4, align 8
  %enabled = getelementptr inbounds %struct.at91_udc, ptr %gadget, i32 0, i32 4
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %enabled, align 8
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %enabled, align 8
  %is_selfpowered = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 17
  %7 = ptrtoint ptr %is_selfpowered to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load6 = load i32, ptr %is_selfpowered, align 4
  %bf.set8 = or i32 %bf.load6, 262144
  store i32 %bf.set8, ptr %is_selfpowered, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_stop(ptr noundef %gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.at91_udc, ptr %gadget, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %enabled = getelementptr inbounds %struct.at91_udc, ptr %gadget, i32 0, i32 4
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %enabled, align 8
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %enabled, align 8
  %udp_baseaddr = getelementptr inbounds %struct.at91_udc, ptr %gadget, i32 0, i32 11
  %1 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr6 = getelementptr i8, ptr %2, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 -1) #9, !srcloc !286
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  %driver = getelementptr inbounds %struct.at91_udc, ptr %gadget, i32 0, i32 2
  %3 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %driver, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pullup(ptr noundef %udc, i32 noundef %is_on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 4
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %bf.load)
  %.not = icmp ugt i8 %bf.load, -65
  %is_on.addr.0 = select i1 %.not, i32 %is_on, i32 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pullup.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pullup, %do.end)) #9
          to label %if.then9 [label %do.end], !srcloc !287

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on.addr.0)
  %tobool10.not = icmp eq i32 %is_on.addr.0, 0
  %cond = select i1 %tobool10.not, ptr @.str.30, ptr @.str.29
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pullup.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.28, ptr noundef nonnull %cond) #9
  br label %do.end

do.end:                                           ; preds = %if.then9, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on.addr.0)
  %tobool12.not = icmp eq i32 %is_on.addr.0, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %do.end
  %1 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i = load i8, ptr %enabled, align 8
  %2 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then13.clk_on.exit_crit_edge

if.then13.clk_on.exit_crit_edge:                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_on.exit

if.end.i:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set.i = or i8 %bf.load.i, 32
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %bf.set.i, ptr %enabled, align 8
  %iclk.i = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 7
  %4 = ptrtoint ptr %iclk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iclk.i, align 8
  %call.i = tail call i32 @clk_enable(ptr noundef %5) #9
  %fclk.i = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 8
  %6 = ptrtoint ptr %fclk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fclk.i, align 4
  %call4.i = tail call i32 @clk_enable(ptr noundef %7) #9
  br label %clk_on.exit

clk_on.exit:                                      ; preds = %if.end.i, %if.then13.clk_on.exit_crit_edge
  %udp_baseaddr = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 11
  %8 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 512) #9, !srcloc !286
  %10 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr15 = getelementptr i8, ptr %11, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 0) #9, !srcloc !286
  br label %if.end20

if.else:                                          ; preds = %do.end
  %driver1.i = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 2
  %12 = ptrtoint ptr %driver1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver1.i, align 8
  %speed.i = getelementptr inbounds %struct.usb_gadget, ptr %udc, i32 0, i32 5
  %14 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  %16 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %speed.i, align 8
  %17 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i43 = load i8, ptr %enabled, align 8
  %bf.clear.i = and i8 %bf.load.i43, -17
  store i8 %bf.clear.i, ptr %enabled, align 8
  %arrayidx.i = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 0
  %stopped.i = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 0, i32 6
  %18 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load6.i = load i8, ptr %stopped.i, align 1
  %bf.set8.i = or i8 %bf.load6.i, 64
  store i8 %bf.set8.i, ptr %stopped.i, align 1
  %queue.i.i = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %queue.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %20, %queue.i.i
  br i1 %cmp.i.not.i.i, label %if.else.nuke.exit.i_crit_edge, label %while.cond.preheader.i.i

if.else.nuke.exit.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.i

while.cond.preheader.i.i:                         ; preds = %if.else
  %21 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %queue.i.i, align 4
  %cmp.i9.not11.i.i = icmp eq ptr %22, %queue.i.i
  br i1 %cmp.i9.not11.i.i, label %while.cond.preheader.i.i.nuke.exit.i_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.nuke.exit.i_crit_edge:   ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %23 = phi ptr [ %25, %while.body.i.i.while.body.i.i_crit_edge ], [ %22, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 -56
  tail call fastcc void @done(ptr noundef %arrayidx.i, ptr noundef %add.ptr.i.i, i32 noundef -108) #9
  %24 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %queue.i.i, align 4
  %cmp.i9.not.i.i = icmp eq ptr %25, %queue.i.i
  br i1 %cmp.i9.not.i.i, label %while.body.i.i.nuke.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.body.i.i.nuke.exit.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.i

nuke.exit.i:                                      ; preds = %while.body.i.i.nuke.exit.i_crit_edge, %while.cond.preheader.i.i.nuke.exit.i_crit_edge, %if.else.nuke.exit.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 1
  %stopped.1.i = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 1, i32 6
  %26 = ptrtoint ptr %stopped.1.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load6.1.i = load i8, ptr %stopped.1.i, align 1
  %bf.set8.1.i = or i8 %bf.load6.1.i, 64
  store i8 %bf.set8.1.i, ptr %stopped.1.i, align 1
  %queue.i.1.i = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 1, i32 1
  %27 = ptrtoint ptr %queue.i.1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %queue.i.1.i, align 4
  %cmp.i.not.i.1.i = icmp eq ptr %28, %queue.i.1.i
  br i1 %cmp.i.not.i.1.i, label %nuke.exit.i.nuke.exit.1.i_crit_edge, label %while.cond.preheader.i.1.i

nuke.exit.i.nuke.exit.1.i_crit_edge:              ; preds = %nuke.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.1.i

while.cond.preheader.i.1.i:                       ; preds = %nuke.exit.i
  %29 = ptrtoint ptr %queue.i.1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %queue.i.1.i, align 4
  %cmp.i9.not11.i.1.i = icmp eq ptr %30, %queue.i.1.i
  br i1 %cmp.i9.not11.i.1.i, label %while.cond.preheader.i.1.i.nuke.exit.1.i_crit_edge, label %while.cond.preheader.i.1.i.while.body.i.1.i_crit_edge

while.cond.preheader.i.1.i.while.body.i.1.i_crit_edge: ; preds = %while.cond.preheader.i.1.i
  br label %while.body.i.1.i

while.cond.preheader.i.1.i.nuke.exit.1.i_crit_edge: ; preds = %while.cond.preheader.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.1.i

while.body.i.1.i:                                 ; preds = %while.body.i.1.i.while.body.i.1.i_crit_edge, %while.cond.preheader.i.1.i.while.body.i.1.i_crit_edge
  %31 = phi ptr [ %33, %while.body.i.1.i.while.body.i.1.i_crit_edge ], [ %30, %while.cond.preheader.i.1.i.while.body.i.1.i_crit_edge ]
  %add.ptr.i.1.i = getelementptr i8, ptr %31, i32 -56
  tail call fastcc void @done(ptr noundef %arrayidx.1.i, ptr noundef %add.ptr.i.1.i, i32 noundef -108) #9
  %32 = ptrtoint ptr %queue.i.1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %queue.i.1.i, align 4
  %cmp.i9.not.i.1.i = icmp eq ptr %33, %queue.i.1.i
  br i1 %cmp.i9.not.i.1.i, label %while.body.i.1.i.nuke.exit.1.i_crit_edge, label %while.body.i.1.i.while.body.i.1.i_crit_edge

while.body.i.1.i.while.body.i.1.i_crit_edge:      ; preds = %while.body.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.1.i

while.body.i.1.i.nuke.exit.1.i_crit_edge:         ; preds = %while.body.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.1.i

nuke.exit.1.i:                                    ; preds = %while.body.i.1.i.nuke.exit.1.i_crit_edge, %while.cond.preheader.i.1.i.nuke.exit.1.i_crit_edge, %nuke.exit.i.nuke.exit.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 2
  %stopped.2.i = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 2, i32 6
  %34 = ptrtoint ptr %stopped.2.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load6.2.i = load i8, ptr %stopped.2.i, align 1
  %bf.set8.2.i = or i8 %bf.load6.2.i, 64
  store i8 %bf.set8.2.i, ptr %stopped.2.i, align 1
  %queue.i.2.i = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 2, i32 1
  %35 = ptrtoint ptr %queue.i.2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %queue.i.2.i, align 4
  %cmp.i.not.i.2.i = icmp eq ptr %36, %queue.i.2.i
  br i1 %cmp.i.not.i.2.i, label %nuke.exit.1.i.nuke.exit.2.i_crit_edge, label %while.cond.preheader.i.2.i

nuke.exit.1.i.nuke.exit.2.i_crit_edge:            ; preds = %nuke.exit.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.2.i

while.cond.preheader.i.2.i:                       ; preds = %nuke.exit.1.i
  %37 = ptrtoint ptr %queue.i.2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %queue.i.2.i, align 4
  %cmp.i9.not11.i.2.i = icmp eq ptr %38, %queue.i.2.i
  br i1 %cmp.i9.not11.i.2.i, label %while.cond.preheader.i.2.i.nuke.exit.2.i_crit_edge, label %while.cond.preheader.i.2.i.while.body.i.2.i_crit_edge

while.cond.preheader.i.2.i.while.body.i.2.i_crit_edge: ; preds = %while.cond.preheader.i.2.i
  br label %while.body.i.2.i

while.cond.preheader.i.2.i.nuke.exit.2.i_crit_edge: ; preds = %while.cond.preheader.i.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.2.i

while.body.i.2.i:                                 ; preds = %while.body.i.2.i.while.body.i.2.i_crit_edge, %while.cond.preheader.i.2.i.while.body.i.2.i_crit_edge
  %39 = phi ptr [ %41, %while.body.i.2.i.while.body.i.2.i_crit_edge ], [ %38, %while.cond.preheader.i.2.i.while.body.i.2.i_crit_edge ]
  %add.ptr.i.2.i = getelementptr i8, ptr %39, i32 -56
  tail call fastcc void @done(ptr noundef %arrayidx.2.i, ptr noundef %add.ptr.i.2.i, i32 noundef -108) #9
  %40 = ptrtoint ptr %queue.i.2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %queue.i.2.i, align 4
  %cmp.i9.not.i.2.i = icmp eq ptr %41, %queue.i.2.i
  br i1 %cmp.i9.not.i.2.i, label %while.body.i.2.i.nuke.exit.2.i_crit_edge, label %while.body.i.2.i.while.body.i.2.i_crit_edge

while.body.i.2.i.while.body.i.2.i_crit_edge:      ; preds = %while.body.i.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.2.i

while.body.i.2.i.nuke.exit.2.i_crit_edge:         ; preds = %while.body.i.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.2.i

nuke.exit.2.i:                                    ; preds = %while.body.i.2.i.nuke.exit.2.i_crit_edge, %while.cond.preheader.i.2.i.nuke.exit.2.i_crit_edge, %nuke.exit.1.i.nuke.exit.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 3
  %stopped.3.i = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 3, i32 6
  %42 = ptrtoint ptr %stopped.3.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load6.3.i = load i8, ptr %stopped.3.i, align 1
  %bf.set8.3.i = or i8 %bf.load6.3.i, 64
  store i8 %bf.set8.3.i, ptr %stopped.3.i, align 1
  %queue.i.3.i = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 3, i32 1
  %43 = ptrtoint ptr %queue.i.3.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %queue.i.3.i, align 4
  %cmp.i.not.i.3.i = icmp eq ptr %44, %queue.i.3.i
  br i1 %cmp.i.not.i.3.i, label %nuke.exit.2.i.nuke.exit.3.i_crit_edge, label %while.cond.preheader.i.3.i

nuke.exit.2.i.nuke.exit.3.i_crit_edge:            ; preds = %nuke.exit.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.3.i

while.cond.preheader.i.3.i:                       ; preds = %nuke.exit.2.i
  %45 = ptrtoint ptr %queue.i.3.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %queue.i.3.i, align 4
  %cmp.i9.not11.i.3.i = icmp eq ptr %46, %queue.i.3.i
  br i1 %cmp.i9.not11.i.3.i, label %while.cond.preheader.i.3.i.nuke.exit.3.i_crit_edge, label %while.cond.preheader.i.3.i.while.body.i.3.i_crit_edge

while.cond.preheader.i.3.i.while.body.i.3.i_crit_edge: ; preds = %while.cond.preheader.i.3.i
  br label %while.body.i.3.i

while.cond.preheader.i.3.i.nuke.exit.3.i_crit_edge: ; preds = %while.cond.preheader.i.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.3.i

while.body.i.3.i:                                 ; preds = %while.body.i.3.i.while.body.i.3.i_crit_edge, %while.cond.preheader.i.3.i.while.body.i.3.i_crit_edge
  %47 = phi ptr [ %49, %while.body.i.3.i.while.body.i.3.i_crit_edge ], [ %46, %while.cond.preheader.i.3.i.while.body.i.3.i_crit_edge ]
  %add.ptr.i.3.i = getelementptr i8, ptr %47, i32 -56
  tail call fastcc void @done(ptr noundef %arrayidx.3.i, ptr noundef %add.ptr.i.3.i, i32 noundef -108) #9
  %48 = ptrtoint ptr %queue.i.3.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %queue.i.3.i, align 4
  %cmp.i9.not.i.3.i = icmp eq ptr %49, %queue.i.3.i
  br i1 %cmp.i9.not.i.3.i, label %while.body.i.3.i.nuke.exit.3.i_crit_edge, label %while.body.i.3.i.while.body.i.3.i_crit_edge

while.body.i.3.i.while.body.i.3.i_crit_edge:      ; preds = %while.body.i.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.3.i

while.body.i.3.i.nuke.exit.3.i_crit_edge:         ; preds = %while.body.i.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.3.i

nuke.exit.3.i:                                    ; preds = %while.body.i.3.i.nuke.exit.3.i_crit_edge, %while.cond.preheader.i.3.i.nuke.exit.3.i_crit_edge, %nuke.exit.2.i.nuke.exit.3.i_crit_edge
  %arrayidx.4.i = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 4
  %stopped.4.i = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 4, i32 6
  %50 = ptrtoint ptr %stopped.4.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load6.4.i = load i8, ptr %stopped.4.i, align 1
  %bf.set8.4.i = or i8 %bf.load6.4.i, 64
  store i8 %bf.set8.4.i, ptr %stopped.4.i, align 1
  %queue.i.4.i = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 4, i32 1
  %51 = ptrtoint ptr %queue.i.4.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %queue.i.4.i, align 4
  %cmp.i.not.i.4.i = icmp eq ptr %52, %queue.i.4.i
  br i1 %cmp.i.not.i.4.i, label %nuke.exit.3.i.nuke.exit.4.i_crit_edge, label %while.cond.preheader.i.4.i

nuke.exit.3.i.nuke.exit.4.i_crit_edge:            ; preds = %nuke.exit.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.4.i

while.cond.preheader.i.4.i:                       ; preds = %nuke.exit.3.i
  %53 = ptrtoint ptr %queue.i.4.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %queue.i.4.i, align 4
  %cmp.i9.not11.i.4.i = icmp eq ptr %54, %queue.i.4.i
  br i1 %cmp.i9.not11.i.4.i, label %while.cond.preheader.i.4.i.nuke.exit.4.i_crit_edge, label %while.cond.preheader.i.4.i.while.body.i.4.i_crit_edge

while.cond.preheader.i.4.i.while.body.i.4.i_crit_edge: ; preds = %while.cond.preheader.i.4.i
  br label %while.body.i.4.i

while.cond.preheader.i.4.i.nuke.exit.4.i_crit_edge: ; preds = %while.cond.preheader.i.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.4.i

while.body.i.4.i:                                 ; preds = %while.body.i.4.i.while.body.i.4.i_crit_edge, %while.cond.preheader.i.4.i.while.body.i.4.i_crit_edge
  %55 = phi ptr [ %57, %while.body.i.4.i.while.body.i.4.i_crit_edge ], [ %54, %while.cond.preheader.i.4.i.while.body.i.4.i_crit_edge ]
  %add.ptr.i.4.i = getelementptr i8, ptr %55, i32 -56
  tail call fastcc void @done(ptr noundef %arrayidx.4.i, ptr noundef %add.ptr.i.4.i, i32 noundef -108) #9
  %56 = ptrtoint ptr %queue.i.4.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %queue.i.4.i, align 4
  %cmp.i9.not.i.4.i = icmp eq ptr %57, %queue.i.4.i
  br i1 %cmp.i9.not.i.4.i, label %while.body.i.4.i.nuke.exit.4.i_crit_edge, label %while.body.i.4.i.while.body.i.4.i_crit_edge

while.body.i.4.i.while.body.i.4.i_crit_edge:      ; preds = %while.body.i.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.4.i

while.body.i.4.i.nuke.exit.4.i_crit_edge:         ; preds = %while.body.i.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.4.i

nuke.exit.4.i:                                    ; preds = %while.body.i.4.i.nuke.exit.4.i_crit_edge, %while.cond.preheader.i.4.i.nuke.exit.4.i_crit_edge, %nuke.exit.3.i.nuke.exit.4.i_crit_edge
  %arrayidx.5.i = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 5
  %stopped.5.i = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 5, i32 6
  %58 = ptrtoint ptr %stopped.5.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load6.5.i = load i8, ptr %stopped.5.i, align 1
  %bf.set8.5.i = or i8 %bf.load6.5.i, 64
  store i8 %bf.set8.5.i, ptr %stopped.5.i, align 1
  %queue.i.5.i = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 5, i32 1
  %59 = ptrtoint ptr %queue.i.5.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %queue.i.5.i, align 4
  %cmp.i.not.i.5.i = icmp eq ptr %60, %queue.i.5.i
  br i1 %cmp.i.not.i.5.i, label %nuke.exit.4.i.nuke.exit.5.i_crit_edge, label %while.cond.preheader.i.5.i

nuke.exit.4.i.nuke.exit.5.i_crit_edge:            ; preds = %nuke.exit.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.5.i

while.cond.preheader.i.5.i:                       ; preds = %nuke.exit.4.i
  %61 = ptrtoint ptr %queue.i.5.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %queue.i.5.i, align 4
  %cmp.i9.not11.i.5.i = icmp eq ptr %62, %queue.i.5.i
  br i1 %cmp.i9.not11.i.5.i, label %while.cond.preheader.i.5.i.nuke.exit.5.i_crit_edge, label %while.cond.preheader.i.5.i.while.body.i.5.i_crit_edge

while.cond.preheader.i.5.i.while.body.i.5.i_crit_edge: ; preds = %while.cond.preheader.i.5.i
  br label %while.body.i.5.i

while.cond.preheader.i.5.i.nuke.exit.5.i_crit_edge: ; preds = %while.cond.preheader.i.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.5.i

while.body.i.5.i:                                 ; preds = %while.body.i.5.i.while.body.i.5.i_crit_edge, %while.cond.preheader.i.5.i.while.body.i.5.i_crit_edge
  %63 = phi ptr [ %65, %while.body.i.5.i.while.body.i.5.i_crit_edge ], [ %62, %while.cond.preheader.i.5.i.while.body.i.5.i_crit_edge ]
  %add.ptr.i.5.i = getelementptr i8, ptr %63, i32 -56
  tail call fastcc void @done(ptr noundef %arrayidx.5.i, ptr noundef %add.ptr.i.5.i, i32 noundef -108) #9
  %64 = ptrtoint ptr %queue.i.5.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %queue.i.5.i, align 4
  %cmp.i9.not.i.5.i = icmp eq ptr %65, %queue.i.5.i
  br i1 %cmp.i9.not.i.5.i, label %while.body.i.5.i.nuke.exit.5.i_crit_edge, label %while.body.i.5.i.while.body.i.5.i_crit_edge

while.body.i.5.i.while.body.i.5.i_crit_edge:      ; preds = %while.body.i.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.5.i

while.body.i.5.i.nuke.exit.5.i_crit_edge:         ; preds = %while.body.i.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit.5.i

nuke.exit.5.i:                                    ; preds = %while.body.i.5.i.nuke.exit.5.i_crit_edge, %while.cond.preheader.i.5.i.nuke.exit.5.i_crit_edge, %nuke.exit.4.i.nuke.exit.5.i_crit_edge
  %tobool.not26.i = icmp eq ptr %13, null
  %tobool.not.i44 = select i1 %cmp.i, i1 true, i1 %tobool.not26.i
  br i1 %tobool.not.i44, label %nuke.exit.5.i.stop_activity.exit_crit_edge, label %if.then9.i

nuke.exit.5.i.stop_activity.exit_crit_edge:       ; preds = %nuke.exit.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stop_activity.exit

if.then9.i:                                       ; preds = %nuke.exit.5.i
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 13
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  %disconnect.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %13, i32 0, i32 5
  %66 = ptrtoint ptr %disconnect.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %disconnect.i, align 4
  tail call void %67(ptr noundef %udc) #9
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  br label %stop_activity.exit

stop_activity.exit:                               ; preds = %if.then9.i, %nuke.exit.5.i.stop_activity.exit_crit_edge
  tail call fastcc void @udc_reinit(ptr noundef %udc) #9
  %udp_baseaddr16 = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 11
  %68 = ptrtoint ptr %udp_baseaddr16 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %udp_baseaddr16, align 8
  %add.ptr17 = getelementptr i8, ptr %69, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 512) #9, !srcloc !286
  %70 = ptrtoint ptr %udp_baseaddr16 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %udp_baseaddr16, align 8
  %add.ptr19 = getelementptr i8, ptr %71, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 256) #9, !srcloc !286
  %72 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load.i46 = load i8, ptr %enabled, align 8
  %73 = and i8 %bf.load.i46, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i47 = icmp eq i8 %73, 0
  br i1 %tobool.not.i47, label %stop_activity.exit.if.end20_crit_edge, label %if.end.i51

stop_activity.exit.if.end20_crit_edge:            ; preds = %stop_activity.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end.i51:                                       ; preds = %stop_activity.exit
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear3.i = and i8 %bf.load.i46, -33
  %74 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %bf.clear3.i, ptr %enabled, align 8
  %75 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %speed.i, align 8
  %fclk.i49 = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 8
  %76 = ptrtoint ptr %fclk.i49 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %fclk.i49, align 4
  tail call void @clk_disable(ptr noundef %77) #9
  %iclk.i50 = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 7
  %78 = ptrtoint ptr %iclk.i50 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %iclk.i50, align 8
  tail call void @clk_disable(ptr noundef %79) #9
  br label %if.end20

if.end20:                                         ; preds = %if.end.i51, %stop_activity.exit.if.end20_crit_edge, %clk_on.exit
  %caps = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 3
  %80 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %caps, align 4
  %tobool21.not = icmp eq ptr %81, null
  br i1 %tobool21.not, label %if.end20.if.end27_crit_edge, label %land.lhs.true

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end20
  %pullup = getelementptr inbounds %struct.at91_udc_caps, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %pullup to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pullup, align 4
  %tobool23.not = icmp eq ptr %83, null
  br i1 %tobool23.not, label %land.lhs.true.if.end27_crit_edge, label %if.then24

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %83(ptr noundef %udc, i32 noundef %is_on.addr.0) #9
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %land.lhs.true.if.end27_crit_edge, %if.end20.if.end27_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nuke(ptr noundef %ep, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stopped = getelementptr inbounds %struct.at91_ep, ptr %ep, i32 0, i32 6
  %0 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %stopped, align 1
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %stopped, align 1
  %queue = getelementptr inbounds %struct.at91_ep, ptr %ep, i32 0, i32 1
  %1 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %2, %queue
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %3 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %queue, align 4
  %cmp.i9.not11 = icmp eq ptr %4, %queue
  br i1 %cmp.i9.not11, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %5 = phi ptr [ %7, %while.body.while.body_crit_edge ], [ %4, %while.cond.preheader.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %5, i32 -56
  tail call fastcc void @done(ptr noundef %ep, ptr noundef %add.ptr, i32 noundef %status)
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %queue, align 4
  %cmp.i9.not = icmp eq ptr %7, %queue
  br i1 %cmp.i9.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @done(ptr noundef %ep, ptr noundef %req, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stopped1 = getelementptr inbounds %struct.at91_ep, ptr %ep, i32 0, i32 6
  %0 = ptrtoint ptr %stopped1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %stopped1, align 1
  %bf.clear = and i8 %bf.load, 64
  %udc2 = getelementptr inbounds %struct.at91_ep, ptr %ep, i32 0, i32 2
  %1 = ptrtoint ptr %udc2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udc2, align 4
  %queue = getelementptr inbounds %struct.at91_request, ptr %req, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.at91_request, ptr %req, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %queue, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i3.i = getelementptr inbounds %struct.at91_request, ptr %req, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %queue, ptr %prev.i3.i, align 4
  %status4 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %11 = ptrtoint ptr %status4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %12)
  %cmp = icmp eq i32 %12, -115
  br i1 %cmp, label %if.then, label %list_del_init.exit.if.end_crit_edge

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %status4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %status, ptr %status4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del_init.exit.if.end_crit_edge
  %14 = ptrtoint ptr %stopped1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load13 = load i8, ptr %stopped1, align 1
  %bf.set = or i8 %bf.load13, 64
  store i8 %bf.set, ptr %stopped1, align 1
  %lock = getelementptr inbounds %struct.at91_udc, ptr %2, i32 0, i32 13
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  tail call void @usb_gadget_giveback_request(ptr noundef %ep, ptr noundef %req) #9
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %15 = ptrtoint ptr %stopped1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load19 = load i8, ptr %stopped1, align 1
  %bf.clear20 = and i8 %bf.load19, -65
  %bf.set21 = or i8 %bf.clear20, %bf.clear
  store i8 %bf.set21, ptr %stopped1, align 1
  %queue22 = getelementptr inbounds %struct.at91_ep, ptr %ep, i32 0, i32 1
  %16 = ptrtoint ptr %queue22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %queue22, align 4
  %cmp.i.not = icmp eq ptr %17, %queue22
  br i1 %cmp.i.not, label %land.lhs.true24, label %if.end.if.end30_crit_edge

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

land.lhs.true24:                                  ; preds = %if.end
  %int_mask = getelementptr inbounds %struct.at91_ep, ptr %ep, i32 0, i32 5
  %18 = ptrtoint ptr %int_mask to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %int_mask, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp25.not = icmp eq i8 %19, 1
  br i1 %cmp25.not, label %land.lhs.true24.if.end30_crit_edge, label %if.then27

land.lhs.true24.if.end30_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then27:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %19 to i32
  %udp_baseaddr = getelementptr inbounds %struct.at91_udc, ptr %2, i32 0, i32 11
  %20 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr = getelementptr i8, ptr %21, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %conv) #9, !srcloc !286
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %land.lhs.true24.if.end30_crit_edge, %if.end.if.end30_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_ep_enable(ptr noundef %_ep, ptr noundef readonly %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  %tobool4.not = icmp eq ptr %desc, null
  %or.cond = or i1 %tobool.not, %tobool4.not
  br i1 %or.cond, label %entry.do.body_crit_edge, label %lor.lhs.false5

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false5:                                   ; preds = %entry
  %name = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %cmp = icmp eq ptr %1, @.str.31
  br i1 %cmp, label %lor.lhs.false5.do.body_crit_edge, label %lor.lhs.false6

lor.lhs.false5.do.body_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false6:                                   ; preds = %lor.lhs.false5
  %bDescriptorType = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bDescriptorType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp7.not = icmp eq i8 %3, 5
  br i1 %cmp7.not, label %lor.lhs.false9, label %lor.lhs.false6.do.body_crit_edge

lor.lhs.false6.do.body_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %4 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %wMaxPacketSize.i, align 1
  %6 = and i16 %5, -249
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #9
  %and.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp12 = icmp eq i16 %6, 0
  br i1 %cmp12, label %lor.lhs.false9.do.body_crit_edge, label %lor.lhs.false14

lor.lhs.false9.do.body_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false14:                                  ; preds = %lor.lhs.false9
  %maxpacket16 = getelementptr inbounds %struct.at91_ep, ptr %_ep, i32 0, i32 4
  %8 = ptrtoint ptr %maxpacket16 to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %maxpacket16, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %bf.load)
  %cmp17 = icmp ugt i16 %7, %bf.load
  br i1 %cmp17, label %lor.lhs.false14.do.body_crit_edge, label %if.end26

lor.lhs.false14.do.body_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false14.do.body_crit_edge, %lor.lhs.false9.do.body_crit_edge, %lor.lhs.false6.do.body_crit_edge, %lor.lhs.false5.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_ep_enable.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_ep_enable, %cleanup)) #9
          to label %if.then25 [label %cleanup], !srcloc !287

if.then25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @at91_ep_enable.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.38) #9
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false14
  %udc27 = getelementptr inbounds %struct.at91_ep, ptr %_ep, i32 0, i32 2
  %9 = ptrtoint ptr %udc27 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udc27, align 4
  %driver = getelementptr inbounds %struct.at91_udc, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver, align 8
  %tobool28.not = icmp eq ptr %12, null
  br i1 %tobool28.not, label %if.end26.do.body33_crit_edge, label %lor.lhs.false29

if.end26.do.body33_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body33

lor.lhs.false29:                                  ; preds = %if.end26
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %10, i32 0, i32 5
  %13 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp30 = icmp eq i32 %14, 0
  br i1 %cmp30, label %lor.lhs.false29.do.body33_crit_edge, label %if.end51

lor.lhs.false29.do.body33_crit_edge:              ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body33

do.body33:                                        ; preds = %lor.lhs.false29.do.body33_crit_edge, %if.end26.do.body33_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_ep_enable.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_ep_enable, %cleanup)) #9
          to label %if.then47 [label %cleanup], !srcloc !287

if.then47:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @at91_ep_enable.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.39) #9
  br label %cleanup

if.end51:                                         ; preds = %lor.lhs.false29
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %15 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bmAttributes.i, align 1
  %17 = and i8 %16, 3
  %and.i217 = zext i8 %17 to i32
  %18 = zext i32 %and.i217 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i217, label %if.end51.unreachabledefault [
    i32 0, label %do.body53
    i32 3, label %sw.bb71
    i32 2, label %sw.bb77
    i32 1, label %sw.bb99
  ]

do.body53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_ep_enable.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_ep_enable, %cleanup)) #9
          to label %if.then67 [label %cleanup], !srcloc !287

if.then67:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @at91_ep_enable.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.40) #9
  br label %cleanup

sw.bb71:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %7)
  %cmp73 = icmp ugt i16 %7, 64
  br i1 %cmp73, label %sw.bb71.do.body80_crit_edge, label %sw.bb71.do.body125_crit_edge

sw.bb71.do.body125_crit_edge:                     ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body125

sw.bb71.do.body80_crit_edge:                      ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body80

sw.bb77:                                          ; preds = %if.end51
  %19 = add nsw i32 %and.i, -8
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 29)
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %20, label %sw.bb77.do.body80_crit_edge [
    i32 0, label %sw.bb77.do.body125_crit_edge
    i32 1, label %sw.bb77.do.body125_crit_edge224
    i32 3, label %sw.bb77.do.body125_crit_edge225
    i32 7, label %sw.bb77.do.body125_crit_edge226
  ]

sw.bb77.do.body125_crit_edge226:                  ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body125

sw.bb77.do.body125_crit_edge225:                  ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body125

sw.bb77.do.body125_crit_edge224:                  ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body125

sw.bb77.do.body125_crit_edge:                     ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body125

sw.bb77.do.body80_crit_edge:                      ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body80

do.body80:                                        ; preds = %sw.bb77.do.body80_crit_edge, %sw.bb71.do.body80_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_ep_enable.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_ep_enable, %cleanup)) #9
          to label %if.then94 [label %cleanup], !srcloc !287

if.then94:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @at91_ep_enable.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.41, i32 noundef %and.i) #9
  br label %cleanup

sw.bb99:                                          ; preds = %if.end51
  %is_pingpong = getelementptr inbounds %struct.at91_ep, ptr %_ep, i32 0, i32 6
  %22 = ptrtoint ptr %is_pingpong to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load100 = load i8, ptr %is_pingpong, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load100)
  %tobool102.not = icmp sgt i8 %bf.load100, -1
  br i1 %tobool102.not, label %do.body104, label %sw.bb99.do.body125_crit_edge

sw.bb99.do.body125_crit_edge:                     ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body125

do.body104:                                       ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_ep_enable.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_ep_enable, %cleanup)) #9
          to label %if.then118 [label %cleanup], !srcloc !287

if.then118:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @at91_ep_enable.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.42) #9
  br label %cleanup

if.end51.unreachabledefault:                      ; preds = %if.end51
  unreachable

do.body125:                                       ; preds = %sw.bb99.do.body125_crit_edge, %sw.bb77.do.body125_crit_edge, %sw.bb77.do.body125_crit_edge224, %sw.bb77.do.body125_crit_edge225, %sw.bb77.do.body125_crit_edge226, %sw.bb71.do.body125_crit_edge
  %lock = getelementptr inbounds %struct.at91_udc, ptr %10, i32 0, i32 13
  %call130 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 2
  %23 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bEndpointAddress.i, align 1
  %is_in = getelementptr inbounds %struct.at91_ep, ptr %_ep, i32 0, i32 6
  %25 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load136 = load i8, ptr %is_in, align 1
  %26 = lshr i8 %24, 2
  %bf.value = and i8 %26, 32
  %bf.clear = and i8 %bf.load136, -113
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp137 = icmp eq i8 %17, 1
  %bf.shl141 = select i1 %cmp137, i8 16, i8 0
  %bf.set = or i8 %bf.value, %bf.shl141
  %bf.set143 = or i8 %bf.set, %bf.clear
  %27 = ptrtoint ptr %is_in to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %bf.set143, ptr %is_in, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool153.not223 = icmp slt i8 %24, 0
  %28 = shl nuw nsw i32 %and.i217, 8
  %29 = or i32 %28, 1024
  %shl = select i1 %tobool153.not223, i32 %29, i32 %28
  %or156 = or i32 %shl, 32768
  %creg = getelementptr inbounds %struct.at91_ep, ptr %_ep, i32 0, i32 3
  %30 = ptrtoint ptr %creg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %creg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %or156) #9, !srcloc !286
  %maxpacket159 = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 7
  %32 = ptrtoint ptr %maxpacket159 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 7)
  %bf.load160 = load i56, ptr %maxpacket159, align 2
  %bf.value161 = zext i16 %7 to i56
  %bf.shl162 = shl nuw nsw i56 %bf.value161, 40
  %bf.clear163 = and i56 %bf.load160, 1099511627775
  %bf.set164 = or i56 %bf.clear163, %bf.shl162
  store i56 %bf.set164, ptr %maxpacket159, align 2
  %int_mask = getelementptr inbounds %struct.at91_ep, ptr %_ep, i32 0, i32 5
  %33 = ptrtoint ptr %int_mask to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %int_mask, align 2
  %conv166 = zext i8 %34 to i32
  %udp_baseaddr = getelementptr inbounds %struct.at91_udc, ptr %10, i32 0, i32 11
  %35 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr167 = getelementptr i8, ptr %36, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr167, i32 %conv166) #9, !srcloc !286
  %37 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr169 = getelementptr i8, ptr %38, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr169, i32 0) #9, !srcloc !286
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call130) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body125, %if.then118, %do.body104, %if.then94, %do.body80, %if.then67, %do.body53, %if.then47, %do.body33, %if.then25, %do.body
  %retval.0 = phi i32 [ 0, %do.body125 ], [ -22, %if.then25 ], [ -108, %if.then47 ], [ -22, %if.then67 ], [ -22, %if.then94 ], [ -22, %if.then118 ], [ -22, %do.body ], [ -108, %do.body33 ], [ -22, %do.body53 ], [ -22, %do.body80 ], [ -22, %do.body104 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_ep_disable(ptr noundef %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %udc1 = getelementptr inbounds %struct.at91_ep, ptr %_ep, i32 0, i32 2
  %0 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc1, align 4
  %ep3 = getelementptr inbounds %struct.at91_udc, ptr %1, i32 0, i32 1
  %cmp = icmp eq ptr %ep3, %_ep
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body4:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.at91_udc, ptr %1, i32 0, i32 13
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %stopped.i = getelementptr inbounds %struct.at91_ep, ptr %_ep, i32 0, i32 6
  %2 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %stopped.i, align 1
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %stopped.i, align 1
  %queue.i = getelementptr inbounds %struct.at91_ep, ptr %_ep, i32 0, i32 1
  %3 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %4, %queue.i
  br i1 %cmp.i.not.i, label %do.body4.nuke.exit_crit_edge, label %while.cond.preheader.i

do.body4.nuke.exit_crit_edge:                     ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

while.cond.preheader.i:                           ; preds = %do.body4
  %5 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i9.not11.i = icmp eq ptr %6, %queue.i
  br i1 %cmp.i9.not11.i, label %while.cond.preheader.i.nuke.exit_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.nuke.exit_crit_edge:       ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %7 = phi ptr [ %9, %while.body.i.while.body.i_crit_edge ], [ %6, %while.cond.preheader.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %7, i32 -56
  tail call fastcc void @done(ptr noundef %_ep, ptr noundef %add.ptr.i, i32 noundef -108) #9
  %8 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i9.not.i = icmp eq ptr %9, %queue.i
  br i1 %cmp.i9.not.i, label %while.body.i.nuke.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.nuke.exit_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

nuke.exit:                                        ; preds = %while.body.i.nuke.exit_crit_edge, %while.cond.preheader.i.nuke.exit_crit_edge, %do.body4.nuke.exit_crit_edge
  %desc = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 9
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %desc, align 4
  %maxpacket = getelementptr inbounds %struct.at91_ep, ptr %_ep, i32 0, i32 4
  %11 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load = load i16, ptr %maxpacket, align 4
  %maxpacket12 = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 7
  %12 = zext i16 %bf.load to i56
  %13 = ptrtoint ptr %maxpacket12 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 7)
  %bf.load13 = load i56, ptr %maxpacket12, align 2
  %bf.shl = shl nuw i56 %12, 40
  %bf.clear = and i56 %bf.load13, 1099511627775
  %bf.set = or i56 %bf.clear, %bf.shl
  store i56 %bf.set, ptr %maxpacket12, align 2
  %14 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %udc1, align 4
  %clocked = getelementptr inbounds %struct.at91_udc, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %clocked to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load15 = load i8, ptr %clocked, align 8
  %17 = and i8 %bf.load15, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %nuke.exit.if.end23_crit_edge, label %if.then18

nuke.exit.if.end23_crit_edge:                     ; preds = %nuke.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then18:                                        ; preds = %nuke.exit
  call void @__sanitizer_cov_trace_pc() #11
  %int_mask = getelementptr inbounds %struct.at91_ep, ptr %_ep, i32 0, i32 5
  %18 = ptrtoint ptr %int_mask to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %int_mask, align 2
  %conv19 = zext i8 %19 to i32
  %udp_baseaddr = getelementptr inbounds %struct.at91_udc, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr20 = getelementptr i8, ptr %21, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %conv19) #9, !srcloc !286
  %22 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr22 = getelementptr i8, ptr %23, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 0) #9, !srcloc !286
  %creg = getelementptr inbounds %struct.at91_ep, ptr %_ep, i32 0, i32 3
  %24 = ptrtoint ptr %creg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %creg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 0) #9, !srcloc !286
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %nuke.exit.if.end23_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @at91_ep_alloc_request(ptr nocapture noundef readnone %_ep, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !291

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and6.i.i.i = and i32 %gfp_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp_flags, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 64) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %queue = getelementptr inbounds %struct.at91_request, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %queue, ptr %queue, align 8
  %prev.i = getelementptr inbounds %struct.at91_request, ptr %call7.i.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %queue, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kzalloc.exit.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_ep_free_request(ptr nocapture noundef readnone %_ep, ptr noundef %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.at91_request, ptr %_req, i32 0, i32 1
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %1, %queue
  br i1 %cmp.i.not, label %do.end9, label %do.body4, !prof !291

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/udc/at91_udc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 600, 0\0A.popsection", ""() #9, !srcloc !292
  unreachable

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef %_req) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_ep_queue(ptr noundef %_ep, ptr noundef %_req, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_req, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %complete = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 7
  %0 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %complete, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false5

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_req, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %lor.lhs.false5.do.body_crit_edge, label %lor.lhs.false7

lor.lhs.false5.do.body_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %queue = getelementptr inbounds %struct.at91_request, ptr %_req, i32 0, i32 1
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %5, %queue
  br i1 %cmp.i.not, label %if.end16, label %lor.lhs.false7.do.body_crit_edge

lor.lhs.false7.do.body_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false7.do.body_crit_edge, %lor.lhs.false5.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_ep_queue.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_ep_queue, %cleanup156)) #9
          to label %if.then15 [label %cleanup156], !srcloc !287

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @at91_ep_queue.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.44) #9
  br label %cleanup156

if.end16:                                         ; preds = %lor.lhs.false7
  %tobool17.not = icmp eq ptr %_ep, null
  br i1 %tobool17.not, label %if.end16.do.body23_crit_edge, label %lor.lhs.false18

if.end16.do.body23_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body23

lor.lhs.false18:                                  ; preds = %if.end16
  %desc = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 9
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc, align 4
  %tobool20.not = icmp eq ptr %7, null
  br i1 %tobool20.not, label %land.lhs.true, label %lor.lhs.false18.if.end41_crit_edge

lor.lhs.false18.if.end41_crit_edge:               ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

land.lhs.true:                                    ; preds = %lor.lhs.false18
  %name = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %cmp.not = icmp eq ptr %9, @.str.31
  br i1 %cmp.not, label %land.lhs.true.if.end41_crit_edge, label %land.lhs.true.do.body23_crit_edge

land.lhs.true.do.body23_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body23

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

do.body23:                                        ; preds = %land.lhs.true.do.body23_crit_edge, %if.end16.do.body23_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_ep_queue.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_ep_queue, %cleanup156)) #9
          to label %if.then37 [label %cleanup156], !srcloc !287

if.then37:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @at91_ep_queue.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.45) #9
  br label %cleanup156

if.end41:                                         ; preds = %land.lhs.true.if.end41_crit_edge, %lor.lhs.false18.if.end41_crit_edge
  %udc42 = getelementptr inbounds %struct.at91_ep, ptr %_ep, i32 0, i32 2
  %10 = ptrtoint ptr %udc42 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udc42, align 4
  %tobool43.not = icmp eq ptr %11, null
  br i1 %tobool43.not, label %if.end41.do.body49_crit_edge, label %lor.lhs.false44

if.end41.do.body49_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body49

lor.lhs.false44:                                  ; preds = %if.end41
  %driver = getelementptr inbounds %struct.at91_udc, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver, align 8
  %tobool45.not = icmp eq ptr %13, null
  br i1 %tobool45.not, label %lor.lhs.false44.do.body49_crit_edge, label %lor.lhs.false46

lor.lhs.false44.do.body49_crit_edge:              ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body49

lor.lhs.false46:                                  ; preds = %lor.lhs.false44
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %11, i32 0, i32 5
  %14 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp47 = icmp eq i32 %15, 0
  br i1 %cmp47, label %lor.lhs.false46.do.body49_crit_edge, label %if.end67

lor.lhs.false46.do.body49_crit_edge:              ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body49

do.body49:                                        ; preds = %lor.lhs.false46.do.body49_crit_edge, %lor.lhs.false44.do.body49_crit_edge, %if.end41.do.body49_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_ep_queue.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_ep_queue, %cleanup156)) #9
          to label %if.then63 [label %cleanup156], !srcloc !287

if.then63:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @at91_ep_queue.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.46) #9
  br label %cleanup156

if.end67:                                         ; preds = %lor.lhs.false46
  %status68 = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 11
  %16 = ptrtoint ptr %status68 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -115, ptr %status68, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 12
  %17 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %actual, align 4
  %lock = getelementptr inbounds %struct.at91_udc, ptr %11, i32 0, i32 13
  %call74 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %queue79 = getelementptr inbounds %struct.at91_ep, ptr %_ep, i32 0, i32 1
  %18 = ptrtoint ptr %queue79 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %queue79, align 4
  %cmp.i208.not = icmp eq ptr %19, %queue79
  br i1 %cmp.i208.not, label %land.lhs.true82, label %if.end67.if.then146_crit_edge

if.end67.if.then146_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then146

land.lhs.true82:                                  ; preds = %if.end67
  %stopped = getelementptr inbounds %struct.at91_ep, ptr %_ep, i32 0, i32 6
  %20 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %stopped, align 1
  %21 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool83.not = icmp eq i8 %21, 0
  br i1 %tobool83.not, label %if.then84, label %land.lhs.true82.if.then146_crit_edge

land.lhs.true82.if.then146_crit_edge:             ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then146

if.then84:                                        ; preds = %land.lhs.true82
  %name86 = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %22 = ptrtoint ptr %name86 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name86, align 4
  %cmp87 = icmp eq ptr %23, @.str.31
  br i1 %cmp87, label %if.then90, label %if.then84.if.end126_crit_edge

if.then84.if.end126_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126

if.then90:                                        ; preds = %if.then84
  %req_pending = getelementptr inbounds %struct.at91_udc, ptr %11, i32 0, i32 4
  %24 = ptrtoint ptr %req_pending to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load92 = load i8, ptr %req_pending, align 8
  %25 = and i8 %bf.load92, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool96.not = icmp eq i8 %25, 0
  br i1 %tobool96.not, label %done.thread219, label %if.end98

done.thread219:                                   ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call74) #9
  br label %52

if.end98:                                         ; preds = %if.then90
  %26 = and i8 %bf.load92, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool103.not = icmp eq i8 %26, 0
  br i1 %tobool103.not, label %if.end98.if.end112_crit_edge, label %if.then104

if.end98.if.end112_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

if.then104:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  %udp_baseaddr = getelementptr inbounds %struct.at91_udc, ptr %11, i32 0, i32 11
  %27 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr105 = getelementptr i8, ptr %28, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105) #9, !srcloc !290
  %xor = xor i32 %29, 2
  %30 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr111 = getelementptr i8, ptr %31, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111, i32 %xor) #9, !srcloc !286
  br label %if.end112

if.end112:                                        ; preds = %if.then104, %if.end98.if.end112_crit_edge
  %length = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 1
  %32 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp114 = icmp eq i32 %33, 0
  br i1 %cmp114, label %if.end112.do.end119_crit_edge, label %if.end112.if.end126_crit_edge

if.end112.if.end126_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126

if.end112.do.end119_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end119

do.end119:                                        ; preds = %if.else.do.end119_crit_edge, %if.end112.do.end119_crit_edge
  %creg = getelementptr inbounds %struct.at91_ep, ptr %_ep, i32 0, i32 3
  %34 = ptrtoint ptr %creg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %creg, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #9, !srcloc !290
  %or = or i32 %36, 95
  %37 = ptrtoint ptr %creg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %creg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %or) #9, !srcloc !286
  %req_pending122 = getelementptr inbounds %struct.at91_udc, ptr %11, i32 0, i32 4
  %39 = ptrtoint ptr %req_pending122 to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load123 = load i8, ptr %req_pending122, align 8
  %bf.clear124 = and i8 %bf.load123, -9
  store i8 %bf.clear124, ptr %req_pending122, align 8
  br label %done.thread

if.end126:                                        ; preds = %if.end112.if.end126_crit_edge, %if.then84.if.end126_crit_edge
  %40 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load127 = load i8, ptr %stopped, align 1
  %41 = and i8 %bf.load127, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool131.not = icmp eq i8 %41, 0
  br i1 %tobool131.not, label %if.else, label %if.then132

if.then132:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  %call133 = tail call fastcc i32 @write_fifo(ptr noundef nonnull %_ep, ptr noundef nonnull %_req)
  br label %land.lhs.true144

if.else:                                          ; preds = %if.end126
  %call134 = tail call fastcc i32 @read_fifo(ptr noundef nonnull %_ep, ptr noundef nonnull %_req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  %cmp87.not = xor i1 %cmp87, true
  %brmerge = select i1 %tobool135.not, i1 true, i1 %cmp87.not
  br i1 %brmerge, label %if.else.land.lhs.true144_crit_edge, label %if.else.do.end119_crit_edge

if.else.do.end119_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end119

if.else.land.lhs.true144_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true144

land.lhs.true144:                                 ; preds = %if.else.land.lhs.true144_crit_edge, %if.then132
  %status.1.ph = phi i32 [ %call134, %if.else.land.lhs.true144_crit_edge ], [ %call133, %if.then132 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1.ph)
  %tobool145.not = icmp eq i32 %status.1.ph, 0
  br i1 %tobool145.not, label %land.lhs.true144.if.then146_crit_edge, label %done

land.lhs.true144.if.then146_crit_edge:            ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then146

if.then146:                                       ; preds = %land.lhs.true144.if.then146_crit_edge, %land.lhs.true82.if.then146_crit_edge, %if.end67.if.then146_crit_edge
  %prev.i = getelementptr inbounds %struct.at91_ep, ptr %_ep, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %43, ptr noundef %queue79) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then146.list_add_tail.exit_crit_edge

if.then146.list_add_tail.exit_crit_edge:          ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %queue, ptr %prev.i, align 4
  %45 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %queue79, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.at91_request, ptr %_req, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %queue, ptr %43, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then146.list_add_tail.exit_crit_edge
  %int_mask = getelementptr inbounds %struct.at91_ep, ptr %_ep, i32 0, i32 5
  %48 = ptrtoint ptr %int_mask to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %int_mask, align 2
  %conv149 = zext i8 %49 to i32
  %udp_baseaddr150 = getelementptr inbounds %struct.at91_udc, ptr %11, i32 0, i32 11
  %50 = ptrtoint ptr %udp_baseaddr150 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %udp_baseaddr150, align 8
  %add.ptr151 = getelementptr i8, ptr %51, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr151, i32 %conv149) #9, !srcloc !286
  br label %done.thread

done.thread:                                      ; preds = %list_add_tail.exit, %do.end119
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call74) #9
  br label %cleanup156

done:                                             ; preds = %land.lhs.true144
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call74) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1.ph)
  %cmp154 = icmp slt i32 %status.1.ph, 0
  br i1 %cmp154, label %done._crit_edge, label %done.cleanup156_crit_edge

done.cleanup156_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup156

done._crit_edge:                                  ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  br label %52

52:                                               ; preds = %done._crit_edge, %done.thread219
  %status.3222 = phi i32 [ -22, %done.thread219 ], [ %status.1.ph, %done._crit_edge ]
  br label %cleanup156

cleanup156:                                       ; preds = %52, %done.cleanup156_crit_edge, %done.thread, %if.then63, %do.body49, %if.then37, %do.body23, %if.then15, %do.body
  %retval.0 = phi i32 [ -22, %if.then15 ], [ -22, %if.then37 ], [ -22, %if.then63 ], [ %status.3222, %52 ], [ 0, %done.cleanup156_crit_edge ], [ 0, %done.thread ], [ -22, %do.body ], [ -22, %do.body23 ], [ -22, %do.body49 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_ep_dequeue(ptr noundef %_ep, ptr noundef readnone %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %name = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %cmp = icmp eq ptr %1, @.str.31
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %udc2 = getelementptr inbounds %struct.at91_ep, ptr %_ep, i32 0, i32 2
  %2 = ptrtoint ptr %udc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udc2, align 4
  %lock = getelementptr inbounds %struct.at91_udc, ptr %3, i32 0, i32 13
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %queue = getelementptr inbounds %struct.at91_ep, ptr %_ep, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %queue, %if.end ], [ %.pn, %for.cond.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 4
  %req.0 = getelementptr i8, ptr %.pn, i32 -56
  %cmp14.not = icmp eq ptr %.pn, %queue
  %cmp17 = icmp eq ptr %req.0, %_req
  %or.cond = or i1 %cmp14.not, %cmp17
  br i1 %or.cond, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %cmp17, label %if.end31, label %for.end.cleanup.sink.split_crit_edge

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end31:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @done(ptr noundef nonnull %_ep, ptr noundef %_req, i32 noundef -104)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end31, %for.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end31 ], [ -22, %for.end.cleanup.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_ep_set_halt(ptr noundef %_ep, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %udc1 = getelementptr inbounds %struct.at91_ep, ptr %_ep, i32 0, i32 2
  %0 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc1, align 4
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %is_iso = getelementptr inbounds %struct.at91_ep, ptr %_ep, i32 0, i32 6
  %2 = ptrtoint ptr %is_iso to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %is_iso, align 1
  %3 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %clocked = getelementptr inbounds %struct.at91_udc, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %clocked to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load5 = load i8, ptr %clocked, align 8
  %5 = and i8 %bf.load5, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not = icmp eq i8 %5, 0
  br i1 %tobool9.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %creg10 = getelementptr inbounds %struct.at91_ep, ptr %_ep, i32 0, i32 3
  %6 = ptrtoint ptr %creg10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %creg10, align 4
  %lock = getelementptr inbounds %struct.at91_udc, ptr %1, i32 0, i32 13
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !290
  %9 = ptrtoint ptr %is_iso to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load17 = load i8, ptr %is_iso, align 1
  %10 = and i8 %bf.load17, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool21.not = icmp eq i8 %10, 0
  br i1 %tobool21.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %queue = getelementptr inbounds %struct.at91_ep, ptr %_ep, i32 0, i32 1
  %11 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %queue, align 4
  %cmp.i = icmp eq ptr %12, %queue
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %8)
  %cmp25.not = icmp ult i32 %8, 65536
  %or.cond = select i1 %cmp.i, i1 %cmp25.not, i1 false
  br i1 %or.cond, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool28.not = icmp eq i32 %value, 0
  br i1 %tobool28.not, label %if.else34, label %if.else.if.end40_crit_edge

if.else.if.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.else34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %int_mask = getelementptr inbounds %struct.at91_ep, ptr %_ep, i32 0, i32 5
  %13 = ptrtoint ptr %int_mask to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %int_mask, align 2
  %conv35 = zext i8 %14 to i32
  %udp_baseaddr = getelementptr inbounds %struct.at91_udc, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr36 = getelementptr i8, ptr %16, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %conv35) #9, !srcloc !286
  %17 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr38 = getelementptr i8, ptr %18, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 0) #9, !srcloc !286
  br label %if.end40

if.end40:                                         ; preds = %if.else34, %if.else.if.end40_crit_edge
  %.sink = phi i32 [ 79, %if.else34 ], [ 111, %if.else.if.end40_crit_edge ]
  %and = and i32 %8, -128
  %and39 = or i32 %and, %.sink
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %and39) #9, !srcloc !286
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %land.lhs.true.if.end41_crit_edge
  %status.0 = phi i32 [ 0, %if.end40 ], [ -11, %land.lhs.true.if.end41_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %if.end41 ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_fifo(ptr noundef %ep, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %creg1 = getelementptr inbounds %struct.at91_ep, ptr %ep, i32 0, i32 3
  %0 = ptrtoint ptr %creg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %creg1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !290
  %3 = ptrtoint ptr %creg1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %creg1, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 32
  %and = and i32 %2, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then, !prof !291

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then:                                          ; preds = %entry
  %and5 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then.if.end_crit_edge, label %if.then7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %or = and i32 %2, -96
  %and8 = or i32 %or, 78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %and8) #9, !srcloc !286
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !290
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %csr.0 = phi i32 [ %5, %if.then7 ], [ %2, %if.then.if.end_crit_edge ]
  %and10 = and i32 %csr.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end.if.end14_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end14:                                         ; preds = %if.end.if.end14_crit_edge, %entry.if.end14_crit_edge
  %csr.1 = phi i32 [ %csr.0, %if.end.if.end14_crit_edge ], [ %2, %entry.if.end14_crit_edge ]
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %8 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual, align 4
  %add.ptr18 = getelementptr i8, ptr %7, i32 %9
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr18) #9, !srcloc !293
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length, align 4
  %12 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual, align 4
  %sub = sub i32 %11, %13
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %14 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %14, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %bf.cast)
  %cmp = icmp ugt i32 %sub, %bf.cast
  br i1 %cmp, label %if.end14.if.end41_crit_edge, label %if.else

if.end14.if.end41_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %bf.cast)
  %cmp34 = icmp ult i32 %sub, %bf.cast
  br i1 %cmp34, label %if.else.if.end41_crit_edge, label %lor.rhs

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

lor.rhs:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %zero = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %15 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load36 = load i32, ptr %zero, align 4
  %16 = lshr i32 %bf.load36, 13
  %.lobit = and i32 %16, 1
  %17 = xor i32 %.lobit, 1
  br label %if.end41

if.end41:                                         ; preds = %lor.rhs, %if.else.if.end41_crit_edge, %if.end14.if.end41_crit_edge
  %count.0 = phi i32 [ %bf.cast, %if.end14.if.end41_crit_edge ], [ %sub, %lor.rhs ], [ %sub, %if.else.if.end41_crit_edge ]
  %is_last.0 = phi i32 [ 0, %if.end14.if.end41_crit_edge ], [ %17, %lor.rhs ], [ 1, %if.else.if.end41_crit_edge ]
  tail call void @__raw_writesb(ptr noundef %add.ptr, ptr noundef %add.ptr18, i32 noundef %count.0) #9
  %or43 = or i32 %csr.1, 95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %or43) #9, !srcloc !286
  %18 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %actual, align 4
  %add = add i32 %19, %count.0
  store i32 %add, ptr %actual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_last.0)
  %tobool46.not = icmp eq i32 %is_last.0, 0
  br i1 %tobool46.not, label %if.end41.cleanup_crit_edge, label %if.then47

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then47:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @done(ptr noundef %ep, ptr noundef %req, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.end41.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %is_last.0, %if.then47 ], [ 0, %if.end41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_fifo(ptr noundef %ep, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %creg1 = getelementptr inbounds %struct.at91_ep, ptr %ep, i32 0, i32 3
  %0 = ptrtoint ptr %creg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %creg1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 32
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %4 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %actual, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !290
  %and127 = and i32 %8, 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %cmp128 = icmp eq i32 %and127, 0
  br i1 %cmp128, label %entry.cleanup_crit_edge, label %if.end.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %sub = sub i32 %7, %5
  %add.ptr6 = getelementptr i8, ptr %3, i32 %5
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %is_pingpong = getelementptr inbounds %struct.at91_ep, ptr %ep, i32 0, i32 6
  br label %if.end

if.end:                                           ; preds = %if.then77.if.end_crit_edge, %if.end.lr.ph
  %9 = phi i32 [ %8, %if.end.lr.ph ], [ %24, %if.then77.if.end_crit_edge ]
  %bufferspace.0130 = phi i32 [ %sub, %if.end.lr.ph ], [ %sub79, %if.then77.if.end_crit_edge ]
  %buf.0129 = phi ptr [ %add.ptr6, %if.end.lr.ph ], [ %add.ptr80, %if.then77.if.end_crit_edge ]
  %and10 = lshr i32 %9, 16
  %shr = and i32 %and10, 2047
  %10 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %10, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %11 = tail call i32 @llvm.umin.i32(i32 %shr, i32 %bf.cast)
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %bufferspace.0130)
  %cmp20 = icmp ugt i32 %11, %bufferspace.0130
  br i1 %cmp20, label %do.body, label %if.end.if.end30_crit_edge

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_fifo.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@read_fifo, %do.end)) #9
          to label %if.then26 [label %do.end], !srcloc !287

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @read_fifo.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.48, ptr noundef %13) #9
  br label %do.end

do.end:                                           ; preds = %if.then26, %do.body
  %14 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -75, ptr %status, align 4
  br label %if.end30

if.end30:                                         ; preds = %do.end, %if.end.if.end30_crit_edge
  %count.1 = phi i32 [ %bufferspace.0130, %do.end ], [ %11, %if.end.if.end30_crit_edge ]
  tail call void @__raw_readsb(ptr noundef %add.ptr, ptr noundef %buf.0129, i32 noundef %count.1) #9
  %or = or i32 %9, 79
  %15 = ptrtoint ptr %is_pingpong to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load31 = load i8, ptr %is_pingpong, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load31)
  %tobool34.not = icmp sgt i8 %bf.load31, -1
  br i1 %tobool34.not, label %if.else51, label %if.then35

if.then35:                                        ; preds = %if.end30
  %16 = and i8 %bf.load31, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp39 = icmp eq i8 %16, 0
  br i1 %cmp39, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  %and41 = and i32 %or, -19
  %bf.set = or i8 %bf.load31, 8
  %17 = ptrtoint ptr %is_pingpong to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %bf.set, ptr %is_pingpong, align 1
  br label %if.end53

if.else:                                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  %and45 = and i32 %or, -81
  %bf.clear48 = and i8 %bf.load31, -9
  %18 = ptrtoint ptr %is_pingpong to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %bf.clear48, ptr %is_pingpong, align 1
  br label %if.end53

if.else51:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %and52 = and i32 %or, -19
  br label %if.end53

if.end53:                                         ; preds = %if.else51, %if.else, %if.then40
  %csr.0 = phi i32 [ %and41, %if.then40 ], [ %and45, %if.else ], [ %and52, %if.else51 ]
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %csr.0) #9, !srcloc !286
  %19 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %actual, align 4
  %add = add i32 %20, %count.1
  store i32 %add, ptr %actual, align 4
  %21 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %21, i32 7)
  %bf.load58 = load i56, ptr %maxpacket, align 2
  %bf.lshr59 = lshr i56 %bf.load58, 40
  %bf.cast60 = trunc i56 %bf.lshr59 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %count.1, i32 %bf.cast60)
  %cmp61 = icmp ult i32 %count.1, %bf.cast60
  call void @__sanitizer_cov_trace_cmp4(i32 %bufferspace.0130, i32 %count.1)
  %cmp62 = icmp eq i32 %bufferspace.0130, %count.1
  %narrow = select i1 %cmp62, i1 true, i1 %cmp61
  br i1 %narrow, label %if.then70, label %if.else71

if.then70:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @done(ptr noundef %ep, ptr noundef %req, i32 noundef 0)
  br label %cleanup

if.else71:                                        ; preds = %if.end53
  %22 = ptrtoint ptr %is_pingpong to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load73 = load i8, ptr %is_pingpong, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load73)
  %tobool76.not = icmp sgt i8 %bf.load73, -1
  br i1 %tobool76.not, label %if.else71.cleanup_crit_edge, label %if.then77

if.else71.cleanup_crit_edge:                      ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then77:                                        ; preds = %if.else71
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !290
  %sub79 = sub i32 %bufferspace.0130, %count.1
  %add.ptr80 = getelementptr i8, ptr %buf.0129, i32 %count.1
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !290
  %and = and i32 %24, 66
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then77.cleanup_crit_edge, label %if.then77.if.end_crit_edge

if.then77.if.end_crit_edge:                       ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then77.cleanup_crit_edge:                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.then77.cleanup_crit_edge, %if.else71.cleanup_crit_edge, %if.then70, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then70 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.else71.cleanup_crit_edge ], [ 0, %if.then77.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_ep0(ptr noundef %udc) unnamed_addr #2 align 64 {
entry:
  %pkt.i = alloca %union.setup, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ep = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 1
  %creg1 = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %creg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %creg1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !290
  %and = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !291

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @nuke(ptr noundef %ep, i32 noundef -71)
  %req_pending = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 4
  %3 = ptrtoint ptr %req_pending to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %req_pending, align 8
  %bf.clear = and i8 %bf.load, -9
  store i8 %bf.clear, ptr %req_pending, align 8
  %or = and i32 %2, -128
  %and4 = or i32 %or, 71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %and4) #9, !srcloc !286
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !290
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %csr.0 = phi i32 [ %4, %if.then ], [ %2, %entry.if.end_crit_edge ]
  %and6 = and i32 %csr.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end13, label %if.then8

if.then8:                                         ; preds = %if.end
  %stopped.i = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 0, i32 6
  %5 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %stopped.i, align 1
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %stopped.i, align 1
  %queue.i = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %7, %queue.i
  br i1 %cmp.i.not.i, label %if.then8.nuke.exit_crit_edge, label %while.cond.preheader.i

if.then8.nuke.exit_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

while.cond.preheader.i:                           ; preds = %if.then8
  %8 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i9.not11.i = icmp eq ptr %9, %queue.i
  br i1 %cmp.i9.not11.i, label %while.cond.preheader.i.nuke.exit_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.nuke.exit_crit_edge:       ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %10 = phi ptr [ %12, %while.body.i.while.body.i_crit_edge ], [ %9, %while.cond.preheader.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %10, i32 -56
  tail call fastcc void @done(ptr noundef %ep, ptr noundef %add.ptr.i, i32 noundef 0) #9
  %11 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i9.not.i = icmp eq ptr %12, %queue.i
  br i1 %cmp.i9.not.i, label %while.body.i.nuke.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.nuke.exit_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nuke.exit

nuke.exit:                                        ; preds = %while.body.i.nuke.exit_crit_edge, %while.cond.preheader.i.nuke.exit_crit_edge, %if.then8.nuke.exit_crit_edge
  %req_pending9 = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 4
  %13 = ptrtoint ptr %req_pending9 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load10 = load i8, ptr %req_pending9, align 8
  %bf.clear11 = and i8 %bf.load10, -9
  store i8 %bf.clear11, ptr %req_pending9, align 8
  %14 = ptrtoint ptr %creg1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %creg1, align 4
  %add.ptr.i198 = getelementptr i8, ptr %15, i32 32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pkt.i) #9
  %16 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %pkt.i, i32 0, i32 1
  %17 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %pkt.i, i32 0, i32 2
  %18 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %pkt.i, i32 0, i32 3
  %and.i = lshr i32 %csr.0, 16
  %shr.i = and i32 %and.i, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %shr.i)
  %cmp.i = icmp eq i32 %shr.i, 8
  %19 = ptrtoint ptr %pkt.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 -1, ptr %pkt.i, align 8
  br i1 %cmp.i, label %while.body.preheader.i, label %do.end.i, !prof !291

while.body.preheader.i:                           ; preds = %nuke.exit
  %20 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %pkt.i, i32 0, i32 4
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i198) #9
  %22 = ptrtoint ptr %pkt.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %pkt.i, align 8
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i198) #9, !srcloc !294
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %16, align 1
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i198) #9, !srcloc !294
  %26 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %17, align 2
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i198) #9, !srcloc !294
  %arrayidx.3.i = getelementptr inbounds [8 x i8], ptr %pkt.i, i32 0, i32 3
  %28 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx.3.i, align 1
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i198) #9, !srcloc !294
  %30 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %18, align 4
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i198) #9, !srcloc !294
  %arrayidx.5.i = getelementptr inbounds [8 x i8], ptr %pkt.i, i32 0, i32 5
  %32 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx.5.i, align 1
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i198) #9, !srcloc !294
  %34 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %20, align 2
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i198) #9, !srcloc !294
  %arrayidx.7.i = getelementptr inbounds [8 x i8], ptr %pkt.i, i32 0, i32 7
  %36 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %tobool6.not.i = icmp sgt i8 %21, -1
  br i1 %tobool6.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i = or i32 %csr.0, 128
  %37 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load.i199 = load i8, ptr %stopped.i, align 1
  %bf.set.i200 = or i8 %bf.load.i199, 32
  store i8 %bf.set.i200, ptr %stopped.i, align 1
  br label %if.end16.i

if.else.i:                                        ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  %and8.i = and i32 %csr.0, -129
  %38 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load10.i = load i8, ptr %stopped.i, align 1
  %bf.clear11.i = and i8 %bf.load10.i, -33
  store i8 %bf.clear11.i, ptr %stopped.i, align 1
  br label %if.end16.i

do.end.i:                                         ; preds = %nuke.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %shr.i, i32 noundef %csr.0) #12
  br label %if.end16.i

if.end16.i:                                       ; preds = %do.end.i, %if.else.i, %if.then7.i
  %csr.addr.0.i = phi i32 [ %or.i, %if.then7.i ], [ %and8.i, %if.else.i ], [ %csr.0, %do.end.i ]
  %or17.i = and i32 %csr.addr.0.i, -96
  %and18.i = or i32 %or17.i, 75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %and18.i) #9, !srcloc !286
  %39 = ptrtoint ptr %req_pending9 to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load19.i = load i8, ptr %req_pending9, align 8
  %bf.clear23.i = and i8 %bf.load19.i, -7
  store i8 %bf.clear23.i, ptr %req_pending9, align 8
  %40 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load25.i = load i8, ptr %stopped.i, align 1
  %bf.clear26.i = and i8 %bf.load25.i, -65
  store i8 %bf.clear26.i, ptr %stopped.i, align 1
  br i1 %cmp.i, label %do.end40.i, label %if.end16.i.do.end327.i_crit_edge, !prof !291

if.end16.i.do.end327.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end327.i

do.end40.i:                                       ; preds = %if.end16.i
  %bf.set43.i = or i8 %bf.clear23.i, 8
  %41 = ptrtoint ptr %req_pending9 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %bf.set43.i, ptr %req_pending9, align 8
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #9, !srcloc !290
  %or45.i = and i32 %42, -96
  %and46.i = or i32 %or45.i, 79
  %43 = ptrtoint ptr %pkt.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %pkt.i, align 8
  %conv48.i = zext i8 %44 to i16
  %shl.i = shl nuw i16 %conv48.i, 8
  %45 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %16, align 1
  %conv49.i = zext i8 %46 to i16
  %or50.i = or i16 %shl.i, %conv49.i
  %47 = zext i16 %or50.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.118)
  switch i16 %or50.i, label %do.end40.i.sw.epilog.i_crit_edge [
    i16 5, label %sw.bb.i
    i16 9, label %sw.bb61.i
    i16 -32768, label %sw.bb94.i
    i16 3, label %sw.bb111.i
    i16 1, label %sw.bb124.i
    i16 -32512, label %do.end140.i
    i16 259, label %do.end40.i.do.end327.i_crit_edge
    i16 257, label %do.end40.i.do.end327.i_crit_edge216
    i16 -32256, label %sw.bb142.i
    i16 515, label %sw.bb191.i
    i16 513, label %sw.bb245.i
  ]

do.end40.i.do.end327.i_crit_edge216:              ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end327.i

do.end40.i.do.end327.i_crit_edge:                 ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end327.i

do.end40.i.sw.epilog.i_crit_edge:                 ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  %or51.i = or i32 %42, 95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %or51.i) #9, !srcloc !286
  %48 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %17, align 2
  %50 = lshr i16 %49, 8
  %conv52.i = trunc i16 %50 to i8
  %addr.i = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 5
  %51 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv52.i, ptr %addr.i, align 1
  %52 = ptrtoint ptr %req_pending9 to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load54.i = load i8, ptr %req_pending9, align 8
  %bf.set56.i = and i8 %bf.load54.i, -13
  %bf.clear59.i = or i8 %bf.set56.i, 4
  br label %cleanup.sink.split.i

sw.bb61.i:                                        ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  %udp_baseaddr.i = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 11
  %53 = ptrtoint ptr %udp_baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %udp_baseaddr.i, align 8
  %add.ptr62.i = getelementptr i8, ptr %54, i32 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62.i) #9, !srcloc !290
  %56 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %17, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool66.not.i = icmp eq i16 %57, 0
  %58 = trunc i32 %55 to i8
  %59 = and i8 %58, 2
  %60 = ptrtoint ptr %req_pending9 to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load78.i = load i8, ptr %req_pending9, align 8
  %bf.clear81.i = and i8 %bf.load78.i, -3
  %bf.set82.i = or i8 %bf.clear81.i, %59
  %bf.set73.i = xor i8 %bf.set82.i, 2
  %storemerge.i = select i1 %tobool66.not.i, i8 %bf.set82.i, i8 %bf.set73.i
  store i8 %storemerge.i, ptr %req_pending9, align 8
  br label %sw.epilog.i

sw.bb94.i:                                        ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_selfpowered.i = getelementptr inbounds %struct.usb_gadget, ptr %udc, i32 0, i32 17
  %61 = ptrtoint ptr %is_selfpowered.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %bf.load95.i = load i32, ptr %is_selfpowered.i, align 4
  %bf.lshr96.i = lshr i32 %bf.load95.i, 18
  %bf.clear97.i = and i32 %bf.lshr96.i, 1
  %udp_baseaddr99.i = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 11
  %62 = ptrtoint ptr %udp_baseaddr99.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %udp_baseaddr99.i, align 8
  %add.ptr100.i = getelementptr i8, ptr %63, i32 4
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr100.i) #9, !srcloc !290
  %and102.i = lshr i32 %64, 1
  %65 = and i32 %and102.i, 2
  %66 = or i32 %65, %bf.clear97.i
  %conv110.i = trunc i32 %66 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i198, i8 %conv110.i) #9, !srcloc !295
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i198, i8 0) #9, !srcloc !295
  br label %write_in.i

sw.bb111.i:                                       ; preds = %do.end40.i
  %67 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %17, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %68)
  %cmp114.not.i = icmp eq i16 %68, 256
  br i1 %cmp114.not.i, label %if.end117.i, label %sw.bb111.i.do.end327.i_crit_edge

sw.bb111.i.do.end327.i_crit_edge:                 ; preds = %sw.bb111.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end327.i

if.end117.i:                                      ; preds = %sw.bb111.i
  call void @__sanitizer_cov_trace_pc() #11
  %udp_baseaddr118.i = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 11
  %69 = ptrtoint ptr %udp_baseaddr118.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %udp_baseaddr118.i, align 8
  %add.ptr119.i = getelementptr i8, ptr %70, i32 4
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr119.i) #9, !srcloc !290
  %or121.i = or i32 %71, 4
  %72 = ptrtoint ptr %udp_baseaddr118.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %udp_baseaddr118.i, align 8
  %add.ptr123.i = getelementptr i8, ptr %73, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123.i, i32 %or121.i) #9, !srcloc !286
  br label %write_in.i

sw.bb124.i:                                       ; preds = %do.end40.i
  %74 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %17, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %75)
  %cmp127.not.i = icmp eq i16 %75, 256
  br i1 %cmp127.not.i, label %if.end130.i, label %sw.bb124.i.do.end327.i_crit_edge

sw.bb124.i.do.end327.i_crit_edge:                 ; preds = %sw.bb124.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end327.i

if.end130.i:                                      ; preds = %sw.bb124.i
  call void @__sanitizer_cov_trace_pc() #11
  %udp_baseaddr131.i = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 11
  %76 = ptrtoint ptr %udp_baseaddr131.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %udp_baseaddr131.i, align 8
  %add.ptr132.i = getelementptr i8, ptr %77, i32 4
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr132.i) #9, !srcloc !290
  %and134.i = and i32 %78, -5
  %79 = ptrtoint ptr %udp_baseaddr131.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %udp_baseaddr131.i, align 8
  %add.ptr136.i = getelementptr i8, ptr %80, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr136.i, i32 %and134.i) #9, !srcloc !286
  br label %write_in.i

do.end140.i:                                      ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i198, i8 0) #9, !srcloc !295
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i198, i8 0) #9, !srcloc !295
  br label %write_in.i

sw.bb142.i:                                       ; preds = %do.end40.i
  %81 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %18, align 4
  %83 = lshr i16 %82, 8
  %84 = and i16 %83, 15
  %and144.i = zext i16 %84 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %84)
  %cmp147.i = icmp ugt i16 %84, 5
  br i1 %cmp147.i, label %sw.bb142.i.do.end327.i_crit_edge, label %lor.lhs.false.i

sw.bb142.i.do.end327.i_crit_edge:                 ; preds = %sw.bb142.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end327.i

lor.lhs.false.i:                                  ; preds = %sw.bb142.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool149.not.i = icmp eq i16 %84, 0
  br i1 %tobool149.not.i, label %lor.lhs.false.i.do.end182.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.do.end182.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end182.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %desc.i = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 %and144.i, i32 0, i32 9
  %85 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %desc.i, align 4
  %tobool151.not.i = icmp eq ptr %86, null
  br i1 %tobool151.not.i, label %land.lhs.true.i.do.end327.i_crit_edge, label %if.then155.critedge.i

land.lhs.true.i.do.end327.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end327.i

if.then155.critedge.i:                            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %82)
  %tobool159.not.i = icmp sgt i16 %82, -1
  %is_in170.i = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 %and144.i, i32 6
  %87 = ptrtoint ptr %is_in170.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load171.i = load i8, ptr %is_in170.i, align 1
  %88 = and i8 %bf.load171.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool175.not.i = icmp eq i8 %88, 0
  br i1 %tobool159.not.i, label %if.else169.i, label %if.then160.i

if.then160.i:                                     ; preds = %if.then155.critedge.i
  br i1 %tobool175.not.i, label %if.then160.i.do.end327.i_crit_edge, label %if.then160.i.do.end182.i_crit_edge

if.then160.i.do.end182.i_crit_edge:               ; preds = %if.then160.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end182.i

if.then160.i.do.end327.i_crit_edge:               ; preds = %if.then160.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end327.i

if.else169.i:                                     ; preds = %if.then155.critedge.i
  br i1 %tobool175.not.i, label %if.else169.i.do.end182.i_crit_edge, label %if.else169.i.do.end327.i_crit_edge

if.else169.i.do.end327.i_crit_edge:               ; preds = %if.else169.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end327.i

if.else169.i.do.end182.i_crit_edge:               ; preds = %if.else169.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end182.i

do.end182.i:                                      ; preds = %if.else169.i.do.end182.i_crit_edge, %if.then160.i.do.end182.i_crit_edge, %lor.lhs.false.i.do.end182.i_crit_edge
  %creg183.i = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 %and144.i, i32 3
  %89 = ptrtoint ptr %creg183.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %creg183.i, align 4
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #9, !srcloc !290
  %92 = trunc i32 %91 to i8
  %93 = lshr i8 %92, 5
  %94 = and i8 %93, 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i198, i8 %94) #9, !srcloc !295
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i198, i8 0) #9, !srcloc !295
  br label %write_in.i

sw.bb191.i:                                       ; preds = %do.end40.i
  %95 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %18, align 4
  %97 = tail call i16 @llvm.bswap.i16(i16 %96) #9
  %conv193.i = zext i16 %97 to i32
  %and194.i = and i32 %conv193.i, 15
  %98 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %17, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %cmp199.not.i = icmp ne i16 %99, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and194.i)
  %cmp202.i = icmp ugt i32 %and194.i, 5
  %or.cond.i = select i1 %cmp199.not.i, i1 true, i1 %cmp202.i
  br i1 %or.cond.i, label %sw.bb191.i.do.end327.i_crit_edge, label %if.end205.i

sw.bb191.i.do.end327.i_crit_edge:                 ; preds = %sw.bb191.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end327.i

if.end205.i:                                      ; preds = %sw.bb191.i
  %desc207.i = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 %and194.i, i32 0, i32 9
  %100 = ptrtoint ptr %desc207.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %desc207.i, align 4
  %tobool208.not.i = icmp eq ptr %101, null
  br i1 %tobool208.not.i, label %if.end205.i.do.end327.i_crit_edge, label %lor.lhs.false209.i

if.end205.i.do.end327.i_crit_edge:                ; preds = %if.end205.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end327.i

lor.lhs.false209.i:                               ; preds = %if.end205.i
  %is_iso.i = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 %and194.i, i32 6
  %102 = ptrtoint ptr %is_iso.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %bf.load210.i = load i8, ptr %is_iso.i, align 1
  %103 = and i8 %bf.load210.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool214.not.i = icmp eq i8 %103, 0
  br i1 %tobool214.not.i, label %if.end216.i, label %lor.lhs.false209.i.do.end327.i_crit_edge

lor.lhs.false209.i.do.end327.i_crit_edge:         ; preds = %lor.lhs.false209.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end327.i

if.end216.i:                                      ; preds = %lor.lhs.false209.i
  %and219.i = and i32 %conv193.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and219.i)
  %tobool220.not.i = icmp eq i32 %and219.i, 0
  %104 = and i8 %bf.load210.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool236.not.i = icmp eq i8 %104, 0
  br i1 %tobool220.not.i, label %if.else230.i, label %if.then221.i

if.then221.i:                                     ; preds = %if.end216.i
  br i1 %tobool236.not.i, label %if.then221.i.do.end327.i_crit_edge, label %if.then221.i.if.end239.i_crit_edge

if.then221.i.if.end239.i_crit_edge:               ; preds = %if.then221.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end239.i

if.then221.i.do.end327.i_crit_edge:               ; preds = %if.then221.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end327.i

if.else230.i:                                     ; preds = %if.end216.i
  br i1 %tobool236.not.i, label %if.else230.i.if.end239.i_crit_edge, label %if.else230.i.do.end327.i_crit_edge

if.else230.i.do.end327.i_crit_edge:               ; preds = %if.else230.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end327.i

if.else230.i.if.end239.i_crit_edge:               ; preds = %if.else230.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end239.i

if.end239.i:                                      ; preds = %if.else230.i.if.end239.i_crit_edge, %if.then221.i.if.end239.i_crit_edge
  %creg240.i = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 %and194.i, i32 3
  %105 = ptrtoint ptr %creg240.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %creg240.i, align 4
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #9, !srcloc !290
  %and242.i = and i32 %107, -128
  %or243.i = or i32 %and242.i, 111
  %108 = ptrtoint ptr %creg240.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %creg240.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %or243.i) #9, !srcloc !286
  br label %write_in.i

sw.bb245.i:                                       ; preds = %do.end40.i
  %110 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %18, align 4
  %112 = tail call i16 @llvm.bswap.i16(i16 %111) #9
  %conv247.i = zext i16 %112 to i32
  %and248.i = and i32 %conv247.i, 15
  %arrayidx250.i = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 %and248.i
  %113 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %17, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %cmp253.not.i = icmp ne i16 %114, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and248.i)
  %cmp256.i = icmp ugt i32 %and248.i, 5
  %or.cond447.i = select i1 %cmp253.not.i, i1 true, i1 %cmp256.i
  br i1 %or.cond447.i, label %sw.bb245.i.do.end327.i_crit_edge, label %if.end259.i

sw.bb245.i.do.end327.i_crit_edge:                 ; preds = %sw.bb245.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end327.i

if.end259.i:                                      ; preds = %sw.bb245.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and248.i)
  %cmp260.i = icmp eq i32 %and248.i, 0
  br i1 %cmp260.i, label %if.end259.i.write_in.i_crit_edge, label %if.end263.i

if.end259.i.write_in.i_crit_edge:                 ; preds = %if.end259.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %write_in.i

if.end263.i:                                      ; preds = %if.end259.i
  %desc265.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx250.i, i32 0, i32 9
  %115 = ptrtoint ptr %desc265.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %desc265.i, align 4
  %tobool266.not.i = icmp eq ptr %116, null
  br i1 %tobool266.not.i, label %if.end263.i.do.end327.i_crit_edge, label %lor.lhs.false267.i

if.end263.i.do.end327.i_crit_edge:                ; preds = %if.end263.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end327.i

lor.lhs.false267.i:                               ; preds = %if.end263.i
  %is_iso268.i = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 %and248.i, i32 6
  %117 = ptrtoint ptr %is_iso268.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %bf.load269.i = load i8, ptr %is_iso268.i, align 1
  %118 = and i8 %bf.load269.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool273.not.i = icmp eq i8 %118, 0
  br i1 %tobool273.not.i, label %if.end275.i, label %lor.lhs.false267.i.do.end327.i_crit_edge

lor.lhs.false267.i.do.end327.i_crit_edge:         ; preds = %lor.lhs.false267.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end327.i

if.end275.i:                                      ; preds = %lor.lhs.false267.i
  %and278.i = and i32 %conv247.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and278.i)
  %tobool279.not.i = icmp eq i32 %and278.i, 0
  %119 = and i8 %bf.load269.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool295.not.i = icmp eq i8 %119, 0
  br i1 %tobool279.not.i, label %if.else289.i, label %if.then280.i

if.then280.i:                                     ; preds = %if.end275.i
  br i1 %tobool295.not.i, label %if.then280.i.do.end327.i_crit_edge, label %if.then280.i.if.end298.i_crit_edge

if.then280.i.if.end298.i_crit_edge:               ; preds = %if.then280.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end298.i

if.then280.i.do.end327.i_crit_edge:               ; preds = %if.then280.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end327.i

if.else289.i:                                     ; preds = %if.end275.i
  br i1 %tobool295.not.i, label %if.else289.i.if.end298.i_crit_edge, label %if.else289.i.do.end327.i_crit_edge

if.else289.i.do.end327.i_crit_edge:               ; preds = %if.else289.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end327.i

if.else289.i.if.end298.i_crit_edge:               ; preds = %if.else289.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end298.i

if.end298.i:                                      ; preds = %if.else289.i.if.end298.i_crit_edge, %if.then280.i.if.end298.i_crit_edge
  %int_mask.i = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 %and248.i, i32 5
  %120 = ptrtoint ptr %int_mask.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %int_mask.i, align 2
  %conv299.i = zext i8 %121 to i32
  %udp_baseaddr300.i = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 11
  %122 = ptrtoint ptr %udp_baseaddr300.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %udp_baseaddr300.i, align 8
  %add.ptr301.i = getelementptr i8, ptr %123, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr301.i, i32 %conv299.i) #9, !srcloc !286
  %124 = ptrtoint ptr %udp_baseaddr300.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %udp_baseaddr300.i, align 8
  %add.ptr303.i = getelementptr i8, ptr %125, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr303.i, i32 0) #9, !srcloc !286
  %creg304.i = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 %and248.i, i32 3
  %126 = ptrtoint ptr %creg304.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %creg304.i, align 4
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #9, !srcloc !290
  %or306.i = and i32 %128, -128
  %and307.i = or i32 %or306.i, 79
  %129 = ptrtoint ptr %creg304.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %creg304.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %and307.i) #9, !srcloc !286
  %queue.i202 = getelementptr %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 %and248.i, i32 1
  %131 = ptrtoint ptr %queue.i202 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile ptr, ptr %queue.i202, align 4
  %cmp.i.not.i203 = icmp eq ptr %132, %queue.i202
  br i1 %cmp.i.not.i203, label %if.end298.i.write_in.i_crit_edge, label %if.then311.i

if.end298.i.write_in.i_crit_edge:                 ; preds = %if.end298.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %write_in.i

if.then311.i:                                     ; preds = %if.end298.i
  call void @__sanitizer_cov_trace_pc() #11
  %call312.i = tail call fastcc i32 @handle_ep(ptr noundef %arrayidx250.i) #9
  br label %write_in.i

sw.epilog.i:                                      ; preds = %sw.bb61.i, %do.end40.i.sw.epilog.i_crit_edge
  %driver.i = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 2
  %133 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %driver.i, align 8
  %tobool314.not.i = icmp eq ptr %134, null
  br i1 %tobool314.not.i, label %sw.epilog.i.do.end327.i_crit_edge, label %if.then315.i

sw.epilog.i.do.end327.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end327.i

if.then315.i:                                     ; preds = %sw.epilog.i
  %lock.i = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 13
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  %135 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %driver.i, align 8
  %setup.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %136, i32 0, i32 4
  %137 = ptrtoint ptr %setup.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %setup.i, align 4
  %call318.i = call i32 %138(ptr noundef %udc, ptr noundef nonnull %pkt.i) #9
  call void @_raw_spin_lock(ptr noundef %lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call318.i)
  %phi.cmp.i = icmp slt i32 %call318.i, 0
  br i1 %phi.cmp.i, label %if.then315.i.do.end327.i_crit_edge, label %if.then315.i.handle_setup.exit_crit_edge

if.then315.i.handle_setup.exit_crit_edge:         ; preds = %if.then315.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %handle_setup.exit

if.then315.i.do.end327.i_crit_edge:               ; preds = %if.then315.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end327.i

do.end327.i:                                      ; preds = %if.then315.i.do.end327.i_crit_edge, %sw.epilog.i.do.end327.i_crit_edge, %if.else289.i.do.end327.i_crit_edge, %if.then280.i.do.end327.i_crit_edge, %lor.lhs.false267.i.do.end327.i_crit_edge, %if.end263.i.do.end327.i_crit_edge, %sw.bb245.i.do.end327.i_crit_edge, %if.else230.i.do.end327.i_crit_edge, %if.then221.i.do.end327.i_crit_edge, %lor.lhs.false209.i.do.end327.i_crit_edge, %if.end205.i.do.end327.i_crit_edge, %sw.bb191.i.do.end327.i_crit_edge, %if.else169.i.do.end327.i_crit_edge, %if.then160.i.do.end327.i_crit_edge, %land.lhs.true.i.do.end327.i_crit_edge, %sw.bb142.i.do.end327.i_crit_edge, %sw.bb124.i.do.end327.i_crit_edge, %sw.bb111.i.do.end327.i_crit_edge, %do.end40.i.do.end327.i_crit_edge, %do.end40.i.do.end327.i_crit_edge216, %if.end16.i.do.end327.i_crit_edge
  %csr.addr.1.i = phi i32 [ %and18.i, %if.end16.i.do.end327.i_crit_edge ], [ %and46.i, %if.then315.i.do.end327.i_crit_edge ], [ %and46.i, %sw.bb245.i.do.end327.i_crit_edge ], [ %and46.i, %lor.lhs.false267.i.do.end327.i_crit_edge ], [ %and46.i, %if.then280.i.do.end327.i_crit_edge ], [ %and46.i, %if.else289.i.do.end327.i_crit_edge ], [ %and46.i, %if.end263.i.do.end327.i_crit_edge ], [ %and46.i, %sw.bb191.i.do.end327.i_crit_edge ], [ %and46.i, %lor.lhs.false209.i.do.end327.i_crit_edge ], [ %and46.i, %if.then221.i.do.end327.i_crit_edge ], [ %and46.i, %if.else230.i.do.end327.i_crit_edge ], [ %and46.i, %if.end205.i.do.end327.i_crit_edge ], [ %and46.i, %sw.bb142.i.do.end327.i_crit_edge ], [ %and46.i, %if.then160.i.do.end327.i_crit_edge ], [ %and46.i, %if.else169.i.do.end327.i_crit_edge ], [ %and46.i, %land.lhs.true.i.do.end327.i_crit_edge ], [ %and46.i, %do.end40.i.do.end327.i_crit_edge ], [ %and46.i, %do.end40.i.do.end327.i_crit_edge216 ], [ %and46.i, %sw.bb124.i.do.end327.i_crit_edge ], [ %and46.i, %sw.bb111.i.do.end327.i_crit_edge ], [ %and46.i, %sw.epilog.i.do.end327.i_crit_edge ]
  %or328.i = or i32 %csr.addr.1.i, 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %or328.i) #9, !srcloc !286
  %139 = ptrtoint ptr %req_pending9 to i32
  call void @__asan_load1_noabort(i32 %139)
  %bf.load330.i = load i8, ptr %req_pending9, align 8
  %bf.clear331.i = and i8 %bf.load330.i, -9
  br label %cleanup.sink.split.i

write_in.i:                                       ; preds = %if.then311.i, %if.end298.i.write_in.i_crit_edge, %if.end259.i.write_in.i_crit_edge, %if.end239.i, %do.end182.i, %do.end140.i, %if.end130.i, %if.end117.i, %sw.bb94.i
  %or337.i = or i32 %42, 95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %or337.i) #9, !srcloc !286
  %140 = ptrtoint ptr %req_pending9 to i32
  call void @__asan_load1_noabort(i32 %140)
  %bf.load339.i = load i8, ptr %req_pending9, align 8
  %bf.clear340.i = and i8 %bf.load339.i, -9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %write_in.i, %do.end327.i, %sw.bb.i
  %bf.clear331.sink.i = phi i8 [ %bf.clear331.i, %do.end327.i ], [ %bf.clear340.i, %write_in.i ], [ %bf.clear59.i, %sw.bb.i ]
  %141 = ptrtoint ptr %req_pending9 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %bf.clear331.sink.i, ptr %req_pending9, align 8
  br label %handle_setup.exit

handle_setup.exit:                                ; preds = %cleanup.sink.split.i, %if.then315.i.handle_setup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pkt.i) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %queue = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 0, i32 1
  %142 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile ptr, ptr %queue, align 4
  %cmp.i204.not = icmp eq ptr %143, %queue
  br i1 %cmp.i204.not, label %if.end18.thread, label %if.end18

if.end18:                                         ; preds = %if.end13
  %add.ptr = getelementptr i8, ptr %143, i32 -56
  %and19 = and i32 %csr.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.else71_crit_edge, label %if.then21

if.end18.if.else71_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else71

if.end18.thread:                                  ; preds = %if.end13
  %and19206 = and i32 %csr.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19206)
  %tobool20.not207 = icmp eq i32 %and19206, 0
  br i1 %tobool20.not207, label %if.end18.thread.if.else71_crit_edge, label %if.end18.thread.if.else37_crit_edge

if.end18.thread.if.else37_crit_edge:              ; preds = %if.end18.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else37

if.end18.thread.if.else71_crit_edge:              ; preds = %if.end18.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else71

if.then21:                                        ; preds = %if.end18
  %tobool24.not = icmp eq ptr %add.ptr, null
  br i1 %tobool24.not, label %if.then21.if.else37_crit_edge, label %land.lhs.true

if.then21.if.else37_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else37

land.lhs.true:                                    ; preds = %if.then21
  %is_in = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 0, i32 6
  %144 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %144)
  %bf.load25 = load i8, ptr %is_in, align 1
  %145 = and i8 %bf.load25, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool27.not = icmp eq i8 %145, 0
  br i1 %tobool27.not, label %land.lhs.true.if.else37_crit_edge, label %if.then28

land.lhs.true.if.else37_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else37

if.then28:                                        ; preds = %land.lhs.true
  %call29 = tail call fastcc i32 @handle_ep(ptr noundef %ep)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then28.cleanup_crit_edge, label %if.then31

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %req_pending32 = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 4
  %146 = ptrtoint ptr %req_pending32 to i32
  call void @__asan_load1_noabort(i32 %146)
  %bf.load33 = load i8, ptr %req_pending32, align 8
  %bf.clear34 = and i8 %bf.load33, -9
  store i8 %bf.clear34, ptr %req_pending32, align 8
  br label %cleanup

if.else37:                                        ; preds = %land.lhs.true.if.else37_crit_edge, %if.then21.if.else37_crit_edge, %if.end18.thread.if.else37_crit_edge
  %and23214.in = and i32 %csr.0, -96
  %and23214 = or i32 %and23214.in, 78
  %req_pending38 = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 4
  %147 = ptrtoint ptr %req_pending38 to i32
  call void @__asan_load1_noabort(i32 %147)
  %bf.load39 = load i8, ptr %req_pending38, align 8
  %bf.clear40 = and i8 %bf.load39, -9
  store i8 %bf.clear40, ptr %req_pending38, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %and23214) #9, !srcloc !286
  %148 = ptrtoint ptr %req_pending38 to i32
  call void @__asan_load1_noabort(i32 %148)
  %bf.load42 = load i8, ptr %req_pending38, align 8
  %149 = and i8 %bf.load42, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool46.not = icmp eq i8 %149, 0
  br i1 %tobool46.not, label %if.else37.cleanup_crit_edge, label %if.then47

if.else37.cleanup_crit_edge:                      ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then47:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #11
  %addr = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 5
  %150 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %addr, align 1
  %conv = zext i8 %151 to i32
  %or49 = or i32 %conv, 256
  %udp_baseaddr = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 11
  %152 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr50 = getelementptr i8, ptr %153, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %or49) #9, !srcloc !286
  %154 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr52 = getelementptr i8, ptr %155, i32 4
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #9, !srcloc !290
  %and54 = and i32 %156, -2
  %157 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %addr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool56.not = icmp ne i8 %158, 0
  %masksel = zext i1 %tobool56.not to i32
  %spec.select = or i32 %and54, %masksel
  %159 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr61 = getelementptr i8, ptr %160, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %spec.select) #9, !srcloc !286
  %161 = ptrtoint ptr %req_pending38 to i32
  call void @__asan_load1_noabort(i32 %161)
  %bf.load63 = load i8, ptr %req_pending38, align 8
  %bf.clear64 = and i8 %bf.load63, -5
  store i8 %bf.clear64, ptr %req_pending38, align 8
  br label %cleanup

if.else71:                                        ; preds = %if.end18.thread.if.else71_crit_edge, %if.end18.if.else71_crit_edge
  %req.0209 = phi ptr [ null, %if.end18.thread.if.else71_crit_edge ], [ %add.ptr, %if.end18.if.else71_crit_edge ]
  %and72 = and i32 %csr.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.else71.cleanup_crit_edge, label %if.then74

if.else71.cleanup_crit_edge:                      ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then74:                                        ; preds = %if.else71
  %or75 = and i32 %csr.0, -96
  %is_in77 = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 1, i32 0, i32 6
  %162 = ptrtoint ptr %is_in77 to i32
  call void @__asan_load1_noabort(i32 %162)
  %bf.load78 = load i8, ptr %is_in77, align 1
  %163 = and i8 %bf.load78, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool82.not = icmp eq i8 %163, 0
  br i1 %tobool82.not, label %if.then83, label %do.end134

if.then83:                                        ; preds = %if.then74
  %tobool84.not = icmp eq ptr %req.0209, null
  br i1 %tobool84.not, label %if.else100, label %if.then85

if.then85:                                        ; preds = %if.then83
  %call86 = tail call fastcc i32 @handle_ep(ptr noundef %ep)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.then85.cleanup_crit_edge, label %do.end91

if.then85.cleanup_crit_edge:                      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end91:                                         ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #11
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !290
  %or94 = or i32 %164, 95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %or94) #9, !srcloc !286
  %req_pending95 = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 4
  %165 = ptrtoint ptr %req_pending95 to i32
  call void @__asan_load1_noabort(i32 %165)
  %bf.load96 = load i8, ptr %req_pending95, align 8
  %bf.clear97 = and i8 %bf.load96, -9
  store i8 %bf.clear97, ptr %req_pending95, align 8
  br label %cleanup

if.else100:                                       ; preds = %if.then83
  %req_pending101 = getelementptr inbounds %struct.at91_udc, ptr %udc, i32 0, i32 4
  %166 = ptrtoint ptr %req_pending101 to i32
  call void @__asan_load1_noabort(i32 %166)
  %bf.load102 = load i8, ptr %req_pending101, align 8
  %167 = and i8 %bf.load102, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool106.not = icmp eq i8 %167, 0
  br i1 %tobool106.not, label %if.else100.cleanup_crit_edge, label %do.body108

if.else100.cleanup_crit_edge:                     ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body108:                                       ; preds = %if.else100
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_ep0.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_ep0, %do.end123)) #9
          to label %if.then120 [label %do.end123], !srcloc !287

if.then120:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_ep0.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.50) #9
  br label %do.end123

do.end123:                                        ; preds = %if.then120, %do.body108
  %or124 = or i32 %or75, 109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %or124) #9, !srcloc !286
  %168 = ptrtoint ptr %req_pending101 to i32
  call void @__asan_load1_noabort(i32 %168)
  %bf.load126 = load i8, ptr %req_pending101, align 8
  %bf.clear127 = and i8 %bf.load126, -9
  store i8 %bf.clear127, ptr %req_pending101, align 8
  br label %cleanup

do.end134:                                        ; preds = %if.then74
  %and76 = or i32 %or75, 77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %and76) #9, !srcloc !286
  %tobool135.not = icmp eq ptr %req.0209, null
  br i1 %tobool135.not, label %do.end134.cleanup_crit_edge, label %if.then136

do.end134.cleanup_crit_edge:                      ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then136:                                       ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @done(ptr noundef %ep, ptr noundef nonnull %req.0209, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.then136, %do.end134.cleanup_crit_edge, %do.end123, %if.else100.cleanup_crit_edge, %do.end91, %if.then85.cleanup_crit_edge, %if.else71.cleanup_crit_edge, %if.then47, %if.else37.cleanup_crit_edge, %if.then31, %if.then28.cleanup_crit_edge, %handle_setup.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @handle_ep(ptr noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %creg1 = getelementptr inbounds %struct.at91_ep, ptr %ep, i32 0, i32 3
  %0 = ptrtoint ptr %creg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %creg1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !290
  %queue = getelementptr inbounds %struct.at91_ep, ptr %ep, i32 0, i32 1
  %3 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %4, %queue
  %add.ptr = getelementptr i8, ptr %4, i32 -56
  %spec.select = select i1 %cmp.i.not, ptr null, ptr %add.ptr
  %is_in = getelementptr inbounds %struct.at91_ep, ptr %ep, i32 0, i32 6
  %5 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %is_in, align 1
  %6 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  br i1 %tobool4.not, label %if.else14, label %if.then5

if.then5:                                         ; preds = %entry
  %and = and i32 %2, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.then5.if.end9_crit_edge, label %if.then7

if.then5.if.end9_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %or = and i32 %2, -96
  %and8 = or i32 %or, 70
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %and8) #9, !srcloc !286
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then5.if.end9_crit_edge
  %tobool10.not = icmp eq ptr %spec.select, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.then11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call fastcc i32 @write_fifo(ptr noundef %ep, ptr noundef nonnull %spec.select)
  br label %cleanup

if.else14:                                        ; preds = %entry
  %and15 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else14.if.end30_crit_edge, label %if.then17

if.else14.if.end30_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then17:                                        ; preds = %if.else14
  %7 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool22.not = icmp eq i8 %7, 0
  %tobool23.not = icmp eq ptr %spec.select, null
  %or.cond = select i1 %tobool22.not, i1 true, i1 %tobool23.not
  br i1 %or.cond, label %if.then17.if.end26_crit_edge, label %if.then24

if.then17.if.end26_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then24:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %status = getelementptr inbounds %struct.usb_request, ptr %spec.select, i32 0, i32 11
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -84, ptr %status, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.then17.if.end26_crit_edge
  %or27 = and i32 %2, -96
  %and28 = or i32 %or27, 71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %and28) #9, !srcloc !286
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !290
  br label %if.end30

if.end30:                                         ; preds = %if.end26, %if.else14.if.end30_crit_edge
  %csr.0 = phi i32 [ %9, %if.end26 ], [ %2, %if.else14.if.end30_crit_edge ]
  %tobool31.not = icmp eq ptr %spec.select, null
  %and33 = and i32 %csr.0, 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %or.cond63 = select i1 %tobool31.not, i1 true, i1 %tobool34.not
  br i1 %or.cond63, label %if.end30.cleanup_crit_edge, label %if.then35

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %call36 = tail call fastcc i32 @read_fifo(ptr noundef %ep, ptr noundef nonnull %spec.select)
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end30.cleanup_crit_edge, %if.then11, %if.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.then11 ], [ %call36, %if.then35 ], [ 0, %if.end30.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_udc_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_udc_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.53, ptr noundef nonnull @driver_name, ptr noundef nonnull @.str.15) #9
  %vbus = getelementptr inbounds %struct.at91_udc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %vbus to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %vbus, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %cond = select i1 %tobool.not, ptr @.str.56, ptr @.str.55
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  %cond10 = select i1 %tobool.not, ptr @.str.58, ptr @.str.57
  %spec.select = select i1 %tobool4.not, ptr @.str.59, ptr %cond10
  %is_selfpowered = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %is_selfpowered to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load12 = load i32, ptr %is_selfpowered, align 4
  %5 = and i32 %bf.load12, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool15.not = icmp eq i32 %5, 0
  %cond16 = select i1 %tobool15.not, ptr @.str.61, ptr @.str.60
  %6 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool21.not = icmp eq i8 %6, 0
  %cond22 = select i1 %tobool21.not, ptr @.str.29, ptr @.str.62
  %driver = getelementptr inbounds %struct.at91_udc, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver, align 8
  %tobool23.not = icmp eq ptr %8, null
  br i1 %tobool23.not, label %entry.cond.end28_crit_edge, label %cond.true24

entry.cond.end28_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end28

cond.true24:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver26 = getelementptr inbounds %struct.usb_gadget_driver, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %driver26 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver26, align 4
  br label %cond.end28

cond.end28:                                       ; preds = %cond.true24, %entry.cond.end28_crit_edge
  %cond29 = phi ptr [ %10, %cond.true24 ], [ @.str.63, %entry.cond.end28_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef nonnull %cond, ptr noundef nonnull %spec.select, ptr noundef nonnull %cond16, ptr noundef nonnull %cond22, ptr noundef %cond29) #9
  %11 = ptrtoint ptr %vbus to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load30 = load i8, ptr %vbus, align 8
  %12 = and i8 %bf.load30, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool34.not = icmp eq i8 %12, 0
  br i1 %tobool34.not, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.64) #9
  br label %cleanup

if.end:                                           ; preds = %cond.end28
  %udp_baseaddr = getelementptr inbounds %struct.at91_udc, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udp_baseaddr, align 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !290
  %and = and i32 %15, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  %cond36 = select i1 %tobool35.not, ptr @.str.29, ptr @.str.66
  %and37 = and i32 %15, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %cond39 = select i1 %tobool38.not, ptr @.str.29, ptr @.str.67
  %and40 = and i32 %15, 2047
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.65, i32 noundef %15, ptr noundef nonnull %cond36, ptr noundef nonnull %cond39, i32 noundef %and40) #9
  %16 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr42 = getelementptr i8, ptr %17, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #9, !srcloc !290
  %and44 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %cond46 = select i1 %tobool45.not, ptr @.str.29, ptr @.str.69
  %and47 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  %cond49 = select i1 %tobool48.not, ptr @.str.29, ptr @.str.70
  %and50 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %cond52 = select i1 %tobool51.not, ptr @.str.29, ptr @.str.71
  %and53 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  %cond55 = select i1 %tobool54.not, ptr @.str.29, ptr @.str.72
  %and56 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  %cond58 = select i1 %tobool57.not, ptr @.str.29, ptr @.str.73
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.68, i32 noundef %18, ptr noundef nonnull %cond46, ptr noundef nonnull %cond49, ptr noundef nonnull %cond52, ptr noundef nonnull %cond55, ptr noundef nonnull %cond58) #9
  %19 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr60 = getelementptr i8, ptr %20, i32 8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60) #9, !srcloc !290
  %and62 = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  %cond64 = select i1 %tobool63.not, ptr @.str.29, ptr @.str.75
  %and65 = and i32 %21, 127
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.74, i32 noundef %21, ptr noundef nonnull %cond64, i32 noundef %and65) #9
  %22 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr67 = getelementptr i8, ptr %23, i32 24
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr67) #9, !srcloc !290
  tail call fastcc void @proc_irq_show(ptr noundef %s, ptr noundef nonnull @.str.76, i32 noundef %24)
  %25 = ptrtoint ptr %udp_baseaddr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %udp_baseaddr, align 8
  %add.ptr70 = getelementptr i8, ptr %26, i32 28
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #9, !srcloc !290
  tail call fastcc void @proc_irq_show(ptr noundef %s, ptr noundef nonnull @.str.77, i32 noundef %27)
  %28 = ptrtoint ptr %vbus to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load73 = load i8, ptr %vbus, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %bf.load73)
  %.not = icmp ugt i8 %bf.load73, -65
  br i1 %.not, label %if.then83, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then83:                                        ; preds = %if.end
  %ep84 = getelementptr inbounds %struct.at91_udc, ptr %1, i32 0, i32 1
  tail call fastcc void @proc_ep_show(ptr noundef %s, ptr noundef %ep84)
  %ep_list = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %ep_list to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn147 = load ptr, ptr %ep_list, align 4
  %cmp.not149 = icmp eq ptr %.pn147, %ep_list
  br i1 %cmp.not149, label %if.then83.cleanup_crit_edge, label %if.then83.for.body_crit_edge

if.then83.for.body_crit_edge:                     ; preds = %if.then83
  br label %for.body

if.then83.cleanup_crit_edge:                      ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then83.for.body_crit_edge
  %.pn150 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn147, %if.then83.for.body_crit_edge ]
  %desc = getelementptr i8, ptr %.pn150, i32 24
  %30 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %desc, align 4
  %tobool93.not = icmp eq ptr %31, null
  br i1 %tobool93.not, label %for.body.for.inc_crit_edge, label %if.then94

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then94:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %ep.0151 = getelementptr i8, ptr %.pn150, i32 -12
  tail call fastcc void @proc_ep_show(ptr noundef %s, ptr noundef %ep.0151)
  br label %for.inc

for.inc:                                          ; preds = %if.then94, %for.body.for.inc_crit_edge
  %32 = ptrtoint ptr %.pn150 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn = load ptr, ptr %.pn150, align 4
  %cmp.not = icmp eq ptr %.pn, %ep_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then83.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @proc_irq_show(ptr noundef %s, ptr noundef %label, i32 noundef %mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mask, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.29, ptr @.str.79
  %and1 = and i32 %mask, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %cond3 = select i1 %tobool2.not, ptr @.str.29, ptr @.str.80
  %and4 = and i32 %mask, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %cond6 = select i1 %tobool5.not, ptr @.str.29, ptr @.str.81
  %and7 = and i32 %mask, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %cond9 = select i1 %tobool8.not, ptr @.str.29, ptr @.str.82
  %and10 = and i32 %mask, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %cond12 = select i1 %tobool11.not, ptr @.str.29, ptr @.str.83
  %and13 = and i32 %mask, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %cond15 = select i1 %tobool14.not, ptr @.str.29, ptr @.str.84
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.78, ptr noundef %label, i32 noundef %mask, ptr noundef nonnull %cond, ptr noundef nonnull %cond3, ptr noundef nonnull %cond6, ptr noundef nonnull %cond9, ptr noundef nonnull %cond12, ptr noundef nonnull %cond15) #9
  %and16 = and i32 %mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.85, i32 noundef 0) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %and16.1 = and i32 %mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.1)
  %tobool17.not.1 = icmp eq i32 %and16.1, 0
  br i1 %tobool17.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.85, i32 noundef 1) #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %and16.2 = and i32 %mask, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.2)
  %tobool17.not.2 = icmp eq i32 %and16.2, 0
  br i1 %tobool17.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.85, i32 noundef 2) #9
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %and16.3 = and i32 %mask, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.3)
  %tobool17.not.3 = icmp eq i32 %and16.3, 0
  br i1 %tobool17.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.85, i32 noundef 3) #9
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %and16.4 = and i32 %mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.4)
  %tobool17.not.4 = icmp eq i32 %and16.4, 0
  br i1 %tobool17.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.85, i32 noundef 4) #9
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %and16.5 = and i32 %mask, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.5)
  %tobool17.not.5 = icmp eq i32 %and16.5, 0
  br i1 %tobool17.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.85, i32 noundef 5) #9
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %and16.6 = and i32 %mask, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.6)
  %tobool17.not.6 = icmp eq i32 %and16.6, 0
  br i1 %tobool17.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.85, i32 noundef 6) #9
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %and16.7 = and i32 %mask, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.7)
  %tobool17.not.7 = icmp eq i32 %and16.7, 0
  br i1 %tobool17.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.85, i32 noundef 7) #9
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.86) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @proc_ep_show(ptr noundef %s, ptr noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %udc1 = getelementptr inbounds %struct.at91_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %udc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc1, align 4
  %lock = getelementptr inbounds %struct.at91_udc, ptr %1, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %creg = getelementptr inbounds %struct.at91_ep, ptr %ep, i32 0, i32 3
  %2 = ptrtoint ptr %creg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %creg, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !290
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.86) #9
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %7 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %7, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %is_in = getelementptr inbounds %struct.at91_ep, ptr %ep, i32 0, i32 6
  %8 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load9 = load i8, ptr %is_in, align 1
  %9 = and i8 %bf.load9, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %cond = select i1 %tobool.not, ptr @.str.96, ptr @.str.30
  %10 = and i8 %bf.load9, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool16.not = icmp eq i8 %10, 0
  %cond17 = select i1 %tobool16.not, ptr @.str.29, ptr @.str.97
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load9)
  %tobool21.not = icmp sgt i8 %bf.load9, -1
  %11 = and i8 %bf.load9, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool26.not = icmp eq i8 %11, 0
  %cond27 = select i1 %tobool26.not, ptr @.str.99, ptr @.str.98
  %cond28 = select i1 %tobool21.not, ptr @.str.29, ptr %cond27
  %12 = and i8 %bf.load9, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool33.not = icmp eq i8 %12, 0
  %cond34 = select i1 %tobool33.not, ptr @.str.29, ptr @.str.100
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.95, ptr noundef %6, i32 noundef %bf.cast, ptr noundef nonnull %cond, ptr noundef nonnull %cond17, ptr noundef nonnull %cond28, ptr noundef nonnull %cond34) #9
  %and = lshr i32 %4, 16
  %shr = and i32 %and, 2047
  %and35 = and i32 %4, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %cond37 = select i1 %tobool36.not, ptr @.str.59, ptr @.str.58
  %and38 = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %cond40 = select i1 %tobool39.not, ptr @.str.103, ptr @.str.102
  %and41 = and i32 %4, 1792
  %shr42 = lshr exact i32 %and41, 8
  %arrayidx = getelementptr [8 x ptr], ptr @proc_ep_show.types, i32 0, i32 %shr42
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool44.not = icmp eq i32 %and41, 0
  %and46 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  %cond48 = select i1 %tobool47.not, ptr @.str.105, ptr @.str.104
  %cond51 = select i1 %tobool44.not, ptr %cond48, ptr @.str.29
  %and52 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  %cond54 = select i1 %tobool53.not, ptr @.str.29, ptr @.str.106
  %and55 = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  %cond57 = select i1 %tobool56.not, ptr @.str.29, ptr @.str.107
  %and58 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  %cond60 = select i1 %tobool59.not, ptr @.str.29, ptr @.str.108
  %and61 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  %cond63 = select i1 %tobool62.not, ptr @.str.29, ptr @.str.109
  %and64 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  %cond66 = select i1 %tobool65.not, ptr @.str.29, ptr @.str.110
  %and67 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  %cond69 = select i1 %tobool68.not, ptr @.str.29, ptr @.str.111
  %and70 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  %cond72 = select i1 %tobool71.not, ptr @.str.29, ptr @.str.112
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.101, i32 noundef %4, i32 noundef %shr, ptr noundef nonnull %cond37, ptr noundef nonnull %cond40, ptr noundef %14, ptr noundef nonnull %cond51, ptr noundef nonnull %cond54, ptr noundef nonnull %cond57, ptr noundef nonnull %cond60, ptr noundef nonnull %cond63, ptr noundef nonnull %cond66, ptr noundef nonnull %cond69, ptr noundef nonnull %cond72) #9
  %queue = getelementptr inbounds %struct.at91_ep, ptr %ep, i32 0, i32 1
  %15 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %16, %queue
  br i1 %cmp.i.not, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %17 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn126 = load ptr, ptr %queue, align 4
  %cmp79.not127 = icmp eq ptr %.pn126, %queue
  br i1 %cmp79.not127, label %for.cond.preheader.if.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.113) #9
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %.pn128 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn126, %for.cond.preheader.for.body_crit_edge ]
  %req.0 = getelementptr i8, ptr %.pn128, i32 -56
  %actual = getelementptr i8, ptr %.pn128, i32 -4
  %18 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %actual, align 4
  %length84 = getelementptr i8, ptr %.pn128, i32 -52
  %20 = ptrtoint ptr %length84 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length84, align 4
  %22 = ptrtoint ptr %req.0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %req.0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.114, ptr noundef %req.0, i32 noundef %19, i32 noundef %21, ptr noundef %23) #9
  %24 = ptrtoint ptr %.pn128 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load ptr, ptr %.pn128, align 4
  %cmp79.not = icmp eq ptr %.pn, %queue
  br i1 %cmp79.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then, %for.cond.preheader.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91udc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91udc_remove.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91udc_remove, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !287

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @at91udc_remove.__UNIQUE_ID_ddebug249, ptr noundef nonnull @.str.116) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @usb_del_gadget_udc(ptr noundef %1) #9
  %driver = getelementptr inbounds %struct.at91_udc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 8
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %do.body9, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body9:                                         ; preds = %do.end
  %lock = getelementptr inbounds %struct.at91_udc, ptr %1, i32 0, i32 13
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  tail call fastcc void @pullup(ptr noundef %1, i32 noundef 0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call18 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext false) #9
  %pde.i = getelementptr inbounds %struct.at91_udc, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %pde.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pde.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.body9.remove_debug_file.exit_crit_edge, label %if.then.i

do.body9.remove_debug_file.exit_crit_edge:        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_debug_file.exit

if.then.i:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @remove_proc_entry(ptr noundef nonnull @debug_filename, ptr noundef null) #9
  br label %remove_debug_file.exit

remove_debug_file.exit:                           ; preds = %if.then.i, %do.body9.remove_debug_file.exit_crit_edge
  %fclk = getelementptr inbounds %struct.at91_udc, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fclk, align 4
  tail call void @clk_unprepare(ptr noundef %7) #9
  %iclk = getelementptr inbounds %struct.at91_udc, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %iclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iclk, align 8
  tail call void @clk_unprepare(ptr noundef %9) #9
  br label %cleanup

cleanup:                                          ; preds = %remove_debug_file.exit, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %remove_debug_file.exit ], [ -16, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91udc_shutdown(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.at91_udc, ptr %1, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @pullup(ptr noundef %3, i32 noundef 0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91udc_suspend(ptr nocapture noundef readonly %pdev, [1 x i32] %mesg.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver = getelementptr inbounds %struct.at91_udc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %entry
  %can_wakeup.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %land.rhs.land.end_crit_edge, label %land.rhs.i

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs.i:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %wakeup.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i = icmp ne ptr %6, null
  br label %land.end

land.end:                                         ; preds = %land.rhs.i, %land.rhs.land.end_crit_edge, %entry.land.end_crit_edge
  %7 = phi i1 [ false, %entry.land.end_crit_edge ], [ false, %land.rhs.land.end_crit_edge ], [ %tobool2.i, %land.rhs.i ]
  %land.ext = zext i1 %7 to i32
  %suspended = getelementptr inbounds %struct.at91_udc, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %suspended, align 8
  %9 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %land.end
  %addr = getelementptr inbounds %struct.at91_udc, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %addr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp ne i8 %11, 0
  %.not = xor i1 %7, true
  %brmerge = select i1 %tobool3.not, i1 true, i1 %.not
  br i1 %brmerge, label %land.lhs.true.do.body8_crit_edge, label %land.lhs.true.lor.lhs.false5_crit_edge

land.lhs.true.lor.lhs.false5_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false5

land.lhs.true.do.body8_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body8

lor.lhs.false:                                    ; preds = %land.end
  br i1 %7, label %lor.lhs.false.lor.lhs.false5_crit_edge, label %lor.lhs.false.do.body8_crit_edge

lor.lhs.false.do.body8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body8

lor.lhs.false.lor.lhs.false5_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false.lor.lhs.false5_crit_edge, %land.lhs.true.lor.lhs.false5_crit_edge
  %call6 = tail call i32 @at91_suspend_entering_slow_clock() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.else, label %lor.lhs.false5.do.body8_crit_edge

lor.lhs.false5.do.body8_crit_edge:                ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body8

do.body8:                                         ; preds = %lor.lhs.false5.do.body8_crit_edge, %lor.lhs.false.do.body8_crit_edge, %land.lhs.true.do.body8_crit_edge
  %lock = getelementptr inbounds %struct.at91_udc, ptr %1, i32 0, i32 13
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  tail call fastcc void @pullup(ptr noundef %1, i32 noundef 0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #9
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #11
  %udp_irq = getelementptr inbounds %struct.at91_udc, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %udp_irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %udp_irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %13, i32 noundef 1) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body8
  %wake.0 = phi i32 [ 0, %do.body8 ], [ %land.ext, %if.else ]
  %14 = trunc i32 %wake.0 to i8
  %15 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load16 = load i8, ptr %suspended, align 8
  %bf.clear17 = and i8 %bf.load16, -2
  %bf.set = or i8 %bf.clear17, %14
  store i8 %bf.set, ptr %suspended, align 8
  %board = getelementptr inbounds %struct.at91_udc, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %board, align 4
  %tobool18.not = icmp eq ptr %17, null
  br i1 %tobool18.not, label %if.end.if.end29_crit_edge, label %land.lhs.true19

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

land.lhs.true19:                                  ; preds = %if.end
  %vbus_polled = getelementptr inbounds %struct.at91_udc, ptr %1, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %vbus_polled to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %vbus_polled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool21.not = icmp ne i8 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wake.0)
  %tobool23.not = icmp eq i32 %wake.0, 0
  %or.cond = select i1 %tobool21.not, i1 true, i1 %tobool23.not
  br i1 %or.cond, label %land.lhs.true19.if.end29_crit_edge, label %if.then24

land.lhs.true19.if.end29_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then24:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call i32 @gpiod_to_irq(ptr noundef nonnull %17) #9
  %call.i43 = tail call i32 @irq_set_irq_wake(i32 noundef %call27, i32 noundef 1) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %land.lhs.true19.if.end29_crit_edge, %if.end.if.end29_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91udc_resume(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %board = getelementptr inbounds %struct.at91_udc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %board, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %vbus_polled = getelementptr inbounds %struct.at91_udc, ptr %1, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %vbus_polled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vbus_polled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %active_suspend = getelementptr inbounds %struct.at91_udc, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %active_suspend to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %active_suspend, align 8
  %bf.clear = and i8 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %tobool4.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool4.not, label %land.lhs.true3.if.end_crit_edge, label %if.then

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 @gpiod_to_irq(ptr noundef nonnull %3) #9
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %call7, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %active_suspend9 = getelementptr inbounds %struct.at91_udc, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %active_suspend9 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load10 = load i8, ptr %active_suspend9, align 8
  %bf.clear11 = and i8 %bf.load10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear11)
  %tobool13.not = icmp eq i8 %bf.clear11, 0
  br i1 %tobool13.not, label %do.body16, label %if.then14

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %udp_irq = getelementptr inbounds %struct.at91_udc, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %udp_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %udp_irq, align 4
  %call.i31 = tail call i32 @irq_set_irq_wake(i32 noundef %9, i32 noundef 0) #9
  br label %if.end22

do.body16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.at91_udc, ptr %1, i32 0, i32 13
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  tail call fastcc void @pullup(ptr noundef %1, i32 noundef 1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call18) #9
  br label %if.end22

if.end22:                                         ; preds = %do.body16, %if.then14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @at91_suspend_entering_slow_clock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 131)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 131)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !17, !19, !21, !23, !24, !25, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !43, !44, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !64, !65, !67, !69, !71, !73, !75, !77, !78, !79, !81, !82, !83, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !123, !125, !126, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !275}
!llvm.module.flags = !{!276, !277, !278, !279, !280, !281, !282, !283}
!llvm.ident = !{!284}

!0 = !{ptr @__initcall__kmod_at91_udc__250_2012_at91_udc_driver_init6, !1, !"__initcall__kmod_at91_udc__250_2012_at91_udc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 2012, i32 1}
!2 = !{ptr @__exitcall_at91_udc_driver_exit, !1, !"__exitcall_at91_udc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description251, !4, !"__UNIQUE_ID_description251", i1 false, i1 false}
!4 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 2014, i32 1}
!5 = !{ptr @__UNIQUE_ID_author252, !6, !"__UNIQUE_ID_author252", i1 false, i1 false}
!6 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 2015, i32 1}
!7 = !{ptr @__UNIQUE_ID_file253, !8, !"__UNIQUE_ID_file253", i1 false, i1 false}
!8 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 2016, i32 1}
!9 = !{ptr @__UNIQUE_ID_license254, !8, !"__UNIQUE_ID_license254", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias255, !11, !"__UNIQUE_ID_alias255", i1 false, i1 false}
!11 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 2017, i32 1}
!12 = !{ptr @at91udc_probe.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 1812, i32 2}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 1817, i32 30}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 1843, i32 32}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 1847, i32 32}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 1874, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @at91udc_probe.__UNIQUE_ID_ddebug245, !22, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!27 = !{ptr @at91udc_probe.__key.8, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 1888, i32 4}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @at91udc_probe.__key.10, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 1889, i32 4}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 1897, i32 5}
!35 = !{ptr @at91udc_probe.__UNIQUE_ID_ddebug246, !34, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 1903, i32 3}
!38 = !{ptr @at91udc_probe.__UNIQUE_ID_ddebug247, !37, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 1913, i32 2}
!41 = !{ptr @at91udc_probe._entry, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @at91udc_probe._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 1921, i32 2}
!46 = !{ptr @at91udc_probe.__UNIQUE_ID_ddebug248, !45, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 1777, i32 31}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 1780, i32 47}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 1781, i32 18}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 1785, i32 49}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 1786, i32 22}
!57 = !{ptr @at91_udc_dt_ids, !58, !"at91_udc_dt_ids", i1 false, i1 false}
!58 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 1750, i32 34}
!59 = !{ptr @at91rm9200_udc_caps, !60, !"at91rm9200_udc_caps", i1 false, i1 false}
!60 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 1635, i32 35}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 1617, i32 3}
!63 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @at91rm9200_udc_init.__UNIQUE_ID_ddebug244, !62, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!65 = !{ptr @at91sam9260_udc_caps, !66, !"at91sam9260_udc_caps", i1 false, i1 false}
!66 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 1673, i32 35}
!67 = !{ptr @at91sam9261_udc_caps, !68, !"at91sam9261_udc_caps", i1 false, i1 false}
!68 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 1715, i32 35}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 1700, i32 13}
!71 = !{ptr @at91sam9263_udc_caps, !72, !"at91sam9263_udc_caps", i1 false, i1 false}
!72 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 1745, i32 35}
!73 = !{ptr @at91_udc_ops, !74, !"at91_udc_ops", i1 false, i1 false}
!74 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 985, i32 36}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 804, i32 2}
!77 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @at91_wakeup.__UNIQUE_ID_ddebug241, !76, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 924, i32 2}
!81 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @pullup.__UNIQUE_ID_ddebug242, !80, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!83 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @driver_name, !86, !"driver_name", i1 false, i1 false}
!86 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 57, i32 19}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 69, i32 2}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 71, i32 2}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 73, i32 2}
!93 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 75, i32 2}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 77, i32 2}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 79, i32 2}
!99 = distinct !{null, !100, !"ep_info", i1 false, i1 false}
!100 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 62, i32 3}
!101 = !{ptr @at91_ep_ops, !102, !"at91_ep_ops", i1 false, i1 false}
!102 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 776, i32 32}
!103 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 485, i32 3}
!105 = !{ptr @.str.38, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @at91_ep_enable.__UNIQUE_ID_ddebug233, !104, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!107 = !{ptr @.str.39, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 491, i32 3}
!109 = !{ptr @at91_ep_enable.__UNIQUE_ID_ddebug234, !108, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!110 = !{ptr @.str.40, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 498, i32 3}
!112 = !{ptr @at91_ep_enable.__UNIQUE_ID_ddebug235, !111, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!113 = !{ptr @.str.41, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 513, i32 3}
!115 = !{ptr @at91_ep_enable.__UNIQUE_ID_ddebug236, !114, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!116 = !{ptr @.str.42, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 517, i32 4}
!118 = !{ptr @at91_ep_enable.__UNIQUE_ID_ddebug237, !117, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!119 = !{ptr @.str.43, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 618, i32 3}
!121 = !{ptr @.str.44, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @at91_ep_queue.__UNIQUE_ID_ddebug238, !120, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!123 = !{ptr @.str.45, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 623, i32 3}
!125 = !{ptr @at91_ep_queue.__UNIQUE_ID_ddebug239, !124, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!126 = !{ptr @.str.46, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 630, i32 3}
!128 = !{ptr @at91_ep_queue.__UNIQUE_ID_ddebug240, !127, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!129 = !{ptr @.str.47, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 334, i32 3}
!131 = !{ptr @.str.48, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @read_fifo.__UNIQUE_ID_ddebug232, !130, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!133 = !{ptr @.str.49, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 1377, i32 5}
!135 = !{ptr @.str.50, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @handle_ep0.__UNIQUE_ID_ddebug243, !134, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!137 = !{ptr @.str.51, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 1068, i32 3}
!139 = !{ptr @.str.52, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @handle_setup._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @handle_setup._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @debug_filename, !143, !"debug_filename", i1 false, i1 false}
!143 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 100, i32 19}
!144 = !{ptr @.str.53, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 188, i32 16}
!146 = !{ptr @.str.54, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 190, i32 16}
!148 = !{ptr @.str.55, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 191, i32 15}
!150 = !{ptr @.str.56, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 191, i32 27}
!152 = !{ptr @.str.57, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 193, i32 19}
!154 = !{ptr @.str.58, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 193, i32 30}
!156 = !{ptr @.str.59, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 194, i32 6}
!158 = !{ptr @.str.60, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 195, i32 32}
!160 = !{ptr @.str.61, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 195, i32 41}
!162 = !{ptr @.str.62, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 196, i32 20}
!164 = !{ptr @.str.63, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 197, i32 44}
!166 = !{ptr @.str.64, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 201, i32 17}
!168 = !{ptr @.str.65, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 206, i32 16}
!170 = !{ptr @.str.66, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 207, i32 29}
!172 = !{ptr @.str.67, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 208, i32 30}
!174 = !{ptr @.str.68, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 212, i32 16}
!176 = !{ptr @.str.69, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 213, i32 29}
!178 = !{ptr @.str.70, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 214, i32 30}
!180 = !{ptr @.str.71, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 215, i32 26}
!182 = !{ptr @.str.72, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 216, i32 28}
!184 = !{ptr @.str.73, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 217, i32 29}
!186 = !{ptr @.str.74, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 220, i32 16}
!188 = !{ptr @.str.75, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 221, i32 26}
!190 = !{ptr @.str.76, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 224, i32 19}
!192 = !{ptr @.str.77, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 225, i32 19}
!194 = !{ptr @.str.78, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 167, i32 16}
!196 = !{ptr @.str.79, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 168, i32 24}
!198 = !{ptr @.str.80, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 169, i32 24}
!200 = !{ptr @.str.81, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 171, i32 24}
!202 = !{ptr @.str.82, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 172, i32 24}
!204 = !{ptr @.str.83, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 173, i32 23}
!206 = !{ptr @.str.84, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 174, i32 23}
!208 = !{ptr @.str.85, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 177, i32 18}
!210 = !{ptr @.str.86, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 179, i32 16}
!212 = !{ptr @.str.87, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 108, i32 3}
!214 = !{ptr @.str.88, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 108, i32 14}
!216 = !{ptr @.str.89, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 108, i32 25}
!218 = !{ptr @.str.90, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 108, i32 37}
!220 = !{ptr @.str.91, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 109, i32 3}
!222 = !{ptr @.str.92, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 109, i32 14}
!224 = !{ptr @.str.93, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 109, i32 25}
!226 = !{ptr @.str.94, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 109, i32 37}
!228 = !{ptr @proc_ep_show.types, !229, !"types", i1 false, i1 false}
!229 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 107, i32 16}
!230 = !{ptr @.str.95, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 123, i32 16}
!232 = !{ptr @.str.96, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 125, i32 23}
!234 = !{ptr @.str.97, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 126, i32 17}
!236 = !{ptr @.str.98, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 128, i32 24}
!238 = !{ptr @.str.99, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 128, i32 33}
!240 = !{ptr @.str.100, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 130, i32 18}
!242 = !{ptr @.str.101, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 131, i32 16}
!244 = !{ptr @.str.102, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 135, i32 23}
!246 = !{ptr @.str.103, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 135, i32 33}
!248 = !{ptr @.str.104, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 140, i32 26}
!250 = !{ptr @.str.105, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 140, i32 34}
!252 = !{ptr @.str.106, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 142, i32 22}
!254 = !{ptr @.str.107, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 143, i32 22}
!256 = !{ptr @.str.108, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 144, i32 22}
!258 = !{ptr @.str.109, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 146, i32 22}
!260 = !{ptr @.str.110, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 147, i32 22}
!262 = !{ptr @.str.111, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 148, i32 22}
!264 = !{ptr @.str.112, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 149, i32 22}
!266 = !{ptr @.str.113, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 151, i32 17}
!268 = !{ptr @.str.114, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 156, i32 17}
!270 = !{ptr @at91_udc_driver, !271, !"at91_udc_driver", i1 false, i1 false}
!271 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 2001, i32 31}
!272 = !{ptr @.str.115, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/usb/gadget/udc/at91_udc.c", i32 1931, i32 2}
!274 = !{ptr @.str.116, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @at91udc_remove.__UNIQUE_ID_ddebug249, !273, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!276 = !{i32 1, !"wchar_size", i32 2}
!277 = !{i32 1, !"min_enum_size", i32 4}
!278 = !{i32 8, !"branch-target-enforcement", i32 0}
!279 = !{i32 8, !"sign-return-address", i32 0}
!280 = !{i32 8, !"sign-return-address-all", i32 0}
!281 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!282 = !{i32 7, !"uwtable", i32 1}
!283 = !{i32 7, !"frame-pointer", i32 2}
!284 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!285 = !{!"auto-init"}
!286 = !{i64 5320888}
!287 = !{i64 2148740264, i64 2148740269, i64 2148740282, i64 2148740326, i64 2148740360, i64 2148740381}
!288 = distinct !{!288, !289}
!289 = !{!"llvm.loop.peeled.count", i32 1}
!290 = !{i64 5321306}
!291 = !{!"branch_weights", i32 2000, i32 1}
!292 = !{i64 2154519137, i64 2154519635, i64 2154519174, i64 2154519230, i64 2154519264, i64 2154519288, i64 2154519329, i64 2154519350, i64 2154519378, i64 2154519412}
!293 = !{i64 755940}
!294 = !{i64 5321086}
!295 = !{i64 5320691}
