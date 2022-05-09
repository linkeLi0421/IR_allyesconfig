; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/usbtouchscreen.c_pt.bc'
source_filename = "../drivers/input/touchscreen/usbtouchscreen.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usbtouch_device_info = type { i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usbtouch_usb = type { ptr, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, %struct.mutex, i8, [128 x i8], [64 x i8], ptr, i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.mtouch_priv = type { i8, i8 }
%struct.nexio_touch_packet = type <{ i8, i16, i16, i16, [0 x i8] }>
%struct.nexio_priv = type { ptr, ptr }

@__param_str_swap_xy = internal constant [23 x i8] c"usbtouchscreen.swap_xy\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@swap_xy = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_swap_xy = internal constant %struct.kernel_param { ptr @__param_str_swap_xy, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @swap_xy } }, section "__param", align 4
@__UNIQUE_ID_swap_xytype232 = internal constant [37 x i8] c"usbtouchscreen.parmtype=swap_xy:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_swap_xy233 = internal constant [61 x i8] c"usbtouchscreen.parm=swap_xy:If set X and Y axes are swapped.\00", section ".modinfo", align 1
@__param_str_hwcalib_xy = internal constant [26 x i8] c"usbtouchscreen.hwcalib_xy\00", align 1
@hwcalib_xy = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_hwcalib_xy = internal constant %struct.kernel_param { ptr @__param_str_hwcalib_xy, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @hwcalib_xy } }, section "__param", align 4
@__UNIQUE_ID_hwcalib_xytype234 = internal constant [40 x i8] c"usbtouchscreen.parmtype=hwcalib_xy:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_hwcalib_xy235 = internal constant [78 x i8] c"usbtouchscreen.parm=hwcalib_xy:If set hw-calibrated X/Y are used if available\00", section ".modinfo", align 1
@__initcall__kmod_usbtouchscreen__255_1854_usbtouch_driver_init6 = internal global ptr @usbtouch_driver_init, section ".initcall6.init", align 4
@usbtouch_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @usbtouch_probe, ptr @usbtouch_disconnect, ptr null, ptr @usbtouch_suspend, ptr @usbtouch_resume, ptr @usbtouch_reset_resume, ptr null, ptr null, ptr @usbtouch_devices, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 64 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_usbtouch_driver_exit = internal global ptr @usbtouch_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author256 = internal constant [55 x i8] c"usbtouchscreen.author=Daniel Ritz <daniel.ritz@gmx.ch>\00", section ".modinfo", align 1
@__UNIQUE_ID_description257 = internal constant [50 x i8] c"usbtouchscreen.description=USB Touchscreen Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file258 = internal constant [61 x i8] c"usbtouchscreen.file=drivers/input/touchscreen/usbtouchscreen\00", section ".modinfo", align 1
@__UNIQUE_ID_license259 = internal constant [27 x i8] c"usbtouchscreen.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias260 = internal constant [33 x i8] c"usbtouchscreen.alias=touchkitusb\00", section ".modinfo", align 1
@__UNIQUE_ID_alias261 = internal constant [30 x i8] c"usbtouchscreen.alias=itmtouch\00", section ".modinfo", align 1
@__UNIQUE_ID_alias262 = internal constant [31 x i8] c"usbtouchscreen.alias=mtouchusb\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usbtouchscreen\00", [17 x i8] zeroinitializer }, align 32
@usbtouch_devices = internal constant { [38 x %struct.usb_device_id], [240 x i8] } { [38 x %struct.usb_device_id] [%struct.usb_device_id { i16 131, i16 3823, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i32 -1 }, %struct.usb_device_id { i16 131, i16 3823, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i32 -1 }, %struct.usb_device_id { i16 3, i16 14371, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 14371, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 291, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3823, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3823, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4660, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4660, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4940, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 4940, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 4940, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 4940, i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1430, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1027, i16 -1559, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 5859, i16 -1559, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 4660, i16 22136, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 1591, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 5 }, %struct.usb_device_id { i16 3, i16 2810, i16 1000, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 6 }, %struct.usb_device_id { i16 3, i16 9566, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 7 }, %struct.usb_device_id { i16 3, i16 22874, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 7 }, %struct.usb_device_id { i16 3, i16 26133, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 7 }, %struct.usb_device_id { i16 3, i16 26133, i16 18, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 5009, i16 4096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 9 }, %struct.usb_device_id { i16 3, i16 3580, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 10 }, %struct.usb_device_id { i16 3, i16 2290, i16 127, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 11 }, %struct.usb_device_id { i16 3, i16 2290, i16 206, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 11 }, %struct.usb_device_id { i16 3, i16 2290, i16 244, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 11 }, %struct.usb_device_id { i16 3, i16 3986, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 12 }, %struct.usb_device_id { i16 3, i16 6855, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 13 }, %struct.usb_device_id { i16 3, i16 5320, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 14 }, %struct.usb_device_id { i16 3, i16 1636, i16 777, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 15 }, %struct.usb_device_id { i16 3, i16 1636, i16 774, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 15 }, %struct.usb_device_id { i16 899, i16 4336, i16 8194, i16 0, i16 0, i8 0, i8 0, i8 0, i8 10, i8 0, i8 0, i8 0, i32 16 }, %struct.usb_device_id { i16 899, i16 6256, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 10, i8 0, i8 0, i8 0, i32 16 }, %struct.usb_device_id { i16 3, i16 1255, i16 32, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 17 }, %struct.usb_device_id { i16 3, i16 29556, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 18 }, %struct.usb_device_id zeroinitializer], [240 x i8] zeroinitializer }, align 32
@usbtouch_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&usbtouch->pm_mutex\00", [44 x i8] zeroinitializer }, align 32
@usbtouch_dev_info = internal global { [19 x %struct.usbtouch_device_info], [280 x i8] } { [19 x %struct.usbtouch_device_info] [%struct.usbtouch_device_info { i32 0, i32 2047, i32 0, i32 2047, i32 0, i32 0, i32 16, i8 0, ptr @usbtouch_process_multi, ptr @egalax_get_pkt_len, ptr @egalax_read_data, ptr null, ptr @egalax_init, ptr null }, %struct.usbtouch_device_info { i32 0, i32 4095, i32 0, i32 4095, i32 0, i32 0, i32 8, i8 0, ptr null, ptr null, ptr @panjit_read_data, ptr null, ptr null, ptr null }, %struct.usbtouch_device_info { i32 0, i32 16384, i32 0, i32 16384, i32 0, i32 0, i32 11, i8 0, ptr null, ptr null, ptr @mtouch_read_data, ptr @mtouch_alloc, ptr @mtouch_init, ptr @mtouch_exit }, %struct.usbtouch_device_info { i32 0, i32 4095, i32 0, i32 4095, i32 0, i32 255, i32 8, i8 0, ptr null, ptr null, ptr @itm_read_data, ptr null, ptr null, ptr null }, %struct.usbtouch_device_info { i32 0, i32 2047, i32 0, i32 2047, i32 0, i32 0, i32 8, i8 0, ptr @usbtouch_process_multi, ptr @eturbo_get_pkt_len, ptr @eturbo_read_data, ptr null, ptr null, ptr null }, %struct.usbtouch_device_info { i32 0, i32 4095, i32 0, i32 4095, i32 0, i32 0, i32 4, i8 0, ptr null, ptr null, ptr @gunze_read_data, ptr null, ptr null, ptr null }, %struct.usbtouch_device_info { i32 0, i32 1023, i32 0, i32 1023, i32 0, i32 0, i32 5, i8 0, ptr null, ptr null, ptr @dmc_tsc10_read_data, ptr null, ptr @dmc_tsc10_init, ptr null }, %struct.usbtouch_device_info { i32 0, i32 4095, i32 0, i32 4095, i32 0, i32 0, i32 8, i8 0, ptr null, ptr null, ptr @irtouch_read_data, ptr null, ptr null, ptr null }, %struct.usbtouch_device_info { i32 0, i32 32767, i32 0, i32 32767, i32 0, i32 0, i32 8, i8 0, ptr null, ptr null, ptr @irtouch_read_data, ptr null, ptr null, ptr null }, %struct.usbtouch_device_info { i32 0, i32 4095, i32 0, i32 4095, i32 0, i32 0, i32 8, i8 0, ptr @usbtouch_process_multi, ptr @idealtek_get_pkt_len, ptr @idealtek_read_data, ptr null, ptr null, ptr null }, %struct.usbtouch_device_info { i32 0, i32 32767, i32 0, i32 32767, i32 0, i32 0, i32 7, i8 0, ptr null, ptr null, ptr @general_touch_read_data, ptr null, ptr null, ptr null }, %struct.usbtouch_device_info { i32 0, i32 1023, i32 0, i32 1023, i32 0, i32 0, i32 4, i8 0, ptr null, ptr null, ptr @gotop_read_data, ptr null, ptr null, ptr null }, %struct.usbtouch_device_info { i32 0, i32 4095, i32 0, i32 4095, i32 0, i32 0, i32 4, i8 0, ptr null, ptr null, ptr @jastec_read_data, ptr null, ptr null, ptr null }, %struct.usbtouch_device_info { i32 0, i32 32767, i32 0, i32 32767, i32 0, i32 0, i32 6, i8 0, ptr null, ptr null, ptr @e2i_read_data, ptr null, ptr @e2i_init, ptr null }, %struct.usbtouch_device_info { i32 0, i32 1023, i32 0, i32 1023, i32 0, i32 0, i32 5, i8 1, ptr null, ptr null, ptr @zytronic_read_data, ptr null, ptr null, ptr null }, %struct.usbtouch_device_info { i32 0, i32 4095, i32 0, i32 4095, i32 0, i32 0, i32 5, i8 0, ptr null, ptr null, ptr @tc45usb_read_data, ptr null, ptr null, ptr null }, %struct.usbtouch_device_info { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1024, i8 1, ptr null, ptr null, ptr @nexio_read_data, ptr @nexio_alloc, ptr @nexio_init, ptr @nexio_exit }, %struct.usbtouch_device_info { i32 0, i32 4095, i32 0, i32 4095, i32 0, i32 255, i32 8, i8 0, ptr null, ptr null, ptr @elo_read_data, ptr null, ptr null, ptr null }, %struct.usbtouch_device_info { i32 0, i32 2047, i32 0, i32 2047, i32 0, i32 0, i32 16, i8 0, ptr @usbtouch_process_multi, ptr @etouch_get_pkt_len, ptr @etouch_read_data, ptr null, ptr null, ptr null }], [280 x i8] zeroinitializer }, align 32
@usbtouch_probe.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 1, i8 -87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usbtouch_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/input/touchscreen/usbtouchscreen.c\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s - usb_alloc_urb failed: usbtouch->irq\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"USB Touchscreen %04x:%04x\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input0\00", [24 x i8] zeroinitializer }, align 32
@usbtouch_probe.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 1, i8 -71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s - type->alloc() failed, err: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@usbtouch_probe.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.9, i8 1, i8 -69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s - type->init() failed, err: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@usbtouch_probe.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.10, i8 1, i8 -66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s - input_register_device failed, err: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@usbtouch_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1798, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s - usb_submit_urb failed with result: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usbtouch_probe._entry_ptr = internal global ptr @usbtouch_probe._entry, section ".printk_index", align 4
@mtouch_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mtouch_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@mtouch_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_firmware_rev, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_firmware_rev = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mtouch_firmware_rev_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"firmware_rev\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%1x.%1x\0A\00", [23 x i8] zeroinitializer }, align 32
@mtouch_init.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 0, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mtouch_init\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s - usb_control_msg - MTOUCHUSB_RESET - bytes|err: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@mtouch_init.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.3, ptr @.str.18, i8 0, i8 -118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s - usb_control_msg - MTOUCHUSB_ASYNC_REPORT - bytes|err: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@mtouch_get_fw_revision._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 491, ptr @.str.21, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to read FW rev: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtouch_get_fw_revision\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mtouch_get_fw_revision._entry_ptr = internal global ptr @mtouch_get_fw_revision._entry, section ".printk_index", align 4
@e2i_init.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"e2i_init\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s - usb_control_msg - E2I_RESET - bytes|err: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@zytronic_read_data.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 -40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"zytronic_read_data\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Command response %d\0A\00", [39 x i8] zeroinitializer }, align 32
@zytronic_read_data.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.3, ptr @.str.26, i8 0, i8 -38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: down %d,%d\0A\00", [16 x i8] zeroinitializer }, align 32
@zytronic_read_data.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.3, ptr @.str.27, i8 0, i8 -36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: up %d,%d\0A\00", [18 x i8] zeroinitializer }, align 32
@zytronic_read_data.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.3, ptr @.str.28, i8 0, i8 -35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Unknown return %d\0A\00", [41 x i8] zeroinitializer }, align 32
@nexio_read_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 1067, ptr @.str.21, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to submit ACK URB: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nexio_read_data\00", [16 x i8] zeroinitializer }, align 32
@nexio_read_data._entry_ptr = internal global ptr @nexio_read_data._entry, section ".printk_index", align 4
@nexio_ack_pkt = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\AA\02", [30 x i8] zeroinitializer }, align 32
@nexio_alloc.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.3, ptr @.str.32, i8 0, i8 -21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nexio_alloc\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s - usb_alloc_urb failed: usbtouch->ack\0A\00", [54 x i8] zeroinitializer }, align 32
@nexio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 1020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016Nexio device: %s, firmware version: %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nexio_init\00", [21 x i8] zeroinitializer }, align 32
@nexio_init._entry_ptr = internal global ptr @nexio_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@usbtouch_irq.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.3, ptr @.str.37, i8 1, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usbtouch_irq\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s - urb timed out - was the device unplugged?\0A\00", [48 x i8] zeroinitializer }, align 32
@usbtouch_irq.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.3, ptr @.str.38, i8 1, i8 122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - urb shutting down with status: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@usbtouch_irq.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.3, ptr @.str.39, i8 1, i8 123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - nonzero urb status received: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@usbtouch_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.36, ptr @.str.3, i32 1527, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@usbtouch_irq._entry_ptr = internal global ptr @usbtouch_irq._entry, section ".printk_index", align 4
@usbtouch_disconnect.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 1, i8 -55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usbtouch_disconnect\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s - usbtouch is initialized, cleaning up\0A\00", [53 x i8] zeroinitializer }, align 32
@usbtouch_reset_resume.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.3, ptr @.str.9, i8 1, i8 -110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usbtouch_reset_resume\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967234, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 8, i64 10, i64 128]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 21]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 8, i64 136, i64 152]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 8, i64 58, i64 128, i64 192]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 8, i64 131, i64 132]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 8, i64 131, i64 132]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 8, i64 131, i64 132]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 8, i64 10, i64 128, i64 176]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 8, i64 128, i64 176]
@___asan_gen_.52 = private unnamed_addr constant [8 x i8] c"swap_xy\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 46, i32 13 }
@___asan_gen_.55 = private unnamed_addr constant [11 x i8] c"hwcalib_xy\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 50, i32 13 }
@___asan_gen_.58 = private unnamed_addr constant [16 x i8] c"usbtouch_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1843, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1854, i32 1 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"usbtouch_devices\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 140, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1666, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [18 x i8] c"usbtouch_dev_info\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1159, i32 36 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1699, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1712, i32 28 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1718, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1723, i32 26 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1762, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1773, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1782, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1796, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant [18 x i8] c"mtouch_attr_group\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 469, i32 37 }
@___asan_gen_.118 = private unnamed_addr constant [13 x i8] c"mtouch_attrs\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 464, i32 26 }
@___asan_gen_.121 = private unnamed_addr constant [22 x i8] c"dev_attr_firmware_rev\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 462, i32 8 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 459, i32 38 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 538, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 550, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 490, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 258, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 867, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 874, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 881, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 885, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1067, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [14 x i8] c"nexio_ack_pkt\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 915, i32 22 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 940, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1019, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 912, i32 31 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1502, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1511, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1515, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1526, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1828, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.224 = private constant [46 x i8] c"../drivers/input/touchscreen/usbtouchscreen.c\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1607, i32 4 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_alias260, ptr @__UNIQUE_ID_alias261, ptr @__UNIQUE_ID_alias262, ptr @__UNIQUE_ID_author256, ptr @__UNIQUE_ID_description257, ptr @__UNIQUE_ID_file258, ptr @__UNIQUE_ID_hwcalib_xy235, ptr @__UNIQUE_ID_hwcalib_xytype234, ptr @__UNIQUE_ID_license259, ptr @__UNIQUE_ID_swap_xy233, ptr @__UNIQUE_ID_swap_xytype232, ptr @__exitcall_usbtouch_driver_exit, ptr @__initcall__kmod_usbtouchscreen__255_1854_usbtouch_driver_init6, ptr @__param_hwcalib_xy, ptr @__param_swap_xy, ptr @mtouch_get_fw_revision._entry, ptr @mtouch_get_fw_revision._entry_ptr, ptr @nexio_init._entry, ptr @nexio_init._entry_ptr, ptr @nexio_read_data._entry, ptr @nexio_read_data._entry_ptr, ptr @usbtouch_driver_exit, ptr @usbtouch_irq._entry, ptr @usbtouch_irq._entry_ptr, ptr @usbtouch_probe._entry, ptr @usbtouch_probe._entry_ptr, ptr @swap_xy, ptr @hwcalib_xy, ptr @usbtouch_driver, ptr @.str, ptr @usbtouch_devices, ptr @usbtouch_probe.__key, ptr @.str.1, ptr @usbtouch_dev_info, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @mtouch_attr_group, ptr @mtouch_attrs, ptr @dev_attr_firmware_rev, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @nexio_ack_pkt, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swap_xy to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwcalib_xy to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtouch_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtouch_devices to i32), i32 912, i32 1152, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtouch_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtouch_dev_info to i32), i32 1064, i32 1344, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtouch_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtouch_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtouch_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_firmware_rev to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtouch_get_fw_revision._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nexio_read_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nexio_ack_pkt to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nexio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtouch_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtouch_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @usbtouch_driver, ptr noundef null, ptr noundef nonnull @.str) #14
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usbtouch_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @usb_deregister(ptr noundef nonnull @usbtouch_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtouch_probe(ptr noundef %intf, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %2 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %4 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bNumEndpoints.i, align 4
  %conv.i = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp11.not.i = icmp eq i8 %7, 0
  br i1 %cmp11.not.i, label %if.end.cleanup_crit_edge, label %for.body.lr.ph.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end
  %endpoint.i = getelementptr inbounds %struct.usb_host_interface, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %endpoint.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.usb_host_endpoint, ptr %9, i32 %i.012.i
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 2
  %10 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %tobool.not.i = icmp sgt i8 %11, -1
  br i1 %tobool.not.i, label %for.cond.i, label %usbtouch_get_input_endpoint.exit

usbtouch_get_input_endpoint.exit:                 ; preds = %for.body.i
  %bEndpointAddress.i.i.le = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 2
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %usbtouch_get_input_endpoint.exit.cleanup_crit_edge, label %if.end3

usbtouch_get_input_endpoint.exit.cleanup_crit_edge: ; preds = %usbtouch_get_input_endpoint.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %usbtouch_get_input_endpoint.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 344) #17
  %call5 = tail call ptr @input_allocate_device() #14
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end3.out_free_crit_edge, label %lor.lhs.false

if.end3.out_free_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

lor.lhs.false:                                    ; preds = %if.end3
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %lor.lhs.false.out_free_crit_edge, label %do.body

lor.lhs.false.out_free_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

do.body:                                          ; preds = %lor.lhs.false
  %pm_mutex = getelementptr inbounds %struct.usbtouch_usb, ptr %call7.i.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %pm_mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @usbtouch_probe.__key) #14
  %13 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %driver_info, align 4
  %arrayidx = getelementptr [19 x %struct.usbtouch_device_info], ptr @usbtouch_dev_info, i32 0, i32 %14
  %type11 = getelementptr inbounds %struct.usbtouch_usb, ptr %call7.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %type11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx, ptr %type11, align 8
  %process_pkt = getelementptr [19 x %struct.usbtouch_device_info], ptr @usbtouch_dev_info, i32 0, i32 %14, i32 8
  %16 = ptrtoint ptr %process_pkt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %process_pkt, align 4
  %tobool12.not = icmp eq ptr %17, null
  br i1 %tobool12.not, label %if.then13, label %do.body.if.end15_crit_edge

do.body.if.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %process_pkt to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @usbtouch_process_pkt, ptr %process_pkt, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %do.body.if.end15_crit_edge
  %rept_size = getelementptr [19 x %struct.usbtouch_device_info], ptr @usbtouch_dev_info, i32 0, i32 %14, i32 6
  %19 = ptrtoint ptr %rept_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rept_size, align 4
  %data_size = getelementptr inbounds %struct.usbtouch_usb, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %data_size, align 8
  %get_pkt_len = getelementptr [19 x %struct.usbtouch_device_info], ptr @usbtouch_dev_info, i32 0, i32 %14, i32 9
  %22 = ptrtoint ptr %get_pkt_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_pkt_len, align 4
  %tobool16.not = icmp eq ptr %23, null
  br i1 %tobool16.not, label %if.end15.if.end22_crit_edge, label %if.then17

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 4
  %24 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %wMaxPacketSize.i, align 1
  %26 = and i16 %25, -249
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #14
  %and.i = zext i16 %27 to i32
  %28 = tail call i32 @llvm.smin.i32(i32 %20, i32 %and.i)
  %29 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %data_size, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.end15.if.end22_crit_edge
  %30 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data_size, align 8
  %data_dma = getelementptr inbounds %struct.usbtouch_usb, ptr %call7.i.i, i32 0, i32 1
  %call24 = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i, i32 noundef %31, i32 noundef 3264, ptr noundef %data_dma) #14
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call24, ptr %call7.i.i, align 8
  %tobool26.not = icmp eq ptr %call24, null
  br i1 %tobool26.not, label %if.end22.out_free_crit_edge, label %if.end28

if.end22.out_free_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

if.end28:                                         ; preds = %if.end22
  %33 = ptrtoint ptr %get_pkt_len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %get_pkt_len, align 4
  %tobool30.not = icmp eq ptr %34, null
  br i1 %tobool30.not, label %if.end28.if.end38_crit_edge, label %if.end8.i

if.end28.if.end38_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.end8.i:                                        ; preds = %if.end28
  %35 = ptrtoint ptr %rept_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rept_size, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %36, i32 noundef 3264) #18
  %buffer = getelementptr inbounds %struct.usbtouch_usb, ptr %call7.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call9.i, ptr %buffer, align 4
  %tobool35.not = icmp eq ptr %call9.i, null
  br i1 %tobool35.not, label %if.end8.i.out_free_buffers_crit_edge, label %if.end8.i.if.end38_crit_edge

if.end8.i.if.end38_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.end8.i.out_free_buffers_crit_edge:             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_buffers

if.end38:                                         ; preds = %if.end8.i.if.end38_crit_edge, %if.end28.if.end38_crit_edge
  %call39 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #14
  %irq = getelementptr inbounds %struct.usbtouch_usb, ptr %call7.i.i, i32 0, i32 5
  %38 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call39, ptr %irq, align 4
  %tobool41.not = icmp eq ptr %call39, null
  br i1 %tobool41.not, label %do.body43, label %if.end53

do.body43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtouch_probe.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtouch_probe, %if.then49)) #14
          to label %out_free_buffers [label %if.then49], !srcloc !156

if.then49:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtouch_probe.__UNIQUE_ID_ddebug250, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #14
  br label %out_free_buffers

if.end53:                                         ; preds = %if.end38
  %interface = getelementptr inbounds %struct.usbtouch_usb, ptr %call7.i.i, i32 0, i32 6
  %39 = ptrtoint ptr %interface to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %intf, ptr %interface, align 8
  %input = getelementptr inbounds %struct.usbtouch_usb, ptr %call7.i.i, i32 0, i32 7
  %40 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call5, ptr %input, align 4
  %manufacturer = getelementptr i8, ptr %1, i32 1108
  %41 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %manufacturer, align 4
  %tobool54.not = icmp eq ptr %42, null
  br i1 %tobool54.not, label %if.end53.if.end58_crit_edge, label %if.then55

if.end53.if.end58_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.usbtouch_usb, ptr %call7.i.i, i32 0, i32 11
  %call57 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull %42, i32 noundef 128) #14
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.end53.if.end58_crit_edge
  %product = getelementptr i8, ptr %1, i32 1104
  %43 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %product, align 8
  %tobool59.not = icmp eq ptr %44, null
  br i1 %tobool59.not, label %if.end58.if.end72_crit_edge, label %if.then60

if.end58.if.end72_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72

if.then60:                                        ; preds = %if.end58
  %45 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %manufacturer, align 4
  %tobool62.not = icmp eq ptr %46, null
  br i1 %tobool62.not, label %if.then60.if.end67_crit_edge, label %if.then63

if.then60.if.end67_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

if.then63:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #16
  %name64 = getelementptr inbounds %struct.usbtouch_usb, ptr %call7.i.i, i32 0, i32 11
  %call66 = tail call i32 @strlcat(ptr noundef %name64, ptr noundef nonnull @.str.5, i32 noundef 128) #14
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %if.then60.if.end67_crit_edge
  %name68 = getelementptr inbounds %struct.usbtouch_usb, ptr %call7.i.i, i32 0, i32 11
  %47 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %product, align 8
  %call71 = tail call i32 @strlcat(ptr noundef %name68, ptr noundef %48, i32 noundef 128) #14
  br label %if.end72

if.end72:                                         ; preds = %if.end67, %if.end58.if.end72_crit_edge
  %name73 = getelementptr inbounds %struct.usbtouch_usb, ptr %call7.i.i, i32 0, i32 11
  %49 = ptrtoint ptr %name73 to i32
  call void @__asan_load1_noabort(i32 %49)
  %char0 = load i8, ptr %name73, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool76.not = icmp eq i8 %char0, 0
  br i1 %tobool76.not, label %if.then77, label %if.end72.if.end83_crit_edge

if.end72.if.end83_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end83

if.then77:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #16
  %idVendor = getelementptr i8, ptr %1, i32 936
  %50 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %idVendor, align 8
  %52 = tail call i16 @llvm.bswap.i16(i16 %51)
  %conv = zext i16 %52 to i32
  %idProduct = getelementptr i8, ptr %1, i32 938
  %53 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %idProduct, align 2
  %55 = tail call i16 @llvm.bswap.i16(i16 %54)
  %conv81 = zext i16 %55 to i32
  %call82 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name73, i32 noundef 128, ptr noundef nonnull @.str.6, i32 noundef %conv, i32 noundef %conv81)
  br label %if.end83

if.end83:                                         ; preds = %if.then77, %if.end72.if.end83_crit_edge
  %phys = getelementptr inbounds %struct.usbtouch_usb, ptr %call7.i.i, i32 0, i32 12
  %bus.i = getelementptr i8, ptr %1, i32 -64
  %56 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr i8, ptr %1, i32 -124
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 64, ptr noundef nonnull @.str.35, ptr noundef %59, ptr noundef %devpath.i) #14
  %call88 = tail call i32 @strlcat(ptr noundef %phys, ptr noundef nonnull @.str.7, i32 noundef 64) #14
  %60 = ptrtoint ptr %call5 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %name73, ptr %call5, align 8
  %phys94 = getelementptr inbounds %struct.input_dev, ptr %call5, i32 0, i32 1
  %61 = ptrtoint ptr %phys94 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %phys, ptr %phys94, align 4
  %id95 = getelementptr inbounds %struct.input_dev, ptr %call5, i32 0, i32 3
  %62 = ptrtoint ptr %id95 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 3, ptr %id95, align 2
  %idVendor.i = getelementptr i8, ptr %1, i32 936
  %63 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %idVendor.i, align 8
  %65 = tail call i16 @llvm.bswap.i16(i16 %64) #14
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %call5, i32 0, i32 3, i32 1
  %66 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %vendor.i, align 2
  %idProduct.i = getelementptr i8, ptr %1, i32 938
  %67 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %idProduct.i, align 2
  %69 = tail call i16 @llvm.bswap.i16(i16 %68) #14
  %product.i = getelementptr inbounds %struct.input_dev, ptr %call5, i32 0, i32 3, i32 2
  %70 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %product.i, align 2
  %bcdDevice.i = getelementptr i8, ptr %1, i32 940
  %71 = ptrtoint ptr %bcdDevice.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %bcdDevice.i, align 4
  %73 = tail call i16 @llvm.bswap.i16(i16 %72) #14
  %version.i = getelementptr inbounds %struct.input_dev, ptr %call5, i32 0, i32 3, i32 3
  %74 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %version.i, align 2
  %dev96 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %parent = getelementptr inbounds %struct.input_dev, ptr %call5, i32 0, i32 40, i32 1
  %75 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %dev96, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call5, i32 0, i32 40, i32 8
  %76 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call5, i32 0, i32 31
  %77 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @usbtouch_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call5, i32 0, i32 32
  %78 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @usbtouch_close, ptr %close, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call5, i32 0, i32 5
  %79 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 10, ptr %evbit, align 8
  %arrayidx99 = getelementptr %struct.input_dev, ptr %call5, i32 0, i32 6, i32 10
  %80 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1024, ptr %arrayidx99, align 4
  %81 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx, align 4
  %max_xc = getelementptr [19 x %struct.usbtouch_device_info], ptr @usbtouch_dev_info, i32 0, i32 %14, i32 1
  %83 = ptrtoint ptr %max_xc to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %max_xc, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call5, i32 noundef 0, i32 noundef %82, i32 noundef %84, i32 noundef 0, i32 noundef 0) #14
  %min_yc = getelementptr [19 x %struct.usbtouch_device_info], ptr @usbtouch_dev_info, i32 0, i32 %14, i32 2
  %85 = ptrtoint ptr %min_yc to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %min_yc, align 4
  %max_yc = getelementptr [19 x %struct.usbtouch_device_info], ptr @usbtouch_dev_info, i32 0, i32 %14, i32 3
  %87 = ptrtoint ptr %max_yc to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %max_yc, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call5, i32 noundef 1, i32 noundef %86, i32 noundef %88, i32 noundef 0, i32 noundef 0) #14
  %max_press = getelementptr [19 x %struct.usbtouch_device_info], ptr @usbtouch_dev_info, i32 0, i32 %14, i32 5
  %89 = ptrtoint ptr %max_press to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %max_press, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool100.not = icmp eq i32 %90, 0
  br i1 %tobool100.not, label %if.end83.if.end103_crit_edge, label %if.then101

if.end83.if.end103_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end103

if.then101:                                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #16
  %min_press = getelementptr [19 x %struct.usbtouch_device_info], ptr @usbtouch_dev_info, i32 0, i32 %14, i32 4
  %91 = ptrtoint ptr %min_press to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %min_press, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call5, i32 noundef 24, i32 noundef %92, i32 noundef %90, i32 noundef 0, i32 noundef 0) #14
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %if.end83.if.end103_crit_edge
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 3
  %93 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %bmAttributes.i, align 1
  %95 = and i8 %94, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %95)
  %cmp105 = icmp eq i8 %95, 3
  %96 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %irq, align 4
  %98 = ptrtoint ptr %bEndpointAddress.i.i.le to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %bEndpointAddress.i.i.le, align 1
  %conv109 = zext i8 %99 to i32
  %100 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %101, 8
  %shl1.i = shl nuw nsw i32 %conv109, 15
  %or.i = or i32 %shl1.i, %shl.i
  br i1 %cmp105, label %if.then107, label %if.else

if.then107:                                       ; preds = %if.end103
  %or111 = or i32 %or.i, 1073741952
  %102 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %call7.i.i, align 8
  %104 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %data_size, align 8
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 5
  %106 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %bInterval, align 1
  %conv114 = zext i8 %107 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %97, i32 0, i32 8
  %108 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %add.ptr.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %97, i32 0, i32 10
  %109 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %or111, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %97, i32 0, i32 14
  %110 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %103, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %97, i32 0, i32 19
  %111 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %105, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %97, i32 0, i32 28
  %112 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @usbtouch_irq, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %97, i32 0, i32 27
  %113 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %speed.i = getelementptr i8, ptr %1, i32 -100
  %114 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %115)
  %cmp.i366 = icmp eq i32 %115, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %115)
  %cmp6.i = icmp ugt i32 %115, 4
  %or.cond.i = or i1 %cmp.i366, %cmp6.i
  br i1 %or.cond.i, label %if.then.i368, label %if.then107.usb_fill_int_urb.exit_crit_edge

if.then107.usb_fill_int_urb.exit_crit_edge:       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #16
  br label %usb_fill_int_urb.exit

if.then.i368:                                     ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #16
  %116 = tail call i32 @llvm.smax.i32(i32 %conv114, i32 1) #14
  %117 = tail call i32 @llvm.umin.i32(i32 %116, i32 16) #14
  %sub.i = add nsw i32 %117, -1
  %shl.i367 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i368, %if.then107.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i367, %if.then.i368 ], [ %conv114, %if.then107.usb_fill_int_urb.exit_crit_edge ]
  %118 = getelementptr inbounds %struct.urb, ptr %97, i32 0, i32 25
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %interval.sink.i, ptr %118, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %97, i32 0, i32 23
  %120 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -1, ptr %start_frame.i, align 4
  br label %if.end123

if.else:                                          ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #16
  %or120 = or i32 %or.i, -1073741696
  %121 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %call7.i.i, align 8
  %123 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %data_size, align 8
  %dev1.i373 = getelementptr inbounds %struct.urb, ptr %97, i32 0, i32 8
  %125 = ptrtoint ptr %dev1.i373 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %add.ptr.i, ptr %dev1.i373, align 4
  %pipe2.i374 = getelementptr inbounds %struct.urb, ptr %97, i32 0, i32 10
  %126 = ptrtoint ptr %pipe2.i374 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %or120, ptr %pipe2.i374, align 4
  %transfer_buffer3.i375 = getelementptr inbounds %struct.urb, ptr %97, i32 0, i32 14
  %127 = ptrtoint ptr %transfer_buffer3.i375 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %122, ptr %transfer_buffer3.i375, align 4
  %transfer_buffer_length.i376 = getelementptr inbounds %struct.urb, ptr %97, i32 0, i32 19
  %128 = ptrtoint ptr %transfer_buffer_length.i376 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %124, ptr %transfer_buffer_length.i376, align 4
  %complete.i377 = getelementptr inbounds %struct.urb, ptr %97, i32 0, i32 28
  %129 = ptrtoint ptr %complete.i377 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @usbtouch_irq, ptr %complete.i377, align 4
  %context4.i378 = getelementptr inbounds %struct.urb, ptr %97, i32 0, i32 27
  %130 = ptrtoint ptr %context4.i378 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call7.i.i, ptr %context4.i378, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.else, %usb_fill_int_urb.exit
  %131 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %irq, align 4
  %dev125 = getelementptr inbounds %struct.urb, ptr %132, i32 0, i32 8
  %133 = ptrtoint ptr %dev125 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %add.ptr.i, ptr %dev125, align 4
  %134 = ptrtoint ptr %data_dma to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %data_dma, align 4
  %136 = load ptr, ptr %irq, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %136, i32 0, i32 15
  %137 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %135, ptr %transfer_dma, align 4
  %138 = load ptr, ptr %irq, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %138, i32 0, i32 13
  %139 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %transfer_flags, align 4
  %or129 = or i32 %140, 4
  store i32 %or129, ptr %transfer_flags, align 4
  %alloc = getelementptr [19 x %struct.usbtouch_device_info], ptr @usbtouch_dev_info, i32 0, i32 %14, i32 11
  %141 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %alloc, align 4
  %tobool130.not = icmp eq ptr %142, null
  br i1 %tobool130.not, label %if.end123.if.end154_crit_edge, label %if.then131

if.end123.if.end154_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end154

if.then131:                                       ; preds = %if.end123
  %call133 = tail call i32 %142(ptr noundef nonnull %call7.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.then131.if.end154_crit_edge, label %do.body136

if.then131.if.end154_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end154

do.body136:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtouch_probe.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtouch_probe, %if.then148)) #14
          to label %out_free_urb [label %if.then148], !srcloc !156

if.then148:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtouch_probe.__UNIQUE_ID_ddebug251, ptr noundef %dev96, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef %call133) #14
  br label %out_free_urb

if.end154:                                        ; preds = %if.then131.if.end154_crit_edge, %if.end123.if.end154_crit_edge
  %init = getelementptr [19 x %struct.usbtouch_device_info], ptr @usbtouch_dev_info, i32 0, i32 %14, i32 12
  %143 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %init, align 4
  %tobool155.not = icmp eq ptr %144, null
  br i1 %tobool155.not, label %if.end154.if.end179_crit_edge, label %if.then156

if.end154.if.end179_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end179

if.then156:                                       ; preds = %if.end154
  %call158 = tail call i32 %144(ptr noundef nonnull %call7.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.then156.if.end179_crit_edge, label %do.body161

if.then156.if.end179_crit_edge:                   ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end179

do.body161:                                       ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtouch_probe.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtouch_probe, %if.then173)) #14
          to label %out_do_exit [label %if.then173], !srcloc !156

if.then173:                                       ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtouch_probe.__UNIQUE_ID_ddebug252, ptr noundef %dev96, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef %call158) #14
  br label %out_do_exit

if.end179:                                        ; preds = %if.then156.if.end179_crit_edge, %if.end154.if.end179_crit_edge
  %145 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %input, align 4
  %call181 = tail call i32 @input_register_device(ptr noundef %146) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %if.end201, label %do.body184

do.body184:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtouch_probe.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtouch_probe, %if.then196)) #14
          to label %out_do_exit [label %if.then196], !srcloc !156

if.then196:                                       ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtouch_probe.__UNIQUE_ID_ddebug253, ptr noundef %dev96, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, i32 noundef %call181) #14
  br label %out_do_exit

if.end201:                                        ; preds = %if.end179
  %driver_data.i.i379 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %147 = ptrtoint ptr %driver_data.i.i379 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call7.i.i, ptr %driver_data.i.i379, align 4
  %148 = ptrtoint ptr %type11 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %type11, align 8
  %irq_always = getelementptr inbounds %struct.usbtouch_device_info, ptr %149, i32 0, i32 7
  %150 = ptrtoint ptr %irq_always to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %irq_always, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool203.not = icmp eq i8 %151, 0
  br i1 %tobool203.not, label %if.end201.cleanup_crit_edge, label %if.then204

if.end201.cleanup_crit_edge:                      ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then204:                                       ; preds = %if.end201
  %call205 = tail call i32 @usb_autopm_get_interface(ptr noundef %intf) #14
  %152 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %irq, align 4
  %call207 = tail call i32 @usb_submit_urb(ptr noundef %153, i32 noundef 3264) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %if.then204.cleanup_crit_edge, label %if.then209

if.then204.cleanup_crit_edge:                     ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then209:                                       ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @usb_autopm_put_interface(ptr noundef %intf) #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev96, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef %call207) #19
  tail call void @input_unregister_device(ptr noundef nonnull %call5) #14
  br label %out_do_exit

out_do_exit:                                      ; preds = %if.then209, %if.then196, %do.body184, %if.then173, %do.body161
  %err.0 = phi i32 [ %call158, %if.then173 ], [ %call181, %if.then196 ], [ %call207, %if.then209 ], [ %call158, %do.body161 ], [ %call181, %do.body184 ]
  %input_dev.0 = phi ptr [ %call5, %if.then173 ], [ %call5, %if.then196 ], [ null, %if.then209 ], [ %call5, %do.body161 ], [ %call5, %do.body184 ]
  %exit = getelementptr [19 x %struct.usbtouch_device_info], ptr @usbtouch_dev_info, i32 0, i32 %14, i32 13
  %154 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %exit, align 4
  %tobool216.not = icmp eq ptr %155, null
  br i1 %tobool216.not, label %out_do_exit.out_free_urb_crit_edge, label %if.then217

out_do_exit.out_free_urb_crit_edge:               ; preds = %out_do_exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_urb

if.then217:                                       ; preds = %out_do_exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %155(ptr noundef nonnull %call7.i.i) #14
  br label %out_free_urb

out_free_urb:                                     ; preds = %if.then217, %out_do_exit.out_free_urb_crit_edge, %if.then148, %do.body136
  %err.1 = phi i32 [ %call133, %if.then148 ], [ %err.0, %if.then217 ], [ %err.0, %out_do_exit.out_free_urb_crit_edge ], [ %call133, %do.body136 ]
  %input_dev.1 = phi ptr [ %call5, %if.then148 ], [ %input_dev.0, %if.then217 ], [ %input_dev.0, %out_do_exit.out_free_urb_crit_edge ], [ %call5, %do.body136 ]
  %156 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %irq, align 4
  tail call void @usb_free_urb(ptr noundef %157) #14
  br label %out_free_buffers

out_free_buffers:                                 ; preds = %out_free_urb, %if.then49, %do.body43, %if.end8.i.out_free_buffers_crit_edge
  %err.2 = phi i32 [ %err.1, %out_free_urb ], [ -12, %if.then49 ], [ -12, %if.end8.i.out_free_buffers_crit_edge ], [ -12, %do.body43 ]
  %input_dev.2 = phi ptr [ %input_dev.1, %out_free_urb ], [ %call5, %if.then49 ], [ %call5, %if.end8.i.out_free_buffers_crit_edge ], [ %call5, %do.body43 ]
  %158 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %data_size, align 8
  %160 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %call7.i.i, align 8
  %162 = ptrtoint ptr %data_dma to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %data_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %add.ptr.i, i32 noundef %159, ptr noundef %161, i32 noundef %163) #14
  %buffer.i = getelementptr inbounds %struct.usbtouch_usb, ptr %call7.i.i, i32 0, i32 3
  %164 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %buffer.i, align 4
  tail call void @kfree(ptr noundef %165) #14
  br label %out_free

out_free:                                         ; preds = %out_free_buffers, %if.end22.out_free_crit_edge, %lor.lhs.false.out_free_crit_edge, %if.end3.out_free_crit_edge
  %err.3 = phi i32 [ %err.2, %out_free_buffers ], [ -12, %if.end22.out_free_crit_edge ], [ -12, %lor.lhs.false.out_free_crit_edge ], [ -12, %if.end3.out_free_crit_edge ]
  %input_dev.3 = phi ptr [ %input_dev.2, %out_free_buffers ], [ %call5, %if.end22.out_free_crit_edge ], [ null, %lor.lhs.false.out_free_crit_edge ], [ %call5, %if.end3.out_free_crit_edge ]
  tail call void @input_free_device(ptr noundef %input_dev.3) #14
  tail call void @kfree(ptr noundef %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.then204.cleanup_crit_edge, %if.end201.cleanup_crit_edge, %usbtouch_get_input_endpoint.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %out_free ], [ -19, %entry.cleanup_crit_edge ], [ -6, %usbtouch_get_input_endpoint.exit.cleanup_crit_edge ], [ 0, %if.then204.cleanup_crit_edge ], [ 0, %if.end201.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ], [ -6, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbtouch_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtouch_disconnect.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtouch_disconnect, %if.then5)) #14
          to label %do.end [label %if.then5], !srcloc !156

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtouch_disconnect.__UNIQUE_ID_ddebug254, ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40) #14
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  %input = getelementptr inbounds %struct.usbtouch_usb, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %input, align 4
  tail call void @input_unregister_device(ptr noundef %4) #14
  %irq = getelementptr inbounds %struct.usbtouch_usb, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %irq, align 4
  tail call void @usb_free_urb(ptr noundef %6) #14
  %type = getelementptr inbounds %struct.usbtouch_usb, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %type, align 4
  %exit = getelementptr inbounds %struct.usbtouch_device_info, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %exit, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %do.end.if.end11_crit_edge, label %if.then8

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %10(ptr noundef nonnull %1) #14
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %do.end.if.end11_crit_edge
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %12, i32 -128
  %data_size.i = getelementptr inbounds %struct.usbtouch_usb, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_size.i, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %data_dma.i = getelementptr inbounds %struct.usbtouch_usb, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %data_dma.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %add.ptr.i, i32 noundef %14, ptr noundef %16, i32 noundef %18) #14
  %buffer.i = getelementptr inbounds %struct.usbtouch_usb, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffer.i, align 4
  tail call void @kfree(ptr noundef %20) #14
  tail call void @kfree(ptr noundef nonnull %1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtouch_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.usbtouch_usb, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtouch_resume(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pm_mutex = getelementptr inbounds %struct.usbtouch_usb, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %pm_mutex, i32 noundef 0) #14
  %is_open = getelementptr inbounds %struct.usbtouch_usb, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %is_open to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_open, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.usbtouch_usb, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type, align 4
  %irq_always = getelementptr inbounds %struct.usbtouch_device_info, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %irq_always to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %irq_always, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %irq = getelementptr inbounds %struct.usbtouch_usb, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq, align 4
  %call2 = tail call i32 @usb_submit_urb(ptr noundef %9, i32 noundef 3072) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %result.0 = phi i32 [ %call2, %if.then ], [ 0, %lor.lhs.false.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %pm_mutex) #14
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtouch_reset_resume(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %type = getelementptr inbounds %struct.usbtouch_usb, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %init = getelementptr inbounds %struct.usbtouch_device_info, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then:                                          ; preds = %entry
  %call3 = tail call i32 %5(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.if.end12_crit_edge, label %do.body

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtouch_reset_resume.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtouch_reset_resume, %if.then10)) #14
          to label %cleanup [label %if.then10], !srcloc !156

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtouch_reset_resume.__UNIQUE_ID_ddebug247, ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.42, i32 noundef %call3) #14
  br label %cleanup

if.end12:                                         ; preds = %if.then.if.end12_crit_edge, %entry.if.end12_crit_edge
  %pm_mutex = getelementptr inbounds %struct.usbtouch_usb, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %pm_mutex, i32 noundef 0) #14
  %is_open = getelementptr inbounds %struct.usbtouch_usb, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %is_open to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_open, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool13.not = icmp eq i8 %7, 0
  br i1 %tobool13.not, label %if.end12.if.end16_crit_edge, label %if.then14

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %irq = getelementptr inbounds %struct.usbtouch_usb, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq, align 4
  %call15 = tail call i32 @usb_submit_urb(ptr noundef %9, i32 noundef 3072) #14
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  %err.1 = phi i32 [ %call15, %if.then14 ], [ 0, %if.end12.if.end16_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %pm_mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then10, %do.body
  %retval.0 = phi i32 [ %err.1, %if.end16 ], [ %call3, %if.then10 ], [ %call3, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbtouch_process_pkt(ptr noundef %usbtouch, ptr noundef %pkt, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %type1 = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 8
  %0 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type1, align 4
  %read_data = getelementptr inbounds %struct.usbtouch_device_info, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %read_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_data, align 4
  %call = tail call i32 %3(ptr noundef %usbtouch, ptr noundef %pkt) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %input = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 7
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input, align 4
  %touch = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 16
  %6 = ptrtoint ptr %touch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %touch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i = icmp ne i32 %7, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 330, i32 noundef %lnot.ext.i) #14
  %8 = load i8, ptr @swap_xy, align 1, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not = icmp eq i8 %8, 0
  %9 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %input, align 4
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %y = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 15
  %11 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %y, align 4
  tail call void @input_event(ptr noundef %10, i32 noundef 3, i32 noundef 0, i32 noundef %12) #14
  %x = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 14
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %x7 = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 14
  %13 = ptrtoint ptr %x7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %x7, align 4
  tail call void @input_event(ptr noundef %10, i32 noundef 3, i32 noundef 0, i32 noundef %14) #14
  %y9 = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 15
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then3
  %y9.sink = phi ptr [ %y9, %if.else ], [ %x, %if.then3 ]
  %15 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %15)
  %.sink = load ptr, ptr %input, align 4
  %16 = ptrtoint ptr %y9.sink to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %y9.sink, align 4
  tail call void @input_event(ptr noundef %.sink, i32 noundef 3, i32 noundef 1, i32 noundef %17) #14
  %max_press = getelementptr inbounds %struct.usbtouch_device_info, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %max_press to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_press, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool11.not = icmp eq i32 %19, 0
  br i1 %tobool11.not, label %if.end10.if.end14_crit_edge, label %if.then12

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %input, align 4
  %press = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 17
  %22 = ptrtoint ptr %press to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %press, align 4
  tail call void @input_event(ptr noundef %21, i32 noundef 3, i32 noundef 24, i32 noundef %23) #14
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge
  %24 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %25, i32 noundef 0, i32 noundef 0, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtouch_open(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %interface = getelementptr inbounds %struct.usbtouch_usb, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interface, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 -128
  %irq = getelementptr inbounds %struct.usbtouch_usb, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq, align 4
  %dev = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr.i, ptr %dev, align 4
  %9 = load ptr, ptr %interface, align 4
  %call3 = tail call i32 @usb_autopm_get_interface(ptr noundef %9) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %pm_mutex = getelementptr inbounds %struct.usbtouch_usb, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %pm_mutex, i32 noundef 0) #14
  %type = getelementptr inbounds %struct.usbtouch_usb, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %type, align 4
  %irq_always = getelementptr inbounds %struct.usbtouch_device_info, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %irq_always to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %irq_always, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.not = icmp eq i8 %13, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then5:                                         ; preds = %if.end
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq, align 4
  %call7 = tail call i32 @usb_submit_urb(ptr noundef %15, i32 noundef 3264) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then5.if.end11_crit_edge, label %if.then5.out_put_crit_edge

if.then5.out_put_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_put

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.end11:                                         ; preds = %if.then5.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %16 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %interface, align 4
  %needs_remote_wakeup = getelementptr inbounds %struct.usb_interface, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %needs_remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %needs_remote_wakeup, align 8
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %needs_remote_wakeup, align 8
  %is_open = getelementptr inbounds %struct.usbtouch_usb, ptr %1, i32 0, i32 10
  %19 = ptrtoint ptr %is_open to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %is_open, align 4
  br label %out_put

out_put:                                          ; preds = %if.end11, %if.then5.out_put_crit_edge
  %r.0 = phi i32 [ 0, %if.end11 ], [ -5, %if.then5.out_put_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %pm_mutex) #14
  %20 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %interface, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %21) #14
  br label %out

out:                                              ; preds = %out_put, %entry.out_crit_edge
  %r.1 = phi i32 [ -5, %entry.out_crit_edge ], [ %r.0, %out_put ]
  ret i32 %r.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbtouch_close(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pm_mutex = getelementptr inbounds %struct.usbtouch_usb, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %pm_mutex, i32 noundef 0) #14
  %type = getelementptr inbounds %struct.usbtouch_usb, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %irq_always = getelementptr inbounds %struct.usbtouch_device_info, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %irq_always to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %irq_always, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %irq = getelementptr inbounds %struct.usbtouch_usb, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %is_open = getelementptr inbounds %struct.usbtouch_usb, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %is_open to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %is_open, align 4
  tail call void @mutex_unlock(ptr noundef %pm_mutex) #14
  %interface = getelementptr inbounds %struct.usbtouch_usb, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %interface, align 4
  %call2 = tail call i32 @usb_autopm_get_interface(ptr noundef %10) #14
  %11 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %interface, align 4
  %needs_remote_wakeup = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %needs_remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %needs_remote_wakeup, align 8
  %bf.clear = and i8 %bf.load, -17
  store i8 %bf.clear, ptr %needs_remote_wakeup, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool4.not = icmp eq i32 %call2, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %interface, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %15) #14
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbtouch_irq(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %interface = getelementptr inbounds %struct.usbtouch_usb, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interface, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.body22 [
    i32 0, label %sw.epilog
    i32 -62, label %do.body
    i32 -104, label %entry.do.body5_crit_edge
    i32 -2, label %entry.do.body5_crit_edge72
    i32 -108, label %entry.do.body5_crit_edge73
    i32 -32, label %entry.do.body5_crit_edge74
  ]

entry.do.body5_crit_edge74:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body5

entry.do.body5_crit_edge73:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body5

entry.do.body5_crit_edge72:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body5

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtouch_irq.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtouch_irq, %if.then)) #14
          to label %cleanup [label %if.then], !srcloc !156

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtouch_irq.__UNIQUE_ID_ddebug244, ptr noundef %dev1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36) #14
  br label %cleanup

do.body5:                                         ; preds = %entry.do.body5_crit_edge, %entry.do.body5_crit_edge72, %entry.do.body5_crit_edge73, %entry.do.body5_crit_edge74
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtouch_irq.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtouch_irq, %if.then17)) #14
          to label %cleanup [label %if.then17], !srcloc !156

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtouch_irq.__UNIQUE_ID_ddebug245, ptr noundef %dev1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, i32 noundef %8) #14
  br label %cleanup

do.body22:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtouch_irq.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtouch_irq, %if.then34)) #14
          to label %exit [label %if.then34], !srcloc !156

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtouch_irq.__UNIQUE_ID_ddebug246, ptr noundef %dev1, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.36, i32 noundef %10) #14
  br label %exit

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %type = getelementptr inbounds %struct.usbtouch_usb, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %type, align 4
  %process_pkt = getelementptr inbounds %struct.usbtouch_device_info, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %process_pkt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %process_pkt, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %17 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %actual_length, align 4
  tail call void %14(ptr noundef %1, ptr noundef %16, i32 noundef %18) #14
  br label %exit

exit:                                             ; preds = %sw.epilog, %if.then34, %do.body22
  %19 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %interface, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %20, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent.i, align 8
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #14
  %last_busy.i.i = getelementptr i8, ptr %22, i32 704
  %23 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %call41 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %exit.cleanup_crit_edge, label %do.end46

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end46:                                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.36, i32 noundef %call41) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %exit.cleanup_crit_edge, %if.then17, %do.body5, %if.then, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbtouch_process_multi(ptr noundef %usbtouch, ptr noundef %pkt, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_len1 = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 4
  %0 = ptrtoint ptr %buf_len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buf_len1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end65_crit_edge, label %if.then, !prof !158

entry.if.end65_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 8
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %get_pkt_len = getelementptr inbounds %struct.usbtouch_device_info, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %get_pkt_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_pkt_len, align 4
  %buffer4 = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 3
  %6 = ptrtoint ptr %buffer4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer4, align 4
  %call = tail call i32 %5(ptr noundef %7, i32 noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.then.cleanup103.sink.split_crit_edge, label %if.end, !prof !159

if.then.cleanup103.sink.split_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup103.sink.split

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then22, label %if.end.if.end49_crit_edge, !prof !159

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.then22:                                        ; preds = %if.end
  %sub = sub i32 0, %call
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %len)
  %cmp23 = icmp sgt i32 %sub, %len
  br i1 %cmp23, label %if.then30, label %if.then22.if.end31_crit_edge, !prof !159

if.then22.if.end31_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then30:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.then22.if.end31_crit_edge
  %append.0 = phi i32 [ %len, %if.then30 ], [ %sub, %if.then22.if.end31_crit_edge ]
  %8 = ptrtoint ptr %buf_len1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf_len1, align 4
  %add = add i32 %9, %append.0
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %type, align 4
  %rept_size = getelementptr inbounds %struct.usbtouch_device_info, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %rept_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rept_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %13)
  %cmp34.not = icmp slt i32 %add, %13
  br i1 %cmp34.not, label %if.end36, label %if.end31.cleanup103.sink.split_crit_edge

if.end31.cleanup103.sink.split_crit_edge:         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup103.sink.split

if.end36:                                         ; preds = %if.end31
  %14 = ptrtoint ptr %buffer4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer4, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %9
  %16 = call ptr @memcpy(ptr %add.ptr, ptr %pkt, i32 %append.0)
  %17 = ptrtoint ptr %buf_len1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buf_len1, align 4
  %add40 = add i32 %18, %append.0
  store i32 %add40, ptr %buf_len1, align 4
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %type, align 4
  %get_pkt_len42 = getelementptr inbounds %struct.usbtouch_device_info, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %get_pkt_len42 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_pkt_len42, align 4
  %23 = load ptr, ptr %buffer4, align 4
  %call45 = tail call i32 %22(ptr noundef %23, i32 noundef %add40) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end36.cleanup103_crit_edge, label %if.end36.if.end49_crit_edge

if.end36.if.end49_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.end36.cleanup103_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup103

if.end49:                                         ; preds = %if.end36.if.end49_crit_edge, %if.end.if.end49_crit_edge
  %pkt_len.1 = phi i32 [ %call, %if.end.if.end49_crit_edge ], [ %call45, %if.end36.if.end49_crit_edge ]
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %type, align 4
  %rept_size55 = getelementptr inbounds %struct.usbtouch_device_info, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %rept_size55 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rept_size55, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %pkt_len.1, i32 %27)
  %cmp56.not = icmp slt i32 %pkt_len.1, %27
  br i1 %cmp56.not, label %if.end58, label %if.end49.cleanup103.sink.split_crit_edge

if.end49.cleanup103.sink.split_crit_edge:         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup103.sink.split

if.end58:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %buf_len1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %buf_len1, align 4
  %sub51 = sub i32 %pkt_len.1, %29
  %30 = ptrtoint ptr %buffer4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buffer4, align 4
  %add.ptr61 = getelementptr i8, ptr %31, i32 %29
  %32 = call ptr @memcpy(ptr %add.ptr61, ptr %pkt, i32 %sub51)
  %33 = load ptr, ptr %buffer4, align 4
  tail call void @usbtouch_process_pkt(ptr noundef %usbtouch, ptr noundef %33, i32 noundef %pkt_len.1)
  %add.ptr63 = getelementptr i8, ptr %pkt, i32 %sub51
  %sub64 = sub i32 %len, %sub51
  br label %if.end65

if.end65:                                         ; preds = %if.end58, %entry.if.end65_crit_edge
  %buffer.0 = phi ptr [ %add.ptr63, %if.end58 ], [ %pkt, %entry.if.end65_crit_edge ]
  %buf_len.0 = phi i32 [ %sub64, %if.end58 ], [ %len, %entry.if.end65_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_len.0)
  %cmp66173 = icmp sgt i32 %buf_len.0, 0
  br i1 %cmp66173, label %while.body.lr.ph, label %if.end65.cleanup103.sink.split_crit_edge

if.end65.cleanup103.sink.split_crit_edge:         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup103.sink.split

while.body.lr.ph:                                 ; preds = %if.end65
  %type67 = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %pos.0174 = phi i32 [ 0, %while.body.lr.ph ], [ %pos.0.be, %while.cond.backedge.while.body_crit_edge ]
  %34 = ptrtoint ptr %type67 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %type67, align 4
  %get_pkt_len68 = getelementptr inbounds %struct.usbtouch_device_info, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %get_pkt_len68 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %get_pkt_len68, align 4
  %add.ptr69 = getelementptr i8, ptr %buffer.0, i32 %pos.0174
  %sub70 = sub i32 %buf_len.0, %pos.0174
  %call71 = tail call i32 %37(ptr noundef %add.ptr69, i32 noundef %sub70) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then81, label %if.end82, !prof !159

if.then81:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %inc = add nsw i32 %pos.0174, 1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then92, %if.then81
  %pos.0.be = phi i32 [ %inc, %if.then81 ], [ %add101, %if.then92 ]
  %cmp66 = icmp sgt i32 %buf_len.0, %pos.0.be
  br i1 %cmp66, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.cleanup103.sink.split_crit_edge

while.cond.backedge.cleanup103.sink.split_crit_edge: ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup103.sink.split

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end82:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp83 = icmp sgt i32 %call71, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call71, i32 %sub70)
  %cmp85 = icmp sle i32 %call71, %sub70
  %spec.select = and i1 %cmp83, %cmp85
  br i1 %spec.select, label %if.then92, label %if.else94, !prof !158

if.then92:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @usbtouch_process_pkt(ptr noundef %usbtouch, ptr noundef %add.ptr69, i32 noundef %call71)
  %add101 = add i32 %call71, %pos.0174
  br label %while.cond.backedge

if.else94:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #16
  %buffer95 = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 3
  %38 = ptrtoint ptr %buffer95 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buffer95, align 4
  %40 = call ptr @memcpy(ptr %39, ptr %add.ptr69, i32 %sub70)
  br label %cleanup103.sink.split

cleanup103.sink.split:                            ; preds = %if.else94, %while.cond.backedge.cleanup103.sink.split_crit_edge, %if.end65.cleanup103.sink.split_crit_edge, %if.end49.cleanup103.sink.split_crit_edge, %if.end31.cleanup103.sink.split_crit_edge, %if.then.cleanup103.sink.split_crit_edge
  %.sink = phi i32 [ %sub70, %if.else94 ], [ 0, %if.end65.cleanup103.sink.split_crit_edge ], [ 0, %if.end31.cleanup103.sink.split_crit_edge ], [ 0, %if.end49.cleanup103.sink.split_crit_edge ], [ 0, %if.then.cleanup103.sink.split_crit_edge ], [ 0, %while.cond.backedge.cleanup103.sink.split_crit_edge ]
  %41 = ptrtoint ptr %buf_len1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %.sink, ptr %buf_len1, align 4
  br label %cleanup103

cleanup103:                                       ; preds = %cleanup103.sink.split, %if.end36.cleanup103_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @egalax_get_pkt_len(ptr nocapture noundef readonly %buf, i32 noundef %len) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  %2 = and i8 %1, -2
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %2, label %sw.epilog [
    i8 -128, label %entry.return_crit_edge
    i8 10, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %cmp = icmp slt i32 %len, 2
  br i1 %cmp, label %sw.bb1.return_crit_edge, label %if.end

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx3 = getelementptr i8, ptr %buf, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %add = add nuw nsw i32 %conv4, 2
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

return:                                           ; preds = %sw.epilog, %if.end, %sw.bb1.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %add, %if.end ], [ 5, %entry.return_crit_edge ], [ -1, %sw.bb1.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @egalax_read_data(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readonly %pkt) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pkt, align 1
  %2 = and i8 %1, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %2)
  %cmp.not = icmp eq i8 %2, -128
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx2 = getelementptr i8, ptr %pkt, i32 3
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx2, align 1
  %5 = and i8 %4, 15
  %and4 = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %and4, 7
  %arrayidx5 = getelementptr i8, ptr %pkt, i32 4
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5, align 1
  %8 = and i8 %7, 127
  %and7 = zext i8 %8 to i32
  %or = or i32 %shl, %and7
  %x = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 14
  %9 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %x, align 4
  %arrayidx8 = getelementptr i8, ptr %pkt, i32 1
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8, align 1
  %12 = and i8 %11, 15
  %and10 = zext i8 %12 to i32
  %shl11 = shl nuw nsw i32 %and10, 7
  %arrayidx12 = getelementptr i8, ptr %pkt, i32 2
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx12, align 1
  %15 = and i8 %14, 127
  %and14 = zext i8 %15 to i32
  %or15 = or i32 %shl11, %and14
  %y = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 15
  %16 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or15, ptr %y, align 4
  %17 = ptrtoint ptr %pkt to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pkt, align 1
  %19 = and i8 %18, 1
  %and18 = zext i8 %19 to i32
  %touch = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 16
  %20 = ptrtoint ptr %touch to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and18, ptr %touch, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @egalax_init(ptr nocapture noundef readonly %usbtouch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 6
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 3) #17
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 10, ptr %call7.i, align 8
  %arrayidx2 = getelementptr i8, ptr %call7.i, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %arrayidx2, align 1
  %arrayidx3 = getelementptr i8, ptr %call7.i, i32 2
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 65, ptr %arrayidx3, align 2
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %9, 8
  %or = or i32 %shl.i, -2147483648
  %call5 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 3, i32 noundef 5000) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5)
  %cmp6 = icmp sgt i32 %call5, -1
  br i1 %cmp6, label %if.end.for.end_crit_edge, label %if.end8

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.cond:                                         ; preds = %if.end8
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 8
  %shl.i.1 = shl i32 %11, 8
  %or.1 = or i32 %shl.i.1, -2147483648
  %call5.1 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or.1, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 3, i32 noundef 5000) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.1)
  %cmp6.1 = icmp sgt i32 %call5.1, -1
  br i1 %cmp6.1, label %for.cond.for.end_crit_edge, label %if.end8.1

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end8.1:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %call5.1)
  %cmp9.not.1 = icmp eq i32 %call5.1, -32
  br i1 %cmp9.not.1, label %for.cond.1, label %if.end8.1.for.end_crit_edge

if.end8.1.for.end_crit_edge:                      ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.cond.1:                                       ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i, align 8
  %shl.i.2 = shl i32 %13, 8
  %or.2 = or i32 %shl.i.2, -2147483648
  %call5.2 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or.2, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 3, i32 noundef 5000) #14
  %14 = call i32 @llvm.smin.i32(i32 %call5.2, i32 0)
  br label %for.end

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %call5)
  %cmp9.not = icmp eq i32 %call5, -32
  br i1 %cmp9.not, label %for.cond, label %if.end8.for.end_crit_edge

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end8.for.end_crit_edge, %for.cond.1, %if.end8.1.for.end_crit_edge, %for.cond.for.end_crit_edge, %if.end.for.end_crit_edge
  %ret.1 = phi i32 [ %call5, %if.end8.for.end_crit_edge ], [ 0, %if.end.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ], [ %call5.1, %if.end8.1.for.end_crit_edge ], [ %14, %for.cond.1 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @panjit_read_data(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readonly %pkt) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %pkt, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = and i8 %1, 15
  %and = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %and, 8
  %arrayidx1 = getelementptr i8, ptr %pkt, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %4 to i32
  %or = or i32 %shl, %conv2
  %x = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 14
  %5 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %x, align 4
  %arrayidx3 = getelementptr i8, ptr %pkt, i32 4
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 1
  %8 = and i8 %7, 15
  %and5 = zext i8 %8 to i32
  %shl6 = shl nuw nsw i32 %and5, 8
  %arrayidx7 = getelementptr i8, ptr %pkt, i32 3
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %10 to i32
  %or9 = or i32 %shl6, %conv8
  %y = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 15
  %11 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or9, ptr %y, align 4
  %12 = ptrtoint ptr %pkt to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pkt, align 1
  %14 = and i8 %13, 1
  %and12 = zext i8 %14 to i32
  %touch = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 16
  %15 = ptrtoint ptr %touch to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and12, ptr %touch, align 4
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtouch_read_data(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readonly %pkt) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @hwcalib_xy, align 1, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr i8, ptr %pkt, i32 4
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx1 = getelementptr i8, ptr %pkt, i32 3
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %4 to i32
  %or = or i32 %shl, %conv2
  %x = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 14
  %5 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %x, align 4
  %arrayidx3 = getelementptr i8, ptr %pkt, i32 6
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %7 to i32
  %shl5 = shl nuw nsw i32 %conv4, 8
  %arrayidx6 = getelementptr i8, ptr %pkt, i32 5
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %9 to i32
  %or8 = or i32 %shl5, %conv7
  %sub = xor i32 %or8, 65535
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx9 = getelementptr i8, ptr %pkt, i32 8
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %11 to i32
  %shl11 = shl nuw nsw i32 %conv10, 8
  %arrayidx12 = getelementptr i8, ptr %pkt, i32 7
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %13 to i32
  %or14 = or i32 %shl11, %conv13
  %x15 = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 14
  %14 = ptrtoint ptr %x15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or14, ptr %x15, align 4
  %arrayidx16 = getelementptr i8, ptr %pkt, i32 10
  %15 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %16 to i32
  %shl18 = shl nuw nsw i32 %conv17, 8
  %arrayidx19 = getelementptr i8, ptr %pkt, i32 9
  %17 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %18 to i32
  %or21 = or i32 %shl18, %conv20
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %sub.sink = phi i32 [ %or21, %if.else ], [ %sub, %if.then ]
  %19 = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 15
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub.sink, ptr %19, align 4
  %arrayidx23 = getelementptr i8, ptr %pkt, i32 2
  %21 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx23, align 1
  %23 = lshr i8 %22, 6
  %.lobit = and i8 %23, 1
  %24 = zext i8 %.lobit to i32
  %touch = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 16
  %25 = ptrtoint ptr %touch to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %touch, align 4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtouch_alloc(ptr nocapture noundef %usbtouch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 2) #17
  %priv = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 13
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i, ptr %priv, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %interface = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 6
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interface, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %call2 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @mtouch_attr_group) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  tail call void @kfree(ptr noundef %5) #14
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then4 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtouch_init(ptr nocapture noundef readonly %usbtouch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 6
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -128
  %priv1.i = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 13
  %4 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3328, i32 noundef 16) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i = shl i32 %8, 8
  %or4.i = or i32 %shl.i.i, -2147483520
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or4.i, i8 noundef zeroext 10, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext 16, i32 noundef 5000) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call5.i)
  %cmp.not.i = icmp eq i32 %call5.i, 16
  br i1 %cmp.not.i, label %if.end, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %interface, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.19, i32 noundef %call5.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp8.i = icmp slt i32 %call5.i, 0
  %spec.select = select i1 %cmp8.i, i32 %call5.i, i32 -5
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %arrayidx.i = getelementptr i8, ptr %call7.i.i.i, i32 3
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %5, align 1
  %arrayidx10.i = getelementptr i8, ptr %call7.i.i.i, i32 4
  %14 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx10.i, align 4
  %fw_rev_minor.i = getelementptr inbounds %struct.mtouch_priv, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %fw_rev_minor.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %fw_rev_minor.i, align 1
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %18, 8
  %or = or i32 %shl.i, -2147483648
  %call3 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or, i8 noundef zeroext 7, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtouch_init.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtouch_init, %if.then8)) #14
          to label %do.end [label %if.then8], !srcloc !156

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %interface, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %20, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtouch_init.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef %call3) #14
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %do.end
  tail call void @msleep(i32 noundef 150) #14
  br label %for.body

for.cond:                                         ; preds = %if.end37
  %inc = add nuw nsw i32 %i.076, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end12
  %i.076 = phi i32 [ 0, %if.end12 ], [ %inc, %for.cond.for.body_crit_edge ]
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i, align 8
  %shl.i68 = shl i32 %22, 8
  %or15 = or i32 %shl.i68, -2147483648
  %call16 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or15, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtouch_init.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtouch_init, %if.then29)) #14
          to label %do.end34 [label %if.then29], !srcloc !156

if.then29:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %interface, align 4
  %dev31 = getelementptr inbounds %struct.usb_interface, ptr %24, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtouch_init.__UNIQUE_ID_ddebug238, ptr noundef %dev31, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef %call16) #14
  br label %do.end34

do.end34:                                         ; preds = %if.then29, %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16)
  %cmp35 = icmp sgt i32 %call16, -1
  br i1 %cmp35, label %do.end34.for.end_crit_edge, label %if.end37

do.end34.for.end_crit_edge:                       ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end37:                                         ; preds = %do.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %call16)
  %cmp38.not = icmp eq i32 %call16, -32
  br i1 %cmp38.not, label %for.cond, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.end:                                          ; preds = %do.end34.for.end_crit_edge, %for.cond.for.end_crit_edge
  %25 = load i8, ptr @hwcalib_xy, align 1, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool41.not = icmp eq i8 %25, 0
  br i1 %tobool41.not, label %for.end.cleanup_crit_edge, label %if.then42

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then42:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %input = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 7
  %26 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %input, align 4
  tail call void @input_set_abs_params(ptr noundef %27, i32 noundef 0, i32 noundef 0, i32 noundef 65535, i32 noundef 0, i32 noundef 0) #14
  %28 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %input, align 4
  tail call void @input_set_abs_params(ptr noundef %29, i32 noundef 1, i32 noundef 0, i32 noundef 65535, i32 noundef 0, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %for.end.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %do.end.cleanup_crit_edge, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end.cleanup_crit_edge ], [ 0, %if.then42 ], [ 0, %for.end.cleanup_crit_edge ], [ %spec.select, %do.end.i ], [ -12, %entry.cleanup_crit_edge ], [ %call16, %if.end37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtouch_exit(ptr nocapture noundef readonly %usbtouch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 13
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %interface = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 6
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interface, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @mtouch_attr_group) #14
  tail call void @kfree(ptr noundef %1) #14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @itm_read_data(ptr nocapture noundef %dev, ptr nocapture noundef readonly %pkt) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %pkt, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = shl i8 %1, 7
  %arrayidx1 = getelementptr i8, ptr %pkt, i32 5
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx1, align 1
  %5 = and i8 %4, 127
  %or41 = or i8 %5, %2
  %or = zext i8 %or41 to i32
  %press = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 17
  %6 = ptrtoint ptr %press to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %press, align 4
  %arrayidx4 = getelementptr i8, ptr %pkt, i32 7
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx4, align 1
  %9 = and i8 %8, 32
  %10 = xor i8 %9, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %touch7 = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 16
  %11 = ptrtoint ptr %touch7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %touch7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  br i1 %tobool8.not, label %if.then.cleanup_crit_edge, label %if.then9

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %touch7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %touch7, align 4
  br label %cleanup

if.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %and6 = zext i8 %10 to i32
  %14 = ptrtoint ptr %pkt to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pkt, align 1
  %16 = and i8 %15, 31
  %and14 = zext i8 %16 to i32
  %shl15 = shl nuw nsw i32 %and14, 7
  %arrayidx16 = getelementptr i8, ptr %pkt, i32 3
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx16, align 1
  %19 = and i8 %18, 127
  %and18 = zext i8 %19 to i32
  %or19 = or i32 %shl15, %and18
  %x = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 14
  %20 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or19, ptr %x, align 4
  %arrayidx20 = getelementptr i8, ptr %pkt, i32 1
  %21 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx20, align 1
  %23 = and i8 %22, 31
  %and22 = zext i8 %23 to i32
  %shl23 = shl nuw nsw i32 %and22, 7
  %arrayidx24 = getelementptr i8, ptr %pkt, i32 4
  %24 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx24, align 1
  %26 = and i8 %25, 127
  %and26 = zext i8 %26 to i32
  %or27 = or i32 %shl23, %and26
  %y = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 15
  %27 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or27, ptr %y, align 4
  %touch28 = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 16
  %28 = ptrtoint ptr %touch28 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and6, ptr %touch28, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 1, %if.then9 ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @eturbo_get_pkt_len(ptr nocapture noundef readonly %buf, i32 noundef %len) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %tobool.not = icmp sgt i8 %1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  %. = select i1 %cmp, i32 3, i32 0
  %retval.0 = select i1 %tobool.not, i32 %., i32 5
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @eturbo_read_data(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readonly %pkt) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pkt, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %and3 = and i32 %conv, 3
  %sub = sub nuw nsw i32 6, %and3
  %arrayidx4 = getelementptr i8, ptr %pkt, i32 3
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv5, 7
  %arrayidx6 = getelementptr i8, ptr %pkt, i32 4
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %5 to i32
  %or = or i32 %shl, %conv7
  %shr = lshr i32 %or, %sub
  %x = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 14
  %6 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shr, ptr %x, align 4
  %arrayidx8 = getelementptr i8, ptr %pkt, i32 1
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %8 to i32
  %shl10 = shl nuw nsw i32 %conv9, 7
  %arrayidx11 = getelementptr i8, ptr %pkt, i32 2
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %10 to i32
  %or13 = or i32 %shl10, %conv12
  %shr14 = lshr i32 %or13, %sub
  %y = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 15
  %11 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shr14, ptr %y, align 4
  %12 = ptrtoint ptr %pkt to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pkt, align 1
  %14 = lshr i8 %13, 4
  %.lobit = and i8 %14, 1
  %15 = zext i8 %.lobit to i32
  %touch = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 16
  %16 = ptrtoint ptr %touch to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %touch, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gunze_read_data(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readonly %pkt) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pkt, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr i8, ptr %pkt, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %arrayidx3 = getelementptr i8, ptr %pkt, i32 2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %or38 = or i8 %5, %3
  %arrayidx5 = getelementptr i8, ptr %pkt, i32 3
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5, align 1
  %or739 = or i8 %or38, %7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %or739)
  %tobool9.not = icmp sgt i8 %or739, -1
  br i1 %tobool9.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %and12 = shl nuw nsw i32 %conv, 7
  %shl = and i32 %and12, 3968
  %8 = and i8 %5, 127
  %and15 = zext i8 %8 to i32
  %or16 = or i32 %shl, %and15
  %x = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 14
  %9 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or16, ptr %x, align 4
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1, align 1
  %12 = and i8 %11, 31
  %and19 = zext i8 %12 to i32
  %shl20 = shl nuw nsw i32 %and19, 7
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx5, align 1
  %15 = and i8 %14, 127
  %and23 = zext i8 %15 to i32
  %or24 = or i32 %shl20, %and23
  %y = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 15
  %16 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or24, ptr %y, align 4
  %17 = ptrtoint ptr %pkt to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pkt, align 1
  %19 = and i8 %18, 32
  %and27 = zext i8 %19 to i32
  %touch = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 16
  %20 = ptrtoint ptr %touch to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and27, ptr %touch, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dmc_tsc10_read_data(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readonly %pkt) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %pkt, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = and i8 %1, 3
  %and = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %and, 8
  %arrayidx1 = getelementptr i8, ptr %pkt, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %4 to i32
  %or = or i32 %shl, %conv2
  %x = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 14
  %5 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %x, align 4
  %arrayidx3 = getelementptr i8, ptr %pkt, i32 4
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 1
  %8 = and i8 %7, 3
  %and5 = zext i8 %8 to i32
  %shl6 = shl nuw nsw i32 %and5, 8
  %arrayidx7 = getelementptr i8, ptr %pkt, i32 3
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %10 to i32
  %or9 = or i32 %shl6, %conv8
  %y = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 15
  %11 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or9, ptr %y, align 4
  %12 = ptrtoint ptr %pkt to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pkt, align 1
  %14 = and i8 %13, 1
  %and12 = zext i8 %14 to i32
  %touch = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 16
  %15 = ptrtoint ptr %touch to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and12, ptr %touch, align 4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmc_tsc10_init(ptr nocapture noundef readonly %usbtouch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 6
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3072, i32 noundef 2) #17
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.err_nobuf_crit_edge, label %if.end

entry.err_nobuf_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_nobuf

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr i8, ptr %call7.i, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %arrayidx, align 1
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %call7.i, align 8
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %8, 8
  %or4 = or i32 %shl.i, -2147483520
  %call5 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or4, i8 noundef zeroext 85, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 2, i32 noundef 5000) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end.err_out_crit_edge, label %if.end7

if.end.err_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out

if.end7:                                          ; preds = %if.end
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %10)
  %cmp9.not = icmp eq i8 %10, 6
  br i1 %cmp9.not, label %if.end12, label %if.end7.err_out_crit_edge

if.end7.err_out_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out

if.end12:                                         ; preds = %if.end7
  tail call void @msleep(i32 noundef 150) #14
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %arrayidx, align 1
  %12 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %call7.i, align 8
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i, align 8
  %shl.i58 = shl i32 %14, 8
  %or17 = or i32 %shl.i58, -2147483520
  %call18 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or17, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext 69, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 2, i32 noundef 5000) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end12.err_out_crit_edge, label %if.end22

if.end12.err_out_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out

if.end22:                                         ; preds = %if.end12
  %15 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %call7.i, align 8
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %16, label %if.end22.err_out_crit_edge [
    i8 6, label %if.end22.if.end36_crit_edge
    i8 21, label %lor.lhs.false
  ]

if.end22.if.end36_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.end22.err_out_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out

lor.lhs.false:                                    ; preds = %if.end22
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp33.not = icmp eq i8 %19, 1
  br i1 %cmp33.not, label %lor.lhs.false.if.end36_crit_edge, label %lor.lhs.false.err_out_crit_edge

lor.lhs.false.err_out_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out

lor.lhs.false.if.end36_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.end36:                                         ; preds = %lor.lhs.false.if.end36_crit_edge, %if.end22.if.end36_crit_edge
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i, align 8
  %shl.i59 = shl i32 %21, 8
  %or38 = or i32 %shl.i59, -2147483648
  %call39 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or38, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #14
  br label %err_out

err_out:                                          ; preds = %if.end36, %lor.lhs.false.err_out_crit_edge, %if.end22.err_out_crit_edge, %if.end12.err_out_crit_edge, %if.end7.err_out_crit_edge, %if.end.err_out_crit_edge
  %ret.0 = phi i32 [ %call5, %if.end.err_out_crit_edge ], [ %call18, %if.end12.err_out_crit_edge ], [ %call39, %if.end36 ], [ -19, %if.end7.err_out_crit_edge ], [ -19, %if.end22.err_out_crit_edge ], [ -19, %lor.lhs.false.err_out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %err_nobuf

err_nobuf:                                        ; preds = %err_out, %entry.err_nobuf_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_out ], [ -12, %entry.err_nobuf_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @irtouch_read_data(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readonly %pkt) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %pkt, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx1 = getelementptr i8, ptr %pkt, i32 2
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %or = or i32 %shl, %conv2
  %x = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %x, align 4
  %arrayidx3 = getelementptr i8, ptr %pkt, i32 5
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %6 to i32
  %shl5 = shl nuw nsw i32 %conv4, 8
  %arrayidx6 = getelementptr i8, ptr %pkt, i32 4
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %8 to i32
  %or8 = or i32 %shl5, %conv7
  %y = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 15
  %9 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or8, ptr %y, align 4
  %arrayidx9 = getelementptr i8, ptr %pkt, i32 1
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx9, align 1
  %12 = and i8 %11, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp ne i8 %12, 0
  %cond = zext i1 %tobool.not to i32
  %touch = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 16
  %13 = ptrtoint ptr %touch to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond, ptr %touch, align 4
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @idealtek_get_pkt_len(ptr nocapture noundef readonly %buf, i32 noundef %len) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %tobool.not = icmp sgt i8 %1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  %len. = select i1 %cmp, i32 %len, i32 0
  %retval.0 = select i1 %tobool.not, i32 %len., i32 5
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @idealtek_read_data(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readonly %pkt) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pkt, align 1
  %2 = and i8 %1, -104
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %2, label %entry.return_crit_edge [
    i8 -120, label %entry.return.sink.split_crit_edge
    i8 -104, label %sw.bb15
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb15, %entry.return.sink.split_crit_edge
  %.sink63 = phi i32 [ 2, %sw.bb15 ], [ 1, %entry.return.sink.split_crit_edge ]
  %.sink61 = phi i32 [ 1, %sw.bb15 ], [ 2, %entry.return.sink.split_crit_edge ]
  %.sink57 = phi i32 [ 4, %sw.bb15 ], [ 3, %entry.return.sink.split_crit_edge ]
  %.sink = phi i32 [ 3, %sw.bb15 ], [ 4, %entry.return.sink.split_crit_edge ]
  %arrayidx16 = getelementptr i8, ptr %pkt, i32 %.sink63
  %4 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %5 to i32
  %shl18 = shl nuw nsw i32 %conv17, 5
  %arrayidx19 = getelementptr i8, ptr %pkt, i32 %.sink61
  %6 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx19, align 1
  %8 = lshr i8 %7, 2
  %9 = zext i8 %8 to i32
  %or22 = or i32 %shl18, %9
  %x23 = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 14
  %10 = ptrtoint ptr %x23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or22, ptr %x23, align 4
  %arrayidx24 = getelementptr i8, ptr %pkt, i32 %.sink57
  %11 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %12 to i32
  %shl26 = shl nuw nsw i32 %conv25, 5
  %arrayidx27 = getelementptr i8, ptr %pkt, i32 %.sink
  %13 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx27, align 1
  %15 = lshr i8 %14, 2
  %16 = zext i8 %15 to i32
  %or30 = or i32 %shl26, %16
  %y31 = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 15
  %17 = ptrtoint ptr %y31 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or30, ptr %y31, align 4
  %18 = ptrtoint ptr %pkt to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pkt, align 1
  %20 = lshr i8 %19, 6
  %.lobit = and i8 %20, 1
  %21 = zext i8 %.lobit to i32
  %touch37 = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 16
  %22 = ptrtoint ptr %touch37 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %touch37, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 1, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @general_touch_read_data(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readonly %pkt) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %pkt, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx1 = getelementptr i8, ptr %pkt, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %or = or i32 %shl, %conv2
  %x = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %x, align 4
  %arrayidx3 = getelementptr i8, ptr %pkt, i32 4
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %6 to i32
  %shl5 = shl nuw nsw i32 %conv4, 8
  %arrayidx6 = getelementptr i8, ptr %pkt, i32 3
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %8 to i32
  %or8 = or i32 %shl5, %conv7
  %y = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 15
  %9 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or8, ptr %y, align 4
  %arrayidx9 = getelementptr i8, ptr %pkt, i32 5
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %11 to i32
  %press = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 17
  %12 = ptrtoint ptr %press to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv10, ptr %press, align 4
  %13 = ptrtoint ptr %pkt to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pkt, align 1
  %15 = and i8 %14, 1
  %and13 = zext i8 %15 to i32
  %touch = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 16
  %16 = ptrtoint ptr %touch to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and13, ptr %touch, align 4
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gotop_read_data(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readonly %pkt) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %pkt, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = and i8 %1, 56
  %and = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %and, 4
  %arrayidx1 = getelementptr i8, ptr %pkt, i32 2
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %4 to i32
  %or = or i32 %shl, %conv2
  %x = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 14
  %5 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %x, align 4
  %6 = load i8, ptr %arrayidx, align 1
  %7 = and i8 %6, 7
  %and5 = zext i8 %7 to i32
  %shl6 = shl nuw nsw i32 %and5, 7
  %arrayidx7 = getelementptr i8, ptr %pkt, i32 3
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %9 to i32
  %or9 = or i32 %shl6, %conv8
  %y = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 15
  %10 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or9, ptr %y, align 4
  %11 = ptrtoint ptr %pkt to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pkt, align 1
  %13 = and i8 %12, 1
  %and12 = zext i8 %13 to i32
  %touch = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 16
  %14 = ptrtoint ptr %touch to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and12, ptr %touch, align 4
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @jastec_read_data(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readonly %pkt) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pkt, align 1
  %2 = and i8 %1, 63
  %and = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %and, 6
  %arrayidx1 = getelementptr i8, ptr %pkt, i32 2
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx1, align 1
  %5 = and i8 %4, 63
  %and3 = zext i8 %5 to i32
  %or = or i32 %shl, %and3
  %x = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 14
  %6 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %x, align 4
  %arrayidx4 = getelementptr i8, ptr %pkt, i32 1
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx4, align 1
  %9 = and i8 %8, 63
  %and6 = zext i8 %9 to i32
  %shl7 = shl nuw nsw i32 %and6, 6
  %arrayidx8 = getelementptr i8, ptr %pkt, i32 3
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8, align 1
  %12 = and i8 %11, 63
  %and10 = zext i8 %12 to i32
  %or11 = or i32 %shl7, %and10
  %y = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 15
  %13 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or11, ptr %y, align 4
  %14 = load i8, ptr %pkt, align 1
  %15 = lshr i8 %14, 6
  %16 = and i8 %15, 1
  %17 = zext i8 %16 to i32
  %touch = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 16
  %18 = ptrtoint ptr %touch to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %touch, align 4
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @e2i_read_data(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readonly %pkt) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pkt, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx1 = getelementptr i8, ptr %pkt, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %or = or i32 %shl, %conv2
  %arrayidx3 = getelementptr i8, ptr %pkt, i32 2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %shl5 = shl nuw nsw i32 %conv4, 8
  %arrayidx6 = getelementptr i8, ptr %pkt, i32 3
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %7 to i32
  %or8 = or i32 %shl5, %conv7
  %x = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 14
  %8 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or8, ptr %x, align 4
  %arrayidx9 = getelementptr i8, ptr %pkt, i32 4
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %10 to i32
  %shl11 = shl nuw nsw i32 %conv10, 8
  %arrayidx12 = getelementptr i8, ptr %pkt, i32 5
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %12 to i32
  %or14 = or i32 %shl11, %conv13
  %y = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 15
  %13 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or14, ptr %y, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40960, i32 %or)
  %cmp = icmp ugt i32 %or, 40960
  %conv15 = zext i1 %cmp to i32
  %touch = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 16
  %14 = ptrtoint ptr %touch to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv15, ptr %touch, align 4
  %15 = tail call i32 @llvm.usub.sat.i32(i32 %or, i32 40960)
  %press = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 17
  %16 = ptrtoint ptr %press to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %press, align 4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e2i_init(ptr nocapture noundef readonly %usbtouch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 6
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -128
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %5, 8
  %or = or i32 %shl.i, -2147483648
  %call2 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or, i8 noundef zeroext 1, i8 noundef zeroext 2, i16 noundef zeroext 0, i16 noundef zeroext 129, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e2i_init.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e2i_init, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !156

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %interface, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @e2i_init.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef %call2) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zytronic_read_data(ptr nocapture noundef %dev, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface, align 4
  %2 = ptrtoint ptr %pkt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pkt, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %3, label %do.body78 [
    i8 58, label %do.body
    i8 -64, label %sw.bb6
    i8 -128, label %sw.bb39
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zytronic_read_data.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zytronic_read_data, %if.then)) #14
          to label %cleanup [label %if.then], !srcloc !156

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %dev3 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %arrayidx4 = getelementptr i8, ptr %pkt, i32 1
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zytronic_read_data.__UNIQUE_ID_ddebug239, ptr noundef %dev3, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef %conv5) #14
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx7 = getelementptr i8, ptr %pkt, i32 1
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx7, align 1
  %9 = and i8 %8, 127
  %and = zext i8 %9 to i32
  %arrayidx9 = getelementptr i8, ptr %pkt, i32 2
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx9, align 1
  %12 = and i8 %11, 7
  %and11 = zext i8 %12 to i32
  %shl = shl nuw nsw i32 %and11, 7
  %or = or i32 %shl, %and
  %x = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 14
  %13 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or, ptr %x, align 4
  %arrayidx12 = getelementptr i8, ptr %pkt, i32 3
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx12, align 1
  %16 = and i8 %15, 127
  %and14 = zext i8 %16 to i32
  %arrayidx15 = getelementptr i8, ptr %pkt, i32 4
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx15, align 1
  %19 = and i8 %18, 7
  %and17 = zext i8 %19 to i32
  %shl18 = shl nuw nsw i32 %and17, 7
  %or19 = or i32 %shl18, %and14
  %y = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 15
  %20 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or19, ptr %y, align 4
  %touch = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 16
  %21 = ptrtoint ptr %touch to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %touch, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zytronic_read_data.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zytronic_read_data, %if.then32)) #14
          to label %cleanup [label %if.then32], !srcloc !156

if.then32:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #16
  %dev33 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %22 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %x, align 4
  %24 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %y, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zytronic_read_data.__UNIQUE_ID_ddebug240, ptr noundef %dev33, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef %23, i32 noundef %25) #14
  br label %cleanup

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx40 = getelementptr i8, ptr %pkt, i32 1
  %26 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx40, align 1
  %28 = and i8 %27, 127
  %and42 = zext i8 %28 to i32
  %arrayidx43 = getelementptr i8, ptr %pkt, i32 2
  %29 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx43, align 1
  %31 = and i8 %30, 7
  %and45 = zext i8 %31 to i32
  %shl46 = shl nuw nsw i32 %and45, 7
  %or47 = or i32 %shl46, %and42
  %x48 = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 14
  %32 = ptrtoint ptr %x48 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or47, ptr %x48, align 4
  %arrayidx49 = getelementptr i8, ptr %pkt, i32 3
  %33 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx49, align 1
  %35 = and i8 %34, 127
  %and51 = zext i8 %35 to i32
  %arrayidx52 = getelementptr i8, ptr %pkt, i32 4
  %36 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx52, align 1
  %38 = and i8 %37, 7
  %and54 = zext i8 %38 to i32
  %shl55 = shl nuw nsw i32 %and54, 7
  %or56 = or i32 %shl55, %and51
  %y57 = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 15
  %39 = ptrtoint ptr %y57 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or56, ptr %y57, align 4
  %touch58 = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 16
  %40 = ptrtoint ptr %touch58 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %touch58, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zytronic_read_data.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zytronic_read_data, %if.then71)) #14
          to label %cleanup [label %if.then71], !srcloc !156

if.then71:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #16
  %dev72 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %41 = ptrtoint ptr %x48 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %x48, align 4
  %43 = ptrtoint ptr %y57 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %y57, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zytronic_read_data.__UNIQUE_ID_ddebug241, ptr noundef %dev72, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.24, i32 noundef %42, i32 noundef %44) #14
  br label %cleanup

do.body78:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zytronic_read_data.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zytronic_read_data, %if.then90)) #14
          to label %cleanup [label %if.then90], !srcloc !156

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #16
  %dev91 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %45 = ptrtoint ptr %pkt to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %pkt, align 1
  %conv93 = zext i8 %46 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zytronic_read_data.__UNIQUE_ID_ddebug242, ptr noundef %dev91, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24, i32 noundef %conv93) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then90, %do.body78, %if.then71, %sw.bb39, %if.then32, %sw.bb6, %if.then, %do.body
  %retval.0 = phi i32 [ 1, %if.then32 ], [ 1, %if.then71 ], [ 0, %if.then90 ], [ 0, %if.then ], [ 0, %do.body ], [ 1, %sw.bb6 ], [ 1, %sw.bb39 ], [ 0, %do.body78 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tc45usb_read_data(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readonly %pkt) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %pkt, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = and i8 %1, 15
  %and = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %and, 8
  %arrayidx1 = getelementptr i8, ptr %pkt, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %4 to i32
  %or = or i32 %shl, %conv2
  %x = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 14
  %5 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %x, align 4
  %arrayidx3 = getelementptr i8, ptr %pkt, i32 4
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 1
  %8 = and i8 %7, 15
  %and5 = zext i8 %8 to i32
  %shl6 = shl nuw nsw i32 %and5, 8
  %arrayidx7 = getelementptr i8, ptr %pkt, i32 3
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %10 to i32
  %or9 = or i32 %shl6, %conv8
  %y = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 15
  %11 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or9, ptr %y, align 4
  %12 = ptrtoint ptr %pkt to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pkt, align 1
  %14 = and i8 %13, 1
  %and12 = zext i8 %14 to i32
  %touch = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 16
  %15 = ptrtoint ptr %touch to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and12, ptr %touch, align 4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nexio_read_data(ptr nocapture noundef %usbtouch, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 6
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %y_len6 = getelementptr inbounds %struct.nexio_touch_packet, ptr %pkt, i32 0, i32 3
  %2 = ptrtoint ptr %y_len6 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %y_len6, align 1
  %conv7 = zext i16 %3 to i32
  %4 = ptrtoint ptr %pkt to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pkt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %5)
  %cmp.not = icmp ugt i8 %5, -33
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %x_len4 = getelementptr inbounds %struct.nexio_touch_packet, ptr %pkt, i32 0, i32 2
  %6 = ptrtoint ptr %x_len4 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %x_len4, align 1
  %conv5 = zext i16 %7 to i32
  %data_len3 = getelementptr inbounds %struct.nexio_touch_packet, ptr %pkt, i32 0, i32 1
  %8 = ptrtoint ptr %data_len3 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %data_len3, align 1
  %conv = zext i16 %9 to i32
  %priv2 = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 13
  %10 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %9)
  %cmp10 = icmp ugt i16 %9, 255
  %sub = add nsw i32 %conv, -256
  %spec.select = select i1 %cmp10, i32 %sub, i32 %conv
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %7)
  %cmp14 = icmp ugt i16 %7, 255
  %sub17 = add nsw i32 %conv5, -128
  %x_len.0 = select i1 %cmp14, i32 %sub17, i32 %conv5
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call = tail call i32 @usb_submit_urb(ptr noundef %13, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.if.end20_crit_edge, label %do.end

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %call) #19
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.end.if.end20_crit_edge
  %type = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 8
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %type, align 4
  %max_xc = getelementptr inbounds %struct.usbtouch_device_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %max_xc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_xc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool21.not = icmp eq i32 %17, 0
  br i1 %tobool21.not, label %if.then22, label %if.end20.if.end32_crit_edge

if.end20.if.end32_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  %mul = shl nsw i32 %x_len.0, 1
  %18 = ptrtoint ptr %max_xc to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %max_xc, align 4
  %input = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 7
  %19 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %input, align 4
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %type, align 4
  %max_xc26 = getelementptr inbounds %struct.usbtouch_device_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %max_xc26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_xc26, align 4
  tail call void @input_set_abs_params(ptr noundef %20, i32 noundef 0, i32 noundef 0, i32 noundef %24, i32 noundef 0, i32 noundef 0) #14
  %mul27 = shl nuw nsw i32 %conv7, 1
  %25 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %type, align 4
  %max_yc = getelementptr inbounds %struct.usbtouch_device_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %max_yc to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul27, ptr %max_yc, align 4
  %28 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %input, align 4
  %30 = load ptr, ptr %type, align 4
  %max_yc31 = getelementptr inbounds %struct.usbtouch_device_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %max_yc31 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_yc31, align 4
  tail call void @input_set_abs_params(ptr noundef %29, i32 noundef 1, i32 noundef 0, i32 noundef %32, i32 noundef 0, i32 noundef 0) #14
  br label %if.end32

if.end32:                                         ; preds = %if.then22, %if.end20.if.end32_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %x_len.0)
  %cmp33170.not = icmp eq i32 %x_len.0, 0
  br i1 %cmp33170.not, label %if.end32.cleanup_crit_edge, label %for.body.lr.ph

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_cmp4(i32 %x_len.0, i32 %spec.select)
  %cmp57166 = icmp uge i32 %x_len.0, %spec.select
  br label %for.body

for.body:                                         ; preds = %for.inc96.for.body_crit_edge, %for.body.lr.ph
  %begin_y.0175 = phi i32 [ -1, %for.body.lr.ph ], [ %begin_y.3, %for.inc96.for.body_crit_edge ]
  %begin_x.0174 = phi i32 [ -1, %for.body.lr.ph ], [ %begin_x.1, %for.inc96.for.body_crit_edge ]
  %x.0171 = phi i32 [ 0, %for.body.lr.ph ], [ %inc97, %for.inc96.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %begin_x.0174)
  %cond = icmp eq i32 %begin_x.0174, -1
  %arrayidx37 = getelementptr %struct.nexio_touch_packet, ptr %pkt, i32 0, i32 4, i32 %x.0171
  %33 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx37, align 1
  br i1 %cond, label %land.lhs.true, label %land.lhs.true48

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %34)
  %cmp39 = icmp ugt i8 %34, 50
  %spec.select160 = select i1 %cmp39, i32 %x.0171, i32 -1
  br label %for.inc96

land.lhs.true48:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %34)
  %cmp52 = icmp ugt i8 %34, 49
  %brmerge = select i1 %cmp52, i1 true, i1 %cmp57166
  %begin_x.0174.mux = select i1 %cmp52, i32 %begin_x.0174, i32 -1
  br i1 %brmerge, label %land.lhs.true48.for.inc96_crit_edge, label %land.lhs.true48.for.body59_crit_edge

land.lhs.true48.for.body59_crit_edge:             ; preds = %land.lhs.true48
  br label %for.body59

land.lhs.true48.for.inc96_crit_edge:              ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc96

for.body59:                                       ; preds = %for.inc.for.body59_crit_edge, %land.lhs.true48.for.body59_crit_edge
  %begin_y.1169 = phi i32 [ %begin_y.2, %for.inc.for.body59_crit_edge ], [ %begin_y.0175, %land.lhs.true48.for.body59_crit_edge ]
  %y.0167 = phi i32 [ %inc, %for.inc.for.body59_crit_edge ], [ %x_len.0, %land.lhs.true48.for.body59_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %begin_y.1169)
  %cond159 = icmp eq i32 %begin_y.1169, -1
  %arrayidx64 = getelementptr %struct.nexio_touch_packet, ptr %pkt, i32 0, i32 4, i32 %y.0167
  %35 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx64, align 1
  br i1 %cond159, label %land.lhs.true62, label %land.lhs.true76

land.lhs.true62:                                  ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %36)
  %cmp66 = icmp ugt i8 %36, 50
  %sub69 = sub nuw i32 %y.0167, %x_len.0
  %spec.select161 = select i1 %cmp66, i32 %sub69, i32 -1
  br label %for.inc

land.lhs.true76:                                  ; preds = %for.body59
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %36)
  %cmp80 = icmp ult i8 %36, 50
  br i1 %cmp80, label %if.then82, label %land.lhs.true76.for.inc_crit_edge

land.lhs.true76.for.inc_crit_edge:                ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then82:                                        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #16
  %37 = xor i32 %x_len.0, -1
  %sub84 = add i32 %y.0167, %37
  %38 = xor i32 %begin_x.0174, -1
  %sub85 = add i32 %x.0171, %38
  %sub86 = sub i32 %sub84, %begin_y.1169
  %mul87 = shl i32 %begin_x.0174, 1
  %add = add i32 %sub85, %mul87
  %x88 = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 14
  %39 = ptrtoint ptr %x88 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add, ptr %x88, align 4
  %mul89 = shl i32 %begin_y.1169, 1
  %add90 = add i32 %sub86, %mul89
  %y91 = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 15
  %40 = ptrtoint ptr %y91 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add90, ptr %y91, align 4
  %41 = ptrtoint ptr %pkt to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %pkt, align 1
  %43 = and i8 %42, 1
  %and93 = zext i8 %43 to i32
  %touch = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 16
  %44 = ptrtoint ptr %touch to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and93, ptr %touch, align 4
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true76.for.inc_crit_edge, %land.lhs.true62
  %begin_y.2 = phi i32 [ %begin_y.1169, %land.lhs.true76.for.inc_crit_edge ], [ %spec.select161, %land.lhs.true62 ]
  %inc = add nuw i32 %y.0167, 1
  %exitcond.not = icmp eq i32 %inc, %spec.select
  br i1 %exitcond.not, label %for.inc.for.inc96_crit_edge, label %for.inc.for.body59_crit_edge

for.inc.for.body59_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body59

for.inc.for.inc96_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc96

for.inc96:                                        ; preds = %for.inc.for.inc96_crit_edge, %land.lhs.true48.for.inc96_crit_edge, %land.lhs.true
  %begin_x.1 = phi i32 [ %begin_x.0174.mux, %land.lhs.true48.for.inc96_crit_edge ], [ %spec.select160, %land.lhs.true ], [ -1, %for.inc.for.inc96_crit_edge ]
  %begin_y.3 = phi i32 [ %begin_y.0175, %land.lhs.true48.for.inc96_crit_edge ], [ %begin_y.0175, %land.lhs.true ], [ %begin_y.2, %for.inc.for.inc96_crit_edge ]
  %inc97 = add nuw i32 %x.0171, 1
  %exitcond180.not = icmp eq i32 %inc97, %x_len.0
  br i1 %exitcond180.not, label %for.inc96.cleanup_crit_edge, label %for.inc96.for.body_crit_edge

for.inc96.for.body_crit_edge:                     ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc96.cleanup_crit_edge:                      ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc96.cleanup_crit_edge, %if.then82, %if.end32.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then82 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ], [ 0, %for.inc96.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nexio_alloc(ptr nocapture noundef %usbtouch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #17
  %priv1 = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 13
  %1 = ptrtoint ptr %priv1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i, ptr %priv1, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @kmemdup(ptr noundef nonnull @nexio_ack_pkt, i32 noundef 2, i32 noundef 3264) #14
  %ack_buf = getelementptr inbounds %struct.nexio_priv, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %ack_buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %ack_buf, align 4
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %if.end.err_priv_crit_edge, label %if.end8

if.end.err_priv_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_priv

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #14
  %3 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9, ptr %call7.i, align 8
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %do.body, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nexio_alloc.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nexio_alloc, %if.then17)) #14
          to label %err_ack_buf [label %if.then17], !srcloc !156

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %interface = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 6
  %4 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %interface, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nexio_alloc.__UNIQUE_ID_ddebug243, ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31) #14
  br label %err_ack_buf

err_ack_buf:                                      ; preds = %if.then17, %do.body
  %6 = ptrtoint ptr %ack_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ack_buf, align 4
  tail call void @kfree(ptr noundef %7) #14
  br label %err_priv

err_priv:                                         ; preds = %err_ack_buf, %if.end.err_priv_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %cleanup

cleanup:                                          ; preds = %err_priv, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ -12, %err_priv ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nexio_init(ptr noundef %usbtouch) #2 align 64 {
entry:
  %actual_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 6
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -128
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_altsetting, align 4
  %priv3 = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 13
  %6 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len) #14
  %8 = ptrtoint ptr %actual_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %actual_len, align 4, !annotation !160
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %5, i32 0, i32 4
  %9 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bNumEndpoints, align 4
  %conv = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp161.not = icmp eq i8 %10, 0
  br i1 %cmp161.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %5, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %output_ep.0166 = phi i32 [ 0, %for.body.lr.ph ], [ %output_ep.1, %for.inc.for.body_crit_edge ]
  %input_ep.0165 = phi i32 [ 0, %for.body.lr.ph ], [ %input_ep.1, %for.inc.for.body_crit_edge ]
  %i.0162 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %input_ep.0165)
  %tobool.not = icmp eq i32 %input_ep.0165, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %11 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %endpoint, align 4
  %bEndpointAddress.i = getelementptr %struct.usb_host_endpoint, ptr %12, i32 %i.0162, i32 0, i32 2
  %13 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %tobool7.not = icmp sgt i8 %14, -1
  br i1 %tobool7.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bEndpointAddress.i, align 2
  %conv11 = zext i8 %16 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %input_ep.1 = phi i32 [ %input_ep.0165, %for.body.if.end_crit_edge ], [ %conv11, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %output_ep.0166)
  %tobool12.not = icmp eq i32 %output_ep.0166, 0
  br i1 %tobool12.not, label %land.lhs.true13, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true13:                                  ; preds = %if.end
  %17 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %endpoint, align 4
  %bEndpointAddress.i151 = getelementptr %struct.usb_host_endpoint, ptr %18, i32 %i.0162, i32 0, i32 2
  %19 = ptrtoint ptr %bEndpointAddress.i151 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bEndpointAddress.i151, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool18.not = icmp slt i8 %20, 0
  br i1 %tobool18.not, label %land.lhs.true13.for.inc_crit_edge, label %if.then19

land.lhs.true13.for.inc_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then19:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %bEndpointAddress.i151 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bEndpointAddress.i151, align 2
  %conv24 = zext i8 %22 to i32
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %land.lhs.true13.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %output_ep.1 = phi i32 [ %output_ep.0166, %if.end.for.inc_crit_edge ], [ %conv24, %if.then19 ], [ 0, %land.lhs.true13.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0162, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %input_ep.1)
  %tobool26.not = icmp eq i32 %input_ep.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %output_ep.1)
  %tobool27.not = icmp eq i32 %output_ep.1, 0
  %or.cond = select i1 %tobool26.not, i1 true, i1 %tobool27.not
  br i1 %or.cond, label %for.end.cleanup_crit_edge, label %if.end29

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end29:                                         ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3072, i32 noundef 1024) #17
  %tobool31.not = icmp eq ptr %call7.i, null
  br i1 %tobool31.not, label %if.end29.out_buf_crit_edge, label %for.cond34.preheader

if.end29.out_buf_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_buf

for.cond34.preheader:                             ; preds = %if.end29
  %shl1.i = shl i32 %input_ep.1, 15
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %25, 8
  %or.i = or i32 %shl1.i, %shl.i
  %or39 = or i32 %or.i, -1073741696
  %call40 = call i32 @usb_bulk_msg(ptr noundef %add.ptr.i, i32 noundef %or39, ptr noundef nonnull %call7.i, i32 noundef 1024, ptr noundef nonnull %actual_len, i32 noundef 5000) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %for.cond34.preheader.out_buf_crit_edge, label %for.cond34

for.cond34.preheader.out_buf_crit_edge:           ; preds = %for.cond34.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_buf

for.cond34:                                       ; preds = %for.cond34.preheader
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i, align 8
  %shl.i.1 = shl i32 %27, 8
  %or.i.1 = or i32 %shl1.i, %shl.i.1
  %or39.1 = or i32 %or.i.1, -1073741696
  %call40.1 = call i32 @usb_bulk_msg(ptr noundef %add.ptr.i, i32 noundef %or39.1, ptr noundef nonnull %call7.i, i32 noundef 1024, ptr noundef nonnull %actual_len, i32 noundef 5000) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.1)
  %cmp41.1 = icmp slt i32 %call40.1, 0
  br i1 %cmp41.1, label %for.cond34.out_buf_crit_edge, label %for.cond34.1

for.cond34.out_buf_crit_edge:                     ; preds = %for.cond34
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_buf

for.cond34.1:                                     ; preds = %for.cond34
  %28 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -2113664497, ptr %call7.i, align 8
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i, align 8
  %shl.i152 = shl i32 %30, 8
  %shl1.i153 = shl i32 %output_ep.1, 15
  %or.i154 = or i32 %shl1.i153, %shl.i152
  %or49 = or i32 %or.i154, -1073741824
  %call50 = call i32 @usb_bulk_msg(ptr noundef %add.ptr.i, i32 noundef %or49, ptr noundef nonnull %call7.i, i32 noundef 4, ptr noundef nonnull %actual_len, i32 noundef 5000) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %for.cond34.1.out_buf_crit_edge, label %for.cond55.preheader

for.cond34.1.out_buf_crit_edge:                   ; preds = %for.cond34.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_buf

for.cond55.preheader:                             ; preds = %for.cond34.1
  %arrayidx69 = getelementptr i8, ptr %call7.i, i32 1
  %arrayidx85 = getelementptr i8, ptr %call7.i, i32 2
  %31 = call ptr @memset(ptr %call7.i, i32 0, i32 1024)
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i, align 8
  %shl.i155 = shl i32 %33, 8
  %or.i157 = or i32 %shl1.i, %shl.i155
  %or61 = or i32 %or.i157, -1073741696
  %call62 = call i32 @usb_bulk_msg(ptr noundef %add.ptr.i, i32 noundef %or61, ptr noundef nonnull %call7.i, i32 noundef 1024, ptr noundef nonnull %actual_len, i32 noundef 5000) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %for.cond55.preheader.for.inc88_crit_edge, label %lor.lhs.false65

for.cond55.preheader.for.inc88_crit_edge:         ; preds = %for.cond55.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc88

lor.lhs.false65:                                  ; preds = %for.cond55.preheader
  %34 = ptrtoint ptr %actual_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %actual_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp66 = icmp slt i32 %35, 1
  br i1 %cmp66, label %lor.lhs.false65.for.inc88_crit_edge, label %lor.lhs.false68

lor.lhs.false65.for.inc88_crit_edge:              ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc88

lor.lhs.false68:                                  ; preds = %lor.lhs.false65
  %36 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv70)
  %cmp71.not = icmp eq i32 %35, %conv70
  br i1 %cmp71.not, label %if.end74, label %lor.lhs.false68.for.inc88_crit_edge

lor.lhs.false68.for.inc88_crit_edge:              ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc88

if.end74:                                         ; preds = %lor.lhs.false68
  %38 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %call7.i, align 8
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %39, label %if.end74.for.inc88_crit_edge [
    i8 -125, label %if.then78
    i8 -124, label %if.then84
  ]

if.end74.for.inc88_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc88

if.then78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #16
  %call80 = call noalias ptr @kstrdup(ptr noundef %arrayidx85, i32 noundef 3072) #14
  br label %for.inc88

if.then84:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #16
  %call86 = call noalias ptr @kstrdup(ptr noundef %arrayidx85, i32 noundef 3072) #14
  br label %for.inc88

for.inc88:                                        ; preds = %if.then84, %if.then78, %if.end74.for.inc88_crit_edge, %lor.lhs.false68.for.inc88_crit_edge, %lor.lhs.false65.for.inc88_crit_edge, %for.cond55.preheader.for.inc88_crit_edge
  %firmware_ver.1 = phi ptr [ null, %for.cond55.preheader.for.inc88_crit_edge ], [ null, %lor.lhs.false65.for.inc88_crit_edge ], [ null, %lor.lhs.false68.for.inc88_crit_edge ], [ null, %if.end74.for.inc88_crit_edge ], [ null, %if.then84 ], [ %call80, %if.then78 ]
  %device_name.1 = phi ptr [ null, %for.cond55.preheader.for.inc88_crit_edge ], [ null, %lor.lhs.false65.for.inc88_crit_edge ], [ null, %lor.lhs.false68.for.inc88_crit_edge ], [ null, %if.end74.for.inc88_crit_edge ], [ %call86, %if.then84 ], [ null, %if.then78 ]
  %41 = call ptr @memset(ptr %call7.i, i32 0, i32 1024)
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i, align 8
  %shl.i155.1 = shl i32 %43, 8
  %or.i157.1 = or i32 %shl1.i, %shl.i155.1
  %or61.1 = or i32 %or.i157.1, -1073741696
  %call62.1 = call i32 @usb_bulk_msg(ptr noundef %add.ptr.i, i32 noundef %or61.1, ptr noundef nonnull %call7.i, i32 noundef 1024, ptr noundef nonnull %actual_len, i32 noundef 5000) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.1)
  %cmp63.1 = icmp slt i32 %call62.1, 0
  br i1 %cmp63.1, label %for.inc88.for.inc88.1_crit_edge, label %lor.lhs.false65.1

for.inc88.for.inc88.1_crit_edge:                  ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc88.1

lor.lhs.false65.1:                                ; preds = %for.inc88
  %44 = ptrtoint ptr %actual_len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %actual_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp66.1 = icmp slt i32 %45, 1
  br i1 %cmp66.1, label %lor.lhs.false65.1.for.inc88.1_crit_edge, label %lor.lhs.false68.1

lor.lhs.false65.1.for.inc88.1_crit_edge:          ; preds = %lor.lhs.false65.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc88.1

lor.lhs.false68.1:                                ; preds = %lor.lhs.false65.1
  %46 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx69, align 1
  %conv70.1 = zext i8 %47 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv70.1)
  %cmp71.not.1 = icmp eq i32 %45, %conv70.1
  br i1 %cmp71.not.1, label %if.end74.1, label %lor.lhs.false68.1.for.inc88.1_crit_edge

lor.lhs.false68.1.for.inc88.1_crit_edge:          ; preds = %lor.lhs.false68.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc88.1

if.end74.1:                                       ; preds = %lor.lhs.false68.1
  %48 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %call7.i, align 8
  %50 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.48)
  switch i8 %49, label %if.end74.1.for.inc88.1_crit_edge [
    i8 -125, label %sw.bb.1
    i8 -124, label %sw.bb82.1
  ]

if.end74.1.for.inc88.1_crit_edge:                 ; preds = %if.end74.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc88.1

sw.bb82.1:                                        ; preds = %if.end74.1
  %tobool83.not.1 = icmp eq ptr %device_name.1, null
  br i1 %tobool83.not.1, label %if.then84.1, label %sw.bb82.1.for.inc88.1_crit_edge

sw.bb82.1.for.inc88.1_crit_edge:                  ; preds = %sw.bb82.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc88.1

if.then84.1:                                      ; preds = %sw.bb82.1
  call void @__sanitizer_cov_trace_pc() #16
  %call86.1 = call noalias ptr @kstrdup(ptr noundef %arrayidx85, i32 noundef 3072) #14
  br label %for.inc88.1

sw.bb.1:                                          ; preds = %if.end74.1
  %tobool77.not.1 = icmp eq ptr %firmware_ver.1, null
  br i1 %tobool77.not.1, label %if.then78.1, label %sw.bb.1.for.inc88.1_crit_edge

sw.bb.1.for.inc88.1_crit_edge:                    ; preds = %sw.bb.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc88.1

if.then78.1:                                      ; preds = %sw.bb.1
  call void @__sanitizer_cov_trace_pc() #16
  %call80.1 = call noalias ptr @kstrdup(ptr noundef %arrayidx85, i32 noundef 3072) #14
  br label %for.inc88.1

for.inc88.1:                                      ; preds = %if.then78.1, %sw.bb.1.for.inc88.1_crit_edge, %if.then84.1, %sw.bb82.1.for.inc88.1_crit_edge, %if.end74.1.for.inc88.1_crit_edge, %lor.lhs.false68.1.for.inc88.1_crit_edge, %lor.lhs.false65.1.for.inc88.1_crit_edge, %for.inc88.for.inc88.1_crit_edge
  %firmware_ver.1.1 = phi ptr [ %firmware_ver.1, %for.inc88.for.inc88.1_crit_edge ], [ %firmware_ver.1, %lor.lhs.false65.1.for.inc88.1_crit_edge ], [ %firmware_ver.1, %lor.lhs.false68.1.for.inc88.1_crit_edge ], [ %firmware_ver.1, %if.end74.1.for.inc88.1_crit_edge ], [ %firmware_ver.1, %sw.bb82.1.for.inc88.1_crit_edge ], [ %firmware_ver.1, %if.then84.1 ], [ %firmware_ver.1, %sw.bb.1.for.inc88.1_crit_edge ], [ %call80.1, %if.then78.1 ]
  %device_name.1.1 = phi ptr [ %device_name.1, %for.inc88.for.inc88.1_crit_edge ], [ %device_name.1, %lor.lhs.false65.1.for.inc88.1_crit_edge ], [ %device_name.1, %lor.lhs.false68.1.for.inc88.1_crit_edge ], [ %device_name.1, %if.end74.1.for.inc88.1_crit_edge ], [ %device_name.1, %sw.bb82.1.for.inc88.1_crit_edge ], [ %call86.1, %if.then84.1 ], [ %device_name.1, %sw.bb.1.for.inc88.1_crit_edge ], [ %device_name.1, %if.then78.1 ]
  %51 = call ptr @memset(ptr %call7.i, i32 0, i32 1024)
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr.i, align 8
  %shl.i155.2 = shl i32 %53, 8
  %or.i157.2 = or i32 %shl1.i, %shl.i155.2
  %or61.2 = or i32 %or.i157.2, -1073741696
  %call62.2 = call i32 @usb_bulk_msg(ptr noundef %add.ptr.i, i32 noundef %or61.2, ptr noundef nonnull %call7.i, i32 noundef 1024, ptr noundef nonnull %actual_len, i32 noundef 5000) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.2)
  %cmp63.2 = icmp slt i32 %call62.2, 0
  br i1 %cmp63.2, label %for.inc88.1.for.inc88.2_crit_edge, label %lor.lhs.false65.2

for.inc88.1.for.inc88.2_crit_edge:                ; preds = %for.inc88.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc88.2

lor.lhs.false65.2:                                ; preds = %for.inc88.1
  %54 = ptrtoint ptr %actual_len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %actual_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp66.2 = icmp slt i32 %55, 1
  br i1 %cmp66.2, label %lor.lhs.false65.2.for.inc88.2_crit_edge, label %lor.lhs.false68.2

lor.lhs.false65.2.for.inc88.2_crit_edge:          ; preds = %lor.lhs.false65.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc88.2

lor.lhs.false68.2:                                ; preds = %lor.lhs.false65.2
  %56 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx69, align 1
  %conv70.2 = zext i8 %57 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %conv70.2)
  %cmp71.not.2 = icmp eq i32 %55, %conv70.2
  br i1 %cmp71.not.2, label %if.end74.2, label %lor.lhs.false68.2.for.inc88.2_crit_edge

lor.lhs.false68.2.for.inc88.2_crit_edge:          ; preds = %lor.lhs.false68.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc88.2

if.end74.2:                                       ; preds = %lor.lhs.false68.2
  %58 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %call7.i, align 8
  %60 = zext i8 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %59, label %if.end74.2.for.inc88.2_crit_edge [
    i8 -125, label %sw.bb.2
    i8 -124, label %sw.bb82.2
  ]

if.end74.2.for.inc88.2_crit_edge:                 ; preds = %if.end74.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc88.2

sw.bb82.2:                                        ; preds = %if.end74.2
  %tobool83.not.2 = icmp eq ptr %device_name.1.1, null
  br i1 %tobool83.not.2, label %if.then84.2, label %sw.bb82.2.for.inc88.2_crit_edge

sw.bb82.2.for.inc88.2_crit_edge:                  ; preds = %sw.bb82.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc88.2

if.then84.2:                                      ; preds = %sw.bb82.2
  call void @__sanitizer_cov_trace_pc() #16
  %call86.2 = call noalias ptr @kstrdup(ptr noundef %arrayidx85, i32 noundef 3072) #14
  br label %for.inc88.2

sw.bb.2:                                          ; preds = %if.end74.2
  %tobool77.not.2 = icmp eq ptr %firmware_ver.1.1, null
  br i1 %tobool77.not.2, label %if.then78.2, label %sw.bb.2.for.inc88.2_crit_edge

sw.bb.2.for.inc88.2_crit_edge:                    ; preds = %sw.bb.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc88.2

if.then78.2:                                      ; preds = %sw.bb.2
  call void @__sanitizer_cov_trace_pc() #16
  %call80.2 = call noalias ptr @kstrdup(ptr noundef %arrayidx85, i32 noundef 3072) #14
  br label %for.inc88.2

for.inc88.2:                                      ; preds = %if.then78.2, %sw.bb.2.for.inc88.2_crit_edge, %if.then84.2, %sw.bb82.2.for.inc88.2_crit_edge, %if.end74.2.for.inc88.2_crit_edge, %lor.lhs.false68.2.for.inc88.2_crit_edge, %lor.lhs.false65.2.for.inc88.2_crit_edge, %for.inc88.1.for.inc88.2_crit_edge
  %firmware_ver.1.2 = phi ptr [ %firmware_ver.1.1, %for.inc88.1.for.inc88.2_crit_edge ], [ %firmware_ver.1.1, %lor.lhs.false65.2.for.inc88.2_crit_edge ], [ %firmware_ver.1.1, %lor.lhs.false68.2.for.inc88.2_crit_edge ], [ %firmware_ver.1.1, %if.end74.2.for.inc88.2_crit_edge ], [ %firmware_ver.1.1, %sw.bb82.2.for.inc88.2_crit_edge ], [ %firmware_ver.1.1, %if.then84.2 ], [ %firmware_ver.1.1, %sw.bb.2.for.inc88.2_crit_edge ], [ %call80.2, %if.then78.2 ]
  %device_name.1.2 = phi ptr [ %device_name.1.1, %for.inc88.1.for.inc88.2_crit_edge ], [ %device_name.1.1, %lor.lhs.false65.2.for.inc88.2_crit_edge ], [ %device_name.1.1, %lor.lhs.false68.2.for.inc88.2_crit_edge ], [ %device_name.1.1, %if.end74.2.for.inc88.2_crit_edge ], [ %device_name.1.1, %sw.bb82.2.for.inc88.2_crit_edge ], [ %call86.2, %if.then84.2 ], [ %device_name.1.1, %sw.bb.2.for.inc88.2_crit_edge ], [ %device_name.1.1, %if.then78.2 ]
  %call91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %device_name.1.2, ptr noundef %firmware_ver.1.2) #19
  call void @kfree(ptr noundef %firmware_ver.1.2) #14
  call void @kfree(ptr noundef %device_name.1.2) #14
  %61 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %7, align 4
  %63 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr.i, align 8
  %shl.i158 = shl i32 %64, 8
  %or.i160 = or i32 %shl1.i153, %shl.i158
  %or93 = or i32 %or.i160, -1073741824
  %ack_buf = getelementptr inbounds %struct.nexio_priv, ptr %7, i32 0, i32 1
  %65 = ptrtoint ptr %ack_buf to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ack_buf, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %62, i32 0, i32 8
  %67 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %62, i32 0, i32 10
  %68 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or93, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %62, i32 0, i32 14
  %69 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %62, i32 0, i32 19
  %70 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 2, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %62, i32 0, i32 28
  %71 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @nexio_ack_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %62, i32 0, i32 27
  %72 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %usbtouch, ptr %context4.i, align 4
  br label %out_buf

out_buf:                                          ; preds = %for.inc88.2, %for.cond34.1.out_buf_crit_edge, %for.cond34.out_buf_crit_edge, %for.cond34.preheader.out_buf_crit_edge, %if.end29.out_buf_crit_edge
  %ret.0 = phi i32 [ %call50, %for.cond34.1.out_buf_crit_edge ], [ 0, %for.inc88.2 ], [ -12, %if.end29.out_buf_crit_edge ], [ %call40, %for.cond34.preheader.out_buf_crit_edge ], [ %call40.1, %for.cond34.out_buf_crit_edge ]
  call void @kfree(ptr noundef %call7.i) #14
  br label %cleanup

cleanup:                                          ; preds = %out_buf, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_buf ], [ -6, %for.end.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nexio_exit(ptr nocapture noundef readonly %usbtouch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.usbtouch_usb, ptr %usbtouch, i32 0, i32 13
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #14
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @usb_free_urb(ptr noundef %5) #14
  %ack_buf = getelementptr inbounds %struct.nexio_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %ack_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ack_buf, align 4
  tail call void @kfree(ptr noundef %7) #14
  tail call void @kfree(ptr noundef %1) #14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @elo_read_data(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readonly %pkt) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %pkt, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx1 = getelementptr i8, ptr %pkt, i32 2
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %or = or i32 %shl, %conv2
  %x = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %x, align 4
  %arrayidx3 = getelementptr i8, ptr %pkt, i32 5
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %6 to i32
  %shl5 = shl nuw nsw i32 %conv4, 8
  %arrayidx6 = getelementptr i8, ptr %pkt, i32 4
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %8 to i32
  %or8 = or i32 %shl5, %conv7
  %y = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 15
  %9 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or8, ptr %y, align 4
  %arrayidx9 = getelementptr i8, ptr %pkt, i32 6
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp = icmp ne i8 %11, 0
  %conv11 = zext i1 %cmp to i32
  %touch = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 16
  %12 = ptrtoint ptr %touch to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv11, ptr %touch, align 4
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx9, align 1
  %conv13 = zext i8 %14 to i32
  %press = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 17
  %15 = ptrtoint ptr %press to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv13, ptr %press, align 4
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @etouch_get_pkt_len(ptr nocapture noundef readonly %buf, i32 noundef %len) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  %2 = and i8 %1, -2
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %2, label %sw.epilog [
    i8 -128, label %entry.return_crit_edge
    i8 -80, label %entry.return_crit_edge6
    i8 10, label %sw.bb1
  ]

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %cmp = icmp slt i32 %len, 2
  br i1 %cmp, label %sw.bb1.return_crit_edge, label %if.end

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx3 = getelementptr i8, ptr %buf, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %add = add nuw nsw i32 %conv4, 2
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

return:                                           ; preds = %sw.epilog, %if.end, %sw.bb1.return_crit_edge, %entry.return_crit_edge, %entry.return_crit_edge6
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %add, %if.end ], [ 5, %entry.return_crit_edge ], [ 5, %entry.return_crit_edge6 ], [ -1, %sw.bb1.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @etouch_read_data(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readonly %pkt) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pkt, align 1
  %2 = and i8 %1, -2
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %2, label %entry.return_crit_edge [
    i8 -128, label %entry.if.end_crit_edge
    i8 -80, label %entry.if.end_crit_edge32
  ]

entry.if.end_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge32
  %arrayidx7 = getelementptr i8, ptr %pkt, i32 1
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7, align 1
  %6 = and i8 %5, 31
  %and9 = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %and9, 7
  %arrayidx10 = getelementptr i8, ptr %pkt, i32 2
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx10, align 1
  %9 = and i8 %8, 127
  %and12 = zext i8 %9 to i32
  %or = or i32 %shl, %and12
  %x = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 14
  %10 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or, ptr %x, align 4
  %arrayidx13 = getelementptr i8, ptr %pkt, i32 3
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx13, align 1
  %13 = and i8 %12, 31
  %and15 = zext i8 %13 to i32
  %shl16 = shl nuw nsw i32 %and15, 7
  %arrayidx17 = getelementptr i8, ptr %pkt, i32 4
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx17, align 1
  %16 = and i8 %15, 127
  %and19 = zext i8 %16 to i32
  %or20 = or i32 %shl16, %and19
  %y = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 15
  %17 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or20, ptr %y, align 4
  %18 = ptrtoint ptr %pkt to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pkt, align 1
  %20 = and i8 %19, 1
  %and23 = zext i8 %20 to i32
  %touch = getelementptr inbounds %struct.usbtouch_usb, ptr %dev, i32 0, i32 16
  %21 = ptrtoint ptr %touch to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and23, ptr %touch, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtouch_firmware_rev_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %output) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv1 = getelementptr inbounds %struct.usbtouch_usb, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %conv = zext i8 %5 to i32
  %fw_rev_minor = getelementptr inbounds %struct.mtouch_priv, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %fw_rev_minor to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fw_rev_minor, align 1
  %conv2 = zext i8 %7 to i32
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %output, i32 noundef 4096, ptr noundef nonnull @.str.15, i32 noundef %conv, i32 noundef %conv2) #14
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nexio_ack_complete(ptr nocapture noundef %urb) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !20, !22, !24, !26, !28, !30, !31, !32, !33, !35, !37, !38, !40, !41, !42, !43, !45, !47, !49, !51, !52, !54, !55, !57, !58, !60, !61, !62, !63, !64, !66, !68, !70, !72, !73, !75, !77, !78, !79, !81, !82, !84, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !118, !119, !120, !121, !123, !125, !127, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !142, !144, !145}
!llvm.module.flags = !{!147, !148, !149, !150, !151, !152, !153, !154}
!llvm.ident = !{!155}

!0 = !{ptr @__param_swap_xy, !1, !"__param_swap_xy", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 47, i32 1}
!2 = !{ptr @__UNIQUE_ID_swap_xytype232, !1, !"__UNIQUE_ID_swap_xytype232", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_swap_xy233, !4, !"__UNIQUE_ID_swap_xy233", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 48, i32 1}
!5 = !{ptr @__param_hwcalib_xy, !6, !"__param_hwcalib_xy", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 51, i32 1}
!7 = !{ptr @__UNIQUE_ID_hwcalib_xytype234, !6, !"__UNIQUE_ID_hwcalib_xytype234", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_hwcalib_xy235, !9, !"__UNIQUE_ID_hwcalib_xy235", i1 false, i1 false}
!9 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 52, i32 1}
!10 = !{ptr @__initcall__kmod_usbtouchscreen__255_1854_usbtouch_driver_init6, !11, !"__initcall__kmod_usbtouchscreen__255_1854_usbtouch_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 1854, i32 1}
!12 = !{ptr @__exitcall_usbtouch_driver_exit, !11, !"__exitcall_usbtouch_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author256, !14, !"__UNIQUE_ID_author256", i1 false, i1 false}
!14 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 1856, i32 1}
!15 = !{ptr @__UNIQUE_ID_description257, !16, !"__UNIQUE_ID_description257", i1 false, i1 false}
!16 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 1857, i32 1}
!17 = !{ptr @__UNIQUE_ID_file258, !18, !"__UNIQUE_ID_file258", i1 false, i1 false}
!18 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 1858, i32 1}
!19 = !{ptr @__UNIQUE_ID_license259, !18, !"__UNIQUE_ID_license259", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_alias260, !21, !"__UNIQUE_ID_alias260", i1 false, i1 false}
!21 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 1860, i32 1}
!22 = !{ptr @__UNIQUE_ID_alias261, !23, !"__UNIQUE_ID_alias261", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 1861, i32 1}
!24 = !{ptr @__UNIQUE_ID_alias262, !25, !"__UNIQUE_ID_alias262", i1 false, i1 false}
!25 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 1862, i32 1}
!26 = !{ptr @swap_xy, !27, !"swap_xy", i1 false, i1 false}
!27 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 46, i32 13}
!28 = !{ptr @hwcalib_xy, !29, !"hwcalib_xy", i1 false, i1 false}
!29 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 50, i32 13}
!30 = !{ptr @__param_str_swap_xy, !1, !"__param_str_swap_xy", i1 false, i1 false}
!31 = !{ptr @__param_str_hwcalib_xy, !6, !"__param_str_hwcalib_xy", i1 false, i1 false}
!32 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @usbtouch_driver, !34, !"usbtouch_driver", i1 false, i1 false}
!34 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 1843, i32 26}
!35 = !{ptr @usbtouch_probe.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 1666, i32 2}
!37 = !{ptr @.str.1, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.2, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 1699, i32 3}
!40 = !{ptr @.str.3, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @usbtouch_probe.__UNIQUE_ID_ddebug250, !39, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!43 = !{ptr @.str.5, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 1712, i32 28}
!45 = !{ptr @.str.6, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 1718, i32 4}
!47 = !{ptr @.str.7, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 1723, i32 26}
!49 = !{ptr @.str.8, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 1762, i32 4}
!51 = !{ptr @usbtouch_probe.__UNIQUE_ID_ddebug251, !50, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!52 = !{ptr @.str.9, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 1773, i32 4}
!54 = !{ptr @usbtouch_probe.__UNIQUE_ID_ddebug252, !53, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!55 = !{ptr @.str.10, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 1782, i32 3}
!57 = !{ptr @usbtouch_probe.__UNIQUE_ID_ddebug253, !56, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!58 = !{ptr @.str.11, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 1796, i32 4}
!60 = !{ptr @.str.12, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.13, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @usbtouch_probe._entry, !59, !"_entry", i1 false, i1 false}
!63 = !{ptr @usbtouch_probe._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @usbtouch_dev_info, !65, !"usbtouch_dev_info", i1 false, i1 false}
!65 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 1159, i32 36}
!66 = !{ptr @mtouch_attr_group, !67, !"mtouch_attr_group", i1 false, i1 false}
!67 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 469, i32 37}
!68 = !{ptr @mtouch_attrs, !69, !"mtouch_attrs", i1 false, i1 false}
!69 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 464, i32 26}
!70 = !{ptr @.str.14, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 462, i32 8}
!72 = !{ptr @dev_attr_firmware_rev, !71, !"dev_attr_firmware_rev", i1 false, i1 false}
!73 = !{ptr @.str.15, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 459, i32 38}
!75 = !{ptr @.str.16, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 538, i32 2}
!77 = !{ptr @.str.17, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @mtouch_init.__UNIQUE_ID_ddebug237, !76, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!79 = !{ptr @.str.18, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 550, i32 3}
!81 = !{ptr @mtouch_init.__UNIQUE_ID_ddebug238, !80, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!82 = !{ptr @.str.19, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 490, i32 3}
!84 = !{ptr @.str.20, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.21, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @mtouch_get_fw_revision._entry, !83, !"_entry", i1 false, i1 false}
!87 = !{ptr @mtouch_get_fw_revision._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.22, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 258, i32 2}
!90 = !{ptr @.str.23, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @e2i_init.__UNIQUE_ID_ddebug236, !89, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!92 = !{ptr @.str.24, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 867, i32 3}
!94 = !{ptr @.str.25, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @zytronic_read_data.__UNIQUE_ID_ddebug239, !93, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!96 = !{ptr @.str.26, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 874, i32 3}
!98 = !{ptr @zytronic_read_data.__UNIQUE_ID_ddebug240, !97, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!99 = !{ptr @.str.27, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 881, i32 3}
!101 = !{ptr @zytronic_read_data.__UNIQUE_ID_ddebug241, !100, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!102 = !{ptr @.str.28, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 885, i32 3}
!104 = !{ptr @zytronic_read_data.__UNIQUE_ID_ddebug242, !103, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!105 = !{ptr @.str.29, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 1067, i32 3}
!107 = !{ptr @.str.30, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @nexio_read_data._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @nexio_read_data._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.31, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 940, i32 3}
!112 = !{ptr @.str.32, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @nexio_alloc.__UNIQUE_ID_ddebug243, !111, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!114 = !{ptr @nexio_ack_pkt, !115, !"nexio_ack_pkt", i1 false, i1 false}
!115 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 915, i32 22}
!116 = !{ptr @.str.33, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 1019, i32 2}
!118 = !{ptr @.str.34, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @nexio_init._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @nexio_init._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = distinct !{null, !122, !"nexio_init_pkt", i1 false, i1 false}
!122 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 916, i32 22}
!123 = !{ptr @.str.35, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../include/linux/usb.h", i32 912, i32 31}
!125 = !{ptr @.str.36, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 1502, i32 3}
!127 = !{ptr @.str.37, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @usbtouch_irq.__UNIQUE_ID_ddebug244, !126, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!129 = !{ptr @.str.38, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 1511, i32 3}
!131 = !{ptr @usbtouch_irq.__UNIQUE_ID_ddebug245, !130, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!132 = !{ptr @.str.39, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 1515, i32 3}
!134 = !{ptr @usbtouch_irq.__UNIQUE_ID_ddebug246, !133, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!135 = !{ptr @usbtouch_irq._entry, !136, !"_entry", i1 false, i1 false}
!136 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 1526, i32 3}
!137 = !{ptr @usbtouch_irq._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.40, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 1828, i32 2}
!140 = !{ptr @.str.41, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @usbtouch_disconnect.__UNIQUE_ID_ddebug254, !139, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!142 = !{ptr @.str.42, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 1607, i32 4}
!144 = !{ptr @usbtouch_reset_resume.__UNIQUE_ID_ddebug247, !143, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!145 = !{ptr @usbtouch_devices, !146, !"usbtouch_devices", i1 false, i1 false}
!146 = !{!"../drivers/input/touchscreen/usbtouchscreen.c", i32 140, i32 35}
!147 = !{i32 1, !"wchar_size", i32 2}
!148 = !{i32 1, !"min_enum_size", i32 4}
!149 = !{i32 8, !"branch-target-enforcement", i32 0}
!150 = !{i32 8, !"sign-return-address", i32 0}
!151 = !{i32 8, !"sign-return-address-all", i32 0}
!152 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!153 = !{i32 7, !"uwtable", i32 1}
!154 = !{i32 7, !"frame-pointer", i32 2}
!155 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!156 = !{i64 2148735883, i64 2148735888, i64 2148735901, i64 2148735945, i64 2148735979, i64 2148736000}
!157 = !{i8 0, i8 2}
!158 = !{!"branch_weights", i32 2000, i32 1}
!159 = !{!"branch_weights", i32 1, i32 2000}
!160 = !{!"auto-init"}
