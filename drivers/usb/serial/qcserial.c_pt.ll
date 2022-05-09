; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/qcserial.c_pt.bc'
source_filename = "../drivers/usb/serial/qcserial.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.usb_serial_driver = type { ptr, ptr, %struct.list_head, %struct.device_driver, ptr, %struct.usb_dynids, i8, i8, i8, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_serial = type { ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, [16 x ptr], %struct.kref, %struct.mutex, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_wwan_intf_private = type { %struct.spinlock, i8, i32, i32, ptr }

@__initcall__kmod_qcserial__253_481_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @qcdevice, ptr null], [24 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author254 = internal constant [29 x i8] c"qcserial.author=Qualcomm Inc\00", section ".modinfo", align 1
@__UNIQUE_ID_description255 = internal constant [48 x i8] c"qcserial.description=Qualcomm USB Serial driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file256 = internal constant [42 x i8] c"qcserial.file=drivers/usb/serial/qcserial\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [24 x i8] c"qcserial.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qcserial\00", [23 x i8] zeroinitializer }, align 32
@id_table = internal constant { [140 x %struct.usb_device_id], [832 x i8] } { [140 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1478, i16 -28143, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1478, i16 -28142, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1008, i16 7965, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1008, i16 8221, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1242, i16 9485, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1242, i16 9484, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 16700, i16 -32398, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 16700, i16 -32399, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 5136, i16 -24575, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 5136, i16 -24574, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 5136, i16 -24573, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 5136, i16 -24572, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 5136, i16 -24571, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 5136, i16 -24570, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 5136, i16 -24569, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 5136, i16 -24568, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2821, i16 6006, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2821, i16 6004, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 6610, i16 -13, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 6610, i16 -14, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 5463, i16 2688, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1478, i16 -28671, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1478, i16 -28670, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1478, i16 -28158, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1478, i16 -28157, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1478, i16 -28126, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1478, i16 -28664, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1478, i16 -28663, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1478, i16 -28159, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1478, i16 -28127, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1478, i16 -28111, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 8005, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 7111, i16 -28658, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 5136, i16 -24560, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5136, i16 -24559, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5136, i16 -24558, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5136, i16 -24557, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5136, i16 -24556, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 16700, i16 -32379, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 16700, i16 -32378, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1478, i16 -28152, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1478, i16 -28149, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1478, i16 -28124, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1478, i16 -28123, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1478, i16 -28092, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1478, i16 -28091, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1008, i16 9245, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1008, i16 9501, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1478, i16 -28140, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1478, i16 -28139, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1478, i16 -28060, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1478, i16 -28059, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1478, i16 -28108, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1478, i16 -28107, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1478, i16 -28044, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1478, i16 -28043, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28672, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28671, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28670, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28669, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28668, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28667, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28666, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28665, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28664, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28663, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28662, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28655, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5848, i16 -32767, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5848, i16 -32766, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1478, i16 -28156, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1478, i16 -28155, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1008, i16 14109, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1478, i16 -28148, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1478, i16 -28147, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5136, i16 -24544, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5136, i16 -24543, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 16700, i16 -32365, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 16700, i16 -32364, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 16700, i16 -32346, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26788, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26789, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26792, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26793, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28656, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28654, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28653, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28652, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28651, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28648, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28647, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28645, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4817, i16 5360, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4817, i16 5361, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2800, i16 -32480, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1008, i16 19997, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 3901, i16 26786, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4431, i16 26786, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4505, i16 26786, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4505, i16 26816, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28644, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28642, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28641, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28608, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28607, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28591, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28589, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28588, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28587, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28586, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28576, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28575, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28574, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28573, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28560, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28559, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28552, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28551, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28550, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28549, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28528, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28527, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4505, i16 -28462, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 16700, i16 -32350, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 16700, i16 -32349, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 16700, i16 -32348, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 16700, i16 -32344, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 16700, i16 -32343, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 16700, i16 -32335, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 16700, i16 -32333, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 16700, i16 -32331, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 16700, i16 -32330, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 16700, i16 -32309, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 16700, i16 -32308, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 16700, i16 -32305, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 16700, i16 -32304, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 16700, i16 -32303, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 16700, i16 -32302, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1008, i16 22557, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id zeroinitializer], [832 x i8] zeroinitializer }, align 32
@qcdevice = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.1, ptr @id_table, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 1, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr @qcprobe, ptr @qc_attach, ptr null, ptr null, ptr @qc_release, ptr @usb_wwan_port_probe, ptr @usb_wwan_port_remove, ptr @usb_wwan_suspend, ptr @usb_wwan_resume, ptr null, ptr @usb_wwan_open, ptr @usb_wwan_close, ptr @usb_wwan_write, ptr @usb_wwan_write_room, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usb_wwan_chars_in_buffer, ptr null, ptr null, ptr null, ptr null, ptr @usb_wwan_tiocmget, ptr @usb_wwan_tiocmset, ptr null, ptr null, ptr @usb_wwan_dtr_rts, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Qualcomm USB modem\00", [45 x i8] zeroinitializer }, align 32
@qcprobe.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qcprobe\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/usb/serial/qcserial.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Num Interfaces = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@qcprobe.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"This Interface = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@qcprobe.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 0, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"QDL port found\0A\00", [16 x i8] zeroinitializer }, align 32
@qcprobe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 283, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unknown number of interfaces: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcprobe._entry_ptr = internal global ptr @qcprobe._entry, section ".printk_index", align 4
@qcprobe.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.10, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Gobi 1K DM/DIAG interface found\0A\00", [63 x i8] zeroinitializer }, align 32
@qcprobe.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.11, i8 0, i8 73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Modem port found\0A\00", [46 x i8] zeroinitializer }, align 32
@qcprobe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 311, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@qcprobe._entry_ptr.13 = internal global ptr @qcprobe._entry.12, section ".printk_index", align 4
@qcprobe.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.14, i8 0, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Gobi 2K+ DM/DIAG interface found\0A\00", [62 x i8] zeroinitializer }, align 32
@qcprobe.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.11, i8 0, i8 81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@qcprobe.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.15, i8 0, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Gobi 2K+ NMEA GPS interface found\0A\00", [61 x i8] zeroinitializer }, align 32
@qcprobe.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.16, i8 0, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DM/DIAG interface found\0A\00", [39 x i8] zeroinitializer }, align 32
@qcprobe.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.17, i8 0, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"NMEA GPS interface found\0A\00", [38 x i8] zeroinitializer }, align 32
@qcprobe.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.11, i8 0, i8 88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@qcprobe.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.18, i8 0, i8 99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Huawei type serial port found (%02x/%02x/%02x)\0A\00", [48 x i8] zeroinitializer }, align 32
@qcprobe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 401, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unsupported device layout type: %lu\0A\00", [59 x i8] zeroinitializer }, align 32
@qcprobe._entry_ptr.21 = internal global ptr @qcprobe._entry.19, section ".printk_index", align 4
@qcprobe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 411, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Could not set interface, error %d\0A\00", [61 x i8] zeroinitializer }, align 32
@qcprobe._entry_ptr.24 = internal global ptr @qcprobe._entry.22, section ".printk_index", align 4
@handle_quectel_ec20.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"handle_quectel_ec20\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Quectel EC20 DM/DIAG interface found\0A\00", [58 x i8] zeroinitializer }, align 32
@handle_quectel_ec20.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.3, ptr @.str.27, i8 0, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Quectel EC20 NMEA GPS interface found\0A\00", [57 x i8] zeroinitializer }, align 32
@handle_quectel_ec20.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.3, ptr @.str.28, i8 0, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Quectel EC20 Modem port found\0A\00", [33 x i8] zeroinitializer }, align 32
@qc_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&data->susp_lock\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [14 x i64] [i64 12, i64 8, i64 7, i64 8, i64 9, i64 22, i64 55, i64 56, i64 57, i64 70, i64 103, i64 104, i64 105, i64 118]
@__sancov_gen_cov_switch_values.34 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.35 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 477, i32 41 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 481, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 38, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant [9 x i8] c"qcdevice\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 450, i32 33 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 455, i32 25 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 239, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 241, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 254, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 283, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 289, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 292, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 311, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 322, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 333, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 347, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 350, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 393, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 400, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 409, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 206, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 209, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 213, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private constant [33 x i8] c"../drivers/usb/serial/qcserial.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 435, i32 2 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description255, ptr @__UNIQUE_ID_file256, ptr @__UNIQUE_ID_license257, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_qcserial__253_481_usb_serial_module_init6, ptr @qcprobe._entry, ptr @qcprobe._entry.12, ptr @qcprobe._entry.19, ptr @qcprobe._entry.22, ptr @qcprobe._entry_ptr, ptr @qcprobe._entry_ptr.13, ptr @qcprobe._entry_ptr.21, ptr @qcprobe._entry_ptr.24, ptr @usb_serial_module_exit, ptr @serial_drivers, ptr @.str, ptr @id_table, ptr @qcdevice, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @qc_attach.__key, ptr @.str.29], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 3360, i32 4192, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcdevice to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcprobe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcprobe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcprobe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcprobe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qc_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_serial_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_serial_register_drivers(ptr noundef nonnull @serial_drivers, ptr noundef nonnull @.str, ptr noundef nonnull @id_table) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_serial_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_serial_deregister_drivers(ptr noundef nonnull @serial_drivers) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_deregister_drivers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_register_drivers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcprobe(ptr nocapture noundef %serial, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %4 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serial, align 4
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  %bInterfaceClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %bInterfaceClass to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bInterfaceClass, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp.not = icmp eq i8 %7, -1
  br i1 %cmp.not, label %if.end, label %entry.if.end330_crit_edge

entry.if.end330_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end330

if.end:                                           ; preds = %entry
  %actconfig = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 20
  %8 = ptrtoint ptr %actconfig to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %actconfig, align 4
  %bNumInterfaces = getelementptr inbounds %struct.usb_config_descriptor, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %bNumInterfaces to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bNumInterfaces, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcprobe.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcprobe, %if.then9)) #5
          to label %do.end [label %if.then9], !srcloc !94

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv10 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcprobe.__UNIQUE_ID_ddebug241, ptr noundef %dev2, ptr noundef nonnull @.str.4, i32 noundef %conv10) #5
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bInterfaceNumber, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcprobe.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcprobe, %if.then25)) #5
          to label %do.end29 [label %if.then25], !srcloc !94

if.then25:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv26 = zext i8 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcprobe.__UNIQUE_ID_ddebug242, ptr noundef %dev2, ptr noundef nonnull @.str.5, i32 noundef %conv26) #5
  br label %do.end29

do.end29:                                         ; preds = %if.then25, %do.end
  %conv30 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp31 = icmp eq i8 %11, 1
  br i1 %cmp31, label %if.then33, label %if.end87

if.then33:                                        ; preds = %do.end29
  %14 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %interface, align 4
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_altsetting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp35 = icmp eq i32 %17, 2
  br i1 %cmp35, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  %call39 = tail call ptr @usb_altnum_to_altsetting(ptr noundef %15, i32 noundef 1) #5
  br label %if.end46

if.else:                                          ; preds = %if.then33
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp42 = icmp ugt i32 %17, 2
  br i1 %cmp42, label %if.else.if.end330_crit_edge, label %if.else.if.end46_crit_edge

if.else.if.end46_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.else.if.end330_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end330

if.end46:                                         ; preds = %if.else.if.end46_crit_edge, %if.then37
  %intf.0 = phi ptr [ %call39, %if.then37 ], [ %3, %if.else.if.end46_crit_edge ]
  %tobool47.not = icmp eq ptr %intf.0, null
  br i1 %tobool47.not, label %if.end46.if.end330_crit_edge, label %land.lhs.true

if.end46.if.end330_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end330

land.lhs.true:                                    ; preds = %if.end46
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %intf.0, i32 0, i32 4
  %18 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %cmp50 = icmp eq i8 %19, 2
  br i1 %cmp50, label %land.lhs.true52, label %land.lhs.true.if.end330_crit_edge

land.lhs.true.if.end330_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end330

land.lhs.true52:                                  ; preds = %land.lhs.true
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %intf.0, i32 0, i32 3
  %20 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %endpoint, align 4
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bmAttributes.i.i, align 1
  %24 = and i8 %23, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %cmp.i.not.i = icmp eq i8 %24, 2
  br i1 %cmp.i.not.i, label %usb_endpoint_is_bulk_in.exit, label %land.lhs.true52.if.end330_crit_edge

land.lhs.true52.if.end330_crit_edge:              ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end330

usb_endpoint_is_bulk_in.exit:                     ; preds = %land.lhs.true52
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %21, i32 0, i32 2
  %25 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %tobool55.not = icmp sgt i8 %26, -1
  br i1 %tobool55.not, label %usb_endpoint_is_bulk_in.exit.if.end330_crit_edge, label %land.lhs.true56

usb_endpoint_is_bulk_in.exit.if.end330_crit_edge: ; preds = %usb_endpoint_is_bulk_in.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end330

land.lhs.true56:                                  ; preds = %usb_endpoint_is_bulk_in.exit
  %bmAttributes.i.i419 = getelementptr %struct.usb_host_endpoint, ptr %21, i32 1, i32 0, i32 3
  %27 = ptrtoint ptr %bmAttributes.i.i419 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bmAttributes.i.i419, align 1
  %29 = and i8 %28, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %cmp.i.not.i420 = icmp eq i8 %29, 2
  br i1 %cmp.i.not.i420, label %usb_endpoint_is_bulk_out.exit, label %land.lhs.true56.if.end330_crit_edge

land.lhs.true56.if.end330_crit_edge:              ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end330

usb_endpoint_is_bulk_out.exit:                    ; preds = %land.lhs.true56
  %bEndpointAddress.i.i421 = getelementptr %struct.usb_host_endpoint, ptr %21, i32 1, i32 0, i32 2
  %30 = ptrtoint ptr %bEndpointAddress.i.i421 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bEndpointAddress.i.i421, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool61.not = icmp slt i8 %31, 0
  br i1 %tobool61.not, label %usb_endpoint_is_bulk_out.exit.if.end330_crit_edge, label %do.body63

usb_endpoint_is_bulk_out.exit.if.end330_crit_edge: ; preds = %usb_endpoint_is_bulk_out.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end330

do.body63:                                        ; preds = %usb_endpoint_is_bulk_out.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcprobe.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcprobe, %if.then75)) #5
          to label %do.end78 [label %if.then75], !srcloc !94

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcprobe.__UNIQUE_ID_ddebug243, ptr noundef %dev2, ptr noundef nonnull @.str.6) #5
  br label %do.end78

do.end78:                                         ; preds = %if.then75, %do.body63
  %32 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %interface, align 4
  %num_altsetting80 = getelementptr inbounds %struct.usb_interface, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %num_altsetting80 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_altsetting80, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp81 = icmp eq i32 %35, 1
  br i1 %cmp81, label %do.end78.if.then327_crit_edge, label %do.end78.if.then314_crit_edge

do.end78.if.then314_crit_edge:                    ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then314

do.end78.if.then327_crit_edge:                    ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then327

if.end87:                                         ; preds = %do.end29
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %36 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %driver_info, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i32 %37, label %do.end309 [
    i32 1, label %sw.bb
    i32 0, label %sw.bb144
    i32 2, label %sw.bb222
    i32 3, label %sw.bb276
  ]

sw.bb:                                            ; preds = %if.end87
  %39 = add i8 %11, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %39)
  %40 = icmp ult i8 %39, -2
  br i1 %40, label %do.end97, label %if.end99

do.end97:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.7, i32 noundef %conv30) #8
  br label %if.end330

if.end99:                                         ; preds = %sw.bb
  %41 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %13, label %if.end99.if.end330_crit_edge [
    i8 0, label %do.body104
    i8 2, label %do.body125
  ]

if.end99.if.end330_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end330

do.body104:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcprobe.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcprobe, %if.then116)) #5
          to label %done [label %if.then116], !srcloc !94

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcprobe.__UNIQUE_ID_ddebug244, ptr noundef %dev2, ptr noundef nonnull @.str.10) #5
  br label %if.then314

do.body125:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcprobe.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcprobe, %if.then137)) #5
          to label %done [label %if.then137], !srcloc !94

if.then137:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcprobe.__UNIQUE_ID_ddebug245, ptr noundef %dev2, ptr noundef nonnull @.str.11) #5
  br label %if.then314

sw.bb144:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %11)
  %cmp146 = icmp eq i8 %11, 5
  br i1 %cmp146, label %land.lhs.true148, label %if.end155

land.lhs.true148:                                 ; preds = %sw.bb144
  %idProduct = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 2
  %42 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %idProduct, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28139, i16 %43)
  %cmp150 = icmp eq i16 %43, -28139
  br i1 %cmp150, label %if.then152, label %land.lhs.true148.do.end166_crit_edge

land.lhs.true148.do.end166_crit_edge:             ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end166

if.then152:                                       ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #7
  %conv153 = zext i8 %13 to i32
  %call154 = tail call fastcc i32 @handle_quectel_ec20(ptr noundef %dev2, i32 noundef %conv153)
  br label %done

if.end155:                                        ; preds = %sw.bb144
  %44 = add i8 %11, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %44)
  %45 = icmp ult i8 %44, -2
  br i1 %45, label %if.end155.do.end166_crit_edge, label %if.end168

if.end155.do.end166_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end166

do.end166:                                        ; preds = %if.end155.do.end166_crit_edge, %land.lhs.true148.do.end166_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.7, i32 noundef %conv30) #8
  br label %if.end330

if.end168:                                        ; preds = %if.end155
  %46 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %13, label %if.end168.if.then314_crit_edge [
    i8 0, label %if.end168.if.end330_crit_edge
    i8 1, label %do.body172
    i8 2, label %do.body189
    i8 3, label %do.body206
  ]

if.end168.if.end330_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end330

if.end168.if.then314_crit_edge:                   ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then314

do.body172:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcprobe.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcprobe, %if.then184)) #5
          to label %done [label %if.then184], !srcloc !94

if.then184:                                       ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcprobe.__UNIQUE_ID_ddebug246, ptr noundef %dev2, ptr noundef nonnull @.str.14) #5
  br label %if.then314

do.body189:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcprobe.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcprobe, %if.then201)) #5
          to label %done [label %if.then201], !srcloc !94

if.then201:                                       ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcprobe.__UNIQUE_ID_ddebug247, ptr noundef %dev2, ptr noundef nonnull @.str.11) #5
  br label %if.then314

do.body206:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcprobe.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcprobe, %if.then218)) #5
          to label %done [label %if.then218], !srcloc !94

if.then218:                                       ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcprobe.__UNIQUE_ID_ddebug248, ptr noundef %dev2, ptr noundef nonnull @.str.15) #5
  br label %if.then314

sw.bb222:                                         ; preds = %if.end87
  %47 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %13, label %sw.bb222.if.end330_crit_edge [
    i8 0, label %do.body225
    i8 2, label %do.body242
    i8 3, label %do.body259
  ]

sw.bb222.if.end330_crit_edge:                     ; preds = %sw.bb222
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end330

do.body225:                                       ; preds = %sw.bb222
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcprobe.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcprobe, %if.then237)) #5
          to label %done [label %if.then237], !srcloc !94

if.then237:                                       ; preds = %do.body225
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcprobe.__UNIQUE_ID_ddebug249, ptr noundef %dev2, ptr noundef nonnull @.str.16) #5
  br label %if.then314

do.body242:                                       ; preds = %sw.bb222
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcprobe.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcprobe, %if.then254)) #5
          to label %done [label %if.then254], !srcloc !94

if.then254:                                       ; preds = %do.body242
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcprobe.__UNIQUE_ID_ddebug250, ptr noundef %dev2, ptr noundef nonnull @.str.17) #5
  br label %if.then314

do.body259:                                       ; preds = %sw.bb222
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcprobe.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcprobe, %if.then271)) #5
          to label %done [label %if.then271], !srcloc !94

if.then271:                                       ; preds = %do.body259
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcprobe.__UNIQUE_ID_ddebug251, ptr noundef %dev2, ptr noundef nonnull @.str.11) #5
  br label %if.then314

sw.bb276:                                         ; preds = %if.end87
  %bInterfaceProtocol = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 7
  %48 = ptrtoint ptr %bInterfaceProtocol to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bInterfaceProtocol, align 1
  %50 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %49, label %do.body281 [
    i8 7, label %sw.bb276.if.end330_crit_edge
    i8 55, label %sw.bb276.if.end330_crit_edge470
    i8 103, label %sw.bb276.if.end330_crit_edge471
    i8 8, label %sw.bb276.if.end330_crit_edge472
    i8 56, label %sw.bb276.if.end330_crit_edge473
    i8 104, label %sw.bb276.if.end330_crit_edge474
    i8 9, label %sw.bb276.if.end330_crit_edge475
    i8 57, label %sw.bb276.if.end330_crit_edge476
    i8 105, label %sw.bb276.if.end330_crit_edge477
    i8 22, label %sw.bb276.if.end330_crit_edge478
    i8 70, label %sw.bb276.if.end330_crit_edge479
    i8 118, label %sw.bb276.if.end330_crit_edge480
  ]

sw.bb276.if.end330_crit_edge480:                  ; preds = %sw.bb276
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end330

sw.bb276.if.end330_crit_edge479:                  ; preds = %sw.bb276
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end330

sw.bb276.if.end330_crit_edge478:                  ; preds = %sw.bb276
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end330

sw.bb276.if.end330_crit_edge477:                  ; preds = %sw.bb276
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end330

sw.bb276.if.end330_crit_edge476:                  ; preds = %sw.bb276
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end330

sw.bb276.if.end330_crit_edge475:                  ; preds = %sw.bb276
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end330

sw.bb276.if.end330_crit_edge474:                  ; preds = %sw.bb276
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end330

sw.bb276.if.end330_crit_edge473:                  ; preds = %sw.bb276
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end330

sw.bb276.if.end330_crit_edge472:                  ; preds = %sw.bb276
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end330

sw.bb276.if.end330_crit_edge471:                  ; preds = %sw.bb276
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end330

sw.bb276.if.end330_crit_edge470:                  ; preds = %sw.bb276
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end330

sw.bb276.if.end330_crit_edge:                     ; preds = %sw.bb276
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end330

do.body281:                                       ; preds = %sw.bb276
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcprobe.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcprobe, %if.then293)) #5
          to label %done [label %if.then293], !srcloc !94

if.then293:                                       ; preds = %do.body281
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %bInterfaceClass to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bInterfaceClass, align 1
  %conv296 = zext i8 %52 to i32
  %bInterfaceSubClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 6
  %53 = ptrtoint ptr %bInterfaceSubClass to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bInterfaceSubClass, align 2
  %conv298 = zext i8 %54 to i32
  %55 = ptrtoint ptr %bInterfaceProtocol to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bInterfaceProtocol, align 1
  %conv301 = zext i8 %56 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcprobe.__UNIQUE_ID_ddebug252, ptr noundef %dev2, ptr noundef nonnull @.str.18, i32 noundef %conv296, i32 noundef %conv298, i32 noundef %conv301) #5
  br label %if.then314

do.end309:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.20, i32 noundef %37) #8
  br label %if.then314

done:                                             ; preds = %do.body281, %do.body259, %do.body242, %do.body225, %do.body206, %do.body189, %do.body172, %if.then152, %do.body125, %do.body104
  %sendsetup.0.off0 = phi ptr [ null, %if.then152 ], [ null, %do.body104 ], [ null, %do.body125 ], [ null, %do.body172 ], [ null, %do.body189 ], [ null, %do.body206 ], [ null, %do.body225 ], [ inttoptr (i32 1 to ptr), %do.body242 ], [ inttoptr (i32 1 to ptr), %do.body259 ], [ null, %do.body281 ]
  %altsetting.0 = phi i32 [ %call154, %if.then152 ], [ 1, %do.body104 ], [ 0, %do.body125 ], [ 0, %do.body172 ], [ 0, %do.body189 ], [ 0, %do.body206 ], [ 0, %do.body225 ], [ 0, %do.body242 ], [ 0, %do.body259 ], [ 0, %do.body281 ]
  %ifnum.0 = phi i8 [ %13, %if.then152 ], [ 0, %do.body104 ], [ 2, %do.body125 ], [ 1, %do.body172 ], [ 2, %do.body189 ], [ 3, %do.body206 ], [ 0, %do.body225 ], [ 2, %do.body242 ], [ 3, %do.body259 ], [ %13, %do.body281 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %altsetting.0)
  %cmp312 = icmp sgt i32 %altsetting.0, -1
  br i1 %cmp312, label %done.if.then314_crit_edge, label %done.if.end330_crit_edge

done.if.end330_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end330

done.if.then314_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then314

if.then314:                                       ; preds = %done.if.then314_crit_edge, %do.end309, %if.then293, %if.then271, %if.then254, %if.then237, %if.then218, %if.then201, %if.then184, %if.end168.if.then314_crit_edge, %if.then137, %if.then116, %do.end78.if.then314_crit_edge
  %ifnum.0456 = phi i8 [ %ifnum.0, %done.if.then314_crit_edge ], [ %13, %do.end309 ], [ %13, %if.then293 ], [ 0, %if.then237 ], [ %13, %if.end168.if.then314_crit_edge ], [ 3, %if.then218 ], [ 2, %if.then201 ], [ 1, %if.then184 ], [ 2, %if.then137 ], [ %13, %do.end78.if.then314_crit_edge ], [ 0, %if.then116 ], [ 2, %if.then254 ], [ 3, %if.then271 ]
  %altsetting.0455 = phi i32 [ %altsetting.0, %done.if.then314_crit_edge ], [ 0, %do.end309 ], [ 0, %if.then293 ], [ 0, %if.then237 ], [ 0, %if.end168.if.then314_crit_edge ], [ 0, %if.then218 ], [ 0, %if.then201 ], [ 0, %if.then184 ], [ 0, %if.then137 ], [ 1, %do.end78.if.then314_crit_edge ], [ 1, %if.then116 ], [ 0, %if.then254 ], [ 0, %if.then271 ]
  %sendsetup.0.off0454 = phi ptr [ %sendsetup.0.off0, %done.if.then314_crit_edge ], [ null, %do.end309 ], [ null, %if.then293 ], [ null, %if.then237 ], [ null, %if.end168.if.then314_crit_edge ], [ null, %if.then218 ], [ null, %if.then201 ], [ null, %if.then184 ], [ null, %if.then137 ], [ null, %do.end78.if.then314_crit_edge ], [ null, %if.then116 ], [ inttoptr (i32 1 to ptr), %if.then254 ], [ inttoptr (i32 1 to ptr), %if.then271 ]
  %57 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %serial, align 4
  %conv316 = zext i8 %ifnum.0456 to i32
  %call317 = tail call i32 @usb_set_interface(ptr noundef %58, i32 noundef %conv316, i32 noundef %altsetting.0455) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call317)
  %cmp318 = icmp slt i32 %call317, 0
  br i1 %cmp318, label %do.end323, label %if.end325

do.end323:                                        ; preds = %if.then314
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.23, i32 noundef %call317) #8
  br label %if.end330

if.end325:                                        ; preds = %if.then314
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call317)
  %tobool326.not = icmp eq i32 %call317, 0
  br i1 %tobool326.not, label %if.end325.if.then327_crit_edge, label %if.end325.if.end330_crit_edge

if.end325.if.end330_crit_edge:                    ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end330

if.end325.if.then327_crit_edge:                   ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then327

if.then327:                                       ; preds = %if.end325.if.then327_crit_edge, %do.end78.if.then327_crit_edge
  %sendsetup.0.off0445469 = phi ptr [ %sendsetup.0.off0454, %if.end325.if.then327_crit_edge ], [ null, %do.end78.if.then327_crit_edge ]
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %59 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %sendsetup.0.off0445469, ptr %private.i, align 4
  br label %if.end330

if.end330:                                        ; preds = %if.then327, %if.end325.if.end330_crit_edge, %do.end323, %done.if.end330_crit_edge, %sw.bb276.if.end330_crit_edge, %sw.bb276.if.end330_crit_edge470, %sw.bb276.if.end330_crit_edge471, %sw.bb276.if.end330_crit_edge472, %sw.bb276.if.end330_crit_edge473, %sw.bb276.if.end330_crit_edge474, %sw.bb276.if.end330_crit_edge475, %sw.bb276.if.end330_crit_edge476, %sw.bb276.if.end330_crit_edge477, %sw.bb276.if.end330_crit_edge478, %sw.bb276.if.end330_crit_edge479, %sw.bb276.if.end330_crit_edge480, %sw.bb222.if.end330_crit_edge, %if.end168.if.end330_crit_edge, %do.end166, %if.end99.if.end330_crit_edge, %do.end97, %usb_endpoint_is_bulk_out.exit.if.end330_crit_edge, %land.lhs.true56.if.end330_crit_edge, %usb_endpoint_is_bulk_in.exit.if.end330_crit_edge, %land.lhs.true52.if.end330_crit_edge, %land.lhs.true.if.end330_crit_edge, %if.end46.if.end330_crit_edge, %if.else.if.end330_crit_edge, %entry.if.end330_crit_edge
  %retval3.1460 = phi i32 [ 0, %if.then327 ], [ %call317, %if.end325.if.end330_crit_edge ], [ -19, %done.if.end330_crit_edge ], [ -19, %do.end323 ], [ -19, %sw.bb276.if.end330_crit_edge ], [ -19, %sw.bb276.if.end330_crit_edge470 ], [ -19, %sw.bb276.if.end330_crit_edge471 ], [ -19, %sw.bb276.if.end330_crit_edge472 ], [ -19, %sw.bb276.if.end330_crit_edge473 ], [ -19, %sw.bb276.if.end330_crit_edge474 ], [ -19, %sw.bb276.if.end330_crit_edge475 ], [ -19, %sw.bb276.if.end330_crit_edge476 ], [ -19, %sw.bb276.if.end330_crit_edge477 ], [ -19, %sw.bb276.if.end330_crit_edge478 ], [ -19, %sw.bb276.if.end330_crit_edge479 ], [ -19, %sw.bb276.if.end330_crit_edge480 ], [ -19, %sw.bb222.if.end330_crit_edge ], [ -19, %if.end99.if.end330_crit_edge ], [ -19, %do.end97 ], [ -19, %do.end166 ], [ -19, %if.else.if.end330_crit_edge ], [ -19, %if.end46.if.end330_crit_edge ], [ -19, %land.lhs.true.if.end330_crit_edge ], [ -19, %usb_endpoint_is_bulk_in.exit.if.end330_crit_edge ], [ -19, %usb_endpoint_is_bulk_out.exit.if.end330_crit_edge ], [ -19, %entry.if.end330_crit_edge ], [ -19, %land.lhs.true52.if.end330_crit_edge ], [ -19, %land.lhs.true56.if.end330_crit_edge ], [ -19, %if.end168.if.end330_crit_edge ]
  ret i32 %retval3.1460
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qc_attach(ptr nocapture noundef %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 60) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %1 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private.i, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %if.end.do.body_crit_edge, label %if.then5

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %use_send_setup = getelementptr inbounds %struct.usb_wwan_intf_private, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %use_send_setup to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %use_send_setup, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %use_send_setup, align 4
  br label %do.body

do.body:                                          ; preds = %if.then5, %if.end.do.body_crit_edge
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @qc_attach.__key, i16 noundef signext 3) #5
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %private.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qc_release(ptr nocapture noundef %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  store ptr null, ptr %private.i, align 4
  tail call void @kfree(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_wwan_port_probe(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_wwan_port_remove(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_wwan_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_wwan_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_wwan_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_wwan_close(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_wwan_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_wwan_write_room(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_wwan_chars_in_buffer(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_wwan_tiocmget(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_wwan_tiocmset(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_wwan_dtr_rts(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_altnum_to_altsetting(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @handle_quectel_ec20(ptr noundef %dev, i32 noundef %ifnum) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %ifnum to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %ifnum, label %entry.sw.epilog_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body4
    i32 2, label %entry.do.body21_crit_edge
    i32 3, label %entry.do.body21_crit_edge49
    i32 4, label %sw.bb37
  ]

entry.do.body21_crit_edge49:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body21

entry.do.body21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body21

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_quectel_ec20.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_quectel_ec20, %if.then)) #5
          to label %sw.epilog [label %if.then], !srcloc !94

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_quectel_ec20.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.26) #5
  br label %sw.epilog

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_quectel_ec20.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_quectel_ec20, %if.then16)) #5
          to label %sw.epilog [label %if.then16], !srcloc !94

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_quectel_ec20.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.27) #5
  br label %sw.epilog

do.body21:                                        ; preds = %entry.do.body21_crit_edge, %entry.do.body21_crit_edge49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_quectel_ec20.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_quectel_ec20, %if.then33)) #5
          to label %sw.epilog [label %if.then33], !srcloc !94

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_quectel_ec20.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.28) #5
  br label %sw.epilog

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb37, %if.then33, %do.body21, %if.then16, %do.body4, %if.then, %do.body, %entry.sw.epilog_crit_edge
  %altsetting.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ -1, %sw.bb37 ], [ 0, %if.then33 ], [ 0, %if.then16 ], [ 0, %if.then ], [ 0, %do.body ], [ 0, %do.body4 ], [ 0, %do.body21 ]
  ret i32 %altsetting.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !26, !27, !29, !30, !32, !33, !34, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !52, !53, !55, !56, !58, !59, !61, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !81, !82, !84}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__initcall__kmod_qcserial__253_481_usb_serial_module_init6, !1, !"__initcall__kmod_qcserial__253_481_usb_serial_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/qcserial.c", i32 481, i32 1}
!2 = !{ptr @__exitcall_usb_serial_module_exit, !1, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author254, !4, !"__UNIQUE_ID_author254", i1 false, i1 false}
!4 = !{!"../drivers/usb/serial/qcserial.c", i32 483, i32 1}
!5 = !{ptr @__UNIQUE_ID_description255, !6, !"__UNIQUE_ID_description255", i1 false, i1 false}
!6 = !{!"../drivers/usb/serial/qcserial.c", i32 484, i32 1}
!7 = !{ptr @__UNIQUE_ID_file256, !8, !"__UNIQUE_ID_file256", i1 false, i1 false}
!8 = !{!"../drivers/usb/serial/qcserial.c", i32 485, i32 1}
!9 = !{ptr @__UNIQUE_ID_license257, !8, !"__UNIQUE_ID_license257", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @id_table, !12, !"id_table", i1 false, i1 false}
!12 = !{!"../drivers/usb/serial/qcserial.c", i32 38, i32 35}
!13 = !{ptr @serial_drivers, !14, !"serial_drivers", i1 false, i1 false}
!14 = !{!"../drivers/usb/serial/qcserial.c", i32 477, i32 41}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/serial/qcserial.c", i32 455, i32 25}
!17 = !{ptr @qcdevice, !18, !"qcdevice", i1 false, i1 false}
!18 = !{!"../drivers/usb/serial/qcserial.c", i32 450, i32 33}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/serial/qcserial.c", i32 239, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @qcprobe.__UNIQUE_ID_ddebug241, !20, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/serial/qcserial.c", i32 241, i32 2}
!26 = !{ptr @qcprobe.__UNIQUE_ID_ddebug242, !25, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/serial/qcserial.c", i32 254, i32 4}
!29 = !{ptr @qcprobe.__UNIQUE_ID_ddebug243, !28, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/serial/qcserial.c", i32 283, i32 4}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @qcprobe._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @qcprobe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/serial/qcserial.c", i32 289, i32 4}
!38 = !{ptr @qcprobe.__UNIQUE_ID_ddebug244, !37, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/serial/qcserial.c", i32 292, i32 4}
!41 = !{ptr @qcprobe.__UNIQUE_ID_ddebug245, !40, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!42 = !{ptr @qcprobe._entry.12, !43, !"_entry", i1 false, i1 false}
!43 = !{!"../drivers/usb/serial/qcserial.c", i32 311, i32 4}
!44 = !{ptr @qcprobe._entry_ptr.13, !43, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/serial/qcserial.c", i32 322, i32 4}
!47 = !{ptr @qcprobe.__UNIQUE_ID_ddebug246, !46, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!48 = !{ptr @qcprobe.__UNIQUE_ID_ddebug247, !49, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!49 = !{!"../drivers/usb/serial/qcserial.c", i32 325, i32 4}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/serial/qcserial.c", i32 333, i32 4}
!52 = !{ptr @qcprobe.__UNIQUE_ID_ddebug248, !51, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/serial/qcserial.c", i32 347, i32 4}
!55 = !{ptr @qcprobe.__UNIQUE_ID_ddebug249, !54, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/serial/qcserial.c", i32 350, i32 4}
!58 = !{ptr @qcprobe.__UNIQUE_ID_ddebug250, !57, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!59 = !{ptr @qcprobe.__UNIQUE_ID_ddebug251, !60, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!60 = !{!"../drivers/usb/serial/qcserial.c", i32 354, i32 4}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/serial/qcserial.c", i32 393, i32 4}
!63 = !{ptr @qcprobe.__UNIQUE_ID_ddebug252, !62, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!64 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/serial/qcserial.c", i32 400, i32 3}
!66 = !{ptr @qcprobe._entry.19, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @qcprobe._entry_ptr.21, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/serial/qcserial.c", i32 409, i32 4}
!70 = !{ptr @qcprobe._entry.22, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @qcprobe._entry_ptr.24, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/serial/qcserial.c", i32 206, i32 3}
!74 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @handle_quectel_ec20.__UNIQUE_ID_ddebug238, !73, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/serial/qcserial.c", i32 209, i32 3}
!78 = !{ptr @handle_quectel_ec20.__UNIQUE_ID_ddebug239, !77, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/serial/qcserial.c", i32 213, i32 3}
!81 = !{ptr @handle_quectel_ec20.__UNIQUE_ID_ddebug240, !80, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!82 = !{ptr @qc_attach.__key, !83, !"__key", i1 false, i1 false}
!83 = !{!"../drivers/usb/serial/qcserial.c", i32 435, i32 2}
!84 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i64 2148510684, i64 2148510689, i64 2148510702, i64 2148510746, i64 2148510780, i64 2148510801}
