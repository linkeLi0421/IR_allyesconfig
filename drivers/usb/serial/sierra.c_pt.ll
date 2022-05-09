; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/sierra.c_pt.bc'
source_filename = "../drivers/usb/serial/sierra.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.sierra_iface_list = type { ptr, i32 }
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.sierra_port_private = type { %struct.spinlock, i32, %struct.usb_anchor, %struct.usb_anchor, i32, i32, [8 x ptr], i32, i32, i32, i32, i32, i32 }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.usb_serial_port = type { ptr, %struct.tty_port, %struct.spinlock, i32, i8, ptr, ptr, i8, ptr, i32, ptr, i8, ptr, i32, ptr, i8, [2 x ptr], [2 x ptr], i32, ptr, i32, ptr, %struct.kfifo, [2 x ptr], [2 x ptr], i32, i8, %struct.async_icount, i32, i32, %struct.work_struct, i32, %struct.device }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.kfifo = type { %union.anon.70, [0 x i8] }
%union.anon.70 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.async_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sierra_intf_private = type { %struct.spinlock, i8, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }

@__initcall__kmod_sierra__259_1053_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @sierra_device, ptr null], [24 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author260 = internal constant [68 x i8] c"sierra.author=Kevin Lloyd, Elina Pasheva, Matthew Safar, Rory Filer\00", section ".modinfo", align 1
@__UNIQUE_ID_description261 = internal constant [61 x i8] c"sierra.description=USB Driver for Sierra Wireless USB modems\00", section ".modinfo", align 1
@__UNIQUE_ID_file262 = internal constant [38 x i8] c"sierra.file=drivers/usb/serial/sierra\00", section ".modinfo", align 1
@__UNIQUE_ID_license263 = internal constant [22 x i8] c"sierra.license=GPL v2\00", section ".modinfo", align 1
@__param_str_nmea = internal constant [12 x i8] c"sierra.nmea\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nmea = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_nmea = internal constant %struct.kernel_param { ptr @__param_str_nmea, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @nmea } }, section "__param", align 4
@__UNIQUE_ID_nmeatype264 = internal constant [26 x i8] c"sierra.parmtype=nmea:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nmea265 = internal constant [32 x i8] c"sierra.parm=nmea:NMEA streaming\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sierra\00", [25 x i8] zeroinitializer }, align 32
@id_table = internal constant { [66 x %struct.usb_device_id], [400 x i8] } { [66 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 3901, i16 274, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1008, i16 6941, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1008, i16 8477, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1008, i16 7709, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 23, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 24, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 536, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 32, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 544, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 34, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 36, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 548, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 25, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 33, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 274, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 288, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 769, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 4505, i16 35, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 4505, i16 37, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 38, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 39, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 40, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 41, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26626, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26627, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26628, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26629, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26632, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26633, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26642, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26643, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26645, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26646, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26656, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26657, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26658, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26674, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26675, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26676, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26677, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26680, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26681, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26682, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26683, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26684, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26685, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26686, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26704, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26705, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26706, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26707, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26709, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26710, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26713, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26714, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 4505, i16 26752, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 4505, i16 26768, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 4505, i16 26769, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 4505, i16 26770, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4505, i16 26771, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 4505, i16 26787, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 0, i32 ptrtoint (ptr @direct_ip_interface_ignore to i32) }, %struct.usb_device_id { i16 899, i16 4505, i16 26794, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 0, i32 ptrtoint (ptr @direct_ip_interface_ignore to i32) }, %struct.usb_device_id { i16 3, i16 4505, i16 26795, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 3901, i16 26794, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 0, i32 ptrtoint (ptr @direct_ip_interface_ignore to i32) }, %struct.usb_device_id { i16 899, i16 3901, i16 26787, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 0, i32 ptrtoint (ptr @direct_ip_interface_ignore to i32) }, %struct.usb_device_id zeroinitializer], [400 x i8] zeroinitializer }, align 32
@direct_ip_interface_ignore = internal constant { %struct.sierra_iface_list, [24 x i8] } { %struct.sierra_iface_list { ptr @direct_ip_non_serial_ifaces, i32 7 }, [24 x i8] zeroinitializer }, align 32
@direct_ip_non_serial_ifaces = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\07\08\09\0A\0B\13\14", [25 x i8] zeroinitializer }, align 32
@sierra_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.1, ptr @id_table, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr @sierra_probe, ptr @sierra_startup, ptr @sierra_calc_num_ports, ptr null, ptr @sierra_release, ptr @sierra_port_probe, ptr @sierra_port_remove, ptr @sierra_suspend, ptr @sierra_resume, ptr null, ptr @sierra_open, ptr @sierra_close, ptr @sierra_write, ptr @sierra_write_room, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sierra_chars_in_buffer, ptr null, ptr null, ptr null, ptr null, ptr @sierra_tiocmget, ptr @sierra_tiocmset, ptr null, ptr null, ptr @sierra_dtr_rts, ptr null, ptr null, ptr @sierra_instat_callback, ptr null, ptr null, ptr null, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Sierra USB modem\00", [47 x i8] zeroinitializer }, align 32
@sierra_probe.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sierra_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/serial/sierra.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Selecting alt setting for interface %d\0A\00", [56 x i8] zeroinitializer }, align 32
@sierra_probe.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Ignoring interface #%d\0A\00", [40 x i8] zeroinitializer }, align 32
@sierra_startup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&intfdata->susp_lock\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sierra_port_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&portdata->lock\00", [16 x i8] zeroinitializer }, align 32
@typeB_interface_list = internal constant { %struct.sierra_iface_list, [24 x i8] } { %struct.sierra_iface_list { ptr @hi_memory_typeB_ifaces, i32 4 }, [24 x i8] zeroinitializer }, align 32
@typeA_interface_list = internal constant { %struct.sierra_iface_list, [24 x i8] } { %struct.sierra_iface_list { ptr @hi_memory_typeA_ifaces, i32 2 }, [24 x i8] zeroinitializer }, align 32
@sierra_port_probe.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.3, ptr @.str.9, i8 0, i8 -32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sierra_port_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Memory usage (urbs) interface #%d, in=%d, out=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@hi_memory_typeB_ifaces = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\03\04\05\06", [28 x i8] zeroinitializer }, align 32
@hi_memory_typeA_ifaces = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\02", [30 x i8] zeroinitializer }, align 32
@sierra_submit_delayed_urbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 971, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s - submit urb failed: %d\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sierra_submit_delayed_urbs\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sierra_submit_delayed_urbs._entry_ptr = internal global ptr @sierra_submit_delayed_urbs._entry, section ".printk_index", align 4
@sierra_submit_rx_urbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 679, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: submit urb failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sierra_submit_rx_urbs\00", [42 x i8] zeroinitializer }, align 32
@sierra_submit_rx_urbs._entry_ptr = internal global ptr @sierra_submit_rx_urbs._entry, section ".printk_index", align 4
@sierra_submit_rx_urbs._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 689, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: submit intr urb failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@sierra_submit_rx_urbs._entry_ptr.21 = internal global ptr @sierra_submit_rx_urbs._entry.19, section ".printk_index", align 4
@sierra_setup_urb.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 -77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sierra_setup_urb\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s %c u : %p d:%p\0A\00", [45 x i8] zeroinitializer }, align 32
@sierra_indat_callback.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 -122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sierra_indat_callback\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: nonzero status: %d on endpoint %02x\0A\00", [55 x i8] zeroinitializer }, align 32
@sierra_indat_callback.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.3, ptr @.str.26, i8 0, i8 -120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: empty read urb received\0A\00", [35 x i8] zeroinitializer }, align 32
@sierra_indat_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.24, ptr @.str.3, i32 557, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"resubmit read urb failed.(%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@sierra_indat_callback._entry_ptr = internal global ptr @sierra_indat_callback._entry, section ".printk_index", align 4
@usb_serial_debug_data.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.29, ptr @.str.30, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb_serial_debug_data\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/usb/serial.h\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - length = %d, data = %*ph\0A\00", [33 x i8] zeroinitializer }, align 32
@sierra_write.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.3, ptr @.str.32, i8 0, i8 108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sierra_write\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: write (%zd bytes)\0A\00", [41 x i8] zeroinitializer }, align 32
@sierra_write.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.3, ptr @.str.33, i8 0, i8 109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s - outstanding_urbs: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@sierra_write.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.3, ptr @.str.34, i8 0, i8 110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s - write limit hit\0A\00", [42 x i8] zeroinitializer }, align 32
@sierra_write.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.3, ptr @.str.35, i8 0, i8 111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s - 1, outstanding_urbs: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@sierra_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.3, i32 495, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s - usb_submit_urb(write bulk) failed with status = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@sierra_write._entry_ptr = internal global ptr @sierra_write._entry, section ".printk_index", align 4
@sierra_write.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.3, ptr @.str.37, i8 0, i8 -127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s - 2. outstanding_urbs: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@sierra_outdat_callback.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.3, ptr @.str.39, i8 0, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sierra_outdat_callback\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s - nonzero write bulk status received: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@sierra_write_room.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.34, i8 0, i8 -100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sierra_write_room\00", [46 x i8] zeroinitializer }, align 32
@sierra_chars_in_buffer.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 0, i8 -95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sierra_chars_in_buffer\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s - %u\0A\00", [23 x i8] zeroinitializer }, align 32
@sierra_instat_callback.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.3, ptr @.str.44, i8 0, i8 -114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sierra_instat_callback\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: urb %p port %p has data %p\0A\00", [32 x i8] zeroinitializer }, align 32
@sierra_instat_callback.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.3, ptr @.str.45, i8 0, i8 -112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: NULL req_pkt\0A\00", [46 x i8] zeroinitializer }, align 32
@sierra_instat_callback.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.3, ptr @.str.46, i8 0, i8 -109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: signal x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@sierra_instat_callback.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.3, ptr @.str.47, i8 0, i8 -106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: type %x req %x\0A\00", [44 x i8] zeroinitializer }, align 32
@sierra_instat_callback.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.3, ptr @.str.48, i8 0, i8 -105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: error %d\0A\00", [18 x i8] zeroinitializer }, align 32
@sierra_instat_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.43, ptr @.str.3, i32 612, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: resubmit intr urb failed. (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@sierra_instat_callback._entry_ptr = internal global ptr @sierra_instat_callback._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967188, i64 4294967294]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 4294967188, i64 4294967295]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.53 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1049, i32 41 }
@___asan_gen_.56 = private unnamed_addr constant [5 x i8] c"nmea\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 46, i32 13 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1053, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 175, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant [27 x i8] c"direct_ip_interface_ignore\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 170, i32 39 }
@___asan_gen_.68 = private unnamed_addr constant [28 x i8] c"direct_ip_non_serial_ifaces\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 169, i32 17 }
@___asan_gen_.71 = private unnamed_addr constant [14 x i8] c"sierra_device\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1023, i32 33 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1028, i32 23 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 139, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 148, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 836, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 869, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [21 x i8] c"typeB_interface_list\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 163, i32 39 }
@___asan_gen_.104 = private unnamed_addr constant [21 x i8] c"typeA_interface_list\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 157, i32 39 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 895, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 1367, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 1368, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [23 x i8] c"hi_memory_typeB_ifaces\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 162, i32 17 }
@___asan_gen_.128 = private unnamed_addr constant [23 x i8] c"hi_memory_typeA_ifaces\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 156, i32 17 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 970, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 678, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 688, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 718, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 535, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 546, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 556, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant [30 x i8] c"../include/linux/usb/serial.h\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 393, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 434, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 436, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 440, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 444, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 494, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 515, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 401, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 627, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 647, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 569, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 576, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 587, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 599, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 604, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.252 = private constant [31 x i8] c"../drivers/usb/serial/sierra.c\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 611, i32 4 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_author260, ptr @__UNIQUE_ID_description261, ptr @__UNIQUE_ID_file262, ptr @__UNIQUE_ID_license263, ptr @__UNIQUE_ID_nmea265, ptr @__UNIQUE_ID_nmeatype264, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_sierra__259_1053_usb_serial_module_init6, ptr @__param_nmea, ptr @sierra_indat_callback._entry, ptr @sierra_indat_callback._entry_ptr, ptr @sierra_instat_callback._entry, ptr @sierra_instat_callback._entry_ptr, ptr @sierra_submit_delayed_urbs._entry, ptr @sierra_submit_delayed_urbs._entry_ptr, ptr @sierra_submit_rx_urbs._entry, ptr @sierra_submit_rx_urbs._entry.19, ptr @sierra_submit_rx_urbs._entry_ptr, ptr @sierra_submit_rx_urbs._entry_ptr.21, ptr @sierra_write._entry, ptr @sierra_write._entry_ptr, ptr @usb_serial_module_exit, ptr @serial_drivers, ptr @nmea, ptr @.str, ptr @id_table, ptr @direct_ip_interface_ignore, ptr @direct_ip_non_serial_ifaces, ptr @sierra_device, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sierra_startup.__key, ptr @.str.6, ptr @sierra_port_probe.__key, ptr @.str.7, ptr @typeB_interface_list, ptr @typeA_interface_list, ptr @.str.8, ptr @.str.9, ptr @init_usb_anchor.__key, ptr @.str.10, ptr @init_usb_anchor.__key.11, ptr @.str.12, ptr @hi_memory_typeB_ifaces, ptr @hi_memory_typeA_ifaces, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmea to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 1584, i32 1984, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @direct_ip_interface_ignore to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @direct_ip_non_serial_ifaces to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sierra_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sierra_startup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sierra_port_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @typeB_interface_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @typeA_interface_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi_memory_typeB_ifaces to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi_memory_typeA_ifaces to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sierra_submit_delayed_urbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sierra_submit_rx_urbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sierra_submit_rx_urbs._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sierra_indat_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sierra_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sierra_instat_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_serial_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_serial_register_drivers(ptr noundef nonnull @serial_drivers, ptr noundef nonnull @.str, ptr noundef nonnull @id_table) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_serial_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_serial_deregister_drivers(ptr noundef nonnull @serial_drivers) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_deregister_drivers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_register_drivers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sierra_probe(ptr nocapture noundef readonly %serial, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial, align 4
  %interface.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %2 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interface.i, align 4
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_altsetting.i, align 4
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bInterfaceNumber.i, align 2
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_altsetting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp eq i32 %9, 2
  br i1 %cmp, label %do.body, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_probe.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_probe, %if.then4)) #8
          to label %do.end [label %if.then4], !srcloc !159

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev5 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_probe.__UNIQUE_ID_ddebug238, ptr noundef %dev5, ptr noundef nonnull @.str.4, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %conv6 = zext i8 %7 to i32
  %call7 = tail call i32 @usb_set_interface(ptr noundef %1, i32 noundef %conv6, i32 noundef 1) #8
  br label %if.end8

if.end8:                                          ; preds = %do.end, %entry.if.end8_crit_edge
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %10 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %driver_info, align 4
  %12 = inttoptr i32 %11 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.end8.cleanup_crit_edge, label %for.cond.preheader.i

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end8
  %count.i = getelementptr inbounds %struct.sierra_iface_list, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp10.not.i = icmp eq i32 %14, 0
  br i1 %cmp10.not.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %14
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %16, i32 %i.011.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %7)
  %cmp2.i = icmp eq i8 %18, %7
  br i1 %cmp2.i, label %do.body11, label %for.cond.i

do.body11:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_probe.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_probe, %if.then23)) #8
          to label %cleanup [label %if.then23], !srcloc !159

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %serial, align 4
  %dev25 = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  %conv26 = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_probe.__UNIQUE_ID_ddebug239, ptr noundef %dev25, ptr noundef nonnull @.str.5, i32 noundef %conv26) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %do.body11, %for.cond.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then23 ], [ -19, %do.body11 ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %for.cond.preheader.i.cleanup_crit_edge ], [ 0, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sierra_startup(ptr nocapture noundef %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 56) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @sierra_startup.__key, i16 noundef signext 3) #8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %1 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %private.i, align 4
  %2 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serial, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call1.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  %6 = load i8, ptr @nmea, align 1, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %if.then4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %serial, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i12 = shl i32 %10, 8
  %or.i13 = or i32 %shl.i.i12, -2147483648
  %call1.i14 = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or.i13, i8 noundef zeroext 7, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then4 ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sierra_calc_num_ports(ptr nocapture noundef readonly %serial, ptr nocapture noundef readnone %epds) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -103, i8 %5)
  %cmp = icmp eq i8 %5, -103
  br i1 %cmp, label %entry.if.end11_crit_edge, label %if.else

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.else:                                          ; preds = %entry
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %cmp6 = icmp ult i8 %7, 4
  br i1 %cmp6, label %if.else.if.end11_crit_edge, label %if.else9

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i8 %7, -1
  %div141516 = lshr i8 %sub, 1
  %div14.zext = zext i8 %div141516 to i32
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.else.if.end11_crit_edge, %entry.if.end11_crit_edge
  %num_ports.0 = phi i32 [ %div14.zext, %if.else9 ], [ 0, %entry.if.end11_crit_edge ], [ 1, %if.else.if.end11_crit_edge ]
  ret i32 %num_ports.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sierra_release(ptr nocapture noundef readonly %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sierra_port_probe(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 336) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @sierra_port_probe.__key, i16 noundef signext 3) #8
  %active = getelementptr inbounds %struct.sierra_port_private, ptr %call7.i.i, i32 0, i32 2
  %3 = getelementptr inbounds %struct.sierra_port_private, ptr %call7.i.i, i32 0, i32 2, i32 1
  %4 = call ptr @memset(ptr %3, i32 0, i32 104)
  %5 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %active, ptr %active, align 8
  %prev.i.i = getelementptr inbounds %struct.sierra_port_private, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %active, ptr %prev.i.i, align 4
  tail call void @__init_waitqueue_head(ptr noundef %3, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_usb_anchor.__key) #8
  %lock.i = getelementptr inbounds %struct.sierra_port_private, ptr %call7.i.i, i32 0, i32 2, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_usb_anchor.__key.11, i16 noundef signext 3) #8
  %delayed = getelementptr inbounds %struct.sierra_port_private, ptr %call7.i.i, i32 0, i32 3
  %7 = getelementptr inbounds %struct.sierra_port_private, ptr %call7.i.i, i32 0, i32 3, i32 1
  %8 = call ptr @memset(ptr %7, i32 0, i32 104)
  %9 = ptrtoint ptr %delayed to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %delayed, ptr %delayed, align 8
  %prev.i.i42 = getelementptr inbounds %struct.sierra_port_private, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i42 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %delayed, ptr %prev.i.i42, align 4
  tail call void @__init_waitqueue_head(ptr noundef %7, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_usb_anchor.__key) #8
  %lock.i44 = getelementptr inbounds %struct.sierra_port_private, ptr %call7.i.i, i32 0, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i44, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_usb_anchor.__key.11, i16 noundef signext 3) #8
  %num_out_urbs = getelementptr inbounds %struct.sierra_port_private, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %num_out_urbs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %num_out_urbs, align 8
  %num_in_urbs = getelementptr inbounds %struct.sierra_port_private, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %num_in_urbs to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %num_in_urbs, align 4
  %num_ports = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_ports, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp = icmp eq i8 %14, 1
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %interface.i = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %interface.i, align 4
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cur_altsetting.i, align 4
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %18, i32 0, i32 2
  br label %if.end6

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %himemory_list.0 = phi ptr [ @typeB_interface_list, %if.then4 ], [ @typeA_interface_list, %if.else ]
  %ifnum.0.in = phi ptr [ %bInterfaceNumber.i, %if.then4 ], [ %port_number, %if.else ]
  %19 = ptrtoint ptr %ifnum.0.in to i32
  call void @__asan_load1_noabort(i32 %19)
  %ifnum.0 = load i8, ptr %ifnum.0.in, align 2
  %count.i = getelementptr inbounds %struct.sierra_iface_list, ptr %himemory_list.0, i32 0, i32 1
  %20 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp10.not.i = icmp eq i32 %21, 0
  br i1 %cmp10.not.i, label %if.end6.do.body12_crit_edge, label %for.body.lr.ph.i

if.end6.do.body12_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12

for.body.lr.ph.i:                                 ; preds = %if.end6
  %22 = ptrtoint ptr %himemory_list.0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %himemory_list.0, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %21
  br i1 %exitcond.not.i, label %for.cond.i.do.body12_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.do.body12_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %23, i32 %i.011.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %ifnum.0)
  %cmp2.i = icmp eq i8 %25, %ifnum.0
  br i1 %cmp2.i, label %if.then8, label %for.cond.i

if.then8:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %num_out_urbs to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 64, ptr %num_out_urbs, align 8
  %27 = ptrtoint ptr %num_in_urbs to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 8, ptr %num_in_urbs, align 4
  br label %do.body12

do.body12:                                        ; preds = %if.then8, %for.cond.i.do.body12_crit_edge, %if.end6.do.body12_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_port_probe.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_port_probe, %if.then17)) #8
          to label %do.end23 [label %if.then17], !srcloc !159

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv18 = zext i8 %ifnum.0 to i32
  %28 = ptrtoint ptr %num_in_urbs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_in_urbs, align 4
  %30 = ptrtoint ptr %num_out_urbs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_out_urbs, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_port_probe.__UNIQUE_ID_ddebug258, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %conv18, i32 noundef %29, i32 noundef %31) #8
  br label %do.end23

do.end23:                                         ; preds = %if.then17, %do.body12
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %32 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end23 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sierra_port_remove(ptr nocapture noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sierra_suspend(ptr nocapture noundef readonly %serial, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %message.coerce.fca.0.extract = extractvalue [1 x i32] %message.coerce, 0
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #8
  %and = and i32 %message.coerce.fca.0.extract, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %entry
  %in_flight = getelementptr inbounds %struct.sierra_intf_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %in_flight to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %in_flight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then.if.end3_crit_edge, label %if.then1

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #8
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %suspended = getelementptr inbounds %struct.sierra_intf_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %suspended, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %suspended, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #8
  %num_ports.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 6
  %5 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num_ports.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp9.not.i = icmp eq i8 %6, 0
  br i1 %cmp9.not.i, label %if.end3.cleanup_crit_edge, label %if.end3.for.body.i_crit_edge

if.end3.for.body.i_crit_edge:                     ; preds = %if.end3
  br label %for.body.i

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end3.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end3.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.usb_serial, ptr %serial, i32 0, i32 12, i32 %i.010.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %8, i32 0, i32 32, i32 8
  %9 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %num_in_urbs.i.i = getelementptr inbounds %struct.sierra_port_private, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %num_in_urbs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_in_urbs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp5.i.i = icmp sgt i32 %12, 0
  br i1 %cmp5.i.i, label %if.end.i.for.body.i.i_crit_edge, label %if.end.i.sierra_stop_rx_urbs.exit.i_crit_edge

if.end.i.sierra_stop_rx_urbs.exit.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sierra_stop_rx_urbs.exit.i

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %i.06.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.sierra_port_private, ptr %10, i32 0, i32 6, i32 %i.06.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @usb_kill_urb(ptr noundef %14) #8
  %inc.i.i = add nuw nsw i32 %i.06.i.i, 1
  %15 = ptrtoint ptr %num_in_urbs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_in_urbs.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %16
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.sierra_stop_rx_urbs.exit.i_crit_edge

for.body.i.i.sierra_stop_rx_urbs.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sierra_stop_rx_urbs.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

sierra_stop_rx_urbs.exit.i:                       ; preds = %for.body.i.i.sierra_stop_rx_urbs.exit.i_crit_edge, %if.end.i.sierra_stop_rx_urbs.exit.i_crit_edge
  %interrupt_in_urb.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %8, i32 0, i32 6
  %17 = ptrtoint ptr %interrupt_in_urb.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %interrupt_in_urb.i.i, align 4
  tail call void @usb_kill_urb(ptr noundef %18) #8
  %active.i = getelementptr inbounds %struct.sierra_port_private, ptr %10, i32 0, i32 2
  tail call void @usb_kill_anchored_urbs(ptr noundef %active.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %sierra_stop_rx_urbs.exit.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %19 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_ports.i, align 1
  %conv.i = zext i8 %20 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then1
  %retval.0 = phi i32 [ -16, %if.then1 ], [ 0, %if.end3.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sierra_resume(ptr nocapture noundef readonly %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #8
  %num_ports = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 6
  %2 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_ports, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp31.not = icmp eq i8 %3, 0
  br i1 %cmp31.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.033 = phi i32 [ %inc13, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %ec.032 = phi i32 [ %ec.2, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.usb_serial, ptr %serial, i32 0, i32 12, i32 %i.033
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %iflags.i = getelementptr inbounds %struct.usb_serial_port, ptr %5, i32 0, i32 1, i32 11
  %6 = ptrtoint ptr %iflags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %iflags.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %5, i32 0, i32 32, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 8
  %private.i.i = getelementptr inbounds %struct.usb_serial, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private.i.i, align 4
  %delayed.i = getelementptr inbounds %struct.sierra_port_private, ptr %9, i32 0, i32 3
  %call232.i = tail call ptr @usb_get_from_anchor(ptr noundef %delayed.i) #8
  %tobool.not33.i = icmp eq ptr %call232.i, null
  br i1 %tobool.not33.i, label %if.end.sierra_submit_delayed_urbs.exit_crit_edge, label %if.end.lr.ph.i

if.end.sierra_submit_delayed_urbs.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sierra_submit_delayed_urbs.exit

if.end.lr.ph.i:                                   ; preds = %if.end
  %active.i = getelementptr inbounds %struct.sierra_port_private, ptr %9, i32 0, i32 2
  %in_flight.i = getelementptr inbounds %struct.sierra_intf_private, ptr %13, i32 0, i32 2
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %5, i32 0, i32 32
  %outstanding_urbs.i = getelementptr inbounds %struct.sierra_port_private, ptr %9, i32 0, i32 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.end10.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %call235.i = phi ptr [ %call232.i, %if.end.lr.ph.i ], [ %call2.i, %if.end10.i.if.end.i_crit_edge ]
  %ec.034.i = phi i32 [ 0, %if.end.lr.ph.i ], [ %ec.1.i, %if.end10.i.if.end.i_crit_edge ]
  tail call void @usb_anchor_urb(ptr noundef nonnull %call235.i, ptr noundef %active.i) #8
  %14 = ptrtoint ptr %in_flight.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %in_flight.i, align 4
  %inc.i = add i32 %15, 1
  store i32 %inc.i, ptr %in_flight.i, align 4
  %call3.i = tail call i32 @usb_submit_urb(ptr noundef nonnull %call235.i, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end10.i_crit_edge, label %do.end.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %call3.i) #12
  %inc6.i = add i32 %ec.034.i, 1
  %16 = ptrtoint ptr %in_flight.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %in_flight.i, align 4
  %dec.i = add i32 %17, -1
  store i32 %dec.i, ptr %in_flight.i, align 4
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call235.i) #8
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %call235.i, i32 0, i32 14
  %18 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %transfer_buffer.i, align 4
  tail call void @kfree(ptr noundef %19) #8
  tail call void @usb_free_urb(ptr noundef nonnull %call235.i) #8
  tail call void @_raw_spin_lock(ptr noundef %9) #8
  %20 = ptrtoint ptr %outstanding_urbs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %outstanding_urbs.i, align 4
  %dec8.i = add i32 %21, -1
  store i32 %dec8.i, ptr %outstanding_urbs.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %9) #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end.i, %if.end.i.if.end10.i_crit_edge
  %ec.1.i = phi i32 [ %inc6.i, %do.end.i ], [ %ec.034.i, %if.end.i.if.end10.i_crit_edge ]
  %call2.i = tail call ptr @usb_get_from_anchor(ptr noundef %delayed.i) #8
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %for.end.i, label %if.end10.i.if.end.i_crit_edge

if.end10.i.if.end.i_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

for.end.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ec.1.i)
  %tobool11.not.i = icmp ne i32 %ec.1.i, 0
  %inc = zext i1 %tobool11.not.i to i32
  %spec.select = add i32 %ec.032, %inc
  br label %sierra_submit_delayed_urbs.exit

sierra_submit_delayed_urbs.exit:                  ; preds = %for.end.i, %if.end.sierra_submit_delayed_urbs.exit_crit_edge
  %22 = phi i32 [ %ec.032, %if.end.sierra_submit_delayed_urbs.exit_crit_edge ], [ %spec.select, %for.end.i ]
  %call8 = tail call fastcc i32 @sierra_submit_rx_urbs(ptr noundef %5, i32 noundef 2592)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp ne i32 %call8, 0
  %inc11 = zext i1 %tobool9.not to i32
  %spec.select27 = add i32 %22, %inc11
  br label %for.inc

for.inc:                                          ; preds = %sierra_submit_delayed_urbs.exit, %for.body.for.inc_crit_edge
  %ec.2 = phi i32 [ %ec.032, %for.body.for.inc_crit_edge ], [ %spec.select27, %sierra_submit_delayed_urbs.exit ]
  %inc13 = add nuw nsw i32 %i.033, 1
  %23 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %num_ports, align 1
  %conv = zext i8 %24 to i32
  %cmp = icmp ult i32 %inc13, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ec.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %ec.2, %for.inc.for.end_crit_edge ]
  %suspended = getelementptr inbounds %struct.sierra_intf_private, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load = load i8, ptr %suspended, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %suspended, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ec.0.lcssa)
  %tobool15.not = icmp eq i32 %ec.0.lcssa, 0
  %spec.select34 = select i1 %tobool15.not, i32 0, i32 -5
  ret i32 %spec.select34
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sierra_open(ptr nocapture noundef readnone %tty, ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %bulk_in_endpointAddress = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 15
  %6 = ptrtoint ptr %bulk_in_endpointAddress to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bulk_in_endpointAddress, align 8
  %conv = zext i8 %7 to i32
  %num_in_urbs = getelementptr inbounds %struct.sierra_port_private, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %num_in_urbs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_in_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp59 = icmp sgt i32 %9, 0
  br i1 %cmp59, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.060 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call4 = tail call fastcc ptr @sierra_setup_urb(ptr noundef %1, i32 noundef %conv, ptr noundef %port)
  %arrayidx = getelementptr %struct.sierra_port_private, ptr %5, i32 0, i32 6, i32 %i.060
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call4, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.060, 1
  %11 = ptrtoint ptr %num_in_urbs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_in_urbs, align 4
  %cmp = icmp slt i32 %inc, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i = shl i32 %16, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or7 = or i32 %or.i, -1073741696
  %call8 = tail call i32 @usb_clear_halt(ptr noundef %14, i32 noundef %or7) #8
  %call9 = tail call fastcc i32 @sierra_submit_rx_urbs(ptr noundef %port, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end, label %err_submit

if.end:                                           ; preds = %for.end
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #8
  %open_ports = getelementptr inbounds %struct.sierra_intf_private, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %open_ports to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %open_ports, align 4
  %inc10 = add i32 %18, 1
  store i32 %inc10, ptr %open_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp11 = icmp eq i32 %18, 0
  br i1 %cmp11, label %if.then13, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %interface = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %interface, align 4
  %needs_remote_wakeup = getelementptr inbounds %struct.usb_interface, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %needs_remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %needs_remote_wakeup, align 8
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %needs_remote_wakeup, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end.if.end14_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %3) #8
  %interface16 = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %interface16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %interface16, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %23) #8
  br label %cleanup

err_submit:                                       ; preds = %for.end
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i, align 4
  %num_in_urbs.i = getelementptr inbounds %struct.sierra_port_private, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %num_in_urbs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_in_urbs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp5.i = icmp sgt i32 %27, 0
  br i1 %cmp5.i, label %err_submit.for.body.i_crit_edge, label %err_submit.sierra_stop_rx_urbs.exit_crit_edge

err_submit.sierra_stop_rx_urbs.exit_crit_edge:    ; preds = %err_submit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sierra_stop_rx_urbs.exit

err_submit.for.body.i_crit_edge:                  ; preds = %err_submit
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %err_submit.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %err_submit.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sierra_port_private, ptr %25, i32 0, i32 6, i32 %i.06.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_kill_urb(ptr noundef %29) #8
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %30 = ptrtoint ptr %num_in_urbs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_in_urbs.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %31
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.sierra_stop_rx_urbs.exit_crit_edge

for.body.i.sierra_stop_rx_urbs.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sierra_stop_rx_urbs.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

sierra_stop_rx_urbs.exit:                         ; preds = %for.body.i.sierra_stop_rx_urbs.exit_crit_edge, %err_submit.sierra_stop_rx_urbs.exit_crit_edge
  %interrupt_in_urb.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %32 = ptrtoint ptr %interrupt_in_urb.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %interrupt_in_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %33) #8
  %34 = ptrtoint ptr %num_in_urbs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_in_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp1961 = icmp sgt i32 %35, 0
  br i1 %cmp1961, label %sierra_stop_rx_urbs.exit.for.body21_crit_edge, label %sierra_stop_rx_urbs.exit.cleanup_crit_edge

sierra_stop_rx_urbs.exit.cleanup_crit_edge:       ; preds = %sierra_stop_rx_urbs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sierra_stop_rx_urbs.exit.for.body21_crit_edge:    ; preds = %sierra_stop_rx_urbs.exit
  br label %for.body21

for.body21:                                       ; preds = %sierra_release_urb.exit.for.body21_crit_edge, %sierra_stop_rx_urbs.exit.for.body21_crit_edge
  %i.162 = phi i32 [ %inc27, %sierra_release_urb.exit.for.body21_crit_edge ], [ 0, %sierra_stop_rx_urbs.exit.for.body21_crit_edge ]
  %arrayidx23 = getelementptr %struct.sierra_port_private, ptr %5, i32 0, i32 6, i32 %i.162
  %36 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx23, align 4
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %for.body21.sierra_release_urb.exit_crit_edge, label %if.then.i

for.body21.sierra_release_urb.exit_crit_edge:     ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sierra_release_urb.exit

if.then.i:                                        ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #10
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 14
  %38 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %transfer_buffer.i, align 4
  tail call void @kfree(ptr noundef %39) #8
  tail call void @usb_free_urb(ptr noundef nonnull %37) #8
  br label %sierra_release_urb.exit

sierra_release_urb.exit:                          ; preds = %if.then.i, %for.body21.sierra_release_urb.exit_crit_edge
  %40 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %arrayidx23, align 4
  %inc27 = add nuw nsw i32 %i.162, 1
  %41 = ptrtoint ptr %num_in_urbs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_in_urbs, align 4
  %cmp19 = icmp slt i32 %inc27, %42
  br i1 %cmp19, label %sierra_release_urb.exit.for.body21_crit_edge, label %sierra_release_urb.exit.cleanup_crit_edge

sierra_release_urb.exit.cleanup_crit_edge:        ; preds = %sierra_release_urb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sierra_release_urb.exit.for.body21_crit_edge:     ; preds = %sierra_release_urb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body21

cleanup:                                          ; preds = %sierra_release_urb.exit.cleanup_crit_edge, %sierra_stop_rx_urbs.exit.cleanup_crit_edge, %if.end14
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sierra_close(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #8
  %open_ports = getelementptr inbounds %struct.sierra_intf_private, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %open_ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %open_ports, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %open_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %interface = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %interface, align 4
  %needs_remote_wakeup = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %needs_remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %needs_remote_wakeup, align 8
  %bf.clear = and i8 %bf.load, -17
  store i8 %bf.clear, ptr %needs_remote_wakeup, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %3) #8
  %delayed = getelementptr inbounds %struct.sierra_port_private, ptr %5, i32 0, i32 3
  %call435 = tail call ptr @usb_get_from_anchor(ptr noundef %delayed) #8
  %tobool.not36 = icmp eq ptr %call435, null
  br i1 %tobool.not36, label %if.end.for.end_crit_edge, label %if.end6.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end6.lr.ph:                                    ; preds = %if.end
  %interface7 = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 2
  %outstanding_urbs = getelementptr inbounds %struct.sierra_port_private, ptr %5, i32 0, i32 1
  br label %if.end6

if.end6:                                          ; preds = %if.end6.if.end6_crit_edge, %if.end6.lr.ph
  %call437 = phi ptr [ %call435, %if.end6.lr.ph ], [ %call4, %if.end6.if.end6_crit_edge ]
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %call437, i32 0, i32 14
  %11 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %transfer_buffer, align 4
  tail call void @kfree(ptr noundef %12) #8
  tail call void @usb_free_urb(ptr noundef nonnull %call437) #8
  %13 = ptrtoint ptr %interface7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %interface7, align 4
  tail call void @usb_autopm_put_interface_async(ptr noundef %14) #8
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #8
  %15 = ptrtoint ptr %outstanding_urbs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %outstanding_urbs, align 4
  %dec8 = add i32 %16, -1
  store i32 %dec8, ptr %outstanding_urbs, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %5) #8
  %call4 = tail call ptr @usb_get_from_anchor(ptr noundef %delayed) #8
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end6.for.end_crit_edge, label %if.end6.if.end6_crit_edge

if.end6.if.end6_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end6.for.end_crit_edge, %if.end.for.end_crit_edge
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i, align 4
  %num_in_urbs.i = getelementptr inbounds %struct.sierra_port_private, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %num_in_urbs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_in_urbs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp5.i = icmp sgt i32 %20, 0
  br i1 %cmp5.i, label %for.end.for.body.i_crit_edge, label %for.end.sierra_stop_rx_urbs.exit_crit_edge

for.end.sierra_stop_rx_urbs.exit_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sierra_stop_rx_urbs.exit

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sierra_port_private, ptr %18, i32 0, i32 6, i32 %i.06.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_kill_urb(ptr noundef %22) #8
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %23 = ptrtoint ptr %num_in_urbs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_in_urbs.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %24
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.sierra_stop_rx_urbs.exit_crit_edge

for.body.i.sierra_stop_rx_urbs.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sierra_stop_rx_urbs.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

sierra_stop_rx_urbs.exit:                         ; preds = %for.body.i.sierra_stop_rx_urbs.exit_crit_edge, %for.end.sierra_stop_rx_urbs.exit_crit_edge
  %interrupt_in_urb.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %25 = ptrtoint ptr %interrupt_in_urb.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %interrupt_in_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %26) #8
  %active = getelementptr inbounds %struct.sierra_port_private, ptr %5, i32 0, i32 2
  tail call void @usb_kill_anchored_urbs(ptr noundef %active) #8
  %num_in_urbs = getelementptr inbounds %struct.sierra_port_private, ptr %5, i32 0, i32 5
  %27 = ptrtoint ptr %num_in_urbs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_in_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp1138 = icmp sgt i32 %28, 0
  br i1 %cmp1138, label %sierra_stop_rx_urbs.exit.for.body_crit_edge, label %sierra_stop_rx_urbs.exit.for.end14_crit_edge

sierra_stop_rx_urbs.exit.for.end14_crit_edge:     ; preds = %sierra_stop_rx_urbs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end14

sierra_stop_rx_urbs.exit.for.body_crit_edge:      ; preds = %sierra_stop_rx_urbs.exit
  br label %for.body

for.body:                                         ; preds = %sierra_release_urb.exit.for.body_crit_edge, %sierra_stop_rx_urbs.exit.for.body_crit_edge
  %i.039 = phi i32 [ %inc, %sierra_release_urb.exit.for.body_crit_edge ], [ 0, %sierra_stop_rx_urbs.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sierra_port_private, ptr %5, i32 0, i32 6, i32 %i.039
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %for.body.sierra_release_urb.exit_crit_edge, label %if.then.i

for.body.sierra_release_urb.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sierra_release_urb.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %30, i32 0, i32 14
  %31 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %transfer_buffer.i, align 4
  tail call void @kfree(ptr noundef %32) #8
  tail call void @usb_free_urb(ptr noundef nonnull %30) #8
  br label %sierra_release_urb.exit

sierra_release_urb.exit:                          ; preds = %if.then.i, %for.body.sierra_release_urb.exit_crit_edge
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.039, 1
  %34 = ptrtoint ptr %num_in_urbs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_in_urbs, align 4
  %cmp11 = icmp slt i32 %inc, %35
  br i1 %cmp11, label %sierra_release_urb.exit.for.body_crit_edge, label %sierra_release_urb.exit.for.end14_crit_edge

sierra_release_urb.exit.for.end14_crit_edge:      ; preds = %sierra_release_urb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end14

sierra_release_urb.exit.for.body_crit_edge:       ; preds = %sierra_release_urb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end14:                                        ; preds = %sierra_release_urb.exit.for.end14_crit_edge, %sierra_stop_rx_urbs.exit.for.end14_crit_edge
  %interface15 = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %interface15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %interface15, align 4
  tail call void @usb_autopm_get_interface_no_resume(ptr noundef %37) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sierra_write(ptr nocapture noundef readnone %tty, ptr noundef %port, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %2 = tail call i32 @llvm.umin.i32(i32 %count, i32 3584)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp3 = icmp eq i32 %count, 0
  br i1 %cmp3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_write.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_write, %if.then9)) #8
          to label %do.body12 [label %if.then9], !srcloc !159

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_write.__UNIQUE_ID_ddebug243, ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef %2) #8
  br label %do.body12

do.body12:                                        ; preds = %if.then9, %if.end
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_write.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_write, %if.then33)) #8
          to label %do.end37 [label %if.then33], !srcloc !159

if.then33:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  %dev34 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %outstanding_urbs = getelementptr inbounds %struct.sierra_port_private, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %outstanding_urbs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %outstanding_urbs, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_write.__UNIQUE_ID_ddebug244, ptr noundef %dev34, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, i32 noundef %8) #8
  br label %do.end37

do.end37:                                         ; preds = %if.then33, %do.body12
  %outstanding_urbs38 = getelementptr inbounds %struct.sierra_port_private, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %outstanding_urbs38 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %outstanding_urbs38, align 4
  %num_out_urbs = getelementptr inbounds %struct.sierra_port_private, ptr %4, i32 0, i32 4
  %11 = ptrtoint ptr %num_out_urbs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_out_urbs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp39 = icmp sgt i32 %10, %12
  br i1 %cmp39, label %if.then41, label %if.end60

if.then41:                                        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %call16) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_write.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_write, %if.then55)) #8
          to label %cleanup [label %if.then55], !srcloc !159

if.then55:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  %dev56 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_write.__UNIQUE_ID_ddebug245, ptr noundef %dev56, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.31) #8
  br label %cleanup

if.end60:                                         ; preds = %do.end37
  %inc = add i32 %10, 1
  %13 = ptrtoint ptr %outstanding_urbs38 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %inc, ptr %outstanding_urbs38, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_write.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_write, %if.then74)) #8
          to label %do.end79 [label %if.then74], !srcloc !159

if.then74:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %dev75 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %14 = ptrtoint ptr %outstanding_urbs38 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %outstanding_urbs38, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_write.__UNIQUE_ID_ddebug246, ptr noundef %dev75, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.31, i32 noundef %15) #8
  br label %do.end79

do.end79:                                         ; preds = %if.then74, %if.end60
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %call16) #8
  %interface = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %interface, align 4
  %call81 = tail call i32 @usb_autopm_get_interface_async(ptr noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %do.body86, label %if.end8.i

do.body86:                                        ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #10
  %call94 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  %18 = ptrtoint ptr %outstanding_urbs38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %outstanding_urbs38, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %outstanding_urbs38, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %call94) #8
  br label %cleanup

if.end8.i:                                        ; preds = %do.end79
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 2592) #13
  %tobool103.not = icmp eq ptr %call9.i, null
  br i1 %tobool103.not, label %if.end8.i.do.body146_crit_edge, label %if.end105

if.end8.i.do.body146_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body146

if.end105:                                        ; preds = %if.end8.i
  %call106 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #8
  %tobool107.not = icmp eq ptr %call106, null
  br i1 %tobool107.not, label %if.end105.error_no_urb_crit_edge, label %if.end109

if.end105.error_no_urb_crit_edge:                 ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_no_urb

if.end109:                                        ; preds = %if.end105
  %20 = call ptr @memcpy(ptr %call9.i, ptr %buf, i32 %2)
  %dev110 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_write, %if.then.i)) #8
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !159

if.then.i:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev110, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef %2, i32 noundef %2, ptr noundef nonnull %call9.i) #8
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %if.end109
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %bulk_out_endpointAddress = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 26
  %23 = ptrtoint ptr %bulk_out_endpointAddress to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bulk_out_endpointAddress, align 4
  %conv113 = zext i8 %24 to i32
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %22, align 8
  %shl.i = shl i32 %26, 8
  %shl1.i = shl nuw nsw i32 %conv113, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call106, i32 0, i32 8
  %27 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %22, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call106, i32 0, i32 10
  %28 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call106, i32 0, i32 14
  %29 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call9.i, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call106, i32 0, i32 19
  %30 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %2, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call106, i32 0, i32 28
  %31 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @sierra_outdat_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call106, i32 0, i32 27
  %32 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %port, ptr %context4.i, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call106, i32 0, i32 13
  %33 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %transfer_flags, align 4
  %or115 = or i32 %34, 64
  store i32 %or115, ptr %transfer_flags, align 4
  %call124 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #8
  %suspended = getelementptr inbounds %struct.sierra_intf_private, ptr %6, i32 0, i32 1
  %35 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load = load i8, ptr %suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool129.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool129.not, label %if.else, label %if.then130

if.then130:                                       ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  %delayed = getelementptr inbounds %struct.sierra_port_private, ptr %4, i32 0, i32 3
  tail call void @usb_anchor_urb(ptr noundef nonnull %call106, ptr noundef %delayed) #8
  br label %skip_power

if.else:                                          ; preds = %usb_serial_debug_data.exit
  %active = getelementptr inbounds %struct.sierra_port_private, ptr %4, i32 0, i32 2
  tail call void @usb_anchor_urb(ptr noundef nonnull %call106, ptr noundef %active) #8
  %call133 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call106, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.else141, label %if.then135

if.then135:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call106) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %call124) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev110, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.31, i32 noundef %call133) #12
  tail call void @usb_free_urb(ptr noundef nonnull %call106) #8
  br label %error_no_urb

if.else141:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %in_flight = getelementptr inbounds %struct.sierra_intf_private, ptr %6, i32 0, i32 2
  %36 = ptrtoint ptr %in_flight to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %in_flight, align 4
  %inc142 = add i32 %37, 1
  store i32 %inc142, ptr %in_flight, align 4
  br label %skip_power

skip_power:                                       ; preds = %if.else141, %if.then130
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %call124) #8
  tail call void @usb_free_urb(ptr noundef nonnull %call106) #8
  br label %cleanup

error_no_urb:                                     ; preds = %if.then135, %if.end105.error_no_urb_crit_edge
  %retval2.0 = phi i32 [ %call133, %if.then135 ], [ -12, %if.end105.error_no_urb_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %do.body146

do.body146:                                       ; preds = %error_no_urb, %if.end8.i.do.body146_crit_edge
  %retval2.1 = phi i32 [ %retval2.0, %error_no_urb ], [ -12, %if.end8.i.do.body146_crit_edge ]
  %call154 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  %38 = ptrtoint ptr %outstanding_urbs38 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %outstanding_urbs38, align 4
  %dec160 = add i32 %39, -1
  store i32 %dec160, ptr %outstanding_urbs38, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_write.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_write, %if.then173)) #8
          to label %do.end178 [label %if.then173], !srcloc !159

if.then173:                                       ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #10
  %dev174 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %40 = ptrtoint ptr %outstanding_urbs38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %outstanding_urbs38, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_write.__UNIQUE_ID_ddebug247, ptr noundef %dev174, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.31, i32 noundef %41) #8
  br label %do.end178

do.end178:                                        ; preds = %if.then173, %do.body146
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %call154) #8
  %42 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %interface, align 4
  tail call void @usb_autopm_put_interface_async(ptr noundef %43) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end178, %skip_power, %do.body86, %if.then55, %if.then41, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %skip_power ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then55 ], [ %call81, %do.body86 ], [ %retval2.1, %do.end178 ], [ 0, %if.then41 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sierra_write_room(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %outstanding_urbs = getelementptr inbounds %struct.sierra_port_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %outstanding_urbs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %outstanding_urbs, align 4
  %num_out_urbs = getelementptr inbounds %struct.sierra_port_private, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %num_out_urbs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_out_urbs, align 4
  %mul = shl i32 %7, 1
  %div = sdiv i32 %mul, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %div)
  %cmp6 = icmp sgt i32 %5, %div
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3) #8
  br i1 %cmp6, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_write_room.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_write_room, %if.then14)) #8
          to label %cleanup [label %if.then14], !srcloc !159

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_write_room.__UNIQUE_ID_ddebug255, ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.40) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then14 ], [ 0, %if.then ], [ 2048, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sierra_chars_in_buffer(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %outstanding_urbs = getelementptr inbounds %struct.sierra_port_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %outstanding_urbs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %outstanding_urbs, align 4
  %mul = mul i32 %5, 3584
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_chars_in_buffer.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_chars_in_buffer, %if.then)) #8
          to label %do.end13 [label %if.then], !srcloc !159

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_chars_in_buffer.__UNIQUE_ID_ddebug256, ptr noundef %dev, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41, i32 noundef %mul) #8
  br label %do.end13

do.end13:                                         ; preds = %if.then, %entry
  ret i32 %mul
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sierra_tiocmget(ptr nocapture noundef readonly %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %rts_state = getelementptr inbounds %struct.sierra_port_private, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %rts_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rts_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, i32 0, i32 4
  %dtr_state = getelementptr inbounds %struct.sierra_port_private, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %dtr_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dtr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  %cond2 = select i1 %tobool1.not, i32 0, i32 2
  %or = or i32 %cond2, %cond
  %cts_state = getelementptr inbounds %struct.sierra_port_private, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %cts_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cts_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  %cond4 = select i1 %tobool3.not, i32 0, i32 32
  %or5 = or i32 %or, %cond4
  %dsr_state = getelementptr inbounds %struct.sierra_port_private, ptr %3, i32 0, i32 10
  %10 = ptrtoint ptr %dsr_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dsr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  %cond7 = select i1 %tobool6.not, i32 0, i32 256
  %or8 = or i32 %or5, %cond7
  %dcd_state = getelementptr inbounds %struct.sierra_port_private, ptr %3, i32 0, i32 11
  %12 = ptrtoint ptr %dcd_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dcd_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool9.not = icmp eq i32 %13, 0
  %cond10 = select i1 %tobool9.not, i32 0, i32 64
  %or11 = or i32 %or8, %cond10
  %ri_state = getelementptr inbounds %struct.sierra_port_private, ptr %3, i32 0, i32 12
  %14 = ptrtoint ptr %ri_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ri_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.not = icmp eq i32 %15, 0
  %cond13 = select i1 %tobool12.not, i32 0, i32 128
  %or14 = or i32 %or11, %cond13
  ret i32 %or14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sierra_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %and = and i32 %set, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rts_state = getelementptr inbounds %struct.sierra_port_private, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %rts_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %rts_state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and1 = and i32 %set, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dtr_state = getelementptr inbounds %struct.sierra_port_private, ptr %3, i32 0, i32 8
  %5 = ptrtoint ptr %dtr_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %dtr_state, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %and5 = and i32 %clear, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end9_crit_edge, label %if.then7

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %rts_state8 = getelementptr inbounds %struct.sierra_port_private, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %rts_state8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rts_state8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end4.if.end9_crit_edge
  %and10 = and i32 %clear, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end14_crit_edge, label %if.then12

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %dtr_state13 = getelementptr inbounds %struct.sierra_port_private, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %dtr_state13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %dtr_state13, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end9.if.end14_crit_edge
  %call15 = tail call fastcc i32 @sierra_send_setup(ptr noundef %1)
  ret i32 %call15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sierra_dtr_rts(ptr nocapture noundef readonly %port, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rts_state = getelementptr inbounds %struct.sierra_port_private, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %rts_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %on, ptr %rts_state, align 4
  %dtr_state = getelementptr inbounds %struct.sierra_port_private, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %dtr_state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %on, ptr %dtr_state, align 4
  %call1 = tail call fastcc i32 @sierra_send_setup(ptr noundef %port)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sierra_instat_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status1, align 4
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 32, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_instat_callback.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_instat_callback, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !159

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_instat_callback.__UNIQUE_ID_ddebug250, ptr noundef %dev, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43, ptr noundef %urb, ptr noundef %3, ptr noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then6, label %do.body93

if.then6:                                         ; preds = %do.end
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %8 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transfer_buffer, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %do.body9, label %if.end26

do.body9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_instat_callback.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_instat_callback, %if.then21)) #8
          to label %cleanup130 [label %if.then21], !srcloc !159

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %dev22 = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_instat_callback.__UNIQUE_ID_ddebug251, ptr noundef %dev22, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43) #8
  br label %cleanup130

if.end26:                                         ; preds = %if.then6
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %11)
  %cmp27 = icmp eq i8 %11, -95
  br i1 %cmp27, label %land.lhs.true, label %if.end26.do.body70_crit_edge

if.end26.do.body70_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body70

land.lhs.true:                                    ; preds = %if.end26
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bRequest, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %13)
  %cmp30 = icmp eq i8 %13, 32
  br i1 %cmp30, label %if.then32, label %land.lhs.true.do.body70_crit_edge

land.lhs.true.do.body70_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body70

if.then32:                                        ; preds = %land.lhs.true
  %add.ptr = getelementptr i8, ptr %9, i32 8
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_instat_callback.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_instat_callback, %if.then46)) #8
          to label %do.end51 [label %if.then46], !srcloc !159

if.then46:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %dev47 = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 32
  %conv48 = zext i8 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_instat_callback.__UNIQUE_ID_ddebug252, ptr noundef %dev47, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.43, i32 noundef %conv48) #8
  br label %do.end51

do.end51:                                         ; preds = %if.then46, %if.then32
  %dcd_state = getelementptr inbounds %struct.sierra_port_private, ptr %5, i32 0, i32 11
  %16 = ptrtoint ptr %dcd_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dcd_state, align 4
  %cts_state = getelementptr inbounds %struct.sierra_port_private, ptr %5, i32 0, i32 9
  %18 = ptrtoint ptr %cts_state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %cts_state, align 4
  %conv52 = zext i8 %15 to i32
  %and = and i32 %conv52, 1
  store i32 %and, ptr %dcd_state, align 4
  %and56 = lshr i32 %conv52, 1
  %and56.lobit = and i32 %and56, 1
  %dsr_state = getelementptr inbounds %struct.sierra_port_private, ptr %5, i32 0, i32 10
  %19 = ptrtoint ptr %dsr_state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and56.lobit, ptr %dsr_state, align 4
  %and60 = lshr i32 %conv52, 3
  %and60.lobit = and i32 %and60, 1
  %ri_state = getelementptr inbounds %struct.sierra_port_private, ptr %5, i32 0, i32 12
  %20 = ptrtoint ptr %ri_state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and60.lobit, ptr %ri_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool63.not = icmp ne i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool66.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool63.not, i1 %tobool66.not, i1 false
  br i1 %or.cond, label %if.then67, label %do.end51.if.then116_crit_edge

do.end51.if.then116_crit_edge:                    ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then116

if.then67:                                        ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #10
  %port68 = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 1
  tail call void @tty_port_tty_hangup(ptr noundef %port68, i1 noundef zeroext true) #8
  br label %if.then116

do.body70:                                        ; preds = %land.lhs.true.do.body70_crit_edge, %if.end26.do.body70_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_instat_callback.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_instat_callback, %if.then82)) #8
          to label %if.end110 [label %if.then82], !srcloc !159

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #10
  %dev83 = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 32
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %9, align 1
  %conv85 = zext i8 %22 to i32
  %bRequest86 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %9, i32 0, i32 1
  %23 = ptrtoint ptr %bRequest86 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bRequest86, align 1
  %conv87 = zext i8 %24 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_instat_callback.__UNIQUE_ID_ddebug253, ptr noundef %dev83, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.43, i32 noundef %conv85, i32 noundef %conv87) #8
  br label %if.then116

do.body93:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_instat_callback.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_instat_callback, %if.then105)) #8
          to label %if.end110 [label %if.then105], !srcloc !159

if.then105:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #10
  %dev106 = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_instat_callback.__UNIQUE_ID_ddebug254, ptr noundef %dev106, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.43, i32 noundef %1) #8
  br label %if.end110

if.end110:                                        ; preds = %if.then105, %do.body93, %do.body70
  %25 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.end110.if.then116_crit_edge [
    i32 -108, label %if.end110.cleanup130_crit_edge
    i32 -2, label %if.end110.cleanup130_crit_edge189
  ]

if.end110.cleanup130_crit_edge189:                ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup130

if.end110.cleanup130_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup130

if.end110.if.then116_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then116

if.then116:                                       ; preds = %if.end110.if.then116_crit_edge, %if.then82, %if.then67, %do.end51.if.then116_crit_edge
  %26 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %7, align 4
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i = getelementptr inbounds %struct.usb_device, ptr %27, i32 0, i32 15, i32 12, i32 22
  %28 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %call118 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #8
  %29 = zext i32 %call118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %call118, label %do.end126 [
    i32 0, label %if.then116.cleanup130_crit_edge
    i32 -1, label %if.then116.cleanup130_crit_edge190
  ]

if.then116.cleanup130_crit_edge190:               ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup130

if.then116.cleanup130_crit_edge:                  ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup130

do.end126:                                        ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #10
  %dev127 = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev127, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.43, i32 noundef %call118) #12
  br label %cleanup130

cleanup130:                                       ; preds = %do.end126, %if.then116.cleanup130_crit_edge, %if.then116.cleanup130_crit_edge190, %if.end110.cleanup130_crit_edge, %if.end110.cleanup130_crit_edge189, %if.then21, %do.body9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sierra_submit_rx_urbs(ptr noundef %port, i32 noundef %mem_flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %num_in_urbs = getelementptr inbounds %struct.sierra_port_private, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %num_in_urbs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_in_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp42 = icmp sgt i32 %3, 0
  br i1 %cmp42, label %for.body.lr.ph, label %entry.if.end18.thread_crit_edge

entry.if.end18.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.thread

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc5, %for.inc.for.body_crit_edge ]
  %err.044 = phi i32 [ -22, %for.body.lr.ph ], [ %err.1, %for.inc.for.body_crit_edge ]
  %ok_cnt.043 = phi i32 [ 0, %for.body.lr.ph ], [ %ok_cnt.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sierra_port_private, ptr %1, i32 0, i32 6, i32 %i.045
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call1 = tail call i32 @usb_submit_urb(ptr noundef nonnull %5, i32 noundef %mem_flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call1) #12
  br label %for.inc

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i32 %ok_cnt.043, 1
  br label %for.inc

for.inc:                                          ; preds = %if.else, %do.end, %for.body.for.inc_crit_edge
  %ok_cnt.1 = phi i32 [ %ok_cnt.043, %do.end ], [ %inc, %if.else ], [ %ok_cnt.043, %for.body.for.inc_crit_edge ]
  %err.1 = phi i32 [ %call1, %do.end ], [ 0, %if.else ], [ %err.044, %for.body.for.inc_crit_edge ]
  %inc5 = add nuw nsw i32 %i.045, 1
  %6 = ptrtoint ptr %num_in_urbs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_in_urbs, align 4
  %cmp = icmp slt i32 %inc5, %7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ok_cnt.1)
  %tobool6.not = icmp eq i32 %ok_cnt.1, 0
  br i1 %tobool6.not, label %for.end.if.end18.thread_crit_edge, label %land.lhs.true

for.end.if.end18.thread_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.thread

land.lhs.true:                                    ; preds = %for.end
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %8 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %interrupt_in_urb, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %land.lhs.true.if.end18_crit_edge, label %if.then8

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then8:                                         ; preds = %land.lhs.true
  %call10 = tail call i32 @usb_submit_urb(ptr noundef nonnull %9, i32 noundef %mem_flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then8.if.end18_crit_edge, label %do.end15

if.then8.if.end18_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

do.end15:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %dev16 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i32 noundef %call10) #12
  br label %if.end18

if.end18:                                         ; preds = %do.end15, %if.then8.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge
  %err.2 = phi i32 [ %call10, %do.end15 ], [ 0, %if.then8.if.end18_crit_edge ], [ %err.1, %land.lhs.true.if.end18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ok_cnt.1)
  %cmp19 = icmp sgt i32 %ok_cnt.1, 0
  %spec.select = select i1 %cmp19, i32 0, i32 %err.2
  br label %if.end18.thread

if.end18.thread:                                  ; preds = %if.end18, %for.end.if.end18.thread_crit_edge, %entry.if.end18.thread_crit_edge
  %10 = phi i32 [ %err.1, %for.end.if.end18.thread_crit_edge ], [ -22, %entry.if.end18.thread_crit_edge ], [ %spec.select, %if.end18 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_from_anchor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sierra_setup_urb(ptr nocapture noundef readonly %serial, i32 noundef %endpoint, ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4096) #11
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %sierra_release_urb.exit, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %serial, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %shl.i = shl i32 %4, 8
  %shl1.i = shl i32 %endpoint, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or6 = or i32 %or.i, -1073741696
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 8
  %5 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 10
  %6 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or6, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 14
  %7 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 19
  %8 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4096, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 28
  %9 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sierra_indat_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 27
  %10 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ctx, ptr %context4.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_setup_urb.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_setup_urb, %if.then11)) #8
          to label %cleanup [label %if.then11], !srcloc !159

if.then11:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %serial, align 4
  %dev13 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_setup_urb.__UNIQUE_ID_ddebug257, ptr noundef %dev13, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef 105, ptr noundef nonnull %call, ptr noundef nonnull %call7.i) #8
  br label %cleanup

sierra_release_urb.exit:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 14
  %13 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %transfer_buffer.i, align 4
  tail call void @kfree(ptr noundef %14) #8
  tail call void @usb_free_urb(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %sierra_release_urb.exit, %if.then11, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call, %if.then11 ], [ null, %sierra_release_urb.exit ], [ %call, %if.then3 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sierra_indat_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %0 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transfer_buffer, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %4 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pipe, align 4
  %shr = lshr i32 %5, 15
  %and = and i32 %shr, 15
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %6 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %context, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_indat_callback.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_indat_callback, %if.then5)) #8
          to label %if.end33 [label %if.then5], !srcloc !159

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %7, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_indat_callback.__UNIQUE_ID_ddebug248, ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef %3, i32 noundef %and) #8
  br label %if.end33

if.else:                                          ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %8 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %do.body15, label %if.then7

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %port8 = getelementptr inbounds %struct.usb_serial_port, ptr %7, i32 0, i32 1
  %call.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port8, ptr noundef %1, i8 noundef zeroext 0, i32 noundef %9) #8
  tail call void @tty_flip_buffer_push(ptr noundef %port8) #8
  %10 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %actual_length, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_indat_callback, %if.then.i)) #8
          to label %if.end33 [label %if.then.i], !srcloc !159

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %dev12 = getelementptr inbounds %struct.usb_serial_port, ptr %7, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev12, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.24, i32 noundef %11, i32 noundef %11, ptr noundef %1) #8
  br label %if.then35

do.body15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_indat_callback.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_indat_callback, %if.then27)) #8
          to label %if.end33 [label %if.then27], !srcloc !159

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  %dev28 = getelementptr inbounds %struct.usb_serial_port, ptr %7, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_indat_callback.__UNIQUE_ID_ddebug249, ptr noundef %dev28, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24) #8
  br label %if.then35

if.end33:                                         ; preds = %do.body15, %if.then7, %if.then5, %do.body
  %12 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %3, label %if.end33.if.then35_crit_edge [
    i32 -108, label %if.end33.if.end47_crit_edge
    i32 -1, label %if.end33.if.end47_crit_edge73
  ]

if.end33.if.end47_crit_edge73:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.end33.if.end47_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.end33.if.then35_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

if.then35:                                        ; preds = %if.end33.if.then35_crit_edge, %if.then27, %if.then.i
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %7, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 15, i32 12, i32 22
  %17 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %call37 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #8
  %18 = zext i32 %call37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %call37, label %do.end44 [
    i32 0, label %if.then35.if.end47_crit_edge
    i32 -1, label %if.then35.if.end47_crit_edge74
  ]

if.then35.if.end47_crit_edge74:                   ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then35.if.end47_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

do.end44:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  %dev45 = getelementptr inbounds %struct.usb_serial_port, ptr %7, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.27, i32 noundef %call37) #12
  br label %if.end47

if.end47:                                         ; preds = %do.end44, %if.then35.if.end47_crit_edge, %if.then35.if.end47_crit_edge74, %if.end33.if.end47_crit_edge, %if.end33.if.end47_crit_edge73
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface_async(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_get_interface_no_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface_async(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sierra_outdat_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status1, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private.i, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %10 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %transfer_buffer, align 4
  tail call void @kfree(ptr noundef %11) #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %interface = getelementptr inbounds %struct.usb_serial, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %interface, align 4
  tail call void @usb_autopm_put_interface_async(ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.do.body11_crit_edge, label %do.body

entry.do.body11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body11

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_outdat_callback.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_outdat_callback, %if.then8)) #8
          to label %do.body11 [label %if.then8], !srcloc !159

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_outdat_callback.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i32 noundef %5) #8
  br label %do.body11

do.body11:                                        ; preds = %if.then8, %do.body, %entry.do.body11_crit_edge
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %outstanding_urbs = getelementptr inbounds %struct.sierra_port_private, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %outstanding_urbs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %outstanding_urbs, align 4
  %dec = add i32 %17, -1
  store i32 %dec, ptr %outstanding_urbs, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call14) #8
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #8
  %in_flight = getelementptr inbounds %struct.sierra_intf_private, ptr %9, i32 0, i32 2
  %18 = ptrtoint ptr %in_flight to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %in_flight, align 4
  %dec33 = add i32 %19, -1
  store i32 %dec33, ptr %in_flight, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %call28) #8
  tail call void @usb_serial_port_softint(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_port_softint(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sierra_send_setup(ptr nocapture noundef readonly %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dtr_state = getelementptr inbounds %struct.sierra_port_private, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %dtr_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dtr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp ne i32 %5, 0
  %spec.select = zext i1 %tobool.not to i32
  %rts_state = getelementptr inbounds %struct.sierra_port_private, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %rts_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rts_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  %or5 = or i32 %spec.select, 2
  %val.1 = select i1 %tobool3.not, i32 %spec.select, i32 %or5
  %num_ports = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_ports, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp = icmp eq i8 %9, 1
  br i1 %cmp, label %if.end33, label %if.else

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bulk_out_endpointAddress = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 26
  %10 = ptrtoint ptr %bulk_out_endpointAddress to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bulk_out_endpointAddress, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %11)
  %switch.selectcmp = icmp eq i8 %11, 4
  %switch.select = zext i1 %switch.selectcmp to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %11)
  %switch.selectcmp73 = icmp eq i8 %11, 5
  %switch.select74 = select i1 %switch.selectcmp73, i16 2, i16 %switch.select
  br label %if.end36

if.end33:                                         ; preds = %entry
  %interface.i = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %interface.i, align 4
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur_altsetting.i, align 4
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bInterfaceNumber.i, align 2
  %conv10 = zext i8 %17 to i16
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %18 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %interrupt_in_urb, align 4
  %tobool11.not = icmp eq ptr %19, null
  br i1 %tobool11.not, label %if.end33.cleanup_crit_edge, label %if.end33.if.end36_crit_edge

if.end33.if.end36_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36:                                         ; preds = %if.end33.if.end36_crit_edge, %if.else
  %interface.172 = phi i16 [ %conv10, %if.end33.if.end36_crit_edge ], [ %switch.select74, %if.else ]
  %interface37 = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %interface37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %interface37, align 4
  %call38 = tail call i32 @usb_autopm_get_interface(ptr noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.end36.cleanup_crit_edge, label %if.end42

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %shl.i = shl i32 %25, 8
  %or45 = or i32 %shl.i, -2147483648
  %conv46 = trunc i32 %val.1 to i16
  %call47 = tail call i32 @usb_control_msg(ptr noundef %23, i32 noundef %or45, i8 noundef zeroext 34, i8 noundef zeroext 33, i16 noundef zeroext %conv46, i16 noundef zeroext %interface.172, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  %26 = ptrtoint ptr %interface37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %interface37, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %27) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end36.cleanup_crit_edge, %if.end33.cleanup_crit_edge
  %retval.0 = phi i32 [ %call47, %if.end42 ], [ 0, %if.end33.cleanup_crit_edge ], [ %call38, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_hangup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !15, !17, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !48, !50, !51, !53, !54, !56, !58, !60, !62, !64, !65, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !115, !117, !118, !120, !121, !122, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !149}
!llvm.module.flags = !{!150, !151, !152, !153, !154, !155, !156, !157}
!llvm.ident = !{!158}

!0 = !{ptr @__initcall__kmod_sierra__259_1053_usb_serial_module_init6, !1, !"__initcall__kmod_sierra__259_1053_usb_serial_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/sierra.c", i32 1053, i32 1}
!2 = !{ptr @__exitcall_usb_serial_module_exit, !1, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author260, !4, !"__UNIQUE_ID_author260", i1 false, i1 false}
!4 = !{!"../drivers/usb/serial/sierra.c", i32 1055, i32 1}
!5 = !{ptr @__UNIQUE_ID_description261, !6, !"__UNIQUE_ID_description261", i1 false, i1 false}
!6 = !{!"../drivers/usb/serial/sierra.c", i32 1056, i32 1}
!7 = !{ptr @__UNIQUE_ID_file262, !8, !"__UNIQUE_ID_file262", i1 false, i1 false}
!8 = !{!"../drivers/usb/serial/sierra.c", i32 1057, i32 1}
!9 = !{ptr @__UNIQUE_ID_license263, !8, !"__UNIQUE_ID_license263", i1 false, i1 false}
!10 = !{ptr @__param_nmea, !11, !"__param_nmea", i1 false, i1 false}
!11 = !{!"../drivers/usb/serial/sierra.c", i32 1059, i32 1}
!12 = !{ptr @__UNIQUE_ID_nmeatype264, !11, !"__UNIQUE_ID_nmeatype264", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_nmea265, !14, !"__UNIQUE_ID_nmea265", i1 false, i1 false}
!14 = !{!"../drivers/usb/serial/sierra.c", i32 1060, i32 1}
!15 = !{ptr @nmea, !16, !"nmea", i1 false, i1 false}
!16 = !{!"../drivers/usb/serial/sierra.c", i32 46, i32 13}
!17 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @id_table, !19, !"id_table", i1 false, i1 false}
!19 = !{!"../drivers/usb/serial/sierra.c", i32 175, i32 35}
!20 = !{ptr @direct_ip_interface_ignore, !21, !"direct_ip_interface_ignore", i1 false, i1 false}
!21 = !{!"../drivers/usb/serial/sierra.c", i32 170, i32 39}
!22 = !{ptr @direct_ip_non_serial_ifaces, !23, !"direct_ip_non_serial_ifaces", i1 false, i1 false}
!23 = !{!"../drivers/usb/serial/sierra.c", i32 169, i32 17}
!24 = !{ptr @serial_drivers, !25, !"serial_drivers", i1 false, i1 false}
!25 = !{!"../drivers/usb/serial/sierra.c", i32 1049, i32 41}
!26 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/serial/sierra.c", i32 1028, i32 23}
!28 = !{ptr @sierra_device, !29, !"sierra_device", i1 false, i1 false}
!29 = !{!"../drivers/usb/serial/sierra.c", i32 1023, i32 33}
!30 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/serial/sierra.c", i32 139, i32 3}
!32 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @sierra_probe.__UNIQUE_ID_ddebug238, !31, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!35 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/serial/sierra.c", i32 148, i32 3}
!37 = !{ptr @sierra_probe.__UNIQUE_ID_ddebug239, !36, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!38 = !{ptr @sierra_startup.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/usb/serial/sierra.c", i32 836, i32 2}
!40 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @sierra_port_probe.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/usb/serial/sierra.c", i32 869, i32 2}
!43 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.8, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/serial/sierra.c", i32 895, i32 2}
!46 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @sierra_port_probe.__UNIQUE_ID_ddebug258, !45, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!48 = !{ptr @init_usb_anchor.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!50 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @init_usb_anchor.__key.11, !52, !"__key", i1 false, i1 false}
!52 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!53 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @typeB_interface_list, !55, !"typeB_interface_list", i1 false, i1 false}
!55 = !{!"../drivers/usb/serial/sierra.c", i32 163, i32 39}
!56 = !{ptr @hi_memory_typeB_ifaces, !57, !"hi_memory_typeB_ifaces", i1 false, i1 false}
!57 = !{!"../drivers/usb/serial/sierra.c", i32 162, i32 17}
!58 = !{ptr @typeA_interface_list, !59, !"typeA_interface_list", i1 false, i1 false}
!59 = !{!"../drivers/usb/serial/sierra.c", i32 157, i32 39}
!60 = !{ptr @hi_memory_typeA_ifaces, !61, !"hi_memory_typeA_ifaces", i1 false, i1 false}
!61 = !{!"../drivers/usb/serial/sierra.c", i32 156, i32 17}
!62 = !{ptr @.str.13, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/serial/sierra.c", i32 970, i32 4}
!64 = !{ptr @.str.14, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.15, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.16, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @sierra_submit_delayed_urbs._entry, !63, !"_entry", i1 false, i1 false}
!68 = !{ptr @sierra_submit_delayed_urbs._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.17, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/serial/sierra.c", i32 678, i32 4}
!71 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @sierra_submit_rx_urbs._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @sierra_submit_rx_urbs._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.20, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/serial/sierra.c", i32 688, i32 4}
!76 = !{ptr @sierra_submit_rx_urbs._entry.19, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @sierra_submit_rx_urbs._entry_ptr.21, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.22, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/serial/sierra.c", i32 718, i32 3}
!80 = !{ptr @.str.23, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @sierra_setup_urb.__UNIQUE_ID_ddebug257, !79, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!82 = !{ptr @.str.24, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/serial/sierra.c", i32 535, i32 3}
!84 = !{ptr @.str.25, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @sierra_indat_callback.__UNIQUE_ID_ddebug248, !83, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!86 = !{ptr @.str.26, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/serial/sierra.c", i32 546, i32 4}
!88 = !{ptr @sierra_indat_callback.__UNIQUE_ID_ddebug249, !87, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!89 = !{ptr @.str.27, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/serial/sierra.c", i32 556, i32 4}
!91 = !{ptr @sierra_indat_callback._entry, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @sierra_indat_callback._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.28, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../include/linux/usb/serial.h", i32 393, i32 2}
!95 = !{ptr @.str.29, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.30, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, !94, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!98 = !{ptr @.str.31, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/serial/sierra.c", i32 434, i32 2}
!100 = !{ptr @.str.32, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @sierra_write.__UNIQUE_ID_ddebug243, !99, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!102 = !{ptr @.str.33, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/serial/sierra.c", i32 436, i32 2}
!104 = !{ptr @sierra_write.__UNIQUE_ID_ddebug244, !103, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!105 = !{ptr @.str.34, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/serial/sierra.c", i32 440, i32 3}
!107 = !{ptr @sierra_write.__UNIQUE_ID_ddebug245, !106, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!108 = !{ptr @.str.35, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/serial/sierra.c", i32 444, i32 2}
!110 = !{ptr @sierra_write.__UNIQUE_ID_ddebug246, !109, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!111 = !{ptr @.str.36, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/serial/sierra.c", i32 494, i32 3}
!113 = !{ptr @sierra_write._entry, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @sierra_write._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.37, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/serial/sierra.c", i32 515, i32 2}
!117 = !{ptr @sierra_write.__UNIQUE_ID_ddebug247, !116, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!118 = !{ptr @.str.38, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/serial/sierra.c", i32 401, i32 3}
!120 = !{ptr @.str.39, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @sierra_outdat_callback.__UNIQUE_ID_ddebug240, !119, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!122 = !{ptr @.str.40, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/serial/sierra.c", i32 627, i32 3}
!124 = !{ptr @sierra_write_room.__UNIQUE_ID_ddebug255, !123, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!125 = !{ptr @.str.41, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/usb/serial/sierra.c", i32 647, i32 2}
!127 = !{ptr @.str.42, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @sierra_chars_in_buffer.__UNIQUE_ID_ddebug256, !126, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!129 = !{ptr @.str.43, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/serial/sierra.c", i32 569, i32 2}
!131 = !{ptr @.str.44, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @sierra_instat_callback.__UNIQUE_ID_ddebug250, !130, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!133 = !{ptr @.str.45, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/serial/sierra.c", i32 576, i32 4}
!135 = !{ptr @sierra_instat_callback.__UNIQUE_ID_ddebug251, !134, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!136 = !{ptr @.str.46, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/usb/serial/sierra.c", i32 587, i32 4}
!138 = !{ptr @sierra_instat_callback.__UNIQUE_ID_ddebug252, !137, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!139 = !{ptr @.str.47, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/usb/serial/sierra.c", i32 599, i32 4}
!141 = !{ptr @sierra_instat_callback.__UNIQUE_ID_ddebug253, !140, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!142 = !{ptr @.str.48, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/usb/serial/sierra.c", i32 604, i32 3}
!144 = !{ptr @sierra_instat_callback.__UNIQUE_ID_ddebug254, !143, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!145 = !{ptr @.str.49, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/serial/sierra.c", i32 611, i32 4}
!147 = !{ptr @sierra_instat_callback._entry, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @sierra_instat_callback._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @__param_str_nmea, !11, !"__param_str_nmea", i1 false, i1 false}
!150 = !{i32 1, !"wchar_size", i32 2}
!151 = !{i32 1, !"min_enum_size", i32 4}
!152 = !{i32 8, !"branch-target-enforcement", i32 0}
!153 = !{i32 8, !"sign-return-address", i32 0}
!154 = !{i32 8, !"sign-return-address-all", i32 0}
!155 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!156 = !{i32 7, !"uwtable", i32 1}
!157 = !{i32 7, !"frame-pointer", i32 2}
!158 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!159 = !{i64 2148719584, i64 2148719589, i64 2148719602, i64 2148719646, i64 2148719680, i64 2148719701}
!160 = !{i8 0, i8 2}
