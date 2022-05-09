; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/pl2303.c_pt.bc'
source_filename = "../drivers/usb/serial/pl2303.c"
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
%struct.pl2303_type_data = type { ptr, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_serial = type { ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, [16 x ptr], %struct.kref, %struct.mutex, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.pl2303_serial_private = type { ptr, i32 }
%struct.usb_host_config = type { %struct.usb_config_descriptor, ptr, [16 x ptr], [32 x ptr], [32 x ptr], ptr, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_serial_endpoints = type { i8, i8, i8, i8, [16 x ptr], [16 x ptr], [16 x ptr], [16 x ptr] }
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
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.pl2303_private = type { %struct.spinlock, i8, i8, [7 x i8] }

@__initcall__kmod_pl2303__263_1253_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @pl2303_device, ptr null], [24 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description264 = internal constant [64 x i8] c"pl2303.description=Prolific PL2303 USB to serial adaptor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file265 = internal constant [38 x i8] c"pl2303.file=drivers/usb/serial/pl2303\00", section ".modinfo", align 1
@__UNIQUE_ID_license266 = internal constant [22 x i8] c"pl2303.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pl2303\00", [25 x i8] zeroinitializer }, align 32
@id_table = internal constant { [75 x %struct.usb_device_id], [472 x i8] } { [75 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1659, i16 8963, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 1659, i16 1211, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1659, i16 4660, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1659, i16 -21854, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1659, i16 -21848, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1659, i16 -21856, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1659, i16 1553, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1659, i16 1554, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1659, i16 1545, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1659, i16 13082, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1659, i16 775, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1659, i16 -7695, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1659, i16 8964, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1659, i16 9123, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1659, i16 9139, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1659, i16 9155, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1659, i16 9171, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1659, i16 9187, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1659, i16 9203, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1211, i16 2563, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1211, i16 2574, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1367, i16 8200, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 1367, i16 8225, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 1367, i16 8226, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 1367, i16 8472, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1351, i16 8200, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1390, i16 20483, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1390, i16 20484, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3770, i16 4224, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3770, i16 8320, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3575, i16 1568, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1412, i16 -20480, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 9336, i16 8200, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5203, i16 16422, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1841, i16 1320, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 24969, i16 8296, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4599, i16 735, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4597, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 4597, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 4597, i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 4597, i16 5, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 1189, i16 16423, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1861, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1931, i16 4660, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4277, i16 -21392, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1947, i16 39, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1043, i16 8449, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3669, i16 4363, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1841, i16 8195, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 599, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1423, i16 -26848, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 4598, i16 8193, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1962, i16 42, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1453, i16 4026, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 21362, i16 8963, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1008, i16 13604, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1008, i16 17225, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1008, i16 3967, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1008, i16 387, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1008, i16 2873, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1008, i16 17465, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1008, i16 12601, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1008, i16 12857, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1008, i16 619, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1008, i16 20537, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1008, i16 2390, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1208, i16 1313, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1208, i16 1314, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1356, i16 1079, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4525, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2915, i16 25904, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2915, i16 25914, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2956, i16 8963, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3242, i16 12289, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [472 x i8] zeroinitializer }, align 32
@pl2303_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr null, ptr @id_table, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 0, i8 1, i8 1, i8 0, i8 0, i32 256, i32 256, ptr @pl2303_probe, ptr @pl2303_startup, ptr @pl2303_calc_num_ports, ptr null, ptr @pl2303_release, ptr @pl2303_port_probe, ptr @pl2303_port_remove, ptr null, ptr null, ptr null, ptr @pl2303_open, ptr @pl2303_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pl2303_set_termios, ptr @pl2303_break_ctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pl2303_tiocmget, ptr @pl2303_tiocmset, ptr @usb_serial_generic_tiocmiwait, ptr null, ptr @pl2303_dtr_rts, ptr @pl2303_carrier_raised, ptr null, ptr @pl2303_read_int_callback, ptr null, ptr null, ptr null, ptr @pl2303_process_read_urb, ptr null }, [72 x i8] zeroinitializer }, align 32
@pl2303_startup.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pl2303_startup\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/serial/pl2303.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"device type: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@pl2303_type_data = internal constant { [6 x %struct.pl2303_type_data], [32 x i8] } { [6 x %struct.pl2303_type_data] [%struct.pl2303_type_data { ptr @.str.8, i32 1228800, i32 2, i8 -128 }, %struct.pl2303_type_data { ptr @.str.9, i32 6000000, i32 0, i8 0 }, %struct.pl2303_type_data { ptr @.str.10, i32 6000000, i32 0, i8 32 }, %struct.pl2303_type_data { ptr @.str.11, i32 12000000, i32 0, i8 32 }, %struct.pl2303_type_data { ptr @.str.12, i32 12000000, i32 0, i8 0 }, %struct.pl2303_type_data { ptr @.str.13, i32 12000000, i32 0, i8 64 }], [32 x i8] zeroinitializer }, align 32
@pl2303_detect_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 454, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"unknown device type, please report to linux-usb@vger.kernel.org\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pl2303_detect_type\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pl2303_detect_type._entry_ptr = internal global ptr @pl2303_detect_type._entry, section ".printk_index", align 4
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"H\00", [30 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HX\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TA\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TB\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HXD\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"G\00", [30 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pl2303_vendor_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 258, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s - failed to read [%04x]: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pl2303_vendor_read\00", [45 x i8] zeroinitializer }, align 32
@pl2303_vendor_read._entry_ptr = internal global ptr @pl2303_vendor_read._entry, section ".printk_index", align 4
@pl2303_vendor_read.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - [%04x] = %02x\0A\00", [44 x i8] zeroinitializer }, align 32
@pl2303_vendor_write.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.16, i8 0, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pl2303_vendor_write\00", [44 x i8] zeroinitializer }, align 32
@pl2303_vendor_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.17, ptr @.str.2, i32 289, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s - failed to write [%04x]: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@pl2303_vendor_write._entry_ptr = internal global ptr @pl2303_vendor_write._entry, section ".printk_index", align 4
@pl2303_calc_num_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 381, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"required interrupt-in endpoint missing\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pl2303_calc_num_ports\00", [42 x i8] zeroinitializer }, align 32
@pl2303_calc_num_ports._entry_ptr = internal global ptr @pl2303_calc_num_ports._entry, section ".printk_index", align 4
@pl2303_endpoint_hack.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pl2303_endpoint_hack\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"found interrupt in on separate interface\0A\00", [54 x i8] zeroinitializer }, align 32
@pl2303_port_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@pl2303_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 974, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to submit interrupt urb: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pl2303_open\00", [20 x i8] zeroinitializer }, align 32
@pl2303_open._entry_ptr = internal global ptr @pl2303_open._entry, section ".printk_index", align 4
@pl2303_set_break.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 1, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pl2303_set_break\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s - turning break %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@pl2303_set_break._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.26, ptr @.str.2, i32 1069, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error sending break = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@pl2303_set_break._entry_ptr = internal global ptr @pl2303_set_break._entry, section ".printk_index", align 4
@pl2303_set_termios.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 -55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pl2303_set_termios\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"data bits = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@pl2303_set_termios.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.33, i8 0, i8 -51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stop bits = 1.5\0A\00", [47 x i8] zeroinitializer }, align 32
@pl2303_set_termios.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.34, i8 0, i8 -51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stop bits = 2\0A\00", [17 x i8] zeroinitializer }, align 32
@pl2303_set_termios.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.35, i8 0, i8 -50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stop bits = 1\0A\00", [17 x i8] zeroinitializer }, align 32
@pl2303_set_termios.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.36, i8 0, i8 -47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"parity = mark\0A\00", [17 x i8] zeroinitializer }, align 32
@pl2303_set_termios.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.37, i8 0, i8 -46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parity = odd\0A\00", [18 x i8] zeroinitializer }, align 32
@pl2303_set_termios.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.38, i8 0, i8 -45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"parity = space\0A\00", [16 x i8] zeroinitializer }, align 32
@pl2303_set_termios.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.39, i8 0, i8 -44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"parity = even\0A\00", [17 x i8] zeroinitializer }, align 32
@pl2303_set_termios.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.40, i8 0, i8 -43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"parity = none\0A\00", [17 x i8] zeroinitializer }, align 32
@pl2303_get_line_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 723, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - failed: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pl2303_get_line_request\00", [40 x i8] zeroinitializer }, align 32
@pl2303_get_line_request._entry_ptr = internal global ptr @pl2303_get_line_request._entry, section ".printk_index", align 4
@pl2303_get_line_request.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 -74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s - %7ph\0A\00", [21 x i8] zeroinitializer }, align 32
@pl2303_encode_baud_rate.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 0, i8 -85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pl2303_encode_baud_rate\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"baud requested = %u\0A\00", [43 x i8] zeroinitializer }, align 32
@pl2303_encode_baud_rate.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.46, i8 0, i8 -79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"baud set = %u\0A\00", [17 x i8] zeroinitializer }, align 32
@pl2303_get_supported_baud_rate.baud_sup = internal constant { [25 x i32], [60 x i8] } { [25 x i32] [i32 75, i32 150, i32 300, i32 600, i32 1200, i32 1800, i32 2400, i32 3600, i32 4800, i32 7200, i32 9600, i32 14400, i32 19200, i32 28800, i32 38400, i32 57600, i32 115200, i32 230400, i32 460800, i32 614400, i32 921600, i32 1228800, i32 2457600, i32 3000000, i32 6000000], [60 x i8] zeroinitializer }, align 32
@pl2303_set_line_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.47, ptr @.str.2, i32 746, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pl2303_set_line_request\00", [40 x i8] zeroinitializer }, align 32
@pl2303_set_line_request._entry_ptr = internal global ptr @pl2303_set_line_request._entry, section ".printk_index", align 4
@pl2303_set_line_request.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.43, i8 0, i8 -69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@pl2303_set_control_lines.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 -120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pl2303_set_control_lines\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s - %02x\0A\00", [21 x i8] zeroinitializer }, align 32
@pl2303_set_control_lines._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.48, ptr @.str.2, i32 552, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@pl2303_set_control_lines._entry_ptr = internal global ptr @pl2303_set_control_lines._entry, section ".printk_index", align 4
@pl2303_tiocmget.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 1, i8 3, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pl2303_tiocmget\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s - result = %x\0A\00", [46 x i8] zeroinitializer }, align 32
@pl2303_read_int_callback.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 1, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pl2303_read_int_callback\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - urb shutting down with status: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@pl2303_read_int_callback.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.54, i8 1, i8 31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - nonzero urb status received: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@pl2303_read_int_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.52, ptr @.str.2, i32 1165, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s - usb_submit_urb failed with result %d\0A\00", [53 x i8] zeroinitializer }, align 32
@pl2303_read_int_callback._entry_ptr = internal global ptr @pl2303_read_int_callback._entry, section ".printk_index", align 4
@usb_serial_debug_data.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.57, ptr @.str.58, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb_serial_debug_data\00", [42 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/usb/serial.h\00", [37 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - length = %d, data = %*ph\0A\00", [33 x i8] zeroinitializer }, align 32
@pl2303_process_read_urb.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 1, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pl2303_process_read_urb\00", [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - tty_flag = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 272, i64 512]
@__sancov_gen_cov_switch_values.61 = internal global [8 x i64] [i64 6, i64 16, i64 256, i64 261, i64 768, i64 773, i64 1029, i64 1280]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 4294967201, i64 4294967277, i64 4294967284]
@__sancov_gen_cov_switch_values.63 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1249, i32 41 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1253, i32 1 }
@___asan_gen_.70 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 35, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant [14 x i8] c"pl2303_device\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1219, i32 33 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 470, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"pl2303_type_data\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 208, i32 38 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 453, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 210, i32 13 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 216, i32 13 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 220, i32 13 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 225, i32 13 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 230, i32 13 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 234, i32 13 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 257, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 265, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 277, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 288, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 381, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 359, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 525, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 973, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1062, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1069, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 805, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 820, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 823, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 827, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 839, i32 5 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 842, i32 5 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 847, i32 5 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 850, i32 5 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 855, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 723, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 731, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 686, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 710, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant [9 x i8] c"baud_sup\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 563, i32 23 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 746, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 546, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 552, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1036, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1146, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1150, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1163, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant [30 x i8] c"../include/linux/usb/serial.h\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 393, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.293 = private constant [31 x i8] c"../drivers/usb/serial/pl2303.c\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1200, i32 3 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @__UNIQUE_ID_description264, ptr @__UNIQUE_ID_file265, ptr @__UNIQUE_ID_license266, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_pl2303__263_1253_usb_serial_module_init6, ptr @pl2303_calc_num_ports._entry, ptr @pl2303_calc_num_ports._entry_ptr, ptr @pl2303_detect_type._entry, ptr @pl2303_detect_type._entry_ptr, ptr @pl2303_get_line_request._entry, ptr @pl2303_get_line_request._entry_ptr, ptr @pl2303_open._entry, ptr @pl2303_open._entry_ptr, ptr @pl2303_read_int_callback._entry, ptr @pl2303_read_int_callback._entry_ptr, ptr @pl2303_set_break._entry, ptr @pl2303_set_break._entry_ptr, ptr @pl2303_set_control_lines._entry, ptr @pl2303_set_control_lines._entry_ptr, ptr @pl2303_set_line_request._entry, ptr @pl2303_set_line_request._entry_ptr, ptr @pl2303_vendor_read._entry, ptr @pl2303_vendor_read._entry_ptr, ptr @pl2303_vendor_write._entry, ptr @pl2303_vendor_write._entry_ptr, ptr @usb_serial_module_exit, ptr @serial_drivers, ptr @.str, ptr @id_table, ptr @pl2303_device, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @pl2303_type_data, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @pl2303_port_probe.__key, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @pl2303_get_supported_baud_rate.baud_sup, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 1800, i32 2272, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl2303_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl2303_type_data to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl2303_detect_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl2303_vendor_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl2303_vendor_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl2303_calc_num_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl2303_port_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl2303_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl2303_set_break._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl2303_get_line_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl2303_get_supported_baud_rate.baud_sup to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl2303_set_line_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl2303_set_control_lines._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl2303_read_int_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_serial_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_serial_register_drivers(ptr noundef nonnull @serial_drivers, ptr noundef nonnull @.str, ptr noundef nonnull @id_table) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_serial_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_serial_deregister_drivers(ptr noundef nonnull @serial_drivers) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_deregister_drivers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_register_drivers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pl2303_probe(ptr nocapture noundef writeonly %serial, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %0 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_info, align 4
  %2 = inttoptr i32 %1 to ptr
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %3 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %private.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl2303_startup(ptr noundef %serial) #3 align 64 {
entry:
  %buf.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial, align 4
  %bDeviceClass.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 3
  %2 = ptrtoint ptr %bDeviceClass.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bDeviceClass.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp.i = icmp eq i8 %3, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %bMaxPacketSize0.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 6
  %4 = ptrtoint ptr %bMaxPacketSize0.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bMaxPacketSize0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %5)
  %cmp3.not.i = icmp eq i8 %5, 64
  br i1 %cmp3.not.i, label %if.end16.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end16.i:                                       ; preds = %if.end.i
  %bcdDevice17.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 9
  %6 = ptrtoint ptr %bcdDevice17.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %bcdDevice17.i, align 1
  %bcdUSB18.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 2
  %8 = ptrtoint ptr %bcdUSB18.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %bcdUSB18.i, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #10
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i16 %10, label %if.end16.i.pl2303_detect_type.exit_crit_edge [
    i16 272, label %sw.bb.i
    i16 512, label %sw.bb23.i
  ]

if.end16.i.pl2303_detect_type.exit_crit_edge:     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_detect_type.exit

sw.bb.i:                                          ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %7)
  %switch.selectcmp.i = icmp eq i16 %7, 4
  %switch.select.i = select i1 %switch.selectcmp.i, i32 4, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %7)
  %switch.selectcmp42.i = icmp eq i16 %7, 3
  %switch.select43.i = select i1 %switch.selectcmp42.i, i32 1, i32 %switch.select.i
  br label %if.end

sw.bb23.i:                                        ; preds = %if.end16.i
  %12 = tail call i16 @llvm.bswap.i16(i16 %7) #10
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.61)
  switch i16 %12, label %sw.bb23.i.pl2303_detect_type.exit_crit_edge [
    i16 256, label %sw.bb23.i.sw.bb25.i_crit_edge
    i16 261, label %sw.bb23.i.sw.bb25.i_crit_edge150
    i16 773, label %sw.bb23.i.sw.bb25.i_crit_edge151
    i16 1029, label %sw.bb23.i.sw.bb25.i_crit_edge152
    i16 768, label %sw.bb23.i.if.end_crit_edge
    i16 1280, label %sw.bb29.i
  ]

sw.bb23.i.if.end_crit_edge:                       ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb23.i.sw.bb25.i_crit_edge152:                 ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb25.i

sw.bb23.i.sw.bb25.i_crit_edge151:                 ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb25.i

sw.bb23.i.sw.bb25.i_crit_edge150:                 ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb25.i

sw.bb23.i.sw.bb25.i_crit_edge:                    ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb25.i

sw.bb23.i.pl2303_detect_type.exit_crit_edge:      ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_detect_type.exit

sw.bb25.i:                                        ; preds = %sw.bb23.i.sw.bb25.i_crit_edge, %sw.bb23.i.sw.bb25.i_crit_edge150, %sw.bb23.i.sw.bb25.i_crit_edge151, %sw.bb23.i.sw.bb25.i_crit_edge152
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i.i) #10
  %14 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %buf.i.i, align 1, !annotation !174
  %call.i.i = call i32 @usb_control_msg_recv(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext -32640, i16 noundef zeroext 0, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 1, i32 noundef 100, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i.i) #10
  br i1 %cmp.i.i, label %sw.bb25.i.pl2303_detect_type.exit_crit_edge, label %sw.bb25.i.if.end_crit_edge

sw.bb25.i.if.end_crit_edge:                       ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb25.i.pl2303_detect_type.exit_crit_edge:      ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_detect_type.exit

sw.bb29.i:                                        ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

pl2303_detect_type.exit:                          ; preds = %sw.bb25.i.pl2303_detect_type.exit_crit_edge, %sw.bb23.i.pl2303_detect_type.exit_crit_edge, %if.end16.i.pl2303_detect_type.exit_crit_edge
  %interface.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %15 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %interface.i, align 4
  %dev31.i = getelementptr inbounds %struct.usb_interface, ptr %16, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31.i, ptr noundef nonnull @.str.4) #13
  br label %cleanup

if.end:                                           ; preds = %sw.bb29.i, %sw.bb25.i.if.end_crit_edge, %sw.bb23.i.if.end_crit_edge, %sw.bb.i, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i75.ph = phi i32 [ 0, %if.end.i.if.end_crit_edge ], [ 2, %sw.bb23.i.if.end_crit_edge ], [ 5, %sw.bb25.i.if.end_crit_edge ], [ %switch.select43.i, %sw.bb.i ], [ 0, %entry.if.end_crit_edge ], [ 3, %sw.bb29.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_startup.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_startup, %if.then4)) #10
          to label %do.end [label %if.then4], !srcloc !175

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %interface = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %17 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %interface, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %18, i32 0, i32 7
  %arrayidx = getelementptr [6 x %struct.pl2303_type_data], ptr @pl2303_type_data, i32 0, i32 %retval.0.i75.ph
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_startup.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef %20) #10
  br label %do.end

do.end:                                           ; preds = %if.then4, %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 8) #14
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %arrayidx10 = getelementptr [6 x %struct.pl2303_type_data], ptr @pl2303_type_data, i32 0, i32 %retval.0.i75.ph
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx10, ptr %call7.i.i, align 8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %23 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %private.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %quirks = getelementptr inbounds %struct.pl2303_serial_private, ptr %call7.i.i, i32 0, i32 1
  %quirks14 = getelementptr [6 x %struct.pl2303_type_data], ptr @pl2303_type_data, i32 0, i32 %retval.0.i75.ph, i32 2
  %26 = ptrtoint ptr %quirks14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %quirks14, align 4
  %or = or i32 %27, %25
  %28 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or, ptr %quirks, align 4
  store ptr %call7.i.i, ptr %private.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %retval.0.i75.ph)
  %cmp16.not = icmp eq i32 %retval.0.i75.ph, 5
  br i1 %cmp16.not, label %if.end9.cleanup_crit_edge, label %if.then17

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17:                                        ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3264, i32 noundef 1) #14
  %tobool19.not = icmp eq ptr %call7.i, null
  br i1 %tobool19.not, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end21:                                         ; preds = %if.then17
  %call22 = call fastcc i32 @pl2303_vendor_read(ptr noundef %serial, i16 noundef zeroext -31612, ptr noundef nonnull %call7.i)
  %30 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %private.i, align 4
  %interface.i77 = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %32 = ptrtoint ptr %interface.i77 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %interface.i77, align 4
  %dev1.i = getelementptr inbounds %struct.usb_interface, ptr %33, i32 0, i32 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_vendor_write.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_startup, %if.then.i)) #10
          to label %do.end.i79 [label %if.then.i], !srcloc !175

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_vendor_write.__UNIQUE_ID_ddebug239, ptr noundef %dev1.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 1028, i32 noundef 0) #10
  br label %do.end.i79

do.end.i79:                                       ; preds = %if.then.i, %if.end21
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %31, align 4
  %cmp.i78 = icmp eq ptr %35, getelementptr inbounds ([6 x %struct.pl2303_type_data], ptr @pl2303_type_data, i32 0, i32 5)
  %..i = select i1 %cmp.i78, i8 -128, i8 1
  %36 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %serial, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 8
  %shl.i.i = shl i32 %39, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call12.i = call i32 @usb_control_msg(ptr noundef %37, i32 noundef %or.i, i8 noundef zeroext %..i, i8 noundef zeroext 64, i16 noundef zeroext 1028, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %do.end.i79.pl2303_vendor_write.exit_crit_edge, label %do.end17.i

do.end.i79.pl2303_vendor_write.exit_crit_edge:    ; preds = %do.end.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_vendor_write.exit

do.end17.i:                                       ; preds = %do.end.i79
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef 1028, i32 noundef %call12.i) #13
  br label %pl2303_vendor_write.exit

pl2303_vendor_write.exit:                         ; preds = %do.end17.i, %do.end.i79.pl2303_vendor_write.exit_crit_edge
  %call24 = call fastcc i32 @pl2303_vendor_read(ptr noundef %serial, i16 noundef zeroext -31612, ptr noundef nonnull %call7.i)
  %call25 = call fastcc i32 @pl2303_vendor_read(ptr noundef %serial, i16 noundef zeroext -31869, ptr noundef nonnull %call7.i)
  %call26 = call fastcc i32 @pl2303_vendor_read(ptr noundef %serial, i16 noundef zeroext -31612, ptr noundef nonnull %call7.i)
  %40 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %private.i, align 4
  %42 = ptrtoint ptr %interface.i77 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %interface.i77, align 4
  %dev1.i82 = getelementptr inbounds %struct.usb_interface, ptr %43, i32 0, i32 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_vendor_write.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_startup, %if.then.i83)) #10
          to label %do.end.i90 [label %if.then.i83], !srcloc !175

if.then.i83:                                      ; preds = %pl2303_vendor_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_vendor_write.__UNIQUE_ID_ddebug239, ptr noundef %dev1.i82, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 1028, i32 noundef 1) #10
  br label %do.end.i90

do.end.i90:                                       ; preds = %if.then.i83, %pl2303_vendor_write.exit
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %41, align 4
  %cmp.i84 = icmp eq ptr %45, getelementptr inbounds ([6 x %struct.pl2303_type_data], ptr @pl2303_type_data, i32 0, i32 5)
  %..i85 = select i1 %cmp.i84, i8 -128, i8 1
  %46 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %serial, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 8
  %shl.i.i86 = shl i32 %49, 8
  %or.i87 = or i32 %shl.i.i86, -2147483648
  %call12.i88 = call i32 @usb_control_msg(ptr noundef %47, i32 noundef %or.i87, i8 noundef zeroext %..i85, i8 noundef zeroext 64, i16 noundef zeroext 1028, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i88)
  %tobool13.not.i89 = icmp eq i32 %call12.i88, 0
  br i1 %tobool13.not.i89, label %do.end.i90.pl2303_vendor_write.exit92_crit_edge, label %do.end17.i91

do.end.i90.pl2303_vendor_write.exit92_crit_edge:  ; preds = %do.end.i90
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_vendor_write.exit92

do.end17.i91:                                     ; preds = %do.end.i90
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i82, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef 1028, i32 noundef %call12.i88) #13
  br label %pl2303_vendor_write.exit92

pl2303_vendor_write.exit92:                       ; preds = %do.end17.i91, %do.end.i90.pl2303_vendor_write.exit92_crit_edge
  %call28 = call fastcc i32 @pl2303_vendor_read(ptr noundef %serial, i16 noundef zeroext -31612, ptr noundef nonnull %call7.i)
  %call29 = call fastcc i32 @pl2303_vendor_read(ptr noundef %serial, i16 noundef zeroext -31869, ptr noundef nonnull %call7.i)
  %50 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %private.i, align 4
  %52 = ptrtoint ptr %interface.i77 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %interface.i77, align 4
  %dev1.i95 = getelementptr inbounds %struct.usb_interface, ptr %53, i32 0, i32 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_vendor_write.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_startup, %if.then.i96)) #10
          to label %do.end.i103 [label %if.then.i96], !srcloc !175

if.then.i96:                                      ; preds = %pl2303_vendor_write.exit92
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_vendor_write.__UNIQUE_ID_ddebug239, ptr noundef %dev1.i95, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef 1) #10
  br label %do.end.i103

do.end.i103:                                      ; preds = %if.then.i96, %pl2303_vendor_write.exit92
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %51, align 4
  %cmp.i97 = icmp eq ptr %55, getelementptr inbounds ([6 x %struct.pl2303_type_data], ptr @pl2303_type_data, i32 0, i32 5)
  %..i98 = select i1 %cmp.i97, i8 -128, i8 1
  %56 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %serial, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 8
  %shl.i.i99 = shl i32 %59, 8
  %or.i100 = or i32 %shl.i.i99, -2147483648
  %call12.i101 = call i32 @usb_control_msg(ptr noundef %57, i32 noundef %or.i100, i8 noundef zeroext %..i98, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i101)
  %tobool13.not.i102 = icmp eq i32 %call12.i101, 0
  br i1 %tobool13.not.i102, label %do.end.i103.pl2303_vendor_write.exit105_crit_edge, label %do.end17.i104

do.end.i103.pl2303_vendor_write.exit105_crit_edge: ; preds = %do.end.i103
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_vendor_write.exit105

do.end17.i104:                                    ; preds = %do.end.i103
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i95, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef %call12.i101) #13
  br label %pl2303_vendor_write.exit105

pl2303_vendor_write.exit105:                      ; preds = %do.end17.i104, %do.end.i103.pl2303_vendor_write.exit105_crit_edge
  %60 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %private.i, align 4
  %62 = ptrtoint ptr %interface.i77 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %interface.i77, align 4
  %dev1.i108 = getelementptr inbounds %struct.usb_interface, ptr %63, i32 0, i32 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_vendor_write.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_startup, %if.then.i109)) #10
          to label %do.end.i116 [label %if.then.i109], !srcloc !175

if.then.i109:                                     ; preds = %pl2303_vendor_write.exit105
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_vendor_write.__UNIQUE_ID_ddebug239, ptr noundef %dev1.i108, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 1, i32 noundef 0) #10
  br label %do.end.i116

do.end.i116:                                      ; preds = %if.then.i109, %pl2303_vendor_write.exit105
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %61, align 4
  %cmp.i110 = icmp eq ptr %65, getelementptr inbounds ([6 x %struct.pl2303_type_data], ptr @pl2303_type_data, i32 0, i32 5)
  %..i111 = select i1 %cmp.i110, i8 -128, i8 1
  %66 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %serial, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 8
  %shl.i.i112 = shl i32 %69, 8
  %or.i113 = or i32 %shl.i.i112, -2147483648
  %call12.i114 = call i32 @usb_control_msg(ptr noundef %67, i32 noundef %or.i113, i8 noundef zeroext %..i111, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i114)
  %tobool13.not.i115 = icmp eq i32 %call12.i114, 0
  br i1 %tobool13.not.i115, label %do.end.i116.pl2303_vendor_write.exit118_crit_edge, label %do.end17.i117

do.end.i116.pl2303_vendor_write.exit118_crit_edge: ; preds = %do.end.i116
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_vendor_write.exit118

do.end17.i117:                                    ; preds = %do.end.i116
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i108, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef 1, i32 noundef %call12.i114) #13
  br label %pl2303_vendor_write.exit118

pl2303_vendor_write.exit118:                      ; preds = %do.end17.i117, %do.end.i116.pl2303_vendor_write.exit118_crit_edge
  %70 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %quirks, align 4
  %and = and i32 %71, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  %72 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %private.i, align 4
  %74 = ptrtoint ptr %interface.i77 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %interface.i77, align 4
  %dev1.i134 = getelementptr inbounds %struct.usb_interface, ptr %75, i32 0, i32 7
  br i1 %tobool33.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %pl2303_vendor_write.exit118
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_vendor_write.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_startup, %if.then.i122)) #10
          to label %do.end.i129 [label %if.then.i122], !srcloc !175

if.then.i122:                                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_vendor_write.__UNIQUE_ID_ddebug239, ptr noundef %dev1.i134, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 2, i32 noundef 36) #10
  br label %do.end.i129

do.end.i129:                                      ; preds = %if.then.i122, %if.then34
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %73, align 4
  %cmp.i123 = icmp eq ptr %77, getelementptr inbounds ([6 x %struct.pl2303_type_data], ptr @pl2303_type_data, i32 0, i32 5)
  %..i124 = select i1 %cmp.i123, i8 -128, i8 1
  %78 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %serial, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 8
  %shl.i.i125 = shl i32 %81, 8
  %or.i126 = or i32 %shl.i.i125, -2147483648
  %call12.i127 = call i32 @usb_control_msg(ptr noundef %79, i32 noundef %or.i126, i8 noundef zeroext %..i124, i8 noundef zeroext 64, i16 noundef zeroext 2, i16 noundef zeroext 36, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i127)
  %tobool13.not.i128 = icmp eq i32 %call12.i127, 0
  br i1 %tobool13.not.i128, label %do.end.i129.if.end37_crit_edge, label %do.end.i129.if.end37.sink.split_crit_edge

do.end.i129.if.end37.sink.split_crit_edge:        ; preds = %do.end.i129
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.sink.split

do.end.i129.if.end37_crit_edge:                   ; preds = %do.end.i129
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.else:                                          ; preds = %pl2303_vendor_write.exit118
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_vendor_write.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_startup, %if.then.i135)) #10
          to label %do.end.i142 [label %if.then.i135], !srcloc !175

if.then.i135:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_vendor_write.__UNIQUE_ID_ddebug239, ptr noundef %dev1.i134, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 2, i32 noundef 68) #10
  br label %do.end.i142

do.end.i142:                                      ; preds = %if.then.i135, %if.else
  %82 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %73, align 4
  %cmp.i136 = icmp eq ptr %83, getelementptr inbounds ([6 x %struct.pl2303_type_data], ptr @pl2303_type_data, i32 0, i32 5)
  %..i137 = select i1 %cmp.i136, i8 -128, i8 1
  %84 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %serial, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 8
  %shl.i.i138 = shl i32 %87, 8
  %or.i139 = or i32 %shl.i.i138, -2147483648
  %call12.i140 = call i32 @usb_control_msg(ptr noundef %85, i32 noundef %or.i139, i8 noundef zeroext %..i137, i8 noundef zeroext 64, i16 noundef zeroext 2, i16 noundef zeroext 68, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i140)
  %tobool13.not.i141 = icmp eq i32 %call12.i140, 0
  br i1 %tobool13.not.i141, label %do.end.i142.if.end37_crit_edge, label %do.end.i142.if.end37.sink.split_crit_edge

do.end.i142.if.end37.sink.split_crit_edge:        ; preds = %do.end.i142
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.sink.split

do.end.i142.if.end37_crit_edge:                   ; preds = %do.end.i142
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.end37.sink.split:                              ; preds = %do.end.i142.if.end37.sink.split_crit_edge, %do.end.i129.if.end37.sink.split_crit_edge
  %call12.i140.sink = phi i32 [ %call12.i127, %do.end.i129.if.end37.sink.split_crit_edge ], [ %call12.i140, %do.end.i142.if.end37.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i134, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef 2, i32 noundef %call12.i140.sink) #13
  br label %if.end37

if.end37:                                         ; preds = %if.end37.sink.split, %do.end.i142.if.end37_crit_edge, %do.end.i129.if.end37_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then20, %if.end9.cleanup_crit_edge, %do.end.cleanup_crit_edge, %pl2303_detect_type.exit
  %retval.0 = phi i32 [ -12, %if.then20 ], [ -19, %pl2303_detect_type.exit ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %if.end37 ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl2303_calc_num_ports(ptr nocapture noundef readonly %serial, ptr nocapture noundef %epds) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %2 = ptrtoint ptr %1 to i32
  %interface = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %3 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %interface, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %4, i32 0, i32 7
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %serial, align 4
  %actconfig.i = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 20
  %7 = ptrtoint ptr %actconfig.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %actconfig.i, align 4
  %interface4.i = getelementptr inbounds %struct.usb_host_config, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %interface4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %interface4.i, align 4
  %cmp.i = icmp eq ptr %4, %10
  br i1 %cmp.i, label %if.then.if.end5_crit_edge, label %if.end.i

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end.i:                                         ; preds = %if.then
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur_altsetting.i, align 4
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bNumEndpoints.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp84.not.i = icmp eq i8 %14, 0
  br i1 %cmp84.not.i, label %if.end.i.if.end5_crit_edge, label %for.body.lr.ph.i

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %endpoint10.i = getelementptr inbounds %struct.usb_host_interface, ptr %12, i32 0, i32 3
  %num_interrupt_in.i = getelementptr inbounds %struct.usb_serial_endpoints, ptr %epds, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc28.i, %for.inc.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %endpoint10.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %endpoint10.i, align 4
  %arrayidx11.i = getelementptr %struct.usb_host_endpoint, ptr %16, i32 %i.05.i
  %bmAttributes.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx11.i, i32 0, i32 3
  %17 = ptrtoint ptr %bmAttributes.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bmAttributes.i.i.i, align 1
  %19 = and i8 %18, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp.i.not.i.i = icmp eq i8 %19, 3
  br i1 %cmp.i.not.i.i, label %usb_endpoint_is_int_in.exit.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

usb_endpoint_is_int_in.exit.i:                    ; preds = %for.body.i
  %bEndpointAddress.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx11.i, i32 0, i32 2
  %20 = ptrtoint ptr %bEndpointAddress.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bEndpointAddress.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %tobool.not.i = icmp sgt i8 %21, -1
  br i1 %tobool.not.i, label %usb_endpoint_is_int_in.exit.i.for.inc.i_crit_edge, label %do.body.i

usb_endpoint_is_int_in.exit.i.for.inc.i_crit_edge: ; preds = %usb_endpoint_is_int_in.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

do.body.i:                                        ; preds = %usb_endpoint_is_int_in.exit.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_endpoint_hack.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_calc_num_ports, %if.then19.i)) #10
          to label %do.end.i [label %if.then19.i], !srcloc !175

if.then19.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_endpoint_hack.__UNIQUE_ID_ddebug240, ptr noundef %dev1, ptr noundef nonnull @.str.22) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then19.i, %do.body.i
  %22 = ptrtoint ptr %num_interrupt_in.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %num_interrupt_in.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %23)
  %cmp22.i = icmp ult i8 %23, 16
  br i1 %cmp22.i, label %if.then24.i, label %do.end.i.for.inc.i_crit_edge

do.end.i.for.inc.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then24.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv21.i = zext i8 %23 to i32
  %inc.i = add nuw nsw i8 %23, 1
  %24 = ptrtoint ptr %num_interrupt_in.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %inc.i, ptr %num_interrupt_in.i, align 2
  %arrayidx26.i = getelementptr %struct.usb_serial_endpoints, ptr %epds, i32 0, i32 6, i32 %conv21.i
  %25 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx11.i, ptr %arrayidx26.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then24.i, %do.end.i.for.inc.i_crit_edge, %usb_endpoint_is_int_in.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc28.i = add nuw nsw i32 %i.05.i, 1
  %26 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bNumEndpoints.i, align 4
  %conv.i = zext i8 %27 to i32
  %cmp8.i = icmp ult i32 %inc28.i, %conv.i
  br i1 %cmp8.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end5_crit_edge

for.inc.i.if.end5_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end5:                                          ; preds = %for.inc.i.if.end5_crit_edge, %if.end.i.if.end5_crit_edge, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %num_interrupt_in = getelementptr inbounds %struct.usb_serial_endpoints, ptr %epds, i32 0, i32 2
  %28 = ptrtoint ptr %num_interrupt_in to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num_interrupt_in, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp = icmp eq i8 %29, 0
  br i1 %cmp, label %do.end, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ 1, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl2303_release(ptr nocapture noundef readonly %serial) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl2303_port_probe(ptr nocapture noundef writeonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 56) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @pl2303_port_probe.__key, i16 noundef signext 3) #10
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %drain_delay = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1, i32 18
  %2 = ptrtoint ptr %drain_delay to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 256, ptr %drain_delay, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl2303_port_remove(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl2303_open(ptr noundef %tty, ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %quirks = getelementptr inbounds %struct.pl2303_serial_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 21
  %8 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_urb, align 8
  %pipe = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pipe, align 4
  %call2 = tail call i32 @usb_clear_halt(ptr noundef %7, i32 noundef %11) #10
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 14
  %14 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_urb, align 4
  %pipe4 = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %pipe4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pipe4, align 4
  %call5 = tail call i32 @usb_clear_halt(ptr noundef %13, i32 noundef %17) #10
  br label %if.end11

if.else:                                          ; preds = %entry
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %cmp = icmp eq ptr %19, getelementptr inbounds ([6 x %struct.pl2303_type_data], ptr @pl2303_type_data, i32 0, i32 5)
  %interface.i = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %interface.i, align 4
  %dev1.i = getelementptr inbounds %struct.usb_interface, ptr %21, i32 0, i32 7
  br i1 %cmp, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_vendor_write.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_open, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !175

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_vendor_write.__UNIQUE_ID_ddebug239, ptr noundef %dev1.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 7, i32 noundef 3) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then6
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %cmp.i = icmp eq ptr %23, getelementptr inbounds ([6 x %struct.pl2303_type_data], ptr @pl2303_type_data, i32 0, i32 5)
  %..i = select i1 %cmp.i, i8 -128, i8 1
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i.i = shl i32 %27, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call12.i = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or.i, i8 noundef zeroext %..i, i8 noundef zeroext 64, i16 noundef zeroext 7, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %do.end.i.if.end11_crit_edge, label %do.end17.i

do.end.i.if.end11_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

do.end17.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef 7, i32 noundef %call12.i) #13
  br label %if.end11

if.else8:                                         ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_vendor_write.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_open, %if.then.i49)) #10
          to label %do.end.i56 [label %if.then.i49], !srcloc !175

if.then.i49:                                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_vendor_write.__UNIQUE_ID_ddebug239, ptr noundef %dev1.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 8, i32 noundef 0) #10
  br label %do.end.i56

do.end.i56:                                       ; preds = %if.then.i49, %if.else8
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  %cmp.i50 = icmp eq ptr %29, getelementptr inbounds ([6 x %struct.pl2303_type_data], ptr @pl2303_type_data, i32 0, i32 5)
  %..i51 = select i1 %cmp.i50, i8 -128, i8 1
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  %shl.i.i52 = shl i32 %33, 8
  %or.i53 = or i32 %shl.i.i52, -2147483648
  %call12.i54 = tail call i32 @usb_control_msg(ptr noundef %31, i32 noundef %or.i53, i8 noundef zeroext %..i51, i8 noundef zeroext 64, i16 noundef zeroext 8, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i54)
  %tobool13.not.i55 = icmp eq i32 %call12.i54, 0
  br i1 %tobool13.not.i55, label %do.end.i56.pl2303_vendor_write.exit58_crit_edge, label %do.end17.i57

do.end.i56.pl2303_vendor_write.exit58_crit_edge:  ; preds = %do.end.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_vendor_write.exit58

do.end17.i57:                                     ; preds = %do.end.i56
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef 8, i32 noundef %call12.i54) #13
  br label %pl2303_vendor_write.exit58

pl2303_vendor_write.exit58:                       ; preds = %do.end17.i57, %do.end.i56.pl2303_vendor_write.exit58_crit_edge
  %34 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %private.i, align 4
  %36 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %interface.i, align 4
  %dev1.i61 = getelementptr inbounds %struct.usb_interface, ptr %37, i32 0, i32 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_vendor_write.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_open, %if.then.i62)) #10
          to label %do.end.i69 [label %if.then.i62], !srcloc !175

if.then.i62:                                      ; preds = %pl2303_vendor_write.exit58
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_vendor_write.__UNIQUE_ID_ddebug239, ptr noundef %dev1.i61, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 9, i32 noundef 0) #10
  br label %do.end.i69

do.end.i69:                                       ; preds = %if.then.i62, %pl2303_vendor_write.exit58
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  %cmp.i63 = icmp eq ptr %39, getelementptr inbounds ([6 x %struct.pl2303_type_data], ptr @pl2303_type_data, i32 0, i32 5)
  %..i64 = select i1 %cmp.i63, i8 -128, i8 1
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %shl.i.i65 = shl i32 %43, 8
  %or.i66 = or i32 %shl.i.i65, -2147483648
  %call12.i67 = tail call i32 @usb_control_msg(ptr noundef %41, i32 noundef %or.i66, i8 noundef zeroext %..i64, i8 noundef zeroext 64, i16 noundef zeroext 9, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i67)
  %tobool13.not.i68 = icmp eq i32 %call12.i67, 0
  br i1 %tobool13.not.i68, label %do.end.i69.if.end11_crit_edge, label %do.end17.i70

do.end.i69.if.end11_crit_edge:                    ; preds = %do.end.i69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

do.end17.i70:                                     ; preds = %do.end.i69
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i61, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef 9, i32 noundef %call12.i67) #13
  br label %if.end11

if.end11:                                         ; preds = %do.end17.i70, %do.end.i69.if.end11_crit_edge, %do.end17.i, %do.end.i.if.end11_crit_edge, %if.then
  %tobool12.not = icmp eq ptr %tty, null
  br i1 %tobool12.not, label %if.end11.if.end14_crit_edge, label %if.then13

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pl2303_set_termios(ptr noundef nonnull %tty, ptr noundef %port, ptr noundef null)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11.if.end14_crit_edge
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %44 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %interrupt_in_urb, align 4
  %call15 = tail call i32 @usb_submit_urb(ptr noundef %45, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end19, label %do.end

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %dev18 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.24, i32 noundef %call15) #13
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %call20 = tail call i32 @usb_serial_generic_open(ptr noundef %tty, ptr noundef %port) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %if.then22

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %interrupt_in_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %47) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end19.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call15, %do.end ], [ %call20, %if.then22 ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl2303_close(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_serial_generic_close(ptr noundef %port) #10
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %0 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interrupt_in_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %1) #10
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_set_break.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_close, %if.then6.i)) #10
          to label %do.end.i [label %if.then6.i], !srcloc !175

if.then6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_set_break.__UNIQUE_ID_ddebug259, ptr noundef %dev.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.28) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i.i = shl i32 %7, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call12.i = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or.i, i8 noundef zeroext 35, i8 noundef zeroext 33, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %do.end.i.pl2303_set_break.exit_crit_edge, label %do.end17.i

do.end.i.pl2303_set_break.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_set_break.exit

do.end17.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev18.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18.i, ptr noundef nonnull @.str.30, i32 noundef %call12.i) #13
  br label %pl2303_set_break.exit

pl2303_set_break.exit:                            ; preds = %do.end17.i, %do.end.i.pl2303_set_break.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl2303_set_termios(ptr noundef %tty, ptr noundef %port, ptr noundef %old_termios) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %tobool.not = icmp eq ptr %old_termios, null
  br i1 %tobool.not, label %if.end.thread, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %6 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %termios, align 4
  %8 = ptrtoint ptr %old_termios to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old_termios, align 4
  %xor.i = xor i32 %9, %7
  %and.i = and i32 %xor.i, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %land.lhs.true.pl2303_termios_change.exit.thread_crit_edge

land.lhs.true.pl2303_termios_change.exit.thread_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_termios_change.exit.thread

lor.lhs.false.i:                                  ; preds = %land.lhs.true
  %arrayidx.i = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 8
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %arrayidx3.i = getelementptr %struct.ktermios, ptr %old_termios, i32 0, i32 5, i32 8
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx3.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp.not.i = icmp eq i8 %11, %13
  br i1 %cmp.not.i, label %pl2303_termios_change.exit, label %lor.lhs.false.i.pl2303_termios_change.exit.thread_crit_edge

lor.lhs.false.i.pl2303_termios_change.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_termios_change.exit.thread

pl2303_termios_change.exit.thread:                ; preds = %lor.lhs.false.i.pl2303_termios_change.exit.thread_crit_edge, %land.lhs.true.pl2303_termios_change.exit.thread_crit_edge
  %call.i551 = tail call i32 @tty_termios_hw_change(ptr noundef %termios, ptr noundef nonnull %old_termios) #10
  br label %if.end

pl2303_termios_change.exit:                       ; preds = %lor.lhs.false.i
  %arrayidx7.i = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 9
  %14 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx7.i, align 1
  %arrayidx10.i = getelementptr %struct.ktermios, ptr %old_termios, i32 0, i32 5, i32 9
  %16 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx10.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp12.i = icmp ne i8 %15, %17
  %call.i = tail call i32 @tty_termios_hw_change(ptr noundef %termios, ptr noundef nonnull %old_termios) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not.i = icmp ne i32 %call.i, 0
  %spec.select.i = select i1 %tobool14.not.i, i1 true, i1 %cmp12.i
  br i1 %spec.select.i, label %pl2303_termios_change.exit.if.end_crit_edge, label %pl2303_termios_change.exit.cleanup_crit_edge

pl2303_termios_change.exit.cleanup_crit_edge:     ; preds = %pl2303_termios_change.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

pl2303_termios_change.exit.if.end_crit_edge:      ; preds = %pl2303_termios_change.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %pl2303_termios_change.exit.if.end_crit_edge, %pl2303_termios_change.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 7) #14
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.then8.critedge, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end.thread:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i554 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 7) #14
  %tobool5.not555 = icmp eq ptr %call7.i.i554, null
  br i1 %tobool5.not555, label %if.end.thread.cleanup_crit_edge, label %if.end.thread.if.end11_crit_edge

if.end.thread.if.end11_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end.thread.cleanup_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %20 = call ptr @memcpy(ptr %termios, ptr %old_termios, i32 44)
  br label %cleanup

if.end11:                                         ; preds = %if.end.thread.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %call7.i.i556 = phi ptr [ %call7.i.i554, %if.end.thread.if.end11_crit_edge ], [ %call7.i.i, %if.end.if.end11_crit_edge ]
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %shl.i.i = shl i32 %26, 8
  %or1.i = or i32 %shl.i.i, -2147483520
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %24, i32 noundef %or1.i, i8 noundef zeroext 33, i8 noundef zeroext -95, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i556, i16 noundef zeroext 7, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call2.i)
  %cmp.not.i405 = icmp eq i32 %call2.i, 7
  br i1 %cmp.not.i405, label %do.body7.i, label %do.end.i

do.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %dev3.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef %call2.i) #13
  br label %pl2303_get_line_request.exit

do.body7.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_get_line_request.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_set_termios, %if.then11.i)) #10
          to label %pl2303_get_line_request.exit [label %if.then11.i], !srcloc !175

if.then11.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev12.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_get_line_request.__UNIQUE_ID_ddebug247, ptr noundef %dev12.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, ptr noundef nonnull %call7.i.i556) #10
  br label %pl2303_get_line_request.exit

pl2303_get_line_request.exit:                     ; preds = %if.then11.i, %do.body7.i, %do.end.i
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %27 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %c_cflag, align 4
  %call14 = tail call zeroext i8 @tty_get_char_size(i32 noundef %28) #10
  %arrayidx = getelementptr i8, ptr %call7.i.i556, i32 6
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %call14, ptr %arrayidx, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_set_termios.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_set_termios, %if.then19)) #10
          to label %do.end [label %if.then19], !srcloc !175

if.then19:                                        ; preds = %pl2303_get_line_request.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx, align 2
  %conv = zext i8 %31 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_set_termios.__UNIQUE_ID_ddebug249, ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then19, %pl2303_get_line_request.exit
  tail call fastcc void @pl2303_encode_baud_rate(ptr noundef %tty, ptr noundef %port, ptr noundef nonnull %call7.i.i556)
  %32 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %c_cflag, align 4
  %and = and i32 %33, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.else69, label %if.then26

if.then26:                                        ; preds = %do.end
  %and29 = and i32 %33, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %cmp = icmp eq i32 %and29, 0
  %arrayidx32 = getelementptr i8, ptr %call7.i.i556, i32 4
  br i1 %cmp, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %arrayidx32, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_set_termios.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_set_termios, %if.then45)) #10
          to label %if.end88 [label %if.then45], !srcloc !175

if.then45:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  %dev46 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_set_termios.__UNIQUE_ID_ddebug250, ptr noundef %dev46, ptr noundef nonnull @.str.33) #10
  br label %if.end88

if.else:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 2, ptr %arrayidx32, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_set_termios.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_set_termios, %if.then63)) #10
          to label %if.end88 [label %if.then63], !srcloc !175

if.then63:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %dev64 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_set_termios.__UNIQUE_ID_ddebug251, ptr noundef %dev64, ptr noundef nonnull @.str.34) #10
  br label %if.end88

if.else69:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx70 = getelementptr i8, ptr %call7.i.i556, i32 4
  %36 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %arrayidx70, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_set_termios.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_set_termios, %if.then83)) #10
          to label %if.end88 [label %if.then83], !srcloc !175

if.then83:                                        ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #12
  %dev84 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_set_termios.__UNIQUE_ID_ddebug252, ptr noundef %dev84, ptr noundef nonnull @.str.35) #10
  br label %if.end88

if.end88:                                         ; preds = %if.then83, %if.else69, %if.then63, %if.else, %if.then45, %if.then31
  %37 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %c_cflag, align 4
  %and91 = and i32 %38, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.else187, label %if.then93

if.then93:                                        ; preds = %if.end88
  %and96 = and i32 %38, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  %and145 = and i32 %38, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  %arrayidx167 = getelementptr i8, ptr %call7.i.i556, i32 5
  br i1 %tobool97.not, label %if.else142, label %if.then98

if.then98:                                        ; preds = %if.then93
  br i1 %tobool146.not, label %if.else122, label %if.then103

if.then103:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 3, ptr %arrayidx167, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_set_termios.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_set_termios, %if.then117)) #10
          to label %if.end206 [label %if.then117], !srcloc !175

if.then117:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #12
  %dev118 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_set_termios.__UNIQUE_ID_ddebug253, ptr noundef %dev118, ptr noundef nonnull @.str.36) #10
  br label %if.end206

if.else122:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %arrayidx167, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_set_termios.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_set_termios, %if.then136)) #10
          to label %if.end206 [label %if.then136], !srcloc !175

if.then136:                                       ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #12
  %dev137 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_set_termios.__UNIQUE_ID_ddebug254, ptr noundef %dev137, ptr noundef nonnull @.str.37) #10
  br label %if.end206

if.else142:                                       ; preds = %if.then93
  br i1 %tobool146.not, label %if.else166, label %if.then147

if.then147:                                       ; preds = %if.else142
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 4, ptr %arrayidx167, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_set_termios.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_set_termios, %if.then161)) #10
          to label %if.end206 [label %if.then161], !srcloc !175

if.then161:                                       ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #12
  %dev162 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_set_termios.__UNIQUE_ID_ddebug255, ptr noundef %dev162, ptr noundef nonnull @.str.38) #10
  br label %if.end206

if.else166:                                       ; preds = %if.else142
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 2, ptr %arrayidx167, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_set_termios.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_set_termios, %if.then180)) #10
          to label %if.end206 [label %if.then180], !srcloc !175

if.then180:                                       ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #12
  %dev181 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_set_termios.__UNIQUE_ID_ddebug256, ptr noundef %dev181, ptr noundef nonnull @.str.39) #10
  br label %if.end206

if.else187:                                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx188 = getelementptr i8, ptr %call7.i.i556, i32 5
  %43 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %arrayidx188, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_set_termios.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_set_termios, %if.then201)) #10
          to label %if.end206 [label %if.then201], !srcloc !175

if.then201:                                       ; preds = %if.else187
  call void @__sanitizer_cov_trace_pc() #12
  %dev202 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_set_termios.__UNIQUE_ID_ddebug257, ptr noundef %dev202, ptr noundef nonnull @.str.40) #10
  br label %if.end206

if.end206:                                        ; preds = %if.then201, %if.else187, %if.then180, %if.else166, %if.then161, %if.then147, %if.then136, %if.else122, %if.then117, %if.then103
  br i1 %tobool.not, label %if.end206.if.then210_crit_edge, label %lor.lhs.false

if.end206.if.then210_crit_edge:                   ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then210

lor.lhs.false:                                    ; preds = %if.end206
  %line_settings = getelementptr inbounds %struct.pl2303_private, ptr %5, i32 0, i32 3
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %call7.i.i556, ptr noundef dereferenceable(7) %line_settings, i32 7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool209.not = icmp eq i32 %bcmp, 0
  br i1 %tobool209.not, label %lor.lhs.false.do.body219_crit_edge, label %lor.lhs.false.if.then210_crit_edge

lor.lhs.false.if.then210_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then210

lor.lhs.false.do.body219_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body219

if.then210:                                       ; preds = %lor.lhs.false.if.then210_crit_edge, %if.end206.if.then210_crit_edge
  %44 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %port, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 8
  %shl.i.i406 = shl i32 %49, 8
  %or.i = or i32 %shl.i.i406, -2147483648
  %call1.i = tail call i32 @usb_control_msg(ptr noundef %47, i32 noundef %or.i, i8 noundef zeroext 32, i8 noundef zeroext 33, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i556, i16 noundef zeroext 7, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %pl2303_set_line_request.exit.thread570, label %do.body3.i

pl2303_set_line_request.exit.thread570:           ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #12
  %dev2.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.47, i32 noundef %call1.i) #13
  br label %do.body219

do.body3.i:                                       ; preds = %if.then210
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_set_line_request.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_set_termios, %pl2303_set_line_request.exit.thread)) #10
          to label %if.then213 [label %pl2303_set_line_request.exit.thread], !srcloc !175

pl2303_set_line_request.exit.thread:              ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev8.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_set_line_request.__UNIQUE_ID_ddebug248, ptr noundef %dev8.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.47, ptr noundef nonnull %call7.i.i556) #10
  br label %if.then213

if.then213:                                       ; preds = %pl2303_set_line_request.exit.thread, %do.body3.i
  %line_settings214 = getelementptr inbounds %struct.pl2303_private, ptr %5, i32 0, i32 3
  %50 = call ptr @memcpy(ptr %line_settings214, ptr %call7.i.i556, i32 7)
  br label %do.body219

do.body219:                                       ; preds = %if.then213, %pl2303_set_line_request.exit.thread570, %lor.lhs.false.do.body219_crit_edge
  %call224 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #10
  %line_control = getelementptr inbounds %struct.pl2303_private, ptr %5, i32 0, i32 1
  %51 = ptrtoint ptr %line_control to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %line_control, align 4
  %53 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %c_cflag, align 4
  %and231 = and i32 %54, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231)
  %cmp232 = icmp eq i32 %and231, 0
  br i1 %cmp232, label %if.then234, label %if.else239

if.then234:                                       ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #12
  %55 = and i8 %52, -4
  br label %if.end251.sink.split

if.else239:                                       ; preds = %do.body219
  br i1 %tobool.not, label %if.else239.if.end251_crit_edge, label %land.lhs.true241

if.else239.if.end251_crit_edge:                   ; preds = %if.else239
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end251

land.lhs.true241:                                 ; preds = %if.else239
  %c_cflag242 = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 2
  %56 = ptrtoint ptr %c_cflag242 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %c_cflag242, align 4
  %and243 = and i32 %57, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and243)
  %cmp244 = icmp eq i32 %and243, 0
  br i1 %cmp244, label %if.then246, label %land.lhs.true241.if.end251_crit_edge

land.lhs.true241.if.end251_crit_edge:             ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end251

if.then246:                                       ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #12
  %58 = or i8 %52, 3
  br label %if.end251.sink.split

if.end251.sink.split:                             ; preds = %if.then246, %if.then234
  %.sink = phi i8 [ %58, %if.then246 ], [ %55, %if.then234 ]
  %59 = ptrtoint ptr %line_control to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %.sink, ptr %line_control, align 4
  br label %if.end251

if.end251:                                        ; preds = %if.end251.sink.split, %land.lhs.true241.if.end251_crit_edge, %if.else239.if.end251_crit_edge
  %60 = ptrtoint ptr %line_control to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %line_control, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %52, i8 %61)
  %cmp255.not = icmp eq i8 %52, %61
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %call224) #10
  br i1 %cmp255.not, label %if.end251.if.end263_crit_edge, label %if.then257

if.end251.if.end263_crit_edge:                    ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end263

if.then257:                                       ; preds = %if.end251
  %62 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %port, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_set_control_lines.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_set_termios, %if.then.i)) #10
          to label %do.end.i411 [label %if.then.i], !srcloc !175

if.then.i:                                        ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #12
  %dev5.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv.i = zext i8 %61 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_set_control_lines.__UNIQUE_ID_ddebug242, ptr noundef %dev5.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, i32 noundef %conv.i) #10
  br label %do.end.i411

do.end.i411:                                      ; preds = %if.then.i, %if.then257
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 8
  %shl.i.i409 = shl i32 %67, 8
  %or.i410 = or i32 %shl.i.i409, -2147483648
  %conv7.i = zext i8 %61 to i16
  %call8.i = tail call i32 @usb_control_msg(ptr noundef %65, i32 noundef %or.i410, i8 noundef zeroext 34, i8 noundef zeroext 33, i16 noundef zeroext %conv7.i, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %do.end.i411.if.end263_crit_edge, label %do.end13.i

do.end.i411.if.end263_crit_edge:                  ; preds = %do.end.i411
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end263

do.end13.i:                                       ; preds = %do.end.i411
  call void @__sanitizer_cov_trace_pc() #12
  %dev14.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.48, i32 noundef %call8.i) #13
  br label %if.end263

if.end263:                                        ; preds = %do.end13.i, %do.end.i411.if.end263_crit_edge, %if.end251.if.end263_crit_edge
  %68 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %69)
  %tobool267.not = icmp sgt i32 %69, -1
  br i1 %tobool267.not, label %if.else282, label %if.then268

if.then268:                                       ; preds = %if.end263
  %quirks = getelementptr inbounds %struct.pl2303_serial_private, ptr %3, i32 0, i32 1
  %70 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %quirks, align 4
  %and269 = and i32 %71, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and269)
  %tobool270.not = icmp eq i32 %and269, 0
  br i1 %tobool270.not, label %if.else273, label %if.then271

if.then271:                                       ; preds = %if.then268
  %72 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %private.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %74 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i412 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %74, i32 noundef 3264, i32 noundef 1) #14
  %tobool.not.i413 = icmp eq ptr %call7.i.i412, null
  br i1 %tobool.not.i413, label %if.then271.if.end304_crit_edge, label %if.end.i

if.then271.if.end304_crit_edge:                   ; preds = %if.then271
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end304

if.end.i:                                         ; preds = %if.then271
  %75 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %73, align 4
  %cmp.i414 = icmp eq ptr %76, getelementptr inbounds ([6 x %struct.pl2303_type_data], ptr @pl2303_type_data, i32 0, i32 5)
  %conv5.i = select i1 %cmp.i414, i16 0, i16 128
  %call6.i = tail call fastcc i32 @pl2303_vendor_read(ptr noundef %1, i16 noundef zeroext %conv5.i, ptr noundef nonnull %call7.i.i412) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool8.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end.i.if.end304.sink.split_crit_edge

if.end.i.if.end304.sink.split_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end304.sink.split

if.end10.i:                                       ; preds = %if.end.i
  %77 = ptrtoint ptr %call7.i.i412 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %call7.i.i412, align 8
  %and.i415 = and i8 %78, 15
  %or182.i = or i8 %and.i415, 64
  store i8 %or182.i, ptr %call7.i.i412, align 8
  %conv21.i = zext i8 %or182.i to i16
  %79 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %private.i, align 4
  %interface.i = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 2
  %81 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %interface.i, align 4
  %dev1.i = getelementptr inbounds %struct.usb_interface, ptr %82, i32 0, i32 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_vendor_write.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_set_termios, %if.then.i518)) #10
          to label %do.end.i522 [label %if.then.i518], !srcloc !175

if.then.i518:                                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv5.i517 = zext i8 %or182.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_vendor_write.__UNIQUE_ID_ddebug239, ptr noundef %dev1.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef %conv5.i517) #10
  br label %do.end.i522

do.end.i522:                                      ; preds = %if.then.i518, %if.end10.i
  %83 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %80, align 4
  %cmp.i519 = icmp eq ptr %84, getelementptr inbounds ([6 x %struct.pl2303_type_data], ptr @pl2303_type_data, i32 0, i32 5)
  %..i = select i1 %cmp.i519, i8 -128, i8 1
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %86, align 8
  %shl.i.i520 = shl i32 %88, 8
  %or.i521 = or i32 %shl.i.i520, -2147483648
  %call12.i = tail call i32 @usb_control_msg(ptr noundef %86, i32 noundef %or.i521, i8 noundef zeroext %..i, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv21.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %do.end.i522.if.end304.sink.split_crit_edge, label %do.end17.i

do.end.i522.if.end304.sink.split_crit_edge:       ; preds = %do.end.i522
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end304.sink.split

do.end17.i:                                       ; preds = %do.end.i522
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef %call12.i) #13
  br label %if.end304.sink.split

if.else273:                                       ; preds = %if.then268
  %89 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %3, align 4
  %cmp274 = icmp eq ptr %90, getelementptr inbounds ([6 x %struct.pl2303_type_data], ptr @pl2303_type_data, i32 0, i32 5)
  %91 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %private.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %93 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i417 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %93, i32 noundef 3264, i32 noundef 1) #14
  %tobool.not.i418 = icmp eq ptr %call7.i.i417, null
  br i1 %cmp274, label %if.then276, label %if.else278

if.then276:                                       ; preds = %if.else273
  br i1 %tobool.not.i418, label %if.then276.if.end304_crit_edge, label %if.end.i424

if.then276.if.end304_crit_edge:                   ; preds = %if.then276
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end304

if.end.i424:                                      ; preds = %if.then276
  %94 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %92, align 4
  %cmp.i419 = icmp eq ptr %95, getelementptr inbounds ([6 x %struct.pl2303_type_data], ptr @pl2303_type_data, i32 0, i32 5)
  %conv5.i421 = select i1 %cmp.i419, i16 10, i16 138
  %call6.i422 = tail call fastcc i32 @pl2303_vendor_read(ptr noundef %1, i16 noundef zeroext %conv5.i421, ptr noundef nonnull %call7.i.i417) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i422)
  %tobool8.not.i423 = icmp eq i32 %call6.i422, 0
  br i1 %tobool8.not.i423, label %if.end10.i429, label %if.end.i424.if.end304.sink.split_crit_edge

if.end.i424.if.end304.sink.split_crit_edge:       ; preds = %if.end.i424
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end304.sink.split

if.end10.i429:                                    ; preds = %if.end.i424
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %call7.i.i417 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %call7.i.i417, align 8
  %and.i425 = and i8 %97, -29
  %or182.i426 = or i8 %and.i425, 24
  store i8 %or182.i426, ptr %call7.i.i417, align 8
  %conv21.i427 = zext i8 %or182.i426 to i16
  %call22.i428 = tail call fastcc i32 @pl2303_vendor_write(ptr noundef %1, i16 noundef zeroext 10, i16 noundef zeroext %conv21.i427) #10
  br label %if.end304.sink.split

if.else278:                                       ; preds = %if.else273
  br i1 %tobool.not.i418, label %if.else278.if.end304_crit_edge, label %if.end.i440

if.else278.if.end304_crit_edge:                   ; preds = %if.else278
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end304

if.end.i440:                                      ; preds = %if.else278
  %98 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %92, align 4
  %cmp.i435 = icmp eq ptr %99, getelementptr inbounds ([6 x %struct.pl2303_type_data], ptr @pl2303_type_data, i32 0, i32 5)
  %conv5.i437 = select i1 %cmp.i435, i16 0, i16 128
  %call6.i438 = tail call fastcc i32 @pl2303_vendor_read(ptr noundef %1, i16 noundef zeroext %conv5.i437, ptr noundef nonnull %call7.i.i417) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i438)
  %tobool8.not.i439 = icmp eq i32 %call6.i438, 0
  br i1 %tobool8.not.i439, label %if.end10.i445, label %if.end.i440.if.end304.sink.split_crit_edge

if.end.i440.if.end304.sink.split_crit_edge:       ; preds = %if.end.i440
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end304.sink.split

if.end10.i445:                                    ; preds = %if.end.i440
  call void @__sanitizer_cov_trace_pc() #12
  %100 = ptrtoint ptr %call7.i.i417 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %call7.i.i417, align 8
  %and.i441 = and i8 %101, 15
  %or182.i442 = or i8 %and.i441, 96
  store i8 %or182.i442, ptr %call7.i.i417, align 8
  %conv21.i443 = zext i8 %or182.i442 to i16
  %call22.i444 = tail call fastcc i32 @pl2303_vendor_write(ptr noundef %1, i16 noundef zeroext 0, i16 noundef zeroext %conv21.i443) #10
  br label %if.end304.sink.split

if.else282:                                       ; preds = %if.end263
  %102 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %3, align 4
  %termios.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %104 = ptrtoint ptr %termios.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %termios.i, align 4
  %106 = and i32 %105, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %106)
  %107 = icmp eq i32 %106, 1024
  br i1 %107, label %if.end.i450, label %if.else282.if.else294_crit_edge

if.else282.if.else294_crit_edge:                  ; preds = %if.else282
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else294

if.end.i450:                                      ; preds = %if.else282
  %arrayidx.i448 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 8
  %108 = ptrtoint ptr %arrayidx.i448 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx.i448, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %109)
  %cmp.not.i449 = icmp eq i8 %109, 17
  br i1 %cmp.not.i449, label %lor.lhs.false7.i, label %if.end.i450.if.else294_crit_edge

if.end.i450.if.else294_crit_edge:                 ; preds = %if.end.i450
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else294

lor.lhs.false7.i:                                 ; preds = %if.end.i450
  %arrayidx10.i451 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 9
  %110 = ptrtoint ptr %arrayidx10.i451 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx10.i451, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %111)
  %cmp12.not.i = icmp eq i8 %111, 19
  br i1 %cmp12.not.i, label %pl2303_enable_xonxoff.exit, label %lor.lhs.false7.i.if.else294_crit_edge

lor.lhs.false7.i.if.else294_crit_edge:            ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else294

pl2303_enable_xonxoff.exit:                       ; preds = %lor.lhs.false7.i
  %no_autoxonxoff.i = getelementptr inbounds %struct.pl2303_type_data, ptr %103, i32 0, i32 3
  %112 = ptrtoint ptr %no_autoxonxoff.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %bf.load.i = load i8, ptr %no_autoxonxoff.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool16.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool16.not.i, label %if.then285, label %pl2303_enable_xonxoff.exit.if.else294_crit_edge

pl2303_enable_xonxoff.exit.if.else294_crit_edge:  ; preds = %pl2303_enable_xonxoff.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else294

if.then285:                                       ; preds = %pl2303_enable_xonxoff.exit
  %cmp287 = icmp eq ptr %103, getelementptr inbounds ([6 x %struct.pl2303_type_data], ptr @pl2303_type_data, i32 0, i32 5)
  %113 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %private.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %115 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i454 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %115, i32 noundef 3264, i32 noundef 1) #14
  %tobool.not.i455 = icmp eq ptr %call7.i.i454, null
  br i1 %cmp287, label %if.then289, label %if.else291

if.then289:                                       ; preds = %if.then285
  br i1 %tobool.not.i455, label %if.then289.if.end304_crit_edge, label %if.end.i461

if.then289.if.end304_crit_edge:                   ; preds = %if.then289
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end304

if.end.i461:                                      ; preds = %if.then289
  %116 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %114, align 4
  %cmp.i456 = icmp eq ptr %117, getelementptr inbounds ([6 x %struct.pl2303_type_data], ptr @pl2303_type_data, i32 0, i32 5)
  %conv5.i458 = select i1 %cmp.i456, i16 10, i16 138
  %call6.i459 = tail call fastcc i32 @pl2303_vendor_read(ptr noundef %1, i16 noundef zeroext %conv5.i458, ptr noundef nonnull %call7.i.i454) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i459)
  %tobool8.not.i460 = icmp eq i32 %call6.i459, 0
  br i1 %tobool8.not.i460, label %if.end10.i466, label %if.end.i461.if.end304.sink.split_crit_edge

if.end.i461.if.end304.sink.split_crit_edge:       ; preds = %if.end.i461
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end304.sink.split

if.end10.i466:                                    ; preds = %if.end.i461
  call void @__sanitizer_cov_trace_pc() #12
  %118 = ptrtoint ptr %call7.i.i454 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %call7.i.i454, align 8
  %and.i462 = and i8 %119, -29
  %or182.i463 = or i8 %and.i462, 12
  store i8 %or182.i463, ptr %call7.i.i454, align 8
  %conv21.i464 = zext i8 %or182.i463 to i16
  %call22.i465 = tail call fastcc i32 @pl2303_vendor_write(ptr noundef %1, i16 noundef zeroext 10, i16 noundef zeroext %conv21.i464) #10
  br label %if.end304.sink.split

if.else291:                                       ; preds = %if.then285
  br i1 %tobool.not.i455, label %if.else291.if.end304_crit_edge, label %if.end.i477

if.else291.if.end304_crit_edge:                   ; preds = %if.else291
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end304

if.end.i477:                                      ; preds = %if.else291
  %120 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %114, align 4
  %cmp.i472 = icmp eq ptr %121, getelementptr inbounds ([6 x %struct.pl2303_type_data], ptr @pl2303_type_data, i32 0, i32 5)
  %conv5.i474 = select i1 %cmp.i472, i16 0, i16 128
  %call6.i475 = tail call fastcc i32 @pl2303_vendor_read(ptr noundef %1, i16 noundef zeroext %conv5.i474, ptr noundef nonnull %call7.i.i454) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i475)
  %tobool8.not.i476 = icmp eq i32 %call6.i475, 0
  br i1 %tobool8.not.i476, label %if.end10.i482, label %if.end.i477.if.end304.sink.split_crit_edge

if.end.i477.if.end304.sink.split_crit_edge:       ; preds = %if.end.i477
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end304.sink.split

if.end10.i482:                                    ; preds = %if.end.i477
  %122 = ptrtoint ptr %call7.i.i454 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %call7.i.i454, align 8
  %and.i478 = and i8 %123, 15
  %or182.i479 = or i8 %and.i478, -64
  store i8 %or182.i479, ptr %call7.i.i454, align 8
  %conv21.i480 = zext i8 %or182.i479 to i16
  %124 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %private.i, align 4
  %interface.i524 = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 2
  %126 = ptrtoint ptr %interface.i524 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %interface.i524, align 4
  %dev1.i525 = getelementptr inbounds %struct.usb_interface, ptr %127, i32 0, i32 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_vendor_write.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_set_termios, %if.then.i527)) #10
          to label %do.end.i534 [label %if.then.i527], !srcloc !175

if.then.i527:                                     ; preds = %if.end10.i482
  call void @__sanitizer_cov_trace_pc() #12
  %conv5.i526 = zext i8 %or182.i479 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_vendor_write.__UNIQUE_ID_ddebug239, ptr noundef %dev1.i525, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef %conv5.i526) #10
  br label %do.end.i534

do.end.i534:                                      ; preds = %if.then.i527, %if.end10.i482
  %128 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %125, align 4
  %cmp.i528 = icmp eq ptr %129, getelementptr inbounds ([6 x %struct.pl2303_type_data], ptr @pl2303_type_data, i32 0, i32 5)
  %..i529 = select i1 %cmp.i528, i8 -128, i8 1
  %130 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %1, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %131, align 8
  %shl.i.i530 = shl i32 %133, 8
  %or.i531 = or i32 %shl.i.i530, -2147483648
  %call12.i532 = tail call i32 @usb_control_msg(ptr noundef %131, i32 noundef %or.i531, i8 noundef zeroext %..i529, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv21.i480, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i532)
  %tobool13.not.i533 = icmp eq i32 %call12.i532, 0
  br i1 %tobool13.not.i533, label %do.end.i534.if.end304.sink.split_crit_edge, label %do.end17.i535

do.end.i534.if.end304.sink.split_crit_edge:       ; preds = %do.end.i534
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end304.sink.split

do.end17.i535:                                    ; preds = %do.end.i534
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i525, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef %call12.i532) #13
  br label %if.end304.sink.split

if.else294:                                       ; preds = %pl2303_enable_xonxoff.exit.if.else294_crit_edge, %lor.lhs.false7.i.if.else294_crit_edge, %if.end.i450.if.else294_crit_edge, %if.else282.if.else294_crit_edge
  %cmp296 = icmp eq ptr %103, getelementptr inbounds ([6 x %struct.pl2303_type_data], ptr @pl2303_type_data, i32 0, i32 5)
  %134 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %private.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %136 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i486 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %136, i32 noundef 3264, i32 noundef 1) #14
  %tobool.not.i487 = icmp eq ptr %call7.i.i486, null
  br i1 %cmp296, label %if.then298, label %if.else300

if.then298:                                       ; preds = %if.else294
  br i1 %tobool.not.i487, label %if.then298.if.end304_crit_edge, label %if.end.i493

if.then298.if.end304_crit_edge:                   ; preds = %if.then298
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end304

if.end.i493:                                      ; preds = %if.then298
  %137 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %135, align 4
  %cmp.i488 = icmp eq ptr %138, getelementptr inbounds ([6 x %struct.pl2303_type_data], ptr @pl2303_type_data, i32 0, i32 5)
  %conv5.i490 = select i1 %cmp.i488, i16 10, i16 138
  %call6.i491 = tail call fastcc i32 @pl2303_vendor_read(ptr noundef %1, i16 noundef zeroext %conv5.i490, ptr noundef nonnull %call7.i.i486) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i491)
  %tobool8.not.i492 = icmp eq i32 %call6.i491, 0
  br i1 %tobool8.not.i492, label %if.end10.i498, label %if.end.i493.if.end304.sink.split_crit_edge

if.end.i493.if.end304.sink.split_crit_edge:       ; preds = %if.end.i493
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end304.sink.split

if.end10.i498:                                    ; preds = %if.end.i493
  call void @__sanitizer_cov_trace_pc() #12
  %139 = ptrtoint ptr %call7.i.i486 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %call7.i.i486, align 8
  %or182.i495 = or i8 %140, 28
  store i8 %or182.i495, ptr %call7.i.i486, align 8
  %conv21.i496 = zext i8 %or182.i495 to i16
  %call22.i497 = tail call fastcc i32 @pl2303_vendor_write(ptr noundef %1, i16 noundef zeroext 10, i16 noundef zeroext %conv21.i496) #10
  br label %if.end304.sink.split

if.else300:                                       ; preds = %if.else294
  br i1 %tobool.not.i487, label %if.else300.if.end304_crit_edge, label %if.end.i509

if.else300.if.end304_crit_edge:                   ; preds = %if.else300
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end304

if.end.i509:                                      ; preds = %if.else300
  %141 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %135, align 4
  %cmp.i504 = icmp eq ptr %142, getelementptr inbounds ([6 x %struct.pl2303_type_data], ptr @pl2303_type_data, i32 0, i32 5)
  %conv5.i506 = select i1 %cmp.i504, i16 0, i16 128
  %call6.i507 = tail call fastcc i32 @pl2303_vendor_read(ptr noundef %1, i16 noundef zeroext %conv5.i506, ptr noundef nonnull %call7.i.i486) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i507)
  %tobool8.not.i508 = icmp eq i32 %call6.i507, 0
  br i1 %tobool8.not.i508, label %if.end10.i513, label %if.end.i509.if.end304.sink.split_crit_edge

if.end.i509.if.end304.sink.split_crit_edge:       ; preds = %if.end.i509
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end304.sink.split

if.end10.i513:                                    ; preds = %if.end.i509
  %143 = ptrtoint ptr %call7.i.i486 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %call7.i.i486, align 8
  %and.i510 = and i8 %144, 15
  store i8 %and.i510, ptr %call7.i.i486, align 8
  %conv21.i511 = zext i8 %and.i510 to i16
  %145 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %private.i, align 4
  %interface.i538 = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 2
  %147 = ptrtoint ptr %interface.i538 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %interface.i538, align 4
  %dev1.i539 = getelementptr inbounds %struct.usb_interface, ptr %148, i32 0, i32 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_vendor_write.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_set_termios, %if.then.i541)) #10
          to label %do.end.i548 [label %if.then.i541], !srcloc !175

if.then.i541:                                     ; preds = %if.end10.i513
  call void @__sanitizer_cov_trace_pc() #12
  %conv5.i540 = zext i8 %and.i510 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_vendor_write.__UNIQUE_ID_ddebug239, ptr noundef %dev1.i539, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef %conv5.i540) #10
  br label %do.end.i548

do.end.i548:                                      ; preds = %if.then.i541, %if.end10.i513
  %149 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %146, align 4
  %cmp.i542 = icmp eq ptr %150, getelementptr inbounds ([6 x %struct.pl2303_type_data], ptr @pl2303_type_data, i32 0, i32 5)
  %..i543 = select i1 %cmp.i542, i8 -128, i8 1
  %151 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %1, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %152, align 8
  %shl.i.i544 = shl i32 %154, 8
  %or.i545 = or i32 %shl.i.i544, -2147483648
  %call12.i546 = tail call i32 @usb_control_msg(ptr noundef %152, i32 noundef %or.i545, i8 noundef zeroext %..i543, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv21.i511, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i546)
  %tobool13.not.i547 = icmp eq i32 %call12.i546, 0
  br i1 %tobool13.not.i547, label %do.end.i548.if.end304.sink.split_crit_edge, label %do.end17.i549

do.end.i548.if.end304.sink.split_crit_edge:       ; preds = %do.end.i548
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end304.sink.split

do.end17.i549:                                    ; preds = %do.end.i548
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i539, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef %call12.i546) #13
  br label %if.end304.sink.split

if.end304.sink.split:                             ; preds = %do.end17.i549, %do.end.i548.if.end304.sink.split_crit_edge, %if.end.i509.if.end304.sink.split_crit_edge, %if.end10.i498, %if.end.i493.if.end304.sink.split_crit_edge, %do.end17.i535, %do.end.i534.if.end304.sink.split_crit_edge, %if.end.i477.if.end304.sink.split_crit_edge, %if.end10.i466, %if.end.i461.if.end304.sink.split_crit_edge, %if.end10.i445, %if.end.i440.if.end304.sink.split_crit_edge, %if.end10.i429, %if.end.i424.if.end304.sink.split_crit_edge, %do.end17.i, %do.end.i522.if.end304.sink.split_crit_edge, %if.end.i.if.end304.sink.split_crit_edge
  %call7.i.i486.sink = phi ptr [ %call7.i.i412, %do.end17.i ], [ %call7.i.i412, %do.end.i522.if.end304.sink.split_crit_edge ], [ %call7.i.i412, %if.end.i.if.end304.sink.split_crit_edge ], [ %call7.i.i417, %if.end10.i429 ], [ %call7.i.i417, %if.end.i424.if.end304.sink.split_crit_edge ], [ %call7.i.i417, %if.end10.i445 ], [ %call7.i.i417, %if.end.i440.if.end304.sink.split_crit_edge ], [ %call7.i.i454, %if.end10.i466 ], [ %call7.i.i454, %if.end.i461.if.end304.sink.split_crit_edge ], [ %call7.i.i454, %do.end17.i535 ], [ %call7.i.i454, %do.end.i534.if.end304.sink.split_crit_edge ], [ %call7.i.i454, %if.end.i477.if.end304.sink.split_crit_edge ], [ %call7.i.i486, %if.end10.i498 ], [ %call7.i.i486, %if.end.i493.if.end304.sink.split_crit_edge ], [ %call7.i.i486, %do.end17.i549 ], [ %call7.i.i486, %do.end.i548.if.end304.sink.split_crit_edge ], [ %call7.i.i486, %if.end.i509.if.end304.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i486.sink) #10
  br label %if.end304

if.end304:                                        ; preds = %if.end304.sink.split, %if.else300.if.end304_crit_edge, %if.then298.if.end304_crit_edge, %if.else291.if.end304_crit_edge, %if.then289.if.end304_crit_edge, %if.else278.if.end304_crit_edge, %if.then276.if.end304_crit_edge, %if.then271.if.end304_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i556) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end304, %if.then8.critedge, %if.end.thread.cleanup_crit_edge, %pl2303_termios_change.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl2303_break_ctl(ptr nocapture noundef readonly %tty, i32 noundef %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool = icmp ne i32 %state, 0
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %..i = sext i1 %tobool to i16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_set_break.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_break_ctl, %if.then6.i)) #10
          to label %do.end.i [label %if.then6.i], !srcloc !175

if.then6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %cond.i = select i1 %tobool, ptr @.str.29, ptr @.str.28
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_set_break.__UNIQUE_ID_ddebug259, ptr noundef %dev.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, ptr noundef nonnull %cond.i) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i.i = shl i32 %7, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call12.i = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or.i, i8 noundef zeroext 35, i8 noundef zeroext 33, i16 noundef zeroext %..i, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %do.end.i.pl2303_set_break.exit_crit_edge, label %do.end17.i

do.end.i.pl2303_set_break.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_set_break.exit

do.end17.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev18.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18.i, ptr noundef nonnull @.str.30, i32 noundef %call12.i) #13
  br label %pl2303_set_break.exit

pl2303_set_break.exit:                            ; preds = %do.end17.i, %do.end.i.pl2303_set_break.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl2303_tiocmget(ptr nocapture noundef readonly %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %line_control = getelementptr inbounds %struct.pl2303_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %line_control to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %line_control, align 4
  %conv6 = zext i8 %5 to i32
  %line_status = getelementptr inbounds %struct.pl2303_private, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %line_status to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %line_status, align 1
  %conv7 = zext i8 %7 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3) #10
  %and = shl nuw nsw i32 %conv6, 1
  %or = and i32 %and, 6
  %and12 = lshr i32 %conv7, 2
  %8 = and i32 %and12, 32
  %or15 = or i32 %8, %or
  %and16 = shl nuw nsw i32 %conv7, 7
  %9 = and i32 %and16, 256
  %or19 = or i32 %or15, %9
  %and20 = shl nuw nsw i32 %conv7, 4
  %10 = and i32 %and20, 128
  %or23 = or i32 %or19, %10
  %and24 = shl nuw nsw i32 %conv7, 6
  %11 = and i32 %and24, 64
  %or27 = or i32 %or23, %11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_tiocmget.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_tiocmget, %if.then)) #10
          to label %do.end35 [label %if.then], !srcloc !175

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_tiocmget.__UNIQUE_ID_ddebug258, ptr noundef %dev, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, i32 noundef %or27) #10
  br label %do.end35

do.end35:                                         ; preds = %if.then, %entry
  ret i32 %or27
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl2303_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %and = and i32 %set, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %line_control = getelementptr inbounds %struct.pl2303_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %line_control to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %line_control, align 4
  %6 = or i8 %5, 2
  store i8 %6, ptr %line_control, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and8 = and i32 %set, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.if.end15_crit_edge, label %if.then10

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %line_control11 = getelementptr inbounds %struct.pl2303_private, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %line_control11 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %line_control11, align 4
  %9 = or i8 %8, 1
  store i8 %9, ptr %line_control11, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end.if.end15_crit_edge
  %and16 = and i32 %clear, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end23_crit_edge, label %if.then18

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %line_control19 = getelementptr inbounds %struct.pl2303_private, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %line_control19 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %line_control19, align 4
  %12 = and i8 %11, -3
  store i8 %12, ptr %line_control19, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end15.if.end23_crit_edge
  %and24 = and i32 %clear, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end31_crit_edge, label %if.then26

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %line_control27 = getelementptr inbounds %struct.pl2303_private, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %line_control27 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %line_control27, align 4
  %15 = and i8 %14, -2
  store i8 %15, ptr %line_control27, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.end23.if.end31_crit_edge
  %line_control32 = getelementptr inbounds %struct.pl2303_private, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %line_control32 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %line_control32, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3) #10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_set_control_lines.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_tiocmset, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !175

if.then.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %dev5.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %conv.i = zext i8 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_set_control_lines.__UNIQUE_ID_ddebug242, ptr noundef %dev5.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, i32 noundef %conv.i) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end31
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i.i = shl i32 %23, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv7.i = zext i8 %17 to i16
  %call8.i = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %or.i, i8 noundef zeroext 34, i8 noundef zeroext 33, i16 noundef zeroext %conv7.i, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %do.end.i.cleanup_crit_edge, label %if.then36

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then36:                                        ; preds = %do.end.i
  %dev14.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.48, i32 noundef %call8.i) #13
  %24 = zext i32 %call8.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %call8.i, label %sw.default.i [
    i32 -95, label %if.then36.cleanup_crit_edge
    i32 -12, label %if.then36.cleanup_crit_edge53
    i32 -19, label %if.then36.cleanup_crit_edge54
  ]

if.then36.cleanup_crit_edge54:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then36.cleanup_crit_edge53:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.default.i:                                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %sw.default.i, %if.then36.cleanup_crit_edge, %if.then36.cleanup_crit_edge53, %if.then36.cleanup_crit_edge54, %do.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %sw.default.i ], [ %call8.i, %if.then36.cleanup_crit_edge ], [ %call8.i, %if.then36.cleanup_crit_edge53 ], [ %call8.i, %if.then36.cleanup_crit_edge54 ], [ 0, %do.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_tiocmiwait(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl2303_dtr_rts(ptr noundef %port, i32 noundef %on) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %line_control8 = getelementptr inbounds %struct.pl2303_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %line_control8 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %line_control8, align 4
  %4 = and i8 %3, -4
  %masksel = select i1 %tobool.not, i8 0, i8 3
  %.sink = or i8 %4, %masksel
  store i8 %.sink, ptr %line_control8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call3) #10
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_set_control_lines.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_dtr_rts, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !175

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev5.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv.i = zext i8 %.sink to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_set_control_lines.__UNIQUE_ID_ddebug242, ptr noundef %dev5.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, i32 noundef %conv.i) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i = shl i32 %10, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv7.i = zext i8 %.sink to i16
  %call8.i = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or.i, i8 noundef zeroext 34, i8 noundef zeroext 33, i16 noundef zeroext %conv7.i, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %do.end.i.pl2303_set_control_lines.exit_crit_edge, label %do.end13.i

do.end.i.pl2303_set_control_lines.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_set_control_lines.exit

do.end13.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev14.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.48, i32 noundef %call8.i) #13
  br label %pl2303_set_control_lines.exit

pl2303_set_control_lines.exit:                    ; preds = %do.end13.i, %do.end.i.pl2303_set_control_lines.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pl2303_carrier_raised(ptr nocapture noundef readonly %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %line_status = getelementptr inbounds %struct.pl2303_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %line_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %line_status, align 1
  %4 = and i8 %3, 1
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl2303_read_int_callback(ptr noundef %urb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status2 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status2, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %3, label %do.body5 [
    i32 0, label %sw.epilog
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge55
    i32 -108, label %entry.do.body_crit_edge56
  ]

entry.do.body_crit_edge56:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge55:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge55, %entry.do.body_crit_edge56
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_read_int_callback.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_read_int_callback, %if.then)) #10
          to label %cleanup [label %if.then], !srcloc !175

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_read_int_callback.__UNIQUE_ID_ddebug260, ptr noundef %dev, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, i32 noundef %3) #10
  br label %cleanup

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_read_int_callback.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_read_int_callback, %if.then17)) #10
          to label %exit [label %if.then17], !srcloc !175

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  %dev18 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_read_int_callback.__UNIQUE_ID_ddebug261, ptr noundef %dev18, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.52, i32 noundef %3) #10
  br label %exit

sw.epilog:                                        ; preds = %entry
  %actual_length1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %5 = ptrtoint ptr %actual_length1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %actual_length1, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %7 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %transfer_buffer, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_read_int_callback, %if.then.i)) #10
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !175

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %dev22 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev22, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.52, i32 noundef %6, i32 noundef %6, ptr noundef %8) #10
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %sw.epilog
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %private.i.i = getelementptr inbounds %struct.usb_serial, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private.i.i, align 4
  %quirks.i = getelementptr inbounds %struct.pl2303_serial_private, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %quirks.i, align 4
  %and.i = shl i32 %14, 3
  %15 = and i32 %and.i, 8
  %16 = xor i32 %15, 8
  %add.i = or i32 %16, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %6)
  %cmp.i = icmp ugt i32 %add.i, %6
  br i1 %cmp.i, label %usb_serial_debug_data.exit.exit_crit_edge, label %if.end4.i

usb_serial_debug_data.exit.exit_crit_edge:        ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end4.i:                                        ; preds = %usb_serial_debug_data.exit
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %17 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i.i, align 4
  %arrayidx.i = getelementptr i8, ptr %8, i32 %16
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #10
  %line_status.i = getelementptr inbounds %struct.pl2303_private, ptr %18, i32 0, i32 2
  %21 = ptrtoint ptr %line_status.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %line_status.i, align 1
  %conv12.i = zext i8 %20 to i32
  %xor90.i = xor i8 %22, %20
  store i8 %20, ptr %line_status.i, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %call8.i) #10
  %and17.i = and i32 %conv12.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end4.i.if.end21.i_crit_edge, label %if.then19.i

if.end4.i.if.end21.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then19.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %call20.i = tail call i32 @usb_serial_handle_break(ptr noundef %1) #10
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %if.end4.i.if.end21.i_crit_edge
  %conv22.i = zext i8 %xor90.i to i32
  %and23.i = and i32 %conv22.i, 139
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.end21.i.exit_crit_edge, label %if.then25.i

if.end21.i.exit_crit_edge:                        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.then25.i:                                      ; preds = %if.end21.i
  %and27.i = and i32 %conv22.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.then25.i.if.end30.i_crit_edge, label %if.then29.i

if.then25.i.if.end30.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i

if.then29.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #12
  %icount.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 27
  %23 = ptrtoint ptr %icount.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %icount.i, align 8
  %inc.i = add i32 %24, 1
  store i32 %inc.i, ptr %icount.i, align 8
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then29.i, %if.then25.i.if.end30.i_crit_edge
  %and32.i = and i32 %conv22.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.end30.i.if.end37.i_crit_edge, label %if.then34.i

if.end30.i.if.end37.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

if.then34.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  %dsr.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 27, i32 1
  %25 = ptrtoint ptr %dsr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dsr.i, align 4
  %inc36.i = add i32 %26, 1
  store i32 %inc36.i, ptr %dsr.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then34.i, %if.end30.i.if.end37.i_crit_edge
  %and39.i = and i32 %conv22.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.end37.i.if.end44.i_crit_edge, label %if.then41.i

if.end37.i.if.end44.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i

if.then41.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  %rng.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 27, i32 2
  %27 = ptrtoint ptr %rng.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rng.i, align 8
  %inc43.i = add i32 %28, 1
  store i32 %inc43.i, ptr %rng.i, align 8
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then41.i, %if.end37.i.if.end44.i_crit_edge
  %and46.i = and i32 %conv22.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %if.end44.i.if.end58.i_crit_edge, label %if.then48.i

if.end44.i.if.end58.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.i

if.then48.i:                                      ; preds = %if.end44.i
  %dcd.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 27, i32 3
  %29 = ptrtoint ptr %dcd.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dcd.i, align 4
  %inc50.i = add i32 %30, 1
  store i32 %inc50.i, ptr %dcd.i, align 4
  %port51.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  %call52.i = tail call ptr @tty_port_tty_get(ptr noundef %port51.i) #10
  %tobool53.not.i = icmp eq ptr %call52.i, null
  br i1 %tobool53.not.i, label %if.then48.i.if.end58.i_crit_edge, label %if.then54.i

if.then48.i.if.end58.i_crit_edge:                 ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.i

if.then54.i:                                      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #12
  %and56.i = and i32 %conv12.i, 1
  tail call void @usb_serial_handle_dcd_change(ptr noundef %1, ptr noundef nonnull %call52.i, i32 noundef %and56.i) #10
  tail call void @tty_kref_put(ptr noundef nonnull %call52.i) #10
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then54.i, %if.then48.i.if.end58.i_crit_edge, %if.end44.i.if.end58.i_crit_edge
  %delta_msr_wait.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1, i32 9
  tail call void @__wake_up(ptr noundef %delta_msr_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %exit

exit:                                             ; preds = %if.end58.i, %if.end21.i.exit_crit_edge, %usb_serial_debug_data.exit.exit_crit_edge, %if.then17, %do.body5
  %call25 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %exit.cleanup_crit_edge, label %do.end30

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end30:                                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev31 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.52, i32 noundef %call25) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %exit.cleanup_crit_edge, %if.then, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl2303_process_read_urb(ptr nocapture noundef readonly %urb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %4 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transfer_buffer, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %line_status6 = getelementptr inbounds %struct.pl2303_private, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %line_status6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %line_status6, align 1
  %conv8 = zext i8 %7 to i32
  %and = and i8 %7, -117
  store i8 %and, ptr %line_status6, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3) #10
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %8 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and12 = and i32 %conv8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else, label %if.end.do.body31_crit_edge

if.end.do.body31_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body31

if.else:                                          ; preds = %if.end
  %and16 = and i32 %conv8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end26, label %if.else.do.body31_crit_edge

if.else.do.body31_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body31

if.end26:                                         ; preds = %if.else
  %and21 = and i32 %conv8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %10 = lshr exact i32 %and21, 3
  br i1 %tobool22.not, label %if.end26.if.end42_crit_edge, label %if.end26.do.body31_crit_edge

if.end26.do.body31_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body31

if.end26.if.end42_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

do.body31:                                        ; preds = %if.end26.do.body31_crit_edge, %if.else.do.body31_crit_edge, %if.end.do.body31_crit_edge
  %conv27126.in = phi i32 [ %10, %if.end26.do.body31_crit_edge ], [ 3, %if.else.do.body31_crit_edge ], [ 1, %if.end.do.body31_crit_edge ]
  %tty_flag.0124 = phi i8 [ 2, %if.end26.do.body31_crit_edge ], [ 3, %if.else.do.body31_crit_edge ], [ 1, %if.end.do.body31_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_process_read_urb.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_process_read_urb, %if.then37)) #10
          to label %if.end42 [label %if.then37], !srcloc !175

if.then37:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_process_read_urb.__UNIQUE_ID_ddebug262, ptr noundef %dev, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59, i32 noundef %conv27126.in) #10
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %do.body31, %if.end26.if.end42_crit_edge
  %tty_flag.0125 = phi i8 [ %tty_flag.0124, %if.then37 ], [ 0, %if.end26.if.end42_crit_edge ], [ %tty_flag.0124, %do.body31 ]
  %and44 = and i32 %conv8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end42.if.end49_crit_edge, label %if.then46

if.end42.if.end49_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then46:                                        ; preds = %if.end42
  %port47 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  %tail.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1, i32 0, i32 8
  %11 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i, align 4
  %flags.i = getelementptr inbounds %struct.tty_buffer, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then46.if.end12.i_crit_edge

if.then46.if.end12.i_crit_edge:                   ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.then46
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.tty_buffer, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp3.i = icmp slt i32 %16, %18
  br i1 %cmp3.i, label %if.end.i, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %12, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i.i.i, i32 %16
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %18
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 4, ptr %add.ptr.i.i, align 1
  %20 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %21, 1
  store i32 %inc.i, ptr %used.i, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %data.i.i.i, i32 %21
  %22 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %add.ptr.i1.i, align 1
  br label %if.end49

if.end12.i:                                       ; preds = %land.lhs.true.i.if.end12.i_crit_edge, %if.then46.if.end12.i_crit_edge
  %call13.i = tail call i32 @__tty_insert_flip_char(ptr noundef %port47, i8 noundef zeroext 0, i8 noundef zeroext 4) #10
  br label %if.end49

if.end49:                                         ; preds = %if.end12.i, %if.end.i, %if.end42.if.end49_crit_edge
  %sysrq = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 31
  %23 = ptrtoint ptr %sysrq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sysrq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool50.not = icmp eq i32 %24, 0
  br i1 %tobool50.not, label %if.else63, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end49
  %25 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp53128.not = icmp eq i32 %26, 0
  br i1 %cmp53128.not, label %for.cond.preheader.if.end67_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end67_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %port59 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  %tail.i101 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tty_flag.0125)
  %cmp.i = icmp eq i8 %tty_flag.0125, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0129 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %5, i32 %i.0129
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 1
  %conv55 = zext i8 %28 to i32
  %call56 = tail call i32 @usb_serial_handle_sysrq_char(ptr noundef %1, i32 noundef %conv55) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then58, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then58:                                        ; preds = %for.body
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx, align 1
  %31 = ptrtoint ptr %tail.i101 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail.i101, align 4
  %flags.i102 = getelementptr inbounds %struct.tty_buffer, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %flags.i102 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i102, align 4
  %and.i103 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i103)
  %tobool.not.i104 = icmp eq i32 %and.i103, 0
  %35 = or i1 %cmp.i, %tobool.not.i104
  br i1 %35, label %land.lhs.true.i108, label %if.then58.if.end12.i119_crit_edge

if.then58.if.end12.i119_crit_edge:                ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i119

land.lhs.true.i108:                               ; preds = %if.then58
  %used.i105 = getelementptr inbounds %struct.tty_buffer, ptr %32, i32 0, i32 1
  %36 = ptrtoint ptr %used.i105 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %used.i105, align 4
  %size.i106 = getelementptr inbounds %struct.tty_buffer, ptr %32, i32 0, i32 2
  %38 = ptrtoint ptr %size.i106 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size.i106, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp3.i107 = icmp slt i32 %37, %39
  br i1 %cmp3.i107, label %if.then.i109, label %land.lhs.true.i108.if.end12.i119_crit_edge

land.lhs.true.i108.if.end12.i119_crit_edge:       ; preds = %land.lhs.true.i108
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i119

if.then.i109:                                     ; preds = %land.lhs.true.i108
  br i1 %tobool.not.i104, label %if.then8.i113, label %if.then.i109.if.end.i117_crit_edge

if.then.i109.if.end.i117_crit_edge:               ; preds = %if.then.i109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i117

if.then8.i113:                                    ; preds = %if.then.i109
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i.i110 = getelementptr inbounds %struct.tty_buffer, ptr %32, i32 0, i32 6
  %add.ptr.i.i.i111 = getelementptr i8, ptr %data.i.i.i110, i32 %37
  %add.ptr.i.i112 = getelementptr i8, ptr %add.ptr.i.i.i111, i32 %39
  %40 = ptrtoint ptr %add.ptr.i.i112 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %tty_flag.0125, ptr %add.ptr.i.i112, align 1
  br label %if.end.i117

if.end.i117:                                      ; preds = %if.then8.i113, %if.then.i109.if.end.i117_crit_edge
  %41 = ptrtoint ptr %used.i105 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %used.i105, align 4
  %inc.i114 = add i32 %42, 1
  store i32 %inc.i114, ptr %used.i105, align 4
  %data.i.i115 = getelementptr inbounds %struct.tty_buffer, ptr %32, i32 0, i32 6
  %add.ptr.i1.i116 = getelementptr i8, ptr %data.i.i115, i32 %42
  %43 = ptrtoint ptr %add.ptr.i1.i116 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %30, ptr %add.ptr.i1.i116, align 1
  br label %for.inc

if.end12.i119:                                    ; preds = %land.lhs.true.i108.if.end12.i119_crit_edge, %if.then58.if.end12.i119_crit_edge
  %call13.i118 = tail call i32 @__tty_insert_flip_char(ptr noundef %port59, i8 noundef zeroext %30, i8 noundef zeroext %tty_flag.0125) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end12.i119, %if.end.i117, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0129, 1
  %44 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %actual_length, align 4
  %cmp53 = icmp ult i32 %inc, %45
  br i1 %cmp53, label %for.inc.for.body_crit_edge, label %for.inc.if.end67_crit_edge

for.inc.if.end67_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.else63:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %port64 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %actual_length, align 4
  %call66 = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port64, ptr noundef %5, i8 noundef zeroext %tty_flag.0125, i32 noundef %47) #10
  br label %if.end67

if.end67:                                         ; preds = %if.else63, %for.inc.if.end67_crit_edge, %for.cond.preheader.if.end67_crit_edge
  %port68 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  tail call void @tty_flip_buffer_push(ptr noundef %port68) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pl2303_vendor_read(ptr nocapture noundef readonly %serial, i16 noundef zeroext %value, ptr noundef %buf) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %interface = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interface, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %cmp = icmp eq ptr %5, getelementptr inbounds ([6 x %struct.pl2303_type_data], ptr @pl2303_type_data, i32 0, i32 5)
  %. = select i1 %cmp, i8 -127, i8 1
  %6 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %serial, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i = shl i32 %9, 8
  %or5 = or i32 %shl.i, -2147483520
  %call6 = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or5, i8 noundef zeroext %., i8 noundef zeroext -64, i16 noundef zeroext %value, i16 noundef zeroext 0, ptr noundef %buf, i16 noundef zeroext 1, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 1
  br i1 %cmp7.not, label %do.body14, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %value to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %conv, i32 noundef %call6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6)
  %cmp9 = icmp sgt i32 %call6, -1
  %spec.store.select = select i1 %cmp9, i32 -5, i32 %call6
  br label %cleanup

do.body14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_vendor_read.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_vendor_read, %if.then18)) #10
          to label %cleanup [label %if.then18], !srcloc !175

if.then18:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  %conv19 = zext i16 %value to i32
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf, align 1
  %conv20 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_vendor_read.__UNIQUE_ID_ddebug238, ptr noundef %dev1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef %conv19, i32 noundef %conv20) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %do.body14, %do.end
  %retval.0 = phi i32 [ %spec.store.select, %do.end ], [ 0, %if.then18 ], [ 0, %do.body14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pl2303_vendor_write(ptr nocapture noundef readonly %serial, i16 noundef zeroext %value, i16 noundef zeroext %index) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %interface = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interface, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_vendor_write.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_vendor_write, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !175

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %value to i32
  %conv5 = zext i16 %index to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_vendor_write.__UNIQUE_ID_ddebug239, ptr noundef %dev1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %conv, i32 noundef %conv5) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %cmp = icmp eq ptr %5, getelementptr inbounds ([6 x %struct.pl2303_type_data], ptr @pl2303_type_data, i32 0, i32 5)
  %. = select i1 %cmp, i8 -128, i8 1
  %6 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %serial, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i = shl i32 %9, 8
  %or = or i32 %shl.i, -2147483648
  %call12 = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or, i8 noundef zeroext %., i8 noundef zeroext 64, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.end.cleanup_crit_edge, label %do.end17

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end17:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv18 = zext i16 %value to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef %conv18, i32 noundef %call12) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %do.end.cleanup_crit_edge
  ret i32 %call12
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg_recv(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_generic_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tty_get_char_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pl2303_encode_baud_rate(ptr noundef %tty, ptr noundef %port, ptr nocapture noundef writeonly %buf) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %termios.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_encode_baud_rate.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_encode_baud_rate, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !175

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_encode_baud_rate.__UNIQUE_ID_ddebug243, ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %call.i) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %max_baud_rate = getelementptr inbounds %struct.pl2303_type_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %max_baud_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_baud_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not = icmp eq i32 %7, 0
  %8 = tail call i32 @llvm.umin.i32(i32 %call.i, i32 %7)
  %baud.0 = select i1 %tobool9.not, i32 %call.i, i32 %8
  %no_divisors = getelementptr inbounds %struct.pl2303_type_data, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %no_divisors to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %no_divisors, align 4
  %10 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool16.not = icmp eq i8 %10, 0
  br i1 %tobool16.not, label %if.else, label %if.end8.if.then21_crit_edge

if.end8.if.then21_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 75, i32 %baud.0)
  %cmp1.i = icmp ult i32 %baud.0, 75
  br i1 %cmp1.i, label %if.else.if.else15.i_crit_edge, label %for.inc.i

if.else.if.else15.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else15.i

for.inc.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 150, i32 %baud.0)
  %cmp1.1.i = icmp ult i32 %baud.0, 150
  br i1 %cmp1.1.i, label %for.inc.i.land.lhs.true.i_crit_edge, label %for.inc.1.i

for.inc.i.land.lhs.true.i_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %baud.0)
  %cmp1.2.i = icmp ult i32 %baud.0, 300
  br i1 %cmp1.2.i, label %for.inc.1.i.land.lhs.true.i_crit_edge, label %for.inc.2.i

for.inc.1.i.land.lhs.true.i_crit_edge:            ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 600, i32 %baud.0)
  %cmp1.3.i = icmp ult i32 %baud.0, 600
  br i1 %cmp1.3.i, label %for.inc.2.i.land.lhs.true.i_crit_edge, label %for.inc.3.i

for.inc.2.i.land.lhs.true.i_crit_edge:            ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200, i32 %baud.0)
  %cmp1.4.i = icmp ult i32 %baud.0, 1200
  br i1 %cmp1.4.i, label %for.inc.3.i.land.lhs.true.i_crit_edge, label %for.inc.4.i

for.inc.3.i.land.lhs.true.i_crit_edge:            ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1800, i32 %baud.0)
  %cmp1.5.i = icmp ult i32 %baud.0, 1800
  br i1 %cmp1.5.i, label %for.inc.4.i.land.lhs.true.i_crit_edge, label %for.inc.5.i

for.inc.4.i.land.lhs.true.i_crit_edge:            ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2400, i32 %baud.0)
  %cmp1.6.i = icmp ult i32 %baud.0, 2400
  br i1 %cmp1.6.i, label %for.inc.5.i.land.lhs.true.i_crit_edge, label %for.inc.6.i

for.inc.5.i.land.lhs.true.i_crit_edge:            ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3600, i32 %baud.0)
  %cmp1.7.i = icmp ult i32 %baud.0, 3600
  br i1 %cmp1.7.i, label %for.inc.6.i.land.lhs.true.i_crit_edge, label %for.inc.7.i

for.inc.6.i.land.lhs.true.i_crit_edge:            ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4800, i32 %baud.0)
  %cmp1.8.i = icmp ult i32 %baud.0, 4800
  br i1 %cmp1.8.i, label %for.inc.7.i.land.lhs.true.i_crit_edge, label %for.inc.8.i

for.inc.7.i.land.lhs.true.i_crit_edge:            ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.inc.8.i:                                      ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7200, i32 %baud.0)
  %cmp1.9.i = icmp ult i32 %baud.0, 7200
  br i1 %cmp1.9.i, label %for.inc.8.i.land.lhs.true.i_crit_edge, label %for.inc.9.i

for.inc.8.i.land.lhs.true.i_crit_edge:            ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.inc.9.i:                                      ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9600, i32 %baud.0)
  %cmp1.10.i = icmp ult i32 %baud.0, 9600
  br i1 %cmp1.10.i, label %for.inc.9.i.land.lhs.true.i_crit_edge, label %for.inc.10.i

for.inc.9.i.land.lhs.true.i_crit_edge:            ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.inc.10.i:                                     ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14400, i32 %baud.0)
  %cmp1.11.i = icmp ult i32 %baud.0, 14400
  br i1 %cmp1.11.i, label %for.inc.10.i.land.lhs.true.i_crit_edge, label %for.inc.11.i

for.inc.10.i.land.lhs.true.i_crit_edge:           ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.inc.11.i:                                     ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 19200, i32 %baud.0)
  %cmp1.12.i = icmp ult i32 %baud.0, 19200
  br i1 %cmp1.12.i, label %for.inc.11.i.land.lhs.true.i_crit_edge, label %for.inc.12.i

for.inc.11.i.land.lhs.true.i_crit_edge:           ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.inc.12.i:                                     ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28800, i32 %baud.0)
  %cmp1.13.i = icmp ult i32 %baud.0, 28800
  br i1 %cmp1.13.i, label %for.inc.12.i.land.lhs.true.i_crit_edge, label %for.inc.13.i

for.inc.12.i.land.lhs.true.i_crit_edge:           ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.inc.13.i:                                     ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 38400, i32 %baud.0)
  %cmp1.14.i = icmp ult i32 %baud.0, 38400
  br i1 %cmp1.14.i, label %for.inc.13.i.land.lhs.true.i_crit_edge, label %for.inc.14.i

for.inc.13.i.land.lhs.true.i_crit_edge:           ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.inc.14.i:                                     ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 57600, i32 %baud.0)
  %cmp1.15.i = icmp ult i32 %baud.0, 57600
  br i1 %cmp1.15.i, label %for.inc.14.i.land.lhs.true.i_crit_edge, label %for.inc.15.i

for.inc.14.i.land.lhs.true.i_crit_edge:           ; preds = %for.inc.14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.inc.15.i:                                     ; preds = %for.inc.14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 115200, i32 %baud.0)
  %cmp1.16.i = icmp ult i32 %baud.0, 115200
  br i1 %cmp1.16.i, label %for.inc.15.i.land.lhs.true.i_crit_edge, label %for.inc.16.i

for.inc.15.i.land.lhs.true.i_crit_edge:           ; preds = %for.inc.15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.inc.16.i:                                     ; preds = %for.inc.15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 230400, i32 %baud.0)
  %cmp1.17.i = icmp ult i32 %baud.0, 230400
  br i1 %cmp1.17.i, label %for.inc.16.i.land.lhs.true.i_crit_edge, label %for.inc.17.i

for.inc.16.i.land.lhs.true.i_crit_edge:           ; preds = %for.inc.16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.inc.17.i:                                     ; preds = %for.inc.16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 460800, i32 %baud.0)
  %cmp1.18.i = icmp ult i32 %baud.0, 460800
  br i1 %cmp1.18.i, label %for.inc.17.i.land.lhs.true.i_crit_edge, label %for.inc.18.i

for.inc.17.i.land.lhs.true.i_crit_edge:           ; preds = %for.inc.17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.inc.18.i:                                     ; preds = %for.inc.17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 614400, i32 %baud.0)
  %cmp1.19.i = icmp ult i32 %baud.0, 614400
  br i1 %cmp1.19.i, label %for.inc.18.i.land.lhs.true.i_crit_edge, label %for.inc.19.i

for.inc.18.i.land.lhs.true.i_crit_edge:           ; preds = %for.inc.18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.inc.19.i:                                     ; preds = %for.inc.18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 921600, i32 %baud.0)
  %cmp1.20.i = icmp ult i32 %baud.0, 921600
  br i1 %cmp1.20.i, label %for.inc.19.i.land.lhs.true.i_crit_edge, label %for.inc.20.i

for.inc.19.i.land.lhs.true.i_crit_edge:           ; preds = %for.inc.19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.inc.20.i:                                     ; preds = %for.inc.19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1228800, i32 %baud.0)
  %cmp1.21.i = icmp ult i32 %baud.0, 1228800
  br i1 %cmp1.21.i, label %for.inc.20.i.land.lhs.true.i_crit_edge, label %for.inc.21.i

for.inc.20.i.land.lhs.true.i_crit_edge:           ; preds = %for.inc.20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.inc.21.i:                                     ; preds = %for.inc.20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2457600, i32 %baud.0)
  %cmp1.22.i = icmp ult i32 %baud.0, 2457600
  br i1 %cmp1.22.i, label %for.inc.21.i.land.lhs.true.i_crit_edge, label %for.inc.22.i

for.inc.21.i.land.lhs.true.i_crit_edge:           ; preds = %for.inc.21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.inc.22.i:                                     ; preds = %for.inc.21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %baud.0)
  %cmp1.23.i = icmp ult i32 %baud.0, 3000000
  br i1 %cmp1.23.i, label %for.inc.22.i.land.lhs.true.i_crit_edge, label %for.inc.23.i

for.inc.22.i.land.lhs.true.i_crit_edge:           ; preds = %for.inc.22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.inc.23.i:                                     ; preds = %for.inc.22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %baud.0)
  %cmp1.24.i = icmp ult i32 %baud.0, 6000000
  br i1 %cmp1.24.i, label %for.inc.23.i.land.lhs.true.i_crit_edge, label %for.inc.23.i.if.end19_crit_edge

for.inc.23.i.if.end19_crit_edge:                  ; preds = %for.inc.23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

for.inc.23.i.land.lhs.true.i_crit_edge:           ; preds = %for.inc.23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.inc.23.i.land.lhs.true.i_crit_edge, %for.inc.22.i.land.lhs.true.i_crit_edge, %for.inc.21.i.land.lhs.true.i_crit_edge, %for.inc.20.i.land.lhs.true.i_crit_edge, %for.inc.19.i.land.lhs.true.i_crit_edge, %for.inc.18.i.land.lhs.true.i_crit_edge, %for.inc.17.i.land.lhs.true.i_crit_edge, %for.inc.16.i.land.lhs.true.i_crit_edge, %for.inc.15.i.land.lhs.true.i_crit_edge, %for.inc.14.i.land.lhs.true.i_crit_edge, %for.inc.13.i.land.lhs.true.i_crit_edge, %for.inc.12.i.land.lhs.true.i_crit_edge, %for.inc.11.i.land.lhs.true.i_crit_edge, %for.inc.10.i.land.lhs.true.i_crit_edge, %for.inc.9.i.land.lhs.true.i_crit_edge, %for.inc.8.i.land.lhs.true.i_crit_edge, %for.inc.7.i.land.lhs.true.i_crit_edge, %for.inc.6.i.land.lhs.true.i_crit_edge, %for.inc.5.i.land.lhs.true.i_crit_edge, %for.inc.4.i.land.lhs.true.i_crit_edge, %for.inc.3.i.land.lhs.true.i_crit_edge, %for.inc.2.i.land.lhs.true.i_crit_edge, %for.inc.1.i.land.lhs.true.i_crit_edge, %for.inc.i.land.lhs.true.i_crit_edge
  %i.0.lcssa.ph.i = phi i32 [ 24, %for.inc.23.i.land.lhs.true.i_crit_edge ], [ 23, %for.inc.22.i.land.lhs.true.i_crit_edge ], [ 22, %for.inc.21.i.land.lhs.true.i_crit_edge ], [ 21, %for.inc.20.i.land.lhs.true.i_crit_edge ], [ 20, %for.inc.19.i.land.lhs.true.i_crit_edge ], [ 19, %for.inc.18.i.land.lhs.true.i_crit_edge ], [ 18, %for.inc.17.i.land.lhs.true.i_crit_edge ], [ 17, %for.inc.16.i.land.lhs.true.i_crit_edge ], [ 16, %for.inc.15.i.land.lhs.true.i_crit_edge ], [ 15, %for.inc.14.i.land.lhs.true.i_crit_edge ], [ 14, %for.inc.13.i.land.lhs.true.i_crit_edge ], [ 13, %for.inc.12.i.land.lhs.true.i_crit_edge ], [ 12, %for.inc.11.i.land.lhs.true.i_crit_edge ], [ 11, %for.inc.10.i.land.lhs.true.i_crit_edge ], [ 10, %for.inc.9.i.land.lhs.true.i_crit_edge ], [ 9, %for.inc.8.i.land.lhs.true.i_crit_edge ], [ 8, %for.inc.7.i.land.lhs.true.i_crit_edge ], [ 7, %for.inc.6.i.land.lhs.true.i_crit_edge ], [ 6, %for.inc.5.i.land.lhs.true.i_crit_edge ], [ 5, %for.inc.4.i.land.lhs.true.i_crit_edge ], [ 4, %for.inc.3.i.land.lhs.true.i_crit_edge ], [ 3, %for.inc.2.i.land.lhs.true.i_crit_edge ], [ 2, %for.inc.1.i.land.lhs.true.i_crit_edge ], [ 1, %for.inc.i.land.lhs.true.i_crit_edge ]
  %arrayidx6.i = getelementptr [25 x i32], ptr @pl2303_get_supported_baud_rate.baud_sup, i32 0, i32 %i.0.lcssa.ph.i
  %11 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx6.i, align 4
  %sub7.i = sub i32 %12, %baud.0
  %sub8.i = add nsw i32 %i.0.lcssa.ph.i, -1
  %arrayidx9.i = getelementptr [25 x i32], ptr @pl2303_get_supported_baud_rate.baud_sup, i32 0, i32 %sub8.i
  %13 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx9.i, align 4
  %sub10.i = sub i32 %baud.0, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7.i, i32 %sub10.i)
  %cmp11.i = icmp ugt i32 %sub7.i, %sub10.i
  br i1 %cmp11.i, label %land.lhs.true.i.if.end19_crit_edge, label %land.lhs.true.i.if.else15.i_crit_edge

land.lhs.true.i.if.else15.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else15.i

land.lhs.true.i.if.end19_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.else15.i:                                      ; preds = %land.lhs.true.i.if.else15.i_crit_edge, %if.else.if.else15.i_crit_edge
  %i.0.lcssa34.i = phi i32 [ %i.0.lcssa.ph.i, %land.lhs.true.i.if.else15.i_crit_edge ], [ 0, %if.else.if.else15.i_crit_edge ]
  %arrayidx16.i = getelementptr [25 x i32], ptr @pl2303_get_supported_baud_rate.baud_sup, i32 0, i32 %i.0.lcssa34.i
  %15 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx16.i, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else15.i, %land.lhs.true.i.if.end19_crit_edge, %for.inc.23.i.if.end19_crit_edge
  %baud_sup.0 = phi i32 [ %16, %if.else15.i ], [ %14, %land.lhs.true.i.if.end19_crit_edge ], [ 6000000, %for.inc.23.i.if.end19_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %baud.0, i32 %baud_sup.0)
  %cmp20 = icmp eq i32 %baud.0, %baud_sup.0
  br i1 %cmp20, label %if.end19.if.then21_crit_edge, label %if.else23

if.end19.if.then21_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

if.then21:                                        ; preds = %if.end19.if.then21_crit_edge, %if.end8.if.then21_crit_edge
  %17 = tail call i32 @llvm.bswap.i32(i32 %baud.0) #10
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %buf, align 1
  br label %if.end35

if.else23:                                        ; preds = %if.end19
  %19 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool29.not = icmp eq i8 %19, 0
  %div.i96 = udiv i32 384000000, %baud.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 384000000, i32 %baud.0)
  %cmp.i97 = icmp ugt i32 %baud.0, 384000000
  %spec.select.i98 = select i1 %cmp.i97, i32 1, i32 %div.i96
  br i1 %tobool29.not, label %if.else32, label %if.then30

if.then30:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %spec.select.i98)
  %cmp129.i = icmp ugt i32 %spec.select.i98, 2047
  br i1 %cmp129.i, label %while.body.preheader.i, label %if.then30.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge

if.then30.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge: ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_encode_baud_rate_divisor_alt.exit

while.body.preheader.i:                           ; preds = %if.then30
  %shr.i = lshr i32 %spec.select.i98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %spec.select.i98)
  %cmp1.i80 = icmp ugt i32 %spec.select.i98, 4095
  br i1 %cmp1.i80, label %while.body.1.i, label %while.body.preheader.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge

while.body.preheader.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge: ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_encode_baud_rate_divisor_alt.exit

while.body.1.i:                                   ; preds = %while.body.preheader.i
  %shr.1.i = lshr i32 %spec.select.i98, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %spec.select.i98)
  %cmp1.1.i81 = icmp ugt i32 %spec.select.i98, 8191
  br i1 %cmp1.1.i81, label %while.body.2.i, label %while.body.1.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge

while.body.1.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge: ; preds = %while.body.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_encode_baud_rate_divisor_alt.exit

while.body.2.i:                                   ; preds = %while.body.1.i
  %shr.2.i = lshr i32 %spec.select.i98, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %spec.select.i98)
  %cmp1.2.i82 = icmp ugt i32 %spec.select.i98, 16383
  br i1 %cmp1.2.i82, label %while.body.3.i, label %while.body.2.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge

while.body.2.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge: ; preds = %while.body.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_encode_baud_rate_divisor_alt.exit

while.body.3.i:                                   ; preds = %while.body.2.i
  %shr.3.i = lshr i32 %spec.select.i98, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %spec.select.i98)
  %cmp1.3.i83 = icmp ugt i32 %spec.select.i98, 32767
  br i1 %cmp1.3.i83, label %while.body.4.i, label %while.body.3.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge

while.body.3.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge: ; preds = %while.body.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_encode_baud_rate_divisor_alt.exit

while.body.4.i:                                   ; preds = %while.body.3.i
  %shr.4.i = lshr i32 %spec.select.i98, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %spec.select.i98)
  %cmp1.4.i84 = icmp ugt i32 %spec.select.i98, 65535
  br i1 %cmp1.4.i84, label %while.body.5.i, label %while.body.4.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge

while.body.4.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge: ; preds = %while.body.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_encode_baud_rate_divisor_alt.exit

while.body.5.i:                                   ; preds = %while.body.4.i
  %shr.5.i = lshr i32 %spec.select.i98, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %spec.select.i98)
  %cmp1.5.i85 = icmp ugt i32 %spec.select.i98, 131071
  br i1 %cmp1.5.i85, label %while.body.6.i, label %while.body.5.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge

while.body.5.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge: ; preds = %while.body.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_encode_baud_rate_divisor_alt.exit

while.body.6.i:                                   ; preds = %while.body.5.i
  %shr.6.i = lshr i32 %spec.select.i98, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 262143, i32 %spec.select.i98)
  %cmp1.6.i86 = icmp ugt i32 %spec.select.i98, 262143
  br i1 %cmp1.6.i86, label %while.body.7.i, label %while.body.6.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge

while.body.6.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge: ; preds = %while.body.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_encode_baud_rate_divisor_alt.exit

while.body.7.i:                                   ; preds = %while.body.6.i
  %shr.7.i = lshr i32 %spec.select.i98, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 524287, i32 %spec.select.i98)
  %cmp1.7.i87 = icmp ugt i32 %spec.select.i98, 524287
  br i1 %cmp1.7.i87, label %while.body.8.i, label %while.body.7.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge

while.body.7.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge: ; preds = %while.body.7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_encode_baud_rate_divisor_alt.exit

while.body.8.i:                                   ; preds = %while.body.7.i
  %shr.8.i = lshr i32 %spec.select.i98, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %spec.select.i98)
  %cmp1.8.i88 = icmp ugt i32 %spec.select.i98, 1048575
  br i1 %cmp1.8.i88, label %while.body.9.i, label %while.body.8.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge

while.body.8.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge: ; preds = %while.body.8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_encode_baud_rate_divisor_alt.exit

while.body.9.i:                                   ; preds = %while.body.8.i
  %shr.9.i = lshr i32 %spec.select.i98, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %spec.select.i98)
  %cmp1.9.i89 = icmp ugt i32 %spec.select.i98, 2097151
  br i1 %cmp1.9.i89, label %while.body.10.i, label %while.body.9.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge

while.body.9.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge: ; preds = %while.body.9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_encode_baud_rate_divisor_alt.exit

while.body.10.i:                                  ; preds = %while.body.9.i
  %shr.10.i = lshr i32 %spec.select.i98, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194303, i32 %spec.select.i98)
  %cmp1.10.i90 = icmp ugt i32 %spec.select.i98, 4194303
  br i1 %cmp1.10.i90, label %while.body.11.i, label %while.body.10.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge

while.body.10.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge: ; preds = %while.body.10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_encode_baud_rate_divisor_alt.exit

while.body.11.i:                                  ; preds = %while.body.10.i
  %shr.11.i = lshr i32 %spec.select.i98, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388607, i32 %spec.select.i98)
  %cmp1.11.i91 = icmp ugt i32 %spec.select.i98, 8388607
  br i1 %cmp1.11.i91, label %while.body.12.i, label %while.body.11.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge

while.body.11.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge: ; preds = %while.body.11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_encode_baud_rate_divisor_alt.exit

while.body.12.i:                                  ; preds = %while.body.11.i
  %shr.12.i = lshr i32 %spec.select.i98, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %spec.select.i98)
  %cmp1.12.i92 = icmp ugt i32 %spec.select.i98, 16777215
  br i1 %cmp1.12.i92, label %while.body.13.i, label %while.body.12.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge

while.body.12.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge: ; preds = %while.body.12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_encode_baud_rate_divisor_alt.exit

while.body.13.i:                                  ; preds = %while.body.12.i
  %shr.13.i = lshr i32 %spec.select.i98, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554431, i32 %spec.select.i98)
  %cmp1.13.i93 = icmp ugt i32 %spec.select.i98, 33554431
  br i1 %cmp1.13.i93, label %while.body.14.i, label %while.body.13.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge

while.body.13.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge: ; preds = %while.body.13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_encode_baud_rate_divisor_alt.exit

while.body.14.i:                                  ; preds = %while.body.13.i
  call void @__sanitizer_cov_trace_pc() #12
  %shr.14.i = lshr i32 %spec.select.i98, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108863, i32 %spec.select.i98)
  %cmp1.14.i94 = icmp ugt i32 %spec.select.i98, 67108863
  %spec.select35.i = select i1 %cmp1.14.i94, i32 2047, i32 %shr.14.i
  br label %pl2303_encode_baud_rate_divisor_alt.exit

pl2303_encode_baud_rate_divisor_alt.exit:         ; preds = %while.body.14.i, %while.body.13.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge, %while.body.12.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge, %while.body.11.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge, %while.body.10.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge, %while.body.9.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge, %while.body.8.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge, %while.body.7.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge, %while.body.6.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge, %while.body.5.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge, %while.body.4.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge, %while.body.3.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge, %while.body.2.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge, %while.body.1.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge, %while.body.preheader.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge, %if.then30.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge
  %exponent.0.lcssa.i = phi i32 [ 0, %if.then30.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge ], [ 1, %while.body.preheader.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge ], [ 2, %while.body.1.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge ], [ 3, %while.body.2.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge ], [ 4, %while.body.3.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge ], [ 5, %while.body.4.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge ], [ 6, %while.body.5.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge ], [ 7, %while.body.6.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge ], [ 8, %while.body.7.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge ], [ 9, %while.body.8.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge ], [ 10, %while.body.9.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge ], [ 11, %while.body.10.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge ], [ 12, %while.body.11.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge ], [ 13, %while.body.12.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge ], [ 14, %while.body.13.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge ], [ 15, %while.body.14.i ]
  %mantissa.1.i = phi i32 [ %spec.select.i98, %if.then30.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge ], [ %shr.i, %while.body.preheader.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge ], [ %shr.1.i, %while.body.1.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge ], [ %shr.2.i, %while.body.2.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge ], [ %shr.3.i, %while.body.3.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge ], [ %shr.4.i, %while.body.4.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge ], [ %shr.5.i, %while.body.5.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge ], [ %shr.6.i, %while.body.6.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge ], [ %shr.7.i, %while.body.7.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge ], [ %shr.8.i, %while.body.8.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge ], [ %shr.9.i, %while.body.9.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge ], [ %shr.10.i, %while.body.10.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge ], [ %shr.11.i, %while.body.11.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge ], [ %shr.12.i, %while.body.12.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge ], [ %shr.13.i, %while.body.13.i.pl2303_encode_baud_rate_divisor_alt.exit_crit_edge ], [ %spec.select35.i, %while.body.14.i ]
  %arrayidx.i = getelementptr i8, ptr %buf, i32 3
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -128, ptr %arrayidx.i, align 1
  %21 = trunc i32 %exponent.0.lcssa.i to i8
  %conv.i = and i8 %21, 1
  %arrayidx5.i = getelementptr i8, ptr %buf, i32 2
  %22 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv.i, ptr %arrayidx5.i, align 1
  %and6.i = shl nuw nsw i32 %exponent.0.lcssa.i, 4
  %shl.i = and i32 %and6.i, 224
  %shr7.i = lshr i32 %mantissa.1.i, 8
  %or.i = or i32 %shr7.i, %shl.i
  %conv8.i = trunc i32 %or.i to i8
  %arrayidx9.i95 = getelementptr i8, ptr %buf, i32 1
  %23 = ptrtoint ptr %arrayidx9.i95 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv8.i, ptr %arrayidx9.i95, align 1
  %conv11.i = trunc i32 %mantissa.1.i to i8
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv11.i, ptr %buf, align 1
  %div13.i = udiv i32 384000000, %mantissa.1.i
  %shr14.i = lshr i32 %div13.i, %exponent.0.lcssa.i
  br label %if.end35

if.else32:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %spec.select.i98)
  %cmp126.i = icmp ugt i32 %spec.select.i98, 511
  br i1 %cmp126.i, label %while.body.preheader.i101, label %if.else32.pl2303_encode_baud_rate_divisor.exit_crit_edge

if.else32.pl2303_encode_baud_rate_divisor.exit_crit_edge: ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_encode_baud_rate_divisor.exit

while.body.preheader.i101:                        ; preds = %if.else32
  %shr.i99 = lshr i32 %spec.select.i98, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %spec.select.i98)
  %cmp1.i100 = icmp ugt i32 %spec.select.i98, 2047
  br i1 %cmp1.i100, label %while.body.1.i104, label %while.body.preheader.i101.pl2303_encode_baud_rate_divisor.exit_crit_edge

while.body.preheader.i101.pl2303_encode_baud_rate_divisor.exit_crit_edge: ; preds = %while.body.preheader.i101
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_encode_baud_rate_divisor.exit

while.body.1.i104:                                ; preds = %while.body.preheader.i101
  %shr.1.i102 = lshr i32 %spec.select.i98, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %spec.select.i98)
  %cmp1.1.i103 = icmp ugt i32 %spec.select.i98, 8191
  br i1 %cmp1.1.i103, label %while.body.2.i107, label %while.body.1.i104.pl2303_encode_baud_rate_divisor.exit_crit_edge

while.body.1.i104.pl2303_encode_baud_rate_divisor.exit_crit_edge: ; preds = %while.body.1.i104
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_encode_baud_rate_divisor.exit

while.body.2.i107:                                ; preds = %while.body.1.i104
  %shr.2.i105 = lshr i32 %spec.select.i98, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %spec.select.i98)
  %cmp1.2.i106 = icmp ugt i32 %spec.select.i98, 32767
  br i1 %cmp1.2.i106, label %while.body.3.i110, label %while.body.2.i107.pl2303_encode_baud_rate_divisor.exit_crit_edge

while.body.2.i107.pl2303_encode_baud_rate_divisor.exit_crit_edge: ; preds = %while.body.2.i107
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_encode_baud_rate_divisor.exit

while.body.3.i110:                                ; preds = %while.body.2.i107
  %shr.3.i108 = lshr i32 %spec.select.i98, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %spec.select.i98)
  %cmp1.3.i109 = icmp ugt i32 %spec.select.i98, 131071
  br i1 %cmp1.3.i109, label %while.body.4.i113, label %while.body.3.i110.pl2303_encode_baud_rate_divisor.exit_crit_edge

while.body.3.i110.pl2303_encode_baud_rate_divisor.exit_crit_edge: ; preds = %while.body.3.i110
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_encode_baud_rate_divisor.exit

while.body.4.i113:                                ; preds = %while.body.3.i110
  %shr.4.i111 = lshr i32 %spec.select.i98, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 524287, i32 %spec.select.i98)
  %cmp1.4.i112 = icmp ugt i32 %spec.select.i98, 524287
  br i1 %cmp1.4.i112, label %while.body.5.i116, label %while.body.4.i113.pl2303_encode_baud_rate_divisor.exit_crit_edge

while.body.4.i113.pl2303_encode_baud_rate_divisor.exit_crit_edge: ; preds = %while.body.4.i113
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_encode_baud_rate_divisor.exit

while.body.5.i116:                                ; preds = %while.body.4.i113
  %shr.5.i114 = lshr i32 %spec.select.i98, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %spec.select.i98)
  %cmp1.5.i115 = icmp ugt i32 %spec.select.i98, 2097151
  br i1 %cmp1.5.i115, label %while.body.6.i119, label %while.body.5.i116.pl2303_encode_baud_rate_divisor.exit_crit_edge

while.body.5.i116.pl2303_encode_baud_rate_divisor.exit_crit_edge: ; preds = %while.body.5.i116
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl2303_encode_baud_rate_divisor.exit

while.body.6.i119:                                ; preds = %while.body.5.i116
  call void @__sanitizer_cov_trace_pc() #12
  %shr.6.i117 = lshr i32 %spec.select.i98, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388607, i32 %spec.select.i98)
  %cmp1.6.i118 = icmp ugt i32 %spec.select.i98, 8388607
  %spec.select32.i = select i1 %cmp1.6.i118, i32 511, i32 %shr.6.i117
  br label %pl2303_encode_baud_rate_divisor.exit

pl2303_encode_baud_rate_divisor.exit:             ; preds = %while.body.6.i119, %while.body.5.i116.pl2303_encode_baud_rate_divisor.exit_crit_edge, %while.body.4.i113.pl2303_encode_baud_rate_divisor.exit_crit_edge, %while.body.3.i110.pl2303_encode_baud_rate_divisor.exit_crit_edge, %while.body.2.i107.pl2303_encode_baud_rate_divisor.exit_crit_edge, %while.body.1.i104.pl2303_encode_baud_rate_divisor.exit_crit_edge, %while.body.preheader.i101.pl2303_encode_baud_rate_divisor.exit_crit_edge, %if.else32.pl2303_encode_baud_rate_divisor.exit_crit_edge
  %exponent.0.lcssa.i120 = phi i32 [ 0, %if.else32.pl2303_encode_baud_rate_divisor.exit_crit_edge ], [ 2, %while.body.preheader.i101.pl2303_encode_baud_rate_divisor.exit_crit_edge ], [ 4, %while.body.1.i104.pl2303_encode_baud_rate_divisor.exit_crit_edge ], [ 6, %while.body.2.i107.pl2303_encode_baud_rate_divisor.exit_crit_edge ], [ 8, %while.body.3.i110.pl2303_encode_baud_rate_divisor.exit_crit_edge ], [ 10, %while.body.4.i113.pl2303_encode_baud_rate_divisor.exit_crit_edge ], [ 12, %while.body.5.i116.pl2303_encode_baud_rate_divisor.exit_crit_edge ], [ 14, %while.body.6.i119 ]
  %mantissa.1.i121 = phi i32 [ %spec.select.i98, %if.else32.pl2303_encode_baud_rate_divisor.exit_crit_edge ], [ %shr.i99, %while.body.preheader.i101.pl2303_encode_baud_rate_divisor.exit_crit_edge ], [ %shr.1.i102, %while.body.1.i104.pl2303_encode_baud_rate_divisor.exit_crit_edge ], [ %shr.2.i105, %while.body.2.i107.pl2303_encode_baud_rate_divisor.exit_crit_edge ], [ %shr.3.i108, %while.body.3.i110.pl2303_encode_baud_rate_divisor.exit_crit_edge ], [ %shr.4.i111, %while.body.4.i113.pl2303_encode_baud_rate_divisor.exit_crit_edge ], [ %shr.5.i114, %while.body.5.i116.pl2303_encode_baud_rate_divisor.exit_crit_edge ], [ %spec.select32.i, %while.body.6.i119 ]
  %arrayidx.i122 = getelementptr i8, ptr %buf, i32 3
  %25 = ptrtoint ptr %arrayidx.i122 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -128, ptr %arrayidx.i122, align 1
  %arrayidx5.i123 = getelementptr i8, ptr %buf, i32 2
  %26 = ptrtoint ptr %arrayidx5.i123 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx5.i123, align 1
  %shr6.i = lshr i32 %mantissa.1.i121, 8
  %or.i124 = or i32 %shr6.i, %exponent.0.lcssa.i120
  %conv.i125 = trunc i32 %or.i124 to i8
  %arrayidx7.i = getelementptr i8, ptr %buf, i32 1
  %27 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.i125, ptr %arrayidx7.i, align 1
  %conv8.i126 = trunc i32 %mantissa.1.i121 to i8
  %28 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv8.i126, ptr %buf, align 1
  %div10.i = udiv i32 384000000, %mantissa.1.i121
  %shr12.i = lshr i32 %div10.i, %exponent.0.lcssa.i120
  br label %if.end35

if.end35:                                         ; preds = %pl2303_encode_baud_rate_divisor.exit, %pl2303_encode_baud_rate_divisor_alt.exit, %if.then21
  %baud.1 = phi i32 [ %baud.0, %if.then21 ], [ %shr14.i, %pl2303_encode_baud_rate_divisor_alt.exit ], [ %shr12.i, %pl2303_encode_baud_rate_divisor.exit ]
  tail call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef %baud.1, i32 noundef %baud.1) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl2303_encode_baud_rate.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl2303_encode_baud_rate, %if.then48)) #10
          to label %cleanup [label %if.then48], !srcloc !175

if.then48:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %dev49 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl2303_encode_baud_rate.__UNIQUE_ID_ddebug246, ptr noundef %dev49, ptr noundef nonnull @.str.46, i32 noundef %baud.1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.end35, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_hw_change(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_handle_break(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_handle_dcd_change(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_handle_sysrq_char(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !17, !18, !19, !20, !22, !23, !24, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !45, !46, !48, !49, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !115, !116, !118, !119, !121, !122, !123, !125, !126, !128, !130, !131, !132, !134, !136, !137, !138, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !154, !155, !156, !158, !159, !160, !161, !163, !164}
!llvm.module.flags = !{!165, !166, !167, !168, !169, !170, !171, !172}
!llvm.ident = !{!173}

!0 = !{ptr @__initcall__kmod_pl2303__263_1253_usb_serial_module_init6, !1, !"__initcall__kmod_pl2303__263_1253_usb_serial_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/pl2303.c", i32 1253, i32 1}
!2 = !{ptr @__exitcall_usb_serial_module_exit, !1, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description264, !4, !"__UNIQUE_ID_description264", i1 false, i1 false}
!4 = !{!"../drivers/usb/serial/pl2303.c", i32 1255, i32 1}
!5 = !{ptr @__UNIQUE_ID_file265, !6, !"__UNIQUE_ID_file265", i1 false, i1 false}
!6 = !{!"../drivers/usb/serial/pl2303.c", i32 1256, i32 1}
!7 = !{ptr @__UNIQUE_ID_license266, !6, !"__UNIQUE_ID_license266", i1 false, i1 false}
!8 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @id_table, !10, !"id_table", i1 false, i1 false}
!10 = !{!"../drivers/usb/serial/pl2303.c", i32 35, i32 35}
!11 = !{ptr @serial_drivers, !12, !"serial_drivers", i1 false, i1 false}
!12 = !{!"../drivers/usb/serial/pl2303.c", i32 1249, i32 41}
!13 = !{ptr @pl2303_device, !14, !"pl2303_device", i1 false, i1 false}
!14 = !{!"../drivers/usb/serial/pl2303.c", i32 1219, i32 33}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/serial/pl2303.c", i32 470, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @pl2303_startup.__UNIQUE_ID_ddebug241, !16, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/serial/pl2303.c", i32 453, i32 2}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @pl2303_detect_type._entry, !21, !"_entry", i1 false, i1 false}
!26 = !{ptr @pl2303_detect_type._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/serial/pl2303.c", i32 210, i32 13}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/serial/pl2303.c", i32 216, i32 13}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/serial/pl2303.c", i32 220, i32 13}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/serial/pl2303.c", i32 225, i32 13}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/serial/pl2303.c", i32 230, i32 13}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/serial/pl2303.c", i32 234, i32 13}
!39 = !{ptr @pl2303_type_data, !40, !"pl2303_type_data", i1 false, i1 false}
!40 = !{!"../drivers/usb/serial/pl2303.c", i32 208, i32 38}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/serial/pl2303.c", i32 257, i32 3}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @pl2303_vendor_read._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @pl2303_vendor_read._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/serial/pl2303.c", i32 265, i32 2}
!48 = !{ptr @pl2303_vendor_read.__UNIQUE_ID_ddebug238, !47, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/serial/pl2303.c", i32 277, i32 2}
!51 = !{ptr @pl2303_vendor_write.__UNIQUE_ID_ddebug239, !50, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/serial/pl2303.c", i32 288, i32 3}
!54 = !{ptr @pl2303_vendor_write._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @pl2303_vendor_write._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/serial/pl2303.c", i32 381, i32 3}
!58 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @pl2303_calc_num_ports._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @pl2303_calc_num_ports._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/serial/pl2303.c", i32 359, i32 3}
!63 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @pl2303_endpoint_hack.__UNIQUE_ID_ddebug240, !62, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!65 = !{ptr @pl2303_port_probe.__key, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/usb/serial/pl2303.c", i32 525, i32 2}
!67 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/serial/pl2303.c", i32 973, i32 3}
!70 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @pl2303_open._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @pl2303_open._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/serial/pl2303.c", i32 1062, i32 2}
!75 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @pl2303_set_break.__UNIQUE_ID_ddebug259, !74, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!77 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/serial/pl2303.c", i32 1069, i32 3}
!81 = !{ptr @pl2303_set_break._entry, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @pl2303_set_break._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/serial/pl2303.c", i32 805, i32 2}
!85 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @pl2303_set_termios.__UNIQUE_ID_ddebug249, !84, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/serial/pl2303.c", i32 820, i32 4}
!89 = !{ptr @pl2303_set_termios.__UNIQUE_ID_ddebug250, !88, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/serial/pl2303.c", i32 823, i32 4}
!92 = !{ptr @pl2303_set_termios.__UNIQUE_ID_ddebug251, !91, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!93 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/serial/pl2303.c", i32 827, i32 3}
!95 = !{ptr @pl2303_set_termios.__UNIQUE_ID_ddebug252, !94, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/serial/pl2303.c", i32 839, i32 5}
!98 = !{ptr @pl2303_set_termios.__UNIQUE_ID_ddebug253, !97, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!99 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/serial/pl2303.c", i32 842, i32 5}
!101 = !{ptr @pl2303_set_termios.__UNIQUE_ID_ddebug254, !100, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!102 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/serial/pl2303.c", i32 847, i32 5}
!104 = !{ptr @pl2303_set_termios.__UNIQUE_ID_ddebug255, !103, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!105 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/serial/pl2303.c", i32 850, i32 5}
!107 = !{ptr @pl2303_set_termios.__UNIQUE_ID_ddebug256, !106, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!108 = !{ptr @.str.40, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/serial/pl2303.c", i32 855, i32 3}
!110 = !{ptr @pl2303_set_termios.__UNIQUE_ID_ddebug257, !109, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!111 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/serial/pl2303.c", i32 723, i32 3}
!113 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @pl2303_get_line_request._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @pl2303_get_line_request._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.43, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/serial/pl2303.c", i32 731, i32 2}
!118 = !{ptr @pl2303_get_line_request.__UNIQUE_ID_ddebug247, !117, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!119 = !{ptr @.str.44, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/serial/pl2303.c", i32 686, i32 2}
!121 = !{ptr @.str.45, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @pl2303_encode_baud_rate.__UNIQUE_ID_ddebug243, !120, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!123 = !{ptr @.str.46, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/usb/serial/pl2303.c", i32 710, i32 2}
!125 = !{ptr @pl2303_encode_baud_rate.__UNIQUE_ID_ddebug246, !124, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!126 = !{ptr @pl2303_get_supported_baud_rate.baud_sup, !127, !"baud_sup", i1 false, i1 false}
!127 = !{!"../drivers/usb/serial/pl2303.c", i32 563, i32 23}
!128 = !{ptr @.str.47, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/serial/pl2303.c", i32 746, i32 3}
!130 = !{ptr @pl2303_set_line_request._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @pl2303_set_line_request._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @pl2303_set_line_request.__UNIQUE_ID_ddebug248, !133, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!133 = !{!"../drivers/usb/serial/pl2303.c", i32 750, i32 2}
!134 = !{ptr @.str.48, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/usb/serial/pl2303.c", i32 546, i32 2}
!136 = !{ptr @.str.49, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @pl2303_set_control_lines.__UNIQUE_ID_ddebug242, !135, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!138 = !{ptr @pl2303_set_control_lines._entry, !139, !"_entry", i1 false, i1 false}
!139 = !{!"../drivers/usb/serial/pl2303.c", i32 552, i32 3}
!140 = !{ptr @pl2303_set_control_lines._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.50, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/usb/serial/pl2303.c", i32 1036, i32 2}
!143 = !{ptr @.str.51, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @pl2303_tiocmget.__UNIQUE_ID_ddebug258, !142, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!145 = !{ptr @.str.52, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/serial/pl2303.c", i32 1146, i32 3}
!147 = !{ptr @.str.53, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @pl2303_read_int_callback.__UNIQUE_ID_ddebug260, !146, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!149 = !{ptr @.str.54, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/usb/serial/pl2303.c", i32 1150, i32 3}
!151 = !{ptr @pl2303_read_int_callback.__UNIQUE_ID_ddebug261, !150, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!152 = !{ptr @.str.55, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/usb/serial/pl2303.c", i32 1163, i32 3}
!154 = !{ptr @pl2303_read_int_callback._entry, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @pl2303_read_int_callback._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.56, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../include/linux/usb/serial.h", i32 393, i32 2}
!158 = !{ptr @.str.57, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.58, !157, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, !157, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!161 = !{ptr @.str.59, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/usb/serial/pl2303.c", i32 1200, i32 3}
!163 = !{ptr @.str.60, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @pl2303_process_read_urb.__UNIQUE_ID_ddebug262, !162, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!165 = !{i32 1, !"wchar_size", i32 2}
!166 = !{i32 1, !"min_enum_size", i32 4}
!167 = !{i32 8, !"branch-target-enforcement", i32 0}
!168 = !{i32 8, !"sign-return-address", i32 0}
!169 = !{i32 8, !"sign-return-address-all", i32 0}
!170 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!171 = !{i32 7, !"uwtable", i32 1}
!172 = !{i32 7, !"frame-pointer", i32 2}
!173 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!174 = !{!"auto-init"}
!175 = !{i64 2148723114, i64 2148723119, i64 2148723132, i64 2148723176, i64 2148723210, i64 2148723231}
