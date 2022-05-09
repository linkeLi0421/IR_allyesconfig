; ModuleID = '/llk/IR_all_yes/drivers/usb/atm/speedtch.c_pt.bc'
source_filename = "../drivers/usb/atm/speedtch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
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
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.usbatm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usbatm_data = type { ptr, ptr, [16 x i8], i32, ptr, ptr, [64 x i8], ptr, %struct.kref, %struct.mutex, i32, ptr, %struct.completion, %struct.completion, %struct.list_head, %struct.usbatm_channel, %struct.usbatm_channel, %struct.sk_buff_head, ptr, ptr, i32, i16, ptr, i32, [0 x ptr] }
%struct.usbatm_channel = type { i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, %struct.timer_list, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.152, i32 }
%union.anon.152 = type { ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.speedtch_instance_data = type { ptr, %struct.speedtch_params, %struct.timer_list, %struct.work_struct, i8, i32, %struct.timer_list, ptr, [16 x i8], [16 x i8] }
%struct.speedtch_params = type { i32, i32, i8, [16 x i8] }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.atm_dev = type { ptr, ptr, ptr, i32, ptr, ptr, i32, %struct.list_head, %struct.list_head, [6 x i8], %struct.atm_cirange, %struct.k_atm_dev_stats, i8, i32, %struct.refcount_struct, %struct.spinlock, ptr, ptr, %struct.device, %struct.list_head }
%struct.atm_cirange = type { i8, i8 }
%struct.k_atm_dev_stats = type { %struct.k_atm_aal_stats, %struct.k_atm_aal_stats, %struct.k_atm_aal_stats }
%struct.k_atm_aal_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }

@__param_str_altsetting = internal constant [20 x i8] c"speedtch.altsetting\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@altsetting = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_altsetting = internal constant %struct.kernel_param { ptr @__param_str_altsetting, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @altsetting } }, section "__param", align 4
@__UNIQUE_ID_altsettingtype462 = internal constant [34 x i8] c"speedtch.parmtype=altsetting:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_altsetting463 = internal constant [99 x i8] c"speedtch.parm=altsetting:Alternative setting for data interface (bulk_default: 1; isoc_default: 3)\00", section ".modinfo", align 1
@__param_str_dl_512_first = internal constant [22 x i8] c"speedtch.dl_512_first\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@dl_512_first = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_dl_512_first = internal constant %struct.kernel_param { ptr @__param_str_dl_512_first, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @dl_512_first } }, section "__param", align 4
@__UNIQUE_ID_dl_512_firsttype464 = internal constant [36 x i8] c"speedtch.parmtype=dl_512_first:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_dl_512_first465 = internal constant [79 x i8] c"speedtch.parm=dl_512_first:Read 512 bytes before sending firmware (default: 0)\00", section ".modinfo", align 1
@__param_str_enable_isoc = internal constant [21 x i8] c"speedtch.enable_isoc\00", align 1
@enable_isoc = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_enable_isoc = internal constant %struct.kernel_param { ptr @__param_str_enable_isoc, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @enable_isoc } }, section "__param", align 4
@__UNIQUE_ID_enable_isoctype466 = internal constant [35 x i8] c"speedtch.parmtype=enable_isoc:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_isoc467 = internal constant [78 x i8] c"speedtch.parm=enable_isoc:Use isochronous transfers if available (default: 0)\00", section ".modinfo", align 1
@__param_str_sw_buffering = internal constant [22 x i8] c"speedtch.sw_buffering\00", align 1
@sw_buffering = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_sw_buffering = internal constant %struct.kernel_param { ptr @__param_str_sw_buffering, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @sw_buffering } }, section "__param", align 4
@__UNIQUE_ID_sw_bufferingtype468 = internal constant [36 x i8] c"speedtch.parmtype=sw_buffering:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_sw_buffering469 = internal constant [66 x i8] c"speedtch.parm=sw_buffering:Enable software buffering (default: 0)\00", section ".modinfo", align 1
@__param_str_BMaxDSL = internal constant [17 x i8] c"speedtch.BMaxDSL\00", align 1
@BMaxDSL = internal global { i32, [28 x i8] } { i32 8128, [28 x i8] zeroinitializer }, align 32
@__param_BMaxDSL = internal constant %struct.kernel_param { ptr @__param_str_BMaxDSL, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @BMaxDSL } }, section "__param", align 4
@__UNIQUE_ID_BMaxDSLtype470 = internal constant [31 x i8] c"speedtch.parmtype=BMaxDSL:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_BMaxDSL471 = internal constant [36 x i8] c"speedtch.parm=BMaxDSL:default: 8128\00", section ".modinfo", align 1
@__param_str_ModemMode = internal constant [19 x i8] c"speedtch.ModemMode\00", align 1
@param_ops_byte = external dso_local constant %struct.kernel_param_ops, align 4
@ModemMode = internal global { i8, [31 x i8] } { i8 11, [31 x i8] zeroinitializer }, align 32
@__param_ModemMode = internal constant %struct.kernel_param { ptr @__param_str_ModemMode, ptr null, ptr @param_ops_byte, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @ModemMode } }, section "__param", align 4
@__UNIQUE_ID_ModemModetype472 = internal constant [33 x i8] c"speedtch.parmtype=ModemMode:byte\00", section ".modinfo", align 1
@__UNIQUE_ID_ModemMode473 = internal constant [36 x i8] c"speedtch.parm=ModemMode:default: 11\00", section ".modinfo", align 1
@__param_str_ModemOption = internal constant [21 x i8] c"speedtch.ModemOption\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_ModemOption = internal constant %struct.kparam_array { i32 16, i32 1, ptr @num_ModemOption, ptr @param_ops_byte, ptr @ModemOption }, align 4
@__param_ModemOption = internal constant %struct.kernel_param { ptr @__param_str_ModemOption, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_ModemOption } }, section "__param", align 4
@__UNIQUE_ID_ModemOptiontype474 = internal constant [44 x i8] c"speedtch.parmtype=ModemOption:array of byte\00", section ".modinfo", align 1
@__UNIQUE_ID_ModemOption475 = internal constant [60 x i8] c"speedtch.parm=ModemOption:default: 0x10,0x00,0x00,0x00,0x20\00", section ".modinfo", align 1
@__initcall__kmod_speedtch__518_942_speedtch_usb_driver_init6 = internal global ptr @speedtch_usb_driver_init, section ".initcall6.init", align 4
@speedtch_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @speedtch_driver_name, ptr @speedtch_usb_probe, ptr @usbatm_usb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr @speedtch_pre_reset, ptr @speedtch_post_reset, ptr @speedtch_usb_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_speedtch_usb_driver_exit = internal global ptr @speedtch_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author519 = internal constant [67 x i8] c"speedtch.author=Johan Verrept, Duncan Sands <duncan.sands@free.fr>\00", section ".modinfo", align 1
@__UNIQUE_ID_description520 = internal constant [51 x i8] c"speedtch.description=Alcatel SpeedTouch USB driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file521 = internal constant [39 x i8] c"speedtch.file=drivers/usb/atm/speedtch\00", section ".modinfo", align 1
@__UNIQUE_ID_license522 = internal constant [21 x i8] c"speedtch.license=GPL\00", section ".modinfo", align 1
@num_ModemOption = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ModemOption = internal global { [16 x i8], [16 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"speedtch\00", [23 x i8] zeroinitializer }, align 32
@speedtch_driver_name = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"speedtch\00", [23 x i8] zeroinitializer }, align 32
@speedtch_usb_ids = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1721, i16 16481, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@speedtch_usbatm_driver = internal global { %struct.usbatm_driver, [52 x i8] } { %struct.usbatm_driver { ptr @speedtch_driver_name, ptr @speedtch_bind, ptr @speedtch_heavy_init, ptr @speedtch_unbind, ptr @speedtch_atm_start, ptr @speedtch_atm_stop, i32 7, i32 7, i32 7, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@speedtch_bind.__UNIQUE_ID_ddebug513 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"speedtch_bind\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/usb/atm/speedtch.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s entered\0A\00", [20 x i8] zeroinitializer }, align 32
@speedtch_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 778, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: wrong device class %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@speedtch_bind._entry_ptr = internal global ptr @speedtch_bind._entry, section ".printk_index", align 4
@speedtch_bind._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 784, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: data interface not found!\0A\00", [33 x i8] zeroinitializer }, align 32
@speedtch_bind._entry_ptr.9 = internal global ptr @speedtch_bind._entry.7, section ".printk_index", align 4
@speedtch_bind._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 797, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: failed to claim interface %2d (%d)!\0A\00", [55 x i8] zeroinitializer }, align 32
@speedtch_bind._entry_ptr.12 = internal global ptr @speedtch_bind._entry.10, section ".printk_index", align 4
@speedtch_bind._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 823, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: setting interface to %2d failed (%d)!\0A\00", [53 x i8] zeroinitializer }, align 32
@speedtch_bind._entry_ptr.15 = internal global ptr @speedtch_bind._entry.13, section ".printk_index", align 4
@speedtch_bind.__UNIQUE_ID_ddebug514 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.14, i8 0, i8 -49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@speedtch_bind._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 850, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"isochronous transfer not supported - using bulk\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@speedtch_bind._entry_ptr.19 = internal global ptr @speedtch_bind._entry.16, section ".printk_index", align 4
@speedtch_bind._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 855, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@speedtch_bind._entry_ptr.21 = internal global ptr @speedtch_bind._entry.20, section ".printk_index", align 4
@speedtch_bind.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&instance->status_check_work)\00", [48 x i8] zeroinitializer }, align 32
@speedtch_bind.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(&instance->status_check_timer)\00", [32 x i8] zeroinitializer }, align 32
@speedtch_bind.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(&instance->resubmit_timer)\00", [36 x i8] zeroinitializer }, align 32
@speedtch_bind.__UNIQUE_ID_ddebug515 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.27, i8 0, i8 -37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: no memory for interrupt urb!\0A\00", [62 x i8] zeroinitializer }, align 32
@speedtch_bind.__UNIQUE_ID_ddebug516 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.28, i8 0, i8 -34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: firmware %s loaded\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"already\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"not\00", [28 x i8] zeroinitializer }, align 32
@speedtch_bind._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.1, ptr @.str.2, i32 892, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: device reset failed (%d)!\0A\00", [33 x i8] zeroinitializer }, align 32
@speedtch_bind._entry_ptr.33 = internal global ptr @speedtch_bind._entry.31, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@DEFAULT_MODEM_OPTION = internal constant { <{ i8, i8, i8, i8, i8, [11 x i8] }>, [16 x i8] } { <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 16, i8 0, i8 0, i8 0, i8 32, [11 x i8] zeroinitializer }>, [16 x i8] zeroinitializer }, align 32
@speedtch_check_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014ATM dev %d: error %d fetching device status\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"speedtch_check_status\00", [42 x i8] zeroinitializer }, align 32
@speedtch_check_status._entry_ptr = internal global ptr @speedtch_check_status._entry, section ".printk_index", align 4
@speedtch_check_status.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ATM dev %d: %s: line state 0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@speedtch_check_status._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str.2, i32 516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016ATM dev %d: ADSL line is down\0A\00", [63 x i8] zeroinitializer }, align 32
@speedtch_check_status._entry_ptr.40 = internal global ptr @speedtch_check_status._entry.38, section ".printk_index", align 4
@speedtch_check_status._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.36, ptr @.str.2, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016ATM dev %d: ADSL line is blocked?\0A\00", [59 x i8] zeroinitializer }, align 32
@speedtch_check_status._entry_ptr.43 = internal global ptr @speedtch_check_status._entry.41, section ".printk_index", align 4
@speedtch_check_status._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.36, ptr @.str.2, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016ATM dev %d: ADSL line is synchronising\0A\00", [54 x i8] zeroinitializer }, align 32
@speedtch_check_status._entry_ptr.46 = internal global ptr @speedtch_check_status._entry.44, section ".printk_index", align 4
@speedtch_check_status._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.36, ptr @.str.2, i32 547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016ATM dev %d: ADSL line is up (%d kb/s down | %d kb/s up)\0A\00", [37 x i8] zeroinitializer }, align 32
@speedtch_check_status._entry_ptr.49 = internal global ptr @speedtch_check_status._entry.47, section ".printk_index", align 4
@speedtch_check_status._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.36, ptr @.str.2, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016ATM dev %d: unknown line state %02x\0A\00", [57 x i8] zeroinitializer }, align 32
@speedtch_check_status._entry_ptr.52 = internal global ptr @speedtch_check_status._entry.50, section ".printk_index", align 4
@speedtch_read_status.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"speedtch_read_status\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ATM dev %d: %s: MSG 7 failed\0A\00", [34 x i8] zeroinitializer }, align 32
@speedtch_read_status.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.55, i8 0, i8 107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ATM dev %d: %s: MSG B failed\0A\00", [34 x i8] zeroinitializer }, align 32
@speedtch_read_status.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.56, i8 0, i8 109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ATM dev %d: %s: MSG D failed\0A\00", [34 x i8] zeroinitializer }, align 32
@speedtch_read_status.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.57, i8 0, i8 111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ATM dev %d: %s: MSG E failed\0A\00", [34 x i8] zeroinitializer }, align 32
@speedtch_read_status.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.58, i8 0, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ATM dev %d: %s: MSG F failed\0A\00", [34 x i8] zeroinitializer }, align 32
@speedtch_start_synchro.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 0, i8 116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"speedtch_start_synchro\00", [41 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ATM dev %d: %s entered\0A\00", [40 x i8] zeroinitializer }, align 32
@speedtch_start_synchro._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014ATM dev %d: failed to start ADSL synchronisation: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@speedtch_start_synchro._entry_ptr = internal global ptr @speedtch_start_synchro._entry, section ".printk_index", align 4
@speedtch_start_synchro.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.62, i8 0, i8 119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"ATM dev %d: %s: modem prodded. %d bytes returned: %02x %02x\0A\00", [35 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@speedtch_status_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014ATM dev %d: Too many failures - disabling line status polling\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"speedtch_status_poll\00", [43 x i8] zeroinitializer }, align 32
@speedtch_status_poll._entry_ptr = internal global ptr @speedtch_status_poll._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@speedtch_resubmit_int.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.60, i8 0, i8 -111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"speedtch_resubmit_int\00", [42 x i8] zeroinitializer }, align 32
@speedtch_resubmit_int.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.66, i8 0, i8 -109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ATM dev %d: %s: usb_submit_urb failed with result %d\0A\00", [42 x i8] zeroinitializer }, align 32
@speedtch_handle_int.up_int = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\A1\00\01\00\00\00", [26 x i8] zeroinitializer }, align 32
@speedtch_handle_int.down_int = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\A1\00\00\00\00\00", [26 x i8] zeroinitializer }, align 32
@speedtch_handle_int.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.60, i8 0, i8 -105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"speedtch_handle_int\00", [44 x i8] zeroinitializer }, align 32
@speedtch_handle_int.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.68, i8 0, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ATM dev %d: %s: nonzero urb status %d!\0A\00", [56 x i8] zeroinitializer }, align 32
@speedtch_handle_int._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016ATM dev %d: DSL line goes up\0A\00", [32 x i8] zeroinitializer }, align 32
@speedtch_handle_int._entry_ptr = internal global ptr @speedtch_handle_int._entry, section ".printk_index", align 4
@speedtch_handle_int._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.67, ptr @.str.2, i32 618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016ATM dev %d: DSL line goes down\0A\00", [62 x i8] zeroinitializer }, align 32
@speedtch_handle_int._entry_ptr.72 = internal global ptr @speedtch_handle_int._entry.70, section ".printk_index", align 4
@speedtch_handle_int.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.73, i8 0, i8 -101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ATM dev %d: %s: unknown interrupt packet of length %d:\00", [41 x i8] zeroinitializer }, align 32
@speedtch_handle_int._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.67, ptr @.str.2, i32 624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %02x\00", [26 x i8] zeroinitializer }, align 32
@speedtch_handle_int._entry_ptr.76 = internal global ptr @speedtch_handle_int._entry.74, section ".printk_index", align 4
@speedtch_handle_int._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.67, ptr @.str.2, i32 625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@speedtch_handle_int._entry_ptr.79 = internal global ptr @speedtch_handle_int._entry.77, section ".printk_index", align 4
@speedtch_handle_int.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.66, i8 0, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@speedtch_heavy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 394, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: firmware upload failed (%d)!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"speedtch_heavy_init\00", [44 x i8] zeroinitializer }, align 32
@speedtch_heavy_init._entry_ptr = internal global ptr @speedtch_heavy_init._entry, section ".printk_index", align 4
@.str.82 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"speedtch-%d.bin.%x.%02x\00", [40 x i8] zeroinitializer }, align 32
@speedtch_find_firmware.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.84, i8 0, i8 89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"speedtch_find_firmware\00", [41 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: looking for %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"speedtch-%d.bin.%x\00", [45 x i8] zeroinitializer }, align 32
@speedtch_find_firmware.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.84, i8 0, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"speedtch-%d.bin\00", [16 x i8] zeroinitializer }, align 32
@speedtch_find_firmware.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.84, i8 0, i8 91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@speedtch_find_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.83, ptr @.str.2, i32 368, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: no stage %d firmware found!\0A\00", [63 x i8] zeroinitializer }, align 32
@speedtch_find_firmware._entry_ptr = internal global ptr @speedtch_find_firmware._entry, section ".printk_index", align 4
@speedtch_find_firmware._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.83, ptr @.str.2, i32 374, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"found stage %d firmware %s\0A\00", [36 x i8] zeroinitializer }, align 32
@speedtch_find_firmware._entry_ptr.90 = internal global ptr @speedtch_find_firmware._entry.88, section ".printk_index", align 4
@speedtch_upload_firmware.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.2, ptr @.str.3, i8 0, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"speedtch_upload_firmware\00", [39 x i8] zeroinitializer }, align 32
@speedtch_upload_firmware.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.2, ptr @.str.92, i8 0, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: no memory for buffer!\0A\00", [37 x i8] zeroinitializer }, align 32
@speedtch_upload_firmware.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.2, ptr @.str.93, i8 0, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: interface not found!\0A\00", [38 x i8] zeroinitializer }, align 32
@speedtch_upload_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.91, ptr @.str.2, i32 262, ptr @.str.95, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: read BLOCK0 from modem failed (%d)!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@speedtch_upload_firmware._entry_ptr = internal global ptr @speedtch_upload_firmware._entry, section ".printk_index", align 4
@speedtch_upload_firmware.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.2, ptr @.str.96, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: BLOCK0 downloaded (%d bytes)\0A\00", [62 x i8] zeroinitializer }, align 32
@speedtch_upload_firmware._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.91, ptr @.str.2, i32 276, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: write BLOCK1 to modem failed (%d)!\0A\00", [56 x i8] zeroinitializer }, align 32
@speedtch_upload_firmware._entry_ptr.99 = internal global ptr @speedtch_upload_firmware._entry.97, section ".printk_index", align 4
@speedtch_upload_firmware.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.2, ptr @.str.100, i8 0, i8 69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: BLOCK1 uploaded (%zu bytes)\0A\00", [63 x i8] zeroinitializer }, align 32
@speedtch_upload_firmware._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.91, ptr @.str.2, i32 289, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: read BLOCK2 from modem failed (%d)!\0A\00", [55 x i8] zeroinitializer }, align 32
@speedtch_upload_firmware._entry_ptr.103 = internal global ptr @speedtch_upload_firmware._entry.101, section ".printk_index", align 4
@speedtch_upload_firmware.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.2, ptr @.str.104, i8 0, i8 73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: BLOCK2 downloaded (%d bytes)\0A\00", [62 x i8] zeroinitializer }, align 32
@speedtch_upload_firmware._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.91, ptr @.str.2, i32 303, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: write BLOCK3 to modem failed (%d)!\0A\00", [56 x i8] zeroinitializer }, align 32
@speedtch_upload_firmware._entry_ptr.107 = internal global ptr @speedtch_upload_firmware._entry.105, section ".printk_index", align 4
@speedtch_upload_firmware.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.2, ptr @.str.108, i8 0, i8 76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: BLOCK3 uploaded (%zu bytes)\0A\00", [63 x i8] zeroinitializer }, align 32
@speedtch_upload_firmware._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.91, ptr @.str.2, i32 316, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: read BLOCK4 from modem failed (%d)!\0A\00", [55 x i8] zeroinitializer }, align 32
@speedtch_upload_firmware._entry_ptr.111 = internal global ptr @speedtch_upload_firmware._entry.109, section ".printk_index", align 4
@speedtch_upload_firmware.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.2, ptr @.str.112, i8 0, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: BLOCK4 downloaded (%d bytes)\0A\00", [62 x i8] zeroinitializer }, align 32
@speedtch_upload_firmware._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.91, ptr @.str.2, i32 328, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: setting interface to %d failed (%d)!\0A\00", [54 x i8] zeroinitializer }, align 32
@speedtch_upload_firmware._entry_ptr.115 = internal global ptr @speedtch_upload_firmware._entry.113, section ".printk_index", align 4
@speedtch_set_swbuff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.2, i32 155, ptr @.str.95, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%sabling SW buffering: usb_control_msg returned %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"speedtch_set_swbuff\00", [44 x i8] zeroinitializer }, align 32
@speedtch_set_swbuff._entry_ptr = internal global ptr @speedtch_set_swbuff._entry, section ".printk_index", align 4
@.str.118 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"En\00", [29 x i8] zeroinitializer }, align 32
@speedtch_set_swbuff.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.117, ptr @.str.2, ptr @.str.120, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"speedtch_set_swbuff: %sbled SW buffering\0A\00", [54 x i8] zeroinitializer }, align 32
@speedtch_test_sequence._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.2, i32 173, ptr @.str.95, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s failed on URB147: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"speedtch_test_sequence\00", [41 x i8] zeroinitializer }, align 32
@speedtch_test_sequence._entry_ptr = internal global ptr @speedtch_test_sequence._entry, section ".printk_index", align 4
@speedtch_test_sequence._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.122, ptr @.str.2, i32 181, ptr @.str.95, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s failed on URB148: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@speedtch_test_sequence._entry_ptr.125 = internal global ptr @speedtch_test_sequence._entry.123, section ".printk_index", align 4
@speedtch_test_sequence._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.122, ptr @.str.2, i32 190, ptr @.str.95, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s failed on URB149: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@speedtch_test_sequence._entry_ptr.128 = internal global ptr @speedtch_test_sequence._entry.126, section ".printk_index", align 4
@speedtch_test_sequence._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.122, ptr @.str.2, i32 199, ptr @.str.95, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s failed on URB150: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@speedtch_test_sequence._entry_ptr.131 = internal global ptr @speedtch_test_sequence._entry.129, section ".printk_index", align 4
@speedtch_test_sequence._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.122, ptr @.str.2, i32 208, ptr @.str.95, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s failed on URBext1: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@speedtch_test_sequence._entry_ptr.134 = internal global ptr @speedtch_test_sequence._entry.132, section ".printk_index", align 4
@speedtch_test_sequence._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.122, ptr @.str.2, i32 219, ptr @.str.95, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s failed on URBext2: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@speedtch_test_sequence._entry_ptr.137 = internal global ptr @speedtch_test_sequence._entry.135, section ".printk_index", align 4
@speedtch_test_sequence._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.122, ptr @.str.2, i32 227, ptr @.str.95, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s failed on URBext3: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@speedtch_test_sequence._entry_ptr.140 = internal global ptr @speedtch_test_sequence._entry.138, section ".printk_index", align 4
@speedtch_unbind.__UNIQUE_ID_ddebug517 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.141, ptr @.str.2, ptr @.str.3, i8 0, i8 -28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"speedtch_unbind\00", [16 x i8] zeroinitializer }, align 32
@speedtch_atm_start.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.142, ptr @.str.2, ptr @.str.60, i8 0, i8 -93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"speedtch_atm_start\00", [45 x i8] zeroinitializer }, align 32
@speedtch_atm_start.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.142, ptr @.str.2, ptr @.str.143, i8 0, i8 -88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.143 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ATM dev %d: %s: submission of interrupt URB failed (%d)!\0A\00", [38 x i8] zeroinitializer }, align 32
@speedtch_atm_stop.__UNIQUE_ID_ddebug512 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.144, ptr @.str.2, ptr @.str.60, i8 0, i8 -84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.144 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"speedtch_atm_stop\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@___asan_gen_.145 = private unnamed_addr constant [11 x i8] c"altsetting\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 59, i32 21 }
@___asan_gen_.148 = private unnamed_addr constant [13 x i8] c"dl_512_first\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 60, i32 13 }
@___asan_gen_.151 = private unnamed_addr constant [12 x i8] c"enable_isoc\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 61, i32 13 }
@___asan_gen_.154 = private unnamed_addr constant [13 x i8] c"sw_buffering\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 62, i32 13 }
@___asan_gen_.157 = private unnamed_addr constant [8 x i8] c"BMaxDSL\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 71, i32 21 }
@___asan_gen_.160 = private unnamed_addr constant [10 x i8] c"ModemMode\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 72, i32 22 }
@___asan_gen_.163 = private unnamed_addr constant [20 x i8] c"speedtch_usb_driver\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 737, i32 26 }
@___asan_gen_.166 = private unnamed_addr constant [16 x i8] c"num_ModemOption\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 74, i32 21 }
@___asan_gen_.169 = private unnamed_addr constant [12 x i8] c"ModemOption\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 73, i32 22 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 942, i32 1 }
@___asan_gen_.175 = private unnamed_addr constant [21 x i8] c"speedtch_driver_name\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 31, i32 19 }
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"speedtch_usb_ids\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 728, i32 35 }
@___asan_gen_.181 = private unnamed_addr constant [23 x i8] c"speedtch_usbatm_driver\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 925, i32 29 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 773, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 778, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 784, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 797, i32 5 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 823, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 850, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 855, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 864, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 865, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 869, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 879, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 888, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 892, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant [21 x i8] c"DEFAULT_MODEM_OPTION\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 67, i32 28 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 500, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 510, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 516, i32 5 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 523, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 528, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 545, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 552, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 420, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 428, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 436, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 444, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 452, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 466, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 475, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 477, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 571, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 581, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 588, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant [7 x i8] c"up_int\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 603, i32 29 }
@___asan_gen_.367 = private unnamed_addr constant [9 x i8] c"down_int\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 605, i32 29 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 607, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 610, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 616, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 618, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 622, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 624, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 625, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 394, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 356, i32 15 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 357, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 360, i32 16 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 364, i32 17 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 368, i32 5 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 374, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 241, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 246, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 252, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 262, i32 4 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 264, i32 4 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 276, i32 4 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 279, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 289, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 292, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 303, i32 4 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 307, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 316, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 321, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 328, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 153, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 157, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 173, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 181, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 190, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 199, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 208, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 219, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 227, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 913, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 654, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 672, i32 4 }
@___asan_gen_.571 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.572 = private constant [30 x i8] c"../drivers/usb/atm/speedtch.c\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 689, i32 2 }
@llvm.compiler.used = appending global [207 x ptr] [ptr @__UNIQUE_ID_BMaxDSL471, ptr @__UNIQUE_ID_BMaxDSLtype470, ptr @__UNIQUE_ID_ModemMode473, ptr @__UNIQUE_ID_ModemModetype472, ptr @__UNIQUE_ID_ModemOption475, ptr @__UNIQUE_ID_ModemOptiontype474, ptr @__UNIQUE_ID_altsetting463, ptr @__UNIQUE_ID_altsettingtype462, ptr @__UNIQUE_ID_author519, ptr @__UNIQUE_ID_description520, ptr @__UNIQUE_ID_dl_512_first465, ptr @__UNIQUE_ID_dl_512_firsttype464, ptr @__UNIQUE_ID_enable_isoc467, ptr @__UNIQUE_ID_enable_isoctype466, ptr @__UNIQUE_ID_file521, ptr @__UNIQUE_ID_license522, ptr @__UNIQUE_ID_sw_buffering469, ptr @__UNIQUE_ID_sw_bufferingtype468, ptr @__exitcall_speedtch_usb_driver_exit, ptr @__initcall__kmod_speedtch__518_942_speedtch_usb_driver_init6, ptr @__param_BMaxDSL, ptr @__param_ModemMode, ptr @__param_ModemOption, ptr @__param_altsetting, ptr @__param_dl_512_first, ptr @__param_enable_isoc, ptr @__param_sw_buffering, ptr @speedtch_bind._entry, ptr @speedtch_bind._entry.10, ptr @speedtch_bind._entry.13, ptr @speedtch_bind._entry.16, ptr @speedtch_bind._entry.20, ptr @speedtch_bind._entry.31, ptr @speedtch_bind._entry.7, ptr @speedtch_bind._entry_ptr, ptr @speedtch_bind._entry_ptr.12, ptr @speedtch_bind._entry_ptr.15, ptr @speedtch_bind._entry_ptr.19, ptr @speedtch_bind._entry_ptr.21, ptr @speedtch_bind._entry_ptr.33, ptr @speedtch_bind._entry_ptr.9, ptr @speedtch_check_status._entry, ptr @speedtch_check_status._entry.38, ptr @speedtch_check_status._entry.41, ptr @speedtch_check_status._entry.44, ptr @speedtch_check_status._entry.47, ptr @speedtch_check_status._entry.50, ptr @speedtch_check_status._entry_ptr, ptr @speedtch_check_status._entry_ptr.40, ptr @speedtch_check_status._entry_ptr.43, ptr @speedtch_check_status._entry_ptr.46, ptr @speedtch_check_status._entry_ptr.49, ptr @speedtch_check_status._entry_ptr.52, ptr @speedtch_find_firmware._entry, ptr @speedtch_find_firmware._entry.88, ptr @speedtch_find_firmware._entry_ptr, ptr @speedtch_find_firmware._entry_ptr.90, ptr @speedtch_handle_int._entry, ptr @speedtch_handle_int._entry.70, ptr @speedtch_handle_int._entry.74, ptr @speedtch_handle_int._entry.77, ptr @speedtch_handle_int._entry_ptr, ptr @speedtch_handle_int._entry_ptr.72, ptr @speedtch_handle_int._entry_ptr.76, ptr @speedtch_handle_int._entry_ptr.79, ptr @speedtch_heavy_init._entry, ptr @speedtch_heavy_init._entry_ptr, ptr @speedtch_set_swbuff._entry, ptr @speedtch_set_swbuff._entry_ptr, ptr @speedtch_start_synchro._entry, ptr @speedtch_start_synchro._entry_ptr, ptr @speedtch_status_poll._entry, ptr @speedtch_status_poll._entry_ptr, ptr @speedtch_test_sequence._entry, ptr @speedtch_test_sequence._entry.123, ptr @speedtch_test_sequence._entry.126, ptr @speedtch_test_sequence._entry.129, ptr @speedtch_test_sequence._entry.132, ptr @speedtch_test_sequence._entry.135, ptr @speedtch_test_sequence._entry.138, ptr @speedtch_test_sequence._entry_ptr, ptr @speedtch_test_sequence._entry_ptr.125, ptr @speedtch_test_sequence._entry_ptr.128, ptr @speedtch_test_sequence._entry_ptr.131, ptr @speedtch_test_sequence._entry_ptr.134, ptr @speedtch_test_sequence._entry_ptr.137, ptr @speedtch_test_sequence._entry_ptr.140, ptr @speedtch_upload_firmware._entry, ptr @speedtch_upload_firmware._entry.101, ptr @speedtch_upload_firmware._entry.105, ptr @speedtch_upload_firmware._entry.109, ptr @speedtch_upload_firmware._entry.113, ptr @speedtch_upload_firmware._entry.97, ptr @speedtch_upload_firmware._entry_ptr, ptr @speedtch_upload_firmware._entry_ptr.103, ptr @speedtch_upload_firmware._entry_ptr.107, ptr @speedtch_upload_firmware._entry_ptr.111, ptr @speedtch_upload_firmware._entry_ptr.115, ptr @speedtch_upload_firmware._entry_ptr.99, ptr @speedtch_usb_driver_exit, ptr @altsetting, ptr @dl_512_first, ptr @enable_isoc, ptr @sw_buffering, ptr @BMaxDSL, ptr @ModemMode, ptr @speedtch_usb_driver, ptr @num_ModemOption, ptr @ModemOption, ptr @.str, ptr @speedtch_driver_name, ptr @speedtch_usb_ids, ptr @speedtch_usbatm_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @speedtch_bind.__key, ptr @.str.22, ptr @speedtch_bind.__key.23, ptr @.str.24, ptr @speedtch_bind.__key.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @DEFAULT_MODEM_OPTION, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @speedtch_handle_int.up_int, ptr @speedtch_handle_int.down_int, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.104, ptr @.str.106, ptr @.str.108, ptr @.str.110, ptr @.str.112, ptr @.str.114, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144], section "llvm.metadata"
@0 = internal global [143 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altsetting to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dl_512_first to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_isoc to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_buffering to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BMaxDSL to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ModemMode to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_ModemOption to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ModemOption to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_driver_name to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_usb_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_usbatm_driver to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_bind._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_bind._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_bind._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_bind._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_bind._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_bind.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_bind.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_bind.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_bind._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DEFAULT_MODEM_OPTION to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_check_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_check_status._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_check_status._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_check_status._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_check_status._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_check_status._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_start_synchro._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_status_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_handle_int.up_int to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_handle_int.down_int to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_handle_int._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_handle_int._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_handle_int._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_handle_int._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_heavy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_find_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_find_firmware._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_upload_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_upload_firmware._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_upload_firmware._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_upload_firmware._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_upload_firmware._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_upload_firmware._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_set_swbuff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_test_sequence._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_test_sequence._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_test_sequence._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_test_sequence._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_test_sequence._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_test_sequence._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedtch_test_sequence._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @speedtch_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @speedtch_usb_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @speedtch_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_deregister(ptr noundef nonnull @speedtch_usb_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @speedtch_usb_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usbatm_usb_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @speedtch_usbatm_driver) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbatm_usb_disconnect(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @speedtch_pre_reset(ptr nocapture noundef readnone %intf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @speedtch_post_reset(ptr nocapture noundef readnone %intf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbatm_usb_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @speedtch_bind(ptr noundef %usbatm, ptr nocapture noundef readonly %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %5 to i32
  %actconfig = getelementptr i8, ptr %1, i32 956
  %6 = ptrtoint ptr %actconfig to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %actconfig, align 4
  %bNumInterfaces = getelementptr inbounds %struct.usb_config_descriptor, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %bNumInterfaces to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bNumInterfaces, align 4
  %conv2 = zext i8 %9 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_bind.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_bind, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !367

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 5
  %10 = ptrtoint ptr %usb_intf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb_intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %11, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @speedtch_bind.__UNIQUE_ID_ddebug513, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bDeviceClass = getelementptr i8, ptr %1, i32 932
  %12 = ptrtoint ptr %bDeviceClass to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bDeviceClass, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp.not = icmp eq i8 %13, -1
  br i1 %cmp.not, label %if.end17, label %do.end11

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv6 = zext i8 %13 to i32
  %usb_intf12 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 5
  %14 = ptrtoint ptr %usb_intf12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_intf12, align 4
  %dev13 = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %conv6) #13
  br label %cleanup257

if.end17:                                         ; preds = %do.end
  %call18 = tail call ptr @usb_ifnum_to_if(ptr noundef %add.ptr.i, i32 noundef 1) #10
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %do.end23, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp27407.not = icmp eq i8 %9, 0
  br i1 %cmp27407.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf24 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 5
  %16 = ptrtoint ptr %usb_intf24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb_intf24, align 4
  %dev25 = getelementptr inbounds %struct.usb_interface, ptr %17, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1) #13
  br label %cleanup257

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0408 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call29 = tail call ptr @usb_ifnum_to_if(ptr noundef %add.ptr.i, i32 noundef %i.0408) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0408, i32 %conv)
  %cmp30.not = icmp eq i32 %i.0408, %conv
  %tobool32.not = icmp eq ptr %call29, null
  %or.cond = select i1 %cmp30.not, i1 true, i1 %tobool32.not
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.then33

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then33:                                        ; preds = %for.body
  %call34 = tail call i32 @usb_driver_claim_interface(ptr noundef nonnull @speedtch_usb_driver, ptr noundef nonnull %call29, ptr noundef %usbatm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end40, label %if.then33.for.inc_crit_edge

if.then33.for.inc_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end40:                                         ; preds = %if.then33
  %usb_intf41 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 5
  %18 = ptrtoint ptr %usb_intf41 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_intf41, align 4
  %dev42 = getelementptr inbounds %struct.usb_interface, ptr %19, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef %i.0408, i32 noundef %call34) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0408)
  %cmp5.i.not = icmp eq i32 %i.0408, 0
  br i1 %cmp5.i.not, label %do.end40.cleanup257_crit_edge, label %do.end40.for.body.i_crit_edge

do.end40.for.body.i_crit_edge:                    ; preds = %do.end40
  br label %for.body.i

do.end40.cleanup257_crit_edge:                    ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup257

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end40.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.end40.for.body.i_crit_edge ]
  %call.i = tail call ptr @usb_ifnum_to_if(ptr noundef %add.ptr.i, i32 noundef %i.06.i) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %call.i, i32 0, i32 7, i32 8
  %20 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %driver_data.i.i.i, align 4
  tail call void @usb_driver_release_interface(ptr noundef nonnull @speedtch_usb_driver, ptr noundef nonnull %call.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %i.0408
  br i1 %exitcond.not.i, label %for.inc.i.cleanup257_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.cleanup257_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup257

for.inc:                                          ; preds = %if.then33.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0408, 1
  %exitcond.not = icmp eq i32 %inc, %conv2
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 216) #14
  %tobool46.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool46.not, label %for.end.fail_release_crit_edge, label %if.end48

for.end.fail_release_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_release

if.end48:                                         ; preds = %for.end
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %usbatm, ptr %call7.i.i, align 8
  %23 = load i32, ptr @altsetting, align 4
  %params = getelementptr inbounds %struct.speedtch_instance_data, ptr %call7.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %params, align 4
  %25 = load i32, ptr @BMaxDSL, align 4
  %BMaxDSL = getelementptr inbounds %struct.speedtch_instance_data, ptr %call7.i.i, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %BMaxDSL to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %BMaxDSL, align 8
  %27 = load i8, ptr @ModemMode, align 1
  %ModemMode = getelementptr inbounds %struct.speedtch_instance_data, ptr %call7.i.i, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %ModemMode to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %ModemMode, align 4
  %ModemOption = getelementptr inbounds %struct.speedtch_instance_data, ptr %call7.i.i, i32 0, i32 1, i32 3
  %29 = call ptr @memcpy(ptr %ModemOption, ptr @DEFAULT_MODEM_OPTION, i32 16)
  %30 = load i32, ptr @num_ModemOption, align 4
  %31 = call ptr @memcpy(ptr %ModemOption, ptr @ModemOption, i32 %30)
  %32 = load i8, ptr @enable_isoc, align 1, !range !368
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool57.not = icmp eq i8 %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool61.not = icmp eq i32 %23, 0
  br i1 %tobool61.not, label %if.end48.if.end79_crit_edge, label %if.then62

if.end48.if.end79_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then62:                                        ; preds = %if.end48
  %call65 = tail call i32 @usb_set_interface(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef %23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %do.end71, label %if.then62.if.end79_crit_edge

if.then62.if.end79_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

do.end71:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf72 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 5
  %33 = ptrtoint ptr %usb_intf72 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %usb_intf72, align 4
  %dev73 = getelementptr inbounds %struct.usb_interface, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %params, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev73, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef %36, i32 noundef %call65) #13
  %37 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %params, align 4
  br label %if.end79

if.end79:                                         ; preds = %do.end71, %if.then62.if.end79_crit_edge, %if.end48.if.end79_crit_edge
  %38 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool82.not = icmp ne i32 %39, 0
  %brmerge = select i1 %tobool82.not, i1 true, i1 %tobool57.not
  br i1 %brmerge, label %if.end79.if.end109_crit_edge, label %if.then85

if.end79.if.end109_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

if.then85:                                        ; preds = %if.end79
  %call86 = tail call i32 @usb_set_interface(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %do.body90, label %if.then85.if.then111_crit_edge

if.then85.if.then111_crit_edge:                   ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then111

do.body90:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_bind.__UNIQUE_ID_ddebug514, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_bind, %if.end109.thread)) #10
          to label %if.end109 [label %if.end109.thread], !srcloc !367

if.end109.thread:                                 ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf103 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 5
  %40 = ptrtoint ptr %usb_intf103 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %usb_intf103, align 4
  %dev104 = getelementptr inbounds %struct.usb_interface, ptr %41, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @speedtch_bind.__UNIQUE_ID_ddebug514, ptr noundef %dev104, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 3, i32 noundef %call86) #10
  br label %land.lhs.true141

if.end109:                                        ; preds = %do.body90, %if.end79.if.end109_crit_edge
  %use_isoc.0.shrunk = phi i8 [ %32, %if.end79.if.end109_crit_edge ], [ 0, %do.body90 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %use_isoc.0.shrunk)
  %tobool110.not = icmp eq i8 %use_isoc.0.shrunk, 0
  br i1 %tobool110.not, label %if.end109.land.lhs.true141_crit_edge, label %if.end109.if.then111_crit_edge

if.end109.if.then111_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then111

if.end109.land.lhs.true141_crit_edge:             ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true141

if.then111:                                       ; preds = %if.end109.if.then111_crit_edge, %if.then85.if.then111_crit_edge
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %call18, i32 0, i32 1
  %42 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bNumEndpoints, align 4
  %conv116 = zext i8 %45 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp117410.not = icmp eq i8 %45, 0
  br i1 %cmp117410.not, label %if.then111.if.end139_crit_edge, label %for.body119.lr.ph

if.then111.if.end139_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end139

for.body119.lr.ph:                                ; preds = %if.then111
  %46 = ptrtoint ptr %usbatm to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %usbatm, align 4
  %isoc_in = getelementptr inbounds %struct.usbatm_driver, ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %isoc_in to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %isoc_in, align 4
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %43, i32 0, i32 3
  %50 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %endpoint, align 4
  %conv113 = and i32 %49, 127
  %conv122 = or i32 %conv113, 128
  br label %for.body119

for.cond114:                                      ; preds = %for.body119
  %inc129 = add nuw nsw i32 %i.1411, 1
  %exitcond415.not = icmp eq i32 %inc129, %conv116
  br i1 %exitcond415.not, label %for.cond114.if.end139_crit_edge, label %for.cond114.for.body119_crit_edge

for.cond114.for.body119_crit_edge:                ; preds = %for.cond114
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body119

for.cond114.if.end139_crit_edge:                  ; preds = %for.cond114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end139

for.body119:                                      ; preds = %for.cond114.for.body119_crit_edge, %for.body119.lr.ph
  %i.1411 = phi i32 [ 0, %for.body119.lr.ph ], [ %inc129, %for.cond114.for.body119_crit_edge ]
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %51, i32 %i.1411
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %52 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bEndpointAddress, align 1
  %conv121 = zext i8 %53 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv122, i32 %conv121)
  %cmp123 = icmp eq i32 %conv122, %conv121
  br i1 %cmp123, label %for.end130, label %for.cond114

for.end130:                                       ; preds = %for.body119
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %54 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bmAttributes.i, align 1
  %56 = and i8 %55, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %56)
  %cmp.i.not = icmp eq i8 %56, 1
  br i1 %cmp.i.not, label %if.end156.thread, label %for.end130.if.end139_crit_edge

for.end130.if.end139_crit_edge:                   ; preds = %for.end130
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end139

if.end139:                                        ; preds = %for.end130.if.end139_crit_edge, %for.cond114.if.end139_crit_edge, %if.then111.if.end139_crit_edge
  %usb_intf136 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 5
  %57 = ptrtoint ptr %usb_intf136 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %usb_intf136, align 4
  %dev137 = getelementptr inbounds %struct.usb_interface, ptr %58, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev137, ptr noundef nonnull @.str.17) #13
  br label %land.lhs.true141

land.lhs.true141:                                 ; preds = %if.end139, %if.end109.land.lhs.true141_crit_edge, %if.end109.thread
  %59 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool144.not = icmp eq i32 %60, 0
  br i1 %tobool144.not, label %if.then145, label %land.lhs.true141.if.end164_crit_edge

land.lhs.true141.if.end164_crit_edge:             ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164

if.then145:                                       ; preds = %land.lhs.true141
  %call146 = tail call i32 @usb_set_interface(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %cmp147 = icmp slt i32 %call146, 0
  br i1 %cmp147, label %do.end152, label %if.end156

do.end152:                                        ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf153 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 5
  %61 = ptrtoint ptr %usb_intf153 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %usb_intf153, align 4
  %dev154 = getelementptr inbounds %struct.usb_interface, ptr %62, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev154, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %call146) #13
  br label %fail_free

if.end156:                                        ; preds = %if.then145
  %63 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pr = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool159.not = icmp eq i32 %.pr, 0
  br i1 %tobool159.not, label %if.end156.if.end164.sink.split_crit_edge, label %if.end156.if.end164_crit_edge

if.end156.if.end164_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164

if.end156.if.end164.sink.split_crit_edge:         ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164.sink.split

if.end156.thread:                                 ; preds = %for.end130
  %64 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pr418 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr418)
  %tobool159.not419 = icmp eq i32 %.pr418, 0
  br i1 %tobool159.not419, label %if.end156.thread.if.end164.sink.split_crit_edge, label %if.end156.thread.if.end164_crit_edge

if.end156.thread.if.end164_crit_edge:             ; preds = %if.end156.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164

if.end156.thread.if.end164.sink.split_crit_edge:  ; preds = %if.end156.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164.sink.split

if.end164.sink.split:                             ; preds = %if.end156.thread.if.end164.sink.split_crit_edge, %if.end156.if.end164.sink.split_crit_edge
  %.sink = phi i32 [ 3, %if.end156.thread.if.end164.sink.split_crit_edge ], [ 1, %if.end156.if.end164.sink.split_crit_edge ]
  %.ph = phi i32 [ 2, %if.end156.thread.if.end164.sink.split_crit_edge ], [ 0, %if.end156.if.end164.sink.split_crit_edge ]
  %65 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %.sink, ptr %params, align 4
  br label %if.end164

if.end164:                                        ; preds = %if.end164.sink.split, %if.end156.thread.if.end164_crit_edge, %if.end156.if.end164_crit_edge, %land.lhs.true141.if.end164_crit_edge
  %66 = phi i32 [ 2, %if.end156.thread.if.end164_crit_edge ], [ 0, %land.lhs.true141.if.end164_crit_edge ], [ 0, %if.end156.if.end164_crit_edge ], [ %.ph, %if.end164.sink.split ]
  %flags = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 3
  %67 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags, align 4
  %or167 = or i32 %68, %66
  store i32 %or167, ptr %flags, align 4
  %status_check_work = getelementptr inbounds %struct.speedtch_instance_data, ptr %call7.i.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %status_check_work, i32 noundef 0) #10
  %69 = ptrtoint ptr %status_check_work to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -64, ptr %status_check_work, align 8
  %lockdep_map = getelementptr inbounds %struct.speedtch_instance_data, ptr %call7.i.i, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.22, ptr noundef nonnull @speedtch_bind.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry172 = getelementptr inbounds %struct.speedtch_instance_data, ptr %call7.i.i, i32 0, i32 3, i32 1
  %70 = ptrtoint ptr %entry172 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %entry172, ptr %entry172, align 4
  %prev.i = getelementptr inbounds %struct.speedtch_instance_data, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 1
  %71 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %entry172, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.speedtch_instance_data, ptr %call7.i.i, i32 0, i32 3, i32 2
  %72 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @speedtch_check_status, ptr %func, align 4
  %status_check_timer = getelementptr inbounds %struct.speedtch_instance_data, ptr %call7.i.i, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %status_check_timer, ptr noundef nonnull @speedtch_status_poll, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef nonnull @speedtch_bind.__key.23) #10
  %last_status = getelementptr inbounds %struct.speedtch_instance_data, ptr %call7.i.i, i32 0, i32 4
  %73 = ptrtoint ptr %last_status to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 -1, ptr %last_status, align 4
  %poll_delay = getelementptr inbounds %struct.speedtch_instance_data, ptr %call7.i.i, i32 0, i32 5
  %74 = ptrtoint ptr %poll_delay to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 5000, ptr %poll_delay, align 8
  %resubmit_timer = getelementptr inbounds %struct.speedtch_instance_data, ptr %call7.i.i, i32 0, i32 6
  tail call void @init_timer_key(ptr noundef %resubmit_timer, ptr noundef nonnull @speedtch_resubmit_int, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @speedtch_bind.__key.25) #10
  %call182 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %int_urb = getelementptr inbounds %struct.speedtch_instance_data, ptr %call7.i.i, i32 0, i32 7
  %75 = ptrtoint ptr %int_urb to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call182, ptr %int_urb, align 4
  %tobool184.not = icmp eq ptr %call182, null
  br i1 %tobool184.not, label %do.body191, label %if.then185

if.then185:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %77, 8
  %or189 = or i32 %shl.i, 1077969024
  %int_data = getelementptr inbounds %struct.speedtch_instance_data, ptr %call7.i.i, i32 0, i32 8
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call182, i32 0, i32 8
  %78 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %add.ptr.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call182, i32 0, i32 10
  %79 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %or189, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call182, i32 0, i32 14
  %80 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %int_data, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call182, i32 0, i32 19
  %81 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 16, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call182, i32 0, i32 28
  %82 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @speedtch_handle_int, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call182, i32 0, i32 27
  %83 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %speed.i = getelementptr i8, ptr %1, i32 -100
  %84 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %85)
  %cmp.i366 = icmp eq i32 %85, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %85)
  %cmp6.i = icmp ugt i32 %85, 4
  %or.cond.i = or i1 %cmp.i366, %cmp6.i
  %spec.select.i = select i1 %or.cond.i, i32 32768, i32 16
  %86 = getelementptr inbounds %struct.urb, ptr %call182, i32 0, i32 25
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %spec.select.i, ptr %86, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %call182, i32 0, i32 23
  %88 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %start_frame.i, align 4
  br label %if.end209

do.body191:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_bind.__UNIQUE_ID_ddebug515, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_bind, %if.then203)) #10
          to label %if.end209 [label %if.then203], !srcloc !367

if.then203:                                       ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf204 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 5
  %89 = ptrtoint ptr %usb_intf204 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %usb_intf204, align 4
  %dev205 = getelementptr inbounds %struct.usb_interface, ptr %90, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @speedtch_bind.__UNIQUE_ID_ddebug515, ptr noundef %dev205, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1) #10
  br label %if.end209

if.end209:                                        ; preds = %if.then203, %do.body191, %if.then185
  %91 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %add.ptr.i, align 8
  %shl.i367 = shl i32 %92, 8
  %or212 = or i32 %shl.i367, -2147483520
  %scratch_buffer = getelementptr inbounds %struct.speedtch_instance_data, ptr %call7.i.i, i32 0, i32 9
  %call214 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or212, i8 noundef zeroext 18, i8 noundef zeroext -64, i16 noundef zeroext 7, i16 noundef zeroext 0, ptr noundef %scratch_buffer, i16 noundef zeroext 1, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call214)
  %cmp215 = icmp eq i32 %call214, 1
  %cond217 = zext i1 %cmp215 to i32
  %93 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags, align 4
  %or219 = or i32 %94, %cond217
  store i32 %or219, ptr %flags, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_bind.__UNIQUE_ID_ddebug516, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_bind, %if.then232)) #10
          to label %do.end240 [label %if.then232], !srcloc !367

if.then232:                                       ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf233 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 5
  %95 = ptrtoint ptr %usb_intf233 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %usb_intf233, align 4
  %dev234 = getelementptr inbounds %struct.usb_interface, ptr %96, i32 0, i32 7
  %97 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %flags, align 4
  %and = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool236.not = icmp eq i32 %and, 0
  %cond237 = select i1 %tobool236.not, ptr @.str.30, ptr @.str.29
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @speedtch_bind.__UNIQUE_ID_ddebug516, ptr noundef %dev234, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, ptr noundef nonnull %cond237) #10
  br label %do.end240

do.end240:                                        ; preds = %if.then232, %if.end209
  %99 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %flags, align 4
  %and242 = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and242)
  %tobool243.not = icmp eq i32 %and242, 0
  br i1 %tobool243.not, label %if.then244, label %do.end240.if.end255_crit_edge

do.end240.if.end255_crit_edge:                    ; preds = %do.end240
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end255

if.then244:                                       ; preds = %do.end240
  %call245 = tail call i32 @usb_reset_device(ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call245)
  %cmp246 = icmp slt i32 %call245, 0
  br i1 %cmp246, label %do.end251, label %if.then244.if.end255_crit_edge

if.then244.if.end255_crit_edge:                   ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end255

do.end251:                                        ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf252 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 5
  %101 = ptrtoint ptr %usb_intf252 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %usb_intf252, align 4
  %dev253 = getelementptr inbounds %struct.usb_interface, ptr %102, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev253, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef %call245) #13
  br label %fail_free

if.end255:                                        ; preds = %if.then244.if.end255_crit_edge, %do.end240.if.end255_crit_edge
  %driver_data = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 1
  %103 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call7.i.i, ptr %driver_data, align 4
  br label %cleanup257

fail_free:                                        ; preds = %do.end251, %do.end152
  %ret.0 = phi i32 [ %call245, %do.end251 ], [ %call146, %do.end152 ]
  %int_urb256 = getelementptr inbounds %struct.speedtch_instance_data, ptr %call7.i.i, i32 0, i32 7
  %104 = ptrtoint ptr %int_urb256 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %int_urb256, align 4
  tail call void @usb_free_urb(ptr noundef %105) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %fail_release

fail_release:                                     ; preds = %fail_free, %for.end.fail_release_crit_edge
  %ret.1 = phi i32 [ %ret.0, %fail_free ], [ -12, %for.end.fail_release_crit_edge ]
  br i1 %cmp27407.not, label %fail_release.cleanup257_crit_edge, label %fail_release.for.body.i372_crit_edge

fail_release.for.body.i372_crit_edge:             ; preds = %fail_release
  br label %for.body.i372

fail_release.cleanup257_crit_edge:                ; preds = %fail_release
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup257

for.body.i372:                                    ; preds = %for.inc.i377.for.body.i372_crit_edge, %fail_release.for.body.i372_crit_edge
  %i.06.i369 = phi i32 [ %inc.i375, %for.inc.i377.for.body.i372_crit_edge ], [ 0, %fail_release.for.body.i372_crit_edge ]
  %call.i370 = tail call ptr @usb_ifnum_to_if(ptr noundef %add.ptr.i, i32 noundef %i.06.i369) #10
  %tobool.not.i371 = icmp eq ptr %call.i370, null
  br i1 %tobool.not.i371, label %for.body.i372.for.inc.i377_crit_edge, label %if.then.i374

for.body.i372.for.inc.i377_crit_edge:             ; preds = %for.body.i372
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i377

if.then.i374:                                     ; preds = %for.body.i372
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i.i.i373 = getelementptr inbounds %struct.usb_interface, ptr %call.i370, i32 0, i32 7, i32 8
  %106 = ptrtoint ptr %driver_data.i.i.i373 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %driver_data.i.i.i373, align 4
  tail call void @usb_driver_release_interface(ptr noundef nonnull @speedtch_usb_driver, ptr noundef nonnull %call.i370) #10
  br label %for.inc.i377

for.inc.i377:                                     ; preds = %if.then.i374, %for.body.i372.for.inc.i377_crit_edge
  %inc.i375 = add nuw nsw i32 %i.06.i369, 1
  %exitcond.not.i376 = icmp eq i32 %inc.i375, %conv2
  br i1 %exitcond.not.i376, label %for.inc.i377.cleanup257_crit_edge, label %for.inc.i377.for.body.i372_crit_edge

for.inc.i377.for.body.i372_crit_edge:             ; preds = %for.inc.i377
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i372

for.inc.i377.cleanup257_crit_edge:                ; preds = %for.inc.i377
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup257

cleanup257:                                       ; preds = %for.inc.i377.cleanup257_crit_edge, %fail_release.cleanup257_crit_edge, %if.end255, %for.inc.i.cleanup257_crit_edge, %do.end40.cleanup257_crit_edge, %do.end23, %do.end11
  %retval.0 = phi i32 [ -19, %do.end11 ], [ 0, %if.end255 ], [ -19, %do.end23 ], [ %call34, %do.end40.cleanup257_crit_edge ], [ %ret.1, %fail_release.cleanup257_crit_edge ], [ %ret.1, %for.inc.i377.cleanup257_crit_edge ], [ %call34, %for.inc.i.cleanup257_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @speedtch_heavy_init(ptr nocapture noundef readonly %usbatm, ptr noundef %intf) #2 align 64 {
entry:
  %fw1 = alloca ptr, align 4
  %fw2 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw1) #10
  %0 = ptrtoint ptr %fw1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw1, align 4, !annotation !369
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw2) #10
  %1 = ptrtoint ptr %fw2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw2, align 4, !annotation !369
  %driver_data = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data, align 4
  %call = call fastcc i32 @speedtch_find_firmware(ptr noundef %usbatm, ptr noundef %intf, i32 noundef 1, ptr noundef nonnull %fw1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @speedtch_find_firmware(ptr noundef %usbatm, ptr noundef %intf, i32 noundef 2, ptr noundef nonnull %fw2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  %4 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw1, align 4
  br i1 %cmp2, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %fw2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw2, align 4
  %call5 = call fastcc i32 @speedtch_upload_firmware(ptr noundef %3, ptr noundef %5, ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end, label %if.end4.if.end8_crit_edge

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 5
  %8 = ptrtoint ptr %usb_intf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81, i32 noundef %call5) #13
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.end4.if.end8_crit_edge
  %10 = ptrtoint ptr %fw2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw2, align 4
  call void @release_firmware(ptr noundef %11) #10
  %12 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fw1, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end8, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %13, %if.end8 ], [ %5, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call5, %if.end8 ], [ %call1, %if.end.cleanup.sink.split_crit_edge ]
  call void @release_firmware(ptr noundef %.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw1) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @speedtch_unbind(ptr nocapture noundef readonly %usbatm, ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %driver_data = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_unbind.__UNIQUE_ID_ddebug517, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_unbind, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !367

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 5
  %4 = ptrtoint ptr %usb_intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @speedtch_unbind.__UNIQUE_ID_ddebug517, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.141) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %actconfig = getelementptr i8, ptr %1, i32 956
  %6 = ptrtoint ptr %actconfig to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %actconfig, align 4
  %bNumInterfaces = getelementptr inbounds %struct.usb_config_descriptor, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %bNumInterfaces to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bNumInterfaces, align 4
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp5.i.not = icmp eq i8 %9, 0
  br i1 %cmp5.i.not, label %do.end.speedtch_release_interfaces.exit_crit_edge, label %do.end.for.body.i_crit_edge

do.end.for.body.i_crit_edge:                      ; preds = %do.end
  br label %for.body.i

do.end.speedtch_release_interfaces.exit_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %speedtch_release_interfaces.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.end.for.body.i_crit_edge ]
  %call.i = tail call ptr @usb_ifnum_to_if(ptr noundef %add.ptr.i, i32 noundef %i.06.i) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %call.i, i32 0, i32 7, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %driver_data.i.i.i, align 4
  tail call void @usb_driver_release_interface(ptr noundef nonnull @speedtch_usb_driver, ptr noundef nonnull %call.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv
  br i1 %exitcond.not.i, label %for.inc.i.speedtch_release_interfaces.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.speedtch_release_interfaces.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %speedtch_release_interfaces.exit

speedtch_release_interfaces.exit:                 ; preds = %for.inc.i.speedtch_release_interfaces.exit_crit_edge, %do.end.speedtch_release_interfaces.exit_crit_edge
  %int_urb = getelementptr inbounds %struct.speedtch_instance_data, ptr %3, i32 0, i32 7
  %11 = ptrtoint ptr %int_urb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %int_urb, align 4
  tail call void @usb_free_urb(ptr noundef %12) #10
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @speedtch_atm_start(ptr nocapture noundef readonly %usbatm, ptr nocapture noundef writeonly %atm_dev) #2 align 64 {
entry:
  %mac_str = alloca [13 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_dev1 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 4
  %0 = ptrtoint ptr %usb_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_dev1, align 4
  %driver_data = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %mac_str) #10
  %4 = getelementptr inbounds [13 x i8], ptr %mac_str, i32 0, i32 1
  %5 = getelementptr inbounds [13 x i8], ptr %mac_str, i32 0, i32 2
  %6 = getelementptr inbounds [13 x i8], ptr %mac_str, i32 0, i32 3
  %7 = getelementptr inbounds [13 x i8], ptr %mac_str, i32 0, i32 4
  %8 = getelementptr inbounds [13 x i8], ptr %mac_str, i32 0, i32 5
  %9 = getelementptr inbounds [13 x i8], ptr %mac_str, i32 0, i32 6
  %10 = getelementptr inbounds [13 x i8], ptr %mac_str, i32 0, i32 7
  %11 = getelementptr inbounds [13 x i8], ptr %mac_str, i32 0, i32 8
  %12 = getelementptr inbounds [13 x i8], ptr %mac_str, i32 0, i32 9
  %13 = getelementptr inbounds [13 x i8], ptr %mac_str, i32 0, i32 10
  %14 = getelementptr inbounds [13 x i8], ptr %mac_str, i32 0, i32 11
  %15 = call ptr @memset(ptr %mac_str, i32 255, i32 13)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_atm_start.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_atm_start, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !367

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %atm_dev4 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 7
  %16 = ptrtoint ptr %atm_dev4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %atm_dev4, align 4
  %number = getelementptr inbounds %struct.atm_dev, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %number, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @speedtch_atm_start.__UNIQUE_ID_ddebug510, ptr noundef nonnull @.str.60, i32 noundef %19, ptr noundef nonnull @.str.142) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %esi = getelementptr %struct.atm_dev, ptr %atm_dev, i32 0, i32 9
  %20 = call ptr @memset(ptr %esi, i32 0, i32 6)
  %iSerialNumber = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 12
  %21 = ptrtoint ptr %iSerialNumber to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %iSerialNumber, align 8
  %conv = zext i8 %22 to i32
  %call6 = call i32 @usb_string(ptr noundef %1, i32 noundef %conv, ptr noundef nonnull %mac_str, i32 noundef 13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call6)
  %cmp = icmp eq i32 %call6, 12
  br i1 %cmp, label %for.body.preheader, label %do.end.if.end19_crit_edge

do.end.if.end19_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

for.body.preheader:                               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %mac_str to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mac_str, align 1
  %call11 = call i32 @hex_to_bin(i8 noundef zeroext %24) #10
  %shl = shl i32 %call11, 4
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %4, align 1
  %call14 = call i32 @hex_to_bin(i8 noundef zeroext %26) #10
  %add15 = add i32 %call14, %shl
  %conv16 = trunc i32 %add15 to i8
  %27 = ptrtoint ptr %esi to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv16, ptr %esi, align 1
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %5, align 1
  %call11.1 = call i32 @hex_to_bin(i8 noundef zeroext %29) #10
  %shl.1 = shl i32 %call11.1, 4
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %6, align 1
  %call14.1 = call i32 @hex_to_bin(i8 noundef zeroext %31) #10
  %add15.1 = add i32 %call14.1, %shl.1
  %conv16.1 = trunc i32 %add15.1 to i8
  %arrayidx18.1 = getelementptr %struct.atm_dev, ptr %atm_dev, i32 0, i32 9, i32 1
  %32 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv16.1, ptr %arrayidx18.1, align 1
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %7, align 1
  %call11.2 = call i32 @hex_to_bin(i8 noundef zeroext %34) #10
  %shl.2 = shl i32 %call11.2, 4
  %35 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %8, align 1
  %call14.2 = call i32 @hex_to_bin(i8 noundef zeroext %36) #10
  %add15.2 = add i32 %call14.2, %shl.2
  %conv16.2 = trunc i32 %add15.2 to i8
  %arrayidx18.2 = getelementptr %struct.atm_dev, ptr %atm_dev, i32 0, i32 9, i32 2
  %37 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv16.2, ptr %arrayidx18.2, align 1
  %38 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %9, align 1
  %call11.3 = call i32 @hex_to_bin(i8 noundef zeroext %39) #10
  %shl.3 = shl i32 %call11.3, 4
  %40 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %10, align 1
  %call14.3 = call i32 @hex_to_bin(i8 noundef zeroext %41) #10
  %add15.3 = add i32 %call14.3, %shl.3
  %conv16.3 = trunc i32 %add15.3 to i8
  %arrayidx18.3 = getelementptr %struct.atm_dev, ptr %atm_dev, i32 0, i32 9, i32 3
  %42 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv16.3, ptr %arrayidx18.3, align 1
  %43 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %11, align 1
  %call11.4 = call i32 @hex_to_bin(i8 noundef zeroext %44) #10
  %shl.4 = shl i32 %call11.4, 4
  %45 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %12, align 1
  %call14.4 = call i32 @hex_to_bin(i8 noundef zeroext %46) #10
  %add15.4 = add i32 %call14.4, %shl.4
  %conv16.4 = trunc i32 %add15.4 to i8
  %arrayidx18.4 = getelementptr %struct.atm_dev, ptr %atm_dev, i32 0, i32 9, i32 4
  %47 = ptrtoint ptr %arrayidx18.4 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv16.4, ptr %arrayidx18.4, align 1
  %48 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %13, align 1
  %call11.5 = call i32 @hex_to_bin(i8 noundef zeroext %49) #10
  %shl.5 = shl i32 %call11.5, 4
  %50 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %14, align 1
  %call14.5 = call i32 @hex_to_bin(i8 noundef zeroext %51) #10
  %add15.5 = add i32 %call14.5, %shl.5
  %conv16.5 = trunc i32 %add15.5 to i8
  %arrayidx18.5 = getelementptr %struct.atm_dev, ptr %atm_dev, i32 0, i32 9, i32 5
  %52 = ptrtoint ptr %arrayidx18.5 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv16.5, ptr %arrayidx18.5, align 1
  br label %if.end19

if.end19:                                         ; preds = %for.body.preheader, %do.end.if.end19_crit_edge
  call fastcc void @speedtch_start_synchro(ptr noundef %3)
  %int_urb = getelementptr inbounds %struct.speedtch_instance_data, ptr %3, i32 0, i32 7
  %53 = ptrtoint ptr %int_urb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %int_urb, align 4
  %tobool21.not = icmp eq ptr %54, null
  br i1 %tobool21.not, label %if.end19.if.end49_crit_edge, label %if.then22

if.end19.if.end49_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then22:                                        ; preds = %if.end19
  %call24 = call i32 @usb_submit_urb(ptr noundef nonnull %54, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %do.body28, label %if.then22.if.end49_crit_edge

if.then22.if.end49_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

do.body28:                                        ; preds = %if.then22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_atm_start.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_atm_start, %if.then40)) #10
          to label %do.end45 [label %if.then40], !srcloc !367

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  %atm_dev41 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 7
  %55 = ptrtoint ptr %atm_dev41 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %atm_dev41, align 4
  %number42 = getelementptr inbounds %struct.atm_dev, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %number42 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %number42, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @speedtch_atm_start.__UNIQUE_ID_ddebug511, ptr noundef nonnull @.str.143, i32 noundef %58, ptr noundef nonnull @.str.142, i32 noundef %call24) #10
  br label %do.end45

do.end45:                                         ; preds = %if.then40, %do.body28
  %59 = ptrtoint ptr %int_urb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %int_urb, align 4
  call void @usb_free_urb(ptr noundef %60) #10
  %61 = ptrtoint ptr %int_urb to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %int_urb, align 4
  br label %if.end49

if.end49:                                         ; preds = %do.end45, %if.then22.if.end49_crit_edge, %if.end19.if.end49_crit_edge
  %status_check_timer = getelementptr inbounds %struct.speedtch_instance_data, ptr %3, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %add51 = add i32 %62, 100
  %call52 = call i32 @mod_timer(ptr noundef %status_check_timer, i32 noundef %add51) #10
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %mac_str) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @speedtch_atm_stop(ptr nocapture noundef readonly %usbatm, ptr nocapture noundef readnone %atm_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 1
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %int_urb1 = getelementptr inbounds %struct.speedtch_instance_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %int_urb1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %int_urb1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_atm_stop.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_atm_stop, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !367

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %atm_dev4 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 7
  %4 = ptrtoint ptr %atm_dev4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %atm_dev4, align 4
  %number = getelementptr inbounds %struct.atm_dev, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @speedtch_atm_stop.__UNIQUE_ID_ddebug512, ptr noundef nonnull @.str.60, i32 noundef %7, ptr noundef nonnull @.str.144) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %status_check_timer = getelementptr inbounds %struct.speedtch_instance_data, ptr %1, i32 0, i32 2
  %call5 = tail call i32 @del_timer_sync(ptr noundef %status_check_timer) #10
  %8 = ptrtoint ptr %int_urb1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %int_urb1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !370
  tail call void @arm_heavy_mb() #10
  tail call void @usb_kill_urb(ptr noundef %3) #10
  %resubmit_timer = getelementptr inbounds %struct.speedtch_instance_data, ptr %1, i32 0, i32 6
  %call10 = tail call i32 @del_timer_sync(ptr noundef %resubmit_timer) #10
  tail call void @usb_kill_urb(ptr noundef %3) #10
  %call12 = tail call i32 @del_timer_sync(ptr noundef %resubmit_timer) #10
  tail call void @usb_free_urb(ptr noundef %3) #10
  %status_check_work = getelementptr inbounds %struct.speedtch_instance_data, ptr %1, i32 0, i32 3
  %call13 = tail call zeroext i1 @flush_work(ptr noundef %status_check_work) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_driver_claim_interface(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @speedtch_check_status(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -80
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %atm_dev2 = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %atm_dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %atm_dev2, align 4
  %call = tail call fastcc i32 @speedtch_read_status(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %atm_dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %atm_dev2, align 4
  %number = getelementptr inbounds %struct.atm_dev, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %7, i32 noundef %call) #13
  %poll_delay = getelementptr i8, ptr %work, i32 48
  %8 = ptrtoint ptr %poll_delay to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %poll_delay, align 4
  %mul = shl i32 %9, 1
  %10 = tail call i32 @llvm.smin.i32(i32 %mul, i32 60000)
  %11 = ptrtoint ptr %poll_delay to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %poll_delay, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %scratch_buffer = getelementptr i8, ptr %work, i32 120
  %poll_delay9 = getelementptr i8, ptr %work, i32 48
  %12 = ptrtoint ptr %poll_delay9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %poll_delay9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10001, i32 %13)
  %cmp11 = icmp sgt i32 %13, 10001
  %div = sdiv i32 %13, 2
  %cond15 = select i1 %cmp11, i32 %div, i32 5000
  %14 = ptrtoint ptr %poll_delay9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond15, ptr %poll_delay9, align 4
  %15 = ptrtoint ptr %scratch_buffer to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %scratch_buffer, align 1
  %conv = zext i8 %16 to i32
  %last_status = getelementptr i8, ptr %work, i32 44
  %17 = ptrtoint ptr %last_status to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %last_status, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %18)
  %cmp18.not = icmp ne i8 %16, %18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  %or.cond = or i1 %tobool.not, %cmp18.not
  br i1 %or.cond, label %do.body21, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body21:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_check_status.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_check_status, %if.then27)) #10
          to label %do.end33 [label %if.then27], !srcloc !367

if.then27:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %atm_dev2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %atm_dev2, align 4
  %number29 = getelementptr inbounds %struct.atm_dev, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %number29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %number29, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @speedtch_check_status.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.37, i32 noundef %22, ptr noundef nonnull @.str.36, i32 noundef %conv) #10
  br label %do.end33

do.end33:                                         ; preds = %if.then27, %do.body21
  %23 = tail call i32 @llvm.fshl.i32(i32 %conv, i32 %conv, i32 29)
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %23, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb47
    i32 2, label %sw.bb55
    i32 4, label %sw.bb63
  ]

sw.bb:                                            ; preds = %do.end33
  tail call void @atm_dev_signal_change(ptr noundef %3, i8 noundef zeroext 0) #10
  %25 = ptrtoint ptr %last_status to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %last_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool36.not = icmp eq i8 %26, 0
  br i1 %tobool36.not, label %sw.bb.if.end45_crit_edge, label %do.end40

sw.bb.if.end45_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

do.end40:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %atm_dev2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %atm_dev2, align 4
  %number43 = getelementptr inbounds %struct.atm_dev, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %number43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %number43, align 4
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %30) #13
  br label %if.end45

if.end45:                                         ; preds = %do.end40, %sw.bb.if.end45_crit_edge
  tail call fastcc void @speedtch_start_synchro(ptr noundef %add.ptr)
  br label %sw.epilog

sw.bb47:                                          ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @atm_dev_signal_change(ptr noundef %3, i8 noundef zeroext 1) #10
  %31 = ptrtoint ptr %atm_dev2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %atm_dev2, align 4
  %number53 = getelementptr inbounds %struct.atm_dev, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %number53 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %number53, align 4
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %34) #13
  br label %sw.epilog

sw.bb55:                                          ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @atm_dev_signal_change(ptr noundef %3, i8 noundef zeroext 0) #10
  %35 = ptrtoint ptr %atm_dev2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %atm_dev2, align 4
  %number61 = getelementptr inbounds %struct.atm_dev, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %number61 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %number61, align 4
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %38) #13
  br label %sw.epilog

sw.bb63:                                          ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx64 = getelementptr i8, ptr %work, i32 121
  %39 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %40 to i32
  %arrayidx66 = getelementptr i8, ptr %work, i32 122
  %41 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %42 to i32
  %shl = shl nuw nsw i32 %conv67, 8
  %or = or i32 %shl, %conv65
  %arrayidx68 = getelementptr i8, ptr %work, i32 123
  %43 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %44 to i32
  %shl70 = shl nuw nsw i32 %conv69, 16
  %or71 = or i32 %or, %shl70
  %arrayidx72 = getelementptr i8, ptr %work, i32 124
  %45 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %46 to i32
  %shl74 = shl nuw i32 %conv73, 24
  %or75 = or i32 %or71, %shl74
  %arrayidx76 = getelementptr i8, ptr %work, i32 125
  %47 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %48 to i32
  %arrayidx78 = getelementptr i8, ptr %work, i32 126
  %49 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx78, align 1
  %conv79 = zext i8 %50 to i32
  %shl80 = shl nuw nsw i32 %conv79, 8
  %or81 = or i32 %shl80, %conv77
  %arrayidx82 = getelementptr i8, ptr %work, i32 127
  %51 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %52 to i32
  %shl84 = shl nuw nsw i32 %conv83, 16
  %or85 = or i32 %or81, %shl84
  %arrayidx86 = getelementptr i8, ptr %work, i32 128
  %53 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %54 to i32
  %shl88 = shl nuw i32 %conv87, 24
  %or89 = or i32 %or85, %shl88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool90.not = icmp eq i32 %or, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or81)
  %tobool92.not = icmp eq i32 %or81, 0
  %or.cond167 = select i1 %tobool90.not, i1 %tobool92.not, i1 false
  %shr = ashr i32 %or75, 16
  %shr94 = ashr i32 %or89, 16
  %up_speed.0 = select i1 %or.cond167, i32 %shr94, i32 %or89
  %down_speed.0 = select i1 %or.cond167, i32 %shr, i32 %or75
  %mul96 = mul i32 %down_speed.0, 1000
  %div97 = sdiv i32 %mul96, 424
  %link_rate = getelementptr inbounds %struct.atm_dev, ptr %3, i32 0, i32 13
  %55 = ptrtoint ptr %link_rate to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %div97, ptr %link_rate, align 4
  tail call void @atm_dev_signal_change(ptr noundef %3, i8 noundef zeroext 2) #10
  %56 = ptrtoint ptr %atm_dev2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %atm_dev2, align 4
  %number103 = getelementptr inbounds %struct.atm_dev, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %number103 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %number103, align 4
  %call104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %59, i32 noundef %down_speed.0, i32 noundef %up_speed.0) #13
  br label %sw.epilog

sw.default:                                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @atm_dev_signal_change(ptr noundef %3, i8 noundef zeroext 1) #10
  %60 = ptrtoint ptr %atm_dev2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %atm_dev2, align 4
  %number110 = getelementptr inbounds %struct.atm_dev, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %number110 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %number110, align 4
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %63, i32 noundef %conv) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb63, %sw.bb55, %sw.bb47, %if.end45
  %64 = ptrtoint ptr %last_status to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %16, ptr %last_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @speedtch_status_poll(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %status_check_work = getelementptr i8, ptr %t, i32 48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %status_check_work) #10
  %poll_delay = getelementptr i8, ptr %t, i32 96
  %1 = ptrtoint ptr %poll_delay to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %poll_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60000, i32 %2)
  %cmp = icmp slt i32 %2, 60000
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %2) #10
  %add = add i32 %call2.i, %3
  %call3 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %t, i32 -32
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %atm_dev = getelementptr inbounds %struct.usbatm_data, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %atm_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %atm_dev, align 4
  %number = getelementptr inbounds %struct.atm_dev, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %number, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %9) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @speedtch_resubmit_int(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -132
  %int_urb1 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %int_urb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %int_urb1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_resubmit_int.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_resubmit_int, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !367

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %atm_dev = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %atm_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %atm_dev, align 4
  %number = getelementptr inbounds %struct.atm_dev, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @speedtch_resubmit_int.__UNIQUE_ID_ddebug504, ptr noundef nonnull @.str.60, i32 noundef %7, ptr noundef nonnull @.str.65) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.end.if.end33_crit_edge, label %if.then6

do.end.if.end33_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then6:                                         ; preds = %do.end
  %call7 = tail call i32 @usb_submit_urb(ptr noundef nonnull %1, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %do.body11

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %status_check_work = getelementptr i8, ptr %t, i32 -52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %status_check_work) #10
  br label %if.end33

do.body11:                                        ; preds = %if.then6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_resubmit_int.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_resubmit_int, %if.then23)) #10
          to label %do.end29 [label %if.then23], !srcloc !367

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %atm_dev25 = getelementptr inbounds %struct.usbatm_data, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %atm_dev25 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %atm_dev25, align 4
  %number26 = getelementptr inbounds %struct.atm_dev, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %number26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %number26, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @speedtch_resubmit_int.__UNIQUE_ID_ddebug505, ptr noundef nonnull @.str.66, i32 noundef %14, ptr noundef nonnull @.str.65, i32 noundef %call7) #10
  br label %do.end29

do.end29:                                         ; preds = %if.then23, %do.body11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %15, 100
  %call31 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #10
  br label %if.end33

if.end33:                                         ; preds = %do.end29, %if.then9, %do.end.if.end33_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @speedtch_handle_int(ptr nocapture noundef readonly %int_urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %int_urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %int_urb, i32 0, i32 20
  %4 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %actual_length, align 4
  %status2 = getelementptr inbounds %struct.urb, ptr %int_urb, i32 0, i32 12
  %6 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_handle_int.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_handle_int, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !367

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %atm_dev = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %atm_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %atm_dev, align 4
  %number = getelementptr inbounds %struct.atm_dev, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %number, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @speedtch_handle_int.__UNIQUE_ID_ddebug506, ptr noundef nonnull @.str.60, i32 noundef %11, ptr noundef nonnull @.str.67) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %do.body6, label %if.end24

do.body6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_handle_int.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_handle_int, %if.then18)) #10
          to label %fail [label %if.then18], !srcloc !367

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  %atm_dev19 = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %atm_dev19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %atm_dev19, align 4
  %number20 = getelementptr inbounds %struct.atm_dev, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %number20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %number20, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @speedtch_handle_int.__UNIQUE_ID_ddebug507, ptr noundef nonnull @.str.68, i32 noundef %15, ptr noundef nonnull @.str.67, i32 noundef %7) #10
  br label %fail

if.end24:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp25 = icmp eq i32 %5, 6
  br i1 %cmp25, label %land.lhs.true, label %if.end24.if.else51_crit_edge

if.end24.if.else51_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else51

land.lhs.true:                                    ; preds = %if.end24
  %int_data = getelementptr inbounds %struct.speedtch_instance_data, ptr %1, i32 0, i32 8
  %bcmp149 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @speedtch_handle_int.up_int, ptr noundef dereferenceable(6) %int_data, i32 6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp149)
  %tobool27.not = icmp eq i32 %bcmp149, 0
  br i1 %tobool27.not, label %if.then28, label %land.lhs.true38.critedge

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %status_check_timer = getelementptr inbounds %struct.speedtch_instance_data, ptr %1, i32 0, i32 2
  %call29 = tail call i32 @del_timer(ptr noundef %status_check_timer) #10
  br label %if.end83

land.lhs.true38.critedge:                         ; preds = %land.lhs.true
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @speedtch_handle_int.down_int, ptr noundef dereferenceable(6) %int_data, i32 6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool42.not = icmp eq i32 %bcmp, 0
  br i1 %tobool42.not, label %land.lhs.true38.critedge.if.end83_crit_edge, label %land.lhs.true38.critedge.if.else51_crit_edge

land.lhs.true38.critedge.if.else51_crit_edge:     ; preds = %land.lhs.true38.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else51

land.lhs.true38.critedge.if.end83_crit_edge:      ; preds = %land.lhs.true38.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.else51:                                        ; preds = %land.lhs.true38.critedge.if.else51_crit_edge, %if.end24.if.else51_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_handle_int.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_handle_int, %if.then64)) #10
          to label %do.end69 [label %if.then64], !srcloc !367

if.then64:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #12
  %atm_dev65 = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 7
  %16 = ptrtoint ptr %atm_dev65 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %atm_dev65, align 4
  %number66 = getelementptr inbounds %struct.atm_dev, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %number66 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %number66, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @speedtch_handle_int.__UNIQUE_ID_ddebug508, ptr noundef nonnull @.str.73, i32 noundef %19, ptr noundef nonnull @.str.67, i32 noundef %5) #10
  br label %do.end69

do.end69:                                         ; preds = %if.then64, %if.else51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp70164.not = icmp eq i32 %5, 0
  br i1 %cmp70164.not, label %do.end69.do.end79_crit_edge, label %do.end69.do.end73_crit_edge

do.end69.do.end73_crit_edge:                      ; preds = %do.end69
  br label %do.end73

do.end69.do.end79_crit_edge:                      ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end79

do.end73:                                         ; preds = %do.end73.do.end73_crit_edge, %do.end69.do.end73_crit_edge
  %i.0165 = phi i32 [ %inc, %do.end73.do.end73_crit_edge ], [ 0, %do.end69.do.end73_crit_edge ]
  %arrayidx = getelementptr %struct.speedtch_instance_data, ptr %1, i32 0, i32 8, i32 %i.0165
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %21 to i32
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %conv) #13
  %inc = add nuw i32 %i.0165, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %do.end73.do.end79_crit_edge, label %do.end73.do.end73_crit_edge

do.end73.do.end73_crit_edge:                      ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end73

do.end73.do.end79_crit_edge:                      ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end79

do.end79:                                         ; preds = %do.end73.do.end79_crit_edge, %do.end69.do.end79_crit_edge
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #13
  br label %fail

if.end83:                                         ; preds = %land.lhs.true38.critedge.if.end83_crit_edge, %if.then28
  %.str.71.sink = phi ptr [ @.str.69, %if.then28 ], [ @.str.71, %land.lhs.true38.critedge.if.end83_crit_edge ]
  %atm_dev48 = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 7
  %22 = ptrtoint ptr %atm_dev48 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %atm_dev48, align 4
  %number49 = getelementptr inbounds %struct.atm_dev, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %number49 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %number49, align 4
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.71.sink, i32 noundef %25) #13
  %int_urb84 = getelementptr inbounds %struct.speedtch_instance_data, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %int_urb84 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %int_urb84, align 4
  %tobool85.not = icmp eq ptr %27, null
  br i1 %tobool85.not, label %if.end83.cleanup_crit_edge, label %if.then86

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then86:                                        ; preds = %if.end83
  %call87 = tail call i32 @usb_submit_urb(ptr noundef nonnull %27, i32 noundef 2592) #10
  %status_check_work = getelementptr inbounds %struct.speedtch_instance_data, ptr %1, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %28 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %status_check_work) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp89 = icmp slt i32 %call87, 0
  br i1 %cmp89, label %do.body92, label %if.then86.cleanup_crit_edge

if.then86.cleanup_crit_edge:                      ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body92:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_handle_int.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_handle_int, %if.then104)) #10
          to label %fail [label %if.then104], !srcloc !367

if.then104:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #12
  %atm_dev105 = getelementptr inbounds %struct.usbatm_data, ptr %3, i32 0, i32 7
  %29 = ptrtoint ptr %atm_dev105 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %atm_dev105, align 4
  %number106 = getelementptr inbounds %struct.atm_dev, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %number106 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %number106, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @speedtch_handle_int.__UNIQUE_ID_ddebug509, ptr noundef nonnull @.str.66, i32 noundef %32, ptr noundef nonnull @.str.67, i32 noundef %call87) #10
  br label %fail

fail:                                             ; preds = %if.then104, %do.body92, %do.end79, %if.then18, %do.body6
  %int_urb112 = getelementptr inbounds %struct.speedtch_instance_data, ptr %1, i32 0, i32 7
  %33 = ptrtoint ptr %int_urb112 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %int_urb112, align 4
  %tobool113.not = icmp eq ptr %34, null
  br i1 %tobool113.not, label %fail.cleanup_crit_edge, label %if.then114

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then114:                                       ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  %resubmit_timer = getelementptr inbounds %struct.speedtch_instance_data, ptr %1, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %35, 100
  %call116 = tail call i32 @mod_timer(ptr noundef %resubmit_timer, i32 noundef %add) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then114, %fail.cleanup_crit_edge, %if.then86.cleanup_crit_edge, %if.end83.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_driver_release_interface(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @speedtch_read_status(ptr noundef %instance) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %instance, align 4
  %usb_dev2 = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %usb_dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_dev2, align 4
  %scratch_buffer = getelementptr inbounds %struct.speedtch_instance_data, ptr %instance, i32 0, i32 9
  %4 = call ptr @memset(ptr %scratch_buffer, i32 0, i32 16)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %3, align 8
  %shl.i = shl i32 %6, 8
  %or3 = or i32 %shl.i, -2147483520
  %call4 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or3, i8 noundef zeroext 18, i8 noundef zeroext -64, i16 noundef zeroext 7, i16 noundef zeroext 0, ptr noundef %scratch_buffer, i16 noundef zeroext 1, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_read_status.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_read_status, %if.then8)) #10
          to label %cleanup [label %if.then8], !srcloc !367

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %atm_dev = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %atm_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %atm_dev, align 4
  %number = getelementptr inbounds %struct.atm_dev, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %number, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @speedtch_read_status.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.54, i32 noundef %10, ptr noundef nonnull @.str.53) #10
  br label %cleanup

if.end9:                                          ; preds = %entry
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 8
  %shl.i158 = shl i32 %12, 8
  %or12 = or i32 %shl.i158, -2147483520
  %add.ptr13 = getelementptr %struct.speedtch_instance_data, ptr %instance, i32 0, i32 9, i32 1
  %call14 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or12, i8 noundef zeroext 18, i8 noundef zeroext -64, i16 noundef zeroext 11, i16 noundef zeroext 0, ptr noundef %add.ptr13, i16 noundef zeroext 8, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.body17, label %if.end35

do.body17:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_read_status.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_read_status, %if.then29)) #10
          to label %cleanup [label %if.then29], !srcloc !367

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %atm_dev30 = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %atm_dev30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %atm_dev30, align 4
  %number31 = getelementptr inbounds %struct.atm_dev, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %number31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %number31, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @speedtch_read_status.__UNIQUE_ID_ddebug493, ptr noundef nonnull @.str.55, i32 noundef %16, ptr noundef nonnull @.str.53) #10
  br label %cleanup

if.end35:                                         ; preds = %if.end9
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %3, align 8
  %shl.i159 = shl i32 %18, 8
  %or38 = or i32 %shl.i159, -2147483520
  %add.ptr39 = getelementptr %struct.speedtch_instance_data, ptr %instance, i32 0, i32 9, i32 9
  %call40 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or38, i8 noundef zeroext 18, i8 noundef zeroext -64, i16 noundef zeroext 13, i16 noundef zeroext 0, ptr noundef %add.ptr39, i16 noundef zeroext 4, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %do.body43, label %if.end61

do.body43:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_read_status.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_read_status, %if.then55)) #10
          to label %cleanup [label %if.then55], !srcloc !367

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #12
  %atm_dev56 = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %atm_dev56 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %atm_dev56, align 4
  %number57 = getelementptr inbounds %struct.atm_dev, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %number57 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %number57, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @speedtch_read_status.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.56, i32 noundef %22, ptr noundef nonnull @.str.53) #10
  br label %cleanup

if.end61:                                         ; preds = %if.end35
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %3, align 8
  %shl.i160 = shl i32 %24, 8
  %or64 = or i32 %shl.i160, -2147483520
  %add.ptr65 = getelementptr %struct.speedtch_instance_data, ptr %instance, i32 0, i32 9, i32 13
  %call66 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or64, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 14, i16 noundef zeroext 0, ptr noundef %add.ptr65, i16 noundef zeroext 1, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %do.body69, label %if.end87

do.body69:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_read_status.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_read_status, %if.then81)) #10
          to label %cleanup [label %if.then81], !srcloc !367

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #12
  %atm_dev82 = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %atm_dev82 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %atm_dev82, align 4
  %number83 = getelementptr inbounds %struct.atm_dev, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %number83 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %number83, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @speedtch_read_status.__UNIQUE_ID_ddebug495, ptr noundef nonnull @.str.57, i32 noundef %28, ptr noundef nonnull @.str.53) #10
  br label %cleanup

if.end87:                                         ; preds = %if.end61
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %3, align 8
  %shl.i161 = shl i32 %30, 8
  %or90 = or i32 %shl.i161, -2147483520
  %add.ptr91 = getelementptr %struct.speedtch_instance_data, ptr %instance, i32 0, i32 9, i32 14
  %call92 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or90, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 15, i16 noundef zeroext 0, ptr noundef %add.ptr91, i16 noundef zeroext 1, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %do.body95, label %if.end87.cleanup_crit_edge

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body95:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_read_status.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_read_status, %if.then107)) #10
          to label %cleanup [label %if.then107], !srcloc !367

if.then107:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #12
  %atm_dev108 = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 7
  %31 = ptrtoint ptr %atm_dev108 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %atm_dev108, align 4
  %number109 = getelementptr inbounds %struct.atm_dev, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %number109 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %number109, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @speedtch_read_status.__UNIQUE_ID_ddebug496, ptr noundef nonnull @.str.58, i32 noundef %34, ptr noundef nonnull @.str.53) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then107, %do.body95, %if.end87.cleanup_crit_edge, %if.then81, %do.body69, %if.then55, %do.body43, %if.then29, %do.body17, %if.then8, %do.body
  %retval.0 = phi i32 [ %call4, %if.then8 ], [ %call14, %if.then29 ], [ %call40, %if.then55 ], [ %call66, %if.then81 ], [ %call92, %if.then107 ], [ 0, %if.end87.cleanup_crit_edge ], [ %call4, %do.body ], [ %call14, %do.body17 ], [ %call40, %do.body43 ], [ %call66, %do.body69 ], [ %call92, %do.body95 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atm_dev_signal_change(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @speedtch_start_synchro(ptr noundef %instance) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %instance, align 4
  %usb_dev2 = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %usb_dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_dev2, align 4
  %scratch_buffer = getelementptr inbounds %struct.speedtch_instance_data, ptr %instance, i32 0, i32 9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_start_synchro.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_start_synchro, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !367

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %atm_dev = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %atm_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %atm_dev, align 4
  %number = getelementptr inbounds %struct.atm_dev, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @speedtch_start_synchro.__UNIQUE_ID_ddebug497, ptr noundef nonnull @.str.60, i32 noundef %7, ptr noundef nonnull @.str.59) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %scratch_buffer to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 0, ptr %scratch_buffer, align 1
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %3, align 8
  %shl.i = shl i32 %10, 8
  %or6 = or i32 %shl.i, -2147483520
  %call7 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or6, i8 noundef zeroext 18, i8 noundef zeroext -64, i16 noundef zeroext 4, i16 noundef zeroext 0, ptr noundef %scratch_buffer, i16 noundef zeroext 2, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end11, label %do.body16

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %atm_dev13 = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %atm_dev13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %atm_dev13, align 4
  %number14 = getelementptr inbounds %struct.atm_dev, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %number14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %number14, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %14, i32 noundef %call7) #13
  br label %if.end36

do.body16:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_start_synchro.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_start_synchro, %if.then28)) #10
          to label %if.end36 [label %if.then28], !srcloc !367

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  %atm_dev29 = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %atm_dev29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %atm_dev29, align 4
  %number30 = getelementptr inbounds %struct.atm_dev, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %number30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %number30, align 4
  %19 = ptrtoint ptr %scratch_buffer to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %scratch_buffer, align 1
  %conv = zext i8 %20 to i32
  %arrayidx31 = getelementptr %struct.speedtch_instance_data, ptr %instance, i32 0, i32 9, i32 1
  %21 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %22 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @speedtch_start_synchro.__UNIQUE_ID_ddebug498, ptr noundef nonnull @.str.62, i32 noundef %18, ptr noundef nonnull @.str.59, i32 noundef %call7, i32 noundef %conv, i32 noundef %conv32) #10
  br label %if.end36

if.end36:                                         ; preds = %if.then28, %do.body16, %do.end11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @speedtch_find_firmware(ptr nocapture noundef readonly %usbatm, ptr noundef %intf, i32 noundef %phase, ptr noundef %fw_p) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [24 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %bcdDevice2 = getelementptr i8, ptr %1, i32 940
  %2 = ptrtoint ptr %bcdDevice2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %bcdDevice2, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %5 = lshr i16 %4, 8
  %conv3 = zext i16 %5 to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %buf) #10
  %6 = and i16 %4, 255
  %conv7 = zext i16 %6 to i32
  %7 = call ptr @memset(ptr %buf, i32 255, i32 24)
  %call8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.82, i32 noundef %phase, i32 noundef %conv3, i32 noundef %conv7)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_find_firmware.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_find_firmware, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !367

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 5
  %8 = ptrtoint ptr %usb_intf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_intf, align 4
  %dev12 = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @speedtch_find_firmware.__UNIQUE_ID_ddebug489, ptr noundef %dev12, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.83, ptr noundef nonnull %buf) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call15 = call i32 @request_firmware(ptr noundef %fw_p, ptr noundef nonnull %buf, ptr noundef %dev1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.end.do.end79_crit_edge, label %if.then17

do.end.do.end79_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end79

if.then17:                                        ; preds = %do.end
  %call20 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.85, i32 noundef %phase, i32 noundef %conv3)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_find_firmware.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_find_firmware, %if.then33)) #10
          to label %do.end39 [label %if.then33], !srcloc !367

if.then33:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf34 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 5
  %10 = ptrtoint ptr %usb_intf34 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb_intf34, align 4
  %dev35 = getelementptr inbounds %struct.usb_interface, ptr %11, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @speedtch_find_firmware.__UNIQUE_ID_ddebug490, ptr noundef %dev35, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.83, ptr noundef nonnull %buf) #10
  br label %do.end39

do.end39:                                         ; preds = %if.then33, %if.then17
  %call41 = call i32 @request_firmware(ptr noundef %fw_p, ptr noundef nonnull %buf, ptr noundef %dev1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %do.end39.do.end79_crit_edge, label %if.then43

do.end39.do.end79_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end79

if.then43:                                        ; preds = %do.end39
  %call45 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.86, i32 noundef %phase)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_find_firmware.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_find_firmware, %if.then58)) #10
          to label %do.end64 [label %if.then58], !srcloc !367

if.then58:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf59 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 5
  %12 = ptrtoint ptr %usb_intf59 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb_intf59, align 4
  %dev60 = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @speedtch_find_firmware.__UNIQUE_ID_ddebug491, ptr noundef %dev60, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.83, ptr noundef nonnull %buf) #10
  br label %do.end64

do.end64:                                         ; preds = %if.then58, %if.then43
  %call66 = call i32 @request_firmware(ptr noundef %fw_p, ptr noundef nonnull %buf, ptr noundef %dev1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %do.end64.do.end79_crit_edge, label %do.end71

do.end64.do.end79_crit_edge:                      ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end79

do.end71:                                         ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf72 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 5
  %14 = ptrtoint ptr %usb_intf72 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_intf72, align 4
  %dev73 = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev73, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.83, i32 noundef %phase) #13
  br label %cleanup

do.end79:                                         ; preds = %do.end64.do.end79_crit_edge, %do.end39.do.end79_crit_edge, %do.end.do.end79_crit_edge
  %usb_intf80 = getelementptr inbounds %struct.usbatm_data, ptr %usbatm, i32 0, i32 5
  %16 = ptrtoint ptr %usb_intf80 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb_intf80, align 4
  %dev81 = getelementptr inbounds %struct.usb_interface, ptr %17, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev81, ptr noundef nonnull @.str.89, i32 noundef %phase, ptr noundef nonnull %buf) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end79, %do.end71
  %retval.0 = phi i32 [ -2, %do.end71 ], [ 0, %do.end79 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @speedtch_upload_firmware(ptr noundef %instance, ptr nocapture noundef readonly %fw1, ptr nocapture noundef readonly %fw2) unnamed_addr #2 align 64 {
entry:
  %actual_length = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %instance, align 4
  %usb_dev2 = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %usb_dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_dev2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length) #10
  %4 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %actual_length, align 4, !annotation !369
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_upload_firmware.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_upload_firmware, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !367

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %usb_intf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb_intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @speedtch_upload_firmware.__UNIQUE_ID_ddebug477, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.91) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #10
  %7 = inttoptr i32 %call5 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end26

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_upload_firmware.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_upload_firmware, %if.then20)) #10
          to label %cleanup241 [label %if.then20], !srcloc !367

if.then20:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf21 = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %usb_intf21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_intf21, align 4
  %dev22 = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @speedtch_upload_firmware.__UNIQUE_ID_ddebug478, ptr noundef %dev22, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.91) #10
  br label %cleanup241

if.end26:                                         ; preds = %do.end
  %call27 = tail call ptr @usb_ifnum_to_if(ptr noundef %3, i32 noundef 2) #10
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.then29, label %if.end48

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_upload_firmware.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_upload_firmware, %if.then42)) #10
          to label %out_free [label %if.then42], !srcloc !367

if.then42:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf43 = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %usb_intf43 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb_intf43, align 4
  %dev44 = getelementptr inbounds %struct.usb_interface, ptr %11, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @speedtch_upload_firmware.__UNIQUE_ID_ddebug479, ptr noundef %dev44, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.91) #10
  br label %out_free

if.end48:                                         ; preds = %if.end26
  %12 = load i8, ptr @dl_512_first, align 1, !range !368
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool49.not = icmp eq i8 %12, 0
  br i1 %tobool49.not, label %if.end48.if.end80_crit_edge, label %if.then50

if.end48.if.end80_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then50:                                        ; preds = %if.end48
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 8
  %shl.i = shl i32 %14, 8
  %or52 = or i32 %shl.i, -1073577856
  %call53 = call i32 @usb_bulk_msg(ptr noundef %3, i32 noundef %or52, ptr noundef nonnull %7, i32 noundef 512, ptr noundef nonnull %actual_length, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call53)
  %cmp = icmp sgt i32 %call53, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call53)
  %cmp54.not = icmp eq i32 %call53, -110
  %or.cond = or i1 %cmp, %cmp54.not
  br i1 %or.cond, label %do.body61, label %do.end58

do.end58:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf59 = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %usb_intf59 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usb_intf59, align 4
  %dev60 = getelementptr inbounds %struct.usb_interface, ptr %16, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev60, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.91, i32 noundef %call53) #13
  br label %if.end80

do.body61:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_upload_firmware.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_upload_firmware, %if.then73)) #10
          to label %if.end80 [label %if.then73], !srcloc !367

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf74 = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %usb_intf74 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usb_intf74, align 4
  %dev75 = getelementptr inbounds %struct.usb_interface, ptr %18, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @speedtch_upload_firmware.__UNIQUE_ID_ddebug480, ptr noundef %dev75, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.91, i32 noundef %call53) #10
  br label %if.end80

if.end80:                                         ; preds = %if.then73, %do.body61, %do.end58, %if.end48.if.end80_crit_edge
  %19 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fw1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp81368.not = icmp eq i32 %20, 0
  br i1 %cmp81368.not, label %if.end80.for.end_crit_edge, label %for.body.lr.ph

if.end80.for.end_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end80
  %data = getelementptr inbounds %struct.firmware, ptr %fw1, i32 0, i32 1
  %usb_intf109 = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %21 = phi i32 [ %20, %for.body.lr.ph ], [ %35, %for.inc.for.body_crit_edge ]
  %offset.0369 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %sub = sub i32 %21, %offset.0369
  %22 = call i32 @llvm.smin.i32(i32 %sub, i32 4096)
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 %offset.0369
  %25 = call ptr @memcpy(ptr %7, ptr %add.ptr, i32 %22)
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %3, align 8
  %shl.i340 = shl i32 %27, 8
  %or86 = or i32 %shl.i340, -1073577984
  %call87 = call i32 @usb_bulk_msg(ptr noundef %3, i32 noundef %or86, ptr noundef nonnull %7, i32 noundef %22, ptr noundef nonnull %actual_length, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %cleanup.thread362, label %do.body96

cleanup.thread362:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %usb_intf109 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb_intf109, align 4
  %dev94 = getelementptr inbounds %struct.usb_interface, ptr %29, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev94, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.91, i32 noundef %call87) #13
  br label %out_free

do.body96:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_upload_firmware.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_upload_firmware, %cleanup.thread)) #10
          to label %for.inc [label %cleanup.thread], !srcloc !367

cleanup.thread:                                   ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %usb_intf109 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usb_intf109, align 4
  %dev110 = getelementptr inbounds %struct.usb_interface, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fw1, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @speedtch_upload_firmware.__UNIQUE_ID_ddebug483, ptr noundef %dev110, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.91, i32 noundef %33) #10
  br label %for.inc

for.inc:                                          ; preds = %cleanup.thread, %do.body96
  %add = add i32 %offset.0369, 4096
  %34 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fw1, align 4
  %cmp81 = icmp ugt i32 %35, %add
  br i1 %cmp81, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end80.for.end_crit_edge
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %3, align 8
  %shl.i342 = shl i32 %37, 8
  %or117 = or i32 %shl.i342, -1073577856
  %call118 = call i32 @usb_bulk_msg(ptr noundef %3, i32 noundef %or117, ptr noundef nonnull %7, i32 noundef 512, ptr noundef nonnull %actual_length, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %cmp119 = icmp slt i32 %call118, 0
  br i1 %cmp119, label %do.end123, label %do.body127

do.end123:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf124 = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 5
  %38 = ptrtoint ptr %usb_intf124 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %usb_intf124, align 4
  %dev125 = getelementptr inbounds %struct.usb_interface, ptr %39, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev125, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.91, i32 noundef %call118) #13
  br label %out_free

do.body127:                                       ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_upload_firmware.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_upload_firmware, %if.then139)) #10
          to label %do.end144 [label %if.then139], !srcloc !367

if.then139:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf140 = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 5
  %40 = ptrtoint ptr %usb_intf140 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %usb_intf140, align 4
  %dev141 = getelementptr inbounds %struct.usb_interface, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %actual_length, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @speedtch_upload_firmware.__UNIQUE_ID_ddebug484, ptr noundef %dev141, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.91, i32 noundef %43) #10
  br label %do.end144

do.end144:                                        ; preds = %if.then139, %do.body127
  %44 = ptrtoint ptr %fw2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fw2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp147370.not = icmp eq i32 %45, 0
  br i1 %cmp147370.not, label %do.end144.do.body177_crit_edge, label %for.body148.lr.ph

do.end144.do.body177_crit_edge:                   ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body177

for.body148.lr.ph:                                ; preds = %do.end144
  %data158 = getelementptr inbounds %struct.firmware, ptr %fw2, i32 0, i32 1
  br label %for.body148

for.cond145:                                      ; preds = %for.body148
  %add175 = add i32 %offset.1371, 4096
  %46 = ptrtoint ptr %fw2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fw2, align 4
  %cmp147 = icmp ugt i32 %47, %add175
  br i1 %cmp147, label %for.cond145.for.body148_crit_edge, label %for.cond145.do.body177_crit_edge

for.cond145.do.body177_crit_edge:                 ; preds = %for.cond145
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body177

for.cond145.for.body148_crit_edge:                ; preds = %for.cond145
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body148

for.body148:                                      ; preds = %for.cond145.for.body148_crit_edge, %for.body148.lr.ph
  %48 = phi i32 [ %45, %for.body148.lr.ph ], [ %47, %for.cond145.for.body148_crit_edge ]
  %offset.1371 = phi i32 [ 0, %for.body148.lr.ph ], [ %add175, %for.cond145.for.body148_crit_edge ]
  %sub151 = sub i32 %48, %offset.1371
  %49 = call i32 @llvm.smin.i32(i32 %sub151, i32 4096)
  %50 = ptrtoint ptr %data158 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data158, align 4
  %add.ptr159 = getelementptr i8, ptr %51, i32 %offset.1371
  %52 = call ptr @memcpy(ptr %7, ptr %add.ptr159, i32 %49)
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %3, align 8
  %shl.i344 = shl i32 %54, 8
  %or161 = or i32 %shl.i344, -1073577984
  %call162 = call i32 @usb_bulk_msg(ptr noundef %3, i32 noundef %or161, ptr noundef nonnull %7, i32 noundef %49, ptr noundef nonnull %actual_length, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %cmp163 = icmp slt i32 %call162, 0
  br i1 %cmp163, label %cleanup171, label %for.cond145

cleanup171:                                       ; preds = %for.body148
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf168 = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 5
  %55 = ptrtoint ptr %usb_intf168 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %usb_intf168, align 4
  %dev169 = getelementptr inbounds %struct.usb_interface, ptr %56, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev169, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.91, i32 noundef %call162) #13
  br label %out_free

do.body177:                                       ; preds = %for.cond145.do.body177_crit_edge, %do.end144.do.body177_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_upload_firmware.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_upload_firmware, %if.then189)) #10
          to label %do.end195 [label %if.then189], !srcloc !367

if.then189:                                       ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf190 = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 5
  %57 = ptrtoint ptr %usb_intf190 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %usb_intf190, align 4
  %dev191 = getelementptr inbounds %struct.usb_interface, ptr %58, i32 0, i32 7
  %59 = ptrtoint ptr %fw2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fw2, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @speedtch_upload_firmware.__UNIQUE_ID_ddebug487, ptr noundef %dev191, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.91, i32 noundef %60) #10
  br label %do.end195

do.end195:                                        ; preds = %if.then189, %do.body177
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %3, align 8
  %shl.i346 = shl i32 %62, 8
  %or198 = or i32 %shl.i346, -1073577856
  %call199 = call i32 @usb_bulk_msg(ptr noundef %3, i32 noundef %or198, ptr noundef nonnull %7, i32 noundef 512, ptr noundef nonnull %actual_length, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %cmp200 = icmp slt i32 %call199, 0
  br i1 %cmp200, label %do.end204, label %do.body208

do.end204:                                        ; preds = %do.end195
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf205 = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 5
  %63 = ptrtoint ptr %usb_intf205 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %usb_intf205, align 4
  %dev206 = getelementptr inbounds %struct.usb_interface, ptr %64, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev206, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.91, i32 noundef %call199) #13
  br label %out_free

do.body208:                                       ; preds = %do.end195
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_upload_firmware.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_upload_firmware, %if.then220)) #10
          to label %do.end225 [label %if.then220], !srcloc !367

if.then220:                                       ; preds = %do.body208
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf221 = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 5
  %65 = ptrtoint ptr %usb_intf221 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %usb_intf221, align 4
  %dev222 = getelementptr inbounds %struct.usb_interface, ptr %66, i32 0, i32 7
  %67 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %actual_length, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @speedtch_upload_firmware.__UNIQUE_ID_ddebug488, ptr noundef %dev222, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.91, i32 noundef %68) #10
  br label %do.end225

do.end225:                                        ; preds = %if.then220, %do.body208
  %call226 = call i32 @msleep_interruptible(i32 noundef 1000) #10
  %params = getelementptr inbounds %struct.speedtch_instance_data, ptr %instance, i32 0, i32 1
  %69 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %params, align 4
  %call227 = call i32 @usb_set_interface(ptr noundef %3, i32 noundef 1, i32 noundef %70) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call227)
  %cmp228 = icmp slt i32 %call227, 0
  br i1 %cmp228, label %do.end232, label %if.end237

do.end232:                                        ; preds = %do.end225
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf233 = getelementptr inbounds %struct.usbatm_data, ptr %1, i32 0, i32 5
  %71 = ptrtoint ptr %usb_intf233 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %usb_intf233, align 4
  %dev234 = getelementptr inbounds %struct.usb_interface, ptr %72, i32 0, i32 7
  %73 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %params, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev234, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.91, i32 noundef %74, i32 noundef %call227) #13
  br label %out_free

if.end237:                                        ; preds = %do.end225
  %75 = load i8, ptr @sw_buffering, align 1, !range !368
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool238.not = icmp eq i8 %75, 0
  br i1 %tobool238.not, label %if.end237.if.end240_crit_edge, label %if.then239

if.end237.if.end240_crit_edge:                    ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end240

if.then239:                                       ; preds = %if.end237
  %76 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %instance, align 4
  %usb_dev2.i = getelementptr inbounds %struct.usbatm_data, ptr %77, i32 0, i32 4
  %78 = ptrtoint ptr %usb_dev2.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %usb_dev2.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 8
  %shl.i.i = shl i32 %81, 8
  %or.i348 = or i32 %shl.i.i, -2147483648
  %call3.i = call i32 @usb_control_msg(ptr noundef %79, i32 noundef %or.i348, i8 noundef zeroext 50, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %do.end.i, label %do.body7.i

do.end.i:                                         ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf.i = getelementptr inbounds %struct.usbatm_data, ptr %77, i32 0, i32 5
  %82 = ptrtoint ptr %usb_intf.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %usb_intf.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %83, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.118, i32 noundef %call3.i) #13
  br label %if.end240

do.body7.i:                                       ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedtch_set_swbuff.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedtch_upload_firmware, %if.then12.i)) #10
          to label %if.end240 [label %if.then12.i], !srcloc !367

if.then12.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf13.i = getelementptr inbounds %struct.usbatm_data, ptr %77, i32 0, i32 5
  %84 = ptrtoint ptr %usb_intf13.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %usb_intf13.i, align 4
  %dev14.i = getelementptr inbounds %struct.usb_interface, ptr %85, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @speedtch_set_swbuff.__UNIQUE_ID_ddebug476, ptr noundef %dev14.i, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.118) #10
  br label %if.end240

if.end240:                                        ; preds = %if.then12.i, %do.body7.i, %do.end.i, %if.end237.if.end240_crit_edge
  %86 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %instance, align 4
  %usb_dev2.i349 = getelementptr inbounds %struct.usbatm_data, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %usb_dev2.i349 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %usb_dev2.i349, align 4
  %scratch_buffer.i = getelementptr inbounds %struct.speedtch_instance_data, ptr %instance, i32 0, i32 9
  %90 = ptrtoint ptr %scratch_buffer.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 28, ptr %scratch_buffer.i, align 1
  %arrayidx3.i = getelementptr %struct.speedtch_instance_data, ptr %instance, i32 0, i32 9, i32 1
  %91 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 80, ptr %arrayidx3.i, align 1
  %92 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %89, align 8
  %shl.i.i350 = shl i32 %93, 8
  %or.i351 = or i32 %shl.i.i350, -2147483648
  %call4.i = call i32 @usb_control_msg(ptr noundef %89, i32 noundef %or.i351, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 11, i16 noundef zeroext 0, ptr noundef %scratch_buffer.i, i16 noundef zeroext 2, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i352 = icmp slt i32 %call4.i, 0
  br i1 %cmp.i352, label %do.end.i355, label %if.end240.if.end.i_crit_edge

if.end240.if.end.i_crit_edge:                     ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i355:                                      ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf.i353 = getelementptr inbounds %struct.usbatm_data, ptr %87, i32 0, i32 5
  %94 = ptrtoint ptr %usb_intf.i353 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %usb_intf.i353, align 4
  %dev.i354 = getelementptr inbounds %struct.usb_interface, ptr %95, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i354, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122, i32 noundef %call4.i) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i355, %if.end240.if.end.i_crit_edge
  %96 = ptrtoint ptr %scratch_buffer.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 50, ptr %scratch_buffer.i, align 1
  %97 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %arrayidx3.i, align 1
  %98 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %89, align 8
  %shl.i145.i = shl i32 %99, 8
  %or8.i = or i32 %shl.i145.i, -2147483648
  %call9.i = call i32 @usb_control_msg(ptr noundef %89, i32 noundef %or8.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 2, i16 noundef zeroext 0, ptr noundef %scratch_buffer.i, i16 noundef zeroext 2, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %do.end14.i, label %if.end.i.if.end17.i_crit_edge

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

do.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf15.i = getelementptr inbounds %struct.usbatm_data, ptr %87, i32 0, i32 5
  %100 = ptrtoint ptr %usb_intf15.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %usb_intf15.i, align 4
  %dev16.i = getelementptr inbounds %struct.usb_interface, ptr %101, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev16.i, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.122, i32 noundef %call9.i) #13
  br label %if.end17.i

if.end17.i:                                       ; preds = %do.end14.i, %if.end.i.if.end17.i_crit_edge
  %102 = ptrtoint ptr %scratch_buffer.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %scratch_buffer.i, align 1
  %103 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %arrayidx3.i, align 1
  %arrayidx20.i = getelementptr %struct.speedtch_instance_data, ptr %instance, i32 0, i32 9, i32 2
  %104 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %arrayidx20.i, align 1
  %105 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %89, align 8
  %shl.i146.i = shl i32 %106, 8
  %or22.i = or i32 %shl.i146.i, -2147483648
  %call23.i = call i32 @usb_control_msg(ptr noundef %89, i32 noundef %or22.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 0, ptr noundef %scratch_buffer.i, i16 noundef zeroext 3, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 0
  br i1 %cmp24.i, label %do.end28.i, label %if.end17.i.if.end31.i_crit_edge

if.end17.i.if.end31.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

do.end28.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf29.i = getelementptr inbounds %struct.usbatm_data, ptr %87, i32 0, i32 5
  %107 = ptrtoint ptr %usb_intf29.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %usb_intf29.i, align 4
  %dev30.i = getelementptr inbounds %struct.usb_interface, ptr %108, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev30.i, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.122, i32 noundef %call23.i) #13
  br label %if.end31.i

if.end31.i:                                       ; preds = %do.end28.i, %if.end17.i.if.end31.i_crit_edge
  %109 = ptrtoint ptr %scratch_buffer.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 1, ptr %scratch_buffer.i, align 1
  %110 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %arrayidx3.i, align 1
  %111 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 1, ptr %arrayidx20.i, align 1
  %112 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %89, align 8
  %shl.i147.i = shl i32 %113, 8
  %or36.i = or i32 %shl.i147.i, -2147483648
  %call37.i = call i32 @usb_control_msg(ptr noundef %89, i32 noundef %or36.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext 0, ptr noundef %scratch_buffer.i, i16 noundef zeroext 3, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp38.i = icmp slt i32 %call37.i, 0
  br i1 %cmp38.i, label %do.end42.i, label %if.end31.i.if.end45.i_crit_edge

if.end31.i.if.end45.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.i

do.end42.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf43.i = getelementptr inbounds %struct.usbatm_data, ptr %87, i32 0, i32 5
  %114 = ptrtoint ptr %usb_intf43.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %usb_intf43.i, align 4
  %dev44.i = getelementptr inbounds %struct.usb_interface, ptr %115, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev44.i, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.122, i32 noundef %call37.i) #13
  br label %if.end45.i

if.end45.i:                                       ; preds = %do.end42.i, %if.end31.i.if.end45.i_crit_edge
  %ModemMode.i = getelementptr inbounds %struct.speedtch_instance_data, ptr %instance, i32 0, i32 1, i32 2
  %116 = ptrtoint ptr %ModemMode.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %ModemMode.i, align 4
  %118 = ptrtoint ptr %scratch_buffer.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %117, ptr %scratch_buffer.i, align 1
  %119 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %89, align 8
  %shl.i148.i = shl i32 %120, 8
  %or48.i = or i32 %shl.i148.i, -2147483648
  %call49.i = call i32 @usb_control_msg(ptr noundef %89, i32 noundef %or48.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 17, i16 noundef zeroext 0, ptr noundef %scratch_buffer.i, i16 noundef zeroext 1, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %cmp50.i = icmp slt i32 %call49.i, 0
  br i1 %cmp50.i, label %do.end54.i, label %if.end45.i.if.end57.i_crit_edge

if.end45.i.if.end57.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57.i

do.end54.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf55.i = getelementptr inbounds %struct.usbatm_data, ptr %87, i32 0, i32 5
  %121 = ptrtoint ptr %usb_intf55.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %usb_intf55.i, align 4
  %dev56.i = getelementptr inbounds %struct.usb_interface, ptr %122, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev56.i, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.122, i32 noundef %call49.i) #13
  br label %if.end57.i

if.end57.i:                                       ; preds = %do.end54.i, %if.end45.i.if.end57.i_crit_edge
  %123 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %89, align 8
  %shl.i149.i = shl i32 %124, 8
  %or59.i = or i32 %shl.i149.i, -2147483648
  %ModemOption.i = getelementptr inbounds %struct.speedtch_instance_data, ptr %instance, i32 0, i32 1, i32 3
  %call62.i = call i32 @usb_control_msg(ptr noundef %89, i32 noundef %or59.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 20, i16 noundef zeroext 0, ptr noundef %ModemOption.i, i16 noundef zeroext 16, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %cmp63.i = icmp slt i32 %call62.i, 0
  br i1 %cmp63.i, label %do.end67.i, label %if.end57.i.if.end70.i_crit_edge

if.end57.i.if.end70.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70.i

do.end67.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf68.i = getelementptr inbounds %struct.usbatm_data, ptr %87, i32 0, i32 5
  %125 = ptrtoint ptr %usb_intf68.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %usb_intf68.i, align 4
  %dev69.i = getelementptr inbounds %struct.usb_interface, ptr %126, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev69.i, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.122, i32 noundef %call62.i) #13
  br label %if.end70.i

if.end70.i:                                       ; preds = %do.end67.i, %if.end57.i.if.end70.i_crit_edge
  %BMaxDSL.i = getelementptr inbounds %struct.speedtch_instance_data, ptr %instance, i32 0, i32 1, i32 1
  %127 = ptrtoint ptr %BMaxDSL.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %BMaxDSL.i, align 4
  %conv.i = trunc i32 %128 to i8
  %129 = ptrtoint ptr %scratch_buffer.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv.i, ptr %scratch_buffer.i, align 1
  %shr.i = lshr i32 %128, 8
  %conv75.i = trunc i32 %shr.i to i8
  %130 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv75.i, ptr %arrayidx3.i, align 1
  %131 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %89, align 8
  %shl.i150.i = shl i32 %132, 8
  %or78.i = or i32 %shl.i150.i, -2147483648
  %call79.i = call i32 @usb_control_msg(ptr noundef %89, i32 noundef %or78.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 18, i16 noundef zeroext 0, ptr noundef %scratch_buffer.i, i16 noundef zeroext 2, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %cmp80.i = icmp slt i32 %call79.i, 0
  br i1 %cmp80.i, label %do.end85.i, label %if.end70.i.out_free_crit_edge

if.end70.i.out_free_crit_edge:                    ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

do.end85.i:                                       ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  %usb_intf86.i = getelementptr inbounds %struct.usbatm_data, ptr %87, i32 0, i32 5
  %133 = ptrtoint ptr %usb_intf86.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %usb_intf86.i, align 4
  %dev87.i = getelementptr inbounds %struct.usb_interface, ptr %134, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev87.i, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.122, i32 noundef %call79.i) #13
  br label %out_free

out_free:                                         ; preds = %do.end85.i, %if.end70.i.out_free_crit_edge, %do.end232, %do.end204, %cleanup171, %do.end123, %cleanup.thread362, %if.then42, %if.then29
  %ret.0 = phi i32 [ %call118, %do.end123 ], [ %call162, %cleanup171 ], [ %call199, %do.end204 ], [ %call227, %do.end232 ], [ -19, %if.then42 ], [ -19, %if.then29 ], [ %call87, %cleanup.thread362 ], [ 0, %if.end70.i.out_free_crit_edge ], [ 0, %do.end85.i ]
  call void @free_pages(i32 noundef %call5, i32 noundef 0) #10
  br label %cleanup241

cleanup241:                                       ; preds = %out_free, %if.then20, %if.then7
  %retval.0 = phi i32 [ %ret.0, %out_free ], [ -12, %if.then20 ], [ -12, %if.then7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length) #10
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !42, !44, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !65, !67, !69, !70, !72, !74, !76, !78, !79, !80, !81, !83, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !103, !104, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !125, !126, !128, !129, !130, !132, !134, !135, !136, !137, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !189, !190, !191, !192, !194, !195, !197, !198, !200, !202, !204, !205, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !221, !222, !223, !225, !226, !227, !229, !231, !232, !233, !234, !236, !238, !239, !240, !242, !244, !246, !248, !250, !251, !252, !254, !255, !256, !258, !259, !261, !262, !264, !265, !267, !268, !269, !270, !272, !273, !275, !276, !277, !279, !280, !282, !283, !284, !286, !287, !289, !290, !291, !293, !294, !296, !297, !298, !300, !301, !303, !304, !305, !307, !308, !309, !310, !311, !312, !314, !315, !317, !318, !319, !320, !322, !323, !324, !326, !327, !328, !330, !331, !332, !334, !335, !336, !338, !339, !340, !342, !343, !344, !346, !347, !349, !350, !352, !353, !355, !356}
!llvm.module.flags = !{!358, !359, !360, !361, !362, !363, !364, !365}
!llvm.ident = !{!366}

!0 = !{ptr @__param_altsetting, !1, !"__param_altsetting", i1 false, i1 false}
!1 = !{!"../drivers/usb/atm/speedtch.c", i32 76, i32 1}
!2 = !{ptr @__UNIQUE_ID_altsettingtype462, !1, !"__UNIQUE_ID_altsettingtype462", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_altsetting463, !4, !"__UNIQUE_ID_altsetting463", i1 false, i1 false}
!4 = !{!"../drivers/usb/atm/speedtch.c", i32 77, i32 1}
!5 = !{ptr @__param_dl_512_first, !6, !"__param_dl_512_first", i1 false, i1 false}
!6 = !{!"../drivers/usb/atm/speedtch.c", i32 82, i32 1}
!7 = !{ptr @__UNIQUE_ID_dl_512_firsttype464, !6, !"__UNIQUE_ID_dl_512_firsttype464", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_dl_512_first465, !9, !"__UNIQUE_ID_dl_512_first465", i1 false, i1 false}
!9 = !{!"../drivers/usb/atm/speedtch.c", i32 83, i32 1}
!10 = !{ptr @__param_enable_isoc, !11, !"__param_enable_isoc", i1 false, i1 false}
!11 = !{!"../drivers/usb/atm/speedtch.c", i32 87, i32 1}
!12 = !{ptr @__UNIQUE_ID_enable_isoctype466, !11, !"__UNIQUE_ID_enable_isoctype466", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_enable_isoc467, !14, !"__UNIQUE_ID_enable_isoc467", i1 false, i1 false}
!14 = !{!"../drivers/usb/atm/speedtch.c", i32 88, i32 1}
!15 = !{ptr @__param_sw_buffering, !16, !"__param_sw_buffering", i1 false, i1 false}
!16 = !{!"../drivers/usb/atm/speedtch.c", i32 92, i32 1}
!17 = !{ptr @__UNIQUE_ID_sw_bufferingtype468, !16, !"__UNIQUE_ID_sw_bufferingtype468", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_sw_buffering469, !19, !"__UNIQUE_ID_sw_buffering469", i1 false, i1 false}
!19 = !{!"../drivers/usb/atm/speedtch.c", i32 93, i32 1}
!20 = !{ptr @__param_BMaxDSL, !21, !"__param_BMaxDSL", i1 false, i1 false}
!21 = !{!"../drivers/usb/atm/speedtch.c", i32 97, i32 1}
!22 = !{ptr @__UNIQUE_ID_BMaxDSLtype470, !21, !"__UNIQUE_ID_BMaxDSLtype470", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_BMaxDSL471, !24, !"__UNIQUE_ID_BMaxDSL471", i1 false, i1 false}
!24 = !{!"../drivers/usb/atm/speedtch.c", i32 98, i32 1}
!25 = !{ptr @__param_ModemMode, !26, !"__param_ModemMode", i1 false, i1 false}
!26 = !{!"../drivers/usb/atm/speedtch.c", i32 101, i32 1}
!27 = !{ptr @__UNIQUE_ID_ModemModetype472, !26, !"__UNIQUE_ID_ModemModetype472", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_ModemMode473, !29, !"__UNIQUE_ID_ModemMode473", i1 false, i1 false}
!29 = !{!"../drivers/usb/atm/speedtch.c", i32 102, i32 1}
!30 = !{ptr @__param_ModemOption, !31, !"__param_ModemOption", i1 false, i1 false}
!31 = !{!"../drivers/usb/atm/speedtch.c", i32 105, i32 1}
!32 = !{ptr @__UNIQUE_ID_ModemOptiontype474, !31, !"__UNIQUE_ID_ModemOptiontype474", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_ModemOption475, !34, !"__UNIQUE_ID_ModemOption475", i1 false, i1 false}
!34 = !{!"../drivers/usb/atm/speedtch.c", i32 106, i32 1}
!35 = !{ptr @__initcall__kmod_speedtch__518_942_speedtch_usb_driver_init6, !36, !"__initcall__kmod_speedtch__518_942_speedtch_usb_driver_init6", i1 false, i1 false}
!36 = !{!"../drivers/usb/atm/speedtch.c", i32 942, i32 1}
!37 = !{ptr @__exitcall_speedtch_usb_driver_exit, !36, !"__exitcall_speedtch_usb_driver_exit", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_author519, !39, !"__UNIQUE_ID_author519", i1 false, i1 false}
!39 = !{!"../drivers/usb/atm/speedtch.c", i32 944, i32 1}
!40 = !{ptr @__UNIQUE_ID_description520, !41, !"__UNIQUE_ID_description520", i1 false, i1 false}
!41 = !{!"../drivers/usb/atm/speedtch.c", i32 945, i32 1}
!42 = !{ptr @__UNIQUE_ID_file521, !43, !"__UNIQUE_ID_file521", i1 false, i1 false}
!43 = !{!"../drivers/usb/atm/speedtch.c", i32 946, i32 1}
!44 = !{ptr @__UNIQUE_ID_license522, !43, !"__UNIQUE_ID_license522", i1 false, i1 false}
!45 = !{ptr @__param_str_altsetting, !1, !"__param_str_altsetting", i1 false, i1 false}
!46 = !{ptr @altsetting, !47, !"altsetting", i1 false, i1 false}
!47 = !{!"../drivers/usb/atm/speedtch.c", i32 59, i32 21}
!48 = !{ptr @__param_str_dl_512_first, !6, !"__param_str_dl_512_first", i1 false, i1 false}
!49 = !{ptr @dl_512_first, !50, !"dl_512_first", i1 false, i1 false}
!50 = !{!"../drivers/usb/atm/speedtch.c", i32 60, i32 13}
!51 = !{ptr @__param_str_enable_isoc, !11, !"__param_str_enable_isoc", i1 false, i1 false}
!52 = !{ptr @enable_isoc, !53, !"enable_isoc", i1 false, i1 false}
!53 = !{!"../drivers/usb/atm/speedtch.c", i32 61, i32 13}
!54 = !{ptr @__param_str_sw_buffering, !16, !"__param_str_sw_buffering", i1 false, i1 false}
!55 = !{ptr @sw_buffering, !56, !"sw_buffering", i1 false, i1 false}
!56 = !{!"../drivers/usb/atm/speedtch.c", i32 62, i32 13}
!57 = !{ptr @__param_str_BMaxDSL, !21, !"__param_str_BMaxDSL", i1 false, i1 false}
!58 = !{ptr @BMaxDSL, !59, !"BMaxDSL", i1 false, i1 false}
!59 = !{!"../drivers/usb/atm/speedtch.c", i32 71, i32 21}
!60 = !{ptr @__param_str_ModemMode, !26, !"__param_str_ModemMode", i1 false, i1 false}
!61 = !{ptr @ModemMode, !62, !"ModemMode", i1 false, i1 false}
!62 = !{!"../drivers/usb/atm/speedtch.c", i32 72, i32 22}
!63 = !{ptr @__param_str_ModemOption, !31, !"__param_str_ModemOption", i1 false, i1 false}
!64 = !{ptr @__param_arr_ModemOption, !31, !"__param_arr_ModemOption", i1 false, i1 false}
!65 = !{ptr @num_ModemOption, !66, !"num_ModemOption", i1 false, i1 false}
!66 = !{!"../drivers/usb/atm/speedtch.c", i32 74, i32 21}
!67 = !{ptr @ModemOption, !68, !"ModemOption", i1 false, i1 false}
!68 = !{!"../drivers/usb/atm/speedtch.c", i32 73, i32 22}
!69 = !{ptr @.str, !36, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @speedtch_usb_driver, !71, !"speedtch_usb_driver", i1 false, i1 false}
!71 = !{!"../drivers/usb/atm/speedtch.c", i32 737, i32 26}
!72 = !{ptr @speedtch_driver_name, !73, !"speedtch_driver_name", i1 false, i1 false}
!73 = !{!"../drivers/usb/atm/speedtch.c", i32 31, i32 19}
!74 = !{ptr @speedtch_usbatm_driver, !75, !"speedtch_usbatm_driver", i1 false, i1 false}
!75 = !{!"../drivers/usb/atm/speedtch.c", i32 925, i32 29}
!76 = !{ptr @.str.1, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/atm/speedtch.c", i32 773, i32 2}
!78 = !{ptr @.str.2, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.3, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @speedtch_bind.__UNIQUE_ID_ddebug513, !77, !"__UNIQUE_ID_ddebug513", i1 false, i1 false}
!81 = !{ptr @.str.4, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/atm/speedtch.c", i32 778, i32 3}
!83 = !{ptr @.str.5, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.6, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @speedtch_bind._entry, !82, !"_entry", i1 false, i1 false}
!86 = !{ptr @speedtch_bind._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.8, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/atm/speedtch.c", i32 784, i32 3}
!89 = !{ptr @speedtch_bind._entry.7, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @speedtch_bind._entry_ptr.9, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.11, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/atm/speedtch.c", i32 797, i32 5}
!93 = !{ptr @speedtch_bind._entry.10, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @speedtch_bind._entry_ptr.12, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.14, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/atm/speedtch.c", i32 823, i32 4}
!97 = !{ptr @speedtch_bind._entry.13, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @speedtch_bind._entry_ptr.15, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @speedtch_bind.__UNIQUE_ID_ddebug514, !100, !"__UNIQUE_ID_ddebug514", i1 false, i1 false}
!100 = !{!"../drivers/usb/atm/speedtch.c", i32 829, i32 4}
!101 = !{ptr @.str.17, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/atm/speedtch.c", i32 850, i32 4}
!103 = !{ptr @.str.18, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @speedtch_bind._entry.16, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @speedtch_bind._entry_ptr.19, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @speedtch_bind._entry.20, !107, !"_entry", i1 false, i1 false}
!107 = !{!"../drivers/usb/atm/speedtch.c", i32 855, i32 4}
!108 = !{ptr @speedtch_bind._entry_ptr.21, !107, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @speedtch_bind.__key, !110, !"__key", i1 false, i1 false}
!110 = !{!"../drivers/usb/atm/speedtch.c", i32 864, i32 2}
!111 = !{ptr @.str.22, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @speedtch_bind.__key.23, !113, !"__key", i1 false, i1 false}
!113 = !{!"../drivers/usb/atm/speedtch.c", i32 865, i32 2}
!114 = !{ptr @.str.24, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @speedtch_bind.__key.25, !116, !"__key", i1 false, i1 false}
!116 = !{!"../drivers/usb/atm/speedtch.c", i32 869, i32 2}
!117 = !{ptr @.str.26, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.27, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/atm/speedtch.c", i32 879, i32 3}
!120 = !{ptr @speedtch_bind.__UNIQUE_ID_ddebug515, !119, !"__UNIQUE_ID_ddebug515", i1 false, i1 false}
!121 = !{ptr @.str.28, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/atm/speedtch.c", i32 888, i32 2}
!123 = !{ptr @speedtch_bind.__UNIQUE_ID_ddebug516, !122, !"__UNIQUE_ID_ddebug516", i1 false, i1 false}
!124 = !{ptr @.str.29, !122, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.30, !122, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.32, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/atm/speedtch.c", i32 892, i32 4}
!128 = !{ptr @speedtch_bind._entry.31, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @speedtch_bind._entry_ptr.33, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @DEFAULT_MODEM_OPTION, !131, !"DEFAULT_MODEM_OPTION", i1 false, i1 false}
!131 = !{!"../drivers/usb/atm/speedtch.c", i32 67, i32 28}
!132 = !{ptr @.str.35, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/atm/speedtch.c", i32 500, i32 3}
!134 = !{ptr @.str.36, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @speedtch_check_status._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @speedtch_check_status._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.37, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/atm/speedtch.c", i32 510, i32 3}
!139 = !{ptr @speedtch_check_status.__UNIQUE_ID_ddebug503, !138, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!140 = !{ptr @.str.39, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/atm/speedtch.c", i32 516, i32 5}
!142 = !{ptr @speedtch_check_status._entry.38, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @speedtch_check_status._entry_ptr.40, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.42, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/usb/atm/speedtch.c", i32 523, i32 4}
!146 = !{ptr @speedtch_check_status._entry.41, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @speedtch_check_status._entry_ptr.43, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.45, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/usb/atm/speedtch.c", i32 528, i32 4}
!150 = !{ptr @speedtch_check_status._entry.44, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @speedtch_check_status._entry_ptr.46, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.48, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/usb/atm/speedtch.c", i32 545, i32 4}
!154 = !{ptr @speedtch_check_status._entry.47, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @speedtch_check_status._entry_ptr.49, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.51, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/usb/atm/speedtch.c", i32 552, i32 4}
!158 = !{ptr @speedtch_check_status._entry.50, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @speedtch_check_status._entry_ptr.52, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.53, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/usb/atm/speedtch.c", i32 420, i32 3}
!162 = !{ptr @.str.54, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @speedtch_read_status.__UNIQUE_ID_ddebug492, !161, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!164 = !{ptr @.str.55, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/usb/atm/speedtch.c", i32 428, i32 3}
!166 = !{ptr @speedtch_read_status.__UNIQUE_ID_ddebug493, !165, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!167 = !{ptr @.str.56, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/usb/atm/speedtch.c", i32 436, i32 3}
!169 = !{ptr @speedtch_read_status.__UNIQUE_ID_ddebug494, !168, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!170 = !{ptr @.str.57, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/usb/atm/speedtch.c", i32 444, i32 3}
!172 = !{ptr @speedtch_read_status.__UNIQUE_ID_ddebug495, !171, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!173 = !{ptr @.str.58, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/usb/atm/speedtch.c", i32 452, i32 3}
!175 = !{ptr @speedtch_read_status.__UNIQUE_ID_ddebug496, !174, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!176 = !{ptr @.str.59, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/usb/atm/speedtch.c", i32 466, i32 2}
!178 = !{ptr @.str.60, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @speedtch_start_synchro.__UNIQUE_ID_ddebug497, !177, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!180 = !{ptr @.str.61, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/usb/atm/speedtch.c", i32 475, i32 3}
!182 = !{ptr @speedtch_start_synchro._entry, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @speedtch_start_synchro._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.62, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/usb/atm/speedtch.c", i32 477, i32 3}
!186 = !{ptr @speedtch_start_synchro.__UNIQUE_ID_ddebug498, !185, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!187 = !{ptr @.str.63, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/usb/atm/speedtch.c", i32 571, i32 3}
!189 = !{ptr @.str.64, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @speedtch_status_poll._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @speedtch_status_poll._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.65, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/usb/atm/speedtch.c", i32 581, i32 2}
!194 = !{ptr @speedtch_resubmit_int.__UNIQUE_ID_ddebug504, !193, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!195 = !{ptr @.str.66, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/usb/atm/speedtch.c", i32 588, i32 4}
!197 = !{ptr @speedtch_resubmit_int.__UNIQUE_ID_ddebug505, !196, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!198 = !{ptr @speedtch_handle_int.up_int, !199, !"up_int", i1 false, i1 false}
!199 = !{!"../drivers/usb/atm/speedtch.c", i32 603, i32 29}
!200 = !{ptr @speedtch_handle_int.down_int, !201, !"down_int", i1 false, i1 false}
!201 = !{!"../drivers/usb/atm/speedtch.c", i32 605, i32 29}
!202 = !{ptr @.str.67, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/usb/atm/speedtch.c", i32 607, i32 2}
!204 = !{ptr @speedtch_handle_int.__UNIQUE_ID_ddebug506, !203, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!205 = !{ptr @.str.68, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/usb/atm/speedtch.c", i32 610, i32 3}
!207 = !{ptr @speedtch_handle_int.__UNIQUE_ID_ddebug507, !206, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!208 = !{ptr @.str.69, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/usb/atm/speedtch.c", i32 616, i32 3}
!210 = !{ptr @speedtch_handle_int._entry, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @speedtch_handle_int._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.71, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/usb/atm/speedtch.c", i32 618, i32 3}
!214 = !{ptr @speedtch_handle_int._entry.70, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @speedtch_handle_int._entry_ptr.72, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.73, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/usb/atm/speedtch.c", i32 622, i32 3}
!218 = !{ptr @speedtch_handle_int.__UNIQUE_ID_ddebug508, !217, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!219 = !{ptr @.str.75, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/usb/atm/speedtch.c", i32 624, i32 4}
!221 = !{ptr @speedtch_handle_int._entry.74, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @speedtch_handle_int._entry_ptr.76, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.78, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/usb/atm/speedtch.c", i32 625, i32 3}
!225 = !{ptr @speedtch_handle_int._entry.77, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @speedtch_handle_int._entry_ptr.79, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @speedtch_handle_int.__UNIQUE_ID_ddebug509, !228, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!228 = !{!"../drivers/usb/atm/speedtch.c", i32 634, i32 4}
!229 = !{ptr @.str.80, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/usb/atm/speedtch.c", i32 394, i32 3}
!231 = !{ptr @.str.81, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @speedtch_heavy_init._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @speedtch_heavy_init._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.82, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/usb/atm/speedtch.c", i32 356, i32 15}
!236 = !{ptr @.str.83, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/usb/atm/speedtch.c", i32 357, i32 2}
!238 = !{ptr @.str.84, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @speedtch_find_firmware.__UNIQUE_ID_ddebug489, !237, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!240 = !{ptr @.str.85, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/usb/atm/speedtch.c", i32 360, i32 16}
!242 = !{ptr @speedtch_find_firmware.__UNIQUE_ID_ddebug490, !243, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!243 = !{!"../drivers/usb/atm/speedtch.c", i32 361, i32 3}
!244 = !{ptr @.str.86, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/usb/atm/speedtch.c", i32 364, i32 17}
!246 = !{ptr @speedtch_find_firmware.__UNIQUE_ID_ddebug491, !247, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!247 = !{!"../drivers/usb/atm/speedtch.c", i32 365, i32 4}
!248 = !{ptr @.str.87, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/usb/atm/speedtch.c", i32 368, i32 5}
!250 = !{ptr @speedtch_find_firmware._entry, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @speedtch_find_firmware._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.89, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/usb/atm/speedtch.c", i32 374, i32 2}
!254 = !{ptr @speedtch_find_firmware._entry.88, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @speedtch_find_firmware._entry_ptr.90, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.91, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/usb/atm/speedtch.c", i32 241, i32 2}
!258 = !{ptr @speedtch_upload_firmware.__UNIQUE_ID_ddebug477, !257, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!259 = !{ptr @.str.92, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/usb/atm/speedtch.c", i32 246, i32 3}
!261 = !{ptr @speedtch_upload_firmware.__UNIQUE_ID_ddebug478, !260, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!262 = !{ptr @.str.93, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/usb/atm/speedtch.c", i32 252, i32 3}
!264 = !{ptr @speedtch_upload_firmware.__UNIQUE_ID_ddebug479, !263, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!265 = !{ptr @.str.94, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/usb/atm/speedtch.c", i32 262, i32 4}
!267 = !{ptr @.str.95, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @speedtch_upload_firmware._entry, !266, !"_entry", i1 false, i1 false}
!269 = !{ptr @speedtch_upload_firmware._entry_ptr, !266, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.96, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/usb/atm/speedtch.c", i32 264, i32 4}
!272 = !{ptr @speedtch_upload_firmware.__UNIQUE_ID_ddebug480, !271, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!273 = !{ptr @.str.98, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/usb/atm/speedtch.c", i32 276, i32 4}
!275 = !{ptr @speedtch_upload_firmware._entry.97, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @speedtch_upload_firmware._entry_ptr.99, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.100, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/usb/atm/speedtch.c", i32 279, i32 3}
!279 = !{ptr @speedtch_upload_firmware.__UNIQUE_ID_ddebug483, !278, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!280 = !{ptr @.str.102, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/usb/atm/speedtch.c", i32 289, i32 3}
!282 = !{ptr @speedtch_upload_firmware._entry.101, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @speedtch_upload_firmware._entry_ptr.103, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.104, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/usb/atm/speedtch.c", i32 292, i32 2}
!286 = !{ptr @speedtch_upload_firmware.__UNIQUE_ID_ddebug484, !285, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!287 = !{ptr @.str.106, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/usb/atm/speedtch.c", i32 303, i32 4}
!289 = !{ptr @speedtch_upload_firmware._entry.105, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @speedtch_upload_firmware._entry_ptr.107, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.108, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/usb/atm/speedtch.c", i32 307, i32 2}
!293 = !{ptr @speedtch_upload_firmware.__UNIQUE_ID_ddebug487, !292, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!294 = !{ptr @.str.110, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/usb/atm/speedtch.c", i32 316, i32 3}
!296 = !{ptr @speedtch_upload_firmware._entry.109, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @speedtch_upload_firmware._entry_ptr.111, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.112, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/usb/atm/speedtch.c", i32 321, i32 2}
!300 = !{ptr @speedtch_upload_firmware.__UNIQUE_ID_ddebug488, !299, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!301 = !{ptr @.str.114, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/usb/atm/speedtch.c", i32 328, i32 3}
!303 = !{ptr @speedtch_upload_firmware._entry.113, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @speedtch_upload_firmware._entry_ptr.115, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.116, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/usb/atm/speedtch.c", i32 153, i32 3}
!307 = !{ptr @.str.117, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @speedtch_set_swbuff._entry, !306, !"_entry", i1 false, i1 false}
!309 = !{ptr @speedtch_set_swbuff._entry_ptr, !306, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.118, !306, !"<string literal>", i1 false, i1 false}
!311 = distinct !{null, !306, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @.str.120, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/usb/atm/speedtch.c", i32 157, i32 3}
!314 = !{ptr @speedtch_set_swbuff.__UNIQUE_ID_ddebug476, !313, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!315 = !{ptr @.str.121, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/usb/atm/speedtch.c", i32 173, i32 3}
!317 = !{ptr @.str.122, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @speedtch_test_sequence._entry, !316, !"_entry", i1 false, i1 false}
!319 = !{ptr @speedtch_test_sequence._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.124, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/usb/atm/speedtch.c", i32 181, i32 3}
!322 = !{ptr @speedtch_test_sequence._entry.123, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @speedtch_test_sequence._entry_ptr.125, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.127, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/usb/atm/speedtch.c", i32 190, i32 3}
!326 = !{ptr @speedtch_test_sequence._entry.126, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @speedtch_test_sequence._entry_ptr.128, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.130, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/usb/atm/speedtch.c", i32 199, i32 3}
!330 = !{ptr @speedtch_test_sequence._entry.129, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @speedtch_test_sequence._entry_ptr.131, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.133, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/usb/atm/speedtch.c", i32 208, i32 3}
!334 = !{ptr @speedtch_test_sequence._entry.132, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @speedtch_test_sequence._entry_ptr.134, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.136, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/usb/atm/speedtch.c", i32 219, i32 3}
!338 = !{ptr @speedtch_test_sequence._entry.135, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @speedtch_test_sequence._entry_ptr.137, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.139, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/usb/atm/speedtch.c", i32 227, i32 3}
!342 = !{ptr @speedtch_test_sequence._entry.138, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @speedtch_test_sequence._entry_ptr.140, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.141, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/usb/atm/speedtch.c", i32 913, i32 2}
!346 = !{ptr @speedtch_unbind.__UNIQUE_ID_ddebug517, !345, !"__UNIQUE_ID_ddebug517", i1 false, i1 false}
!347 = !{ptr @.str.142, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/usb/atm/speedtch.c", i32 654, i32 2}
!349 = !{ptr @speedtch_atm_start.__UNIQUE_ID_ddebug510, !348, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!350 = !{ptr @.str.143, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/usb/atm/speedtch.c", i32 672, i32 4}
!352 = !{ptr @speedtch_atm_start.__UNIQUE_ID_ddebug511, !351, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!353 = !{ptr @.str.144, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/usb/atm/speedtch.c", i32 689, i32 2}
!355 = !{ptr @speedtch_atm_stop.__UNIQUE_ID_ddebug512, !354, !"__UNIQUE_ID_ddebug512", i1 false, i1 false}
!356 = !{ptr @speedtch_usb_ids, !357, !"speedtch_usb_ids", i1 false, i1 false}
!357 = !{!"../drivers/usb/atm/speedtch.c", i32 728, i32 35}
!358 = !{i32 1, !"wchar_size", i32 2}
!359 = !{i32 1, !"min_enum_size", i32 4}
!360 = !{i32 8, !"branch-target-enforcement", i32 0}
!361 = !{i32 8, !"sign-return-address", i32 0}
!362 = !{i32 8, !"sign-return-address-all", i32 0}
!363 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!364 = !{i32 7, !"uwtable", i32 1}
!365 = !{i32 7, !"frame-pointer", i32 2}
!366 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!367 = !{i64 2148835955, i64 2148835960, i64 2148835973, i64 2148836017, i64 2148836051, i64 2148836072}
!368 = !{i8 0, i8 2}
!369 = !{!"auto-init"}
!370 = !{i64 2157269838}
