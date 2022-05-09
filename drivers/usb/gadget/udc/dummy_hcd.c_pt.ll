; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/dummy_hcd.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/dummy_hcd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.dummy_hcd_module_parameters = type { i8, i8, i32 }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.72 = type { ptr, %struct.usb_ep_caps }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.77 = type <{ %struct.usb_bos_descriptor, %struct.usb_ss_cap_descriptor }>
%struct.usb_bos_descriptor = type <{ i8, i8, i16, i8 }>
%struct.usb_ss_cap_descriptor = type { i8, i8, i8, i8, i16, i8, i8, i16 }
%struct.dummy = type { %struct.spinlock, [25 x %struct.dummy_ep], i32, i32, %struct.usb_gadget, ptr, %struct.dummy_request, [64 x i8], i16, i8, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dummy_ep = type { %struct.list_head, i32, ptr, ptr, %struct.usb_ep, i8 }
%struct.list_head = type { ptr, ptr }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.dummy_request = type { %struct.list_head, %struct.usb_request }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.timespec64 = type { i64, i32 }
%struct.dummy_hcd = type { ptr, i32, %struct.timer_list, i32, i32, i32, ptr, %struct.list_head, ptr, i32, [15 x i8], i8 }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.71, i32 }
%union.anon.71 = type { ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.urbp = type { ptr, %struct.list_head, %struct.sg_mapping_iter, i32 }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.74 }>
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { [4 x i8], [4 x i8] }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }

@__UNIQUE_ID_description237 = internal constant [47 x i8] c"dummy_hcd.description=USB Host+Gadget Emulator\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [32 x i8] c"dummy_hcd.author=David Brownell\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [48 x i8] c"dummy_hcd.file=drivers/usb/gadget/udc/dummy_hcd\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [22 x i8] c"dummy_hcd.license=GPL\00", section ".modinfo", align 1
@__param_str_is_super_speed = internal constant [25 x i8] c"dummy_hcd.is_super_speed\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@mod_data = internal global { %struct.dummy_hcd_module_parameters, [24 x i8] } { %struct.dummy_hcd_module_parameters { i8 0, i8 1, i32 1 }, [24 x i8] zeroinitializer }, align 32
@__param_is_super_speed = internal constant %struct.kernel_param { ptr @__param_str_is_super_speed, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @mod_data } }, section "__param", align 4
@__UNIQUE_ID_is_super_speedtype241 = internal constant [39 x i8] c"dummy_hcd.parmtype=is_super_speed:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_is_super_speed242 = internal constant [69 x i8] c"dummy_hcd.parm=is_super_speed:true to simulate SuperSpeed connection\00", section ".modinfo", align 1
@__param_str_is_high_speed = internal constant [24 x i8] c"dummy_hcd.is_high_speed\00", align 1
@__param_is_high_speed = internal constant %struct.kernel_param { ptr @__param_str_is_high_speed, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr inbounds (i8, ptr @mod_data, i64 1) } }, section "__param", align 4
@__UNIQUE_ID_is_high_speedtype243 = internal constant [38 x i8] c"dummy_hcd.parmtype=is_high_speed:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_is_high_speed244 = internal constant [67 x i8] c"dummy_hcd.parm=is_high_speed:true to simulate HighSpeed connection\00", section ".modinfo", align 1
@__param_str_num = internal constant [14 x i8] c"dummy_hcd.num\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_num = internal constant %struct.kernel_param { ptr @__param_str_num, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @mod_data, i64 4) } }, section "__param", align 4
@__UNIQUE_ID_numtype245 = internal constant [28 x i8] c"dummy_hcd.parmtype=num:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_num246 = internal constant [50 x i8] c"dummy_hcd.parm=num:number of emulated controllers\00", section ".modinfo", align 1
@__initcall__kmod_dummy_hcd__286_2890_init6 = internal global ptr @init, section ".initcall6.init", align 4
@the_udc_pdev = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@the_hcd_pdev = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@dummy_udc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dummy_udc_probe, ptr @dummy_udc_remove, ptr null, ptr @dummy_udc_suspend, ptr @dummy_udc_resume, %struct.device_driver { ptr @gadget_name, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@dummy_hcd_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dummy_hcd_probe, ptr @dummy_hcd_remove, ptr null, ptr @dummy_hcd_suspend, ptr @dummy_hcd_resume, %struct.device_driver { ptr @driver_name, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cleanup = internal global ptr @cleanup, section ".exitcall.exit", align 4
@init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013Number of emulated UDC must be in range of 1...%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"init\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/usb/gadget/udc/dummy_hcd.c\00", [61 x i8] zeroinitializer }, align 32
@init._entry_ptr = internal global ptr @init._entry, section ".printk_index", align 4
@driver_name = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dummy_hcd\00", [22 x i8] zeroinitializer }, align 32
@gadget_name = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dummy_udc\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dummy_ops = internal constant { %struct.usb_gadget_ops, [36 x i8] } { %struct.usb_gadget_ops { ptr @dummy_g_get_frame, ptr @dummy_wakeup, ptr @dummy_set_selfpowered, ptr null, ptr null, ptr @dummy_pullup, ptr null, ptr null, ptr @dummy_udc_start, ptr @dummy_udc_stop, ptr @dummy_udc_set_speed, ptr null, ptr @dummy_udc_async_callbacks, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_function = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @function_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dummy_udc_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 1006, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unsupported driver max speed %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dummy_udc_start\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dummy_udc_start._entry_ptr = internal global ptr @dummy_udc_start._entry, section ".printk_index", align 4
@ep_info = internal constant { [25 x %struct.anon.72], [56 x i8] } { [25 x %struct.anon.72] [%struct.anon.72 { ptr @ep0name, %struct.usb_ep_caps { i8 -116, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.7, %struct.usb_ep_caps { i8 40, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.8, %struct.usb_ep_caps { i8 36, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.9, %struct.usb_ep_caps { i8 24, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.10, %struct.usb_ep_caps { i8 40, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.11, %struct.usb_ep_caps { i8 36, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.12, %struct.usb_ep_caps { i8 24, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.13, %struct.usb_ep_caps { i8 40, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.14, %struct.usb_ep_caps { i8 36, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.15, %struct.usb_ep_caps { i8 24, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.16, %struct.usb_ep_caps { i8 36, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.17, %struct.usb_ep_caps { i8 40, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.18, %struct.usb_ep_caps { i8 52, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.19, %struct.usb_ep_caps { i8 56, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.20, %struct.usb_ep_caps { i8 52, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.21, %struct.usb_ep_caps { i8 52, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.22, %struct.usb_ep_caps { i8 56, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.23, %struct.usb_ep_caps { i8 52, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.24, %struct.usb_ep_caps { i8 56, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.25, %struct.usb_ep_caps { i8 52, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.26, %struct.usb_ep_caps { i8 52, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.27, %struct.usb_ep_caps { i8 56, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.28, %struct.usb_ep_caps { i8 52, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.29, %struct.usb_ep_caps { i8 56, [3 x i8] undef } }, %struct.anon.72 { ptr @.str.30, %struct.usb_ep_caps { i8 52, [3 x i8] undef } }], [56 x i8] zeroinitializer }, align 32
@dummy_ep_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @dummy_enable, ptr @dummy_disable, ptr null, ptr @dummy_alloc_request, ptr @dummy_free_request, ptr @dummy_queue, ptr @dummy_dequeue, ptr @dummy_set_halt, ptr @dummy_set_wedge, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ep0name = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep0\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ep1in-bulk\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ep2out-bulk\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ep5in-int\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ep6in-bulk\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ep7out-bulk\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ep10in-int\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ep11in-bulk\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ep12out-bulk\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ep15in-int\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ep1out-bulk\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ep2in-bulk\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep-aout\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep-bin\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep-cout\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep-dout\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep-ein\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep-fout\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep-gin\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep-hout\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep-iout\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep-jin\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep-kout\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep-lin\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep-mout\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"-iso\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"-int\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-bulk\00", [26 x i8] zeroinitializer }, align 32
@dummy_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 613, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Can't enable stream support on non-bulk ep %s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dummy_enable\00", [19 x i8] zeroinitializer }, align 32
@dummy_enable._entry_ptr = internal global ptr @dummy_enable._entry, section ".printk_index", align 4
@dummy_enable.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.35, ptr @.str.2, ptr @.str.37, i8 0, i8 -100, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dummy_hcd\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"enabled %s (ep%d%s-%s) maxpacket %d stream %s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@dummy_disable.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 -93, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dummy_disable\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"disabled %s\0A\00", [19 x i8] zeroinitializer }, align 32
@dummy_dequeue.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 0, i8 -62, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dummy_dequeue\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"dequeued req %p from %s, len %d buf %p\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"function\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@dummy_udc_suspend.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.48, ptr @.str.2, ptr @.str.47, i8 1, i8 27, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dummy_udc_suspend\00", [46 x i8] zeroinitializer }, align 32
@dummy_udc_resume.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.49, ptr @.str.2, ptr @.str.47, i8 1, i8 30, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dummy_udc_resume\00", [47 x i8] zeroinitializer }, align 32
@dummy_hcd_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 2661, ptr @.str.52, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s, driver 02 May 2005\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dummy_hcd_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dummy_hcd_probe._entry_ptr = internal global ptr @dummy_hcd_probe._entry, section ".printk_index", align 4
@driver_desc = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"USB Host+Gadget Emulator\00", [39 x i8] zeroinitializer }, align 32
@dummy_hcd = internal global { %struct.hc_driver, [40 x i8] } { %struct.hc_driver { ptr @driver_name, ptr @.str.53, i32 104, ptr null, i32 0, ptr @dummy_setup, ptr @dummy_start, ptr null, ptr null, ptr @dummy_stop, ptr null, ptr @dummy_h_get_frame, ptr @dummy_urb_enqueue, ptr @dummy_urb_dequeue, ptr null, ptr null, ptr null, ptr null, ptr @dummy_hub_status, ptr @dummy_hub_control, ptr @dummy_bus_suspend, ptr @dummy_bus_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dummy_alloc_streams, ptr @dummy_free_streams, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Dummy host controller\00", [42 x i8] zeroinitializer }, align 32
@dummy_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dum_hcd->dum->lock\00", [44 x i8] zeroinitializer }, align 32
@dummy_start.__key.55 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(&dum_hcd->timer)\00", [46 x i8] zeroinitializer }, align 32
@dev_attr_urbs = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @urbs_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dummy_start_ss.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@dummy_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 1806, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bogus device speed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dummy_timer\00", [20 x i8] zeroinitializer }, align 32
@dummy_timer._entry_ptr = internal global ptr @dummy_timer._entry, section ".printk_index", align 4
@dummy_timer._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 1818, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"timer fired with no URBs pending?\0A\00", [61 x i8] zeroinitializer }, align 32
@dummy_timer._entry_ptr.61 = internal global ptr @dummy_timer._entry.59, section ".printk_index", align 4
@dummy_timer.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.58, ptr @.str.2, ptr @.str.62, i8 1, i8 -47, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no ep configured for urb %p\0A\00", [35 x i8] zeroinitializer }, align 32
@dummy_timer.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.58, ptr @.str.2, ptr @.str.63, i8 1, i8 -43, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ep %s halted, urb %p\0A\00", [42 x i8] zeroinitializer }, align 32
@dummy_timer.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.58, ptr @.str.2, ptr @.str.64, i8 1, i8 -39, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stale req = %p\0A\00", [16 x i8] zeroinitializer }, align 32
@dummy_timer.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.58, ptr @.str.2, ptr @.str.65, i8 1, i8 -28, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"setup --> %d\0A\00", [18 x i8] zeroinitializer }, align 32
@handle_control_request.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.66, ptr @.str.2, ptr @.str.67, i8 1, i8 -105, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"handle_control_request\00", [41 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"set_address = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@dummy_perform_transfer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dummy_perform_transfer.__already_done.68 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"urbs\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"urb/%p %s ep%d%s%s len %d/%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ls\00", [29 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fs\00", [29 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"hs\00", [29 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ss\00", [29 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@dummy_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 2517, ptr @.str.52, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"stopped\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dummy_stop\00", [21 x i8] zeroinitializer }, align 32
@dummy_stop._entry_ptr = internal global ptr @dummy_stop._entry, section ".printk_index", align 4
@dummy_urb_enqueue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 1294, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"usb_device address has changed!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dummy_urb_enqueue\00", [46 x i8] zeroinitializer }, align 32
@dummy_urb_enqueue._entry_ptr = internal global ptr @dummy_urb_enqueue._entry, section ".printk_index", align 4
@dummy_validate_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 1252, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Stream id %d is out of range.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dummy_validate_stream\00", [42 x i8] zeroinitializer }, align 32
@dummy_validate_stream._entry_ptr = internal global ptr @dummy_validate_stream._entry, section ".printk_index", align 4
@dummy_hub_status.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.83, ptr @.str.2, ptr @.str.84, i8 1, i8 -4, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dummy_hub_status\00", [47 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"port status 0x%08x has changes\0A\00", [32 x i8] zeroinitializer }, align 32
@dummy_hub_control.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.85, ptr @.str.2, ptr @.str.86, i8 2, i8 17, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dummy_hub_control\00", [46 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"USB_PORT_FEAT_SUSPEND req not supported for USB 3.0 roothub\0A\00", [35 x i8] zeroinitializer }, align 32
@dummy_hub_control.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.85, ptr @.str.2, ptr @.str.87, i8 2, i8 20, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"power-off\0A\00", [21 x i8] zeroinitializer }, align 32
@dummy_hub_control.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.85, ptr @.str.2, ptr @.str.88, i8 2, i8 28, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Wrong hub descriptor type for USB 3.0 roothub.\0A\00", [48 x i8] zeroinitializer }, align 32
@usb3_bos_desc = internal constant { %struct.anon.77, [17 x i8] } { %struct.anon.77 <{ %struct.usb_bos_descriptor <{ i8 5, i8 15, i16 3840, i8 1 }>, %struct.usb_ss_cap_descriptor { i8 10, i8 16, i8 3, i8 0, i16 2048, i8 3, i8 0, i16 0 } }>, [17 x i8] zeroinitializer }, align 32
@dummy_hub_control.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.85, ptr @.str.2, ptr @.str.89, i8 2, i8 46, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"USB_PORT_FEAT_LINK_STATE req not supported for USB 2.0 roothub\0A\00", [32 x i8] zeroinitializer }, align 32
@dummy_hub_control.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.85, ptr @.str.2, ptr @.str.90, i8 2, i8 49, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"USB_PORT_FEAT_U1/2_TIMEOUT req not supported for USB 2.0 roothub\0A\00", [62 x i8] zeroinitializer }, align 32
@dummy_hub_control.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.85, ptr @.str.2, ptr @.str.86, i8 2, i8 52, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@dummy_hub_control.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.85, ptr @.str.2, ptr @.str.91, i8 2, i8 55, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"no HNP yet!\0A\00", [19 x i8] zeroinitializer }, align 32
@dummy_hub_control.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.85, ptr @.str.2, ptr @.str.92, i8 2, i8 59, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"USB_PORT_FEAT_BH_PORT_RESET req not supported for USB 2.0 roothub\0A\00", [61 x i8] zeroinitializer }, align 32
@dummy_hub_control.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.85, ptr @.str.2, ptr @.str.93, i8 2, i8 71, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"GetPortErrorCount req not supported for USB 2.0 roothub\0A\00", [39 x i8] zeroinitializer }, align 32
@dummy_hub_control.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.85, ptr @.str.2, ptr @.str.94, i8 2, i8 73, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"SetHubDepth req not supported for USB 2.0 roothub\0A\00", [45 x i8] zeroinitializer }, align 32
@dummy_hub_control.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.85, ptr @.str.2, ptr @.str.95, i8 2, i8 75, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"hub control req%04x v%04x i%04x l%d\0A\00", [59 x i8] zeroinitializer }, align 32
@dummy_bus_suspend.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.96, ptr @.str.2, ptr @.str.47, i8 2, i8 79, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dummy_bus_suspend\00", [46 x i8] zeroinitializer }, align 32
@dummy_bus_resume.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.97, ptr @.str.2, ptr @.str.47, i8 2, i8 83, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dummy_bus_resume\00", [47 x i8] zeroinitializer }, align 32
@dummy_alloc_streams.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.98, ptr @.str.2, ptr @.str.99, i8 2, i8 -123, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dummy_alloc_streams\00", [44 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Ep 0x%x only supports %u stream IDs.\0A\00", [58 x i8] zeroinitializer }, align 32
@dummy_hcd_suspend.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.100, ptr @.str.2, ptr @.str.47, i8 2, i8 -86, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dummy_hcd_suspend\00", [46 x i8] zeroinitializer }, align 32
@dummy_hcd_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.100, ptr @.str.2, i32 2734, ptr @.str.102, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Root hub isn't suspended!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dummy_hcd_suspend._entry_ptr = internal global ptr @dummy_hcd_suspend._entry, section ".printk_index", align 4
@dummy_hcd_resume.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.103, ptr @.str.2, ptr @.str.47, i8 2, i8 -82, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dummy_hcd_resume\00", [47 x i8] zeroinitializer }, align 32
@switch.table.dummy_timer = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 96, i32 1216, i32 53248, i32 96, i32 490000], [44 x i8] zeroinitializer }, align 32
@switch.table.urbs_show = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.74], [44 x i8] zeroinitializer }, align 32
@switch.table.urbs_show.104 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.32, ptr @.str.76, ptr @.str.33], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.105 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.106 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.107 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.108 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.109 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.110 = internal global [12 x i64] [i64 10, i64 16, i64 8193, i64 8195, i64 8204, i64 8961, i64 8963, i64 32774, i64 40960, i64 40966, i64 41728, i64 41741]
@__sancov_gen_cov_switch_values.111 = internal global [9 x i64] [i64 7, i64 16, i64 1, i64 2, i64 8, i64 16, i64 17, i64 18, i64 20]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.113 = internal global [13 x i64] [i64 11, i64 16, i64 2, i64 4, i64 5, i64 8, i64 16, i64 17, i64 18, i64 20, i64 23, i64 24, i64 28]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.117 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.119 = internal global [9 x i64] [i64 7, i64 16, i64 1, i64 3, i64 4, i64 5, i64 48, i64 49, i64 50]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.121 = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 48, i64 49, i64 50]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 8, i64 128, i64 130]
@___asan_gen_.123 = private unnamed_addr constant [9 x i8] c"mod_data\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 68, i32 43 }
@___asan_gen_.126 = private unnamed_addr constant [13 x i8] c"the_udc_pdev\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2765, i32 32 }
@___asan_gen_.129 = private unnamed_addr constant [13 x i8] c"the_hcd_pdev\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2766, i32 32 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"dummy_udc_driver\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1150, i32 31 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"dummy_hcd_driver\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2753, i32 31 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2781, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [12 x i8] c"driver_name\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 53, i32 19 }
@___asan_gen_.153 = private unnamed_addr constant [12 x i8] c"gadget_name\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 56, i32 19 }
@___asan_gen_.156 = private unnamed_addr constant [10 x i8] c"dummy_ops\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 950, i32 36 }
@___asan_gen_.159 = private unnamed_addr constant [18 x i8] c"dev_attr_function\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1005, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [8 x i8] c"ep_info\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 132, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [13 x i8] c"dummy_ep_ops\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 825, i32 32 }
@___asan_gen_.183 = private unnamed_addr constant [8 x i8] c"ep0name\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 127, i32 19 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 146, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 148, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 156, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 158, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 160, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 168, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 170, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 172, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 180, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 184, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 186, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 190, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 192, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 194, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 196, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 198, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 200, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 202, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 204, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 206, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 208, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 210, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 212, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 214, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 538, i32 27 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 539, i32 28 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 584, i32 27 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 612, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 620, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 653, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 777, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 973, i32 8 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 971, i32 35 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1133, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1144, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2661, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant [12 x i8] c"driver_desc\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 54, i32 19 }
@___asan_gen_.333 = private unnamed_addr constant [10 x i8] c"dummy_hcd\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2631, i32 25 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2633, i32 19 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2496, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2497, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant [14 x i8] c"dev_attr_urbs\00", align 1
@___asan_gen_.354 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2468, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1806, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1817, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1859, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1875, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1892, i32 5 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1934, i32 6 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1630, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2464, i32 8 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2404, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2409, i32 8 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2412, i32 8 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2415, i32 8 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2418, i32 8 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2421, i32 8 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2424, i32 51 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2517, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1294, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1251, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2033, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2117, i32 5 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2130, i32 4 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2158, i32 4 }
@___asan_gen_.459 = private unnamed_addr constant [14 x i8] c"usb3_bos_desc\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2048, i32 12 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2231, i32 5 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2245, i32 5 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2268, i32 6 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2282, i32 5 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2331, i32 4 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2341, i32 4 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2348, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2366, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2381, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2580, i32 4 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2729, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2734, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.508 = private constant [38 x i8] c"../drivers/usb/gadget/udc/dummy_hcd.c\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 2745, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant [25 x i8] c"switch.table.dummy_timer\00", align 1
@___asan_gen_.511 = private unnamed_addr constant [23 x i8] c"switch.table.urbs_show\00", align 1
@___asan_gen_.512 = private unnamed_addr constant [27 x i8] c"switch.table.urbs_show.104\00", align 1
@llvm.compiler.used = appending global [158 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_is_high_speed244, ptr @__UNIQUE_ID_is_high_speedtype243, ptr @__UNIQUE_ID_is_super_speed242, ptr @__UNIQUE_ID_is_super_speedtype241, ptr @__UNIQUE_ID_license240, ptr @__UNIQUE_ID_num246, ptr @__UNIQUE_ID_numtype245, ptr @__exitcall_cleanup, ptr @__initcall__kmod_dummy_hcd__286_2890_init6, ptr @__param_is_high_speed, ptr @__param_is_super_speed, ptr @__param_num, ptr @cleanup, ptr @dummy_enable._entry, ptr @dummy_enable._entry_ptr, ptr @dummy_hcd_probe._entry, ptr @dummy_hcd_probe._entry_ptr, ptr @dummy_hcd_suspend._entry, ptr @dummy_hcd_suspend._entry_ptr, ptr @dummy_stop._entry, ptr @dummy_stop._entry_ptr, ptr @dummy_timer._entry, ptr @dummy_timer._entry.59, ptr @dummy_timer._entry_ptr, ptr @dummy_timer._entry_ptr.61, ptr @dummy_udc_start._entry, ptr @dummy_udc_start._entry_ptr, ptr @dummy_urb_enqueue._entry, ptr @dummy_urb_enqueue._entry_ptr, ptr @dummy_validate_stream._entry, ptr @dummy_validate_stream._entry_ptr, ptr @init._entry, ptr @init._entry_ptr, ptr @mod_data, ptr @the_udc_pdev, ptr @the_hcd_pdev, ptr @dummy_udc_driver, ptr @dummy_hcd_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @driver_name, ptr @gadget_name, ptr @dummy_ops, ptr @dev_attr_function, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ep_info, ptr @dummy_ep_ops, ptr @ep0name, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @driver_desc, ptr @dummy_hcd, ptr @.str.53, ptr @dummy_start.__key, ptr @.str.54, ptr @dummy_start.__key.55, ptr @.str.56, ptr @dev_attr_urbs, ptr @dummy_start_ss.__key, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @usb3_bos_desc, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @switch.table.dummy_timer, ptr @switch.table.urbs_show, ptr @switch.table.urbs_show.104], section "llvm.metadata"
@0 = internal global [132 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mod_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @the_udc_pdev to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @the_hcd_pdev to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_udc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_hcd_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_name to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_name to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_function to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_udc_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_info to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_ep_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep0name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_hcd_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_desc to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_hcd to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_start.__key.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_urbs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_start_ss.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_timer._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_urb_enqueue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_validate_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3_bos_desc to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_hcd_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dummy_timer to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.urbs_show to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.urbs_show.104 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init() #0 section ".init.text" align 64 {
entry:
  %dum = alloca [32 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %dum) #12
  %0 = call ptr @memset(ptr %dum, i32 0, i32 128)
  %call = tail call i32 @usb_disabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i8, ptr getelementptr inbounds (%struct.dummy_hcd_module_parameters, ptr @mod_data, i32 0, i32 1), align 1, !range !300
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8, ptr @mod_data, align 4, !range !300
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool3.not = icmp eq i8 %2, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end5_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %3 = load i32, ptr getelementptr inbounds (%struct.dummy_hcd_module_parameters, ptr @mod_data, i32 0, i32 2), align 4
  %4 = add i32 %3, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %4)
  %5 = icmp ult i32 %4, -32
  br i1 %5, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end5
  %6 = load i32, ptr getelementptr inbounds (%struct.dummy_hcd_module_parameters, ptr @mod_data, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp10249.not = icmp eq i32 %6, 0
  br i1 %cmp10249.not, label %for.cond.preheader.for.end61_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end61_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end61

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 32) #15
  br label %cleanup

for.cond19.preheader:                             ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp20251.not = icmp eq i32 %10, 0
  br i1 %cmp20251.not, label %for.cond19.preheader.for.cond38.preheader_crit_edge, label %for.cond19.preheader.for.body21_crit_edge

for.cond19.preheader.for.body21_crit_edge:        ; preds = %for.cond19.preheader
  br label %for.body21

for.cond19.preheader.for.cond38.preheader_crit_edge: ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond38.preheader

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0250 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call11 = tail call ptr @platform_device_alloc(ptr noundef nonnull @driver_name, i32 noundef %i.0250) #12
  %arrayidx = getelementptr [32 x ptr], ptr @the_hcd_pdev, i32 0, i32 %i.0250
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call11, ptr %arrayidx, align 4
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %while.cond.preheader, label %for.inc

while.cond.preheader:                             ; preds = %for.body
  %i.1285 = add i32 %i.0250, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1285)
  %cmp15286 = icmp sgt i32 %i.1285, -1
  br i1 %cmp15286, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %i.1287 = phi i32 [ %i.1, %while.body.while.body_crit_edge ], [ %i.1285, %while.cond.preheader.while.body_crit_edge ]
  %arrayidx17 = getelementptr [32 x ptr], ptr @the_hcd_pdev, i32 0, i32 %i.1287
  %8 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx17, align 4
  tail call void @platform_device_put(ptr noundef %9) #12
  %i.1 = add nsw i32 %i.1287, -1
  %cmp15 = icmp sgt i32 %i.1287, 0
  br i1 %cmp15, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0250, 1
  %10 = load i32, ptr getelementptr inbounds (%struct.dummy_hcd_module_parameters, ptr @mod_data, i32 0, i32 2), align 4
  %cmp10 = icmp ult i32 %inc, %10
  br i1 %cmp10, label %for.inc.for.body_crit_edge, label %for.cond19.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond38.preheader:                             ; preds = %for.inc35.for.cond38.preheader_crit_edge, %for.cond19.preheader.for.cond38.preheader_crit_edge
  %11 = phi i32 [ 0, %for.cond19.preheader.for.cond38.preheader_crit_edge ], [ %15, %for.inc35.for.cond38.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp39253.not = icmp eq i32 %11, 0
  br i1 %cmp39253.not, label %for.cond38.preheader.for.end61_crit_edge, label %for.cond38.preheader.for.body40_crit_edge

for.cond38.preheader.for.body40_crit_edge:        ; preds = %for.cond38.preheader
  br label %for.body40

for.cond38.preheader.for.end61_crit_edge:         ; preds = %for.cond38.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end61

for.body21:                                       ; preds = %for.inc35.for.body21_crit_edge, %for.cond19.preheader.for.body21_crit_edge
  %i.2252 = phi i32 [ %inc36, %for.inc35.for.body21_crit_edge ], [ 0, %for.cond19.preheader.for.body21_crit_edge ]
  %call22 = tail call ptr @platform_device_alloc(ptr noundef nonnull @gadget_name, i32 noundef %i.2252) #12
  %arrayidx23 = getelementptr [32 x ptr], ptr @the_udc_pdev, i32 0, i32 %i.2252
  %12 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call22, ptr %arrayidx23, align 4
  %tobool25.not = icmp eq ptr %call22, null
  br i1 %tobool25.not, label %while.cond28.preheader, label %for.inc35

while.cond28.preheader:                           ; preds = %for.body21
  %i.3280 = add i32 %i.2252, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.3280)
  %cmp29281 = icmp sgt i32 %i.3280, -1
  br i1 %cmp29281, label %while.cond28.preheader.while.body30_crit_edge, label %while.cond28.preheader.err_alloc_udcthread-pre-split_crit_edge

while.cond28.preheader.err_alloc_udcthread-pre-split_crit_edge: ; preds = %while.cond28.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_alloc_udcthread-pre-split

while.cond28.preheader.while.body30_crit_edge:    ; preds = %while.cond28.preheader
  br label %while.body30

while.body30:                                     ; preds = %while.body30.while.body30_crit_edge, %while.cond28.preheader.while.body30_crit_edge
  %i.3282 = phi i32 [ %i.3, %while.body30.while.body30_crit_edge ], [ %i.3280, %while.cond28.preheader.while.body30_crit_edge ]
  %arrayidx32 = getelementptr [32 x ptr], ptr @the_udc_pdev, i32 0, i32 %i.3282
  %13 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx32, align 4
  tail call void @platform_device_put(ptr noundef %14) #12
  %i.3 = add nsw i32 %i.3282, -1
  %cmp29 = icmp sgt i32 %i.3282, 0
  br i1 %cmp29, label %while.body30.while.body30_crit_edge, label %while.body30.err_alloc_udcthread-pre-split_crit_edge

while.body30.err_alloc_udcthread-pre-split_crit_edge: ; preds = %while.body30
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_alloc_udcthread-pre-split

while.body30.while.body30_crit_edge:              ; preds = %while.body30
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body30

for.inc35:                                        ; preds = %for.body21
  %inc36 = add nuw i32 %i.2252, 1
  %15 = load i32, ptr getelementptr inbounds (%struct.dummy_hcd_module_parameters, ptr @mod_data, i32 0, i32 2), align 4
  %cmp20 = icmp ult i32 %inc36, %15
  br i1 %cmp20, label %for.inc35.for.body21_crit_edge, label %for.inc35.for.cond38.preheader_crit_edge

for.inc35.for.cond38.preheader_crit_edge:         ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond38.preheader

for.inc35.for.body21_crit_edge:                   ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body21

for.cond38:                                       ; preds = %if.end52
  %inc60 = add nuw i32 %i.4254, 1
  %16 = load i32, ptr getelementptr inbounds (%struct.dummy_hcd_module_parameters, ptr @mod_data, i32 0, i32 2), align 4
  %cmp39 = icmp ult i32 %inc60, %16
  br i1 %cmp39, label %for.cond38.for.body40_crit_edge, label %for.cond38.for.end61_crit_edge

for.cond38.for.end61_crit_edge:                   ; preds = %for.cond38
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end61

for.cond38.for.body40_crit_edge:                  ; preds = %for.cond38
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body40

for.body40:                                       ; preds = %for.cond38.for.body40_crit_edge, %for.cond38.preheader.for.body40_crit_edge
  %i.4254 = phi i32 [ %inc60, %for.cond38.for.body40_crit_edge ], [ 0, %for.cond38.preheader.for.body40_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 2944) #16
  %arrayidx42 = getelementptr [32 x ptr], ptr %dum, i32 0, i32 %i.4254
  %18 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %arrayidx42, align 4
  %tobool44.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool44.not, label %for.body40.err_add_pdata_crit_edge, label %if.end46

for.body40.err_add_pdata_crit_edge:               ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_add_pdata

if.end46:                                         ; preds = %for.body40
  %arrayidx47 = getelementptr [32 x ptr], ptr @the_hcd_pdev, i32 0, i32 %i.4254
  %19 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx47, align 4
  %call49 = call i32 @platform_device_add_data(ptr noundef %20, ptr noundef %arrayidx42, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end46.err_add_pdata_crit_edge

if.end46.err_add_pdata_crit_edge:                 ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_add_pdata

if.end52:                                         ; preds = %if.end46
  %arrayidx53 = getelementptr [32 x ptr], ptr @the_udc_pdev, i32 0, i32 %i.4254
  %21 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx53, align 4
  %call55 = call i32 @platform_device_add_data(ptr noundef %22, ptr noundef %arrayidx42, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %for.cond38, label %if.end52.err_add_pdata_crit_edge

if.end52.err_add_pdata_crit_edge:                 ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_add_pdata

for.end61:                                        ; preds = %for.cond38.for.end61_crit_edge, %for.cond38.preheader.for.end61_crit_edge, %for.cond.preheader.for.end61_crit_edge
  %call62 = call i32 @__platform_driver_register(ptr noundef nonnull @dummy_hcd_driver, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %for.end61.err_add_pdata_crit_edge, label %if.end65

for.end61.err_add_pdata_crit_edge:                ; preds = %for.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_add_pdata

if.end65:                                         ; preds = %for.end61
  %call66 = call i32 @__platform_driver_register(ptr noundef nonnull @dummy_udc_driver, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.end65.err_register_udc_driver_crit_edge, label %for.cond70.preheader

if.end65.err_register_udc_driver_crit_edge:       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_register_udc_driver

for.cond70.preheader:                             ; preds = %if.end65
  %23 = load i32, ptr getelementptr inbounds (%struct.dummy_hcd_module_parameters, ptr @mod_data, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp71255.not = icmp eq i32 %23, 0
  br i1 %cmp71255.not, label %for.cond70.preheader.cleanup_crit_edge, label %for.cond70.preheader.for.body72_crit_edge

for.cond70.preheader.for.body72_crit_edge:        ; preds = %for.cond70.preheader
  br label %for.body72

for.cond70.preheader.cleanup_crit_edge:           ; preds = %for.cond70.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond88.preheader:                             ; preds = %for.inc85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp89258.not = icmp eq i32 %28, 0
  br i1 %cmp89258.not, label %for.cond88.preheader.for.cond103.preheader_crit_edge, label %for.cond88.preheader.for.body90_crit_edge

for.cond88.preheader.for.body90_crit_edge:        ; preds = %for.cond88.preheader
  br label %for.body90

for.cond88.preheader.for.cond103.preheader_crit_edge: ; preds = %for.cond88.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond103.preheader

for.body72:                                       ; preds = %for.inc85.for.body72_crit_edge, %for.cond70.preheader.for.body72_crit_edge
  %i.5256 = phi i32 [ %inc86, %for.inc85.for.body72_crit_edge ], [ 0, %for.cond70.preheader.for.body72_crit_edge ]
  %arrayidx73 = getelementptr [32 x ptr], ptr @the_hcd_pdev, i32 0, i32 %i.5256
  %24 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx73, align 4
  %call74 = call i32 @platform_device_add(ptr noundef %25) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %while.cond78.preheader, label %for.inc85

while.cond78.preheader:                           ; preds = %for.body72
  %i.6273 = add i32 %i.5256, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.6273)
  %cmp79274 = icmp sgt i32 %i.6273, -1
  br i1 %cmp79274, label %while.cond78.preheader.while.body80_crit_edge, label %while.cond78.preheader.err_add_hcd_crit_edge

while.cond78.preheader.err_add_hcd_crit_edge:     ; preds = %while.cond78.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_add_hcd

while.cond78.preheader.while.body80_crit_edge:    ; preds = %while.cond78.preheader
  br label %while.body80

while.body80:                                     ; preds = %while.body80.while.body80_crit_edge, %while.cond78.preheader.while.body80_crit_edge
  %i.6275 = phi i32 [ %i.6, %while.body80.while.body80_crit_edge ], [ %i.6273, %while.cond78.preheader.while.body80_crit_edge ]
  %arrayidx82 = getelementptr [32 x ptr], ptr @the_hcd_pdev, i32 0, i32 %i.6275
  %26 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx82, align 4
  call void @platform_device_del(ptr noundef %27) #12
  %i.6 = add nsw i32 %i.6275, -1
  %cmp79 = icmp sgt i32 %i.6275, 0
  br i1 %cmp79, label %while.body80.while.body80_crit_edge, label %while.body80.err_add_hcd_crit_edge

while.body80.err_add_hcd_crit_edge:               ; preds = %while.body80
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_add_hcd

while.body80.while.body80_crit_edge:              ; preds = %while.body80
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body80

for.inc85:                                        ; preds = %for.body72
  %inc86 = add nuw i32 %i.5256, 1
  %28 = load i32, ptr getelementptr inbounds (%struct.dummy_hcd_module_parameters, ptr @mod_data, i32 0, i32 2), align 4
  %cmp71 = icmp ult i32 %inc86, %28
  br i1 %cmp71, label %for.inc85.for.body72_crit_edge, label %for.cond88.preheader

for.inc85.for.body72_crit_edge:                   ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body72

for.cond103.preheader:                            ; preds = %for.inc100.for.cond103.preheader_crit_edge, %for.cond88.preheader.for.cond103.preheader_crit_edge
  %.pr = load i32, ptr getelementptr inbounds (%struct.dummy_hcd_module_parameters, ptr @mod_data, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp104260.not = icmp eq i32 %.pr, 0
  br i1 %cmp104260.not, label %for.cond103.preheader.cleanup_crit_edge, label %for.cond103.preheader.for.body105_crit_edge

for.cond103.preheader.for.body105_crit_edge:      ; preds = %for.cond103.preheader
  br label %for.body105

for.cond103.preheader.cleanup_crit_edge:          ; preds = %for.cond103.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body90:                                       ; preds = %for.inc100.for.body90_crit_edge, %for.cond88.preheader.for.body90_crit_edge
  %i.7259 = phi i32 [ %inc101, %for.inc100.for.body90_crit_edge ], [ 0, %for.cond88.preheader.for.body90_crit_edge ]
  %arrayidx91 = getelementptr [32 x ptr], ptr %dum, i32 0, i32 %i.7259
  %29 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx91, align 4
  %hs_hcd = getelementptr inbounds %struct.dummy, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %hs_hcd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hs_hcd, align 8
  %tobool92.not = icmp eq ptr %32, null
  br i1 %tobool92.not, label %for.body90.err_add_udcthread-pre-split_crit_edge, label %lor.lhs.false93

for.body90.err_add_udcthread-pre-split_crit_edge: ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_add_udcthread-pre-split

lor.lhs.false93:                                  ; preds = %for.body90
  %ss_hcd = getelementptr inbounds %struct.dummy, ptr %30, i32 0, i32 11
  %33 = ptrtoint ptr %ss_hcd to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ss_hcd, align 4
  %tobool95.not = icmp eq ptr %34, null
  br i1 %tobool95.not, label %land.lhs.true96, label %lor.lhs.false93.for.inc100_crit_edge

lor.lhs.false93.for.inc100_crit_edge:             ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc100

land.lhs.true96:                                  ; preds = %lor.lhs.false93
  %35 = load i8, ptr @mod_data, align 4, !range !300
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool97.not = icmp eq i8 %35, 0
  br i1 %tobool97.not, label %land.lhs.true96.for.inc100_crit_edge, label %land.lhs.true96.err_add_udcthread-pre-split_crit_edge

land.lhs.true96.err_add_udcthread-pre-split_crit_edge: ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_add_udcthread-pre-split

land.lhs.true96.for.inc100_crit_edge:             ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc100

for.inc100:                                       ; preds = %land.lhs.true96.for.inc100_crit_edge, %lor.lhs.false93.for.inc100_crit_edge
  %inc101 = add nuw i32 %i.7259, 1
  %exitcond.not = icmp eq i32 %inc101, %28
  br i1 %exitcond.not, label %for.inc100.for.cond103.preheader_crit_edge, label %for.inc100.for.body90_crit_edge

for.inc100.for.body90_crit_edge:                  ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body90

for.inc100.for.cond103.preheader_crit_edge:       ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond103.preheader

for.cond121.preheader:                            ; preds = %for.inc118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp122264.not = icmp eq i32 %40, 0
  br i1 %cmp122264.not, label %for.cond121.preheader.cleanup_crit_edge, label %for.cond121.preheader.for.body123_crit_edge

for.cond121.preheader.for.body123_crit_edge:      ; preds = %for.cond121.preheader
  br label %for.body123

for.cond121.preheader.cleanup_crit_edge:          ; preds = %for.cond121.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body105:                                      ; preds = %for.inc118.for.body105_crit_edge, %for.cond103.preheader.for.body105_crit_edge
  %i.8261 = phi i32 [ %inc119, %for.inc118.for.body105_crit_edge ], [ 0, %for.cond103.preheader.for.body105_crit_edge ]
  %arrayidx106 = getelementptr [32 x ptr], ptr @the_udc_pdev, i32 0, i32 %i.8261
  %36 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx106, align 4
  %call107 = call i32 @platform_device_add(ptr noundef %37) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %cmp108 = icmp slt i32 %call107, 0
  br i1 %cmp108, label %while.cond111.preheader, label %for.inc118

while.cond111.preheader:                          ; preds = %for.body105
  %i.9268 = add i32 %i.8261, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.9268)
  %cmp112269 = icmp sgt i32 %i.9268, -1
  br i1 %cmp112269, label %while.cond111.preheader.while.body113_crit_edge, label %while.cond111.preheader.err_add_udcthread-pre-split_crit_edge

while.cond111.preheader.err_add_udcthread-pre-split_crit_edge: ; preds = %while.cond111.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_add_udcthread-pre-split

while.cond111.preheader.while.body113_crit_edge:  ; preds = %while.cond111.preheader
  br label %while.body113

while.body113:                                    ; preds = %while.body113.while.body113_crit_edge, %while.cond111.preheader.while.body113_crit_edge
  %i.9270 = phi i32 [ %i.9, %while.body113.while.body113_crit_edge ], [ %i.9268, %while.cond111.preheader.while.body113_crit_edge ]
  %arrayidx115 = getelementptr [32 x ptr], ptr @the_udc_pdev, i32 0, i32 %i.9270
  %38 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx115, align 4
  call void @platform_device_del(ptr noundef %39) #12
  %i.9 = add nsw i32 %i.9270, -1
  %cmp112 = icmp sgt i32 %i.9270, 0
  br i1 %cmp112, label %while.body113.while.body113_crit_edge, label %while.body113.err_add_udcthread-pre-split_crit_edge

while.body113.err_add_udcthread-pre-split_crit_edge: ; preds = %while.body113
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_add_udcthread-pre-split

while.body113.while.body113_crit_edge:            ; preds = %while.body113
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body113

for.inc118:                                       ; preds = %for.body105
  %inc119 = add nuw i32 %i.8261, 1
  %40 = load i32, ptr getelementptr inbounds (%struct.dummy_hcd_module_parameters, ptr @mod_data, i32 0, i32 2), align 4
  %cmp104 = icmp ult i32 %inc119, %40
  br i1 %cmp104, label %for.inc118.for.body105_crit_edge, label %for.cond121.preheader

for.inc118.for.body105_crit_edge:                 ; preds = %for.inc118
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body105

for.cond121:                                      ; preds = %for.body123
  %inc130 = add nuw i32 %i.10265, 1
  %exitcond302.not = icmp eq i32 %inc130, %40
  br i1 %exitcond302.not, label %for.cond121.cleanup_crit_edge, label %for.cond121.for.body123_crit_edge

for.cond121.for.body123_crit_edge:                ; preds = %for.cond121
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body123

for.cond121.cleanup_crit_edge:                    ; preds = %for.cond121
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body123:                                      ; preds = %for.cond121.for.body123_crit_edge, %for.cond121.preheader.for.body123_crit_edge
  %i.10265 = phi i32 [ %inc130, %for.cond121.for.body123_crit_edge ], [ 0, %for.cond121.preheader.for.body123_crit_edge ]
  %arrayidx124 = getelementptr [32 x ptr], ptr @the_udc_pdev, i32 0, i32 %i.10265
  %41 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx124, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %42, i32 0, i32 3, i32 8
  %43 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %driver_data.i.i, align 4
  %tobool126.not = icmp eq ptr %44, null
  br i1 %tobool126.not, label %for.cond132.preheader, label %for.cond121

for.cond132.preheader:                            ; preds = %for.body123
  %45 = load i32, ptr getelementptr inbounds (%struct.dummy_hcd_module_parameters, ptr @mod_data, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp133266.not = icmp eq i32 %45, 0
  br i1 %cmp133266.not, label %for.cond132.preheader.err_add_hcd_crit_edge, label %for.cond132.preheader.for.body134_crit_edge

for.cond132.preheader.for.body134_crit_edge:      ; preds = %for.cond132.preheader
  br label %for.body134

for.cond132.preheader.err_add_hcd_crit_edge:      ; preds = %for.cond132.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_add_hcd

for.body134:                                      ; preds = %for.body134.for.body134_crit_edge, %for.cond132.preheader.for.body134_crit_edge
  %i.11267 = phi i32 [ %inc137, %for.body134.for.body134_crit_edge ], [ 0, %for.cond132.preheader.for.body134_crit_edge ]
  %arrayidx135 = getelementptr [32 x ptr], ptr @the_udc_pdev, i32 0, i32 %i.11267
  %46 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx135, align 4
  call void @platform_device_del(ptr noundef %47) #12
  %inc137 = add nuw i32 %i.11267, 1
  %48 = load i32, ptr getelementptr inbounds (%struct.dummy_hcd_module_parameters, ptr @mod_data, i32 0, i32 2), align 4
  %cmp133 = icmp ult i32 %inc137, %48
  br i1 %cmp133, label %for.body134.for.body134_crit_edge, label %for.body134.err_add_udc_crit_edge

for.body134.err_add_udc_crit_edge:                ; preds = %for.body134
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_add_udc

for.body134.for.body134_crit_edge:                ; preds = %for.body134
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body134

err_add_udcthread-pre-split:                      ; preds = %while.body113.err_add_udcthread-pre-split_crit_edge, %while.cond111.preheader.err_add_udcthread-pre-split_crit_edge, %land.lhs.true96.err_add_udcthread-pre-split_crit_edge, %for.body90.err_add_udcthread-pre-split_crit_edge
  %retval1.2.ph = phi i32 [ %call107, %while.cond111.preheader.err_add_udcthread-pre-split_crit_edge ], [ %call107, %while.body113.err_add_udcthread-pre-split_crit_edge ], [ -22, %for.body90.err_add_udcthread-pre-split_crit_edge ], [ -22, %land.lhs.true96.err_add_udcthread-pre-split_crit_edge ]
  %.pr314 = load i32, ptr getelementptr inbounds (%struct.dummy_hcd_module_parameters, ptr @mod_data, i32 0, i32 2), align 4
  br label %err_add_udc

err_add_udc:                                      ; preds = %err_add_udcthread-pre-split, %for.body134.err_add_udc_crit_edge
  %49 = phi i32 [ %.pr314, %err_add_udcthread-pre-split ], [ %48, %for.body134.err_add_udc_crit_edge ]
  %retval1.2 = phi i32 [ %retval1.2.ph, %err_add_udcthread-pre-split ], [ -22, %for.body134.err_add_udc_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp140271.not = icmp eq i32 %49, 0
  br i1 %cmp140271.not, label %err_add_udc.err_add_hcd_crit_edge, label %err_add_udc.for.body141_crit_edge

err_add_udc.for.body141_crit_edge:                ; preds = %err_add_udc
  br label %for.body141

err_add_udc.err_add_hcd_crit_edge:                ; preds = %err_add_udc
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_add_hcd

for.body141:                                      ; preds = %for.body141.for.body141_crit_edge, %err_add_udc.for.body141_crit_edge
  %i.12272 = phi i32 [ %inc144, %for.body141.for.body141_crit_edge ], [ 0, %err_add_udc.for.body141_crit_edge ]
  %arrayidx142 = getelementptr [32 x ptr], ptr @the_hcd_pdev, i32 0, i32 %i.12272
  %50 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx142, align 4
  call void @platform_device_del(ptr noundef %51) #12
  %inc144 = add nuw i32 %i.12272, 1
  %52 = load i32, ptr getelementptr inbounds (%struct.dummy_hcd_module_parameters, ptr @mod_data, i32 0, i32 2), align 4
  %cmp140 = icmp ult i32 %inc144, %52
  br i1 %cmp140, label %for.body141.for.body141_crit_edge, label %for.body141.err_add_hcd_crit_edge

for.body141.err_add_hcd_crit_edge:                ; preds = %for.body141
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_add_hcd

for.body141.for.body141_crit_edge:                ; preds = %for.body141
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body141

err_add_hcd:                                      ; preds = %for.body141.err_add_hcd_crit_edge, %err_add_udc.err_add_hcd_crit_edge, %for.cond132.preheader.err_add_hcd_crit_edge, %while.body80.err_add_hcd_crit_edge, %while.cond78.preheader.err_add_hcd_crit_edge
  %retval1.3 = phi i32 [ %call74, %while.cond78.preheader.err_add_hcd_crit_edge ], [ %retval1.2, %err_add_udc.err_add_hcd_crit_edge ], [ -22, %for.cond132.preheader.err_add_hcd_crit_edge ], [ %call74, %while.body80.err_add_hcd_crit_edge ], [ %retval1.2, %for.body141.err_add_hcd_crit_edge ]
  call void @platform_driver_unregister(ptr noundef nonnull @dummy_udc_driver) #12
  br label %err_register_udc_driver

err_register_udc_driver:                          ; preds = %err_add_hcd, %if.end65.err_register_udc_driver_crit_edge
  %retval1.4 = phi i32 [ %call66, %if.end65.err_register_udc_driver_crit_edge ], [ %retval1.3, %err_add_hcd ]
  call void @platform_driver_unregister(ptr noundef nonnull @dummy_hcd_driver) #12
  br label %err_add_pdata

err_add_pdata:                                    ; preds = %err_register_udc_driver, %for.end61.err_add_pdata_crit_edge, %if.end52.err_add_pdata_crit_edge, %if.end46.err_add_pdata_crit_edge, %for.body40.err_add_pdata_crit_edge
  %retval1.5 = phi i32 [ %call62, %for.end61.err_add_pdata_crit_edge ], [ %retval1.4, %err_register_udc_driver ], [ -12, %for.body40.err_add_pdata_crit_edge ], [ %call55, %if.end52.err_add_pdata_crit_edge ], [ %call49, %if.end46.err_add_pdata_crit_edge ]
  %53 = load i32, ptr getelementptr inbounds (%struct.dummy_hcd_module_parameters, ptr @mod_data, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp147276.not = icmp eq i32 %53, 0
  br i1 %cmp147276.not, label %err_add_pdata.cleanup_crit_edge, label %err_add_pdata.for.body148_crit_edge

err_add_pdata.for.body148_crit_edge:              ; preds = %err_add_pdata
  br label %for.body148

err_add_pdata.cleanup_crit_edge:                  ; preds = %err_add_pdata
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond153.preheader:                            ; preds = %for.body148
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp154278.not = icmp eq i32 %56, 0
  br i1 %cmp154278.not, label %for.cond153.preheader.err_alloc_udc_crit_edge, label %for.cond153.preheader.for.body155_crit_edge

for.cond153.preheader.for.body155_crit_edge:      ; preds = %for.cond153.preheader
  br label %for.body155

for.cond153.preheader.err_alloc_udc_crit_edge:    ; preds = %for.cond153.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_alloc_udc

for.body148:                                      ; preds = %for.body148.for.body148_crit_edge, %err_add_pdata.for.body148_crit_edge
  %i.13277 = phi i32 [ %inc151, %for.body148.for.body148_crit_edge ], [ 0, %err_add_pdata.for.body148_crit_edge ]
  %arrayidx149 = getelementptr [32 x ptr], ptr %dum, i32 0, i32 %i.13277
  %54 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx149, align 4
  call void @kfree(ptr noundef %55) #12
  %inc151 = add nuw i32 %i.13277, 1
  %56 = load i32, ptr getelementptr inbounds (%struct.dummy_hcd_module_parameters, ptr @mod_data, i32 0, i32 2), align 4
  %cmp147 = icmp ult i32 %inc151, %56
  br i1 %cmp147, label %for.body148.for.body148_crit_edge, label %for.cond153.preheader

for.body148.for.body148_crit_edge:                ; preds = %for.body148
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body148

for.body155:                                      ; preds = %for.body155.for.body155_crit_edge, %for.cond153.preheader.for.body155_crit_edge
  %i.14279 = phi i32 [ %inc158, %for.body155.for.body155_crit_edge ], [ 0, %for.cond153.preheader.for.body155_crit_edge ]
  %arrayidx156 = getelementptr [32 x ptr], ptr @the_udc_pdev, i32 0, i32 %i.14279
  %57 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx156, align 4
  call void @platform_device_put(ptr noundef %58) #12
  %inc158 = add nuw i32 %i.14279, 1
  %59 = load i32, ptr getelementptr inbounds (%struct.dummy_hcd_module_parameters, ptr @mod_data, i32 0, i32 2), align 4
  %cmp154 = icmp ult i32 %inc158, %59
  br i1 %cmp154, label %for.body155.for.body155_crit_edge, label %for.body155.err_alloc_udc_crit_edge

for.body155.err_alloc_udc_crit_edge:              ; preds = %for.body155
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_alloc_udc

for.body155.for.body155_crit_edge:                ; preds = %for.body155
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body155

err_alloc_udcthread-pre-split:                    ; preds = %while.body30.err_alloc_udcthread-pre-split_crit_edge, %while.cond28.preheader.err_alloc_udcthread-pre-split_crit_edge
  %.pr318 = load i32, ptr getelementptr inbounds (%struct.dummy_hcd_module_parameters, ptr @mod_data, i32 0, i32 2), align 4
  br label %err_alloc_udc

err_alloc_udc:                                    ; preds = %err_alloc_udcthread-pre-split, %for.body155.err_alloc_udc_crit_edge, %for.cond153.preheader.err_alloc_udc_crit_edge
  %60 = phi i32 [ %.pr318, %err_alloc_udcthread-pre-split ], [ 0, %for.cond153.preheader.err_alloc_udc_crit_edge ], [ %59, %for.body155.err_alloc_udc_crit_edge ]
  %retval1.6 = phi i32 [ -12, %err_alloc_udcthread-pre-split ], [ %retval1.5, %for.cond153.preheader.err_alloc_udc_crit_edge ], [ %retval1.5, %for.body155.err_alloc_udc_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp161283.not = icmp eq i32 %60, 0
  br i1 %cmp161283.not, label %err_alloc_udc.cleanup_crit_edge, label %err_alloc_udc.for.body162_crit_edge

err_alloc_udc.for.body162_crit_edge:              ; preds = %err_alloc_udc
  br label %for.body162

err_alloc_udc.cleanup_crit_edge:                  ; preds = %err_alloc_udc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body162:                                      ; preds = %for.body162.for.body162_crit_edge, %err_alloc_udc.for.body162_crit_edge
  %i.15284 = phi i32 [ %inc165, %for.body162.for.body162_crit_edge ], [ 0, %err_alloc_udc.for.body162_crit_edge ]
  %arrayidx163 = getelementptr [32 x ptr], ptr @the_hcd_pdev, i32 0, i32 %i.15284
  %61 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx163, align 4
  call void @platform_device_put(ptr noundef %62) #12
  %inc165 = add nuw i32 %i.15284, 1
  %63 = load i32, ptr getelementptr inbounds (%struct.dummy_hcd_module_parameters, ptr @mod_data, i32 0, i32 2), align 4
  %cmp161 = icmp ult i32 %inc165, %63
  br i1 %cmp161, label %for.body162.for.body162_crit_edge, label %for.body162.cleanup_crit_edge

for.body162.cleanup_crit_edge:                    ; preds = %for.body162
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body162.for.body162_crit_edge:                ; preds = %for.body162
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body162

cleanup:                                          ; preds = %for.body162.cleanup_crit_edge, %err_alloc_udc.cleanup_crit_edge, %err_add_pdata.cleanup_crit_edge, %for.cond121.cleanup_crit_edge, %for.cond121.preheader.cleanup_crit_edge, %for.cond103.preheader.cleanup_crit_edge, %for.cond70.preheader.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %do.end, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -12, %while.cond.preheader.cleanup_crit_edge ], [ %retval1.6, %err_alloc_udc.cleanup_crit_edge ], [ %call107, %for.cond121.preheader.cleanup_crit_edge ], [ %call74, %for.cond103.preheader.cleanup_crit_edge ], [ %call66, %for.cond70.preheader.cleanup_crit_edge ], [ %retval1.5, %err_add_pdata.cleanup_crit_edge ], [ %retval1.6, %for.body162.cleanup_crit_edge ], [ %call107, %for.cond121.cleanup_crit_edge ], [ -12, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %dum) #12
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = load i32, ptr getelementptr inbounds (%struct.dummy_hcd_module_parameters, ptr @mod_data, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp7.not = icmp eq i32 %0, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr @the_udc_pdev, i32 0, i32 %i.08
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3, i32 7
  %3 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  tail call void @platform_device_unregister(ptr noundef %2) #12
  %arrayidx2 = getelementptr [32 x ptr], ptr @the_hcd_pdev, i32 0, i32 %i.08
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx2, align 4
  tail call void @platform_device_unregister(ptr noundef %8) #12
  tail call void @kfree(ptr noundef %6) #12
  %inc = add nuw i32 %i.08, 1
  %9 = load i32, ptr getelementptr inbounds (%struct.dummy_hcd_module_parameters, ptr @mod_data, i32 0, i32 2), align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @platform_driver_unregister(ptr noundef nonnull @dummy_udc_driver) #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @dummy_hcd_driver) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_udc_probe(ptr noundef %pdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %gadget = getelementptr inbounds %struct.dummy, ptr %3, i32 0, i32 4
  %4 = call ptr @memset(ptr %gadget, i32 0, i32 1048)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %gadget) #12, !srcloc !301
  %name = getelementptr inbounds %struct.dummy, ptr %3, i32 0, i32 4, i32 10
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @gadget_name, ptr %name, align 4
  %ops = getelementptr inbounds %struct.dummy, ptr %3, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @dummy_ops, ptr %ops, align 8
  %7 = load i8, ptr @mod_data, align 4, !range !300
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %max_speed = getelementptr inbounds %struct.dummy, ptr %3, i32 0, i32 4, i32 6
  %8 = ptrtoint ptr %max_speed to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 5, ptr %max_speed, align 4
  br label %if.end11

if.else:                                          ; preds = %entry
  %9 = load i8, ptr getelementptr inbounds (%struct.dummy_hcd_module_parameters, ptr @mod_data, i32 0, i32 1), align 1, !range !300
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  %max_speed10 = getelementptr inbounds %struct.dummy, ptr %3, i32 0, i32 4, i32 6
  br i1 %tobool4.not, label %if.else8, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %max_speed10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %max_speed10, align 4
  br label %if.end11

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %max_speed10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %max_speed10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else8, %if.then5, %if.then
  %parent = getelementptr inbounds %struct.dummy, ptr %3, i32 0, i32 4, i32 11, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %parent, align 8
  %ep_list.i = getelementptr inbounds %struct.dummy, ptr %3, i32 0, i32 4, i32 4
  %13 = ptrtoint ptr %ep_list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %ep_list.i, ptr %ep_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.dummy, ptr %3, i32 0, i32 4, i32 4, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ep_list.i, ptr %prev.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end11
  %i.077.i = phi i32 [ 0, %if.end11 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx2.i = getelementptr [25 x %struct.anon.72], ptr @ep_info, i32 0, i32 %i.077.i
  %15 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx2.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %for.body.i.for.end.i_crit_edge, label %if.end.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.dummy, ptr %3, i32 0, i32 1, i32 %i.077.i
  %ep5.i = getelementptr %struct.dummy, ptr %3, i32 0, i32 1, i32 %i.077.i, i32 4
  %name6.i = getelementptr %struct.dummy, ptr %3, i32 0, i32 1, i32 %i.077.i, i32 4, i32 1
  %17 = ptrtoint ptr %name6.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %name6.i, align 4
  %caps.i = getelementptr %struct.dummy, ptr %3, i32 0, i32 1, i32 %i.077.i, i32 4, i32 4
  %caps9.i = getelementptr [25 x %struct.anon.72], ptr @ep_info, i32 0, i32 %i.077.i, i32 1
  %18 = ptrtoint ptr %caps9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %caps9.i, align 4
  %20 = ptrtoint ptr %caps.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %caps.i, align 4
  %ops.i = getelementptr %struct.dummy, ptr %3, i32 0, i32 1, i32 %i.077.i, i32 4, i32 2
  %21 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @dummy_ep_ops, ptr %ops.i, align 4
  %ep_list12.i = getelementptr %struct.dummy, ptr %3, i32 0, i32 1, i32 %i.077.i, i32 4, i32 3
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list12.i, ptr noundef %23, ptr noundef %ep_list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %ep_list12.i, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %ep_list12.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %ep_list.i, ptr %ep_list12.i, align 4
  %prev3.i.i.i = getelementptr %struct.dummy, ptr %3, i32 0, i32 1, i32 %i.077.i, i32 4, i32 3, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %ep_list12.i, ptr %23, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i.i, %if.end.i.for.inc.i_crit_edge
  %setup_stage.i = getelementptr %struct.dummy, ptr %3, i32 0, i32 1, i32 %i.077.i, i32 5
  %28 = ptrtoint ptr %setup_stage.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i = load i8, ptr %setup_stage.i, align 4
  %bf.clear22.i = and i8 %bf.load.i, 15
  store i8 %bf.clear22.i, ptr %setup_stage.i, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %ep5.i, i32 noundef -1) #12
  %max_streams.i = getelementptr %struct.dummy, ptr %3, i32 0, i32 1, i32 %i.077.i, i32 4, i32 7
  %29 = ptrtoint ptr %max_streams.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 7)
  %bf.load26.i = load i56, ptr %max_streams.i, align 2
  %bf.clear27.i = and i56 %bf.load26.i, -16776961
  %bf.set28.i = or i56 %bf.clear27.i, 4096
  store i56 %bf.set28.i, ptr %max_streams.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %last_io.i = getelementptr %struct.dummy, ptr %3, i32 0, i32 1, i32 %i.077.i, i32 1
  %31 = ptrtoint ptr %last_io.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %last_io.i, align 4
  %gadget30.i = getelementptr %struct.dummy, ptr %3, i32 0, i32 1, i32 %i.077.i, i32 2
  %32 = ptrtoint ptr %gadget30.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %gadget, ptr %gadget30.i, align 4
  %desc.i = getelementptr %struct.dummy, ptr %3, i32 0, i32 1, i32 %i.077.i, i32 3
  %33 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %desc.i, align 4
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %arrayidx.i, ptr %arrayidx.i, align 4
  %prev.i71.i = getelementptr inbounds %struct.list_head, ptr %arrayidx.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i71.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %arrayidx.i, ptr %prev.i71.i, align 4
  %inc.i = add nuw nsw i32 %i.077.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 25
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %ep33.i = getelementptr inbounds %struct.dummy, ptr %3, i32 0, i32 1, i32 0, i32 4
  %ep0.i = getelementptr inbounds %struct.dummy, ptr %3, i32 0, i32 4, i32 3
  %36 = ptrtoint ptr %ep0.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %ep33.i, ptr %ep0.i, align 4
  %ep_list38.i = getelementptr inbounds %struct.dummy, ptr %3, i32 0, i32 1, i32 0, i32 4, i32 3
  %call.i.i72.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ep_list38.i) #12
  br i1 %call.i.i72.i, label %if.end.i.i73.i, label %for.end.i.init_dummy_udc_hw.exit_crit_edge

for.end.i.init_dummy_udc_hw.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_dummy_udc_hw.exit

if.end.i.i73.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.dummy, ptr %3, i32 0, i32 1, i32 0, i32 4, i32 3, i32 1
  %37 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i.i, align 4
  %39 = ptrtoint ptr %ep_list38.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ep_list38.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %init_dummy_udc_hw.exit

init_dummy_udc_hw.exit:                           ; preds = %if.end.i.i73.i, %for.end.i.init_dummy_udc_hw.exit_crit_edge
  %43 = ptrtoint ptr %ep_list38.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %ep_list38.i, ptr %ep_list38.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.dummy, ptr %3, i32 0, i32 1, i32 0, i32 4, i32 3, i32 1
  %44 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %ep_list38.i, ptr %prev.i3.i.i, align 4
  %fifo_req.i = getelementptr inbounds %struct.dummy, ptr %3, i32 0, i32 6
  %45 = ptrtoint ptr %fifo_req.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %fifo_req.i, ptr %fifo_req.i, align 4
  %prev.i74.i = getelementptr inbounds %struct.dummy, ptr %3, i32 0, i32 6, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i74.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %fifo_req.i, ptr %prev.i74.i, align 4
  %is_otg.i = getelementptr inbounds %struct.dummy, ptr %3, i32 0, i32 4, i32 17
  %47 = ptrtoint ptr %is_otg.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %bf.load41.i = load i32, ptr %is_otg.i, align 4
  %bf.set43.i = or i32 %bf.load41.i, 1073741824
  store i32 %bf.set43.i, ptr %is_otg.i, align 4
  %call17 = tail call i32 @usb_add_gadget_udc(ptr noundef %dev, ptr noundef %gadget) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %init_dummy_udc_hw.exit.cleanup_crit_edge, label %if.end19

init_dummy_udc_hw.exit.cleanup_crit_edge:         ; preds = %init_dummy_udc_hw.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %init_dummy_udc_hw.exit
  %dev14 = getelementptr inbounds %struct.dummy, ptr %3, i32 0, i32 4, i32 11
  %call22 = tail call i32 @device_create_file(ptr noundef %dev14, ptr noundef nonnull @dev_attr_function) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %err_dev, label %if.end25

if.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %48 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %3, ptr %driver_data.i.i, align 4
  br label %cleanup

err_dev:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_del_gadget_udc(ptr noundef %gadget) #12
  br label %cleanup

cleanup:                                          ; preds = %err_dev, %if.end25, %init_dummy_udc_hw.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.end25 ], [ %call17, %init_dummy_udc_hw.exit.cleanup_crit_edge ], [ %call22, %err_dev ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_udc_remove(ptr nocapture noundef readonly %pdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %gadget = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 4
  %dev = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 4, i32 11
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_function) #12
  tail call void @usb_del_gadget_udc(ptr noundef %gadget) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_udc_suspend(ptr noundef %pdev, [1 x i32] %state.coerce) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %gadget = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 4
  %speed.i = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 4, i32 5
  %2 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp.i = icmp eq i32 %3, 5
  %retval.0.in.v.i = select i1 %cmp.i, i32 1188, i32 1184
  %retval.0.in.i = getelementptr i8, ptr %gadget, i32 %retval.0.in.v.i
  %4 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %retval.0.i10 = load ptr, ptr %retval.0.in.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dummy_udc_suspend.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dummy_udc_suspend, %do.end)) #12
          to label %if.then [label %do.end], !srcloc !302

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dummy_udc_suspend.__UNIQUE_ID_ddebug250, ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #12
  %udc_suspended.i = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %udc_suspended.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %udc_suspended.i, align 2
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %udc_suspended.i, align 2
  tail call fastcc void @set_link_state(ptr noundef %retval.0.i10) #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #12
  %add.ptr.i = getelementptr i8, ptr %retval.0.i10, i32 -600
  tail call void @usb_hcd_poll_rh_status(ptr noundef %add.ptr.i) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_udc_resume(ptr noundef %pdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %gadget = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 4
  %speed.i = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 4, i32 5
  %2 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp.i = icmp eq i32 %3, 5
  %retval.0.in.v.i = select i1 %cmp.i, i32 1188, i32 1184
  %retval.0.in.i = getelementptr i8, ptr %gadget, i32 %retval.0.in.v.i
  %4 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %retval.0.i10 = load ptr, ptr %retval.0.in.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dummy_udc_resume.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dummy_udc_resume, %do.end)) #12
          to label %if.then [label %do.end], !srcloc !302

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dummy_udc_resume.__UNIQUE_ID_ddebug251, ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.49) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #12
  %udc_suspended.i = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %udc_suspended.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %udc_suspended.i, align 2
  %bf.clear.i = and i8 %bf.load.i, -65
  store i8 %bf.clear.i, ptr %udc_suspended.i, align 2
  tail call fastcc void @set_link_state(ptr noundef %retval.0.i10) #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #12
  %add.ptr.i = getelementptr i8, ptr %retval.0.i10, i32 -600
  tail call void @usb_hcd_poll_rh_status(ptr noundef %add.ptr.i) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_g_get_frame(ptr nocapture noundef readnone %_gadget) #5 align 64 {
entry:
  %ts64 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts64) #12
  %0 = call ptr @memset(ptr %ts64, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts64) #12
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts64, i32 0, i32 1
  %1 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tv_nsec, align 8
  %div = sdiv i32 %2, 1000000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts64) #12
  ret i32 %div
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_wakeup(ptr nocapture noundef readonly %_gadget) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %speed.i = getelementptr inbounds %struct.usb_gadget, ptr %_gadget, i32 0, i32 5
  %0 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp.i = icmp eq i32 %1, 5
  %retval.0.in.v.i = select i1 %cmp.i, i32 1188, i32 1184
  %retval.0.in.i = getelementptr i8, ptr %_gadget, i32 %retval.0.in.v.i
  %2 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %retval.0.i = load ptr, ptr %retval.0.in.i, align 4
  %3 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %retval.0.i, align 4
  %devstatus = getelementptr inbounds %struct.dummy, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %devstatus to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %devstatus, align 4
  %7 = and i16 %6, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %port_status = getelementptr inbounds %struct.dummy_hcd, ptr %retval.0.i, i32 0, i32 3
  %8 = ptrtoint ptr %port_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_status, align 4
  %and1 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %cmp = icmp eq i32 %and1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and6 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp7 = icmp eq i32 %and6, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end4.if.end12_crit_edge

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end4
  %rh_state = getelementptr inbounds %struct.dummy_hcd, ptr %retval.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %rh_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rh_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp9.not = icmp eq i32 %11, 1
  br i1 %cmp9.not, label %land.lhs.true.if.end12_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end4.if.end12_crit_edge
  %resuming = getelementptr inbounds %struct.dummy_hcd, ptr %retval.0.i, i32 0, i32 11
  %12 = ptrtoint ptr %resuming to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %resuming, align 1
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %resuming, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %13, 2
  %re_timeout = getelementptr inbounds %struct.dummy_hcd, ptr %retval.0.i, i32 0, i32 5
  %14 = ptrtoint ptr %re_timeout to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %re_timeout, align 4
  %rh_timer = getelementptr i8, ptr %retval.0.i, i32 -396
  %call16 = tail call i32 @mod_timer(ptr noundef %rh_timer, i32 noundef %add) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ -67, %if.end.cleanup_crit_edge ], [ -5, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dummy_set_selfpowered(ptr nocapture noundef %_gadget, i32 noundef %value) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp.not = icmp eq i32 %value, 0
  %is_selfpowered = getelementptr inbounds %struct.usb_gadget, ptr %_gadget, i32 0, i32 17
  %0 = ptrtoint ptr %is_selfpowered to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %is_selfpowered, align 4
  %bf.shl = select i1 %cmp.not, i32 0, i32 262144
  %bf.clear = and i32 %bf.load, -262145
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %is_selfpowered, align 4
  %speed.i = getelementptr inbounds %struct.usb_gadget, ptr %_gadget, i32 0, i32 5
  %1 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %2)
  %cmp.i = icmp eq i32 %2, 5
  %retval.0.in.v.i = select i1 %cmp.i, i32 1188, i32 1184
  %retval.0.in.i = getelementptr i8, ptr %_gadget, i32 %retval.0.in.v.i
  %3 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %retval.0.i = load ptr, ptr %retval.0.in.i, align 4
  %4 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %retval.0.i, align 4
  %devstatus4 = getelementptr inbounds %struct.dummy, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %devstatus4 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %devstatus4, align 4
  %8 = and i16 %7, -2
  %not.cmp.not = xor i1 %cmp.not, true
  %masksel = zext i1 %not.cmp.not to i16
  %.sink = or i16 %8, %masksel
  store i16 %.sink, ptr %devstatus4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_pullup(ptr noundef %_gadget, i32 noundef %value) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.usb_gadget, ptr %_gadget, i32 -2, i32 11, i32 9, i32 5, i32 7
  %speed.i = getelementptr inbounds %struct.usb_gadget, ptr %_gadget, i32 0, i32 5
  %0 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp.i = icmp eq i32 %1, 5
  %retval.0.in.v.i = select i1 %cmp.i, i32 1188, i32 1184
  %retval.0.in.i = getelementptr i8, ptr %_gadget, i32 %retval.0.in.v.i
  %2 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %retval.0.i = load ptr, ptr %retval.0.in.i, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp7.not = icmp eq i32 %value, 0
  %pullup = getelementptr inbounds %struct.dummy, ptr %add.ptr.i, i32 0, i32 9
  %3 = ptrtoint ptr %pullup to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %pullup, align 2
  %bf.shl = select i1 %cmp7.not, i8 0, i8 32
  %bf.clear = and i8 %bf.load, -33
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %pullup, align 2
  tail call fastcc void @set_link_state(ptr noundef %retval.0.i)
  br i1 %cmp7.not, label %while.cond.preheader, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

while.cond.preheader:                             ; preds = %entry
  %callback_usage = getelementptr inbounds %struct.dummy, ptr %add.ptr.i, i32 0, i32 3
  %4 = ptrtoint ptr %callback_usage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %callback_usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1140 = icmp sgt i32 %5, 0
  br i1 %cmp1140, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.if.end_crit_edge

while.cond.preheader.if.end_crit_edge:            ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %flags.041 = phi i32 [ %call23, %while.body.while.body_crit_edge ], [ %call4, %while.cond.preheader.while.body_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %flags.041) #12
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #12
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i) #12
  %6 = ptrtoint ptr %callback_usage to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %callback_usage, align 4
  %cmp11 = icmp sgt i32 %7, 0
  br i1 %cmp11, label %while.body.while.body_crit_edge, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end:                                           ; preds = %while.body.if.end_crit_edge, %while.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  %flags.1 = phi i32 [ %call4, %entry.if.end_crit_edge ], [ %call4, %while.cond.preheader.if.end_crit_edge ], [ %call23, %while.body.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %flags.1) #12
  %add.ptr.i39 = getelementptr i8, ptr %retval.0.i, i32 -600
  tail call void @usb_hcd_poll_rh_status(ptr noundef %add.ptr.i39) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_udc_start(ptr nocapture noundef readonly %g, ptr noundef %driver) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %speed.i = getelementptr inbounds %struct.usb_gadget, ptr %g, i32 0, i32 5
  %0 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp.i = icmp eq i32 %1, 5
  %retval.0.in.v.i = select i1 %cmp.i, i32 1188, i32 1184
  %retval.0.in.i = getelementptr i8, ptr %g, i32 %retval.0.in.v.i
  %2 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %retval.0.i = load ptr, ptr %retval.0.in.i, align 4
  %3 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %entry.sw.epilog_crit_edge12
    i32 3, label %entry.sw.epilog_crit_edge13
    i32 5, label %entry.sw.epilog_crit_edge14
  ]

entry.sw.epilog_crit_edge14:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge13:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge12:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i = getelementptr i8, ptr %retval.0.i, i32 -600
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i, align 8
  %max_speed = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver, i32 0, i32 1
  %6 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_speed, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3, i32 noundef %7) #15
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge12, %entry.sw.epilog_crit_edge13, %entry.sw.epilog_crit_edge14
  %8 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %retval.0.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %9) #12
  %devstatus = getelementptr inbounds %struct.dummy, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %devstatus to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %devstatus, align 4
  %driver3 = getelementptr inbounds %struct.dummy, ptr %9, i32 0, i32 5
  %11 = ptrtoint ptr %driver3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %driver, ptr %driver3, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %9) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_udc_stop(ptr nocapture noundef readonly %g) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %speed.i = getelementptr inbounds %struct.usb_gadget, ptr %g, i32 0, i32 5
  %0 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp.i = icmp eq i32 %1, 5
  %retval.0.in.v.i = select i1 %cmp.i, i32 1188, i32 1184
  %retval.0.in.i = getelementptr i8, ptr %g, i32 %retval.0.in.v.i
  %2 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %retval.0.i = load ptr, ptr %retval.0.in.i, align 4
  %3 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %retval.0.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #12
  %ints_enabled = getelementptr inbounds %struct.dummy, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %ints_enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %ints_enabled, align 2
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %ints_enabled, align 2
  %address.i = getelementptr inbounds %struct.dummy, ptr %4, i32 0, i32 2
  %6 = ptrtoint ptr %address.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %address.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %nuke.exit.i.for.body.i_crit_edge, %entry
  %i.05.i = phi i32 [ 0, %entry ], [ %inc.i, %nuke.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dummy, ptr %4, i32 0, i32 1, i32 %i.05.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not12.i.i = icmp eq ptr %8, %arrayidx.i
  br i1 %cmp.i.not12.i.i, label %for.body.i.nuke.exit.i_crit_edge, label %while.body.lr.ph.i.i

for.body.i.nuke.exit.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nuke.exit.i

while.body.lr.ph.i.i:                             ; preds = %for.body.i
  %ep4.i.i = getelementptr %struct.dummy, ptr %4, i32 0, i32 1, i32 %i.05.i, i32 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %list_del_init.exit.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %9 = phi ptr [ %8, %while.body.lr.ph.i.i ], [ %20, %list_del_init.exit.i.i.while.body.i.i_crit_edge ]
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %while.body.i.i.list_del_init.exit.i.i_crit_edge

while.body.i.i.list_del_init.exit.i.i_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %while.body.i.i.list_del_init.exit.i.i_crit_edge
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %9, ptr %9, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %9, ptr %prev.i3.i.i.i, align 4
  %req3.i.i = getelementptr inbounds %struct.dummy_request, ptr %9, i32 0, i32 1
  %status.i.i = getelementptr inbounds %struct.dummy_request, ptr %9, i32 0, i32 1, i32 11
  %18 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -108, ptr %status.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %4) #12
  tail call void @usb_gadget_giveback_request(ptr noundef %ep4.i.i, ptr noundef %req3.i.i) #12
  tail call void @_raw_spin_lock(ptr noundef %4) #12
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %20, %arrayidx.i
  br i1 %cmp.i.not.i.i, label %list_del_init.exit.i.i.nuke.exit.i_crit_edge, label %list_del_init.exit.i.i.while.body.i.i_crit_edge

list_del_init.exit.i.i.while.body.i.i_crit_edge:  ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

list_del_init.exit.i.i.nuke.exit.i_crit_edge:     ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nuke.exit.i

nuke.exit.i:                                      ; preds = %list_del_init.exit.i.i.nuke.exit.i_crit_edge, %for.body.i.nuke.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 25
  br i1 %exitcond.not.i, label %stop_activity.exit, label %nuke.exit.i.for.body.i_crit_edge

nuke.exit.i.for.body.i_crit_edge:                 ; preds = %nuke.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

stop_activity.exit:                               ; preds = %nuke.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %driver = getelementptr inbounds %struct.dummy, ptr %4, i32 0, i32 5
  %21 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %driver, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %4) #12
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dummy_udc_set_speed(ptr nocapture noundef %_gadget, i32 noundef %speed) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.usb_gadget, ptr %_gadget, i32 -2, i32 11, i32 9, i32 5, i32 7
  %speed1 = getelementptr %struct.usb_gadget, ptr %_gadget, i32 0, i32 5
  %0 = ptrtoint ptr %speed1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %speed, ptr %speed1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %speed)
  %cmp.i = icmp eq i32 %speed, 5
  %maxpacket.i = getelementptr inbounds %struct.dummy, ptr %add.ptr.i, i32 0, i32 1, i32 0, i32 4, i32 7
  %1 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %1, i32 7)
  %bf.load.i = load i56, ptr %maxpacket.i, align 2
  %bf.clear.i = and i56 %bf.load.i, 1099511627775
  %..i = select i1 %cmp.i, i56 9895604649984, i56 70368744177664
  %bf.set8.i = or i56 %bf.clear.i, %..i
  store i56 %bf.set8.i, ptr %maxpacket.i, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dummy_udc_async_callbacks(ptr noundef %_gadget, i1 noundef zeroext %enable) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.usb_gadget, ptr %_gadget, i32 -2, i32 11, i32 9, i32 5, i32 7
  tail call void @_raw_spin_lock_irq(ptr noundef %add.ptr.i) #12
  %ints_enabled = getelementptr inbounds %struct.dummy, ptr %add.ptr.i, i32 0, i32 9
  %0 = ptrtoint ptr %ints_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %ints_enabled, align 2
  %bf.shl = select i1 %enable, i8 -128, i8 0
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %ints_enabled, align 2
  tail call void @_raw_spin_unlock_irq(ptr noundef %add.ptr.i) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_link_state(ptr nocapture noundef %dum_hcd) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dum_hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dum_hcd, align 4
  %active = getelementptr inbounds %struct.dummy_hcd, ptr %dum_hcd, i32 0, i32 11
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %active, align 1
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %active, align 1
  %pullup = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %pullup to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load2 = load i8, ptr %pullup, align 2
  %4 = and i8 %bf.load2, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then:                                          ; preds = %entry
  %speed = getelementptr i8, ptr %dum_hcd, i32 -424
  %5 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %6)
  %cmp = icmp eq i32 %6, 64
  %speed4 = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 4, i32 5
  %7 = ptrtoint ptr %speed4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %speed4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp5.not = icmp eq i32 %8, 5
  br i1 %cmp, label %land.lhs.true, label %land.lhs.true9

land.lhs.true:                                    ; preds = %if.then
  br i1 %cmp5.not, label %land.lhs.true.if.end14_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

land.lhs.true9:                                   ; preds = %if.then
  br i1 %cmp5.not, label %land.lhs.true9.cleanup_crit_edge, label %land.lhs.true9.if.end14_crit_edge

land.lhs.true9.if.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %land.lhs.true9.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %entry.if.end14_crit_edge
  %speed.i = getelementptr i8, ptr %dum_hcd, i32 -424
  %9 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %10)
  %cmp.i = icmp eq i32 %10, 64
  %port_status.i = getelementptr inbounds %struct.dummy_hcd, ptr %dum_hcd, i32 0, i32 3
  %11 = ptrtoint ptr %port_status.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port_status.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else41.i

if.then.i:                                        ; preds = %if.end14
  %and.i = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp2.i = icmp eq i32 %and.i, 0
  br i1 %cmp2.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %port_status.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %port_status.i, align 4
  br label %set_link_state_by_speed.exit

if.else.i:                                        ; preds = %if.then.i
  %14 = and i8 %bf.load2, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %14)
  %15 = icmp eq i8 %14, 32
  br i1 %15, label %if.else17.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.else.i
  %and12.i = and i32 %12, -4
  %16 = ptrtoint ptr %port_status.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and12.i, ptr %port_status.i, align 4
  %old_status.i = getelementptr inbounds %struct.dummy_hcd, ptr %dum_hcd, i32 0, i32 4
  %17 = ptrtoint ptr %old_status.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %old_status.i, align 4
  %and13.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %cmp14.not.i = icmp eq i32 %and13.i, 0
  br i1 %cmp14.not.i, label %if.then10.i.set_link_state_by_speed.exit_crit_edge, label %if.then15.i

if.then10.i.set_link_state_by_speed.exit_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_link_state_by_speed.exit

if.then15.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  %or.i = or i32 %and12.i, 65536
  %19 = ptrtoint ptr %port_status.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i, ptr %port_status.i, align 4
  br label %set_link_state_by_speed.exit

if.else17.i:                                      ; preds = %if.else.i
  %or19.i = or i32 %12, 1
  %20 = ptrtoint ptr %port_status.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or19.i, ptr %port_status.i, align 4
  %old_status20.i = getelementptr inbounds %struct.dummy_hcd, ptr %dum_hcd, i32 0, i32 4
  %21 = ptrtoint ptr %old_status20.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %old_status20.i, align 4
  %and21.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %cmp22.i = icmp eq i32 %and21.i, 0
  br i1 %cmp22.i, label %if.then23.i, label %if.else17.i.if.end26.i_crit_edge

if.else17.i.if.end26.i_crit_edge:                 ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

if.then23.i:                                      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #14
  %or25.i = or i32 %12, 65537
  %23 = ptrtoint ptr %port_status.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or25.i, ptr %port_status.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then23.i, %if.else17.i.if.end26.i_crit_edge
  %24 = ptrtoint ptr %port_status.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port_status.i, align 4
  %26 = and i32 %25, 482
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %land.lhs.true33.i, label %if.end26.i.set_link_state_by_speed.exit_crit_edge

if.end26.i.set_link_state_by_speed.exit_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_link_state_by_speed.exit

land.lhs.true33.i:                                ; preds = %if.end26.i
  %rh_state.i = getelementptr inbounds %struct.dummy_hcd, ptr %dum_hcd, i32 0, i32 1
  %28 = ptrtoint ptr %rh_state.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rh_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp34.not.i = icmp eq i32 %29, 1
  br i1 %cmp34.not.i, label %land.lhs.true33.i.set_link_state_by_speed.exit_crit_edge, label %if.then35.i

land.lhs.true33.i.set_link_state_by_speed.exit_crit_edge: ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_link_state_by_speed.exit

if.then35.i:                                      ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set.i = or i8 %bf.load, -128
  %30 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %bf.set.i, ptr %active, align 1
  br label %set_link_state_by_speed.exit

if.else41.i:                                      ; preds = %if.end14
  %and43.i = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %cmp44.i = icmp eq i32 %and43.i, 0
  br i1 %cmp44.i, label %if.then45.i, label %if.else47.i

if.then45.i:                                      ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %port_status.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %port_status.i, align 4
  br label %set_link_state_by_speed.exit

if.else47.i:                                      ; preds = %if.else41.i
  %32 = and i8 %bf.load2, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %32)
  %33 = icmp eq i8 %32, 32
  br i1 %33, label %if.else71.i, label %if.then61.i

if.then61.i:                                      ; preds = %if.else47.i
  %and63.i = and i32 %12, -1544
  %34 = ptrtoint ptr %port_status.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and63.i, ptr %port_status.i, align 4
  %old_status64.i = getelementptr inbounds %struct.dummy_hcd, ptr %dum_hcd, i32 0, i32 4
  %35 = ptrtoint ptr %old_status64.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %old_status64.i, align 4
  %and65.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %cmp66.not.i = icmp eq i32 %and65.i, 0
  br i1 %cmp66.not.i, label %if.then61.i.set_link_state_by_speed.exit_crit_edge, label %if.then67.i

if.then61.i.set_link_state_by_speed.exit_crit_edge: ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_link_state_by_speed.exit

if.then67.i:                                      ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #14
  %or69.i = or i32 %and63.i, 65536
  %37 = ptrtoint ptr %port_status.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or69.i, ptr %port_status.i, align 4
  br label %set_link_state_by_speed.exit

if.else71.i:                                      ; preds = %if.else47.i
  %or73.i = or i32 %12, 1
  %38 = ptrtoint ptr %port_status.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or73.i, ptr %port_status.i, align 4
  %old_status74.i = getelementptr inbounds %struct.dummy_hcd, ptr %dum_hcd, i32 0, i32 4
  %39 = ptrtoint ptr %old_status74.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %old_status74.i, align 4
  %and75.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i)
  %cmp76.i = icmp eq i32 %and75.i, 0
  br i1 %cmp76.i, label %if.then77.i, label %if.else71.i.if.end80.i_crit_edge

if.else71.i.if.end80.i_crit_edge:                 ; preds = %if.else71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80.i

if.then77.i:                                      ; preds = %if.else71.i
  call void @__sanitizer_cov_trace_pc() #14
  %or79.i = or i32 %12, 65537
  %41 = ptrtoint ptr %port_status.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or79.i, ptr %port_status.i, align 4
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then77.i, %if.else71.i.if.end80.i_crit_edge
  %42 = ptrtoint ptr %port_status.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port_status.i, align 4
  %and82.i = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82.i)
  %cmp83.i = icmp eq i32 %and82.i, 0
  br i1 %cmp83.i, label %if.then84.i, label %if.else87.i

if.then84.i:                                      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #14
  %and86.i = and i32 %43, -5
  %44 = ptrtoint ptr %port_status.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and86.i, ptr %port_status.i, align 4
  br label %set_link_state_by_speed.exit

if.else87.i:                                      ; preds = %if.end80.i
  %and89.i = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i)
  %cmp90.i = icmp eq i32 %and89.i, 0
  br i1 %cmp90.i, label %land.lhs.true91.i, label %if.else87.i.set_link_state_by_speed.exit_crit_edge

if.else87.i.set_link_state_by_speed.exit_crit_edge: ; preds = %if.else87.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_link_state_by_speed.exit

land.lhs.true91.i:                                ; preds = %if.else87.i
  %rh_state92.i = getelementptr inbounds %struct.dummy_hcd, ptr %dum_hcd, i32 0, i32 1
  %45 = ptrtoint ptr %rh_state92.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rh_state92.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp93.not.i = icmp eq i32 %46, 1
  br i1 %cmp93.not.i, label %land.lhs.true91.i.set_link_state_by_speed.exit_crit_edge, label %if.then94.i

land.lhs.true91.i.set_link_state_by_speed.exit_crit_edge: ; preds = %land.lhs.true91.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_link_state_by_speed.exit

if.then94.i:                                      ; preds = %land.lhs.true91.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set98.i = or i8 %bf.load, -128
  %47 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %bf.set98.i, ptr %active, align 1
  br label %set_link_state_by_speed.exit

set_link_state_by_speed.exit:                     ; preds = %if.then94.i, %land.lhs.true91.i.set_link_state_by_speed.exit_crit_edge, %if.else87.i.set_link_state_by_speed.exit_crit_edge, %if.then84.i, %if.then67.i, %if.then61.i.set_link_state_by_speed.exit_crit_edge, %if.then45.i, %if.then35.i, %land.lhs.true33.i.set_link_state_by_speed.exit_crit_edge, %if.end26.i.set_link_state_by_speed.exit_crit_edge, %if.then15.i, %if.then10.i.set_link_state_by_speed.exit_crit_edge, %if.then3.i
  %48 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %49)
  %cmp17 = icmp eq i32 %49, 64
  %cond = select i1 %cmp17, i32 512, i32 256
  %50 = ptrtoint ptr %port_status.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port_status.i, align 4
  %and = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp18 = icmp eq i32 %and, 0
  br i1 %cmp18, label %set_link_state_by_speed.exit.if.then25_crit_edge, label %lor.lhs.false19

set_link_state_by_speed.exit.if.then25_crit_edge: ; preds = %set_link_state_by_speed.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25

lor.lhs.false19:                                  ; preds = %set_link_state_by_speed.exit
  %52 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load21 = load i8, ptr %active, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load21)
  %tobool24.not = icmp sgt i8 %bf.load21, -1
  br i1 %tobool24.not, label %lor.lhs.false19.if.end29_crit_edge, label %lor.lhs.false19.if.then25_crit_edge

lor.lhs.false19.if.then25_crit_edge:              ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25

lor.lhs.false19.if.end29_crit_edge:               ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then25:                                        ; preds = %lor.lhs.false19.if.then25_crit_edge, %set_link_state_by_speed.exit.if.then25_crit_edge
  %53 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load26 = load i8, ptr %active, align 1
  %bf.clear27 = and i8 %bf.load26, -33
  store i8 %bf.clear27, ptr %active, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %lor.lhs.false19.if.end29_crit_edge
  %and31 = and i32 %cond, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %cmp32 = icmp ne i32 %and31, 0
  %and35 = and i32 %51, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %cmp36.not = icmp eq i32 %and35, 0
  %or.cond = and i1 %cmp36.not, %cmp32
  br i1 %or.cond, label %if.else65, label %if.then37

if.then37:                                        ; preds = %if.end29
  %54 = ptrtoint ptr %pullup to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load46 = load i8, ptr %pullup, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load46)
  %tobool49.not = icmp sgt i8 %bf.load46, -1
  br i1 %tobool49.not, label %if.then37.if.end118_crit_edge, label %land.lhs.true50

if.then37.if.end118_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

land.lhs.true50:                                  ; preds = %if.then37
  %old_status = getelementptr inbounds %struct.dummy_hcd, ptr %dum_hcd, i32 0, i32 4
  %55 = ptrtoint ptr %old_status to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %old_status, align 4
  %neg42 = and i32 %56, 16
  %and43 = xor i32 %neg42, 16
  %and45 = and i32 %and43, %51
  %neg = xor i32 %51, -1
  %and38 = and i32 %cond, %neg
  %and40 = and i32 %and38, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool51.not = icmp eq i32 %and40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool53.not = icmp eq i32 %and45, 0
  %or.cond178 = select i1 %tobool51.not, i1 %tobool53.not, i1 false
  br i1 %or.cond178, label %land.lhs.true50.if.end118_crit_edge, label %if.then54

land.lhs.true50.if.end118_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

if.then54:                                        ; preds = %land.lhs.true50
  %address.i = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 2
  %57 = ptrtoint ptr %address.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %address.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %nuke.exit.i.for.body.i_crit_edge, %if.then54
  %i.05.i = phi i32 [ 0, %if.then54 ], [ %inc.i, %nuke.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dummy, ptr %1, i32 0, i32 1, i32 %i.05.i
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not12.i.i = icmp eq ptr %59, %arrayidx.i
  br i1 %cmp.i.not12.i.i, label %for.body.i.nuke.exit.i_crit_edge, label %while.body.lr.ph.i.i

for.body.i.nuke.exit.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nuke.exit.i

while.body.lr.ph.i.i:                             ; preds = %for.body.i
  %ep4.i.i = getelementptr %struct.dummy, ptr %1, i32 0, i32 1, i32 %i.05.i, i32 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %list_del_init.exit.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %60 = phi ptr [ %59, %while.body.lr.ph.i.i ], [ %71, %list_del_init.exit.i.i.while.body.i.i_crit_edge ]
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %60) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %while.body.i.i.list_del_init.exit.i.i_crit_edge

while.body.i.i.list_del_init.exit.i.i_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i.i.i.i, align 4
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %60, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev1.i.i.i.i.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %64, ptr %62, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %while.body.i.i.list_del_init.exit.i.i_crit_edge
  %67 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %60, ptr %60, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %60, ptr %prev.i3.i.i.i, align 4
  %req3.i.i = getelementptr inbounds %struct.dummy_request, ptr %60, i32 0, i32 1
  %status.i.i = getelementptr inbounds %struct.dummy_request, ptr %60, i32 0, i32 1, i32 11
  %69 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -108, ptr %status.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %1) #12
  tail call void @usb_gadget_giveback_request(ptr noundef %ep4.i.i, ptr noundef %req3.i.i) #12
  tail call void @_raw_spin_lock(ptr noundef %1) #12
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %71, %arrayidx.i
  br i1 %cmp.i.not.i.i, label %list_del_init.exit.i.i.nuke.exit.i_crit_edge, label %list_del_init.exit.i.i.while.body.i.i_crit_edge

list_del_init.exit.i.i.while.body.i.i_crit_edge:  ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

list_del_init.exit.i.i.nuke.exit.i_crit_edge:     ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nuke.exit.i

nuke.exit.i:                                      ; preds = %list_del_init.exit.i.i.nuke.exit.i_crit_edge, %for.body.i.nuke.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 25
  br i1 %exitcond.not.i, label %stop_activity.exit, label %nuke.exit.i.for.body.i_crit_edge

nuke.exit.i.for.body.i_crit_edge:                 ; preds = %nuke.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

stop_activity.exit:                               ; preds = %nuke.exit.i
  %callback_usage = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 3
  %72 = ptrtoint ptr %callback_usage to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %callback_usage, align 4
  %inc = add i32 %73, 1
  store i32 %inc, ptr %callback_usage, align 4
  tail call void @_raw_spin_unlock(ptr noundef %1) #12
  br i1 %tobool53.not, label %if.else, label %if.then56

if.then56:                                        ; preds = %stop_activity.exit
  call void @__sanitizer_cov_trace_pc() #14
  %gadget57 = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 4
  %driver = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 5
  %74 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %driver, align 8
  tail call void @usb_gadget_udc_reset(ptr noundef %gadget57, ptr noundef %75) #12
  br label %if.end118.sink.split

if.else:                                          ; preds = %stop_activity.exit
  call void @__sanitizer_cov_trace_pc() #14
  %driver58 = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 5
  %76 = ptrtoint ptr %driver58 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %driver58, align 8
  %disconnect59 = getelementptr inbounds %struct.usb_gadget_driver, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %disconnect59 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %disconnect59, align 4
  %gadget60 = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 4
  tail call void %79(ptr noundef %gadget60) #12
  br label %if.end118.sink.split

if.else65:                                        ; preds = %if.end29
  %80 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load67 = load i8, ptr %active, align 1
  %bf.lshr68 = lshr i8 %bf.load67, 7
  %bf.lshr71 = lshr i8 %bf.load67, 6
  %bf.clear72 = and i8 %bf.lshr71, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.lshr68, i8 %bf.clear72)
  %cmp74.not = icmp eq i8 %bf.lshr68, %bf.clear72
  br i1 %cmp74.not, label %if.else65.if.end118_crit_edge, label %land.lhs.true75

if.else65.if.end118_crit_edge:                    ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

land.lhs.true75:                                  ; preds = %if.else65
  %81 = ptrtoint ptr %pullup to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load77 = load i8, ptr %pullup, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load77)
  %tobool80.not = icmp sgt i8 %bf.load77, -1
  br i1 %tobool80.not, label %land.lhs.true75.if.end118_crit_edge, label %if.then81

land.lhs.true75.if.end118_crit_edge:              ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

if.then81:                                        ; preds = %land.lhs.true75
  %callback_usage82 = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 3
  %82 = ptrtoint ptr %callback_usage82 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %callback_usage82, align 4
  %inc83 = add i32 %83, 1
  store i32 %inc83, ptr %callback_usage82, align 4
  tail call void @_raw_spin_unlock(ptr noundef %1) #12
  %84 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %84)
  %bf.load86 = load i8, ptr %active, align 1
  %85 = and i8 %bf.load86, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool90.not = icmp eq i8 %85, 0
  %driver106 = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 5
  %86 = ptrtoint ptr %driver106 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %driver106, align 8
  br i1 %tobool90.not, label %land.lhs.true105, label %land.lhs.true91

land.lhs.true91:                                  ; preds = %if.then81
  %suspend = getelementptr inbounds %struct.usb_gadget_driver, ptr %87, i32 0, i32 6
  %88 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %suspend, align 4
  %tobool93.not = icmp eq ptr %89, null
  br i1 %tobool93.not, label %land.lhs.true91.if.end118.sink.split_crit_edge, label %land.lhs.true91.if.end113.sink.split_crit_edge

land.lhs.true91.if.end113.sink.split_crit_edge:   ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113.sink.split

land.lhs.true91.if.end118.sink.split_crit_edge:   ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118.sink.split

land.lhs.true105:                                 ; preds = %if.then81
  %resume = getelementptr inbounds %struct.usb_gadget_driver, ptr %87, i32 0, i32 7
  %90 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %resume, align 4
  %tobool107.not = icmp eq ptr %91, null
  br i1 %tobool107.not, label %land.lhs.true105.if.end118.sink.split_crit_edge, label %land.lhs.true105.if.end113.sink.split_crit_edge

land.lhs.true105.if.end113.sink.split_crit_edge:  ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113.sink.split

land.lhs.true105.if.end118.sink.split_crit_edge:  ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118.sink.split

if.end113.sink.split:                             ; preds = %land.lhs.true105.if.end113.sink.split_crit_edge, %land.lhs.true91.if.end113.sink.split_crit_edge
  %.sink = phi ptr [ %89, %land.lhs.true91.if.end113.sink.split_crit_edge ], [ %91, %land.lhs.true105.if.end113.sink.split_crit_edge ]
  %gadget111 = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 4
  tail call void %.sink(ptr noundef %gadget111) #12
  br label %if.end118.sink.split

if.end118.sink.split:                             ; preds = %if.end113.sink.split, %land.lhs.true105.if.end118.sink.split_crit_edge, %land.lhs.true91.if.end118.sink.split_crit_edge, %if.else, %if.then56
  %callback_usage.sink182 = phi ptr [ %callback_usage, %if.else ], [ %callback_usage, %if.then56 ], [ %callback_usage82, %if.end113.sink.split ], [ %callback_usage82, %land.lhs.true91.if.end118.sink.split_crit_edge ], [ %callback_usage82, %land.lhs.true105.if.end118.sink.split_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %1) #12
  %92 = ptrtoint ptr %callback_usage.sink182 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %callback_usage.sink182, align 4
  %dec = add i32 %93, -1
  store i32 %dec, ptr %callback_usage.sink182, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.end118.sink.split, %land.lhs.true75.if.end118_crit_edge, %if.else65.if.end118_crit_edge, %land.lhs.true50.if.end118_crit_edge, %if.then37.if.end118_crit_edge
  %94 = ptrtoint ptr %port_status.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %port_status.i, align 4
  %old_status120 = getelementptr inbounds %struct.dummy_hcd, ptr %dum_hcd, i32 0, i32 4
  %96 = ptrtoint ptr %old_status120 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %old_status120, align 4
  %97 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %97)
  %bf.load122 = load i8, ptr %active, align 1
  %98 = lshr i8 %bf.load122, 1
  %bf.shl = and i8 %98, 64
  %bf.clear127 = and i8 %bf.load122, -65
  %bf.set128 = or i8 %bf.shl, %bf.clear127
  store i8 %bf.set128, ptr %active, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end118, %land.lhs.true9.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_poll_rh_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_udc_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_enable(ptr noundef %_ep, ptr noundef %desc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  %tobool2.not = icmp eq ptr %desc, null
  %or.cond = or i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false3:                                   ; preds = %entry
  %desc4 = getelementptr i8, ptr %_ep, i32 -4
  %0 = ptrtoint ptr %desc4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc4, align 4
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %name = getelementptr %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %cmp = icmp eq ptr %3, @ep0name
  br i1 %cmp, label %lor.lhs.false6.cleanup_crit_edge, label %lor.lhs.false7

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false6
  %bDescriptorType = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 1
  %4 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bDescriptorType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %5)
  %cmp8.not = icmp eq i8 %5, 5
  br i1 %cmp8.not, label %if.end, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false7
  %gadget.i = getelementptr i8, ptr %_ep, i32 -8
  %6 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gadget.i, align 4
  %driver = getelementptr i8, ptr %7, i32 1048
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver, align 8
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %speed.i = getelementptr %struct.usb_gadget, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %11)
  %cmp.i = icmp eq i32 %11, 5
  %retval.0.in.v.i = select i1 %cmp.i, i32 1188, i32 1184
  %retval.0.in.i = getelementptr i8, ptr %7, i32 %retval.0.in.v.i
  %12 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %retval.0.i206 = load ptr, ptr %retval.0.in.i, align 4
  %port_status = getelementptr inbounds %struct.dummy_hcd, ptr %retval.0.i206, i32 0, i32 3
  %13 = ptrtoint ptr %port_status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port_status, align 4
  %and = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %15 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %wMaxPacketSize.i, align 1
  %17 = and i16 %16, -249
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #12
  %and.i = zext i16 %18 to i32
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %19 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bmAttributes.i, align 1
  %21 = and i8 %20, 3
  %and.i207 = zext i8 %21 to i32
  %22 = zext i32 %and.i207 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %and.i207, label %if.end17.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb56
    i32 1, label %sw.bb81
  ]

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end17
  %23 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name, align 4
  %call22 = tail call ptr @strstr(ptr noundef %24, ptr noundef nonnull @.str.31)
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %lor.lhs.false24, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false24:                                  ; preds = %sw.bb
  %call27 = tail call ptr @strstr(ptr noundef %24, ptr noundef nonnull @.str.32)
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end30, label %lor.lhs.false24.cleanup_crit_edge

lor.lhs.false24.cleanup_crit_edge:                ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end30:                                         ; preds = %lor.lhs.false24
  %25 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %speed.i, align 8
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %26, label %if.end30.cleanup_crit_edge [
    i32 5, label %sw.bb32
    i32 3, label %sw.bb37
    i32 2, label %sw.bb42
  ]

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb32:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %17)
  %cmp33 = icmp eq i16 %17, 4
  br i1 %cmp33, label %sw.bb32.sw.epilog108_crit_edge, label %sw.bb32.cleanup_crit_edge

sw.bb32.cleanup_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb32.sw.epilog108_crit_edge:                   ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog108

sw.bb37:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %17)
  %cmp38 = icmp eq i16 %17, 2
  br i1 %cmp38, label %sw.bb37.sw.epilog108_crit_edge, label %sw.bb37.cleanup_crit_edge

sw.bb37.cleanup_crit_edge:                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb37.sw.epilog108_crit_edge:                   ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog108

sw.bb42:                                          ; preds = %if.end30
  %28 = add nsw i32 %and.i, -8
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 29)
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %29, label %sw.bb42.cleanup_crit_edge [
    i32 0, label %sw.bb42.sw.epilog108_crit_edge
    i32 1, label %sw.bb42.sw.epilog108_crit_edge219
    i32 3, label %sw.bb42.sw.epilog108_crit_edge220
    i32 7, label %sw.bb42.sw.epilog108_crit_edge221
  ]

sw.bb42.sw.epilog108_crit_edge221:                ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog108

sw.bb42.sw.epilog108_crit_edge220:                ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog108

sw.bb42.sw.epilog108_crit_edge219:                ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog108

sw.bb42.sw.epilog108_crit_edge:                   ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog108

sw.bb42.cleanup_crit_edge:                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb56:                                          ; preds = %if.end17
  %31 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name, align 4
  %call59 = tail call ptr @strstr(ptr noundef %32, ptr noundef nonnull @.str.31)
  %tobool60.not = icmp eq ptr %call59, null
  br i1 %tobool60.not, label %if.end62, label %sw.bb56.cleanup_crit_edge

sw.bb56.cleanup_crit_edge:                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end62:                                         ; preds = %sw.bb56
  %33 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %speed.i, align 8
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %34, label %sw.default75 [
    i32 5, label %if.end62.sw.bb65_crit_edge
    i32 3, label %if.end62.sw.bb65_crit_edge222
    i32 2, label %sw.bb70
  ]

if.end62.sw.bb65_crit_edge222:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb65

if.end62.sw.bb65_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb65

sw.bb65:                                          ; preds = %if.end62.sw.bb65_crit_edge, %if.end62.sw.bb65_crit_edge222
  call void @__sanitizer_cov_trace_const_cmp2(i16 1025, i16 %18)
  %cmp66 = icmp ult i16 %18, 1025
  br i1 %cmp66, label %sw.bb65.sw.epilog108_crit_edge, label %sw.bb65.cleanup_crit_edge

sw.bb65.cleanup_crit_edge:                        ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb65.sw.epilog108_crit_edge:                   ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog108

sw.bb70:                                          ; preds = %if.end62
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %18)
  %cmp71.old = icmp ult i16 %18, 65
  br i1 %cmp71.old, label %sw.bb70.sw.epilog108_crit_edge, label %sw.bb70.cleanup_crit_edge

sw.bb70.cleanup_crit_edge:                        ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb70.sw.epilog108_crit_edge:                   ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog108

sw.default75:                                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %18)
  %cmp76.old.old = icmp ult i16 %18, 9
  br i1 %cmp76.old.old, label %sw.default75.sw.epilog108_crit_edge, label %sw.default75.cleanup_crit_edge

sw.default75.cleanup_crit_edge:                   ; preds = %sw.default75
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.default75.sw.epilog108_crit_edge:              ; preds = %sw.default75
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog108

sw.bb81:                                          ; preds = %if.end17
  %36 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name, align 4
  %call84 = tail call ptr @strstr(ptr noundef %37, ptr noundef nonnull @.str.33)
  %tobool85.not = icmp eq ptr %call84, null
  br i1 %tobool85.not, label %lor.lhs.false86, label %sw.bb81.cleanup_crit_edge

sw.bb81.cleanup_crit_edge:                        ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false86:                                  ; preds = %sw.bb81
  %call89 = tail call ptr @strstr(ptr noundef %37, ptr noundef nonnull @.str.32)
  %tobool90.not = icmp eq ptr %call89, null
  br i1 %tobool90.not, label %if.end92, label %lor.lhs.false86.cleanup_crit_edge

lor.lhs.false86.cleanup_crit_edge:                ; preds = %lor.lhs.false86
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end92:                                         ; preds = %lor.lhs.false86
  %38 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %speed.i, align 8
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %39, label %if.end92.cleanup_crit_edge [
    i32 5, label %if.end92.sw.bb95_crit_edge
    i32 3, label %if.end92.sw.bb95_crit_edge223
    i32 2, label %sw.bb100
  ]

if.end92.sw.bb95_crit_edge223:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb95

if.end92.sw.bb95_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb95

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb95:                                          ; preds = %if.end92.sw.bb95_crit_edge, %if.end92.sw.bb95_crit_edge223
  call void @__sanitizer_cov_trace_const_cmp2(i16 1025, i16 %18)
  %cmp96 = icmp ult i16 %18, 1025
  br i1 %cmp96, label %sw.bb95.sw.epilog108_crit_edge, label %sw.bb95.cleanup_crit_edge

sw.bb95.cleanup_crit_edge:                        ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb95.sw.epilog108_crit_edge:                   ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog108

sw.bb100:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %18)
  %cmp101.old = icmp ult i16 %18, 1024
  br i1 %cmp101.old, label %sw.bb100.sw.epilog108_crit_edge, label %sw.bb100.cleanup_crit_edge

sw.bb100.cleanup_crit_edge:                       ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb100.sw.epilog108_crit_edge:                  ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog108

sw.epilog108:                                     ; preds = %sw.bb100.sw.epilog108_crit_edge, %sw.bb95.sw.epilog108_crit_edge, %sw.default75.sw.epilog108_crit_edge, %sw.bb70.sw.epilog108_crit_edge, %sw.bb65.sw.epilog108_crit_edge, %sw.bb42.sw.epilog108_crit_edge, %sw.bb42.sw.epilog108_crit_edge219, %sw.bb42.sw.epilog108_crit_edge220, %sw.bb42.sw.epilog108_crit_edge221, %sw.bb37.sw.epilog108_crit_edge, %sw.bb32.sw.epilog108_crit_edge
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 7
  %41 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %41, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.value = zext i16 %18 to i56
  %bf.shl = shl nuw nsw i56 %bf.value, 40
  %bf.clear = and i56 %bf.load, 1099511627775
  %bf.set = or i56 %bf.clear, %bf.shl
  store i56 %bf.set, ptr %maxpacket, align 2
  %comp_desc = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 10
  %42 = ptrtoint ptr %comp_desc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %comp_desc, align 4
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %sw.epilog108.if.end121_crit_edge, label %if.end.i

sw.epilog108.if.end121_crit_edge:                 ; preds = %sw.epilog108
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end121

if.end.i:                                         ; preds = %sw.epilog108
  %bmAttributes.i208 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %bmAttributes.i208 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bmAttributes.i208, align 1
  %46 = and i8 %45, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool1.not.i = icmp eq i8 %46, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end121_crit_edge, label %usb_ss_max_streams.exit

if.end.i.if.end121_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end121

usb_ss_max_streams.exit:                          ; preds = %if.end.i
  %47 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bmAttributes.i, align 1
  %49 = and i8 %48, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %49)
  %cmp.i212.not = icmp eq i8 %49, 2
  br i1 %cmp.i212.not, label %if.end117, label %do.end

do.end:                                           ; preds = %usb_ss_max_streams.exit
  call void @__sanitizer_cov_trace_pc() #14
  %parent.i = getelementptr i8, ptr %7, i32 224
  %50 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.34, ptr noundef %3) #15
  br label %cleanup

if.end117:                                        ; preds = %usb_ss_max_streams.exit
  call void @__sanitizer_cov_trace_pc() #14
  %stream_en = getelementptr i8, ptr %_ep, i32 44
  %52 = ptrtoint ptr %stream_en to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load118 = load i8, ptr %stream_en, align 4
  %bf.set120 = or i8 %bf.load118, 8
  store i8 %bf.set120, ptr %stream_en, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.end117, %if.end.i.if.end121_crit_edge, %sw.epilog108.if.end121_crit_edge
  %53 = ptrtoint ptr %desc4 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %desc, ptr %desc4, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dummy_enable.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dummy_enable, %do.end147)) #12
          to label %if.then129 [label %do.end147], !srcloc !302

if.then129:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #14
  %parent.i213 = getelementptr i8, ptr %7, i32 224
  %54 = ptrtoint ptr %parent.i213 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %parent.i213, align 8
  %56 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 2
  %58 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %bEndpointAddress, align 1
  %conv132 = zext i8 %59 to i32
  %and133 = and i32 %conv132, 15
  %and136 = and i32 %conv132, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  %cond = select i1 %tobool137.not, ptr @.str.39, ptr @.str.38
  %60 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bmAttributes.i, align 1
  %62 = and i8 %61, 3
  %and.i215 = zext i8 %62 to i32
  %call139 = tail call ptr @usb_ep_type_string(i32 noundef %and.i215) #12
  %stream_en140 = getelementptr i8, ptr %_ep, i32 44
  %63 = ptrtoint ptr %stream_en140 to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load141 = load i8, ptr %stream_en140, align 4
  %64 = and i8 %bf.load141, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool143.not = icmp eq i8 %64, 0
  %cond144 = select i1 %tobool143.not, ptr @.str.41, ptr @.str.40
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dummy_enable.__UNIQUE_ID_ddebug247, ptr noundef %55, ptr noundef nonnull @.str.37, ptr noundef %57, i32 noundef %and133, ptr noundef nonnull %cond, ptr noundef %call139, i32 noundef %and.i, ptr noundef nonnull %cond144) #12
  br label %do.end147

do.end147:                                        ; preds = %if.then129, %if.end121
  %wedged = getelementptr i8, ptr %_ep, i32 44
  %65 = ptrtoint ptr %wedged to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load148 = load i8, ptr %wedged, align 4
  %bf.clear152 = and i8 %bf.load148, 63
  store i8 %bf.clear152, ptr %wedged, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end147, %do.end, %sw.bb100.cleanup_crit_edge, %sw.bb95.cleanup_crit_edge, %if.end92.cleanup_crit_edge, %lor.lhs.false86.cleanup_crit_edge, %sw.bb81.cleanup_crit_edge, %sw.default75.cleanup_crit_edge, %sw.bb70.cleanup_crit_edge, %sw.bb65.cleanup_crit_edge, %sw.bb56.cleanup_crit_edge, %sw.bb42.cleanup_crit_edge, %sw.bb37.cleanup_crit_edge, %sw.bb32.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %lor.lhs.false24.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %lor.lhs.false7.cleanup_crit_edge ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -108, %if.end.cleanup_crit_edge ], [ -108, %if.end13.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ -22, %sw.bb81.cleanup_crit_edge ], [ -22, %lor.lhs.false86.cleanup_crit_edge ], [ -22, %if.end92.cleanup_crit_edge ], [ 0, %do.end147 ], [ -22, %sw.bb100.cleanup_crit_edge ], [ -22, %sw.bb56.cleanup_crit_edge ], [ -22, %sw.default75.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %lor.lhs.false24.cleanup_crit_edge ], [ -22, %if.end30.cleanup_crit_edge ], [ -22, %sw.bb37.cleanup_crit_edge ], [ -22, %sw.bb32.cleanup_crit_edge ], [ -22, %sw.bb42.cleanup_crit_edge ], [ -22, %sw.bb65.cleanup_crit_edge ], [ -22, %sw.bb70.cleanup_crit_edge ], [ -22, %sw.bb95.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_disable(ptr noundef %_ep) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %_ep, i32 -20
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %desc = getelementptr i8, ptr %_ep, i32 -4
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %name = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %cmp = icmp eq ptr %3, @ep0name
  br i1 %cmp, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %gadget.i = getelementptr i8, ptr %_ep, i32 -8
  %4 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gadget.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %5, i32 -1752
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i37) #12
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %desc, align 4
  %stream_en = getelementptr i8, ptr %_ep, i32 44
  %7 = ptrtoint ptr %stream_en to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %stream_en, align 4
  %bf.clear = and i8 %bf.load, -9
  store i8 %bf.clear, ptr %stream_en, align 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %add.ptr.i, align 4
  %cmp.i.not12.i = icmp eq ptr %9, %add.ptr.i
  br i1 %cmp.i.not12.i, label %if.end.nuke.exit_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.nuke.exit_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %nuke.exit

while.body.i:                                     ; preds = %list_del_init.exit.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %10 = phi ptr [ %21, %list_del_init.exit.i.while.body.i_crit_edge ], [ %9, %if.end.while.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del_init.exit.i_crit_edge

while.body.i.list_del_init.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %while.body.i.list_del_init.exit.i_crit_edge
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %10, ptr %10, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %10, ptr %prev.i3.i.i, align 4
  %req3.i = getelementptr inbounds %struct.dummy_request, ptr %10, i32 0, i32 1
  %status.i = getelementptr inbounds %struct.dummy_request, ptr %10, i32 0, i32 1, i32 11
  %19 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -108, ptr %status.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr.i37) #12
  tail call void @usb_gadget_giveback_request(ptr noundef nonnull %_ep, ptr noundef %req3.i) #12
  tail call void @_raw_spin_lock(ptr noundef %add.ptr.i37) #12
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %add.ptr.i, align 4
  %cmp.i.not.i = icmp eq ptr %21, %add.ptr.i
  br i1 %cmp.i.not.i, label %list_del_init.exit.i.nuke.exit_crit_edge, label %list_del_init.exit.i.while.body.i_crit_edge

list_del_init.exit.i.while.body.i_crit_edge:      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

list_del_init.exit.i.nuke.exit_crit_edge:         ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nuke.exit

nuke.exit:                                        ; preds = %list_del_init.exit.i.nuke.exit_crit_edge, %if.end.nuke.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i37, i32 noundef %call7) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dummy_disable.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dummy_disable, %cleanup)) #12
          to label %if.then19 [label %cleanup], !srcloc !302

if.then19:                                        ; preds = %nuke.exit
  call void @__sanitizer_cov_trace_pc() #14
  %parent.i = getelementptr i8, ptr %5, i32 224
  %22 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent.i, align 8
  %24 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dummy_disable.__UNIQUE_ID_ddebug248, ptr noundef %23, ptr noundef nonnull @.str.43, ptr noundef %25) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %nuke.exit, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then19 ], [ 0, %nuke.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dummy_alloc_request(ptr noundef readnone %_ep, i32 noundef %mem_flags) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %or.i = or i32 %mem_flags, 256
  %and.i.i.i = and i32 %mem_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %if.end.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !303

if.end.kzalloc.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %if.end
  %and2.i.i.i = and i32 %mem_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and6.i.i.i = and i32 %mem_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %if.end.kzalloc.exit_crit_edge
  %retval.0.i20.i.i = phi i32 [ 0, %if.end.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i20.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 64) #16
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end3

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %req4 = getelementptr inbounds %struct.dummy_request, ptr %call7.i.i, i32 0, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %kzalloc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %req4, %if.end3 ], [ null, %entry.cleanup_crit_edge ], [ null, %kzalloc.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dummy_free_request(ptr noundef readnone %_ep, ptr noundef %_req) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  %tobool1.not = icmp eq ptr %_req, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %do.end, label %if.end18

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 677, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end18:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %_req, i32 -8
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %add.ptr.i, align 4
  %cmp.i.not = icmp eq ptr %1, %add.ptr.i
  br i1 %cmp.i.not, label %if.end18.if.end45_crit_edge, label %do.end39, !prof !303

if.end18.if.end45_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

do.end39:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 682, i32 noundef 9, ptr noundef null) #12
  br label %if.end45

if.end45:                                         ; preds = %do.end39, %if.end18.if.end45_crit_edge
  tail call void @kfree(ptr noundef %add.ptr.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_queue(ptr noundef %_ep, ptr noundef %_req, i32 noundef %mem_flags) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %_req, i32 -8
  %tobool.not = icmp eq ptr %_req, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %add.ptr.i, align 4
  %cmp.i.not = icmp eq ptr %1, %add.ptr.i
  br i1 %cmp.i.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %complete = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 7
  %2 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %complete, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %add.ptr.i105 = getelementptr i8, ptr %_ep, i32 -20
  %tobool6.not = icmp eq ptr %_ep, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false7:                                   ; preds = %if.end
  %desc = getelementptr i8, ptr %_ep, i32 -4
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %land.lhs.true, label %lor.lhs.false7.if.end10_crit_edge

lor.lhs.false7.if.end10_crit_edge:                ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

land.lhs.true:                                    ; preds = %lor.lhs.false7
  %name = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %cmp.not = icmp eq ptr %7, @ep0name
  br i1 %cmp.not, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %lor.lhs.false7.if.end10_crit_edge
  %gadget.i = getelementptr i8, ptr %_ep, i32 -8
  %8 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gadget.i, align 4
  %add.ptr.i106 = getelementptr i8, ptr %9, i32 -1752
  %driver = getelementptr i8, ptr %9, i32 1048
  %10 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver, align 8
  %tobool13.not = icmp eq ptr %11, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %lor.lhs.false14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false14:                                  ; preds = %if.end10
  %speed.i = getelementptr inbounds %struct.usb_gadget, ptr %9, i32 0, i32 5
  %12 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %cmp.i107 = icmp eq i32 %13, 5
  %retval.0.in.v.i = select i1 %cmp.i107, i32 1188, i32 1184
  %retval.0.in.i = getelementptr i8, ptr %9, i32 %retval.0.in.v.i
  %14 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %retval.0.i = load ptr, ptr %retval.0.in.i, align 4
  %port_status = getelementptr inbounds %struct.dummy_hcd, ptr %retval.0.i, i32 0, i32 3
  %15 = ptrtoint ptr %port_status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port_status, align 4
  %and = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %lor.lhs.false14.cleanup_crit_edge, label %if.end17

lor.lhs.false14.cleanup_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false14
  %status = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 11
  %17 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -115, ptr %status, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 12
  %18 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %actual, align 4
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i106) #12
  %19 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %desc, align 4
  %tobool25.not = icmp eq ptr %20, null
  br i1 %tobool25.not, label %if.end17.if.else_crit_edge, label %land.lhs.true26

if.end17.if.else_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true26:                                  ; preds = %if.end17
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bEndpointAddress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %tobool30.not = icmp sgt i8 %22, -1
  br i1 %tobool30.not, label %land.lhs.true26.if.else_crit_edge, label %land.lhs.true31

land.lhs.true26.if.else_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true31:                                  ; preds = %land.lhs.true26
  %fifo_req = getelementptr i8, ptr %9, i32 1052
  %23 = ptrtoint ptr %fifo_req to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %fifo_req, align 4
  %cmp.i108.not = icmp eq ptr %24, %fifo_req
  br i1 %cmp.i108.not, label %land.lhs.true35, label %land.lhs.true31.if.else_crit_edge

land.lhs.true31.if.else_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true35:                                  ; preds = %land.lhs.true31
  %25 = ptrtoint ptr %add.ptr.i105 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %add.ptr.i105, align 4
  %cmp.i110.not = icmp eq ptr %26, %add.ptr.i105
  br i1 %cmp.i110.not, label %land.lhs.true39, label %land.lhs.true35.if.else_crit_edge

land.lhs.true35.if.else_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true39:                                  ; preds = %land.lhs.true35
  %length = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 1
  %27 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %28)
  %cmp40 = icmp ult i32 %28, 65
  br i1 %cmp40, label %if.then42, label %land.lhs.true39.if.else_crit_edge

land.lhs.true39.if.else_crit_edge:                ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then42:                                        ; preds = %land.lhs.true39
  %req44 = getelementptr i8, ptr %9, i32 1060
  %29 = call ptr @memcpy(ptr %req44, ptr %_req, i32 56)
  %fifo_buf = getelementptr i8, ptr %9, i32 1116
  %30 = ptrtoint ptr %req44 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %fifo_buf, ptr %req44, align 4
  %31 = ptrtoint ptr %_req to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %_req, align 4
  %33 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %length, align 4
  %35 = call ptr @memcpy(ptr %fifo_buf, ptr %32, i32 %34)
  %context = getelementptr i8, ptr %9, i32 1092
  %36 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.i106, ptr %context, align 4
  %complete52 = getelementptr i8, ptr %9, i32 1088
  %37 = ptrtoint ptr %complete52 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @fifo_complete, ptr %complete52, align 4
  %prev.i = getelementptr i8, ptr %_ep, i32 -16
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %fifo_req, ptr noundef %39, ptr noundef %add.ptr.i105) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then42.list_add_tail.exit_crit_edge

if.then42.list_add_tail.exit_crit_edge:           ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %fifo_req, ptr %prev.i, align 4
  %41 = ptrtoint ptr %fifo_req to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr.i105, ptr %fifo_req, align 4
  %prev3.i.i = getelementptr i8, ptr %9, i32 1056
  %42 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %fifo_req, ptr %39, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then42.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr.i106) #12
  %44 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %length, align 4
  %46 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %actual, align 4
  %47 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %status, align 4
  tail call void @usb_gadget_giveback_request(ptr noundef nonnull %_ep, ptr noundef nonnull %_req) #12
  tail call void @_raw_spin_lock(ptr noundef %add.ptr.i106) #12
  br label %if.end62

if.else:                                          ; preds = %land.lhs.true39.if.else_crit_edge, %land.lhs.true35.if.else_crit_edge, %land.lhs.true31.if.else_crit_edge, %land.lhs.true26.if.else_crit_edge, %if.end17.if.else_crit_edge
  %prev.i112 = getelementptr i8, ptr %_ep, i32 -16
  %48 = ptrtoint ptr %prev.i112 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i112, align 4
  %call.i.i113 = tail call zeroext i1 @__list_add_valid(ptr noundef %add.ptr.i, ptr noundef %49, ptr noundef %add.ptr.i105) #12
  br i1 %call.i.i113, label %if.end.i.i115, label %if.else.if.end62_crit_edge

if.else.if.end62_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.end.i.i115:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %prev.i112 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %add.ptr.i, ptr %prev.i112, align 4
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %add.ptr.i105, ptr %add.ptr.i, align 4
  %prev3.i.i114 = getelementptr i8, ptr %_req, i32 -4
  %52 = ptrtoint ptr %prev3.i.i114 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev3.i.i114, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %add.ptr.i, ptr %49, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.end.i.i115, %if.else.if.end62_crit_edge, %list_add_tail.exit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i106, i32 noundef %call21) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %lor.lhs.false14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end62 ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -108, %lor.lhs.false14.cleanup_crit_edge ], [ -108, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_dequeue(ptr noundef %_ep, ptr noundef %_req) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  %tobool2.not = icmp eq ptr %_req, null
  %or.cond = or i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %_ep, i32 -20
  %gadget.i = getelementptr i8, ptr %_ep, i32 -8
  %0 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gadget.i, align 4
  %add.ptr.i116 = getelementptr i8, ptr %1, i32 -1752
  %driver = getelementptr i8, ptr %1, i32 1048
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 8
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.body7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body7:                                         ; preds = %if.end
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !304
  %and.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not = icmp eq i32 %and.i, 0
  br i1 %tobool16.not, label %if.then17, label %do.body7.do.end20_crit_edge

do.body7.do.end20_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end20

if.then17:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %do.end20

do.end20:                                         ; preds = %if.then17, %do.body7.do.end20_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %add.ptr.i116) #12
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end20
  %req.0.in = phi ptr [ %add.ptr.i, %do.end20 ], [ %req.0, %for.body.for.cond_crit_edge ]
  %5 = ptrtoint ptr %req.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %req.0 = load ptr, ptr %req.0.in, align 4
  %cmp24.not = icmp eq ptr %req.0, %add.ptr.i
  br i1 %cmp24.not, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr.i116) #12
  br label %do.body55

for.body:                                         ; preds = %for.cond
  %req26 = getelementptr inbounds %struct.dummy_request, ptr %req.0, i32 0, i32 1
  %cmp27 = icmp eq ptr %req26, %_req
  br i1 %cmp27, label %if.then29, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.then29:                                        ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %req.0) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then29.do.body41_crit_edge

if.then29.do.body41_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body41

if.end.i.i:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %req.0, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %req.0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %req.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %do.body41

do.body41:                                        ; preds = %if.end.i.i, %if.then29.do.body41_crit_edge
  %12 = ptrtoint ptr %req.0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %req.0, ptr %req.0, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %req.0, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %req.0, ptr %prev.i3.i, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 11
  %14 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -104, ptr %status, align 4
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr.i116) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dummy_dequeue.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dummy_dequeue, %do.end53)) #12
          to label %if.then49 [label %do.end53], !srcloc !302

if.then49:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #14
  %parent.i = getelementptr i8, ptr %1, i32 224
  %15 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent.i, align 8
  %name = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 1
  %19 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length, align 4
  %21 = ptrtoint ptr %_req to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_req, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dummy_dequeue.__UNIQUE_ID_ddebug249, ptr noundef %16, ptr noundef nonnull @.str.45, ptr noundef %req.0, ptr noundef %18, i32 noundef %20, ptr noundef %22) #12
  br label %do.end53

do.end53:                                         ; preds = %if.then49, %do.body41
  tail call void @usb_gadget_giveback_request(ptr noundef nonnull %_ep, ptr noundef nonnull %_req) #12
  br label %do.body55

do.body55:                                        ; preds = %do.end53, %for.end.thread
  %retval1.0119 = phi i32 [ -22, %for.end.thread ], [ 0, %do.end53 ]
  br i1 %tobool16.not, label %if.then64, label %do.body55.do.body66_crit_edge

do.body55.do.body66_crit_edge:                    ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body66

if.then64:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body66

do.body66:                                        ; preds = %if.then64, %do.body55.do.body66_crit_edge
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !305
  %and.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool74.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool74.not, label %if.then83, label %do.body66.do.end86_crit_edge, !prof !306

do.body66.do.end86_crit_edge:                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end86

if.then83:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end86

do.end86:                                         ; preds = %if.then83, %do.body66.do.end86_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #12, !srcloc !307
  br label %cleanup

cleanup:                                          ; preds = %do.end86, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0119, %do.end86 ], [ -22, %entry.cleanup_crit_edge ], [ -108, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dummy_set_halt(ptr noundef %_ep, i32 noundef %value) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %_ep, null
  br i1 %tobool.not.i, label %entry.dummy_set_halt_and_wedge.exit_crit_edge, label %if.end.i

entry.dummy_set_halt_and_wedge.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dummy_set_halt_and_wedge.exit

if.end.i:                                         ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %_ep, i32 -20
  %gadget.i.i = getelementptr i8, ptr %_ep, i32 -8
  %0 = ptrtoint ptr %gadget.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gadget.i.i, align 4
  %driver.i = getelementptr i8, ptr %1, i32 1048
  %2 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver.i, align 8
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %if.end.i.dummy_set_halt_and_wedge.exit_crit_edge, label %if.end4.i

if.end.i.dummy_set_halt_and_wedge.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dummy_set_halt_and_wedge.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool5.not.i = icmp eq i32 %value, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %wedged7.i = getelementptr i8, ptr %_ep, i32 44
  %4 = ptrtoint ptr %wedged7.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %wedged7.i, align 4
  %bf.clear9.i = and i8 %bf.load.i, 63
  store i8 %bf.clear9.i, ptr %wedged7.i, align 4
  br label %dummy_set_halt_and_wedge.exit

if.else.i:                                        ; preds = %if.end4.i
  %desc.i = getelementptr i8, ptr %_ep, i32 -4
  %5 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc.i, align 4
  %tobool11.not.i = icmp eq ptr %6, null
  br i1 %tobool11.not.i, label %if.else.i.if.else18.i_crit_edge, label %land.lhs.true.i

if.else.i.if.else18.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else18.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %tobool13.not.i = icmp sgt i8 %8, -1
  br i1 %tobool13.not.i, label %land.lhs.true.i.if.else18.i_crit_edge, label %land.lhs.true14.i

land.lhs.true.i.if.else18.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else18.i

land.lhs.true14.i:                                ; preds = %land.lhs.true.i
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %add.ptr.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %10, %add.ptr.i.i
  br i1 %cmp.i.not.i, label %land.lhs.true14.i.if.else18.i_crit_edge, label %land.lhs.true14.i.dummy_set_halt_and_wedge.exit_crit_edge

land.lhs.true14.i.dummy_set_halt_and_wedge.exit_crit_edge: ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dummy_set_halt_and_wedge.exit

land.lhs.true14.i.if.else18.i_crit_edge:          ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else18.i

if.else18.i:                                      ; preds = %land.lhs.true14.i.if.else18.i_crit_edge, %land.lhs.true.i.if.else18.i_crit_edge, %if.else.i.if.else18.i_crit_edge
  %halted19.i = getelementptr i8, ptr %_ep, i32 44
  %11 = ptrtoint ptr %halted19.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load20.i = load i8, ptr %halted19.i, align 4
  %bf.set22.i = or i8 %bf.load20.i, -128
  store i8 %bf.set22.i, ptr %halted19.i, align 4
  br label %dummy_set_halt_and_wedge.exit

dummy_set_halt_and_wedge.exit:                    ; preds = %if.else18.i, %land.lhs.true14.i.dummy_set_halt_and_wedge.exit_crit_edge, %if.then6.i, %if.end.i.dummy_set_halt_and_wedge.exit_crit_edge, %entry.dummy_set_halt_and_wedge.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.dummy_set_halt_and_wedge.exit_crit_edge ], [ -108, %if.end.i.dummy_set_halt_and_wedge.exit_crit_edge ], [ -11, %land.lhs.true14.i.dummy_set_halt_and_wedge.exit_crit_edge ], [ 0, %if.else18.i ], [ 0, %if.then6.i ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dummy_set_wedge(ptr noundef %_ep) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %name = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %cmp = icmp eq ptr %1, @ep0name
  br i1 %cmp, label %lor.lhs.false.return_crit_edge, label %if.end.i

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i:                                         ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr i8, ptr %_ep, i32 -20
  %gadget.i.i = getelementptr i8, ptr %_ep, i32 -8
  %2 = ptrtoint ptr %gadget.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gadget.i.i, align 4
  %driver.i = getelementptr i8, ptr %3, i32 1048
  %4 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver.i, align 8
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %if.end.i.return_crit_edge, label %if.end4.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end4.i:                                        ; preds = %if.end.i
  %desc.i = getelementptr i8, ptr %_ep, i32 -4
  %6 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc.i, align 4
  %tobool11.not.i = icmp eq ptr %7, null
  br i1 %tobool11.not.i, label %if.end4.i.if.else18.i_crit_edge, label %land.lhs.true.i

if.end4.i.if.else18.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else18.i

land.lhs.true.i:                                  ; preds = %if.end4.i
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %tobool13.not.i = icmp sgt i8 %9, -1
  br i1 %tobool13.not.i, label %land.lhs.true.i.if.else18.i_crit_edge, label %land.lhs.true14.i

land.lhs.true.i.if.else18.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else18.i

land.lhs.true14.i:                                ; preds = %land.lhs.true.i
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %add.ptr.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %11, %add.ptr.i.i
  br i1 %cmp.i.not.i, label %land.lhs.true14.i.if.else18.i_crit_edge, label %land.lhs.true14.i.return_crit_edge

land.lhs.true14.i.return_crit_edge:               ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.lhs.true14.i.if.else18.i_crit_edge:          ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else18.i

if.else18.i:                                      ; preds = %land.lhs.true14.i.if.else18.i_crit_edge, %land.lhs.true.i.if.else18.i_crit_edge, %if.end4.i.if.else18.i_crit_edge
  %halted19.i = getelementptr i8, ptr %_ep, i32 44
  %12 = ptrtoint ptr %halted19.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load20.i = load i8, ptr %halted19.i, align 4
  %bf.set28.i = or i8 %bf.load20.i, -64
  store i8 %bf.set28.i, ptr %halted19.i, align 4
  br label %return

return:                                           ; preds = %if.else18.i, %land.lhs.true14.i.return_crit_edge, %if.end.i.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ -108, %if.end.i.return_crit_edge ], [ -11, %land.lhs.true14.i.return_crit_edge ], [ 0, %if.else18.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_type_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fifo_complete(ptr nocapture noundef %ep, ptr nocapture noundef %req) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @function_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr i8, ptr %dev, i32 960
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.47, ptr noundef nonnull %3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_hcd_probe(ptr noundef %pdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.50, ptr noundef nonnull @driver_desc) #15
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr @mod_data, align 4, !range !300
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = load i8, ptr getelementptr inbounds (%struct.dummy_hcd_module_parameters, ptr @mod_data, i32 0, i32 1), align 1, !range !300
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  %. = select i1 %tobool3.not, i32 16, i32 32
  br label %if.end6

if.end6:                                          ; preds = %if.else, %entry.if.end6_crit_edge
  %.sink = phi i32 [ 68, %entry.if.end6_crit_edge ], [ %., %if.else ]
  store i32 %.sink, ptr getelementptr inbounds (%struct.hc_driver, ptr @dummy_hcd, i32 0, i32 4), align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end6.dev_name.exit_crit_edge

if.end6.dev_name.exit_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end6.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %if.end6.dev_name.exit_crit_edge ]
  %call10 = tail call ptr @usb_create_hcd(ptr noundef nonnull @dummy_hcd, ptr noundef %dev, ptr noundef %retval.0.i) #12
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %dev_name.exit.cleanup_crit_edge, label %if.end13

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %dev_name.exit
  %has_tt = getelementptr inbounds %struct.usb_hcd, ptr %call10, i32 0, i32 14
  %10 = ptrtoint ptr %has_tt to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %has_tt, align 4
  %bf.set = or i16 %bf.load, 256
  store i16 %bf.set, ptr %has_tt, align 4
  %call14 = tail call i32 @usb_add_hcd(ptr noundef nonnull %call10, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.put_usb2_hcd_crit_edge

if.end13.put_usb2_hcd_crit_edge:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_usb2_hcd

if.end17:                                         ; preds = %if.end13
  %11 = load i8, ptr @mod_data, align 4, !range !300
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool18.not = icmp eq i8 %11, 0
  br i1 %tobool18.not, label %if.end17.cleanup_crit_edge, label %if.then19

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then19:                                        ; preds = %if.end17
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i53 = icmp eq ptr %13, null
  br i1 %tobool.not.i53, label %if.end.i54, label %if.then19.dev_name.exit56_crit_edge

if.then19.dev_name.exit56_crit_edge:              ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit56

if.end.i54:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  br label %dev_name.exit56

dev_name.exit56:                                  ; preds = %if.end.i54, %if.then19.dev_name.exit56_crit_edge
  %retval.0.i55 = phi ptr [ %15, %if.end.i54 ], [ %13, %if.then19.dev_name.exit56_crit_edge ]
  %call23 = tail call ptr @usb_create_shared_hcd(ptr noundef nonnull @dummy_hcd, ptr noundef %dev, ptr noundef %retval.0.i55, ptr noundef nonnull %call10) #12
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %dev_name.exit56.dealloc_usb2_hcd_crit_edge, label %if.end26

dev_name.exit56.dealloc_usb2_hcd_crit_edge:       ; preds = %dev_name.exit56
  call void @__sanitizer_cov_trace_pc() #14
  br label %dealloc_usb2_hcd

if.end26:                                         ; preds = %dev_name.exit56
  %call27 = tail call i32 @usb_add_hcd(ptr noundef nonnull %call23, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %put_usb3_hcd

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

put_usb3_hcd:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_put_hcd(ptr noundef nonnull %call23) #12
  br label %dealloc_usb2_hcd

dealloc_usb2_hcd:                                 ; preds = %put_usb3_hcd, %dev_name.exit56.dealloc_usb2_hcd_crit_edge
  %retval1.0 = phi i32 [ %call27, %put_usb3_hcd ], [ -12, %dev_name.exit56.dealloc_usb2_hcd_crit_edge ]
  tail call void @usb_remove_hcd(ptr noundef nonnull %call10) #12
  br label %put_usb2_hcd

put_usb2_hcd:                                     ; preds = %dealloc_usb2_hcd, %if.end13.put_usb2_hcd_crit_edge
  %retval1.1 = phi i32 [ %call14, %if.end13.put_usb2_hcd_crit_edge ], [ %retval1.0, %dealloc_usb2_hcd ]
  tail call void @usb_put_hcd(ptr noundef nonnull %call10) #12
  %ss_hcd32 = getelementptr inbounds %struct.dummy, ptr %3, i32 0, i32 11
  %16 = ptrtoint ptr %ss_hcd32 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %ss_hcd32, align 4
  %hs_hcd33 = getelementptr inbounds %struct.dummy, ptr %3, i32 0, i32 10
  %17 = ptrtoint ptr %hs_hcd33 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %hs_hcd33, align 8
  br label %cleanup

cleanup:                                          ; preds = %put_usb2_hcd, %if.end26.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.1, %put_usb2_hcd ], [ -12, %dev_name.exit.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_hcd_remove(ptr nocapture noundef readonly %pdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcd_priv.i, align 4
  %ss_hcd = getelementptr inbounds %struct.dummy, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %ss_hcd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ss_hcd, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %5, i32 -600
  tail call void @usb_remove_hcd(ptr noundef %add.ptr.i) #12
  %6 = ptrtoint ptr %ss_hcd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ss_hcd, align 4
  %add.ptr.i18 = getelementptr i8, ptr %7, i32 -600
  tail call void @usb_put_hcd(ptr noundef %add.ptr.i18) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hs_hcd = getelementptr inbounds %struct.dummy, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %hs_hcd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hs_hcd, align 8
  %add.ptr.i19 = getelementptr i8, ptr %9, i32 -600
  tail call void @usb_remove_hcd(ptr noundef %add.ptr.i19) #12
  %10 = ptrtoint ptr %hs_hcd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hs_hcd, align 8
  %add.ptr.i20 = getelementptr i8, ptr %11, i32 -600
  tail call void @usb_put_hcd(ptr noundef %add.ptr.i20) #12
  %12 = ptrtoint ptr %hs_hcd to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %hs_hcd, align 8
  %13 = ptrtoint ptr %ss_hcd to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %ss_hcd, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_hcd_suspend(ptr noundef %pdev, [1 x i32] %state.coerce) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dummy_hcd_suspend.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dummy_hcd_suspend, %do.end)) #12
          to label %if.then [label %do.end], !srcloc !302

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dummy_hcd_suspend.__UNIQUE_ID_ddebug284, ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.100) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rh_state = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %rh_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rh_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %do.end9, label %if.else

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev10 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev10, ptr noundef nonnull @.str.101) #15
  br label %if.end11

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #12
  br label %if.end11

if.end11:                                         ; preds = %if.else, %do.end9
  %rc.0 = phi i32 [ -16, %do.end9 ], [ 0, %if.else ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_hcd_resume(ptr noundef %pdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dummy_hcd_resume.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dummy_hcd_resume, %do.end)) #12
          to label %if.then [label %do.end], !srcloc !302

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dummy_hcd_resume.__UNIQUE_ID_ddebug285, ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.103) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %flags = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #12
  tail call void @usb_hcd_poll_rh_status(ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_shared_hcd(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_setup(ptr noundef %hcd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %sg_tablesize = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 7
  %6 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %sg_tablesize, align 4
  %call2 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %hcd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  %hcd_priv.i28 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %hs_hcd = getelementptr inbounds %struct.dummy, ptr %5, i32 0, i32 10
  %7 = ptrtoint ptr %hs_hcd to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %hcd_priv.i28, ptr %hs_hcd, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ss_hcd = getelementptr inbounds %struct.dummy, ptr %5, i32 0, i32 11
  %8 = ptrtoint ptr %ss_hcd to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %hcd_priv.i28, ptr %ss_hcd, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink30 = phi i32 [ 64, %if.else ], [ 32, %if.then ]
  %.sink = phi i32 [ 5, %if.else ], [ 3, %if.then ]
  %9 = ptrtoint ptr %hcd_priv.i28 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %5, ptr %hcd_priv.i28, align 4
  %speed11 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %10 = ptrtoint ptr %speed11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink30, ptr %speed11, align 8
  %root_hub13 = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 11
  %11 = ptrtoint ptr %root_hub13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %root_hub13, align 8
  %speed14 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %speed14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %speed14, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_start(ptr noundef %hcd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %hcd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %timer.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @dummy_timer, i32 noundef 0, ptr noundef nonnull @.str.56, ptr noundef nonnull @dummy_start_ss.__key) #12
  %rh_state.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %rh_state.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %rh_state.i, align 4
  %stream_en_ep.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 3, i32 1
  %1 = ptrtoint ptr %stream_en_ep.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %stream_en_ep.i, align 4
  %urbp_list.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 7
  %2 = ptrtoint ptr %urbp_list.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %urbp_list.i, ptr %urbp_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 2
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %urbp_list.i, ptr %prev.i.i, align 4
  %power_budget.i = getelementptr %struct.usb_hcd, ptr %hcd, i32 0, i32 19
  %4 = ptrtoint ptr %power_budget.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 900, ptr %power_budget.i, align 8
  %state.i = getelementptr %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %state.i, align 4
  %uses_new_polling.i = getelementptr %struct.usb_hcd, ptr %hcd, i32 0, i32 14
  %6 = ptrtoint ptr %uses_new_polling.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %uses_new_polling.i, align 4
  %bf.set.i = or i16 %bf.load.i, 1024
  store i16 %bf.set.i, ptr %uses_new_polling.i, align 4
  %otg_port.i = getelementptr %struct.usb_hcd, ptr %hcd, i32 0, i32 0, i32 5
  %7 = ptrtoint ptr %otg_port.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %otg_port.i, align 1
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %8 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hcd_priv.i, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %9, ptr noundef nonnull @.str.54, ptr noundef nonnull @dummy_start.__key, i16 noundef signext 3) #12
  %timer = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @dummy_timer, i32 noundef 0, ptr noundef nonnull @.str.56, ptr noundef nonnull @dummy_start.__key.55) #12
  %rh_state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %rh_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %rh_state, align 4
  %urbp_list = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 7
  %11 = ptrtoint ptr %urbp_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %urbp_list, ptr %urbp_list, align 4
  %prev.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 2
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %urbp_list, ptr %prev.i, align 4
  %power_budget = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 19
  %13 = ptrtoint ptr %power_budget to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 500, ptr %power_budget, align 8
  %state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %state, align 4
  %uses_new_polling = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 14
  %15 = ptrtoint ptr %uses_new_polling to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load = load i16, ptr %uses_new_polling, align 4
  %bf.set = or i16 %bf.load, 1024
  store i16 %bf.set, ptr %uses_new_polling, align 4
  %otg_port = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 5
  %16 = ptrtoint ptr %otg_port to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %otg_port, align 1
  %17 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hcd, align 8
  %call8 = tail call i32 @device_create_file(ptr noundef %18, ptr noundef nonnull @dev_attr_urbs) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then
  %retval.0 = phi i32 [ %call8, %do.body ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dummy_stop(ptr nocapture noundef readonly %hcd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  tail call void @device_remove_file(ptr noundef %1, ptr noundef nonnull @dev_attr_urbs) #12
  %2 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.77) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_h_get_frame(ptr nocapture noundef readnone %hcd) #5 align 64 {
entry:
  %ts64.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts64.i) #12
  %0 = call ptr @memset(ptr %ts64.i, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts64.i) #12
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts64.i, i32 0, i32 1
  %1 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %2, 1000000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts64.i) #12
  ret i32 %div.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_urb_enqueue(ptr noundef %hcd, ptr noundef %urb, i32 noundef %mem_flags) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i = and i32 %mem_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i19.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i19.i, label %entry.kmalloc.exit_crit_edge, label %if.end.i.i, !prof !303

entry.kmalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %kmalloc.exit

if.end.i.i:                                       ; preds = %entry
  %and2.i.i = and i32 %mem_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.end.i.i.kmalloc.exit_crit_edge

if.end.i.i.kmalloc.exit_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kmalloc.exit

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and6.i.i = and i32 %mem_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  %..i.i = select i1 %tobool7.not.i.i, i32 1, i32 2
  br label %kmalloc.exit

kmalloc.exit:                                     ; preds = %if.end5.i.i, %if.end.i.i.kmalloc.exit_crit_edge, %entry.kmalloc.exit_crit_edge
  %retval.0.i20.i = phi i32 [ 0, %entry.kmalloc.exit_crit_edge ], [ 3, %if.end.i.i.kmalloc.exit_crit_edge ], [ %..i.i, %if.end5.i.i ]
  %arrayidx6.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i20.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i, align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %mem_flags, i32 noundef 60) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %kmalloc.exit.cleanup_crit_edge, label %if.end

kmalloc.exit.cleanup_crit_edge:                   ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %kmalloc.exit
  %2 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %urb, ptr %call7.i, align 8
  %miter_started = getelementptr inbounds %struct.urbp, ptr %call7.i, i32 0, i32 3
  %3 = ptrtoint ptr %miter_started to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %miter_started, align 8
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %4 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hcd_priv.i, align 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #12
  %ep.i.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 9
  %6 = ptrtoint ptr %ep.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ep.i.i, align 4
  %bmAttributes.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %bmAttributes.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bmAttributes.i.i.i, align 1
  %10 = and i8 %9, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp.i.not.i.i = icmp eq i8 %10, 2
  br i1 %cmp.i.not.i.i, label %dummy_ep_stream_en.exit.i, label %dummy_ep_stream_en.exit.thread.i

dummy_ep_stream_en.exit.i:                        ; preds = %if.end
  %bEndpointAddress.i.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 2
  %11 = ptrtoint ptr %bEndpointAddress.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bEndpointAddress.i.i.i.i, align 1
  %13 = shl i8 %12, 1
  %14 = and i8 %13, 30
  %.lobit.i.i.i = lshr i8 %12, 7
  %spec.select6.i.i.i = or i8 %14, %.lobit.i.i.i
  %spec.select.i.i.i = zext i8 %spec.select6.i.i.i to i32
  %shl.i.i = shl nuw i32 1, %spec.select.i.i.i
  %stream_en_ep.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 3, i32 1
  %15 = ptrtoint ptr %stream_en_ep.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stream_en_ep.i.i, align 4
  %and.i.i83 = and i32 %shl.i.i, %16
  %stream_id.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 11
  %17 = ptrtoint ptr %stream_id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stream_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i83)
  %tobool1.not.i = icmp eq i32 %and.i.i83, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end3.i

dummy_ep_stream_en.exit.thread.i:                 ; preds = %if.end
  %stream_id28.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 11
  %19 = ptrtoint ptr %stream_id28.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stream_id28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not29.i = icmp eq i32 %20, 0
  br i1 %tobool.not29.i, label %dummy_ep_stream_en.exit.thread.i.if.end11_crit_edge, label %dummy_ep_stream_en.exit.thread.i.if.then10_crit_edge

dummy_ep_stream_en.exit.thread.i.if.then10_crit_edge: ; preds = %dummy_ep_stream_en.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

dummy_ep_stream_en.exit.thread.i.if.end11_crit_edge: ; preds = %dummy_ep_stream_en.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then.i:                                        ; preds = %dummy_ep_stream_en.exit.i
  br i1 %tobool1.not.i, label %if.then.i.if.end11_crit_edge, label %if.then.i.if.then10_crit_edge

if.then.i.if.then10_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

if.then.i.if.end11_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.end3.i:                                        ; preds = %dummy_ep_stream_en.exit.i
  br i1 %tobool1.not.i, label %if.end3.i.if.then10_crit_edge, label %if.end6.i

if.end3.i.if.then10_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

if.end6.i:                                        ; preds = %if.end3.i
  %num_stream.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 4
  %21 = ptrtoint ptr %num_stream.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %num_stream.i.i, align 1
  %23 = lshr i8 %22, 4
  %narrow.i = add nuw nsw i8 %23, 1
  %inc.i.i = zext i8 %narrow.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %inc.i.i)
  %cmp.i = icmp ugt i32 %18, %inc.i.i
  br i1 %cmp.i, label %do.end.i, label %if.end6.i.if.end11_crit_edge

if.end6.i.if.end11_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

do.end.i:                                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.81, i32 noundef %18) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/udc/dummy_hcd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1253, 0\0A.popsection", ""() #12, !srcloc !308
  unreachable

if.then10:                                        ; preds = %if.end3.i.if.then10_crit_edge, %if.then.i.if.then10_crit_edge, %dummy_ep_stream_en.exit.thread.i.if.then10_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %done

if.end11:                                         ; preds = %if.end6.i.if.end11_crit_edge, %if.then.i.if.end11_crit_edge, %dummy_ep_stream_en.exit.thread.i.if.end11_crit_edge
  %call12 = tail call i32 @usb_hcd_link_urb_to_ep(ptr noundef %hcd, ptr noundef %urb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %done

if.end15:                                         ; preds = %if.end11
  %udev = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 6
  %26 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %udev, align 4
  %tobool16.not = icmp eq ptr %27, null
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  br i1 %tobool16.not, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %udev to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %udev, align 4
  %call20 = tail call ptr @usb_get_dev(ptr noundef %29) #12
  br label %if.end33

if.else:                                          ; preds = %if.end15
  %cmp23.not = icmp eq ptr %27, %29
  br i1 %cmp23.not, label %if.else.if.end33_crit_edge, label %do.end30, !prof !303

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

do.end30:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.79) #15
  br label %if.end33

if.end33:                                         ; preds = %do.end30, %if.else.if.end33_crit_edge, %if.then17
  %urbp_list = getelementptr inbounds %struct.urbp, ptr %call7.i, i32 0, i32 1
  %urbp_list34 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 7
  %prev.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 2
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %urbp_list, ptr noundef %34, ptr noundef %urbp_list34) #12
  br i1 %call.i.i, label %if.end.i.i84, label %if.end33.list_add_tail.exit_crit_edge

if.end33.list_add_tail.exit_crit_edge:            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i84:                                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %urbp_list, ptr %prev.i, align 4
  %36 = ptrtoint ptr %urbp_list to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %urbp_list34, ptr %urbp_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.urbp, ptr %call7.i, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i, align 8
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %urbp_list, ptr %34, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i84, %if.end33.list_add_tail.exit_crit_edge
  %hcpriv = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %39 = ptrtoint ptr %hcpriv to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i, ptr %hcpriv, align 4
  %next_frame_urbp = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 3
  %40 = ptrtoint ptr %next_frame_urbp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %next_frame_urbp, align 4
  %tobool35.not = icmp eq ptr %41, null
  br i1 %tobool35.not, label %if.then36, label %list_add_tail.exit.if.end38_crit_edge

list_add_tail.exit.if.end38_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then36:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %next_frame_urbp to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call7.i, ptr %next_frame_urbp, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %list_add_tail.exit.if.end38_crit_edge
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %43 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pipe, align 4
  %shr.mask = and i32 %44, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr.mask)
  %cmp39 = icmp eq i32 %shr.mask, -2147483648
  br i1 %cmp39, label %if.then41, label %if.end38.if.end42_crit_edge

if.end38.if.end42_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %error_count = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 26
  %45 = ptrtoint ptr %error_count to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %error_count, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end38.if.end42_crit_edge
  %pprev.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 3
  %46 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %47, null
  br i1 %tobool.not.i.i.not, label %if.then45, label %if.end42.done_crit_edge

if.end42.done_crit_edge:                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %timer = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %48, 1
  %call47 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #12
  br label %done

done:                                             ; preds = %if.then45, %if.end42.done_crit_edge, %if.then14, %if.then10
  %rc.0 = phi i32 [ -22, %if.then10 ], [ %call12, %if.then14 ], [ 0, %if.end42.done_crit_edge ], [ 0, %if.then45 ]
  %49 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hcd_priv.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %50, i32 noundef %call5) #12
  br label %cleanup

cleanup:                                          ; preds = %done, %kmalloc.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %done ], [ -12, %kmalloc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_urb_dequeue(ptr noundef %hcd, ptr noundef %urb, i32 noundef %status) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #12
  %call6 = tail call i32 @usb_hcd_check_unlink_urb(ptr noundef %hcd, ptr noundef %urb, i32 noundef %status) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %rh_state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %rh_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rh_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp7.not = icmp eq i32 %3, 2
  br i1 %cmp7.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true9

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true9:                                   ; preds = %land.lhs.true
  %urbp_list = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 7
  %4 = ptrtoint ptr %urbp_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %urbp_list, align 4
  %cmp.i.not = icmp eq ptr %5, %urbp_list
  br i1 %cmp.i.not, label %land.lhs.true9.if.end_crit_edge, label %if.then

land.lhs.true9.if.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  %timer = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %call12 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %6) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true9.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hcd_priv.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %call3) #12
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_hub_status(ptr noundef %hcd, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #12
  %flags7 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 12
  %2 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags7, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end:                                           ; preds = %entry
  %resuming = getelementptr inbounds %struct.dummy_hcd, ptr %hcd_priv.i, i32 0, i32 11
  %4 = ptrtoint ptr %resuming to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %resuming, align 1
  %5 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool8.not = icmp eq i8 %5, 0
  br i1 %tobool8.not, label %if.end.if.end14_crit_edge, label %land.lhs.true

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %re_timeout = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 3
  %7 = ptrtoint ptr %re_timeout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %re_timeout, align 4
  %sub = sub i32 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp9 = icmp sgt i32 %sub, -1
  br i1 %cmp9, label %if.then11, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %port_status = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1, i32 1
  %9 = ptrtoint ptr %port_status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port_status, align 4
  %or = and i32 %10, -262149
  %and13 = or i32 %or, 262144
  store i32 %and13, ptr %port_status, align 4
  tail call fastcc void @set_link_state(ptr noundef %hcd_priv.i)
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %land.lhs.true.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %port_status15 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1, i32 1
  %11 = ptrtoint ptr %port_status15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port_status15, align 4
  %and16 = and i32 %12, 2031616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %cmp17.not = icmp eq i32 %and16, 0
  br i1 %cmp17.not, label %if.end14.done_crit_edge, label %if.then19

if.end14.done_crit_edge:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.then19:                                        ; preds = %if.end14
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %buf, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dummy_hub_status.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dummy_hub_status, %do.end32)) #12
          to label %if.then27 [label %do.end32], !srcloc !302

if.then27:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hcd, align 8
  %16 = ptrtoint ptr %port_status15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port_status15, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dummy_hub_status.__UNIQUE_ID_ddebug269, ptr noundef %15, ptr noundef nonnull @.str.84, i32 noundef %17) #12
  br label %do.end32

do.end32:                                         ; preds = %if.then27, %if.then19
  %rh_state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %rh_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rh_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp33 = icmp eq i32 %19, 1
  br i1 %cmp33, label %if.then35, label %do.end32.done_crit_edge

do.end32.done_crit_edge:                          ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.then35:                                        ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_hcd_resume_root_hub(ptr noundef %hcd) #12
  br label %done

done:                                             ; preds = %if.then35, %do.end32.done_crit_edge, %if.end14.done_crit_edge, %entry.done_crit_edge
  %retval1.0 = phi i32 [ 1, %if.then35 ], [ 1, %do.end32.done_crit_edge ], [ 0, %if.end14.done_crit_edge ], [ 0, %entry.done_crit_edge ]
  %20 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hcd_priv.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %call4) #12
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_hub_control(ptr noundef %hcd, i16 noundef zeroext %typeReq, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, ptr nocapture noundef writeonly %buf, i16 noundef zeroext %wLength) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags2 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 12
  %0 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags2, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %2 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcd_priv.i, align 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #12
  %conv8 = zext i16 %typeReq to i32
  %4 = zext i16 %typeReq to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.110)
  switch i16 %typeReq, label %do.body422 [
    i16 8193, label %if.end.sw.epilog445_crit_edge
    i16 8961, label %sw.bb
    i16 -24570, label %sw.bb71
    i16 -32762, label %sw.bb108
    i16 -24576, label %sw.bb119
    i16 -23808, label %sw.bb120
    i16 8195, label %sw.bb190
    i16 8963, label %sw.bb191
    i16 -23795, label %sw.bb371
    i16 8204, label %sw.bb396
  ]

if.end.sw.epilog445_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog445

sw.bb:                                            ; preds = %if.end
  %conv9 = zext i16 %wValue to i32
  %5 = zext i16 %wValue to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.111)
  switch i16 %wValue, label %sw.bb.error_crit_edge [
    i16 2, label %sw.bb10
    i16 8, label %do.body33
    i16 1, label %sw.bb.sw.bb61_crit_edge
    i16 17, label %sw.bb.sw.bb61_crit_edge599
    i16 18, label %sw.bb.sw.bb61_crit_edge600
    i16 16, label %sw.bb.sw.bb67_crit_edge
    i16 20, label %sw.bb.sw.bb67_crit_edge601
  ]

sw.bb.sw.bb67_crit_edge601:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb67

sw.bb.sw.bb67_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb67

sw.bb.sw.bb61_crit_edge600:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb61

sw.bb.sw.bb61_crit_edge599:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb61

sw.bb.sw.bb61_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb61

sw.bb.error_crit_edge:                            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

sw.bb10:                                          ; preds = %sw.bb
  %speed = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %7)
  %cmp11 = icmp eq i32 %7, 64
  br i1 %cmp11, label %do.body14, label %if.end26

do.body14:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dummy_hub_control.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dummy_hub_control, %error)) #12
          to label %if.then21 [label %error], !srcloc !302

if.then21:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dummy_hub_control.__UNIQUE_ID_ddebug270, ptr noundef %9, ptr noundef nonnull @.str.86) #12
  br label %error

if.end26:                                         ; preds = %sw.bb10
  %port_status = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1, i32 1
  %10 = ptrtoint ptr %port_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_status, align 4
  %and27 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.sw.epilog445_crit_edge, label %if.then29

if.end26.sw.epilog445_crit_edge:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog445

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %resuming = getelementptr inbounds %struct.dummy_hcd, ptr %hcd_priv.i, i32 0, i32 11
  %12 = ptrtoint ptr %resuming to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %resuming, align 1
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %resuming, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %13, 2
  %re_timeout = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 3
  %14 = ptrtoint ptr %re_timeout to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %re_timeout, align 4
  br label %sw.epilog445

do.body33:                                        ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dummy_hub_control.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dummy_hub_control, %do.end51)) #12
          to label %if.then47 [label %do.end51], !srcloc !302

if.then47:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dummy_hub_control.__UNIQUE_ID_ddebug271, ptr noundef %16, ptr noundef nonnull @.str.87) #12
  br label %do.end51

do.end51:                                         ; preds = %if.then47, %do.body33
  %speed52 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %17 = ptrtoint ptr %speed52 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %speed52, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %18)
  %cmp53 = icmp eq i32 %18, 64
  %port_status56 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1, i32 1
  %19 = ptrtoint ptr %port_status56 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port_status56, align 4
  %. = select i1 %cmp53, i32 -513, i32 -257
  %and59 = and i32 %20, %.
  store i32 %and59, ptr %port_status56, align 4
  tail call fastcc void @set_link_state(ptr noundef %hcd_priv.i)
  br label %sw.epilog445

sw.bb61:                                          ; preds = %sw.bb.sw.bb61_crit_edge, %sw.bb.sw.bb61_crit_edge599, %sw.bb.sw.bb61_crit_edge600
  %speed62 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %21 = ptrtoint ptr %speed62 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %speed62, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %22)
  %cmp63 = icmp eq i32 %22, 64
  br i1 %cmp63, label %sw.bb61.error_crit_edge, label %sw.bb61.sw.bb67_crit_edge

sw.bb61.sw.bb67_crit_edge:                        ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb67

sw.bb61.error_crit_edge:                          ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

sw.bb67:                                          ; preds = %sw.bb61.sw.bb67_crit_edge, %sw.bb.sw.bb67_crit_edge, %sw.bb.sw.bb67_crit_edge601
  %shl = shl nuw nsw i32 1, %conv9
  %neg = xor i32 %shl, -1
  %port_status69 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1, i32 1
  %23 = ptrtoint ptr %port_status69 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port_status69, align 4
  %and70 = and i32 %24, %neg
  store i32 %and70, ptr %port_status69, align 4
  tail call fastcc void @set_link_state(ptr noundef %hcd_priv.i)
  br label %sw.epilog445

sw.bb71:                                          ; preds = %if.end
  %speed72 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %25 = ptrtoint ptr %speed72 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %speed72, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %26)
  %cmp73 = icmp eq i32 %26, 64
  br i1 %cmp73, label %land.lhs.true, label %if.else106

land.lhs.true:                                    ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %wLength)
  %cmp76 = icmp ugt i16 %wLength, 11
  call void @__sanitizer_cov_trace_const_cmp2(i16 10752, i16 %wValue)
  %cmp79.not = icmp eq i16 %wValue, 10752
  %or.cond = and i1 %cmp79.not, %cmp76
  br i1 %or.cond, label %if.then105, label %do.body82

do.body82:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dummy_hub_control.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dummy_hub_control, %error)) #12
          to label %if.then96 [label %error], !srcloc !302

if.then96:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dummy_hub_control.__UNIQUE_ID_ddebug272, ptr noundef %28, ptr noundef nonnull @.str.88) #12
  br label %error

if.then105:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %29 = getelementptr inbounds i8, ptr %buf, i32 5
  %30 = call ptr @memset(ptr %29, i32 0, i32 10)
  %bDescriptorType.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 1
  %31 = ptrtoint ptr %bDescriptorType.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 42, ptr %bDescriptorType.i, align 1
  %32 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 12, ptr %buf, align 1
  %wHubCharacteristics.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 3
  %33 = ptrtoint ptr %wHubCharacteristics.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 256, ptr %wHubCharacteristics.i, align 1
  %bNbrPorts.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 2
  %34 = ptrtoint ptr %bNbrPorts.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %bNbrPorts.i, align 1
  %u.i = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 6
  %35 = ptrtoint ptr %u.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 4, ptr %u.i, align 1
  br label %sw.epilog445

if.else106:                                       ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #14
  %36 = getelementptr inbounds i8, ptr %buf, i32 5
  %37 = call ptr @memset(ptr %36, i32 0, i32 10)
  %bDescriptorType.i575 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 1
  %38 = ptrtoint ptr %bDescriptorType.i575 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 41, ptr %bDescriptorType.i575, align 1
  %39 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 9, ptr %buf, align 1
  %wHubCharacteristics.i576 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 3
  %40 = ptrtoint ptr %wHubCharacteristics.i576 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 256, ptr %wHubCharacteristics.i576, align 1
  %bNbrPorts.i577 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 2
  %41 = ptrtoint ptr %bNbrPorts.i577 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %bNbrPorts.i577, align 1
  %arrayidx3.i = getelementptr %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 6, i32 0, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %arrayidx3.i, align 1
  br label %sw.epilog445

sw.bb108:                                         ; preds = %if.end
  %speed109 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %43 = ptrtoint ptr %speed109 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %speed109, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %44)
  %cmp110.not = icmp eq i32 %44, 64
  %.mask = and i16 %wValue, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 3840, i16 %.mask)
  %cmp115.not = icmp eq i16 %.mask, 3840
  %or.cond540 = and i1 %cmp115.not, %cmp110.not
  br i1 %or.cond540, label %if.end118, label %sw.bb108.error_crit_edge

sw.bb108.error_crit_edge:                         ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end118:                                        ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #14
  %45 = call ptr @memcpy(ptr %buf, ptr @usb3_bos_desc, i32 15)
  br label %sw.epilog445

sw.bb119:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %buf, align 4
  br label %sw.epilog445

sw.bb120:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %wIndex)
  %cmp122.not = icmp eq i16 %wIndex, 1
  %spec.select = select i1 %cmp122.not, i32 0, i32 -32
  %resuming126 = getelementptr inbounds %struct.dummy_hcd, ptr %hcd_priv.i, i32 0, i32 11
  %47 = ptrtoint ptr %resuming126 to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load127 = load i8, ptr %resuming126, align 1
  %48 = and i8 %bf.load127, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool129.not = icmp eq i8 %48, 0
  br i1 %tobool129.not, label %sw.bb120.if.end138_crit_edge, label %land.lhs.true130

sw.bb120.if.end138_crit_edge:                     ; preds = %sw.bb120
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end138

land.lhs.true130:                                 ; preds = %sw.bb120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %49 = load volatile i32, ptr @jiffies, align 128
  %re_timeout131 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 3
  %50 = ptrtoint ptr %re_timeout131 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %re_timeout131, align 4
  %sub = sub i32 %49, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp132 = icmp sgt i32 %sub, -1
  br i1 %cmp132, label %if.then134, label %land.lhs.true130.if.end138_crit_edge

land.lhs.true130.if.end138_crit_edge:             ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end138

if.then134:                                       ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #14
  %port_status135 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1, i32 1
  %52 = ptrtoint ptr %port_status135 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port_status135, align 4
  %or = and i32 %53, -262149
  %and137 = or i32 %or, 262144
  store i32 %and137, ptr %port_status135, align 4
  br label %if.end138

if.end138:                                        ; preds = %if.then134, %land.lhs.true130.if.end138_crit_edge, %sw.bb120.if.end138_crit_edge
  %port_status139 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1, i32 1
  %54 = ptrtoint ptr %port_status139 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port_status139, align 4
  %and140 = and i32 %55, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %cmp141.not = icmp eq i32 %and140, 0
  br i1 %cmp141.not, label %if.end138.if.end183_crit_edge, label %land.lhs.true143

if.end138.if.end183_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end183

land.lhs.true143:                                 ; preds = %if.end138
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %re_timeout144 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 3
  %57 = ptrtoint ptr %re_timeout144 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %re_timeout144, align 4
  %sub145 = sub i32 %56, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub145)
  %cmp146 = icmp sgt i32 %sub145, -1
  br i1 %cmp146, label %if.then148, label %land.lhs.true143.if.end183_crit_edge

land.lhs.true143.if.end183_crit_edge:             ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end183

if.then148:                                       ; preds = %land.lhs.true143
  %or150 = and i32 %55, -1048593
  %and152 = or i32 %or150, 1048576
  %59 = ptrtoint ptr %port_status139 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and152, ptr %port_status139, align 4
  %60 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hcd_priv.i, align 4
  %pullup = getelementptr inbounds %struct.dummy, ptr %61, i32 0, i32 9
  %62 = ptrtoint ptr %pullup to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load154 = load i8, ptr %pullup, align 2
  %63 = and i8 %bf.load154, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool158.not = icmp eq i8 %63, 0
  br i1 %tobool158.not, label %if.then148.if.end183_crit_edge, label %if.then159

if.then148.if.end183_crit_edge:                   ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end183

if.then159:                                       ; preds = %if.then148
  %or161 = or i32 %or150, 1048578
  %64 = ptrtoint ptr %port_status139 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or161, ptr %port_status139, align 4
  %speed162 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %65 = ptrtoint ptr %speed162 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %speed162, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %66)
  %cmp163 = icmp slt i32 %66, 64
  br i1 %cmp163, label %if.then165, label %if.then159.if.end183_crit_edge

if.then159.if.end183_crit_edge:                   ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end183

if.then165:                                       ; preds = %if.then159
  %speed167 = getelementptr inbounds %struct.dummy, ptr %61, i32 0, i32 4, i32 5
  %67 = ptrtoint ptr %speed167 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %speed167, align 8
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %68, label %if.then165.if.end183_crit_edge [
    i32 3, label %sw.bb168
    i32 1, label %sw.bb171
  ]

if.then165.if.end183_crit_edge:                   ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end183

sw.bb168:                                         ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #14
  %or170 = or i32 %or150, 1049602
  br label %if.end183.sink.split

sw.bb171:                                         ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #14
  %ep0 = getelementptr inbounds %struct.dummy, ptr %61, i32 0, i32 4, i32 3
  %70 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ep0, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %71, i32 0, i32 7
  %72 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %72, i32 7)
  %bf.load174 = load i56, ptr %maxpacket, align 2
  %bf.clear175 = and i56 %bf.load174, 1099511627775
  %bf.set176 = or i56 %bf.clear175, 8796093022208
  store i56 %bf.set176, ptr %maxpacket, align 2
  %73 = ptrtoint ptr %port_status139 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %port_status139, align 4
  %or178 = or i32 %74, 512
  br label %if.end183.sink.split

if.end183.sink.split:                             ; preds = %sw.bb171, %sw.bb168
  %or170.sink = phi i32 [ %or170, %sw.bb168 ], [ %or178, %sw.bb171 ]
  %75 = ptrtoint ptr %port_status139 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %or170.sink, ptr %port_status139, align 4
  br label %if.end183

if.end183:                                        ; preds = %if.end183.sink.split, %if.then165.if.end183_crit_edge, %if.then159.if.end183_crit_edge, %if.then148.if.end183_crit_edge, %land.lhs.true143.if.end183_crit_edge, %if.end138.if.end183_crit_edge
  tail call fastcc void @set_link_state(ptr noundef %hcd_priv.i)
  %76 = ptrtoint ptr %port_status139 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %port_status139, align 4
  %conv185 = trunc i32 %77 to i16
  %78 = tail call i16 @llvm.bswap.i16(i16 %conv185)
  %79 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %buf, align 2
  %80 = ptrtoint ptr %port_status139 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %port_status139, align 4
  %shr187 = lshr i32 %81, 16
  %conv188 = trunc i32 %shr187 to i16
  %82 = tail call i16 @llvm.bswap.i16(i16 %conv188)
  %arrayidx189 = getelementptr i16, ptr %buf, i32 1
  %83 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %arrayidx189, align 2
  br label %sw.epilog445

sw.bb190:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog445

sw.bb191:                                         ; preds = %if.end
  %84 = zext i16 %wValue to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.113)
  switch i16 %wValue, label %sw.bb191.error_crit_edge [
    i16 5, label %sw.bb193
    i16 23, label %sw.bb191.sw.bb218_crit_edge
    i16 24, label %sw.bb191.sw.bb218_crit_edge602
    i16 2, label %sw.bb243
    i16 8, label %sw.bb302
    i16 28, label %sw.bb313
    i16 4, label %sw.bb191.sw.bb338_crit_edge
    i16 16, label %sw.bb191.sw.bb363_crit_edge
    i16 20, label %sw.bb191.sw.bb363_crit_edge603
    i16 17, label %sw.bb191.sw.bb363_crit_edge604
    i16 18, label %sw.bb191.sw.bb363_crit_edge605
  ]

sw.bb191.sw.bb363_crit_edge605:                   ; preds = %sw.bb191
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb363

sw.bb191.sw.bb363_crit_edge604:                   ; preds = %sw.bb191
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb363

sw.bb191.sw.bb363_crit_edge603:                   ; preds = %sw.bb191
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb363

sw.bb191.sw.bb363_crit_edge:                      ; preds = %sw.bb191
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb363

sw.bb191.sw.bb338_crit_edge:                      ; preds = %sw.bb191
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb338

sw.bb191.sw.bb218_crit_edge602:                   ; preds = %sw.bb191
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb218

sw.bb191.sw.bb218_crit_edge:                      ; preds = %sw.bb191
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb218

sw.bb191.error_crit_edge:                         ; preds = %sw.bb191
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

sw.bb193:                                         ; preds = %sw.bb191
  %speed194 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %85 = ptrtoint ptr %speed194 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %speed194, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %86)
  %cmp195.not = icmp eq i32 %86, 64
  br i1 %cmp195.not, label %sw.bb193.sw.epilog445_crit_edge, label %do.body198

sw.bb193.sw.epilog445_crit_edge:                  ; preds = %sw.bb193
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog445

do.body198:                                       ; preds = %sw.bb193
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dummy_hub_control.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dummy_hub_control, %error)) #12
          to label %if.then212 [label %error], !srcloc !302

if.then212:                                       ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #14
  %87 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dummy_hub_control.__UNIQUE_ID_ddebug273, ptr noundef %88, ptr noundef nonnull @.str.89) #12
  br label %error

sw.bb218:                                         ; preds = %sw.bb191.sw.bb218_crit_edge, %sw.bb191.sw.bb218_crit_edge602
  %speed219 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %89 = ptrtoint ptr %speed219 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %speed219, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %90)
  %cmp220.not = icmp eq i32 %90, 64
  br i1 %cmp220.not, label %sw.bb218.sw.epilog445_crit_edge, label %do.body223

sw.bb218.sw.epilog445_crit_edge:                  ; preds = %sw.bb218
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog445

do.body223:                                       ; preds = %sw.bb218
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dummy_hub_control.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dummy_hub_control, %error)) #12
          to label %if.then237 [label %error], !srcloc !302

if.then237:                                       ; preds = %do.body223
  call void @__sanitizer_cov_trace_pc() #14
  %91 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dummy_hub_control.__UNIQUE_ID_ddebug274, ptr noundef %92, ptr noundef nonnull @.str.90) #12
  br label %error

sw.bb243:                                         ; preds = %sw.bb191
  %speed244 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %93 = ptrtoint ptr %speed244 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %speed244, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %94)
  %cmp245 = icmp eq i32 %94, 64
  br i1 %cmp245, label %do.body248, label %if.end267

do.body248:                                       ; preds = %sw.bb243
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dummy_hub_control.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dummy_hub_control, %error)) #12
          to label %if.then262 [label %error], !srcloc !302

if.then262:                                       ; preds = %do.body248
  call void @__sanitizer_cov_trace_pc() #14
  %95 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dummy_hub_control.__UNIQUE_ID_ddebug275, ptr noundef %96, ptr noundef nonnull @.str.86) #12
  br label %error

if.end267:                                        ; preds = %sw.bb243
  %active = getelementptr inbounds %struct.dummy_hcd, ptr %hcd_priv.i, i32 0, i32 11
  %97 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %97)
  %bf.load268 = load i8, ptr %active, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load268)
  %tobool271.not = icmp sgt i8 %bf.load268, -1
  br i1 %tobool271.not, label %if.end267.sw.epilog445_crit_edge, label %if.then272

if.end267.sw.epilog445_crit_edge:                 ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog445

if.then272:                                       ; preds = %if.end267
  %port_status273 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1, i32 1
  %98 = ptrtoint ptr %port_status273 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %port_status273, align 4
  %or274 = or i32 %99, 4
  store i32 %or274, ptr %port_status273, align 4
  tail call fastcc void @set_link_state(ptr noundef %hcd_priv.i)
  %100 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hcd_priv.i, align 4
  %devstatus = getelementptr inbounds %struct.dummy, ptr %101, i32 0, i32 8
  %102 = ptrtoint ptr %devstatus to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %devstatus, align 4
  %104 = and i16 %103, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %cmp278.not = icmp eq i16 %104, 0
  br i1 %cmp278.not, label %if.then272.sw.epilog445_crit_edge, label %do.body281

if.then272.sw.epilog445_crit_edge:                ; preds = %if.then272
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog445

do.body281:                                       ; preds = %if.then272
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dummy_hub_control.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dummy_hub_control, %sw.epilog445)) #12
          to label %if.then295 [label %sw.epilog445], !srcloc !302

if.then295:                                       ; preds = %do.body281
  call void @__sanitizer_cov_trace_pc() #14
  %105 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dummy_hub_control.__UNIQUE_ID_ddebug276, ptr noundef %106, ptr noundef nonnull @.str.91) #12
  br label %sw.epilog445

sw.bb302:                                         ; preds = %sw.bb191
  call void @__sanitizer_cov_trace_pc() #14
  %speed303 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %107 = ptrtoint ptr %speed303 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %speed303, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %108)
  %cmp304 = icmp eq i32 %108, 64
  %port_status307 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1, i32 1
  %109 = ptrtoint ptr %port_status307 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %port_status307, align 4
  %.598 = select i1 %cmp304, i32 512, i32 256
  %or311 = or i32 %110, %.598
  store i32 %or311, ptr %port_status307, align 4
  tail call fastcc void @set_link_state(ptr noundef %hcd_priv.i)
  br label %sw.epilog445

sw.bb313:                                         ; preds = %sw.bb191
  %speed314 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %111 = ptrtoint ptr %speed314 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %speed314, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %112)
  %cmp315.not = icmp eq i32 %112, 64
  br i1 %cmp315.not, label %sw.bb313.sw.bb338_crit_edge, label %do.body318

sw.bb313.sw.bb338_crit_edge:                      ; preds = %sw.bb313
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb338

do.body318:                                       ; preds = %sw.bb313
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dummy_hub_control.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dummy_hub_control, %error)) #12
          to label %if.then332 [label %error], !srcloc !302

if.then332:                                       ; preds = %do.body318
  call void @__sanitizer_cov_trace_pc() #14
  %113 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dummy_hub_control.__UNIQUE_ID_ddebug277, ptr noundef %114, ptr noundef nonnull @.str.92) #12
  br label %error

sw.bb338:                                         ; preds = %sw.bb313.sw.bb338_crit_edge, %sw.bb191.sw.bb338_crit_edge
  %port_status339 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1, i32 1
  %115 = ptrtoint ptr %port_status339 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %port_status339, align 4
  %and340 = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and340)
  %tobool341.not = icmp eq i32 %and340, 0
  br i1 %tobool341.not, label %sw.bb338.sw.epilog445_crit_edge, label %if.end343

sw.bb338.sw.epilog445_crit_edge:                  ; preds = %sw.bb338
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog445

if.end343:                                        ; preds = %sw.bb338
  call void @__sanitizer_cov_trace_pc() #14
  %speed344 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %117 = ptrtoint ptr %speed344 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %speed344, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %118)
  %cmp345 = icmp eq i32 %118, 64
  %and351 = and i32 %116, -1555
  %or353 = or i32 %and351, 16
  %storemerge = select i1 %cmp345, i32 529, i32 %or353
  %119 = ptrtoint ptr %port_status339 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %storemerge, ptr %port_status339, align 4
  %120 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %hcd_priv.i, align 4
  %devstatus356 = getelementptr inbounds %struct.dummy, ptr %121, i32 0, i32 8
  %122 = ptrtoint ptr %devstatus356 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %devstatus356, align 4
  %124 = and i16 %123, 1
  store i16 %124, ptr %devstatus356, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %125 = load volatile i32, ptr @jiffies, align 128
  %add361 = add i32 %125, 5
  %re_timeout362 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 3
  %126 = ptrtoint ptr %re_timeout362 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %add361, ptr %re_timeout362, align 4
  tail call fastcc void @set_link_state(ptr noundef %hcd_priv.i)
  br label %sw.epilog445

sw.bb363:                                         ; preds = %sw.bb191.sw.bb363_crit_edge, %sw.bb191.sw.bb363_crit_edge603, %sw.bb191.sw.bb363_crit_edge604, %sw.bb191.sw.bb363_crit_edge605
  %speed364 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %127 = ptrtoint ptr %speed364 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %speed364, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %128)
  %cmp365 = icmp eq i32 %128, 64
  br i1 %cmp365, label %sw.bb363.error_crit_edge, label %sw.bb363.sw.epilog445_crit_edge

sw.bb363.sw.epilog445_crit_edge:                  ; preds = %sw.bb363
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog445

sw.bb363.error_crit_edge:                         ; preds = %sw.bb363
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

sw.bb371:                                         ; preds = %if.end
  %speed372 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %129 = ptrtoint ptr %speed372 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %speed372, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %130)
  %cmp373.not = icmp eq i32 %130, 64
  br i1 %cmp373.not, label %if.end395, label %do.body376

do.body376:                                       ; preds = %sw.bb371
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dummy_hub_control.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dummy_hub_control, %error)) #12
          to label %if.then390 [label %error], !srcloc !302

if.then390:                                       ; preds = %do.body376
  call void @__sanitizer_cov_trace_pc() #14
  %131 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dummy_hub_control.__UNIQUE_ID_ddebug278, ptr noundef %132, ptr noundef nonnull @.str.93) #12
  br label %error

if.end395:                                        ; preds = %sw.bb371
  call void @__sanitizer_cov_trace_pc() #14
  %133 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %buf, align 4
  br label %sw.epilog445

sw.bb396:                                         ; preds = %if.end
  %speed397 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 3
  %134 = ptrtoint ptr %speed397 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %speed397, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %135)
  %cmp398.not = icmp eq i32 %135, 64
  br i1 %cmp398.not, label %sw.bb396.sw.epilog445_crit_edge, label %do.body401

sw.bb396.sw.epilog445_crit_edge:                  ; preds = %sw.bb396
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog445

do.body401:                                       ; preds = %sw.bb396
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dummy_hub_control.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dummy_hub_control, %error)) #12
          to label %if.then415 [label %error], !srcloc !302

if.then415:                                       ; preds = %do.body401
  call void @__sanitizer_cov_trace_pc() #14
  %136 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dummy_hub_control.__UNIQUE_ID_ddebug279, ptr noundef %137, ptr noundef nonnull @.str.94) #12
  br label %error

do.body422:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dummy_hub_control.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dummy_hub_control, %error)) #12
          to label %if.then436 [label %error], !srcloc !302

if.then436:                                       ; preds = %do.body422
  call void @__sanitizer_cov_trace_pc() #14
  %138 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %hcd, align 8
  %conv439 = zext i16 %wValue to i32
  %conv440 = zext i16 %wIndex to i32
  %conv441 = zext i16 %wLength to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dummy_hub_control.__UNIQUE_ID_ddebug280, ptr noundef %139, ptr noundef nonnull @.str.95, i32 noundef %conv8, i32 noundef %conv439, i32 noundef %conv440, i32 noundef %conv441) #12
  br label %error

error:                                            ; preds = %if.then436, %do.body422, %if.then415, %do.body401, %if.then390, %do.body376, %sw.bb363.error_crit_edge, %if.then332, %do.body318, %if.then262, %do.body248, %if.then237, %do.body223, %if.then212, %do.body198, %sw.bb191.error_crit_edge, %sw.bb108.error_crit_edge, %if.then96, %do.body82, %sw.bb61.error_crit_edge, %if.then21, %do.body14, %sw.bb.error_crit_edge
  br label %sw.epilog445

sw.epilog445:                                     ; preds = %error, %sw.bb396.sw.epilog445_crit_edge, %if.end395, %sw.bb363.sw.epilog445_crit_edge, %if.end343, %sw.bb338.sw.epilog445_crit_edge, %sw.bb302, %if.then295, %do.body281, %if.then272.sw.epilog445_crit_edge, %if.end267.sw.epilog445_crit_edge, %sw.bb218.sw.epilog445_crit_edge, %sw.bb193.sw.epilog445_crit_edge, %sw.bb190, %if.end183, %sw.bb119, %if.end118, %if.else106, %if.then105, %sw.bb67, %do.end51, %if.then29, %if.end26.sw.epilog445_crit_edge, %if.end.sw.epilog445_crit_edge
  %retval1.1 = phi i32 [ -32, %error ], [ 0, %sw.bb396.sw.epilog445_crit_edge ], [ 0, %if.end395 ], [ 0, %sw.bb363.sw.epilog445_crit_edge ], [ 0, %if.end343 ], [ 0, %sw.bb338.sw.epilog445_crit_edge ], [ 0, %sw.bb302 ], [ 0, %if.then295 ], [ 0, %if.then272.sw.epilog445_crit_edge ], [ 0, %if.end267.sw.epilog445_crit_edge ], [ 0, %sw.bb218.sw.epilog445_crit_edge ], [ 0, %sw.bb193.sw.epilog445_crit_edge ], [ -32, %sw.bb190 ], [ %spec.select, %if.end183 ], [ 0, %sw.bb119 ], [ 15, %if.end118 ], [ 0, %if.then105 ], [ 0, %if.else106 ], [ 0, %sw.bb67 ], [ 0, %do.end51 ], [ 0, %if.then29 ], [ 0, %if.end26.sw.epilog445_crit_edge ], [ 0, %if.end.sw.epilog445_crit_edge ], [ 0, %do.body281 ]
  %140 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hcd_priv.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %141, i32 noundef %call5) #12
  %port_status448 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1, i32 1
  %142 = ptrtoint ptr %port_status448 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %port_status448, align 4
  %and449 = and i32 %143, 2031616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and449)
  %cmp450.not = icmp eq i32 %and449, 0
  br i1 %cmp450.not, label %sw.epilog445.cleanup_crit_edge, label %if.then452

sw.epilog445.cleanup_crit_edge:                   ; preds = %sw.epilog445
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then452:                                       ; preds = %sw.epilog445
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_hcd_poll_rh_status(ptr noundef %hcd) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then452, %sw.epilog445.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %entry.cleanup_crit_edge ], [ %retval1.1, %if.then452 ], [ %retval1.1, %sw.epilog445.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_bus_suspend(ptr nocapture noundef %hcd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dummy_bus_suspend.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dummy_bus_suspend, %do.end)) #12
          to label %if.then [label %do.end], !srcloc !302

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %root_hub = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 11
  %0 = ptrtoint ptr %root_hub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root_hub, align 8
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dummy_bus_suspend.__UNIQUE_ID_ddebug281, ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.96) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %2 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcd_priv.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #12
  %rh_state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %rh_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %rh_state, align 4
  tail call fastcc void @set_link_state(ptr noundef %hcd_priv.i)
  %state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %state, align 4
  %6 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hcd_priv.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %7) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_bus_resume(ptr noundef %hcd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dummy_bus_resume.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dummy_bus_resume, %do.end)) #12
          to label %if.then [label %do.end], !srcloc !302

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %root_hub = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 11
  %0 = ptrtoint ptr %root_hub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root_hub, align 8
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dummy_bus_resume.__UNIQUE_ID_ddebug282, ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.97) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcd_priv.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #12
  %flags = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 12
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.end.if.end12_crit_edge, label %if.else

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.else:                                          ; preds = %do.end
  %rh_state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %rh_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %rh_state, align 4
  tail call fastcc void @set_link_state(ptr noundef %hcd_priv.i)
  %urbp_list = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 7
  %7 = ptrtoint ptr %urbp_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %urbp_list, align 4
  %cmp.i.not = icmp eq ptr %8, %urbp_list
  br i1 %cmp.i.not, label %if.else.if.end11_crit_edge, label %if.then9

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %timer = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %call10 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %9) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.else.if.end11_crit_edge
  %state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %state, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %do.end.if.end12_crit_edge
  %rc.0 = phi i32 [ 0, %if.end11 ], [ -108, %do.end.if.end12_crit_edge ]
  %11 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hcd_priv.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %12) #12
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_alloc_streams(ptr nocapture noundef %hcd, ptr nocapture noundef readnone %udev, ptr nocapture noundef readonly %eps, i32 noundef %num_eps, i32 noundef %num_streams, i32 noundef %mem_flags) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_eps)
  %tobool.not = icmp eq i32 %num_eps, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #12
  %stream_en_ep = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 3, i32 1
  br label %for.body

for.body39.preheader:                             ; preds = %for.inc
  %num_stream.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 4
  %ret_streams.0.tr = trunc i32 %ret_streams.1 to i8
  %2 = shl i8 %ret_streams.0.tr, 4
  %3 = add i8 %2, -16
  %umax = call i32 @llvm.umax.i32(i32 %num_eps, i32 1)
  br label %for.body39

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.098 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %ret_streams.097 = phi i32 [ %ret_streams.1, %for.inc.for.body_crit_edge ], [ %num_streams, %for.body.preheader ]
  %arrayidx = getelementptr ptr, ptr %eps, i32 %i.098
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bEndpointAddress.i.i, align 1
  %8 = shl i8 %7, 1
  %9 = and i8 %8, 30
  %.lobit.i = lshr i8 %7, 7
  %spec.select6.i = or i8 %9, %.lobit.i
  %spec.select.i = zext i8 %spec.select6.i to i32
  %shl = shl nuw i32 1, %spec.select.i
  %10 = ptrtoint ptr %stream_en_ep to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream_en_ep, align 4
  %and = and i32 %shl, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp ne i32 %and, 0
  %ss_ep_comp = getelementptr inbounds %struct.usb_host_endpoint, ptr %5, i32 0, i32 1
  %tobool.not.i = icmp eq ptr %ss_ep_comp, null
  %or.cond = select i1 %tobool9.not, i1 true, i1 %tobool.not.i
  br i1 %or.cond, label %for.body.out_crit_edge, label %if.end.i

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end.i:                                         ; preds = %for.body
  %bmAttributes.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %5, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bmAttributes.i, align 1
  %14 = and i8 %13, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool1.not.i = icmp eq i8 %14, 0
  br i1 %tobool1.not.i, label %if.end.i.out_crit_edge, label %usb_ss_max_streams.exit

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

usb_ss_max_streams.exit:                          ; preds = %if.end.i
  %and.i = zext i8 %14 to i32
  %shl.i = shl nuw i32 1, %and.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %ret_streams.097)
  %cmp17 = icmp slt i32 %shl.i, %ret_streams.097
  br i1 %cmp17, label %do.body20, label %usb_ss_max_streams.exit.for.inc_crit_edge

usb_ss_max_streams.exit.for.inc_crit_edge:        ; preds = %usb_ss_max_streams.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.body20:                                        ; preds = %usb_ss_max_streams.exit
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dummy_alloc_streams.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dummy_alloc_streams, %for.inc)) #12
          to label %if.then27 [label %for.inc], !srcloc !302

if.then27:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hcd, align 8
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bEndpointAddress, align 2
  %conv31 = zext i8 %20 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dummy_alloc_streams.__UNIQUE_ID_ddebug283, ptr noundef %16, ptr noundef nonnull @.str.99, i32 noundef %conv31, i32 noundef %shl.i) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then27, %do.body20, %usb_ss_max_streams.exit.for.inc_crit_edge
  %ret_streams.1 = phi i32 [ %ret_streams.097, %usb_ss_max_streams.exit.for.inc_crit_edge ], [ %shl.i, %if.then27 ], [ %shl.i, %do.body20 ]
  %inc = add nuw i32 %i.098, 1
  %exitcond.not = icmp eq i32 %inc, %num_eps
  br i1 %exitcond.not, label %for.body39.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body39:                                       ; preds = %for.body39.for.body39_crit_edge, %for.body39.preheader
  %i.1100 = phi i32 [ %inc49, %for.body39.for.body39_crit_edge ], [ 0, %for.body39.preheader ]
  %arrayidx40 = getelementptr ptr, ptr %eps, i32 %i.1100
  %21 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx40, align 4
  %bEndpointAddress.i.i84 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %bEndpointAddress.i.i84 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bEndpointAddress.i.i84, align 1
  %25 = shl i8 %24, 1
  %26 = and i8 %25, 30
  %.lobit.i85 = lshr i8 %24, 7
  %spec.select6.i86 = or i8 %26, %.lobit.i85
  %spec.select.i87 = zext i8 %spec.select6.i86 to i32
  %shl43 = shl nuw i32 1, %spec.select.i87
  %27 = ptrtoint ptr %stream_en_ep to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stream_en_ep, align 4
  %or = or i32 %shl43, %28
  store i32 %or, ptr %stream_en_ep, align 4
  %29 = ptrtoint ptr %num_stream.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %num_stream.i, align 1
  %31 = and i8 %30, 15
  %conv4.i = or i8 %31, %3
  store i8 %conv4.i, ptr %num_stream.i, align 1
  %inc49 = add nuw i32 %i.1100, 1
  %exitcond102.not = icmp eq i32 %inc49, %umax
  br i1 %exitcond102.not, label %for.body39.out_crit_edge, label %for.body39.for.body39_crit_edge

for.body39.for.body39_crit_edge:                  ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body39

for.body39.out_crit_edge:                         ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %for.body39.out_crit_edge, %if.end.i.out_crit_edge, %for.body.out_crit_edge
  %ret_streams.2 = phi i32 [ %ret_streams.1, %for.body39.out_crit_edge ], [ -22, %for.body.out_crit_edge ], [ -22, %if.end.i.out_crit_edge ]
  %32 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hcd_priv.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %call3) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_streams.2, %out ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_free_streams(ptr nocapture noundef %hcd, ptr nocapture noundef readnone %udev, ptr nocapture noundef readonly %eps, i32 noundef %num_eps, i32 noundef %mem_flags) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %0 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd_priv.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_eps)
  %cmp646.not = icmp eq i32 %num_eps, 0
  br i1 %cmp646.not, label %entry.out_crit_edge, label %for.body.lr.ph

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body.lr.ph:                                   ; preds = %entry
  %stream_en_ep = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 3, i32 1
  %2 = ptrtoint ptr %stream_en_ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream_en_ep, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc, %num_eps
  br i1 %exitcond.not, label %for.cond9.preheader, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond9.preheader:                              ; preds = %for.cond
  br i1 %cmp646.not, label %for.cond9.preheader.out_crit_edge, label %for.body12.lr.ph

for.cond9.preheader.out_crit_edge:                ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body12.lr.ph:                                 ; preds = %for.cond9.preheader
  %stream_en_ep17 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 3, i32 1
  %num_stream.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 4
  br label %for.body12

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.047 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %eps, i32 %i.047
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bEndpointAddress.i.i, align 1
  %8 = shl i8 %7, 1
  %9 = and i8 %8, 30
  %.lobit.i = lshr i8 %7, 7
  %spec.select6.i = or i8 %9, %.lobit.i
  %spec.select.i = zext i8 %spec.select6.i to i32
  %shl = shl nuw i32 1, %spec.select.i
  %and = and i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.out_crit_edge, label %for.cond

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.body12.lr.ph
  %i.149 = phi i32 [ 0, %for.body12.lr.ph ], [ %inc23, %for.body12.for.body12_crit_edge ]
  %arrayidx13 = getelementptr ptr, ptr %eps, i32 %i.149
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx13, align 4
  %bEndpointAddress.i.i41 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %bEndpointAddress.i.i41 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bEndpointAddress.i.i41, align 1
  %14 = shl i8 %13, 1
  %15 = and i8 %14, 30
  %.lobit.i42 = lshr i8 %13, 7
  %spec.select6.i43 = or i8 %15, %.lobit.i42
  %spec.select.i44 = zext i8 %spec.select6.i43 to i32
  %shl16 = shl nuw i32 1, %spec.select.i44
  %neg = xor i32 %shl16, -1
  %16 = ptrtoint ptr %stream_en_ep17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stream_en_ep17, align 4
  %and18 = and i32 %17, %neg
  store i32 %and18, ptr %stream_en_ep17, align 4
  %18 = ptrtoint ptr %num_stream.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num_stream.i, align 1
  %or.i = or i8 %19, -16
  store i8 %or.i, ptr %num_stream.i, align 1
  %inc23 = add nuw i32 %i.149, 1
  %exitcond51.not = icmp eq i32 %inc23, %num_eps
  br i1 %exitcond51.not, label %for.body12.out_crit_edge, label %for.body12.for.body12_crit_edge

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body12

for.body12.out_crit_edge:                         ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %for.body12.out_crit_edge, %for.body.out_crit_edge, %for.cond9.preheader.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %for.cond9.preheader.out_crit_edge ], [ 0, %entry.out_crit_edge ], [ 0, %for.body12.out_crit_edge ], [ -22, %for.body.out_crit_edge ]
  %20 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hcd_priv.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %call3) #12
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_is_primary_hcd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dummy_timer(ptr noundef %t) #5 align 64 {
entry:
  %status = alloca i32, align 4
  %setup = alloca %struct.usb_ctrlrequest, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %gadget = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 4
  %speed = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 4, i32 5
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 8
  %switch.tableidx = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 5
  br i1 %4, label %switch.hole_check, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %entry.do.end_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %t, i32 -608
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.57) #15
  br label %do.body7

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %7 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %switch.lobit.not = icmp eq i8 %7, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.dummy_timer, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %do.body7

do.body7:                                         ; preds = %switch.lookup, %do.end
  %total.0 = phi i32 [ 0, %do.end ], [ %switch.load, %switch.lookup ]
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #12
  %udev = getelementptr i8, ptr %t, i32 60
  %9 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udev, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %do.end17, label %if.end

do.end17:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i446 = getelementptr i8, ptr %t, i32 -608
  %11 = ptrtoint ptr %add.ptr.i.i446 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i.i446, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.60) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call10) #12
  br label %cleanup321

if.end:                                           ; preds = %do.body7
  %next_frame_urbp = getelementptr i8, ptr %t, i32 72
  %13 = ptrtoint ptr %next_frame_urbp to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %next_frame_urbp, align 4
  br label %for.body

for.body:                                         ; preds = %if.end24.for.body_crit_edge, %if.end
  %i.0550 = phi i32 [ 0, %if.end ], [ %inc, %if.end24.for.body_crit_edge ]
  %arrayidx = getelementptr [25 x %struct.anon.72], ptr @ep_info, i32 0, i32 %i.0550
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool22.not = icmp eq ptr %15, null
  br i1 %tobool22.not, label %for.body.for.end_crit_edge, label %if.end24

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end24:                                         ; preds = %for.body
  %already_seen = getelementptr %struct.dummy, ptr %1, i32 0, i32 1, i32 %i.0550, i32 5
  %16 = ptrtoint ptr %already_seen to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %already_seen, align 4
  %bf.clear = and i8 %bf.load, -33
  store i8 %bf.clear, ptr %already_seen, align 4
  %inc = add nuw nsw i32 %i.0550, 1
  %exitcond.not = icmp eq i32 %inc, 25
  br i1 %exitcond.not, label %if.end24.for.end_crit_edge, label %if.end24.for.body_crit_edge

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end24.for.end_crit_edge, %for.body.for.end_crit_edge
  %urbp_list = getelementptr i8, ptr %t, i32 64
  %rh_state = getelementptr i8, ptr %t, i32 -4
  %ss_hcd.i = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 11
  %hs_hcd.i = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 10
  %ints_enabled.i = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 9
  %ep.i = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 1
  %parent.i = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 4, i32 11, i32 1
  %callback_usage = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 3
  %driver = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 5
  %stream_en_ep.i.i = getelementptr i8, ptr %t, i32 76
  %add.ptr.i.i449 = getelementptr i8, ptr %t, i32 -608
  %last_io = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 1, i32 0, i32 1
  %ep184 = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 1, i32 0, i32 4
  %17 = ptrtoint ptr %urbp_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %urbp_list, align 4
  %cmp37.not756769 = icmp eq ptr %18, %urbp_list
  br i1 %cmp37.not756769, label %for.end.for.end304_crit_edge, label %for.end.for.body39_crit_edge

for.end.for.body39_crit_edge:                     ; preds = %for.end
  br label %for.body39

for.end.for.end304_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end304

restart.loopexit:                                 ; preds = %if.end287, %cleanup.thread515
  %total.5.ph = phi i32 [ %total.4, %if.end287 ], [ %total.2757, %cleanup.thread515 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #12
  %19 = ptrtoint ptr %urbp_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %urbp_list, align 4
  %cmp37.not756 = icmp eq ptr %20, %urbp_list
  br i1 %cmp37.not756, label %restart.loopexit.for.end304_crit_edge, label %restart.loopexit.for.body39.backedge_crit_edge

restart.loopexit.for.body39.backedge_crit_edge:   ; preds = %restart.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body39.backedge

restart.loopexit.for.end304_crit_edge:            ; preds = %restart.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end304

for.body39:                                       ; preds = %for.body39.backedge, %for.end.for.body39_crit_edge
  %.pn.in760 = phi ptr [ %.pn.in760.be, %for.body39.backedge ], [ %18, %for.end.for.body39_crit_edge ]
  %total.2757 = phi i32 [ %total.2757.be, %for.body39.backedge ], [ %total.0, %for.end.for.body39_crit_edge ]
  %urbp.0763 = getelementptr i8, ptr %.pn.in760, i32 -4
  %21 = ptrtoint ptr %.pn.in760 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn766 = load ptr, ptr %.pn.in760, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #12
  %22 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -115, ptr %status, align 4
  %23 = ptrtoint ptr %next_frame_urbp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %next_frame_urbp, align 4
  %cmp42 = icmp eq ptr %urbp.0763, %24
  br i1 %cmp42, label %cleanup292.thread, label %if.end45

cleanup292.thread:                                ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #12
  br label %for.end304

if.end45:                                         ; preds = %for.body39
  %25 = ptrtoint ptr %urbp.0763 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %urbp.0763, align 4
  %unlinked = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %unlinked to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %unlinked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool47.not = icmp eq i32 %28, 0
  br i1 %tobool47.not, label %if.else, label %if.end45.return_urb_crit_edge

if.end45.return_urb_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %return_urb

if.else:                                          ; preds = %if.end45
  %29 = ptrtoint ptr %rh_state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rh_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp49.not = icmp ne i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %total.2757)
  %cmp54 = icmp slt i32 %total.2757, 1
  %or.cond435 = select i1 %cmp49.not, i1 true, i1 %cmp54
  br i1 %or.cond435, label %if.else.cleanup292_crit_edge, label %if.end57

if.else.cleanup292_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup292

if.end57:                                         ; preds = %if.else
  %pipe = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 10
  %31 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pipe, align 4
  %shr = lshr i32 %32, 15
  %33 = trunc i32 %shr to i8
  %conv58 = and i8 %33, 15
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 13
  %34 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %transfer_flags.i, align 4
  %36 = lshr i32 %35, 2
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, -128
  %39 = or i8 %38, %conv58
  %40 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %41)
  %cmp.i = icmp eq i32 %41, 5
  %cond.in.i = select i1 %cmp.i, ptr %ss_hcd.i, ptr %hs_hcd.i
  %42 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %port_status.i = getelementptr inbounds %struct.dummy_hcd, ptr %cond.i, i32 0, i32 3
  %43 = ptrtoint ptr %port_status.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port_status.i, align 4
  %and.i447 = and i32 %44, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i447)
  %cmp1.i = icmp eq i32 %and.i447, 3
  br i1 %cmp1.i, label %if.end.i, label %if.end57.do.body68_crit_edge

if.end57.do.body68_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body68

if.end.i:                                         ; preds = %if.end57
  %45 = ptrtoint ptr %ints_enabled.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load.i = load i8, ptr %ints_enabled.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.i.do.body68_crit_edge, label %if.end3.i

if.end.i.do.body68_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body68

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv58)
  %cmp5.i = icmp eq i8 %conv58, 0
  br i1 %cmp5.i, label %if.end3.i.find_endpoint.exit_crit_edge, label %if.end3.i.for.body.i_crit_edge

if.end3.i.for.body.i_crit_edge:                   ; preds = %if.end3.i
  br label %for.body.i

if.end3.i.find_endpoint.exit_crit_edge:           ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_endpoint.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end3.i.for.body.i_crit_edge
  %i.040.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %if.end3.i.for.body.i_crit_edge ]
  %desc.i = getelementptr %struct.dummy, ptr %1, i32 0, i32 1, i32 %i.040.i, i32 3
  %46 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %desc.i, align 4
  %tobool14.not.i = icmp eq ptr %47, null
  br i1 %tobool14.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end16.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end16.i:                                       ; preds = %for.body.i
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %39)
  %cmp20.i = icmp eq i8 %49, %39
  br i1 %cmp20.i, label %cleanup24.loopexit.split.loop.exit38.i, label %if.end16.i.for.inc.i_crit_edge

if.end16.i.for.inc.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end16.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.040.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 25
  br i1 %exitcond.not.i, label %for.inc.i.do.body68_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.do.body68_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body68

cleanup24.loopexit.split.loop.exit38.i:           ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx13.le.i = getelementptr %struct.dummy, ptr %1, i32 0, i32 1, i32 %i.040.i
  br label %find_endpoint.exit

find_endpoint.exit:                               ; preds = %cleanup24.loopexit.split.loop.exit38.i, %if.end3.i.find_endpoint.exit_crit_edge
  %retval.2.i = phi ptr [ %arrayidx13.le.i, %cleanup24.loopexit.split.loop.exit38.i ], [ %ep.i, %if.end3.i.find_endpoint.exit_crit_edge ]
  %tobool66.not = icmp eq ptr %retval.2.i, null
  br i1 %tobool66.not, label %find_endpoint.exit.do.body68_crit_edge, label %if.end81

find_endpoint.exit.do.body68_crit_edge:           ; preds = %find_endpoint.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body68

do.body68:                                        ; preds = %find_endpoint.exit.do.body68_crit_edge, %for.inc.i.do.body68_crit_edge, %if.end.i.do.body68_crit_edge, %if.end57.do.body68_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dummy_timer.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dummy_timer, %do.end80)) #12
          to label %if.then76 [label %do.end80], !srcloc !302

if.then76:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %add.ptr.i.i449 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i.i449, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dummy_timer.__UNIQUE_ID_ddebug261, ptr noundef %51, ptr noundef nonnull @.str.62, ptr noundef %26) #12
  br label %do.end80

do.end80:                                         ; preds = %if.then76, %do.body68
  %52 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -71, ptr %status, align 4
  br label %return_urb

if.end81:                                         ; preds = %find_endpoint.exit
  %already_seen82 = getelementptr inbounds %struct.dummy_ep, ptr %retval.2.i, i32 0, i32 5
  %53 = ptrtoint ptr %already_seen82 to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load83 = load i8, ptr %already_seen82, align 4
  %54 = and i8 %bf.load83, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool85.not = icmp eq i8 %54, 0
  br i1 %tobool85.not, label %if.end87, label %if.end81.cleanup292_crit_edge

if.end81.cleanup292_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup292

if.end87:                                         ; preds = %if.end81
  %bf.set91 = or i8 %bf.load83, 32
  %55 = ptrtoint ptr %already_seen82 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %bf.set91, ptr %already_seen82, align 4
  %cmp94 = icmp eq ptr %retval.2.i, %ep.i
  br i1 %cmp94, label %land.lhs.true, label %if.end102.thread

land.lhs.true:                                    ; preds = %if.end87
  %error_count = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 26
  %56 = ptrtoint ptr %error_count to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %error_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool96.not = icmp eq i32 %57, 0
  br i1 %tobool96.not, label %land.lhs.true.if.end102_crit_edge, label %if.then97

land.lhs.true.if.end102_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end102

if.then97:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set100 = or i8 %bf.load83, 48
  %58 = ptrtoint ptr %already_seen82 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %bf.set100, ptr %already_seen82, align 4
  %59 = ptrtoint ptr %error_count to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %error_count, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then97, %land.lhs.true.if.end102_crit_edge
  %60 = ptrtoint ptr %already_seen82 to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load103 = load i8, ptr %already_seen82, align 4
  %61 = and i8 %bf.load103, -112
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %61)
  %62 = icmp eq i8 %61, -128
  br i1 %62, label %if.end102.do.body115_crit_edge, label %land.lhs.true141.critedge

if.end102.do.body115_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body115

if.end102.thread:                                 ; preds = %if.end87
  %63 = ptrtoint ptr %already_seen82 to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load103499 = load i8, ptr %already_seen82, align 4
  %64 = and i8 %bf.load103499, -112
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %64)
  %65 = icmp eq i8 %64, -128
  br i1 %65, label %if.end102.thread.do.body115_crit_edge, label %if.end102.thread.if.end250_crit_edge

if.end102.thread.if.end250_crit_edge:             ; preds = %if.end102.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end250

if.end102.thread.do.body115_crit_edge:            ; preds = %if.end102.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body115

do.body115:                                       ; preds = %if.end102.thread.do.body115_crit_edge, %if.end102.do.body115_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dummy_timer.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dummy_timer, %do.end135)) #12
          to label %if.then129 [label %do.end135], !srcloc !302

if.then129:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %add.ptr.i.i449 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr.i.i449, align 8
  %name132 = getelementptr inbounds %struct.dummy_ep, ptr %retval.2.i, i32 0, i32 4, i32 1
  %68 = ptrtoint ptr %name132 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %name132, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dummy_timer.__UNIQUE_ID_ddebug262, ptr noundef %67, ptr noundef nonnull @.str.63, ptr noundef %69, ptr noundef %26) #12
  br label %do.end135

do.end135:                                        ; preds = %if.then129, %do.body115
  %70 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -32, ptr %status, align 4
  br label %return_urb

land.lhs.true141.critedge:                        ; preds = %if.end102
  %71 = and i8 %bf.load103, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool113.not = icmp eq i8 %71, 0
  br i1 %tobool113.not, label %land.lhs.true141.critedge.if.end250_crit_edge, label %if.then148

land.lhs.true141.critedge.if.end250_crit_edge:    ; preds = %land.lhs.true141.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end250

if.then148:                                       ; preds = %land.lhs.true141.critedge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %setup) #12
  %setup_packet = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 21
  %72 = ptrtoint ptr %setup to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 -1, ptr %setup, align 8
  %73 = ptrtoint ptr %setup_packet to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %setup_packet, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 8)
  %76 = load i64, ptr %74, align 1
  store i64 %76, ptr %setup, align 8
  %77 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ep.i, align 4
  %cmp156.not = icmp eq ptr %78, %ep.i
  br i1 %cmp156.not, label %for.end197, label %for.body160

for.body160:                                      ; preds = %if.then148
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %78) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body160.list_del_init.exit_crit_edge

for.body160.list_del_init.exit_crit_edge:         ; preds = %for.body160
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body160
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i.i, align 4
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %78, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev1.i.i.i, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %82, ptr %80, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body160.list_del_init.exit_crit_edge
  %85 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %78, ptr %78, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %78, ptr %prev.i3.i, align 4
  %req162 = getelementptr inbounds %struct.dummy_request, ptr %78, i32 0, i32 1
  %status163 = getelementptr inbounds %struct.dummy_request, ptr %78, i32 0, i32 1, i32 11
  %87 = ptrtoint ptr %status163 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -75, ptr %status163, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dummy_timer.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dummy_timer, %cleanup.thread515)) #12
          to label %if.then178 [label %cleanup.thread515], !srcloc !302

if.then178:                                       ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %parent.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dummy_timer.__UNIQUE_ID_ddebug263, ptr noundef %89, ptr noundef nonnull @.str.64, ptr noundef %78) #12
  br label %cleanup.thread515

cleanup.thread515:                                ; preds = %if.then178, %list_del_init.exit
  call void @_raw_spin_unlock(ptr noundef %1) #12
  call void @usb_gadget_giveback_request(ptr noundef %ep184, ptr noundef %req162) #12
  call void @_raw_spin_lock(ptr noundef %1) #12
  %90 = ptrtoint ptr %already_seen82 to i32
  call void @__asan_load1_noabort(i32 %90)
  %bf.load188 = load i8, ptr %already_seen82, align 4
  %bf.clear189 = and i8 %bf.load188, -33
  store i8 %bf.clear189, ptr %already_seen82, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %setup) #12
  br label %restart.loopexit

for.end197:                                       ; preds = %if.then148
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %91 = load volatile i32, ptr @jiffies, align 128
  %92 = ptrtoint ptr %last_io to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %last_io, align 4
  %bf.clear204 = and i8 %bf.load103, 111
  %93 = ptrtoint ptr %already_seen82 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %bf.clear204, ptr %already_seen82, align 4
  %call206 = call fastcc i32 @handle_control_request(ptr noundef %add.ptr, ptr noundef %26, ptr noundef nonnull %setup, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call206)
  %cmp207 = icmp sgt i32 %call206, 0
  br i1 %cmp207, label %if.then209, label %if.end221

if.then209:                                       ; preds = %for.end197
  %94 = ptrtoint ptr %callback_usage to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %callback_usage, align 4
  %inc210 = add i32 %95, 1
  store i32 %inc210, ptr %callback_usage, align 4
  call void @_raw_spin_unlock(ptr noundef %1) #12
  %96 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %driver, align 8
  %setup212 = getelementptr inbounds %struct.usb_gadget_driver, ptr %97, i32 0, i32 4
  %98 = ptrtoint ptr %setup212 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %setup212, align 4
  %call214 = call i32 %99(ptr noundef %gadget, ptr noundef nonnull %setup) #12
  call void @_raw_spin_lock(ptr noundef %1) #12
  %100 = ptrtoint ptr %callback_usage to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %callback_usage, align 4
  %dec = add i32 %101, -1
  store i32 %dec, ptr %callback_usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call214)
  %cmp217 = icmp sgt i32 %call214, -1
  br i1 %cmp217, label %cleanup, label %if.then209.if.then224_crit_edge

if.then209.if.then224_crit_edge:                  ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then224

if.end221:                                        ; preds = %for.end197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call206)
  %cmp222 = icmp slt i32 %call206, 0
  br i1 %cmp222, label %if.end221.if.then224_crit_edge, label %if.end221.cleanup.thread_crit_edge

if.end221.cleanup.thread_crit_edge:               ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end221.if.then224_crit_edge:                   ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then224

if.then224:                                       ; preds = %if.end221.if.then224_crit_edge, %if.then209.if.then224_crit_edge
  %value.0510 = phi i32 [ %call206, %if.end221.if.then224_crit_edge ], [ %call214, %if.then209.if.then224_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %value.0510)
  %cmp225.not = icmp eq i32 %value.0510, -95
  br i1 %cmp225.not, label %if.then224.if.end247_crit_edge, label %do.body228

if.then224.if.end247_crit_edge:                   ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end247

do.body228:                                       ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dummy_timer.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dummy_timer, %if.end247)) #12
          to label %if.then242 [label %if.end247], !srcloc !302

if.then242:                                       ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #14
  %102 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %parent.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dummy_timer.__UNIQUE_ID_ddebug264, ptr noundef %103, ptr noundef nonnull @.str.65, i32 noundef %value.0510) #12
  br label %if.end247

if.end247:                                        ; preds = %if.then242, %do.body228, %if.then224.if.end247_crit_edge
  %104 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 -32, ptr %status, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 20
  %105 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %actual_length, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end247, %if.end221.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %setup) #12
  br label %return_urb

cleanup:                                          ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %setup) #12
  br label %treat_control_like_bulk

if.end250:                                        ; preds = %land.lhs.true141.critedge.if.end250_crit_edge, %if.end102.thread.if.end250_crit_edge
  %106 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %pipe, align 4
  %shr252 = lshr i32 %107, 30
  %108 = zext i32 %shr252 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %shr252, label %if.end250.treat_control_like_bulk_crit_edge [
    i32 0, label %sw.epilog271.thread
    i32 1, label %sw.bb259
  ]

if.end250.treat_control_like_bulk_crit_edge:      ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #14
  br label %treat_control_like_bulk

sw.epilog271.thread:                              ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #14
  %109 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 -22, ptr %status, align 4
  br label %return_urb

sw.bb259:                                         ; preds = %if.end250
  %maxpacket.i454 = getelementptr inbounds %struct.dummy_ep, ptr %retval.2.i, i32 0, i32 4, i32 7
  %110 = ptrtoint ptr %maxpacket.i454 to i32
  call void @__asan_loadN_noabort(i32 %110, i32 7)
  %bf.load.i455 = load i56, ptr %maxpacket.i454, align 2
  %bf.lshr.i456 = lshr i56 %bf.load.i455, 40
  %bf.cast.i457 = trunc i56 %bf.lshr.i456 to i32
  %111 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %speed, align 8
  %113 = zext i32 %112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %112, label %sw.bb259.periodic_bytes.exit472_crit_edge [
    i32 3, label %if.end.thread.i464
    i32 5, label %if.then6.i468
  ]

sw.bb259.periodic_bytes.exit472_crit_edge:        ; preds = %sw.bb259
  call void @__sanitizer_cov_trace_pc() #14
  br label %periodic_bytes.exit472

if.end.thread.i464:                               ; preds = %sw.bb259
  call void @__sanitizer_cov_trace_pc() #14
  %desc.i459 = getelementptr inbounds %struct.dummy_ep, ptr %retval.2.i, i32 0, i32 3
  %114 = ptrtoint ptr %desc.i459 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %desc.i459, align 4
  %wMaxPacketSize.i.i460 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %115, i32 0, i32 4
  %116 = ptrtoint ptr %wMaxPacketSize.i.i460 to i32
  call void @__asan_loadN_noabort(i32 %116, i32 2)
  %117 = load i16, ptr %wMaxPacketSize.i.i460, align 1
  %118 = and i16 %117, 24
  %119 = add nuw nsw i16 %118, 8
  %mul.i461 = zext i16 %119 to i32
  %mul2.i462 = mul nuw nsw i32 %mul.i461, %bf.cast.i457
  %add.i463 = add nuw nsw i32 %mul2.i462, %bf.cast.i457
  br label %periodic_bytes.exit472

if.then6.i468:                                    ; preds = %sw.bb259
  %desc7.i465 = getelementptr inbounds %struct.dummy_ep, ptr %retval.2.i, i32 0, i32 3
  %120 = ptrtoint ptr %desc7.i465 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %desc7.i465, align 4
  %bmAttributes.i.i466 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %121, i32 0, i32 3
  %122 = ptrtoint ptr %bmAttributes.i.i466 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %bmAttributes.i.i466, align 1
  %124 = and i8 %123, 3
  %and.i.i467 = zext i8 %124 to i32
  %125 = zext i32 %and.i.i467 to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %and.i.i467, label %if.then6.i468.periodic_bytes.exit472_crit_edge [
    i32 1, label %sw.bb.i469
    i32 3, label %sw.bb9.i470
  ]

if.then6.i468.periodic_bytes.exit472_crit_edge:   ; preds = %if.then6.i468
  call void @__sanitizer_cov_trace_pc() #14
  br label %periodic_bytes.exit472

sw.bb.i469:                                       ; preds = %if.then6.i468
  call void @__sanitizer_cov_trace_pc() #14
  br label %periodic_bytes.exit472

sw.bb9.i470:                                      ; preds = %if.then6.i468
  call void @__sanitizer_cov_trace_pc() #14
  br label %periodic_bytes.exit472

periodic_bytes.exit472:                           ; preds = %sw.bb9.i470, %sw.bb.i469, %if.then6.i468.periodic_bytes.exit472_crit_edge, %if.end.thread.i464, %sw.bb259.periodic_bytes.exit472_crit_edge
  %limit.1.i471 = phi i32 [ %bf.cast.i457, %if.then6.i468.periodic_bytes.exit472_crit_edge ], [ 24576, %sw.bb9.i470 ], [ 393216, %sw.bb.i469 ], [ %add.i463, %if.end.thread.i464 ], [ %bf.cast.i457, %sw.bb259.periodic_bytes.exit472_crit_edge ]
  %126 = call i32 @llvm.smax.i32(i32 %total.2757, i32 %limit.1.i471)
  br label %treat_control_like_bulk

treat_control_like_bulk:                          ; preds = %periodic_bytes.exit472, %if.end250.treat_control_like_bulk_crit_edge, %cleanup
  %limit.3 = phi i32 [ 65536, %cleanup ], [ %total.2757, %if.end250.treat_control_like_bulk_crit_edge ], [ %126, %periodic_bytes.exit472 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %127 = load volatile i32, ptr @jiffies, align 128
  %last_io269 = getelementptr inbounds %struct.dummy_ep, ptr %retval.2.i, i32 0, i32 1
  %128 = ptrtoint ptr %last_io269 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %last_io269, align 4
  %129 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %add.ptr, align 4
  %131 = ptrtoint ptr %retval.2.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %req.0276285.i = load ptr, ptr %retval.2.i, align 4
  %cmp.not277286.i = icmp eq ptr %req.0276285.i, %retval.2.i
  br i1 %cmp.not277286.i, label %treat_control_like_bulk.sw.epilog271_crit_edge, label %for.body.lr.ph.lr.ph.i

treat_control_like_bulk.sw.epilog271_crit_edge:   ; preds = %treat_control_like_bulk
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog271

for.body.lr.ph.lr.ph.i:                           ; preds = %treat_control_like_bulk
  %ep.i.i = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 9
  %stream_id.i = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 11
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 19
  %actual_length.i = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 20
  %maxpacket.i473 = getelementptr inbounds %struct.dummy_ep, ptr %retval.2.i, i32 0, i32 4, i32 7
  %hcpriv.i.i = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 2
  %num_sgs.i.i = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 18
  %sg.i.i = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 16
  %transfer_buffer.i.i = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 14
  %ep136.i = getelementptr inbounds %struct.dummy_ep, ptr %retval.2.i, i32 0, i32 4
  br label %for.body.i474

for.body.i474:                                    ; preds = %for.body.i474.backedge, %for.body.lr.ph.lr.ph.i
  %req.0280.i = phi ptr [ %req.0276285.i, %for.body.lr.ph.lr.ph.i ], [ %req.0280.i.be, %for.body.i474.backedge ]
  %limit.addr.1279.i = phi i32 [ %limit.3, %for.body.lr.ph.lr.ph.i ], [ %limit.addr.1279.i.be, %for.body.i474.backedge ]
  %sent.1278.i = phi i32 [ 0, %for.body.lr.ph.lr.ph.i ], [ %sent.1278.i.be, %for.body.i474.backedge ]
  %132 = ptrtoint ptr %ep.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ep.i.i, align 4
  %bmAttributes.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %133, i32 0, i32 3
  %134 = ptrtoint ptr %bmAttributes.i.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %bmAttributes.i.i.i, align 1
  %136 = and i8 %135, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %136)
  %cmp.i.not.i.i = icmp eq i8 %136, 2
  br i1 %cmp.i.not.i.i, label %dummy_ep_stream_en.exit.i, label %for.body.i474.if.end8.i_crit_edge

for.body.i474.if.end8.i_crit_edge:                ; preds = %for.body.i474
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

dummy_ep_stream_en.exit.i:                        ; preds = %for.body.i474
  %bEndpointAddress.i.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %133, i32 0, i32 2
  %137 = ptrtoint ptr %bEndpointAddress.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %bEndpointAddress.i.i.i.i, align 1
  %139 = shl i8 %138, 1
  %140 = and i8 %139, 30
  %.lobit.i.i.i = lshr i8 %138, 7
  %spec.select6.i.i.i = or i8 %140, %.lobit.i.i.i
  %spec.select.i.i.i = zext i8 %spec.select6.i.i.i to i32
  %shl.i.i = shl nuw i32 1, %spec.select.i.i.i
  %141 = ptrtoint ptr %stream_en_ep.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %stream_en_ep.i.i, align 4
  %and.i.i475 = and i32 %shl.i.i, %142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i475)
  %tobool.not.i476 = icmp eq i32 %and.i.i475, 0
  br i1 %tobool.not.i476, label %dummy_ep_stream_en.exit.i.if.end8.i_crit_edge, label %if.then.i

dummy_ep_stream_en.exit.i.if.end8.i_crit_edge:    ; preds = %dummy_ep_stream_en.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

if.then.i:                                        ; preds = %dummy_ep_stream_en.exit.i
  %143 = ptrtoint ptr %stream_id.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %stream_id.i, align 4
  %stream_id5.i = getelementptr inbounds %struct.dummy_request, ptr %req.0280.i, i32 0, i32 1, i32 6
  %145 = ptrtoint ptr %stream_id5.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %bf.load.i477 = load i32, ptr %stream_id5.i, align 4
  %bf.lshr.i478 = lshr i32 %bf.load.i477, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %bf.lshr.i478)
  %cmp6.not.i = icmp eq i32 %144, %bf.lshr.i478
  br i1 %cmp6.not.i, label %if.then.i.if.end8.i_crit_edge, label %if.then.i.for.inc.i483_crit_edge

if.then.i.for.inc.i483_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i483

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then.i.if.end8.i_crit_edge, %dummy_ep_stream_en.exit.i.if.end8.i_crit_edge, %for.body.i474.if.end8.i_crit_edge
  %146 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %transfer_buffer_length.i, align 4
  %148 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %actual_length.i, align 4
  %sub.i = sub i32 %147, %149
  %req9.i = getelementptr inbounds %struct.dummy_request, ptr %req.0280.i, i32 0, i32 1
  %length.i = getelementptr inbounds %struct.dummy_request, ptr %req.0280.i, i32 0, i32 1, i32 1
  %150 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %length.i, align 4
  %actual.i = getelementptr inbounds %struct.dummy_request, ptr %req.0280.i, i32 0, i32 1, i32 12
  %152 = ptrtoint ptr %actual.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %actual.i, align 4
  %sub11.i = sub i32 %151, %153
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub11.i)
  %cmp13.i = icmp ult i32 %sub.i, %sub11.i
  %154 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %sub11.i) #12
  %155 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %transfer_flags.i, align 4
  %and.i232.i = lshr i32 %156, 9
  %and.lobit.i.i = and i32 %and.i232.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %cmp15.i = icmp eq i32 %154, 0
  br i1 %cmp15.i, label %if.end8.i.if.then75.i_crit_edge, label %if.else.i, !prof !306

if.end8.i.if.then75.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then75.i

if.else.i:                                        ; preds = %if.end8.i
  %157 = ptrtoint ptr %maxpacket.i473 to i32
  call void @__asan_loadN_noabort(i32 %157, i32 7)
  %bf.load21.i = load i56, ptr %maxpacket.i473, align 2
  %bf.lshr22.i = lshr i56 %bf.load21.i, 40
  %bf.cast.i479 = trunc i56 %bf.lshr22.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %limit.addr.1279.i, i32 %bf.cast.i479)
  %cmp23.i = icmp slt i32 %limit.addr.1279.i, %bf.cast.i479
  call void @__sanitizer_cov_trace_cmp4(i32 %limit.addr.1279.i, i32 %154)
  %cmp24.i = icmp ult i32 %limit.addr.1279.i, %154
  %or.cond.i = select i1 %cmp23.i, i1 %cmp24.i, i1 false
  br i1 %or.cond.i, label %if.else.i.sw.epilog271_crit_edge, label %if.end26.i

if.else.i.sw.epilog271_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog271

if.end26.i:                                       ; preds = %if.else.i
  %158 = call i32 @llvm.umin.i32(i32 %154, i32 %limit.addr.1279.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %cmp33.i = icmp eq i32 %158, 0
  br i1 %cmp33.i, label %if.end26.i.sw.epilog271_crit_edge, label %if.end35.i

if.end26.i.sw.epilog271_crit_edge:                ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog271

if.end35.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_cmp4(i32 %158, i32 %bf.cast.i479)
  %cmp41.not.i = icmp ult i32 %158, %bf.cast.i479
  br i1 %cmp41.not.i, label %if.end35.i.if.end59.i_crit_edge, label %if.then42.i

if.end35.i.if.end59.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59.i

if.then42.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  %rem.i = urem i32 %158, %bf.cast.i479
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool48.not.i = icmp ne i32 %rem.i, 0
  %spec.select.i = zext i1 %tobool48.not.i to i32
  %sub57.i = sub i32 %158, %rem.i
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then42.i, %if.end35.i.if.end59.i_crit_edge
  %len.0.i = phi i32 [ %sub57.i, %if.then42.i ], [ %158, %if.end35.i.if.end59.i_crit_edge ]
  %rescan.1.i = phi i32 [ %spec.select.i, %if.then42.i ], [ 0, %if.end35.i.if.end59.i_crit_edge ]
  %159 = ptrtoint ptr %hcpriv.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %hcpriv.i.i, align 4
  %miter1.i.i = getelementptr inbounds %struct.urbp, ptr %160, i32 0, i32 2
  %161 = ptrtoint ptr %req9.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %req9.i, align 4
  %add.ptr.i.i480 = getelementptr i8, ptr %162, i32 %153
  %163 = ptrtoint ptr %num_sgs.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %num_sgs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool.not.i.i = icmp eq i32 %164, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end7.i.i

if.then.i.i:                                      ; preds = %if.end59.i
  %165 = ptrtoint ptr %transfer_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %transfer_buffer.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %166, i32 %149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.lobit.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.lobit.i.i, 0
  br i1 %tobool5.not.i.i, label %if.else.i.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %167 = call ptr @memcpy(ptr %add.ptr4.i.i, ptr %add.ptr.i.i480, i32 %len.0.i)
  br label %dummy_perform_transfer.exit.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %168 = call ptr @memcpy(ptr %add.ptr.i.i480, ptr %add.ptr4.i.i, i32 %len.0.i)
  br label %dummy_perform_transfer.exit.i

if.end7.i.i:                                      ; preds = %if.end59.i
  %miter_started.i.i = getelementptr inbounds %struct.urbp, ptr %160, i32 0, i32 3
  %169 = ptrtoint ptr %miter_started.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %miter_started.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool8.not.i.i = icmp eq i32 %170, 0
  br i1 %tobool8.not.i.i, label %if.then9.i.i, label %if.end7.i.i.if.end17.i.i_crit_edge

if.end7.i.i.if.end17.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i.i

if.then9.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.lobit.i.i)
  %tobool10.not.i.i = icmp eq i32 %and.lobit.i.i, 0
  %..i.i = select i1 %tobool10.not.i.i, i32 5, i32 3
  %171 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %sg.i.i, align 4
  call void @sg_miter_start(ptr noundef %miter1.i.i, ptr noundef %172, i32 noundef %164, i32 noundef %..i.i) #12
  %173 = ptrtoint ptr %miter_started.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 1, ptr %miter_started.i.i, align 4
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then9.i.i, %if.end7.i.i.if.end17.i.i_crit_edge
  %call18.i.i = call zeroext i1 @sg_miter_next(ptr noundef %miter1.i.i) #12
  br i1 %call18.i.i, label %do.body59.preheader.i.i, label %land.end.i.i

do.body59.preheader.i.i:                          ; preds = %if.end17.i.i
  %addr.i.i = getelementptr inbounds %struct.urbp, ptr %160, i32 0, i32 2, i32 1
  %length.i.i = getelementptr inbounds %struct.urbp, ptr %160, i32 0, i32 2, i32 2
  %consumed.i.i = getelementptr inbounds %struct.urbp, ptr %160, i32 0, i32 2, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.lobit.i.i)
  %tobool63.not.i.i = icmp eq i32 %and.lobit.i.i, 0
  br label %do.body59.i.i

land.end.i.i:                                     ; preds = %if.end17.i.i
  %.b183.i.i = load i1, ptr @dummy_perform_transfer.__already_done, align 1
  br i1 %.b183.i.i, label %land.end.i.i.dummy_perform_transfer.exit.thread.i_crit_edge, label %land.end.i.i.dummy_perform_transfer.exit.thread.sink.split.i_crit_edge, !prof !303

land.end.i.i.dummy_perform_transfer.exit.thread.sink.split.i_crit_edge: ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dummy_perform_transfer.exit.thread.sink.split.i

land.end.i.i.dummy_perform_transfer.exit.thread.i_crit_edge: ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dummy_perform_transfer.exit.thread.i

do.body59.i.i:                                    ; preds = %if.end126.i.i, %do.body59.preheader.i.i
  %trans.0.i.i = phi i32 [ %add.i.i, %if.end126.i.i ], [ 0, %do.body59.preheader.i.i ]
  %rbuf.0.i.i = phi ptr [ %add.ptr127.i.i, %if.end126.i.i ], [ %add.ptr.i.i480, %do.body59.preheader.i.i ]
  %len.addr.0.i.i = phi i32 [ %sub.i.i, %if.end126.i.i ], [ %len.0.i, %do.body59.preheader.i.i ]
  %174 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %addr.i.i, align 4
  %176 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %length.i.i, align 4
  %178 = call i32 @llvm.umin.i32(i32 %len.addr.0.i.i, i32 %177) #12
  %179 = ptrtoint ptr %consumed.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %consumed.i.i, align 4
  %add.i.i = add i32 %178, %trans.0.i.i
  br i1 %tobool63.not.i.i, label %if.else65.i.i, label %if.then64.i.i

if.then64.i.i:                                    ; preds = %do.body59.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %180 = call ptr @memcpy(ptr %175, ptr %rbuf.0.i.i, i32 %178)
  br label %if.end66.i.i

if.else65.i.i:                                    ; preds = %do.body59.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %181 = call ptr @memcpy(ptr %rbuf.0.i.i, ptr %175, i32 %178)
  br label %if.end66.i.i

if.end66.i.i:                                     ; preds = %if.else65.i.i, %if.then64.i.i
  %sub.i.i = sub i32 %len.addr.0.i.i, %178
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %tobool67.not.i.i = icmp eq i32 %sub.i.i, 0
  br i1 %tobool67.not.i.i, label %do.end129.i.i, label %if.end69.i.i

if.end69.i.i:                                     ; preds = %if.end66.i.i
  %call70.i.i = call zeroext i1 @sg_miter_next(ptr noundef %miter1.i.i) #12
  br i1 %call70.i.i, label %if.end126.i.i, label %land.end84.i.i

land.end84.i.i:                                   ; preds = %if.end69.i.i
  %.b181182.i.i = load i1, ptr @dummy_perform_transfer.__already_done.68, align 1
  br i1 %.b181182.i.i, label %land.end84.i.i.dummy_perform_transfer.exit.thread.i_crit_edge, label %land.end84.i.i.dummy_perform_transfer.exit.thread.sink.split.i_crit_edge, !prof !303

land.end84.i.i.dummy_perform_transfer.exit.thread.sink.split.i_crit_edge: ; preds = %land.end84.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dummy_perform_transfer.exit.thread.sink.split.i

land.end84.i.i.dummy_perform_transfer.exit.thread.i_crit_edge: ; preds = %land.end84.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dummy_perform_transfer.exit.thread.i

if.end126.i.i:                                    ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr127.i.i = getelementptr i8, ptr %rbuf.0.i.i, i32 %178
  br label %do.body59.i.i

do.end129.i.i:                                    ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @sg_miter_stop(ptr noundef %miter1.i.i) #12
  br label %dummy_perform_transfer.exit.i

dummy_perform_transfer.exit.thread.sink.split.i:  ; preds = %land.end84.i.i.dummy_perform_transfer.exit.thread.sink.split.i_crit_edge, %land.end.i.i.dummy_perform_transfer.exit.thread.sink.split.i_crit_edge
  %dummy_perform_transfer.__already_done.sink.i = phi ptr [ @dummy_perform_transfer.__already_done, %land.end.i.i.dummy_perform_transfer.exit.thread.sink.split.i_crit_edge ], [ @dummy_perform_transfer.__already_done.68, %land.end84.i.i.dummy_perform_transfer.exit.thread.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ 1368, %land.end.i.i.dummy_perform_transfer.exit.thread.sink.split.i_crit_edge ], [ 1387, %land.end84.i.i.dummy_perform_transfer.exit.thread.sink.split.i_crit_edge ]
  %182 = ptrtoint ptr %dummy_perform_transfer.__already_done.sink.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i1 true, ptr %dummy_perform_transfer.__already_done.sink.i, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #12
  br label %dummy_perform_transfer.exit.thread.i

dummy_perform_transfer.exit.thread.i:             ; preds = %dummy_perform_transfer.exit.thread.sink.split.i, %land.end84.i.i.dummy_perform_transfer.exit.thread.i_crit_edge, %land.end.i.i.dummy_perform_transfer.exit.thread.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %183 = load volatile i32, ptr @jiffies, align 128
  %184 = ptrtoint ptr %last_io269 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %last_io269, align 4
  br label %if.then62.i

dummy_perform_transfer.exit.i:                    ; preds = %do.end129.i.i, %if.else.i.i, %if.then6.i.i
  %retval.0.i233.i = phi i32 [ %add.i.i, %do.end129.i.i ], [ %len.0.i, %if.else.i.i ], [ %len.0.i, %if.then6.i.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %185 = load volatile i32, ptr @jiffies, align 128
  %186 = ptrtoint ptr %last_io269 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %185, ptr %last_io269, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i233.i)
  %cmp61.i = icmp slt i32 %retval.0.i233.i, 0
  br i1 %cmp61.i, label %dummy_perform_transfer.exit.i.if.then62.i_crit_edge, label %if.else65.i

dummy_perform_transfer.exit.i.if.then62.i_crit_edge: ; preds = %dummy_perform_transfer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then62.i

if.then62.i:                                      ; preds = %dummy_perform_transfer.exit.i.if.then62.i_crit_edge, %dummy_perform_transfer.exit.thread.i
  %retval.0.i233239.i = phi i32 [ -22, %dummy_perform_transfer.exit.thread.i ], [ %retval.0.i233.i, %dummy_perform_transfer.exit.i.if.then62.i_crit_edge ]
  %status64.i = getelementptr inbounds %struct.dummy_request, ptr %req.0280.i, i32 0, i32 1, i32 11
  %187 = ptrtoint ptr %status64.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %retval.0.i233239.i, ptr %status64.i, align 4
  br label %if.end73.i

if.else65.i:                                      ; preds = %dummy_perform_transfer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub66.i = sub i32 %limit.addr.1279.i, %retval.0.i233.i
  %add.i481 = add i32 %retval.0.i233.i, %sent.1278.i
  %188 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %actual_length.i, align 4
  %add68.i = add i32 %189, %retval.0.i233.i
  store i32 %add68.i, ptr %actual_length.i, align 4
  %190 = ptrtoint ptr %actual.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %actual.i, align 4
  %add71.i = add i32 %191, %retval.0.i233.i
  store i32 %add71.i, ptr %actual.i, align 4
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.else65.i, %if.then62.i
  %sent.2.i = phi i32 [ %sent.1278.i, %if.then62.i ], [ %add.i481, %if.else65.i ]
  %limit.addr.2.i = phi i32 [ %limit.addr.1279.i, %if.then62.i ], [ %sub66.i, %if.else65.i ]
  br i1 %cmp41.not.i, label %if.end73.i.if.then75.i_crit_edge, label %if.else100.i

if.end73.i.if.then75.i_crit_edge:                 ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then75.i

if.then75.i:                                      ; preds = %if.end73.i.if.then75.i_crit_edge, %if.end8.i.if.then75.i_crit_edge
  %limit.addr.2249.i = phi i32 [ %limit.addr.2.i, %if.end73.i.if.then75.i_crit_edge ], [ %limit.addr.1279.i, %if.end8.i.if.then75.i_crit_edge ]
  %sent.2247.i = phi i32 [ %sent.2.i, %if.end73.i.if.then75.i_crit_edge ], [ %sent.1278.i, %if.end8.i.if.then75.i_crit_edge ]
  %rescan.2245.i = phi i32 [ %rescan.1.i, %if.end73.i.if.then75.i_crit_edge ], [ 0, %if.end8.i.if.then75.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub11.i)
  %cmp76.i = icmp eq i32 %sub.i, %sub11.i
  br i1 %cmp76.i, label %if.then77.i, label %if.else80.i

if.then77.i:                                      ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #14
  %status79.i = getelementptr inbounds %struct.dummy_request, ptr %req.0280.i, i32 0, i32 1, i32 11
  %192 = ptrtoint ptr %status79.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 0, ptr %status79.i, align 4
  %193 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 0, ptr %status, align 4
  br label %if.end130.i

if.else80.i:                                      ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.lobit.i.i)
  %tobool81.not.i = icmp eq i32 %and.lobit.i.i, 0
  br i1 %tobool81.not.i, label %if.else89.i, label %if.then82.i

if.then82.i:                                      ; preds = %if.else80.i
  %status84.i = getelementptr inbounds %struct.dummy_request, ptr %req.0280.i, i32 0, i32 1, i32 11
  %194 = ptrtoint ptr %status84.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 0, ptr %status84.i, align 4
  br i1 %cmp13.i, label %if.then86.i, label %if.else87.i

if.then86.i:                                      ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #14
  %195 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 -75, ptr %status, align 4
  br label %if.end130.i

if.else87.i:                                      ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #14
  %196 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 0, ptr %status, align 4
  br label %if.end130.i

if.else89.i:                                      ; preds = %if.else80.i
  %197 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 0, ptr %status, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub11.i)
  %cmp90.i = icmp ugt i32 %sub.i, %sub11.i
  %status93.i = getelementptr inbounds %struct.dummy_request, ptr %req.0280.i, i32 0, i32 1, i32 11
  br i1 %cmp90.i, label %if.then91.i, label %if.else94.i

if.then91.i:                                      ; preds = %if.else89.i
  call void @__sanitizer_cov_trace_pc() #14
  %198 = ptrtoint ptr %status93.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 -75, ptr %status93.i, align 4
  br label %if.end130.i

if.else94.i:                                      ; preds = %if.else89.i
  call void @__sanitizer_cov_trace_pc() #14
  %199 = ptrtoint ptr %status93.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 0, ptr %status93.i, align 4
  br label %if.end130.i

if.else100.i:                                     ; preds = %if.end73.i
  %200 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %length.i, align 4
  %202 = ptrtoint ptr %actual.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %actual.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %201, i32 %203)
  %cmp105.i = icmp eq i32 %201, %203
  br i1 %cmp105.i, label %if.then106.i, label %if.else100.i.if.end118.i_crit_edge

if.else100.i.if.end118.i_crit_edge:               ; preds = %if.else100.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118.i

if.then106.i:                                     ; preds = %if.else100.i
  %zero.i = getelementptr inbounds %struct.dummy_request, ptr %req.0280.i, i32 0, i32 1, i32 6
  %204 = ptrtoint ptr %zero.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %bf.load108.i = load i32, ptr %zero.i, align 4
  %205 = and i32 %bf.load108.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %tobool110.not.i = icmp eq i32 %205, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.lobit.i.i)
  %tobool112.not.i = icmp eq i32 %and.lobit.i.i, 0
  %or.cond230.i = select i1 %tobool110.not.i, i1 true, i1 %tobool112.not.i
  br i1 %or.cond230.i, label %if.else114.i, label %if.then106.i.if.end118.i_crit_edge

if.then106.i.if.end118.i_crit_edge:               ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118.i

if.else114.i:                                     ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #14
  %status116.i = getelementptr inbounds %struct.dummy_request, ptr %req.0280.i, i32 0, i32 1, i32 11
  %206 = ptrtoint ptr %status116.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 0, ptr %status116.i, align 4
  br label %if.end118.i

if.end118.i:                                      ; preds = %if.else114.i, %if.then106.i.if.end118.i_crit_edge, %if.else100.i.if.end118.i_crit_edge
  %rescan.3.i = phi i32 [ %rescan.1.i, %if.else114.i ], [ %rescan.1.i, %if.else100.i.if.end118.i_crit_edge ], [ 1, %if.then106.i.if.end118.i_crit_edge ]
  %207 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %transfer_buffer_length.i, align 4
  %209 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %actual_length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %208, i32 %210)
  %cmp121.i = icmp eq i32 %208, %210
  br i1 %cmp121.i, label %if.then122.i, label %if.end118.i.if.end130.i_crit_edge

if.end118.i.if.end130.i_crit_edge:                ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end130.i

if.then122.i:                                     ; preds = %if.end118.i
  %211 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %transfer_flags.i, align 4
  %and.i482 = and i32 %212, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i482)
  %tobool123.not.i = icmp ne i32 %and.i482, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.lobit.i.i)
  %tobool125.not.i = icmp eq i32 %and.lobit.i.i, 0
  %or.cond231.i = select i1 %tobool123.not.i, i1 %tobool125.not.i, i1 false
  br i1 %or.cond231.i, label %if.then122.i.if.end130.i_crit_edge, label %if.else127.i

if.then122.i.if.end130.i_crit_edge:               ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end130.i

if.else127.i:                                     ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #14
  %213 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 0, ptr %status, align 4
  br label %if.end130.i

if.end130.i:                                      ; preds = %if.else127.i, %if.then122.i.if.end130.i_crit_edge, %if.end118.i.if.end130.i_crit_edge, %if.else94.i, %if.then91.i, %if.else87.i, %if.then86.i, %if.then77.i
  %limit.addr.2248.i = phi i32 [ %limit.addr.2249.i, %if.then77.i ], [ %limit.addr.2249.i, %if.then86.i ], [ %limit.addr.2249.i, %if.else87.i ], [ %limit.addr.2249.i, %if.then91.i ], [ %limit.addr.2249.i, %if.else94.i ], [ %limit.addr.2.i, %if.else127.i ], [ %limit.addr.2.i, %if.end118.i.if.end130.i_crit_edge ], [ %limit.addr.2.i, %if.then122.i.if.end130.i_crit_edge ]
  %sent.2246.i = phi i32 [ %sent.2247.i, %if.then77.i ], [ %sent.2247.i, %if.then86.i ], [ %sent.2247.i, %if.else87.i ], [ %sent.2247.i, %if.then91.i ], [ %sent.2247.i, %if.else94.i ], [ %sent.2.i, %if.else127.i ], [ %sent.2.i, %if.end118.i.if.end130.i_crit_edge ], [ %sent.2.i, %if.then122.i.if.end130.i_crit_edge ]
  %rescan.4.i = phi i32 [ %rescan.2245.i, %if.then77.i ], [ %rescan.2245.i, %if.then86.i ], [ %rescan.2245.i, %if.else87.i ], [ %rescan.2245.i, %if.then91.i ], [ %rescan.2245.i, %if.else94.i ], [ %rescan.3.i, %if.else127.i ], [ %rescan.3.i, %if.end118.i.if.end130.i_crit_edge ], [ 1, %if.then122.i.if.end130.i_crit_edge ]
  %status132.i = getelementptr inbounds %struct.dummy_request, ptr %req.0280.i, i32 0, i32 1, i32 11
  %214 = ptrtoint ptr %status132.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %status132.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %215)
  %cmp133.not.i = icmp eq i32 %215, -115
  br i1 %cmp133.not.i, label %if.end139.i, label %if.then134.i

if.then134.i:                                     ; preds = %if.end130.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %req.0280.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then134.i.if.end139.thread.i_crit_edge

if.then134.i.if.end139.thread.i_crit_edge:        ; preds = %if.then134.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end139.thread.i

if.end.i.i.i:                                     ; preds = %if.then134.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %req.0280.i, i32 0, i32 1
  %216 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %prev.i.i.i, align 4
  %218 = ptrtoint ptr %req.0280.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %req.0280.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %219, i32 0, i32 1
  %220 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %217, ptr %prev1.i.i.i.i, align 4
  %221 = ptrtoint ptr %217 to i32
  call void @__asan_store4_noabort(i32 %221)
  store volatile ptr %219, ptr %217, align 4
  br label %if.end139.thread.i

if.end139.i:                                      ; preds = %if.end130.i
  %222 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %223)
  %cmp140.not.i = icmp eq i32 %223, -115
  br i1 %cmp140.not.i, label %if.end142.i, label %if.end139.i.sw.epilog271.thread523_crit_edge

if.end139.i.sw.epilog271.thread523_crit_edge:     ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog271.thread523

if.end139.thread.i:                               ; preds = %if.end.i.i.i, %if.then134.i.if.end139.thread.i_crit_edge
  %224 = ptrtoint ptr %req.0280.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store volatile ptr %req.0280.i, ptr %req.0280.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %req.0280.i, i32 0, i32 1
  %225 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %req.0280.i, ptr %prev.i3.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %130) #12
  call void @usb_gadget_giveback_request(ptr noundef %ep136.i, ptr noundef %req9.i) #12
  call void @_raw_spin_lock(ptr noundef %130) #12
  %226 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %227)
  %cmp140.not262.i = icmp eq i32 %227, -115
  br i1 %cmp140.not262.i, label %if.end139.thread.i.cleanup.i_crit_edge, label %if.end139.thread.i.sw.epilog271.thread523_crit_edge

if.end139.thread.i.sw.epilog271.thread523_crit_edge: ; preds = %if.end139.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog271.thread523

if.end139.thread.i.cleanup.i_crit_edge:           ; preds = %if.end139.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end142.i:                                      ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rescan.4.i)
  %tobool143.not.i = icmp eq i32 %rescan.4.i, 0
  br i1 %tobool143.not.i, label %if.end142.i.for.inc.i483_crit_edge, label %if.end142.i.cleanup.i_crit_edge

if.end142.i.cleanup.i_crit_edge:                  ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end142.i.for.inc.i483_crit_edge:               ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i483

cleanup.i:                                        ; preds = %if.end142.i.cleanup.i_crit_edge, %if.end139.thread.i.cleanup.i_crit_edge
  %228 = ptrtoint ptr %retval.2.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %req.0276.i = load ptr, ptr %retval.2.i, align 4
  %cmp.not277.i = icmp eq ptr %req.0276.i, %retval.2.i
  br i1 %cmp.not277.i, label %cleanup.i.sw.epilog271_crit_edge, label %cleanup.i.for.body.i474.backedge_crit_edge

cleanup.i.for.body.i474.backedge_crit_edge:       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i474.backedge

cleanup.i.sw.epilog271_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog271

for.inc.i483:                                     ; preds = %if.end142.i.for.inc.i483_crit_edge, %if.then.i.for.inc.i483_crit_edge
  %sent.3.ph254.i = phi i32 [ %sent.1278.i, %if.then.i.for.inc.i483_crit_edge ], [ %sent.2246.i, %if.end142.i.for.inc.i483_crit_edge ]
  %limit.addr.3.ph.i = phi i32 [ %limit.addr.1279.i, %if.then.i.for.inc.i483_crit_edge ], [ %limit.addr.2248.i, %if.end142.i.for.inc.i483_crit_edge ]
  %229 = ptrtoint ptr %req.0280.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %req.0.i = load ptr, ptr %req.0280.i, align 4
  %cmp.not.i = icmp eq ptr %req.0.i, %retval.2.i
  br i1 %cmp.not.i, label %for.inc.i483.sw.epilog271_crit_edge, label %for.inc.i483.for.body.i474.backedge_crit_edge

for.inc.i483.for.body.i474.backedge_crit_edge:    ; preds = %for.inc.i483
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i474.backedge

for.inc.i483.sw.epilog271_crit_edge:              ; preds = %for.inc.i483
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog271

for.body.i474.backedge:                           ; preds = %for.inc.i483.for.body.i474.backedge_crit_edge, %cleanup.i.for.body.i474.backedge_crit_edge
  %req.0280.i.be = phi ptr [ %req.0.i, %for.inc.i483.for.body.i474.backedge_crit_edge ], [ %req.0276.i, %cleanup.i.for.body.i474.backedge_crit_edge ]
  %limit.addr.1279.i.be = phi i32 [ %limit.addr.3.ph.i, %for.inc.i483.for.body.i474.backedge_crit_edge ], [ %limit.addr.2248.i, %cleanup.i.for.body.i474.backedge_crit_edge ]
  %sent.1278.i.be = phi i32 [ %sent.3.ph254.i, %for.inc.i483.for.body.i474.backedge_crit_edge ], [ %sent.2246.i, %cleanup.i.for.body.i474.backedge_crit_edge ]
  br label %for.body.i474

sw.epilog271.thread523:                           ; preds = %if.end139.thread.i.sw.epilog271.thread523_crit_edge, %if.end139.i.sw.epilog271.thread523_crit_edge
  %sub526 = sub i32 %total.2757, %sent.2246.i
  br label %return_urb

sw.epilog271:                                     ; preds = %for.inc.i483.sw.epilog271_crit_edge, %cleanup.i.sw.epilog271_crit_edge, %if.end26.i.sw.epilog271_crit_edge, %if.else.i.sw.epilog271_crit_edge, %treat_control_like_bulk.sw.epilog271_crit_edge
  %sent.4.i.ph = phi i32 [ 0, %treat_control_like_bulk.sw.epilog271_crit_edge ], [ %sent.2246.i, %cleanup.i.sw.epilog271_crit_edge ], [ %sent.3.ph254.i, %for.inc.i483.sw.epilog271_crit_edge ], [ %sent.1278.i, %if.else.i.sw.epilog271_crit_edge ], [ %sent.1278.i, %if.end26.i.sw.epilog271_crit_edge ]
  %230 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %230)
  %.pr.pr = load i32, ptr %status, align 4
  %sub = sub i32 %total.2757, %sent.4.i.ph
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %.pr.pr)
  %cmp272 = icmp eq i32 %.pr.pr, -115
  br i1 %cmp272, label %sw.epilog271.cleanup292_crit_edge, label %sw.epilog271.return_urb_crit_edge

sw.epilog271.return_urb_crit_edge:                ; preds = %sw.epilog271
  call void @__sanitizer_cov_trace_pc() #14
  br label %return_urb

sw.epilog271.cleanup292_crit_edge:                ; preds = %sw.epilog271
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup292

return_urb:                                       ; preds = %sw.epilog271.return_urb_crit_edge, %sw.epilog271.thread523, %sw.epilog271.thread, %cleanup.thread, %do.end135, %do.end80, %if.end45.return_urb_crit_edge
  %ep40.0 = phi ptr [ %retval.2.i, %do.end135 ], [ null, %do.end80 ], [ %ep.i, %cleanup.thread ], [ %retval.2.i, %sw.epilog271.thread ], [ %retval.2.i, %sw.epilog271.thread523 ], [ null, %if.end45.return_urb_crit_edge ], [ %retval.2.i, %sw.epilog271.return_urb_crit_edge ]
  %total.4 = phi i32 [ %total.2757, %do.end135 ], [ %total.2757, %do.end80 ], [ %total.2757, %cleanup.thread ], [ %total.2757, %sw.epilog271.thread ], [ %sub526, %sw.epilog271.thread523 ], [ %total.2757, %if.end45.return_urb_crit_edge ], [ %sub, %sw.epilog271.return_urb_crit_edge ]
  %call.i.i484 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in760) #12
  br i1 %call.i.i484, label %if.end.i.i487, label %return_urb.list_del.exit_crit_edge

return_urb.list_del.exit_crit_edge:               ; preds = %return_urb
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i487:                                    ; preds = %return_urb
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i485 = getelementptr inbounds %struct.list_head, ptr %.pn.in760, i32 0, i32 1
  %231 = ptrtoint ptr %prev.i.i485 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %prev.i.i485, align 4
  %233 = ptrtoint ptr %.pn.in760 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %.pn.in760, align 4
  %prev1.i.i.i486 = getelementptr inbounds %struct.list_head, ptr %234, i32 0, i32 1
  %235 = ptrtoint ptr %prev1.i.i.i486 to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %232, ptr %prev1.i.i.i486, align 4
  %236 = ptrtoint ptr %232 to i32
  call void @__asan_store4_noabort(i32 %236)
  store volatile ptr %234, ptr %232, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i487, %return_urb.list_del.exit_crit_edge
  %237 = ptrtoint ptr %.pn.in760 to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in760, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in760, i32 0, i32 1
  %238 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %urbp.0763) #12
  %tobool277.not = icmp eq ptr %ep40.0, null
  br i1 %tobool277.not, label %list_del.exit.if.end287_crit_edge, label %if.then278

list_del.exit.if.end287_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end287

if.then278:                                       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %setup_stage279 = getelementptr inbounds %struct.dummy_ep, ptr %ep40.0, i32 0, i32 5
  %239 = ptrtoint ptr %setup_stage279 to i32
  call void @__asan_load1_noabort(i32 %239)
  %bf.load280 = load i8, ptr %setup_stage279, align 4
  %bf.clear285 = and i8 %bf.load280, -49
  store i8 %bf.clear285, ptr %setup_stage279, align 4
  br label %if.end287

if.end287:                                        ; preds = %if.then278, %list_del.exit.if.end287_crit_edge
  call void @usb_hcd_unlink_urb_from_ep(ptr noundef %add.ptr.i.i449, ptr noundef %26) #12
  call void @_raw_spin_unlock(ptr noundef %1) #12
  %240 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %status, align 4
  call void @usb_hcd_giveback_urb(ptr noundef %add.ptr.i.i449, ptr noundef %26, i32 noundef %241) #12
  call void @_raw_spin_lock(ptr noundef %1) #12
  br label %restart.loopexit

cleanup292:                                       ; preds = %sw.epilog271.cleanup292_crit_edge, %if.end81.cleanup292_crit_edge, %if.else.cleanup292_crit_edge
  %total.5 = phi i32 [ %sub, %sw.epilog271.cleanup292_crit_edge ], [ %total.2757, %if.end81.cleanup292_crit_edge ], [ %total.2757, %if.else.cleanup292_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #12
  %cmp37.not = icmp eq ptr %.pn766, %urbp_list
  br i1 %cmp37.not, label %cleanup292.for.end304_crit_edge, label %cleanup292.for.body39.backedge_crit_edge

cleanup292.for.body39.backedge_crit_edge:         ; preds = %cleanup292
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body39.backedge

cleanup292.for.end304_crit_edge:                  ; preds = %cleanup292
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end304

for.body39.backedge:                              ; preds = %cleanup292.for.body39.backedge_crit_edge, %restart.loopexit.for.body39.backedge_crit_edge
  %.pn.in760.be = phi ptr [ %.pn766, %cleanup292.for.body39.backedge_crit_edge ], [ %20, %restart.loopexit.for.body39.backedge_crit_edge ]
  %total.2757.be = phi i32 [ %total.5, %cleanup292.for.body39.backedge_crit_edge ], [ %total.5.ph, %restart.loopexit.for.body39.backedge_crit_edge ]
  br label %for.body39

for.end304:                                       ; preds = %cleanup292.for.end304_crit_edge, %cleanup292.thread, %restart.loopexit.for.end304_crit_edge, %for.end.for.end304_crit_edge
  %242 = ptrtoint ptr %urbp_list to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load volatile ptr, ptr %urbp_list, align 4
  %cmp.i489.not = icmp eq ptr %243, %urbp_list
  br i1 %cmp.i489.not, label %if.then308, label %if.else311

if.then308:                                       ; preds = %for.end304
  call void @__sanitizer_cov_trace_pc() #14
  %244 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %udev, align 4
  call void @usb_put_dev(ptr noundef %245) #12
  %246 = ptrtoint ptr %udev to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr null, ptr %udev, align 4
  br label %if.end319

if.else311:                                       ; preds = %for.end304
  %247 = ptrtoint ptr %rh_state to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %rh_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %248)
  %cmp313 = icmp eq i32 %248, 2
  br i1 %cmp313, label %if.then315, label %if.else311.if.end319_crit_edge

if.else311.if.end319_crit_edge:                   ; preds = %if.else311
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end319

if.then315:                                       ; preds = %if.else311
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %249 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %249, 1
  %call317 = call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #12
  br label %if.end319

if.end319:                                        ; preds = %if.then315, %if.else311.if.end319_crit_edge, %if.then308
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call10) #12
  br label %cleanup321

cleanup321:                                       ; preds = %if.end319, %do.end17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @handle_control_request(ptr nocapture noundef readonly %dum_hcd, ptr nocapture noundef %urb, ptr nocapture noundef readonly %setup, ptr nocapture noundef writeonly %status) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dum_hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dum_hcd, align 4
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 3
  %2 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %wIndex, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 2
  %5 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %wValue, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv2 = zext i16 %7 to i32
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 1
  %8 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bRequest, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.117)
  switch i8 %9, label %entry.sw.epilog197_crit_edge [
    i8 5, label %sw.bb
    i8 3, label %sw.bb12
    i8 1, label %sw.bb75
    i8 0, label %sw.bb138
  ]

entry.sw.epilog197_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog197

sw.bb:                                            ; preds = %entry
  %11 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %setup, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp.not = icmp eq i8 %12, 0
  br i1 %cmp.not, label %if.end, label %sw.bb.sw.epilog197_crit_edge

sw.bb.sw.epilog197_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog197

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %address = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %address to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv2, ptr %address, align 8
  %14 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %status, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_control_request.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_control_request, %sw.epilog197)) #12
          to label %if.then9 [label %sw.epilog197], !srcloc !302

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %parent.i = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 4, i32 11, i32 1
  %15 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_control_request.__UNIQUE_ID_ddebug258, ptr noundef %16, ptr noundef nonnull @.str.67, i32 noundef %conv2) #12
  br label %sw.epilog197

sw.bb12:                                          ; preds = %entry
  %17 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %setup, align 1
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.118)
  switch i8 %18, label %sw.bb12.sw.epilog197_crit_edge [
    i8 0, label %if.then17
    i8 2, label %if.then62
  ]

sw.bb12.sw.epilog197_crit_edge:                   ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog197

if.then17:                                        ; preds = %sw.bb12
  %20 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.119)
  switch i16 %7, label %if.then17.sw.epilog197_crit_edge [
    i16 1, label %if.then17.if.then53_crit_edge
    i16 3, label %if.then17.if.then53.sink.split_crit_edge
    i16 4, label %sw.bb19
    i16 5, label %sw.bb24
    i16 48, label %sw.bb29
    i16 49, label %sw.bb35
    i16 50, label %sw.epilog
  ]

if.then17.if.then53.sink.split_crit_edge:         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then53.sink.split

if.then17.if.then53_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then53

if.then17.sw.epilog197_crit_edge:                 ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog197

sw.bb19:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then53.sink.split

sw.bb24:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then53.sink.split

sw.bb29:                                          ; preds = %if.then17
  %speed = getelementptr i8, ptr %dum_hcd, i32 -424
  %21 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %22)
  %cmp31 = icmp eq i32 %22, 64
  br i1 %cmp31, label %sw.bb29.if.then53_crit_edge, label %sw.bb29.sw.epilog197_crit_edge

sw.bb29.sw.epilog197_crit_edge:                   ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog197

sw.bb29.if.then53_crit_edge:                      ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then53

sw.bb35:                                          ; preds = %if.then17
  %speed37 = getelementptr i8, ptr %dum_hcd, i32 -424
  %23 = ptrtoint ptr %speed37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %speed37, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %24)
  %cmp38 = icmp eq i32 %24, 64
  br i1 %cmp38, label %sw.bb35.if.then53_crit_edge, label %sw.bb35.sw.epilog197_crit_edge

sw.bb35.sw.epilog197_crit_edge:                   ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog197

sw.bb35.if.then53_crit_edge:                      ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then53

sw.epilog:                                        ; preds = %if.then17
  %speed45 = getelementptr i8, ptr %dum_hcd, i32 -424
  %25 = ptrtoint ptr %speed45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %speed45, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %26)
  %cmp46 = icmp eq i32 %26, 64
  br i1 %cmp46, label %sw.epilog.if.then53_crit_edge, label %sw.epilog.sw.epilog197_crit_edge

sw.epilog.sw.epilog197_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog197

sw.epilog.if.then53_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then53

if.then53.sink.split:                             ; preds = %sw.bb24, %sw.bb19, %if.then17.if.then53.sink.split_crit_edge
  %.sink = phi i32 [ 134217728, %sw.bb19 ], [ 67108864, %sw.bb24 ], [ 268435456, %if.then17.if.then53.sink.split_crit_edge ]
  %a_alt_hnp_support = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 4, i32 17
  %27 = ptrtoint ptr %a_alt_hnp_support to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load = load i32, ptr %a_alt_hnp_support, align 4
  %bf.set = or i32 %bf.load, %.sink
  store i32 %bf.set, ptr %a_alt_hnp_support, align 4
  br label %if.then53

if.then53:                                        ; preds = %if.then53.sink.split, %sw.epilog.if.then53_crit_edge, %sw.bb35.if.then53_crit_edge, %sw.bb29.if.then53_crit_edge, %if.then17.if.then53_crit_edge
  %w_value.0350 = phi i16 [ 4, %sw.epilog.if.then53_crit_edge ], [ 2, %sw.bb29.if.then53_crit_edge ], [ 3, %sw.bb35.if.then53_crit_edge ], [ %7, %if.then17.if.then53_crit_edge ], [ %7, %if.then53.sink.split ]
  %shl = shl nuw nsw i16 1, %w_value.0350
  %devstatus = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %devstatus to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %devstatus, align 4
  %conv55 = or i16 %29, %shl
  store i16 %conv55, ptr %devstatus, align 4
  %30 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %status, align 4
  br label %sw.epilog197

if.then62:                                        ; preds = %sw.bb12
  %conv63 = trunc i16 %4 to i8
  %speed.i = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 4, i32 5
  %31 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %32)
  %cmp.i = icmp eq i32 %32, 5
  %ss_hcd.i = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 11
  %hs_hcd.i = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 10
  %cond.in.i = select i1 %cmp.i, ptr %ss_hcd.i, ptr %hs_hcd.i
  %33 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %port_status.i = getelementptr inbounds %struct.dummy_hcd, ptr %cond.i, i32 0, i32 3
  %34 = ptrtoint ptr %port_status.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port_status.i, align 4
  %and.i = and i32 %35, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp1.i = icmp eq i32 %and.i, 3
  br i1 %cmp1.i, label %if.end.i, label %if.then62.sw.epilog197_crit_edge

if.then62.sw.epilog197_crit_edge:                 ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog197

if.end.i:                                         ; preds = %if.then62
  %ints_enabled.i = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 9
  %36 = ptrtoint ptr %ints_enabled.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load.i = load i8, ptr %ints_enabled.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.i.sw.epilog197_crit_edge, label %if.end3.i

if.end.i.sw.epilog197_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog197

if.end3.i:                                        ; preds = %if.end.i
  %37 = and i8 %conv63, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp5.i = icmp eq i8 %37, 0
  br i1 %cmp5.i, label %if.then7.i, label %if.end3.i.for.body.i_crit_edge

if.end3.i.for.body.i_crit_edge:                   ; preds = %if.end3.i
  br label %for.body.i

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  %ep.i = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 1
  br label %find_endpoint.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end3.i.for.body.i_crit_edge
  %i.040.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %if.end3.i.for.body.i_crit_edge ]
  %desc.i = getelementptr %struct.dummy, ptr %1, i32 0, i32 1, i32 %i.040.i, i32 3
  %38 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %desc.i, align 4
  %tobool14.not.i = icmp eq ptr %39, null
  br i1 %tobool14.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end16.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end16.i:                                       ; preds = %for.body.i
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %conv63)
  %cmp20.i = icmp eq i8 %41, %conv63
  br i1 %cmp20.i, label %cleanup24.loopexit.split.loop.exit38.i, label %if.end16.i.for.inc.i_crit_edge

if.end16.i.for.inc.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end16.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.040.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 25
  br i1 %exitcond.not.i, label %for.inc.i.sw.epilog197_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.sw.epilog197_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog197

cleanup24.loopexit.split.loop.exit38.i:           ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx13.le.i = getelementptr %struct.dummy, ptr %1, i32 0, i32 1, i32 %i.040.i
  br label %find_endpoint.exit

find_endpoint.exit:                               ; preds = %cleanup24.loopexit.split.loop.exit38.i, %if.then7.i
  %retval.2.i = phi ptr [ %ep.i, %if.then7.i ], [ %arrayidx13.le.i, %cleanup24.loopexit.split.loop.exit38.i ]
  %tobool65.not = icmp eq ptr %retval.2.i, null
  br i1 %tobool65.not, label %find_endpoint.exit.sw.epilog197_crit_edge, label %lor.lhs.false

find_endpoint.exit.sw.epilog197_crit_edge:        ; preds = %find_endpoint.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog197

lor.lhs.false:                                    ; preds = %find_endpoint.exit
  %name = getelementptr inbounds %struct.dummy_ep, ptr %retval.2.i, i32 0, i32 4, i32 1
  %42 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name, align 4
  %cmp66 = icmp eq ptr %43, @ep0name
  br i1 %cmp66, label %lor.lhs.false.sw.epilog197_crit_edge, label %if.end69

lor.lhs.false.sw.epilog197_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog197

if.end69:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %halted = getelementptr inbounds %struct.dummy_ep, ptr %retval.2.i, i32 0, i32 5
  %44 = ptrtoint ptr %halted to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load70 = load i8, ptr %halted, align 4
  %bf.set72 = or i8 %bf.load70, -128
  store i8 %bf.set72, ptr %halted, align 4
  %45 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %status, align 4
  br label %sw.epilog197

sw.bb75:                                          ; preds = %entry
  %46 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %setup, align 1
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.120)
  switch i8 %47, label %sw.bb75.sw.epilog197_crit_edge [
    i8 0, label %if.then80
    i8 2, label %if.then121
  ]

sw.bb75.sw.epilog197_crit_edge:                   ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog197

if.then80:                                        ; preds = %sw.bb75
  %49 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.121)
  switch i16 %7, label %if.then80.sw.epilog197_crit_edge [
    i16 1, label %if.then80.if.then110_crit_edge
    i16 48, label %sw.bb82
    i16 49, label %sw.bb90
    i16 50, label %sw.epilog107
  ]

if.then80.if.then110_crit_edge:                   ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then110

if.then80.sw.epilog197_crit_edge:                 ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog197

sw.bb82:                                          ; preds = %if.then80
  %speed84 = getelementptr i8, ptr %dum_hcd, i32 -424
  %50 = ptrtoint ptr %speed84 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %speed84, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %51)
  %cmp85 = icmp eq i32 %51, 64
  br i1 %cmp85, label %sw.bb82.if.then110_crit_edge, label %sw.bb82.sw.epilog197_crit_edge

sw.bb82.sw.epilog197_crit_edge:                   ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog197

sw.bb82.if.then110_crit_edge:                     ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then110

sw.bb90:                                          ; preds = %if.then80
  %speed92 = getelementptr i8, ptr %dum_hcd, i32 -424
  %52 = ptrtoint ptr %speed92 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %speed92, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %53)
  %cmp93 = icmp eq i32 %53, 64
  br i1 %cmp93, label %sw.bb90.if.then110_crit_edge, label %sw.bb90.sw.epilog197_crit_edge

sw.bb90.sw.epilog197_crit_edge:                   ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog197

sw.bb90.if.then110_crit_edge:                     ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then110

sw.epilog107:                                     ; preds = %if.then80
  %speed100 = getelementptr i8, ptr %dum_hcd, i32 -424
  %54 = ptrtoint ptr %speed100 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %speed100, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %55)
  %cmp101 = icmp eq i32 %55, 64
  br i1 %cmp101, label %sw.epilog107.if.then110_crit_edge, label %sw.epilog107.sw.epilog197_crit_edge

sw.epilog107.sw.epilog197_crit_edge:              ; preds = %sw.epilog107
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog197

sw.epilog107.if.then110_crit_edge:                ; preds = %sw.epilog107
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then110

if.then110:                                       ; preds = %sw.epilog107.if.then110_crit_edge, %sw.bb90.if.then110_crit_edge, %sw.bb82.if.then110_crit_edge, %if.then80.if.then110_crit_edge
  %w_value.1360 = phi i16 [ 4, %sw.epilog107.if.then110_crit_edge ], [ 2, %sw.bb82.if.then110_crit_edge ], [ 3, %sw.bb90.if.then110_crit_edge ], [ %7, %if.then80.if.then110_crit_edge ]
  %shl111 = shl nuw nsw i16 1, %w_value.1360
  %devstatus112 = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 8
  %56 = ptrtoint ptr %devstatus112 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %devstatus112, align 4
  %58 = xor i16 %shl111, -1
  %conv114 = and i16 %57, %58
  store i16 %conv114, ptr %devstatus112, align 4
  %59 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %status, align 4
  br label %sw.epilog197

if.then121:                                       ; preds = %sw.bb75
  %conv122 = trunc i16 %4 to i8
  %speed.i284 = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 4, i32 5
  %60 = ptrtoint ptr %speed.i284 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %speed.i284, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %61)
  %cmp.i285 = icmp eq i32 %61, 5
  %ss_hcd.i286 = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 11
  %hs_hcd.i287 = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 10
  %cond.in.i288 = select i1 %cmp.i285, ptr %ss_hcd.i286, ptr %hs_hcd.i287
  %62 = ptrtoint ptr %cond.in.i288 to i32
  call void @__asan_load4_noabort(i32 %62)
  %cond.i289 = load ptr, ptr %cond.in.i288, align 4
  %port_status.i290 = getelementptr inbounds %struct.dummy_hcd, ptr %cond.i289, i32 0, i32 3
  %63 = ptrtoint ptr %port_status.i290 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %port_status.i290, align 4
  %and.i291 = and i32 %64, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i291)
  %cmp1.i292 = icmp eq i32 %and.i291, 3
  br i1 %cmp1.i292, label %if.end.i296, label %if.then121.sw.epilog197_crit_edge

if.then121.sw.epilog197_crit_edge:                ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog197

if.end.i296:                                      ; preds = %if.then121
  %ints_enabled.i293 = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 9
  %65 = ptrtoint ptr %ints_enabled.i293 to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load.i294 = load i8, ptr %ints_enabled.i293, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i294)
  %tobool.not.i295 = icmp sgt i8 %bf.load.i294, -1
  br i1 %tobool.not.i295, label %if.end.i296.sw.epilog197_crit_edge, label %if.end3.i298

if.end.i296.sw.epilog197_crit_edge:               ; preds = %if.end.i296
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog197

if.end3.i298:                                     ; preds = %if.end.i296
  %66 = and i8 %conv122, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp5.i297 = icmp eq i8 %66, 0
  br i1 %cmp5.i297, label %if.then7.i300, label %if.end3.i298.for.body.i304_crit_edge

if.end3.i298.for.body.i304_crit_edge:             ; preds = %if.end3.i298
  br label %for.body.i304

if.then7.i300:                                    ; preds = %if.end3.i298
  call void @__sanitizer_cov_trace_pc() #14
  %ep.i299 = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 1
  br label %find_endpoint.exit314

for.body.i304:                                    ; preds = %for.inc.i310.for.body.i304_crit_edge, %if.end3.i298.for.body.i304_crit_edge
  %i.040.i301 = phi i32 [ %inc.i308, %for.inc.i310.for.body.i304_crit_edge ], [ 1, %if.end3.i298.for.body.i304_crit_edge ]
  %desc.i302 = getelementptr %struct.dummy, ptr %1, i32 0, i32 1, i32 %i.040.i301, i32 3
  %67 = ptrtoint ptr %desc.i302 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %desc.i302, align 4
  %tobool14.not.i303 = icmp eq ptr %68, null
  br i1 %tobool14.not.i303, label %for.body.i304.for.inc.i310_crit_edge, label %if.end16.i307

for.body.i304.for.inc.i310_crit_edge:             ; preds = %for.body.i304
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i310

if.end16.i307:                                    ; preds = %for.body.i304
  %bEndpointAddress.i305 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %bEndpointAddress.i305 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %bEndpointAddress.i305, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %70, i8 %conv122)
  %cmp20.i306 = icmp eq i8 %70, %conv122
  br i1 %cmp20.i306, label %cleanup24.loopexit.split.loop.exit38.i312, label %if.end16.i307.for.inc.i310_crit_edge

if.end16.i307.for.inc.i310_crit_edge:             ; preds = %if.end16.i307
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i310

for.inc.i310:                                     ; preds = %if.end16.i307.for.inc.i310_crit_edge, %for.body.i304.for.inc.i310_crit_edge
  %inc.i308 = add nuw nsw i32 %i.040.i301, 1
  %exitcond.not.i309 = icmp eq i32 %inc.i308, 25
  br i1 %exitcond.not.i309, label %for.inc.i310.sw.epilog197_crit_edge, label %for.inc.i310.for.body.i304_crit_edge

for.inc.i310.for.body.i304_crit_edge:             ; preds = %for.inc.i310
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i304

for.inc.i310.sw.epilog197_crit_edge:              ; preds = %for.inc.i310
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog197

cleanup24.loopexit.split.loop.exit38.i312:        ; preds = %if.end16.i307
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx13.le.i311 = getelementptr %struct.dummy, ptr %1, i32 0, i32 1, i32 %i.040.i301
  br label %find_endpoint.exit314

find_endpoint.exit314:                            ; preds = %cleanup24.loopexit.split.loop.exit38.i312, %if.then7.i300
  %retval.2.i313 = phi ptr [ %ep.i299, %if.then7.i300 ], [ %arrayidx13.le.i311, %cleanup24.loopexit.split.loop.exit38.i312 ]
  %tobool124.not = icmp eq ptr %retval.2.i313, null
  br i1 %tobool124.not, label %find_endpoint.exit314.sw.epilog197_crit_edge, label %if.end126

find_endpoint.exit314.sw.epilog197_crit_edge:     ; preds = %find_endpoint.exit314
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog197

if.end126:                                        ; preds = %find_endpoint.exit314
  %wedged = getelementptr inbounds %struct.dummy_ep, ptr %retval.2.i313, i32 0, i32 5
  %71 = ptrtoint ptr %wedged to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load127 = load i8, ptr %wedged, align 4
  %72 = and i8 %bf.load127, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool129.not = icmp eq i8 %72, 0
  br i1 %tobool129.not, label %if.then130, label %if.end126.if.end135_crit_edge

if.end126.if.end135_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end135

if.then130:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear133 = and i8 %bf.load127, 127
  %73 = ptrtoint ptr %wedged to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %bf.clear133, ptr %wedged, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.then130, %if.end126.if.end135_crit_edge
  %74 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %status, align 4
  br label %sw.epilog197

sw.bb138:                                         ; preds = %entry
  %75 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %setup, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -125, i8 %76)
  %switch = icmp slt i8 %76, -125
  br i1 %switch, label %if.then153, label %sw.bb138.sw.epilog197_crit_edge

sw.bb138.sw.epilog197_crit_edge:                  ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog197

if.then153:                                       ; preds = %sw.bb138
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %77 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %transfer_buffer, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %79 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %transfer_buffer_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp154.not = icmp eq i32 %80, 0
  br i1 %cmp154.not, label %if.then153.if.end191_crit_edge, label %if.then156

if.then153.if.end191_crit_edge:                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end191

if.then156:                                       ; preds = %if.then153
  %81 = zext i8 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.122)
  switch i8 %76, label %if.then156.if.end185_crit_edge [
    i8 -126, label %if.then161
    i8 -128, label %if.then177
  ]

if.then156.if.end185_crit_edge:                   ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end185

if.then161:                                       ; preds = %if.then156
  %conv162 = trunc i16 %4 to i8
  %speed.i315 = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 4, i32 5
  %82 = ptrtoint ptr %speed.i315 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %speed.i315, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %83)
  %cmp.i316 = icmp eq i32 %83, 5
  %ss_hcd.i317 = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 11
  %hs_hcd.i318 = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 10
  %cond.in.i319 = select i1 %cmp.i316, ptr %ss_hcd.i317, ptr %hs_hcd.i318
  %84 = ptrtoint ptr %cond.in.i319 to i32
  call void @__asan_load4_noabort(i32 %84)
  %cond.i320 = load ptr, ptr %cond.in.i319, align 4
  %port_status.i321 = getelementptr inbounds %struct.dummy_hcd, ptr %cond.i320, i32 0, i32 3
  %85 = ptrtoint ptr %port_status.i321 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %port_status.i321, align 4
  %and.i322 = and i32 %86, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i322)
  %cmp1.i323 = icmp eq i32 %and.i322, 3
  br i1 %cmp1.i323, label %if.end.i327, label %if.then161.sw.epilog197_crit_edge

if.then161.sw.epilog197_crit_edge:                ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog197

if.end.i327:                                      ; preds = %if.then161
  %ints_enabled.i324 = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 9
  %87 = ptrtoint ptr %ints_enabled.i324 to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load.i325 = load i8, ptr %ints_enabled.i324, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i325)
  %tobool.not.i326 = icmp sgt i8 %bf.load.i325, -1
  br i1 %tobool.not.i326, label %if.end.i327.sw.epilog197_crit_edge, label %if.end3.i329

if.end.i327.sw.epilog197_crit_edge:               ; preds = %if.end.i327
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog197

if.end3.i329:                                     ; preds = %if.end.i327
  %88 = and i8 %conv162, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %cmp5.i328 = icmp eq i8 %88, 0
  br i1 %cmp5.i328, label %if.then7.i331, label %if.end3.i329.for.body.i335_crit_edge

if.end3.i329.for.body.i335_crit_edge:             ; preds = %if.end3.i329
  br label %for.body.i335

if.then7.i331:                                    ; preds = %if.end3.i329
  call void @__sanitizer_cov_trace_pc() #14
  %ep.i330 = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 1
  br label %find_endpoint.exit345

for.body.i335:                                    ; preds = %for.inc.i341.for.body.i335_crit_edge, %if.end3.i329.for.body.i335_crit_edge
  %i.040.i332 = phi i32 [ %inc.i339, %for.inc.i341.for.body.i335_crit_edge ], [ 1, %if.end3.i329.for.body.i335_crit_edge ]
  %desc.i333 = getelementptr %struct.dummy, ptr %1, i32 0, i32 1, i32 %i.040.i332, i32 3
  %89 = ptrtoint ptr %desc.i333 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %desc.i333, align 4
  %tobool14.not.i334 = icmp eq ptr %90, null
  br i1 %tobool14.not.i334, label %for.body.i335.for.inc.i341_crit_edge, label %if.end16.i338

for.body.i335.for.inc.i341_crit_edge:             ; preds = %for.body.i335
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i341

if.end16.i338:                                    ; preds = %for.body.i335
  %bEndpointAddress.i336 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %bEndpointAddress.i336 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %bEndpointAddress.i336, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %92, i8 %conv162)
  %cmp20.i337 = icmp eq i8 %92, %conv162
  br i1 %cmp20.i337, label %cleanup24.loopexit.split.loop.exit38.i343, label %if.end16.i338.for.inc.i341_crit_edge

if.end16.i338.for.inc.i341_crit_edge:             ; preds = %if.end16.i338
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i341

for.inc.i341:                                     ; preds = %if.end16.i338.for.inc.i341_crit_edge, %for.body.i335.for.inc.i341_crit_edge
  %inc.i339 = add nuw nsw i32 %i.040.i332, 1
  %exitcond.not.i340 = icmp eq i32 %inc.i339, 25
  br i1 %exitcond.not.i340, label %for.inc.i341.sw.epilog197_crit_edge, label %for.inc.i341.for.body.i335_crit_edge

for.inc.i341.for.body.i335_crit_edge:             ; preds = %for.inc.i341
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i335

for.inc.i341.sw.epilog197_crit_edge:              ; preds = %for.inc.i341
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog197

cleanup24.loopexit.split.loop.exit38.i343:        ; preds = %if.end16.i338
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx13.le.i342 = getelementptr %struct.dummy, ptr %1, i32 0, i32 1, i32 %i.040.i332
  br label %find_endpoint.exit345

find_endpoint.exit345:                            ; preds = %cleanup24.loopexit.split.loop.exit38.i343, %if.then7.i331
  %retval.2.i344 = phi ptr [ %ep.i330, %if.then7.i331 ], [ %arrayidx13.le.i342, %cleanup24.loopexit.split.loop.exit38.i343 ]
  %tobool164.not = icmp eq ptr %retval.2.i344, null
  br i1 %tobool164.not, label %find_endpoint.exit345.sw.epilog197_crit_edge, label %if.end166

find_endpoint.exit345.sw.epilog197_crit_edge:     ; preds = %find_endpoint.exit345
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog197

if.end166:                                        ; preds = %find_endpoint.exit345
  call void @__sanitizer_cov_trace_pc() #14
  %halted167 = getelementptr inbounds %struct.dummy_ep, ptr %retval.2.i344, i32 0, i32 5
  %93 = ptrtoint ptr %halted167 to i32
  call void @__asan_load1_noabort(i32 %93)
  %bf.load168 = load i8, ptr %halted167, align 4
  %bf.lshr169 = lshr i8 %bf.load168, 7
  br label %if.end185

if.then177:                                       ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #14
  %devstatus178 = getelementptr inbounds %struct.dummy, ptr %1, i32 0, i32 8
  %94 = ptrtoint ptr %devstatus178 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %devstatus178, align 4
  %conv179 = trunc i16 %95 to i8
  br label %if.end185

if.end185:                                        ; preds = %if.then177, %if.end166, %if.then156.if.end185_crit_edge
  %bf.lshr169.sink = phi i8 [ %bf.lshr169, %if.end166 ], [ %conv179, %if.then177 ], [ 0, %if.then156.if.end185_crit_edge ]
  %96 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %bf.lshr169.sink, ptr %78, align 1
  %97 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %97)
  %.pr = load i32, ptr %transfer_buffer_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp187 = icmp ugt i32 %.pr, 1
  br i1 %cmp187, label %if.then189, label %if.end185.if.end191_crit_edge

if.end185.if.end191_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end191

if.then189:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx190 = getelementptr i8, ptr %78, i32 1
  %98 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %arrayidx190, align 1
  br label %if.end191

if.end191:                                        ; preds = %if.then189, %if.end185.if.end191_crit_edge, %if.then153.if.end191_crit_edge
  %99 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %transfer_buffer_length, align 4
  %101 = tail call i32 @llvm.umin.i32(i32 %100, i32 2)
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %102 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %actual_length, align 4
  %103 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %status, align 4
  br label %sw.epilog197

sw.epilog197:                                     ; preds = %if.end191, %find_endpoint.exit345.sw.epilog197_crit_edge, %for.inc.i341.sw.epilog197_crit_edge, %if.end.i327.sw.epilog197_crit_edge, %if.then161.sw.epilog197_crit_edge, %sw.bb138.sw.epilog197_crit_edge, %if.end135, %find_endpoint.exit314.sw.epilog197_crit_edge, %for.inc.i310.sw.epilog197_crit_edge, %if.end.i296.sw.epilog197_crit_edge, %if.then121.sw.epilog197_crit_edge, %if.then110, %sw.epilog107.sw.epilog197_crit_edge, %sw.bb90.sw.epilog197_crit_edge, %sw.bb82.sw.epilog197_crit_edge, %if.then80.sw.epilog197_crit_edge, %sw.bb75.sw.epilog197_crit_edge, %if.end69, %lor.lhs.false.sw.epilog197_crit_edge, %find_endpoint.exit.sw.epilog197_crit_edge, %for.inc.i.sw.epilog197_crit_edge, %if.end.i.sw.epilog197_crit_edge, %if.then62.sw.epilog197_crit_edge, %if.then53, %sw.epilog.sw.epilog197_crit_edge, %sw.bb35.sw.epilog197_crit_edge, %sw.bb29.sw.epilog197_crit_edge, %if.then17.sw.epilog197_crit_edge, %sw.bb12.sw.epilog197_crit_edge, %if.then9, %if.end, %sw.bb.sw.epilog197_crit_edge, %entry.sw.epilog197_crit_edge
  %ret_val.3 = phi i32 [ 1, %entry.sw.epilog197_crit_edge ], [ 0, %if.then110 ], [ -95, %sw.epilog107.sw.epilog197_crit_edge ], [ 0, %if.end135 ], [ 0, %if.then53 ], [ -95, %sw.epilog.sw.epilog197_crit_edge ], [ 0, %if.end69 ], [ 1, %sw.bb.sw.epilog197_crit_edge ], [ 0, %if.then9 ], [ 1, %sw.bb12.sw.epilog197_crit_edge ], [ -95, %lor.lhs.false.sw.epilog197_crit_edge ], [ -95, %find_endpoint.exit.sw.epilog197_crit_edge ], [ 1, %sw.bb75.sw.epilog197_crit_edge ], [ -95, %find_endpoint.exit314.sw.epilog197_crit_edge ], [ 1, %sw.bb138.sw.epilog197_crit_edge ], [ 0, %if.end191 ], [ -95, %find_endpoint.exit345.sw.epilog197_crit_edge ], [ -95, %sw.bb29.sw.epilog197_crit_edge ], [ -95, %sw.bb35.sw.epilog197_crit_edge ], [ -95, %sw.bb82.sw.epilog197_crit_edge ], [ -95, %sw.bb90.sw.epilog197_crit_edge ], [ 0, %if.end ], [ -95, %if.then17.sw.epilog197_crit_edge ], [ -95, %if.then62.sw.epilog197_crit_edge ], [ -95, %if.end.i.sw.epilog197_crit_edge ], [ -95, %if.then80.sw.epilog197_crit_edge ], [ -95, %if.then121.sw.epilog197_crit_edge ], [ -95, %if.end.i296.sw.epilog197_crit_edge ], [ -95, %if.then161.sw.epilog197_crit_edge ], [ -95, %if.end.i327.sw.epilog197_crit_edge ], [ -95, %for.inc.i.sw.epilog197_crit_edge ], [ -95, %for.inc.i310.sw.epilog197_crit_edge ], [ -95, %for.inc.i341.sw.epilog197_crit_edge ]
  ret i32 %ret_val.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_unlink_urb_from_ep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_giveback_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @urbs_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcd_priv.i, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #12
  %urbp_list = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 1, i32 0, i32 9, i32 1, i32 4, i32 7
  %4 = ptrtoint ptr %urbp_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn30 = load ptr, ptr %urbp_list, align 4
  %cmp10.not31 = icmp eq ptr %.pn30, %urbp_list
  br i1 %cmp10.not31, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %show_urb.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn34 = phi ptr [ %.pn, %show_urb.exit.for.body_crit_edge ], [ %.pn30, %entry.for.body_crit_edge ]
  %buf.addr.033 = phi ptr [ %add.ptr13, %show_urb.exit.for.body_crit_edge ], [ %buf, %entry.for.body_crit_edge ]
  %size.032 = phi i32 [ %add, %show_urb.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %urbp.0 = getelementptr i8, ptr %.pn34, i32 -4
  %sub = sub i32 4096, %size.032
  %5 = ptrtoint ptr %urbp.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %urbp.0, align 4
  %pipe.i = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pipe.i, align 4
  %shr.i = lshr i32 %8, 15
  %and.i = and i32 %shr.i, 15
  %dev.i = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 8
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %speed.i, align 4
  %switch.tableidx = add i32 %12, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %13 = icmp ult i32 %switch.tableidx, 5
  br i1 %13, label %switch.lookup, label %for.body.sw.epilog.i_crit_edge

for.body.sw.epilog.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.urbs_show, i32 0, i32 %switch.tableidx
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %for.body.sw.epilog.i_crit_edge
  %s.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.75, %for.body.sw.epilog.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.epilog.i.cond.end.i_crit_edge, label %cond.true.i

sw.epilog.i.cond.end.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.true.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  %transfer_flags.i.i = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 13
  %15 = ptrtoint ptr %transfer_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %transfer_flags.i.i, align 4
  %17 = and i32 %16, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool4.not.i = icmp eq i32 %17, 0
  %cond.i = select i1 %tobool4.not.i, ptr @.str.39, ptr @.str.38
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %sw.epilog.i.cond.end.i_crit_edge
  %cond5.i = phi ptr [ %cond.i, %cond.true.i ], [ @.str.76, %sw.epilog.i.cond.end.i_crit_edge ]
  %shr8.i = lshr i32 %8, 30
  %switch.tableidx36 = add nsw i32 %shr8.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx36)
  %18 = icmp ult i32 %switch.tableidx36, 3
  br i1 %18, label %switch.lookup35, label %cond.end.i.show_urb.exit_crit_edge

cond.end.i.show_urb.exit_crit_edge:               ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %show_urb.exit

switch.lookup35:                                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep37 = getelementptr inbounds [3 x ptr], ptr @switch.table.urbs_show.104, i32 0, i32 %switch.tableidx36
  %19 = ptrtoint ptr %switch.gep37 to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load38 = load ptr, ptr %switch.gep37, align 4
  br label %show_urb.exit

show_urb.exit:                                    ; preds = %switch.lookup35, %cond.end.i.show_urb.exit_crit_edge
  %s6.0.i = phi ptr [ %switch.load38, %switch.lookup35 ], [ @.str.31, %cond.end.i.show_urb.exit_crit_edge ]
  %actual_length.i = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 20
  %20 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %actual_length.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 19
  %22 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %transfer_buffer_length.i, align 4
  %call16.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf.addr.033, i32 noundef %sub, ptr noundef nonnull @.str.70, ptr noundef %6, ptr noundef nonnull %s.0.i, i32 noundef %and.i, ptr noundef nonnull %cond5.i, ptr noundef nonnull %s6.0.i, i32 noundef %21, i32 noundef %23) #12
  %add.ptr13 = getelementptr i8, ptr %buf.addr.033, i32 %call16.i
  %add = add i32 %call16.i, %size.032
  %24 = ptrtoint ptr %.pn34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load ptr, ptr %.pn34, align 4
  %cmp10.not = icmp eq ptr %.pn, %urbp_list
  br i1 %cmp10.not, label %show_urb.exit.for.end_crit_edge, label %show_urb.exit.for.body_crit_edge

show_urb.exit.for.body_crit_edge:                 ; preds = %show_urb.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

show_urb.exit.for.end_crit_edge:                  ; preds = %show_urb.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %show_urb.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %size.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %show_urb.exit.for.end_crit_edge ]
  %25 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hcd_priv.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %call4) #12
  ret i32 %size.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_link_urb_to_ep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_check_unlink_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_resume_root_hub(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !26, !28, !30, !31, !33, !34, !35, !37, !38, !39, !40, !41, !43, !45, !47, !49, !51, !52, !53, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !119, !120, !121, !123, !124, !125, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !142, !144, !145, !147, !148, !150, !152, !153, !154, !155, !156, !158, !160, !162, !164, !165, !167, !168, !170, !172, !173, !174, !175, !177, !178, !179, !181, !182, !184, !185, !187, !188, !190, !191, !193, !194, !195, !197, !199, !201, !202, !204, !206, !208, !210, !212, !214, !216, !218, !219, !220, !221, !223, !224, !225, !226, !228, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !244, !245, !247, !248, !250, !251, !253, !255, !256, !258, !259, !261, !262, !264, !265, !267, !268, !270, !272, !273, !275, !276, !278, !279, !280, !282, !283, !285, !286, !287, !288, !290}
!llvm.module.flags = !{!291, !292, !293, !294, !295, !296, !297, !298}
!llvm.ident = !{!299}

!0 = !{ptr @__UNIQUE_ID_description237, !1, !"__UNIQUE_ID_description237", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 58, i32 1}
!2 = !{ptr @__UNIQUE_ID_author238, !3, !"__UNIQUE_ID_author238", i1 false, i1 false}
!3 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 59, i32 1}
!4 = !{ptr @__UNIQUE_ID_file239, !5, !"__UNIQUE_ID_file239", i1 false, i1 false}
!5 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 60, i32 1}
!6 = !{ptr @__UNIQUE_ID_license240, !5, !"__UNIQUE_ID_license240", i1 false, i1 false}
!7 = !{ptr @__param_is_super_speed, !8, !"__param_is_super_speed", i1 false, i1 false}
!8 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 73, i32 1}
!9 = !{ptr @__UNIQUE_ID_is_super_speedtype241, !8, !"__UNIQUE_ID_is_super_speedtype241", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_is_super_speed242, !11, !"__UNIQUE_ID_is_super_speed242", i1 false, i1 false}
!11 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 74, i32 1}
!12 = !{ptr @__param_is_high_speed, !13, !"__param_is_high_speed", i1 false, i1 false}
!13 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 75, i32 1}
!14 = !{ptr @__UNIQUE_ID_is_high_speedtype243, !13, !"__UNIQUE_ID_is_high_speedtype243", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_is_high_speed244, !16, !"__UNIQUE_ID_is_high_speed244", i1 false, i1 false}
!16 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 76, i32 1}
!17 = !{ptr @__param_num, !18, !"__param_num", i1 false, i1 false}
!18 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 77, i32 1}
!19 = !{ptr @__UNIQUE_ID_numtype245, !18, !"__UNIQUE_ID_numtype245", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_num246, !21, !"__UNIQUE_ID_num246", i1 false, i1 false}
!21 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 78, i32 1}
!22 = !{ptr @__initcall__kmod_dummy_hcd__286_2890_init6, !23, !"__initcall__kmod_dummy_hcd__286_2890_init6", i1 false, i1 false}
!23 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2890, i32 1}
!24 = !{ptr @__exitcall_cleanup, !25, !"__exitcall_cleanup", i1 false, i1 false}
!25 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2908, i32 1}
!26 = !{ptr @the_udc_pdev, !27, !"the_udc_pdev", i1 false, i1 false}
!27 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2765, i32 32}
!28 = !{ptr @the_hcd_pdev, !29, !"the_hcd_pdev", i1 false, i1 false}
!29 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2766, i32 32}
!30 = !{ptr @__param_str_is_super_speed, !8, !"__param_str_is_super_speed", i1 false, i1 false}
!31 = !{ptr @mod_data, !32, !"mod_data", i1 false, i1 false}
!32 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 68, i32 43}
!33 = !{ptr @__param_str_is_high_speed, !13, !"__param_str_is_high_speed", i1 false, i1 false}
!34 = !{ptr @__param_str_num, !18, !"__param_str_num", i1 false, i1 false}
!35 = !{ptr @.str, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2781, i32 3}
!37 = !{ptr @.str.1, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.2, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @init._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @init._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @driver_name, !42, !"driver_name", i1 false, i1 false}
!42 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 53, i32 19}
!43 = !{ptr @gadget_name, !44, !"gadget_name", i1 false, i1 false}
!44 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 56, i32 19}
!45 = !{ptr @dummy_udc_driver, !46, !"dummy_udc_driver", i1 false, i1 false}
!46 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 1150, i32 31}
!47 = !{ptr @dummy_ops, !48, !"dummy_ops", i1 false, i1 false}
!48 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 950, i32 36}
!49 = !{ptr @.str.3, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 1005, i32 3}
!51 = !{ptr @.str.4, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.5, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.6, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @dummy_udc_start._entry, !50, !"_entry", i1 false, i1 false}
!55 = !{ptr @dummy_udc_start._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.7, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 146, i32 2}
!58 = !{ptr @.str.8, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 148, i32 2}
!60 = !{ptr @.str.9, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 156, i32 2}
!62 = !{ptr @.str.10, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 158, i32 2}
!64 = !{ptr @.str.11, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 160, i32 2}
!66 = !{ptr @.str.12, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 168, i32 2}
!68 = !{ptr @.str.13, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 170, i32 2}
!70 = !{ptr @.str.14, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 172, i32 2}
!72 = !{ptr @.str.15, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 180, i32 2}
!74 = !{ptr @.str.16, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 184, i32 2}
!76 = !{ptr @.str.17, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 186, i32 2}
!78 = !{ptr @.str.18, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 190, i32 2}
!80 = !{ptr @.str.19, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 192, i32 2}
!82 = !{ptr @.str.20, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 194, i32 2}
!84 = !{ptr @.str.21, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 196, i32 2}
!86 = !{ptr @.str.22, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 198, i32 2}
!88 = !{ptr @.str.23, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 200, i32 2}
!90 = !{ptr @.str.24, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 202, i32 2}
!92 = !{ptr @.str.25, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 204, i32 2}
!94 = !{ptr @.str.26, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 206, i32 2}
!96 = !{ptr @.str.27, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 208, i32 2}
!98 = !{ptr @.str.28, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 210, i32 2}
!100 = !{ptr @.str.29, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 212, i32 2}
!102 = !{ptr @.str.30, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 214, i32 2}
!104 = !{ptr @ep_info, !105, !"ep_info", i1 false, i1 false}
!105 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 132, i32 3}
!106 = !{ptr @ep0name, !107, !"ep0name", i1 false, i1 false}
!107 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 127, i32 19}
!108 = !{ptr @dummy_ep_ops, !109, !"dummy_ep_ops", i1 false, i1 false}
!109 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 825, i32 32}
!110 = !{ptr @.str.31, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 538, i32 27}
!112 = !{ptr @.str.32, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 539, i32 28}
!114 = !{ptr @.str.33, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 584, i32 27}
!116 = !{ptr @.str.34, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 612, i32 4}
!118 = !{ptr @.str.35, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @dummy_enable._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @dummy_enable._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.36, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 620, i32 2}
!123 = !{ptr @.str.37, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @dummy_enable.__UNIQUE_ID_ddebug247, !122, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!125 = !{ptr @.str.38, !122, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.39, !122, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.40, !122, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.41, !122, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.42, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 653, i32 2}
!131 = !{ptr @.str.43, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @dummy_disable.__UNIQUE_ID_ddebug248, !130, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!133 = !{ptr @.str.44, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 777, i32 3}
!135 = !{ptr @.str.45, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @dummy_dequeue.__UNIQUE_ID_ddebug249, !134, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!137 = !{ptr @.str.46, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 973, i32 8}
!139 = !{ptr @dev_attr_function, !138, !"dev_attr_function", i1 false, i1 false}
!140 = !{ptr @.str.47, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 971, i32 35}
!142 = !{ptr @.str.48, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 1133, i32 2}
!144 = !{ptr @dummy_udc_suspend.__UNIQUE_ID_ddebug250, !143, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!145 = !{ptr @.str.49, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 1144, i32 2}
!147 = !{ptr @dummy_udc_resume.__UNIQUE_ID_ddebug251, !146, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!148 = !{ptr @dummy_hcd_driver, !149, !"dummy_hcd_driver", i1 false, i1 false}
!149 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2753, i32 31}
!150 = !{ptr @.str.50, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2661, i32 2}
!152 = !{ptr @.str.51, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.52, !151, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @dummy_hcd_probe._entry, !151, !"_entry", i1 false, i1 false}
!155 = !{ptr @dummy_hcd_probe._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @driver_desc, !157, !"driver_desc", i1 false, i1 false}
!157 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 54, i32 19}
!158 = !{ptr @.str.53, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2633, i32 19}
!160 = !{ptr @dummy_hcd, !161, !"dummy_hcd", i1 false, i1 false}
!161 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2631, i32 25}
!162 = !{ptr @dummy_start.__key, !163, !"__key", i1 false, i1 false}
!163 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2496, i32 2}
!164 = !{ptr @.str.54, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @dummy_start.__key.55, !166, !"__key", i1 false, i1 false}
!166 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2497, i32 2}
!167 = !{ptr @.str.56, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @dummy_start_ss.__key, !169, !"__key", i1 false, i1 false}
!169 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2468, i32 2}
!170 = !{ptr @.str.57, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 1806, i32 3}
!172 = !{ptr @.str.58, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @dummy_timer._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @dummy_timer._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.60, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 1817, i32 3}
!177 = !{ptr @dummy_timer._entry.59, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @dummy_timer._entry_ptr.61, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.62, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 1859, i32 4}
!181 = !{ptr @dummy_timer.__UNIQUE_ID_ddebug261, !180, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!182 = !{ptr @.str.63, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 1875, i32 4}
!184 = !{ptr @dummy_timer.__UNIQUE_ID_ddebug262, !183, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!185 = !{ptr @.str.64, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 1892, i32 5}
!187 = !{ptr @dummy_timer.__UNIQUE_ID_ddebug263, !186, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!188 = !{ptr @.str.65, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 1934, i32 6}
!190 = !{ptr @dummy_timer.__UNIQUE_ID_ddebug264, !189, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!191 = !{ptr @.str.66, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 1630, i32 3}
!193 = !{ptr @.str.67, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @handle_control_request.__UNIQUE_ID_ddebug258, !192, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!195 = distinct !{null, !196, !"__already_done", i1 false, i1 false}
!196 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 1368, i32 3}
!197 = distinct !{null, !198, !"__already_done", i1 false, i1 false}
!198 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 1387, i32 4}
!199 = !{ptr @.str.69, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2464, i32 8}
!201 = !{ptr @dev_attr_urbs, !200, !"dev_attr_urbs", i1 false, i1 false}
!202 = !{ptr @.str.70, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2404, i32 3}
!204 = !{ptr @.str.71, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2409, i32 8}
!206 = !{ptr @.str.72, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2412, i32 8}
!208 = !{ptr @.str.73, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2415, i32 8}
!210 = !{ptr @.str.74, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2418, i32 8}
!212 = !{ptr @.str.75, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2421, i32 8}
!214 = !{ptr @.str.76, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2424, i32 51}
!216 = !{ptr @.str.77, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2517, i32 2}
!218 = !{ptr @.str.78, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @dummy_stop._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @dummy_stop._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.79, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 1294, i32 3}
!223 = !{ptr @.str.80, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @dummy_urb_enqueue._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @dummy_urb_enqueue._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.81, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 1251, i32 3}
!228 = !{ptr @.str.82, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @dummy_validate_stream._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @dummy_validate_stream._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.83, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2033, i32 3}
!233 = !{ptr @.str.84, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @dummy_hub_status.__UNIQUE_ID_ddebug269, !232, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!235 = !{ptr @.str.85, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2117, i32 5}
!237 = !{ptr @.str.86, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @dummy_hub_control.__UNIQUE_ID_ddebug270, !236, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!239 = !{ptr @.str.87, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2130, i32 4}
!241 = !{ptr @dummy_hub_control.__UNIQUE_ID_ddebug271, !240, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!242 = !{ptr @.str.88, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2158, i32 4}
!244 = !{ptr @dummy_hub_control.__UNIQUE_ID_ddebug272, !243, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!245 = !{ptr @.str.89, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2231, i32 5}
!247 = !{ptr @dummy_hub_control.__UNIQUE_ID_ddebug273, !246, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!248 = !{ptr @.str.90, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2245, i32 5}
!250 = !{ptr @dummy_hub_control.__UNIQUE_ID_ddebug274, !249, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!251 = !{ptr @dummy_hub_control.__UNIQUE_ID_ddebug275, !252, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!252 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2254, i32 5}
!253 = !{ptr @.str.91, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2268, i32 6}
!255 = !{ptr @dummy_hub_control.__UNIQUE_ID_ddebug276, !254, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!256 = !{ptr @.str.92, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2282, i32 5}
!258 = !{ptr @dummy_hub_control.__UNIQUE_ID_ddebug277, !257, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!259 = !{ptr @.str.93, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2331, i32 4}
!261 = !{ptr @dummy_hub_control.__UNIQUE_ID_ddebug278, !260, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!262 = !{ptr @.str.94, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2341, i32 4}
!264 = !{ptr @dummy_hub_control.__UNIQUE_ID_ddebug279, !263, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!265 = !{ptr @.str.95, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2348, i32 3}
!267 = !{ptr @dummy_hub_control.__UNIQUE_ID_ddebug280, !266, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!268 = !{ptr @usb3_bos_desc, !269, !"usb3_bos_desc", i1 false, i1 false}
!269 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2048, i32 12}
!270 = !{ptr @.str.96, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2366, i32 2}
!272 = !{ptr @dummy_bus_suspend.__UNIQUE_ID_ddebug281, !271, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!273 = !{ptr @.str.97, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2381, i32 2}
!275 = !{ptr @dummy_bus_resume.__UNIQUE_ID_ddebug282, !274, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!276 = !{ptr @.str.98, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2580, i32 4}
!278 = !{ptr @.str.99, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @dummy_alloc_streams.__UNIQUE_ID_ddebug283, !277, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!280 = !{ptr @.str.100, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2729, i32 2}
!282 = !{ptr @dummy_hcd_suspend.__UNIQUE_ID_ddebug284, !281, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!283 = !{ptr @.str.101, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2734, i32 3}
!285 = !{ptr @.str.102, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @dummy_hcd_suspend._entry, !284, !"_entry", i1 false, i1 false}
!287 = !{ptr @dummy_hcd_suspend._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.103, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/usb/gadget/udc/dummy_hcd.c", i32 2745, i32 2}
!290 = !{ptr @dummy_hcd_resume.__UNIQUE_ID_ddebug285, !289, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!291 = !{i32 1, !"wchar_size", i32 2}
!292 = !{i32 1, !"min_enum_size", i32 4}
!293 = !{i32 8, !"branch-target-enforcement", i32 0}
!294 = !{i32 8, !"sign-return-address", i32 0}
!295 = !{i32 8, !"sign-return-address-all", i32 0}
!296 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!297 = !{i32 7, !"uwtable", i32 1}
!298 = !{i32 7, !"frame-pointer", i32 2}
!299 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!300 = !{i8 0, i8 2}
!301 = !{i64 2149082979}
!302 = !{i64 2149025843, i64 2149025848, i64 2149025861, i64 2149025905, i64 2149025939, i64 2149025960}
!303 = !{!"branch_weights", i32 2000, i32 1}
!304 = !{i64 816166, i64 816227}
!305 = !{i64 818898}
!306 = !{!"branch_weights", i32 1, i32 2000}
!307 = !{i64 819183}
!308 = !{i64 2154493511, i64 2154494011, i64 2154493548, i64 2154493604, i64 2154493638, i64 2154493662, i64 2154493703, i64 2154493724, i64 2154493752, i64 2154493786}
