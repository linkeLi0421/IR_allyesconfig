; ModuleID = '/llk/IR_all_yes/drivers/usb/atm/xusbatm.c_pt.bc'
source_filename = "../drivers/usb/atm/xusbatm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.usbatm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_host_config = type { %struct.usb_config_descriptor, ptr, [16 x ptr], [32 x ptr], [32 x ptr], ptr, i32 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usbatm_data = type { ptr, ptr, [16 x i8], i32, ptr, ptr, [64 x i8], ptr, %struct.kref, %struct.mutex, i32, ptr, %struct.completion, %struct.completion, %struct.list_head, %struct.usbatm_channel, %struct.usbatm_channel, %struct.sk_buff_head, ptr, ptr, i32, i16, ptr, i32, [0 x ptr] }
%struct.usbatm_channel = type { i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, %struct.timer_list, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.152, i32 }
%union.anon.152 = type { ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.atm_dev = type { ptr, ptr, ptr, i32, ptr, ptr, i32, %struct.list_head, %struct.list_head, [6 x i8], %struct.atm_cirange, %struct.k_atm_dev_stats, i8, i32, %struct.refcount_struct, %struct.spinlock, ptr, ptr, %struct.device, %struct.list_head }
%struct.atm_cirange = type { i8, i8 }
%struct.k_atm_dev_stats = type { %struct.k_atm_aal_stats, %struct.k_atm_aal_stats, %struct.k_atm_aal_stats }
%struct.k_atm_aal_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }

@__param_str_vendor = internal constant [15 x i8] c"xusbatm.vendor\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_vendor = internal constant %struct.kparam_array { i32 8, i32 2, ptr @num_vendor, ptr @param_ops_ushort, ptr @vendor }, align 4
@__param_vendor = internal constant %struct.kernel_param { ptr @__param_str_vendor, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_vendor } }, section "__param", align 4
@__UNIQUE_ID_vendortype464 = internal constant [40 x i8] c"xusbatm.parmtype=vendor:array of ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_vendor465 = internal constant [38 x i8] c"xusbatm.parm=vendor:USB device vendor\00", section ".modinfo", align 1
@__param_str_product = internal constant [16 x i8] c"xusbatm.product\00", align 1
@__param_arr_product = internal constant %struct.kparam_array { i32 8, i32 2, ptr @num_product, ptr @param_ops_ushort, ptr @product }, align 4
@__param_product = internal constant %struct.kernel_param { ptr @__param_str_product, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_product } }, section "__param", align 4
@__UNIQUE_ID_producttype466 = internal constant [41 x i8] c"xusbatm.parmtype=product:array of ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_product467 = internal constant [40 x i8] c"xusbatm.parm=product:USB device product\00", section ".modinfo", align 1
@__param_str_rx_endpoint = internal constant [20 x i8] c"xusbatm.rx_endpoint\00", align 1
@__param_arr_rx_endpoint = internal constant %struct.kparam_array { i32 8, i32 1, ptr @num_rx_endpoint, ptr @param_ops_byte, ptr @rx_endpoint }, align 4
@__param_rx_endpoint = internal constant %struct.kernel_param { ptr @__param_str_rx_endpoint, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_rx_endpoint } }, section "__param", align 4
@__UNIQUE_ID_rx_endpointtype468 = internal constant [43 x i8] c"xusbatm.parmtype=rx_endpoint:array of byte\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_endpoint469 = internal constant [44 x i8] c"xusbatm.parm=rx_endpoint:rx endpoint number\00", section ".modinfo", align 1
@__param_str_tx_endpoint = internal constant [20 x i8] c"xusbatm.tx_endpoint\00", align 1
@__param_arr_tx_endpoint = internal constant %struct.kparam_array { i32 8, i32 1, ptr @num_tx_endpoint, ptr @param_ops_byte, ptr @tx_endpoint }, align 4
@__param_tx_endpoint = internal constant %struct.kernel_param { ptr @__param_str_tx_endpoint, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_tx_endpoint } }, section "__param", align 4
@__UNIQUE_ID_tx_endpointtype470 = internal constant [43 x i8] c"xusbatm.parmtype=tx_endpoint:array of byte\00", section ".modinfo", align 1
@__UNIQUE_ID_tx_endpoint471 = internal constant [44 x i8] c"xusbatm.parm=tx_endpoint:tx endpoint number\00", section ".modinfo", align 1
@__param_str_rx_padding = internal constant [19 x i8] c"xusbatm.rx_padding\00", align 1
@__param_arr_rx_padding = internal constant %struct.kparam_array { i32 8, i32 1, ptr @num_rx_padding, ptr @param_ops_byte, ptr @rx_padding }, align 4
@__param_rx_padding = internal constant %struct.kernel_param { ptr @__param_str_rx_padding, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_rx_padding } }, section "__param", align 4
@__UNIQUE_ID_rx_paddingtype472 = internal constant [42 x i8] c"xusbatm.parmtype=rx_padding:array of byte\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_padding473 = internal constant [47 x i8] c"xusbatm.parm=rx_padding:rx padding (default 0)\00", section ".modinfo", align 1
@__param_str_tx_padding = internal constant [19 x i8] c"xusbatm.tx_padding\00", align 1
@__param_arr_tx_padding = internal constant %struct.kparam_array { i32 8, i32 1, ptr @num_tx_padding, ptr @param_ops_byte, ptr @tx_padding }, align 4
@__param_tx_padding = internal constant %struct.kernel_param { ptr @__param_str_tx_padding, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_tx_padding } }, section "__param", align 4
@__UNIQUE_ID_tx_paddingtype474 = internal constant [42 x i8] c"xusbatm.parmtype=tx_padding:array of byte\00", section ".modinfo", align 1
@__UNIQUE_ID_tx_padding475 = internal constant [47 x i8] c"xusbatm.parm=tx_padding:tx padding (default 0)\00", section ".modinfo", align 1
@__param_str_rx_altsetting = internal constant [22 x i8] c"xusbatm.rx_altsetting\00", align 1
@__param_arr_rx_altsetting = internal constant %struct.kparam_array { i32 8, i32 1, ptr @num_rx_altsetting, ptr @param_ops_byte, ptr @rx_altsetting }, align 4
@__param_rx_altsetting = internal constant %struct.kernel_param { ptr @__param_str_rx_altsetting, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_rx_altsetting } }, section "__param", align 4
@__UNIQUE_ID_rx_altsettingtype476 = internal constant [45 x i8] c"xusbatm.parmtype=rx_altsetting:array of byte\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_altsetting477 = internal constant [53 x i8] c"xusbatm.parm=rx_altsetting:rx altsetting (default 0)\00", section ".modinfo", align 1
@__param_str_tx_altsetting = internal constant [22 x i8] c"xusbatm.tx_altsetting\00", align 1
@__param_arr_tx_altsetting = internal constant %struct.kparam_array { i32 8, i32 1, ptr @num_tx_altsetting, ptr @param_ops_byte, ptr @tx_altsetting }, align 4
@__param_tx_altsetting = internal constant %struct.kernel_param { ptr @__param_str_tx_altsetting, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_tx_altsetting } }, section "__param", align 4
@__UNIQUE_ID_tx_altsettingtype478 = internal constant [45 x i8] c"xusbatm.parmtype=tx_altsetting:array of byte\00", section ".modinfo", align 1
@__UNIQUE_ID_tx_altsetting479 = internal constant [53 x i8] c"xusbatm.parm=tx_altsetting:rx altsetting (default 0)\00", section ".modinfo", align 1
@__initcall__kmod_xusbatm__486_206_xusbatm_init6 = internal global ptr @xusbatm_init, section ".initcall6.init", align 4
@xusbatm_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @xusbatm_driver_name, ptr @xusbatm_usb_probe, ptr @usbatm_usb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xusbatm_usb_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_xusbatm_exit = internal global ptr @xusbatm_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author487 = internal constant [41 x i8] c"xusbatm.author=Roman Kagan, Duncan Sands\00", section ".modinfo", align 1
@__UNIQUE_ID_description488 = internal constant [72 x i8] c"xusbatm.description=Driver for USB ADSL modems initialized in userspace\00", section ".modinfo", align 1
@__UNIQUE_ID_file489 = internal constant [37 x i8] c"xusbatm.file=drivers/usb/atm/xusbatm\00", section ".modinfo", align 1
@__UNIQUE_ID_license490 = internal constant [20 x i8] c"xusbatm.license=GPL\00", section ".modinfo", align 1
@num_vendor = internal global { i32, [28 x i8] } zeroinitializer, align 32
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@vendor = internal global { [8 x i16], [16 x i8] } zeroinitializer, align 32
@num_product = internal global { i32, [28 x i8] } zeroinitializer, align 32
@product = internal global { [8 x i16], [16 x i8] } zeroinitializer, align 32
@num_rx_endpoint = internal global { i32, [28 x i8] } zeroinitializer, align 32
@param_ops_byte = external dso_local constant %struct.kernel_param_ops, align 4
@rx_endpoint = internal global { [8 x i8], [24 x i8] } zeroinitializer, align 32
@num_tx_endpoint = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tx_endpoint = internal global { [8 x i8], [24 x i8] } zeroinitializer, align 32
@num_rx_padding = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rx_padding = internal global { [8 x i8], [24 x i8] } zeroinitializer, align 32
@num_tx_padding = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tx_padding = internal global { [8 x i8], [24 x i8] } zeroinitializer, align 32
@num_rx_altsetting = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rx_altsetting = internal global { [8 x i8], [24 x i8] } zeroinitializer, align 32
@num_tx_altsetting = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tx_altsetting = internal global { [8 x i8], [24 x i8] } zeroinitializer, align 32
@xusbatm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014xusbatm: malformed module parameters\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xusbatm_init\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/usb/atm/xusbatm.c\00", [38 x i8] zeroinitializer }, align 32
@xusbatm_init._entry_ptr = internal global ptr @xusbatm_init._entry, section ".printk_index", align 4
@xusbatm_usb_ids = internal global { [9 x %struct.usb_device_id], [40 x i8] } zeroinitializer, align 32
@xusbatm_driver_name = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"xusbatm\00", [24 x i8] zeroinitializer }, align 32
@xusbatm_drivers = internal global { [8 x %struct.usbatm_driver], [64 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"xusbatm\00", [24 x i8] zeroinitializer }, align 32
@xusbatm_bind.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xusbatm_bind\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"%s: binding driver %d: vendor %04x product %04x rx: ep %02x padd %d alt %2d tx: ep %02x padd %d alt %2d\0A\00", [55 x i8] zeroinitializer }, align 32
@xusbatm_bind.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: no interface contains endpoint %02x in altsetting %2d\0A\00", [37 x i8] zeroinitializer }, align 32
@xusbatm_bind.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@xusbatm_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.2, i32 110, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: altsettings clash on interface %2d (%2d vs %2d)!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xusbatm_bind._entry_ptr = internal global ptr @xusbatm_bind._entry, section ".printk_index", align 4
@xusbatm_bind.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.10, i8 0, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: rx If#=%2d; tx If#=%2d\0A\00", [36 x i8] zeroinitializer }, align 32
@xusbatm_capture_intf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 59, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: failed to claim interface %2d (%d)!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xusbatm_capture_intf\00", [43 x i8] zeroinitializer }, align 32
@xusbatm_capture_intf._entry_ptr = internal global ptr @xusbatm_capture_intf._entry, section ".printk_index", align 4
@xusbatm_capture_intf._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 64, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: altsetting %2d for interface %2d failed (%d)!\0A\00", [45 x i8] zeroinitializer }, align 32
@xusbatm_capture_intf._entry_ptr.15 = internal global ptr @xusbatm_capture_intf._entry.13, section ".printk_index", align 4
@xusbatm_unbind.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xusbatm_unbind\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s entered\0A\00", [20 x i8] zeroinitializer }, align 32
@xusbatm_atm_start.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xusbatm_atm_start\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ATM dev %d: %s entered\0A\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"xusbatm_usb_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 167, i32 26 }
@___asan_gen_.23 = private unnamed_addr constant [11 x i8] c"num_vendor\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"vendor\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 22, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"num_product\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [8 x i8] c"product\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 23, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"num_rx_endpoint\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [12 x i8] c"rx_endpoint\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 25, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"num_tx_endpoint\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [12 x i8] c"tx_endpoint\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 26, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"num_rx_padding\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [11 x i8] c"rx_padding\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 27, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant [15 x i8] c"num_tx_padding\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [11 x i8] c"tx_padding\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 28, i32 1 }
@___asan_gen_.59 = private unnamed_addr constant [18 x i8] c"num_rx_altsetting\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [14 x i8] c"rx_altsetting\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 29, i32 1 }
@___asan_gen_.65 = private unnamed_addr constant [18 x i8] c"num_tx_altsetting\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [14 x i8] c"tx_altsetting\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 30, i32 1 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 182, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"xusbatm_usb_ids\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 35, i32 29 }
@___asan_gen_.86 = private unnamed_addr constant [20 x i8] c"xusbatm_driver_name\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 32, i32 19 }
@___asan_gen_.89 = private unnamed_addr constant [16 x i8] c"xusbatm_drivers\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 34, i32 29 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 204, i32 9 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 89, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 97, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 109, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 114, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 59, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 64, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 136, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private constant [29 x i8] c"../drivers/usb/atm/xusbatm.c\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 151, i32 2 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_author487, ptr @__UNIQUE_ID_description488, ptr @__UNIQUE_ID_file489, ptr @__UNIQUE_ID_license490, ptr @__UNIQUE_ID_product467, ptr @__UNIQUE_ID_producttype466, ptr @__UNIQUE_ID_rx_altsetting477, ptr @__UNIQUE_ID_rx_altsettingtype476, ptr @__UNIQUE_ID_rx_endpoint469, ptr @__UNIQUE_ID_rx_endpointtype468, ptr @__UNIQUE_ID_rx_padding473, ptr @__UNIQUE_ID_rx_paddingtype472, ptr @__UNIQUE_ID_tx_altsetting479, ptr @__UNIQUE_ID_tx_altsettingtype478, ptr @__UNIQUE_ID_tx_endpoint471, ptr @__UNIQUE_ID_tx_endpointtype470, ptr @__UNIQUE_ID_tx_padding475, ptr @__UNIQUE_ID_tx_paddingtype474, ptr @__UNIQUE_ID_vendor465, ptr @__UNIQUE_ID_vendortype464, ptr @__exitcall_xusbatm_exit, ptr @__initcall__kmod_xusbatm__486_206_xusbatm_init6, ptr @__param_product, ptr @__param_rx_altsetting, ptr @__param_rx_endpoint, ptr @__param_rx_padding, ptr @__param_tx_altsetting, ptr @__param_tx_endpoint, ptr @__param_tx_padding, ptr @__param_vendor, ptr @xusbatm_bind._entry, ptr @xusbatm_bind._entry_ptr, ptr @xusbatm_capture_intf._entry, ptr @xusbatm_capture_intf._entry.13, ptr @xusbatm_capture_intf._entry_ptr, ptr @xusbatm_capture_intf._entry_ptr.15, ptr @xusbatm_exit, ptr @xusbatm_init._entry, ptr @xusbatm_init._entry_ptr, ptr @xusbatm_usb_driver, ptr @num_vendor, ptr @vendor, ptr @num_product, ptr @product, ptr @num_rx_endpoint, ptr @rx_endpoint, ptr @num_tx_endpoint, ptr @tx_endpoint, ptr @num_rx_padding, ptr @rx_padding, ptr @num_tx_padding, ptr @tx_padding, ptr @num_rx_altsetting, ptr @rx_altsetting, ptr @num_tx_altsetting, ptr @tx_altsetting, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @xusbatm_usb_ids, ptr @xusbatm_driver_name, ptr @xusbatm_drivers, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xusbatm_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_vendor to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vendor to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_product to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @product to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_rx_endpoint to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_endpoint to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_tx_endpoint to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_endpoint to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_rx_padding to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_padding to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_tx_padding to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_padding to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_rx_altsetting to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_altsetting to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_tx_altsetting to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_altsetting to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xusbatm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xusbatm_usb_ids to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xusbatm_driver_name to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xusbatm_drivers to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xusbatm_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xusbatm_capture_intf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xusbatm_capture_intf._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xusbatm_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @num_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr @num_product, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %1)
  %cmp.not = icmp eq i32 %0, %1
  br i1 %cmp.not, label %lor.lhs.false1, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr @num_rx_endpoint, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %2)
  %cmp2.not = icmp eq i32 %0, %2
  br i1 %cmp2.not, label %lor.lhs.false3, label %lor.lhs.false1.do.end_crit_edge

lor.lhs.false1.do.end_crit_edge:                  ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false3:                                   ; preds = %lor.lhs.false1
  %3 = load i32, ptr @num_tx_endpoint, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %3)
  %cmp4.not = icmp eq i32 %0, %3
  br i1 %cmp4.not, label %lor.lhs.false3.for.body_crit_edge, label %lor.lhs.false3.do.end_crit_edge

lor.lhs.false3.do.end_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false3.for.body_crit_edge:                ; preds = %lor.lhs.false3
  br label %for.body

do.end:                                           ; preds = %lor.lhs.false3.do.end_crit_edge, %lor.lhs.false1.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %lor.lhs.false3.for.body_crit_edge
  %i.053 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %lor.lhs.false3.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x i8], ptr @rx_endpoint, i32 0, i32 %i.053
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = or i8 %5, -128
  store i8 %6, ptr %arrayidx, align 1
  %arrayidx7 = getelementptr [8 x i8], ptr @tx_endpoint, i32 0, i32 %i.053
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx7, align 1
  %9 = and i8 %8, 15
  store i8 %9, ptr %arrayidx7, align 1
  %arrayidx10 = getelementptr [9 x %struct.usb_device_id], ptr @xusbatm_usb_ids, i32 0, i32 %i.053
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 3, ptr %arrayidx10, align 4
  %arrayidx11 = getelementptr [8 x i16], ptr @vendor, i32 0, i32 %i.053
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx11, align 2
  %idVendor = getelementptr [9 x %struct.usb_device_id], ptr @xusbatm_usb_ids, i32 0, i32 %i.053, i32 1
  %13 = ptrtoint ptr %idVendor to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %idVendor, align 2
  %arrayidx13 = getelementptr [8 x i16], ptr @product, i32 0, i32 %i.053
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx13, align 2
  %idProduct = getelementptr [9 x %struct.usb_device_id], ptr @xusbatm_usb_ids, i32 0, i32 %i.053, i32 2
  %16 = ptrtoint ptr %idProduct to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %idProduct, align 4
  %arrayidx15 = getelementptr [8 x %struct.usbatm_driver], ptr @xusbatm_drivers, i32 0, i32 %i.053
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @xusbatm_driver_name, ptr %arrayidx15, align 4
  %bind = getelementptr [8 x %struct.usbatm_driver], ptr @xusbatm_drivers, i32 0, i32 %i.053, i32 1
  %18 = ptrtoint ptr %bind to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @xusbatm_bind, ptr %bind, align 4
  %unbind = getelementptr [8 x %struct.usbatm_driver], ptr @xusbatm_drivers, i32 0, i32 %i.053, i32 3
  %19 = ptrtoint ptr %unbind to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @xusbatm_unbind, ptr %unbind, align 4
  %atm_start = getelementptr [8 x %struct.usbatm_driver], ptr @xusbatm_drivers, i32 0, i32 %i.053, i32 4
  %20 = ptrtoint ptr %atm_start to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @xusbatm_atm_start, ptr %atm_start, align 4
  %conv20 = zext i8 %6 to i32
  %bulk_in = getelementptr [8 x %struct.usbatm_driver], ptr @xusbatm_drivers, i32 0, i32 %i.053, i32 6
  %21 = ptrtoint ptr %bulk_in to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv20, ptr %bulk_in, align 4
  %conv23 = zext i8 %9 to i32
  %bulk_out = getelementptr [8 x %struct.usbatm_driver], ptr @xusbatm_drivers, i32 0, i32 %i.053, i32 8
  %22 = ptrtoint ptr %bulk_out to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv23, ptr %bulk_out, align 4
  %arrayidx25 = getelementptr [8 x i8], ptr @rx_padding, i32 0, i32 %i.053
  %23 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %24 to i32
  %rx_padding = getelementptr [8 x %struct.usbatm_driver], ptr @xusbatm_drivers, i32 0, i32 %i.053, i32 9
  %25 = ptrtoint ptr %rx_padding to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv26, ptr %rx_padding, align 4
  %arrayidx28 = getelementptr [8 x i8], ptr @tx_padding, i32 0, i32 %i.053
  %26 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %27 to i32
  %tx_padding = getelementptr [8 x %struct.usbatm_driver], ptr @xusbatm_drivers, i32 0, i32 %i.053, i32 10
  %28 = ptrtoint ptr %tx_padding to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv29, ptr %tx_padding, align 4
  %inc = add nuw i32 %i.053, 1
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %call31 = tail call i32 @usb_register_driver(ptr noundef nonnull @xusbatm_usb_driver, ptr noundef null, ptr noundef nonnull @.str.3) #4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call31, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xusbatm_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_deregister(ptr noundef nonnull @xusbatm_usb_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xusbatm_bind(ptr noundef %usbatm, ptr noundef readonly %intf, ptr noundef %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %sub.ptr.lhs.cast = ptrtoint ptr %id to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @xusbatm_usb_ids to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 24
  %arrayidx = getelementptr [8 x i8], ptr @rx_altsetting, i32 0, i32 %sub.ptr.div
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %arrayidx1 = getelementptr [8 x i8], ptr @tx_altsetting, i32 0, i32 %sub.ptr.div
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %5 to i32
  %arrayidx3 = getelementptr [8 x i8], ptr @rx_endpoint, i32 0, i32 %sub.ptr.div
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 1
  %actconfig.i = getelementptr i8, ptr %1, i32 956
  %8 = ptrtoint ptr %actconfig.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %actconfig.i, align 4
  %bNumInterfaces34.i = getelementptr inbounds %struct.usb_config_descriptor, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %bNumInterfaces34.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bNumInterfaces34.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp36.not.i = icmp eq i8 %11, 0
  br i1 %cmp36.not.i, label %entry.xusbatm_find_intf.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.xusbatm_find_intf.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %xusbatm_find_intf.exit

for.body.i:                                       ; preds = %for.inc18.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %12 = phi ptr [ %22, %for.inc18.i.for.body.i_crit_edge ], [ %9, %entry.for.body.i_crit_edge ]
  %i.037.i = phi i32 [ %inc19.i, %for.inc18.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.usb_host_config, ptr %12, i32 0, i32 3, i32 %i.037.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %for.body.i.for.inc18.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc18.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc18.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %call.i = tail call ptr @usb_altnum_to_altsetting(ptr noundef nonnull %14, i32 noundef %conv) #4
  %tobool3.not.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.for.inc18.i_crit_edge, label %for.cond4.preheader.i

land.lhs.true.i.for.inc18.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc18.i

for.cond4.preheader.i:                            ; preds = %land.lhs.true.i
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bNumEndpoints.i, align 4
  %conv6.i = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp732.not.i = icmp eq i8 %16, 0
  br i1 %cmp732.not.i, label %for.cond4.preheader.i.for.inc18.i_crit_edge, label %for.body9.lr.ph.i

for.cond4.preheader.i.for.inc18.i_crit_edge:      ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc18.i

for.body9.lr.ph.i:                                ; preds = %for.cond4.preheader.i
  %endpoint.i = getelementptr inbounds %struct.usb_host_interface, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %endpoint.i, align 4
  br label %for.body9.i

for.cond4.i:                                      ; preds = %for.body9.i
  %inc.i = add nuw nsw i32 %j.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv6.i
  br i1 %exitcond.not.i, label %for.cond4.i.for.inc18.i_crit_edge, label %for.cond4.i.for.body9.i_crit_edge

for.cond4.i.for.body9.i_crit_edge:                ; preds = %for.cond4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body9.i

for.cond4.i.for.inc18.i_crit_edge:                ; preds = %for.cond4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc18.i

for.body9.i:                                      ; preds = %for.cond4.i.for.body9.i_crit_edge, %for.body9.lr.ph.i
  %j.033.i = phi i32 [ 0, %for.body9.lr.ph.i ], [ %inc.i, %for.cond4.i.for.body9.i_crit_edge ]
  %bEndpointAddress.i = getelementptr %struct.usb_host_endpoint, ptr %18, i32 %j.033.i, i32 0, i32 2
  %19 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bEndpointAddress.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %7)
  %cmp14.i = icmp eq i8 %20, %7
  br i1 %cmp14.i, label %for.body9.i.xusbatm_find_intf.exit_crit_edge, label %for.cond4.i

for.body9.i.xusbatm_find_intf.exit_crit_edge:     ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xusbatm_find_intf.exit

for.inc18.i:                                      ; preds = %for.cond4.i.for.inc18.i_crit_edge, %for.cond4.preheader.i.for.inc18.i_crit_edge, %land.lhs.true.i.for.inc18.i_crit_edge, %for.body.i.for.inc18.i_crit_edge
  %inc19.i = add nuw nsw i32 %i.037.i, 1
  %21 = ptrtoint ptr %actconfig.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %actconfig.i, align 4
  %bNumInterfaces.i = getelementptr inbounds %struct.usb_config_descriptor, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %bNumInterfaces.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bNumInterfaces.i, align 4
  %conv.i = zext i8 %24 to i32
  %cmp.i = icmp ult i32 %inc19.i, %conv.i
  br i1 %cmp.i, label %for.inc18.i.for.body.i_crit_edge, label %for.inc18.i.xusbatm_find_intf.exit_crit_edge

for.inc18.i.xusbatm_find_intf.exit_crit_edge:     ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xusbatm_find_intf.exit

for.inc18.i.for.body.i_crit_edge:                 ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

xusbatm_find_intf.exit:                           ; preds = %for.inc18.i.xusbatm_find_intf.exit_crit_edge, %for.body9.i.xusbatm_find_intf.exit_crit_edge, %entry.xusbatm_find_intf.exit_crit_edge
  %retval.0.i206 = phi ptr [ null, %entry.xusbatm_find_intf.exit_crit_edge ], [ %14, %for.body9.i.xusbatm_find_intf.exit_crit_edge ], [ null, %for.inc18.i.xusbatm_find_intf.exit_crit_edge ]
  %arrayidx5 = getelementptr [8 x i8], ptr @tx_endpoint, i32 0, i32 %sub.ptr.div
  %25 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx5, align 1
  %27 = ptrtoint ptr %actconfig.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %actconfig.i, align 4
  %bNumInterfaces34.i208 = getelementptr inbounds %struct.usb_config_descriptor, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %bNumInterfaces34.i208 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bNumInterfaces34.i208, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp36.not.i209 = icmp eq i8 %30, 0
  br i1 %cmp36.not.i209, label %xusbatm_find_intf.exit.xusbatm_find_intf.exit236_crit_edge, label %xusbatm_find_intf.exit.for.body.i213_crit_edge

xusbatm_find_intf.exit.for.body.i213_crit_edge:   ; preds = %xusbatm_find_intf.exit
  br label %for.body.i213

xusbatm_find_intf.exit.xusbatm_find_intf.exit236_crit_edge: ; preds = %xusbatm_find_intf.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %xusbatm_find_intf.exit236

for.body.i213:                                    ; preds = %for.inc18.i234.for.body.i213_crit_edge, %xusbatm_find_intf.exit.for.body.i213_crit_edge
  %31 = phi ptr [ %41, %for.inc18.i234.for.body.i213_crit_edge ], [ %28, %xusbatm_find_intf.exit.for.body.i213_crit_edge ]
  %i.037.i210 = phi i32 [ %inc19.i230, %for.inc18.i234.for.body.i213_crit_edge ], [ 0, %xusbatm_find_intf.exit.for.body.i213_crit_edge ]
  %arrayidx.i211 = getelementptr %struct.usb_host_config, ptr %31, i32 0, i32 3, i32 %i.037.i210
  %32 = ptrtoint ptr %arrayidx.i211 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i211, align 4
  %tobool.not.i212 = icmp eq ptr %33, null
  br i1 %tobool.not.i212, label %for.body.i213.for.inc18.i234_crit_edge, label %land.lhs.true.i216

for.body.i213.for.inc18.i234_crit_edge:           ; preds = %for.body.i213
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc18.i234

land.lhs.true.i216:                               ; preds = %for.body.i213
  %call.i214 = tail call ptr @usb_altnum_to_altsetting(ptr noundef nonnull %33, i32 noundef %conv2) #4
  %tobool3.not.i215 = icmp eq ptr %call.i214, null
  br i1 %tobool3.not.i215, label %land.lhs.true.i216.for.inc18.i234_crit_edge, label %for.cond4.preheader.i220

land.lhs.true.i216.for.inc18.i234_crit_edge:      ; preds = %land.lhs.true.i216
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc18.i234

for.cond4.preheader.i220:                         ; preds = %land.lhs.true.i216
  %bNumEndpoints.i217 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %call.i214, i32 0, i32 4
  %34 = ptrtoint ptr %bNumEndpoints.i217 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bNumEndpoints.i217, align 4
  %conv6.i218 = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp732.not.i219 = icmp eq i8 %35, 0
  br i1 %cmp732.not.i219, label %for.cond4.preheader.i220.for.inc18.i234_crit_edge, label %for.body9.lr.ph.i222

for.cond4.preheader.i220.for.inc18.i234_crit_edge: ; preds = %for.cond4.preheader.i220
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc18.i234

for.body9.lr.ph.i222:                             ; preds = %for.cond4.preheader.i220
  %endpoint.i221 = getelementptr inbounds %struct.usb_host_interface, ptr %call.i214, i32 0, i32 3
  %36 = ptrtoint ptr %endpoint.i221 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %endpoint.i221, align 4
  br label %for.body9.i229

for.cond4.i225:                                   ; preds = %for.body9.i229
  %inc.i223 = add nuw nsw i32 %j.033.i226, 1
  %exitcond.not.i224 = icmp eq i32 %inc.i223, %conv6.i218
  br i1 %exitcond.not.i224, label %for.cond4.i225.for.inc18.i234_crit_edge, label %for.cond4.i225.for.body9.i229_crit_edge

for.cond4.i225.for.body9.i229_crit_edge:          ; preds = %for.cond4.i225
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body9.i229

for.cond4.i225.for.inc18.i234_crit_edge:          ; preds = %for.cond4.i225
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc18.i234

for.body9.i229:                                   ; preds = %for.cond4.i225.for.body9.i229_crit_edge, %for.body9.lr.ph.i222
  %j.033.i226 = phi i32 [ 0, %for.body9.lr.ph.i222 ], [ %inc.i223, %for.cond4.i225.for.body9.i229_crit_edge ]
  %bEndpointAddress.i227 = getelementptr %struct.usb_host_endpoint, ptr %37, i32 %j.033.i226, i32 0, i32 2
  %38 = ptrtoint ptr %bEndpointAddress.i227 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bEndpointAddress.i227, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %26)
  %cmp14.i228 = icmp eq i8 %39, %26
  br i1 %cmp14.i228, label %for.body9.i229.xusbatm_find_intf.exit236_crit_edge, label %for.cond4.i225

for.body9.i229.xusbatm_find_intf.exit236_crit_edge: ; preds = %for.body9.i229
  call void @__sanitizer_cov_trace_pc() #6
  br label %xusbatm_find_intf.exit236

for.inc18.i234:                                   ; preds = %for.cond4.i225.for.inc18.i234_crit_edge, %for.cond4.preheader.i220.for.inc18.i234_crit_edge, %land.lhs.true.i216.for.inc18.i234_crit_edge, %for.body.i213.for.inc18.i234_crit_edge
  %inc19.i230 = add nuw nsw i32 %i.037.i210, 1
  %40 = ptrtoint ptr %actconfig.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %actconfig.i, align 4
  %bNumInterfaces.i231 = getelementptr inbounds %struct.usb_config_descriptor, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %bNumInterfaces.i231 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %bNumInterfaces.i231, align 4
  %conv.i232 = zext i8 %43 to i32
  %cmp.i233 = icmp ult i32 %inc19.i230, %conv.i232
  br i1 %cmp.i233, label %for.inc18.i234.for.body.i213_crit_edge, label %for.inc18.i234.xusbatm_find_intf.exit236_crit_edge

for.inc18.i234.xusbatm_find_intf.exit236_crit_edge: ; preds = %for.inc18.i234
  call void @__sanitizer_cov_trace_pc() #6
  br label %xusbatm_find_intf.exit236

for.inc18.i234.for.body.i213_crit_edge:           ; preds = %for.inc18.i234
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i213

xusbatm_find_intf.exit236:                        ; preds = %for.inc18.i234.xusbatm_find_intf.exit236_crit_edge, %for.body9.i229.xusbatm_find_intf.exit236_crit_edge, %xusbatm_find_intf.exit.xusbatm_find_intf.exit236_crit_edge
  %retval.0.i235 = phi ptr [ null, %xusbatm_find_intf.exit.xusbatm_find_intf.exit236_crit_edge ], [ %33, %for.body9.i229.xusbatm_find_intf.exit236_crit_edge ], [ null, %for.inc18.i234.xusbatm_find_intf.exit236_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xusbatm_bind.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xusbatm_bind, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !135

if.then:                                          ; preds = %xusbatm_find_intf.exit236
  call void @__sanitizer_cov_trace_pc() #6
  %usb_intf = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 5
  %44 = ptrtoint ptr %usb_intf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %usb_intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %45, i32 0, i32 7
  %arrayidx10 = getelementptr [8 x i16], ptr @vendor, i32 0, i32 %sub.ptr.div
  %46 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx10, align 2
  %conv11 = zext i16 %47 to i32
  %arrayidx12 = getelementptr [8 x i16], ptr @product, i32 0, i32 %sub.ptr.div
  %48 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx12, align 2
  %conv13 = zext i16 %49 to i32
  %50 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx3, align 1
  %conv15 = zext i8 %51 to i32
  %arrayidx16 = getelementptr [8 x i8], ptr @rx_padding, i32 0, i32 %sub.ptr.div
  %52 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %53 to i32
  %54 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx5, align 1
  %conv19 = zext i8 %55 to i32
  %arrayidx20 = getelementptr [8 x i8], ptr @tx_padding, i32 0, i32 %sub.ptr.div
  %56 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %57 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xusbatm_bind.__UNIQUE_ID_ddebug480, ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef %sub.ptr.div, i32 noundef %conv11, i32 noundef %conv13, i32 noundef %conv15, i32 noundef %conv17, i32 noundef %conv, i32 noundef %conv19, i32 noundef %conv21, i32 noundef %conv2) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %xusbatm_find_intf.exit236
  %tobool22.not = icmp eq ptr %retval.0.i206, null
  %tobool23.not = icmp eq ptr %retval.0.i235, null
  %or.cond = select i1 %tobool22.not, i1 true, i1 %tobool23.not
  br i1 %or.cond, label %if.then24, label %if.end71

if.then24:                                        ; preds = %do.end
  br i1 %tobool22.not, label %do.body27, label %if.then24.if.end47_crit_edge

if.then24.if.end47_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

do.body27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xusbatm_bind.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xusbatm_bind, %if.then39)) #4
          to label %if.end47 [label %if.then39], !srcloc !135

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #6
  %usb_intf40 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 5
  %58 = ptrtoint ptr %usb_intf40 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %usb_intf40, align 4
  %dev41 = getelementptr inbounds %struct.usb_interface, ptr %59, i32 0, i32 7
  %60 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx3, align 1
  %conv43 = zext i8 %61 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xusbatm_bind.__UNIQUE_ID_ddebug481, ptr noundef %dev41, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %conv43, i32 noundef %conv) #4
  br label %if.end47

if.end47:                                         ; preds = %if.then39, %do.body27, %if.then24.if.end47_crit_edge
  br i1 %tobool23.not, label %do.body50, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xusbatm_bind.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xusbatm_bind, %if.then62)) #4
          to label %cleanup [label %if.then62], !srcloc !135

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #6
  %usb_intf63 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 5
  %62 = ptrtoint ptr %usb_intf63 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %usb_intf63, align 4
  %dev64 = getelementptr inbounds %struct.usb_interface, ptr %63, i32 0, i32 7
  %64 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx5, align 1
  %conv66 = zext i8 %65 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xusbatm_bind.__UNIQUE_ID_ddebug482, ptr noundef %dev64, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %conv66, i32 noundef %conv2) #4
  br label %cleanup

if.end71:                                         ; preds = %do.end
  %cmp.not270 = icmp eq ptr %retval.0.i206, %intf
  %cmp73.not = icmp eq ptr %retval.0.i235, %intf
  %or.cond195 = select i1 %cmp.not270, i1 true, i1 %cmp73.not
  br i1 %or.cond195, label %if.end76, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end76:                                         ; preds = %if.end71
  %cmp77 = icmp ne ptr %retval.0.i206, %retval.0.i235
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp80.not = icmp eq i8 %3, %5
  %or.cond196 = select i1 %cmp77, i1 true, i1 %cmp80.not
  br i1 %or.cond196, label %do.body90, label %do.end85

do.end85:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #6
  %usb_intf86 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 5
  %66 = ptrtoint ptr %usb_intf86 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %usb_intf86, align 4
  %dev87 = getelementptr inbounds %struct.usb_interface, ptr %67, i32 0, i32 7
  %68 = ptrtoint ptr %retval.0.i206 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %retval.0.i206, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %bInterfaceNumber, align 2
  %conv88 = zext i8 %71 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev87, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, i32 noundef %conv88, i32 noundef %conv, i32 noundef %conv2) #7
  br label %cleanup

do.body90:                                        ; preds = %if.end76
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xusbatm_bind.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xusbatm_bind, %if.then102)) #4
          to label %do.end115 [label %if.then102], !srcloc !135

if.then102:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #6
  %usb_intf103 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 5
  %72 = ptrtoint ptr %usb_intf103 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %usb_intf103, align 4
  %dev104 = getelementptr inbounds %struct.usb_interface, ptr %73, i32 0, i32 7
  %74 = ptrtoint ptr %retval.0.i206 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %retval.0.i206, align 8
  %bInterfaceNumber107 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %bInterfaceNumber107 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %bInterfaceNumber107, align 2
  %conv108 = zext i8 %77 to i32
  %78 = ptrtoint ptr %retval.0.i235 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %retval.0.i235, align 8
  %bInterfaceNumber111 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %bInterfaceNumber111 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %bInterfaceNumber111, align 2
  %conv112 = zext i8 %81 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xusbatm_bind.__UNIQUE_ID_ddebug483, ptr noundef %dev104, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4, i32 noundef %conv108, i32 noundef %conv112) #4
  br label %do.end115

do.end115:                                        ; preds = %if.then102, %do.body90
  %82 = ptrtoint ptr %retval.0.i206 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %retval.0.i206, align 8
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %bInterfaceNumber.i, align 2
  %conv.i237 = zext i8 %85 to i32
  br i1 %cmp.not270, label %do.end115.if.end.i_crit_edge, label %land.lhs.true.i240

do.end115.if.end.i_crit_edge:                     ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.lhs.true.i240:                               ; preds = %do.end115
  %call.i239 = tail call i32 @usb_driver_claim_interface(ptr noundef nonnull @xusbatm_usb_driver, ptr noundef nonnull %retval.0.i206, ptr noundef %usbatm) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i239)
  %tobool2.not.i = icmp eq i32 %call.i239, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i240.if.end.i_crit_edge, label %do.end.i

land.lhs.true.i240.if.end.i_crit_edge:            ; preds = %land.lhs.true.i240
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

do.end.i:                                         ; preds = %land.lhs.true.i240
  call void @__sanitizer_cov_trace_pc() #6
  %usb_intf.i = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 5
  %86 = ptrtoint ptr %usb_intf.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %usb_intf.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %87, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %conv.i237, i32 noundef %call.i239) #7
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true.i240.if.end.i_crit_edge, %do.end115.if.end.i_crit_edge
  %call3.i = tail call i32 @usb_set_interface(ptr noundef %add.ptr.i, i32 noundef %conv.i237, i32 noundef %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end121, label %do.end8.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %usb_intf9.i = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 5
  %88 = ptrtoint ptr %usb_intf9.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %usb_intf9.i, align 4
  %dev10.i = getelementptr inbounds %struct.usb_interface, ptr %89, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef %conv, i32 noundef %conv.i237, i32 noundef %call3.i) #7
  br label %cleanup

if.end121:                                        ; preds = %if.end.i
  %cmp122.not = icmp eq ptr %retval.0.i235, %retval.0.i206
  br i1 %cmp122.not, label %if.end121.cleanup_crit_edge, label %land.lhs.true124

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true124:                                 ; preds = %if.end121
  %90 = ptrtoint ptr %retval.0.i235 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %retval.0.i235, align 8
  %bInterfaceNumber.i242 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %bInterfaceNumber.i242 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %bInterfaceNumber.i242, align 2
  %conv.i243 = zext i8 %93 to i32
  br i1 %cmp73.not, label %land.lhs.true124.if.end.i253_crit_edge, label %land.lhs.true.i247

land.lhs.true124.if.end.i253_crit_edge:           ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i253

land.lhs.true.i247:                               ; preds = %land.lhs.true124
  %call.i245 = tail call i32 @usb_driver_claim_interface(ptr noundef nonnull @xusbatm_usb_driver, ptr noundef nonnull %retval.0.i235, ptr noundef %usbatm) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i245)
  %tobool2.not.i246 = icmp eq i32 %call.i245, 0
  br i1 %tobool2.not.i246, label %land.lhs.true.i247.if.end.i253_crit_edge, label %do.end.i250

land.lhs.true.i247.if.end.i253_crit_edge:         ; preds = %land.lhs.true.i247
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i253

do.end.i250:                                      ; preds = %land.lhs.true.i247
  call void @__sanitizer_cov_trace_pc() #6
  %usb_intf.i248 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 5
  %94 = ptrtoint ptr %usb_intf.i248 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %usb_intf.i248, align 4
  %dev.i249 = getelementptr inbounds %struct.usb_interface, ptr %95, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i249, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %conv.i243, i32 noundef %call.i245) #7
  br label %if.then129

if.end.i253:                                      ; preds = %land.lhs.true.i247.if.end.i253_crit_edge, %land.lhs.true124.if.end.i253_crit_edge
  %call3.i251 = tail call i32 @usb_set_interface(ptr noundef %add.ptr.i, i32 noundef %conv.i243, i32 noundef %conv2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i251)
  %tobool4.not.i252 = icmp eq i32 %call3.i251, 0
  br i1 %tobool4.not.i252, label %if.end.i253.cleanup_crit_edge, label %do.end8.i256

if.end.i253.cleanup_crit_edge:                    ; preds = %if.end.i253
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end8.i256:                                     ; preds = %if.end.i253
  call void @__sanitizer_cov_trace_pc() #6
  %usb_intf9.i254 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 5
  %96 = ptrtoint ptr %usb_intf9.i254 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %usb_intf9.i254, align 4
  %dev10.i255 = getelementptr inbounds %struct.usb_interface, ptr %97, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i255, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef %conv2, i32 noundef %conv.i243, i32 noundef %call3.i251) #7
  br label %if.then129

if.then129:                                       ; preds = %do.end8.i256, %do.end.i250
  %retval.0.i257.ph = phi i32 [ %call3.i251, %do.end8.i256 ], [ %call.i245, %do.end.i250 ]
  br i1 %cmp.not270, label %if.then129.cleanup_crit_edge, label %if.then.i

if.then129.cleanup_crit_edge:                     ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i:                                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #6
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %retval.0.i206, i32 0, i32 7, i32 8
  %98 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %driver_data.i.i.i, align 4
  tail call void @usb_driver_release_interface(ptr noundef nonnull @xusbatm_usb_driver, ptr noundef nonnull %retval.0.i206) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then129.cleanup_crit_edge, %if.end.i253.cleanup_crit_edge, %if.end121.cleanup_crit_edge, %do.end8.i, %do.end.i, %do.end85, %if.end71.cleanup_crit_edge, %if.then62, %do.body50, %if.end47.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end85 ], [ -19, %if.then62 ], [ -19, %if.end47.cleanup_crit_edge ], [ -19, %if.end71.cleanup_crit_edge ], [ 0, %if.end121.cleanup_crit_edge ], [ -19, %do.body50 ], [ 0, %if.end.i253.cleanup_crit_edge ], [ %retval.0.i257.ph, %if.then129.cleanup_crit_edge ], [ %retval.0.i257.ph, %if.then.i ], [ %call3.i, %do.end8.i ], [ %call.i239, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xusbatm_unbind(ptr noundef readonly %usbatm, ptr nocapture noundef readonly %intf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xusbatm_unbind.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xusbatm_unbind, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !135

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %usb_intf = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 5
  %2 = ptrtoint ptr %usb_intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xusbatm_unbind.__UNIQUE_ID_ddebug484, ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %actconfig = getelementptr i8, ptr %1, i32 956
  %4 = ptrtoint ptr %actconfig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %actconfig, align 4
  %bNumInterfaces21 = getelementptr inbounds %struct.usb_config_descriptor, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %bNumInterfaces21 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bNumInterfaces21, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp23.not = icmp eq i8 %7, 0
  br i1 %cmp23.not, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %do.end.for.body_crit_edge
  %8 = phi ptr [ %15, %if.end11.for.body_crit_edge ], [ %5, %do.end.for.body_crit_edge ]
  %i.024 = phi i32 [ %inc, %if.end11.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.usb_host_config, ptr %8, i32 0, i32 3, i32 %i.024
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %for.body.if.end11_crit_edge, label %land.lhs.true

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

land.lhs.true:                                    ; preds = %for.body
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i, align 4
  %cmp8 = icmp eq ptr %12, %usbatm
  br i1 %cmp8, label %if.then10, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @usb_driver_release_interface(ptr noundef nonnull @xusbatm_usb_driver, ptr noundef nonnull %10) #4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %land.lhs.true.if.end11_crit_edge, %for.body.if.end11_crit_edge
  %inc = add nuw nsw i32 %i.024, 1
  %14 = ptrtoint ptr %actconfig to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %actconfig, align 4
  %bNumInterfaces = getelementptr inbounds %struct.usb_config_descriptor, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %bNumInterfaces to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bNumInterfaces, align 4
  %conv = zext i8 %17 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %if.end11.for.body_crit_edge, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end11.for.end_crit_edge, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xusbatm_atm_start(ptr nocapture noundef readonly %usbatm, ptr noundef %atm_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xusbatm_atm_start.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xusbatm_atm_start, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !135

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %atm_dev3 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 7
  %0 = ptrtoint ptr %atm_dev3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %atm_dev3, align 4
  %number = getelementptr inbounds %struct.atm_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %number, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xusbatm_atm_start.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.19, i32 noundef %3, ptr noundef nonnull @.str.18) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %esi = getelementptr inbounds %struct.atm_dev, ptr %atm_dev, i32 0, i32 9
  tail call void @get_random_bytes(ptr noundef %esi, i32 noundef 6) #4
  %4 = ptrtoint ptr %esi to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %esi, align 1
  %6 = and i8 %5, -4
  %7 = or i8 %6, 2
  store i8 %7, ptr %esi, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_altnum_to_altsetting(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_driver_claim_interface(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_driver_release_interface(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xusbatm_usb_probe(ptr noundef %intf, ptr noundef %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sub.ptr.lhs.cast = ptrtoint ptr %id to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @xusbatm_usb_ids to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 24
  %add.ptr = getelementptr %struct.usbatm_driver, ptr @xusbatm_drivers, i32 %sub.ptr.div
  %call = tail call i32 @usbatm_usb_probe(ptr noundef %intf, ptr noundef %id, ptr noundef %add.ptr) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbatm_usb_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbatm_usb_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !77, !78, !79, !80, !81, !83, !85, !87, !89, !91, !92, !93, !95, !96, !98, !100, !101, !102, !103, !104, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !{ptr @__param_vendor, !1, !"__param_vendor", i1 false, i1 false}
!1 = !{!"../drivers/usb/atm/xusbatm.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_vendortype464, !1, !"__UNIQUE_ID_vendortype464", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_vendor465, !1, !"__UNIQUE_ID_vendor465", i1 false, i1 false}
!4 = !{ptr @__param_product, !5, !"__param_product", i1 false, i1 false}
!5 = !{!"../drivers/usb/atm/xusbatm.c", i32 23, i32 1}
!6 = !{ptr @__UNIQUE_ID_producttype466, !5, !"__UNIQUE_ID_producttype466", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_product467, !5, !"__UNIQUE_ID_product467", i1 false, i1 false}
!8 = !{ptr @__param_rx_endpoint, !9, !"__param_rx_endpoint", i1 false, i1 false}
!9 = !{!"../drivers/usb/atm/xusbatm.c", i32 25, i32 1}
!10 = !{ptr @__UNIQUE_ID_rx_endpointtype468, !9, !"__UNIQUE_ID_rx_endpointtype468", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_rx_endpoint469, !9, !"__UNIQUE_ID_rx_endpoint469", i1 false, i1 false}
!12 = !{ptr @__param_tx_endpoint, !13, !"__param_tx_endpoint", i1 false, i1 false}
!13 = !{!"../drivers/usb/atm/xusbatm.c", i32 26, i32 1}
!14 = !{ptr @__UNIQUE_ID_tx_endpointtype470, !13, !"__UNIQUE_ID_tx_endpointtype470", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_tx_endpoint471, !13, !"__UNIQUE_ID_tx_endpoint471", i1 false, i1 false}
!16 = !{ptr @__param_rx_padding, !17, !"__param_rx_padding", i1 false, i1 false}
!17 = !{!"../drivers/usb/atm/xusbatm.c", i32 27, i32 1}
!18 = !{ptr @__UNIQUE_ID_rx_paddingtype472, !17, !"__UNIQUE_ID_rx_paddingtype472", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_rx_padding473, !17, !"__UNIQUE_ID_rx_padding473", i1 false, i1 false}
!20 = !{ptr @__param_tx_padding, !21, !"__param_tx_padding", i1 false, i1 false}
!21 = !{!"../drivers/usb/atm/xusbatm.c", i32 28, i32 1}
!22 = !{ptr @__UNIQUE_ID_tx_paddingtype474, !21, !"__UNIQUE_ID_tx_paddingtype474", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_tx_padding475, !21, !"__UNIQUE_ID_tx_padding475", i1 false, i1 false}
!24 = !{ptr @__param_rx_altsetting, !25, !"__param_rx_altsetting", i1 false, i1 false}
!25 = !{!"../drivers/usb/atm/xusbatm.c", i32 29, i32 1}
!26 = !{ptr @__UNIQUE_ID_rx_altsettingtype476, !25, !"__UNIQUE_ID_rx_altsettingtype476", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_rx_altsetting477, !25, !"__UNIQUE_ID_rx_altsetting477", i1 false, i1 false}
!28 = !{ptr @__param_tx_altsetting, !29, !"__param_tx_altsetting", i1 false, i1 false}
!29 = !{!"../drivers/usb/atm/xusbatm.c", i32 30, i32 1}
!30 = !{ptr @__UNIQUE_ID_tx_altsettingtype478, !29, !"__UNIQUE_ID_tx_altsettingtype478", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_tx_altsetting479, !29, !"__UNIQUE_ID_tx_altsetting479", i1 false, i1 false}
!32 = !{ptr @__initcall__kmod_xusbatm__486_206_xusbatm_init6, !33, !"__initcall__kmod_xusbatm__486_206_xusbatm_init6", i1 false, i1 false}
!33 = !{!"../drivers/usb/atm/xusbatm.c", i32 206, i32 1}
!34 = !{ptr @__exitcall_xusbatm_exit, !35, !"__exitcall_xusbatm_exit", i1 false, i1 false}
!35 = !{!"../drivers/usb/atm/xusbatm.c", i32 212, i32 1}
!36 = !{ptr @__UNIQUE_ID_author487, !37, !"__UNIQUE_ID_author487", i1 false, i1 false}
!37 = !{!"../drivers/usb/atm/xusbatm.c", i32 214, i32 1}
!38 = !{ptr @__UNIQUE_ID_description488, !39, !"__UNIQUE_ID_description488", i1 false, i1 false}
!39 = !{!"../drivers/usb/atm/xusbatm.c", i32 215, i32 1}
!40 = !{ptr @__UNIQUE_ID_file489, !41, !"__UNIQUE_ID_file489", i1 false, i1 false}
!41 = !{!"../drivers/usb/atm/xusbatm.c", i32 216, i32 1}
!42 = !{ptr @__UNIQUE_ID_license490, !41, !"__UNIQUE_ID_license490", i1 false, i1 false}
!43 = !{ptr @__param_str_vendor, !1, !"__param_str_vendor", i1 false, i1 false}
!44 = !{ptr @__param_arr_vendor, !1, !"__param_arr_vendor", i1 false, i1 false}
!45 = !{ptr @num_vendor, !1, !"num_vendor", i1 false, i1 false}
!46 = !{ptr @vendor, !1, !"vendor", i1 false, i1 false}
!47 = !{ptr @__param_str_product, !5, !"__param_str_product", i1 false, i1 false}
!48 = !{ptr @__param_arr_product, !5, !"__param_arr_product", i1 false, i1 false}
!49 = !{ptr @num_product, !5, !"num_product", i1 false, i1 false}
!50 = !{ptr @product, !5, !"product", i1 false, i1 false}
!51 = !{ptr @__param_str_rx_endpoint, !9, !"__param_str_rx_endpoint", i1 false, i1 false}
!52 = !{ptr @__param_arr_rx_endpoint, !9, !"__param_arr_rx_endpoint", i1 false, i1 false}
!53 = !{ptr @num_rx_endpoint, !9, !"num_rx_endpoint", i1 false, i1 false}
!54 = !{ptr @rx_endpoint, !9, !"rx_endpoint", i1 false, i1 false}
!55 = !{ptr @__param_str_tx_endpoint, !13, !"__param_str_tx_endpoint", i1 false, i1 false}
!56 = !{ptr @__param_arr_tx_endpoint, !13, !"__param_arr_tx_endpoint", i1 false, i1 false}
!57 = !{ptr @num_tx_endpoint, !13, !"num_tx_endpoint", i1 false, i1 false}
!58 = !{ptr @tx_endpoint, !13, !"tx_endpoint", i1 false, i1 false}
!59 = !{ptr @__param_str_rx_padding, !17, !"__param_str_rx_padding", i1 false, i1 false}
!60 = !{ptr @__param_arr_rx_padding, !17, !"__param_arr_rx_padding", i1 false, i1 false}
!61 = !{ptr @num_rx_padding, !17, !"num_rx_padding", i1 false, i1 false}
!62 = !{ptr @rx_padding, !17, !"rx_padding", i1 false, i1 false}
!63 = !{ptr @__param_str_tx_padding, !21, !"__param_str_tx_padding", i1 false, i1 false}
!64 = !{ptr @__param_arr_tx_padding, !21, !"__param_arr_tx_padding", i1 false, i1 false}
!65 = !{ptr @num_tx_padding, !21, !"num_tx_padding", i1 false, i1 false}
!66 = !{ptr @tx_padding, !21, !"tx_padding", i1 false, i1 false}
!67 = !{ptr @__param_str_rx_altsetting, !25, !"__param_str_rx_altsetting", i1 false, i1 false}
!68 = !{ptr @__param_arr_rx_altsetting, !25, !"__param_arr_rx_altsetting", i1 false, i1 false}
!69 = !{ptr @num_rx_altsetting, !25, !"num_rx_altsetting", i1 false, i1 false}
!70 = !{ptr @rx_altsetting, !25, !"rx_altsetting", i1 false, i1 false}
!71 = !{ptr @__param_str_tx_altsetting, !29, !"__param_str_tx_altsetting", i1 false, i1 false}
!72 = !{ptr @__param_arr_tx_altsetting, !29, !"__param_arr_tx_altsetting", i1 false, i1 false}
!73 = !{ptr @num_tx_altsetting, !29, !"num_tx_altsetting", i1 false, i1 false}
!74 = !{ptr @tx_altsetting, !29, !"tx_altsetting", i1 false, i1 false}
!75 = !{ptr @.str, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/atm/xusbatm.c", i32 182, i32 3}
!77 = !{ptr @.str.1, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.2, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @xusbatm_init._entry, !76, !"_entry", i1 false, i1 false}
!80 = !{ptr @xusbatm_init._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.3, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/atm/xusbatm.c", i32 204, i32 9}
!83 = !{ptr @xusbatm_usb_ids, !84, !"xusbatm_usb_ids", i1 false, i1 false}
!84 = !{!"../drivers/usb/atm/xusbatm.c", i32 35, i32 29}
!85 = !{ptr @xusbatm_driver_name, !86, !"xusbatm_driver_name", i1 false, i1 false}
!86 = !{!"../drivers/usb/atm/xusbatm.c", i32 32, i32 19}
!87 = !{ptr @xusbatm_drivers, !88, !"xusbatm_drivers", i1 false, i1 false}
!88 = !{!"../drivers/usb/atm/xusbatm.c", i32 34, i32 29}
!89 = !{ptr @.str.4, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/atm/xusbatm.c", i32 89, i32 2}
!91 = !{ptr @.str.5, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @xusbatm_bind.__UNIQUE_ID_ddebug480, !90, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!93 = !{ptr @.str.6, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/atm/xusbatm.c", i32 97, i32 4}
!95 = !{ptr @xusbatm_bind.__UNIQUE_ID_ddebug481, !94, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!96 = !{ptr @xusbatm_bind.__UNIQUE_ID_ddebug482, !97, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!97 = !{!"../drivers/usb/atm/xusbatm.c", i32 100, i32 4}
!98 = !{ptr @.str.7, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/atm/xusbatm.c", i32 109, i32 3}
!100 = !{ptr @.str.8, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.9, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @xusbatm_bind._entry, !99, !"_entry", i1 false, i1 false}
!103 = !{ptr @xusbatm_bind._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.10, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/atm/xusbatm.c", i32 114, i32 2}
!106 = !{ptr @xusbatm_bind.__UNIQUE_ID_ddebug483, !105, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!107 = !{ptr @.str.11, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/atm/xusbatm.c", i32 59, i32 3}
!109 = !{ptr @.str.12, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @xusbatm_capture_intf._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @xusbatm_capture_intf._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.14, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/atm/xusbatm.c", i32 64, i32 3}
!114 = !{ptr @xusbatm_capture_intf._entry.13, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @xusbatm_capture_intf._entry_ptr.15, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.16, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/atm/xusbatm.c", i32 136, i32 2}
!118 = !{ptr @.str.17, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @xusbatm_unbind.__UNIQUE_ID_ddebug484, !117, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!120 = !{ptr @.str.18, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/atm/xusbatm.c", i32 151, i32 2}
!122 = !{ptr @.str.19, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @xusbatm_atm_start.__UNIQUE_ID_ddebug485, !121, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!124 = !{ptr @xusbatm_usb_driver, !125, !"xusbatm_usb_driver", i1 false, i1 false}
!125 = !{!"../drivers/usb/atm/xusbatm.c", i32 167, i32 26}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 1, !"min_enum_size", i32 4}
!128 = !{i32 8, !"branch-target-enforcement", i32 0}
!129 = !{i32 8, !"sign-return-address", i32 0}
!130 = !{i32 8, !"sign-return-address-all", i32 0}
!131 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!132 = !{i32 7, !"uwtable", i32 1}
!133 = !{i32 7, !"frame-pointer", i32 2}
!134 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!135 = !{i64 2148958493, i64 2148958498, i64 2148958511, i64 2148958555, i64 2148958589, i64 2148958610}
