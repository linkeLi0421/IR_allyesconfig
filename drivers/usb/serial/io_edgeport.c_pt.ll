; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/io_edgeport.c_pt.bc'
source_filename = "../drivers/usb/serial/io_edgeport.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.divisor_table_entry = type { i32, i16 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.edgeport_serial = type { [66 x i8], %struct.edge_manuf_descriptor, %struct.edge_boot_descriptor, %struct.edgeport_product_info, %struct.edge_compatibility_descriptor, i32, i8, ptr, ptr, i8, ptr, ptr, i8, %struct.spinlock, i8, i16, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.edge_manuf_descriptor = type { [16 x i16], [736 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8], i8, i8, [12 x i16], i8, i8, [14 x i16], i8, i8, [14 x i16], i8, i8, [6 x i16], [77 x i8], i8, i8, i8 }
%struct.edge_boot_descriptor = type { i8, i8, i8, i8, i16, i8, i8, i16, i16, i8, i8, i16, [40 x i8], i8, i8, [6 x i8] }
%struct.edgeport_product_info = type { i16, i8, i8, i32, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, [3 x i8], i8, i8, i8, [2 x i8], %struct.edge_compatibility_bits }
%struct.edge_compatibility_bits = type { [12 x i8] }
%struct.edge_compatibility_descriptor = type { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i16, %struct.edge_compatibility_bits }
%struct.usb_serial = type { ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, [16 x ptr], %struct.kref, %struct.mutex, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.edgeport_port = type { i16, i16, %struct.TxFifo, ptr, i8, %struct.spinlock, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, ptr }
%struct.TxFifo = type { i32, i32, i32, i32, ptr }
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
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.firmware = type { i32, ptr, ptr }
%struct.ihex_binrec = type <{ i32, i16, [0 x i8] }>
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__initcall__kmod_io_edgeport__394_3121_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @edgeport_2port_device, ptr @edgeport_4port_device, ptr @edgeport_8port_device, ptr @epic_device, ptr null], [44 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author395 = internal constant [75 x i8] c"io_edgeport.author=Greg Kroah-Hartman <greg@kroah.com> and David Iacovelli\00", section ".modinfo", align 1
@__UNIQUE_ID_description396 = internal constant [51 x i8] c"io_edgeport.description=Edgeport USB Serial Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file397 = internal constant [48 x i8] c"io_edgeport.file=drivers/usb/serial/io_edgeport\00", section ".modinfo", align 1
@__UNIQUE_ID_license398 = internal constant [24 x i8] c"io_edgeport.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware399 = internal constant [38 x i8] c"io_edgeport.firmware=edgeport/boot.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware400 = internal constant [39 x i8] c"io_edgeport.firmware=edgeport/boot2.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware401 = internal constant [38 x i8] c"io_edgeport.firmware=edgeport/down.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware402 = internal constant [39 x i8] c"io_edgeport.firmware=edgeport/down2.fw\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"io_edgeport\00", [20 x i8] zeroinitializer }, align 32
@id_table_combined = internal constant { [30 x %struct.usb_device_id], [176 x i8] } { [30 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 5640, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 5123, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 5, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 6, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 7, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 12, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 13, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 14, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 15, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 17, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 18, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 26, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 25, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 19, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 20, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 24, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1028, i16 514, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1028, i16 515, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1028, i16 784, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1028, i16 785, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1028, i16 786, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1497, i16 -22696, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1497, i16 -22636, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1497, i16 -24027, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [176 x i8] zeroinitializer }, align 32
@edgeport_2port_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.1, ptr @edgeport_2port_id_table, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 2, i8 1, i8 1, i8 1, i8 0, i32 0, i32 0, ptr null, ptr @edge_startup, ptr null, ptr @edge_disconnect, ptr @edge_release, ptr @edge_port_probe, ptr @edge_port_remove, ptr null, ptr null, ptr null, ptr @edge_open, ptr @edge_close, ptr @edge_write, ptr @edge_write_room, ptr @edge_ioctl, ptr null, ptr null, ptr @edge_set_termios, ptr @edge_break, ptr @edge_chars_in_buffer, ptr null, ptr null, ptr @edge_throttle, ptr @edge_unthrottle, ptr @edge_tiocmget, ptr @edge_tiocmset, ptr @usb_serial_generic_tiocmiwait, ptr @usb_serial_generic_get_icount, ptr null, ptr null, ptr null, ptr @edge_interrupt_callback, ptr null, ptr @edge_bulk_in_callback, ptr @edge_bulk_out_data_callback, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@edgeport_4port_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.239, ptr @edgeport_4port_id_table, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str.240, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 4, i8 1, i8 1, i8 1, i8 0, i32 0, i32 0, ptr null, ptr @edge_startup, ptr null, ptr @edge_disconnect, ptr @edge_release, ptr @edge_port_probe, ptr @edge_port_remove, ptr null, ptr null, ptr null, ptr @edge_open, ptr @edge_close, ptr @edge_write, ptr @edge_write_room, ptr @edge_ioctl, ptr null, ptr null, ptr @edge_set_termios, ptr @edge_break, ptr @edge_chars_in_buffer, ptr null, ptr null, ptr @edge_throttle, ptr @edge_unthrottle, ptr @edge_tiocmget, ptr @edge_tiocmset, ptr @usb_serial_generic_tiocmiwait, ptr @usb_serial_generic_get_icount, ptr null, ptr null, ptr null, ptr @edge_interrupt_callback, ptr null, ptr @edge_bulk_in_callback, ptr @edge_bulk_out_data_callback, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@edgeport_8port_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.241, ptr @edgeport_8port_id_table, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str.242, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 8, i8 1, i8 1, i8 1, i8 0, i32 0, i32 0, ptr null, ptr @edge_startup, ptr null, ptr @edge_disconnect, ptr @edge_release, ptr @edge_port_probe, ptr @edge_port_remove, ptr null, ptr null, ptr null, ptr @edge_open, ptr @edge_close, ptr @edge_write, ptr @edge_write_room, ptr @edge_ioctl, ptr null, ptr null, ptr @edge_set_termios, ptr @edge_break, ptr @edge_chars_in_buffer, ptr null, ptr null, ptr @edge_throttle, ptr @edge_unthrottle, ptr @edge_tiocmget, ptr @edge_tiocmset, ptr @usb_serial_generic_tiocmiwait, ptr @usb_serial_generic_get_icount, ptr null, ptr null, ptr null, ptr @edge_interrupt_callback, ptr null, ptr @edge_bulk_in_callback, ptr @edge_bulk_out_data_callback, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@epic_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.243, ptr @Epic_port_id_table, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str.244, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 1, i8 1, i8 1, i8 1, i8 0, i32 0, i32 0, ptr null, ptr @edge_startup, ptr null, ptr @edge_disconnect, ptr @edge_release, ptr @edge_port_probe, ptr @edge_port_remove, ptr null, ptr null, ptr null, ptr @edge_open, ptr @edge_close, ptr @edge_write, ptr @edge_write_room, ptr @edge_ioctl, ptr null, ptr null, ptr @edge_set_termios, ptr @edge_break, ptr @edge_chars_in_buffer, ptr null, ptr null, ptr @edge_throttle, ptr @edge_unthrottle, ptr @edge_tiocmget, ptr @edge_tiocmset, ptr @usb_serial_generic_tiocmiwait, ptr @usb_serial_generic_get_icount, ptr null, ptr null, ptr null, ptr @edge_interrupt_callback, ptr null, ptr @edge_bulk_in_callback, ptr @edge_bulk_out_data_callback, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Edgeport 2 port adapter\00", [40 x i8] zeroinitializer }, align 32
@edgeport_2port_id_table = internal constant { [6 x %struct.usb_device_id], [48 x i8] } { [6 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 5640, i16 5, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 7, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 12, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 13, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"edgeport_2\00", [21 x i8] zeroinitializer }, align 32
@edge_startup.descriptor = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 16383, i32 1], [20 x i8] zeroinitializer }, align 32
@edge_startup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&edge_serial->es_lock\00", [42 x i8] zeroinitializer }, align 32
@edge_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 2731, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s detected\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"edge_startup\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/usb/serial/io_edgeport.c\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@edge_startup._entry_ptr = internal global ptr @edge_startup._entry, section ".printk_index", align 4
@edge_startup._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 2755, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"Device Reported %d serial ports vs. core thinking we have %d ports, email greg@kroah.com this information.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@edge_startup._entry_ptr.12 = internal global ptr @edge_startup._entry.9, section ".printk_index", align 4
@edge_startup.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.13, i8 2, i8 -79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - time 1 %ld\0A\00", [47 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@edge_startup.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.14, i8 2, i8 -77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - time 2 %ld\0A\00", [47 x i8] zeroinitializer }, align 32
@edge_startup.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.15, i8 2, i8 -76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - time 3 %ld\0A\00", [47 x i8] zeroinitializer }, align 32
@edge_startup.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.16, i8 2, i8 -74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  FirmwareMajorVersion  %d.%d.%d\0A\00", [62 x i8] zeroinitializer }, align 32
@edge_startup.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.17, i8 2, i8 -68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"found interrupt in\0A\00", [44 x i8] zeroinitializer }, align 32
@edge_startup.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.18, i8 2, i8 -58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"found bulk in\0A\00", [17 x i8] zeroinitializer }, align 32
@edge_startup.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.19, i8 2, i8 -50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"found bulk out\0A\00", [16 x i8] zeroinitializer }, align 32
@edge_startup._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.5, ptr @.str.6, i32 2883, ptr @.str.22, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"expected endpoints not found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@edge_startup._entry_ptr.23 = internal global ptr @edge_startup._entry.20, section ".printk_index", align 4
@edge_startup._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.5, ptr @.str.6, i32 2896, ptr @.str.22, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - Error %d submitting control urb\0A\00", [58 x i8] zeroinitializer }, align 32
@edge_startup._entry_ptr.26 = internal global ptr @edge_startup._entry.24, section ".printk_index", align 4
@get_epic_descriptor.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.6, ptr @.str.28, i8 0, i8 -125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"get_epic_descriptor\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"**EPIC descriptor:\0A\00", [44 x i8] zeroinitializer }, align 32
@get_epic_descriptor.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.6, ptr @.str.29, i8 0, i8 -124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  VendEnableSuspend: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TRUE\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FALSE\00", [26 x i8] zeroinitializer }, align 32
@get_epic_descriptor.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.6, ptr @.str.32, i8 0, i8 -124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  IOSPOpen         : %s\0A\00", [39 x i8] zeroinitializer }, align 32
@get_epic_descriptor.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.6, ptr @.str.33, i8 0, i8 -124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  IOSPClose        : %s\0A\00", [39 x i8] zeroinitializer }, align 32
@get_epic_descriptor.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.6, ptr @.str.34, i8 0, i8 -124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  IOSPChase        : %s\0A\00", [39 x i8] zeroinitializer }, align 32
@get_epic_descriptor.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.6, ptr @.str.35, i8 0, i8 -123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  IOSPSetRxFlow    : %s\0A\00", [39 x i8] zeroinitializer }, align 32
@get_epic_descriptor.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.6, ptr @.str.36, i8 0, i8 -123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  IOSPSetTxFlow    : %s\0A\00", [39 x i8] zeroinitializer }, align 32
@get_epic_descriptor.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.6, ptr @.str.37, i8 0, i8 -123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  IOSPSetXChar     : %s\0A\00", [39 x i8] zeroinitializer }, align 32
@get_epic_descriptor.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.6, ptr @.str.38, i8 0, i8 -123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  IOSPRxCheck      : %s\0A\00", [39 x i8] zeroinitializer }, align 32
@get_epic_descriptor.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.6, ptr @.str.39, i8 0, i8 -122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  IOSPSetClrBreak  : %s\0A\00", [39 x i8] zeroinitializer }, align 32
@get_epic_descriptor.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.6, ptr @.str.40, i8 0, i8 -122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  IOSPWriteMCR     : %s\0A\00", [39 x i8] zeroinitializer }, align 32
@get_epic_descriptor.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.6, ptr @.str.41, i8 0, i8 -122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  IOSPWriteLCR     : %s\0A\00", [39 x i8] zeroinitializer }, align 32
@get_epic_descriptor.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.6, ptr @.str.42, i8 0, i8 -122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  IOSPSetBaudRate  : %s\0A\00", [39 x i8] zeroinitializer }, align 32
@get_epic_descriptor.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.6, ptr @.str.43, i8 0, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  TrueEdgeport     : %s\0A\00", [39 x i8] zeroinitializer }, align 32
@get_epic_descriptor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.27, ptr @.str.6, i32 545, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"short epic descriptor received: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@get_epic_descriptor._entry_ptr = internal global ptr @get_epic_descriptor._entry, section ".printk_index", align 4
@dump_product_info.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.6, ptr @.str.46, i8 0, i8 99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dump_product_info\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"**Product Information:\0A\00", [40 x i8] zeroinitializer }, align 32
@dump_product_info.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.6, ptr @.str.47, i8 0, i8 99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"  ProductId             %x\0A\00", [36 x i8] zeroinitializer }, align 32
@dump_product_info.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.6, ptr @.str.48, i8 0, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"  NumPorts              %d\0A\00", [36 x i8] zeroinitializer }, align 32
@dump_product_info.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.6, ptr @.str.49, i8 0, i8 100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"  ProdInfoVer           %d\0A\00", [36 x i8] zeroinitializer }, align 32
@dump_product_info.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.6, ptr @.str.50, i8 0, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"  IsServer              %d\0A\00", [36 x i8] zeroinitializer }, align 32
@dump_product_info.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.6, ptr @.str.51, i8 0, i8 100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"  IsRS232               %d\0A\00", [36 x i8] zeroinitializer }, align 32
@dump_product_info.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.6, ptr @.str.52, i8 0, i8 101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"  IsRS422               %d\0A\00", [36 x i8] zeroinitializer }, align 32
@dump_product_info.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.6, ptr @.str.53, i8 0, i8 101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"  IsRS485               %d\0A\00", [36 x i8] zeroinitializer }, align 32
@dump_product_info.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.6, ptr @.str.54, i8 0, i8 101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"  RomSize               %d\0A\00", [36 x i8] zeroinitializer }, align 32
@dump_product_info.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.6, ptr @.str.55, i8 0, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"  RamSize               %d\0A\00", [36 x i8] zeroinitializer }, align 32
@dump_product_info.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.6, ptr @.str.56, i8 0, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"  CpuRev                %x\0A\00", [36 x i8] zeroinitializer }, align 32
@dump_product_info.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.6, ptr @.str.57, i8 0, i8 102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"  BoardRev              %x\0A\00", [36 x i8] zeroinitializer }, align 32
@dump_product_info.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.6, ptr @.str.58, i8 0, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  BootMajorVersion      %d.%d.%d\0A\00", [62 x i8] zeroinitializer }, align 32
@dump_product_info.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.6, ptr @.str.16, i8 0, i8 104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dump_product_info.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.6, ptr @.str.59, i8 0, i8 105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  ManufactureDescDate   %d/%d/%d\0A\00", [62 x i8] zeroinitializer }, align 32
@dump_product_info.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.6, ptr @.str.60, i8 0, i8 105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"  iDownloadFile         0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@dump_product_info.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.6, ptr @.str.61, i8 0, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"  EpicVer               %d\0A\00", [36 x i8] zeroinitializer }, align 32
@get_manufacturing_desc.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.6, ptr @.str.63, i8 2, i8 119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"get_manufacturing_desc\00", [41 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"getting manufacturer descriptor\0A\00", [63 x i8] zeroinitializer }, align 32
@get_manufacturing_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.6, i32 2535, ptr @.str.22, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"error in getting manufacturer descriptor: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@get_manufacturing_desc._entry_ptr = internal global ptr @get_manufacturing_desc._entry, section ".printk_index", align 4
@get_manufacturing_desc.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.6, ptr @.str.65, i8 2, i8 122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"**Manufacturer Descriptor\0A\00", [37 x i8] zeroinitializer }, align 32
@get_manufacturing_desc.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.6, ptr @.str.66, i8 2, i8 123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"  RomSize:        %dK\0A\00", [41 x i8] zeroinitializer }, align 32
@get_manufacturing_desc.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.6, ptr @.str.67, i8 2, i8 123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"  RamSize:        %dK\0A\00", [41 x i8] zeroinitializer }, align 32
@get_manufacturing_desc.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.6, ptr @.str.68, i8 2, i8 124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  CpuRev:         %d\0A\00", [42 x i8] zeroinitializer }, align 32
@get_manufacturing_desc.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.6, ptr @.str.69, i8 2, i8 124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  BoardRev:       %d\0A\00", [42 x i8] zeroinitializer }, align 32
@get_manufacturing_desc.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.6, ptr @.str.70, i8 2, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  NumPorts:       %d\0A\00", [42 x i8] zeroinitializer }, align 32
@get_manufacturing_desc.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.6, ptr @.str.71, i8 2, i8 126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"  DescDate:       %d/%d/%d\0A\00", [36 x i8] zeroinitializer }, align 32
@get_manufacturing_desc.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.6, ptr @.str.72, i8 2, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  SerialNumber: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@get_manufacturing_desc.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.6, ptr @.str.73, i8 2, i8 -128, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  AssemblyNumber: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@get_manufacturing_desc.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.6, ptr @.str.74, i8 2, i8 -127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  OemAssyNumber:  %s\0A\00", [42 x i8] zeroinitializer }, align 32
@get_manufacturing_desc.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.6, ptr @.str.75, i8 2, i8 -127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  UartType:       %d\0A\00", [42 x i8] zeroinitializer }, align 32
@get_manufacturing_desc.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.6, ptr @.str.76, i8 2, i8 -126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  IonPid:         %d\0A\00", [42 x i8] zeroinitializer }, align 32
@get_manufacturing_desc.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.6, ptr @.str.77, i8 2, i8 -126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  IonConfig:      %d\0A\00", [42 x i8] zeroinitializer }, align 32
@get_boot_desc.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.6, ptr @.str.79, i8 2, i8 -122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"get_boot_desc\00", [18 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"getting boot descriptor\0A\00", [39 x i8] zeroinitializer }, align 32
@get_boot_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.6, i32 2595, ptr @.str.22, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"error in getting boot descriptor: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@get_boot_desc._entry_ptr = internal global ptr @get_boot_desc._entry, section ".printk_index", align 4
@get_boot_desc.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.6, ptr @.str.81, i8 2, i8 -119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"**Boot Descriptor:\0A\00", [44 x i8] zeroinitializer }, align 32
@get_boot_desc.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.6, ptr @.str.82, i8 2, i8 -119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  BootCodeLength: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@get_boot_desc.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.6, ptr @.str.83, i8 2, i8 -118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  MajorVersion:   %d\0A\00", [42 x i8] zeroinitializer }, align 32
@get_boot_desc.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.6, ptr @.str.84, i8 2, i8 -118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  MinorVersion:   %d\0A\00", [42 x i8] zeroinitializer }, align 32
@get_boot_desc.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.6, ptr @.str.85, i8 2, i8 -117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  BuildNumber:    %d\0A\00", [42 x i8] zeroinitializer }, align 32
@get_boot_desc.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.6, ptr @.str.86, i8 2, i8 -117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"  Capabilities:   0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@get_boot_desc.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.6, ptr @.str.87, i8 2, i8 -116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  UConfig0:       %d\0A\00", [42 x i8] zeroinitializer }, align 32
@get_boot_desc.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.6, ptr @.str.88, i8 2, i8 -116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  UConfig1:       %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"downloading firmware version (930)\00", [61 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"edgeport/down.fw\00", [47 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"downloading firmware version (80251)\00", [59 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"edgeport/down2.fw\00", [46 x i8] zeroinitializer }, align 32
@load_application_firmware.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.6, ptr @.str.94, i8 2, i8 -108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"load_application_firmware\00", [38 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"No download file specified, skipping download\0A\00", [49 x i8] zeroinitializer }, align 32
@load_application_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.6, i32 2654, ptr @.str.22, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to load image \22%s\22 err %d\0A\00", [62 x i8] zeroinitializer }, align 32
@load_application_firmware._entry_ptr = internal global ptr @load_application_firmware._entry, section ".printk_index", align 4
@load_application_firmware.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.6, ptr @.str.96, i8 2, i8 -103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s %d.%d.%d\0A\00", [19 x i8] zeroinitializer }, align 32
@load_application_firmware._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.93, ptr @.str.6, i32 2679, ptr @.str.22, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sram_write failed (%x, %x, %d)\0A\00", [32 x i8] zeroinitializer }, align 32
@load_application_firmware._entry_ptr.99 = internal global ptr @load_application_firmware._entry.97, section ".printk_index", align 4
@load_application_firmware.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.6, ptr @.str.100, i8 2, i8 -97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sending exec_dl_code\0A\00", [42 x i8] zeroinitializer }, align 32
@request_ihex_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.103, i32 77, ptr @.str.22, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Firmware \22%s\22 not valid IHEX records\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"request_ihex_firmware\00", [42 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/ihex.h\00", [43 x i8] zeroinitializer }, align 32
@request_ihex_firmware._entry_ptr = internal global ptr @request_ihex_firmware._entry, section ".printk_index", align 4
@sram_write.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.6, ptr @.str.105, i8 1, i8 -21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sram_write\00", [21 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - %x, %x, %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"edgeport/boot.fw\00", [47 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"edgeport/boot2.fw\00", [46 x i8] zeroinitializer }, align 32
@update_edgeport_E2PROM._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.108, ptr @.str.6, i32 337, ptr @.str.22, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"update_edgeport_E2PROM\00", [41 x i8] zeroinitializer }, align 32
@update_edgeport_E2PROM._entry_ptr = internal global ptr @update_edgeport_E2PROM._entry, section ".printk_index", align 4
@update_edgeport_E2PROM.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.6, ptr @.str.109, i8 0, i8 89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Current Boot Image version %d.%d.%d\0A\00", [59 x i8] zeroinitializer }, align 32
@update_edgeport_E2PROM.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.6, ptr @.str.110, i8 0, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"**Update Boot Image from %d.%d.%d to %d.%d.%d\0A\00", [49 x i8] zeroinitializer }, align 32
@update_edgeport_E2PROM.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.6, ptr @.str.111, i8 0, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Downloading new Boot Image\0A\00", [36 x i8] zeroinitializer }, align 32
@update_edgeport_E2PROM._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.108, ptr @.str.6, i32 382, ptr @.str.22, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rom_write failed (%x, %x, %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@update_edgeport_E2PROM._entry_ptr.114 = internal global ptr @update_edgeport_E2PROM._entry.112, section ".printk_index", align 4
@update_edgeport_E2PROM.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.6, ptr @.str.115, i8 0, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Boot Image -- already up to date\0A\00", [62 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@edge_port_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.116 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&edge_port->ep_lock\00", [44 x i8] zeroinitializer }, align 32
@edge_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.117, ptr @.str.6, i32 872, ptr @.str.22, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"edge_open\00", [22 x i8] zeroinitializer }, align 32
@edge_open._entry_ptr = internal global ptr @edge_open._entry, section ".printk_index", align 4
@edge_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.118 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&edge_port->wait_open\00", [42 x i8] zeroinitializer }, align 32
@edge_open.__key.119 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.120 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&edge_port->wait_chase\00", [41 x i8] zeroinitializer }, align 32
@edge_open.__key.121 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.122 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&edge_port->wait_command\00", [39 x i8] zeroinitializer }, align 32
@edge_open._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.117, ptr @.str.6, i32 893, ptr @.str.22, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - error sending open port command\0A\00", [58 x i8] zeroinitializer }, align 32
@edge_open._entry_ptr.125 = internal global ptr @edge_open._entry.123, section ".printk_index", align 4
@edge_open.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.117, ptr @.str.6, ptr @.str.126, i8 0, i8 -30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - open timedout\0A\00", [44 x i8] zeroinitializer }, align 32
@edge_open.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.117, ptr @.str.6, ptr @.str.127, i8 0, i8 -24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s - Initialize TX fifo to %d bytes\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.write_cmd_usb = private unnamed_addr constant [14 x i8] c"write_cmd_usb\00", align 1
@CmdUrbs = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@write_cmd_usb.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.write_cmd_usb, ptr @.str.6, ptr @.str.128, i8 2, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s - ALLOCATE URB %p (outstanding %d)\0A\00", [57 x i8] zeroinitializer }, align 32
@write_cmd_usb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @__func__.write_cmd_usb, ptr @.str.6, i32 2154, ptr @.str.22, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s - usb_submit_urb(write command) failed, status = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@write_cmd_usb._entry_ptr = internal global ptr @write_cmd_usb._entry, section ".printk_index", align 4
@usb_serial_debug_data.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.130, ptr @.str.131, ptr @.str.132, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb_serial_debug_data\00", [42 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/usb/serial.h\00", [37 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - length = %d, data = %*ph\0A\00", [33 x i8] zeroinitializer }, align 32
@edge_bulk_out_cmd_callback.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.133, ptr @.str.6, ptr @.str.134, i8 0, i8 -62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"edge_bulk_out_cmd_callback\00", [37 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s - FREE URB %p (outstanding %d)\0A\00", [61 x i8] zeroinitializer }, align 32
@edge_bulk_out_cmd_callback.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.133, ptr @.str.6, ptr @.str.135, i8 0, i8 -59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s - nonzero write bulk status received: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@edge_close.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.6, ptr @.str.137, i8 1, i8 11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"edge_close\00", [21 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s - Sending IOSP_CMD_CHASE_PORT\0A\00", [62 x i8] zeroinitializer }, align 32
@edge_close.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.6, ptr @.str.138, i8 1, i8 14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s - Sending IOSP_CMD_CLOSE_PORT\0A\00", [62 x i8] zeroinitializer }, align 32
@block_until_tx_empty.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.139, ptr @.str.6, ptr @.str.140, i8 0, i8 -2, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"block_until_tx_empty\00", [43 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s - TX Buffer Empty\0A\00", [42 x i8] zeroinitializer }, align 32
@block_until_tx_empty.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.139, ptr @.str.6, ptr @.str.141, i8 1, i8 1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s wait\0A\00", [23 x i8] zeroinitializer }, align 32
@block_until_tx_empty.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.139, ptr @.str.6, ptr @.str.142, i8 1, i8 2, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s - TIMEOUT\0A\00", [18 x i8] zeroinitializer }, align 32
@block_until_chase_response.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.143, ptr @.str.6, ptr @.str.144, i8 0, i8 -16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.143 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"block_until_chase_response\00", [37 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s - Got Chase Response\0A\00", [39 x i8] zeroinitializer }, align 32
@block_until_chase_response.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.143, ptr @.str.6, ptr @.str.145, i8 0, i8 -15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.145 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s - Got all credits\0A\00", [42 x i8] zeroinitializer }, align 32
@block_until_chase_response.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.143, ptr @.str.6, ptr @.str.146, i8 0, i8 -11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - Chase TIMEOUT\0A\00", [44 x i8] zeroinitializer }, align 32
@block_until_chase_response.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.143, ptr @.str.6, ptr @.str.147, i8 0, i8 -10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.147 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s - Last %d, Current %d\0A\00", [38 x i8] zeroinitializer }, align 32
@edge_write.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.148, ptr @.str.6, ptr @.str.149, i8 1, i8 28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.148 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"edge_write\00", [21 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s of %d byte(s) Fifo room  %d -- will copy %d bytes\0A\00", [42 x i8] zeroinitializer }, align 32
@edge_write.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.148, ptr @.str.6, ptr @.str.150, i8 1, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.150 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s - copySize = Zero\0A\00", [42 x i8] zeroinitializer }, align 32
@edge_write.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.148, ptr @.str.6, ptr @.str.151, i8 1, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.151 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s - copy %d bytes of %d into fifo \0A\00", [59 x i8] zeroinitializer }, align 32
@edge_write.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.148, ptr @.str.6, ptr @.str.152, i8 1, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.152 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s - copy rest of data %d\0A\00", [37 x i8] zeroinitializer }, align 32
@edge_write.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.148, ptr @.str.6, ptr @.str.153, i8 1, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.153 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s wrote %d byte(s) TxCredits %d, Fifo %d\0A\00", [53 x i8] zeroinitializer }, align 32
@send_more_port_data.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.154, ptr @.str.6, ptr @.str.155, i8 1, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.154 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"send_more_port_data\00", [44 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s EXIT - fifo %d, PendingWrite = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@send_more_port_data.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.154, ptr @.str.6, ptr @.str.156, i8 1, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.156 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s Not enough credit - fifo %d TxCredit %d\0A\00", [52 x i8] zeroinitializer }, align 32
@send_more_port_data.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@send_more_port_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.154, ptr @.str.6, i32 1303, ptr @.str.22, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s - usb_submit_urb(write bulk) failed, status = %d, data lost\0A\00", [32 x i8] zeroinitializer }, align 32
@send_more_port_data._entry_ptr = internal global ptr @send_more_port_data._entry, section ".printk_index", align 4
@send_more_port_data.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.154, ptr @.str.6, ptr @.str.158, i8 1, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.158 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s wrote %d byte(s) TxCredit %d, Fifo %d\0A\00", [54 x i8] zeroinitializer }, align 32
@edge_write_room.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.159, ptr @.str.6, ptr @.str.160, i8 1, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.159 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"edge_write_room\00", [16 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - returns %u\0A\00", [47 x i8] zeroinitializer }, align 32
@edge_ioctl.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.161, ptr @.str.6, ptr @.str.162, i8 1, i8 -125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.161 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"edge_ioctl\00", [21 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s TIOCSERGETLSR\0A\00", [46 x i8] zeroinitializer }, align 32
@get_lsr_info.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.163, ptr @.str.6, ptr @.str.164, i8 1, i8 114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.163 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_lsr_info\00", [19 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s -- Empty\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@edge_set_termios.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.168, ptr @.str.6, ptr @.str.169, i8 1, i8 107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.168 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"edge_set_termios\00", [47 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s - port not opened\0A\00", [42 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.170, ptr @.str.6, ptr @.str.169, i8 2, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.170 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"change_port_settings\00", [43 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.170, ptr @.str.6, ptr @.str.171, i8 2, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.171 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - data bits = 5\0A\00", [44 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.170, ptr @.str.6, ptr @.str.172, i8 2, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.172 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - data bits = 6\0A\00", [44 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.170, ptr @.str.6, ptr @.str.173, i8 2, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.173 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - data bits = 7\0A\00", [44 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.170, ptr @.str.6, ptr @.str.174, i8 2, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.174 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - data bits = 8\0A\00", [44 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.170, ptr @.str.6, ptr @.str.175, i8 2, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.175 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - parity = mark\0A\00", [44 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.170, ptr @.str.6, ptr @.str.176, i8 2, i8 82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.176 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s - parity = space\0A\00", [43 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.170, ptr @.str.6, ptr @.str.177, i8 2, i8 83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.177 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s - parity = odd\0A\00", [45 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.170, ptr @.str.6, ptr @.str.178, i8 2, i8 84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.178 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - parity = even\0A\00", [44 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.170, ptr @.str.6, ptr @.str.179, i8 2, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.179 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - parity = none\0A\00", [44 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.170, ptr @.str.6, ptr @.str.180, i8 2, i8 86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.180 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - stop bits = 2\0A\00", [44 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.170, ptr @.str.6, ptr @.str.181, i8 2, i8 87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.181 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - stop bits = 1\0A\00", [44 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.170, ptr @.str.6, ptr @.str.182, i8 2, i8 89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.182 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s - RTS/CTS is enabled\0A\00", [39 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.170, ptr @.str.6, ptr @.str.183, i8 2, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.183 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s - RTS/CTS is disabled\0A\00", [38 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.170, ptr @.str.6, ptr @.str.184, i8 2, i8 95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.184 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s - INBOUND XON/XOFF is enabled, XON = %2x, XOFF = %2x\0A\00", [39 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.170, ptr @.str.6, ptr @.str.185, i8 2, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.185 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s - INBOUND XON/XOFF is disabled\0A\00", [61 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.170, ptr @.str.6, ptr @.str.186, i8 2, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.186 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s - OUTBOUND XON/XOFF is enabled, XON = %2x, XOFF = %2x\0A\00", [38 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.170, ptr @.str.6, ptr @.str.187, i8 2, i8 97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.187 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s - OUTBOUND XON/XOFF is disabled\0A\00", [60 x i8] zeroinitializer }, align 32
@change_port_settings.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.170, ptr @.str.6, ptr @.str.188, i8 2, i8 108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.188 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s - baud rate = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@send_cmd_write_uart_register.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.189, ptr @.str.6, ptr @.str.190, i8 2, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.189 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"send_cmd_write_uart_register\00", [35 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s - write to %s register 0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MCR\00", [28 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LCR\00", [28 x i8] zeroinitializer }, align 32
@send_cmd_write_uart_register.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.189, ptr @.str.6, ptr @.str.193, i8 2, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.193 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"SendCmdWriteUartReg - Not writing to MCR Register\0A\00", [45 x i8] zeroinitializer }, align 32
@send_cmd_write_uart_register.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.189, ptr @.str.6, ptr @.str.194, i8 2, i8 62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.194 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"SendCmdWriteUartReg - Not writing to LCR Register\0A\00", [45 x i8] zeroinitializer }, align 32
@send_cmd_write_baud_rate.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.195, ptr @.str.6, ptr @.str.196, i8 2, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.195 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"send_cmd_write_baud_rate\00", [39 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"SendCmdWriteBaudRate - NOT Setting baud rate for port, baud = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@send_cmd_write_baud_rate.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.195, ptr @.str.6, ptr @.str.197, i8 2, i8 37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.197 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s - baud = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@send_cmd_write_baud_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.195, ptr @.str.6, i32 2202, ptr @.str.22, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - bad baud rate\0A\00", [44 x i8] zeroinitializer }, align 32
@send_cmd_write_baud_rate._entry_ptr = internal global ptr @send_cmd_write_baud_rate._entry, section ".printk_index", align 4
@divisor_table = internal constant { [19 x %struct.divisor_table_entry], [40 x i8] } { [19 x %struct.divisor_table_entry] [%struct.divisor_table_entry { i32 50, i16 4608 }, %struct.divisor_table_entry { i32 75, i16 3072 }, %struct.divisor_table_entry { i32 110, i16 2095 }, %struct.divisor_table_entry { i32 134, i16 1713 }, %struct.divisor_table_entry { i32 150, i16 1536 }, %struct.divisor_table_entry { i32 300, i16 768 }, %struct.divisor_table_entry { i32 600, i16 384 }, %struct.divisor_table_entry { i32 1200, i16 192 }, %struct.divisor_table_entry { i32 1800, i16 128 }, %struct.divisor_table_entry { i32 2400, i16 96 }, %struct.divisor_table_entry { i32 4800, i16 48 }, %struct.divisor_table_entry { i32 7200, i16 32 }, %struct.divisor_table_entry { i32 9600, i16 24 }, %struct.divisor_table_entry { i32 14400, i16 16 }, %struct.divisor_table_entry { i32 19200, i16 12 }, %struct.divisor_table_entry { i32 38400, i16 6 }, %struct.divisor_table_entry { i32 57600, i16 4 }, %struct.divisor_table_entry { i32 115200, i16 2 }, %struct.divisor_table_entry { i32 230400, i16 1 }], [40 x i8] zeroinitializer }, align 32
@calc_baud_rate_divisor.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.199, ptr @.str.6, ptr @.str.200, i8 2, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.199 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"calc_baud_rate_divisor\00", [41 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s - Baud %d = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@edge_break.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.201, ptr @.str.6, ptr @.str.137, i8 1, i8 -119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.201 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"edge_break\00", [21 x i8] zeroinitializer }, align 32
@edge_break.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.201, ptr @.str.6, ptr @.str.202, i8 1, i8 -116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.202 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s - Sending IOSP_CMD_SET_BREAK\0A\00", [63 x i8] zeroinitializer }, align 32
@edge_break.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.201, ptr @.str.6, ptr @.str.203, i8 1, i8 -115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.203 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s - Sending IOSP_CMD_CLEAR_BREAK\0A\00", [61 x i8] zeroinitializer }, align 32
@edge_break.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.201, ptr @.str.6, ptr @.str.204, i8 1, i8 -113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.204 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s - error sending break set/clear command.\0A\00", [51 x i8] zeroinitializer }, align 32
@edge_chars_in_buffer.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.205, ptr @.str.6, ptr @.str.160, i8 1, i8 83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.205 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"edge_chars_in_buffer\00", [43 x i8] zeroinitializer }, align 32
@edge_throttle.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.206, ptr @.str.6, ptr @.str.169, i8 1, i8 89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.206 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"edge_throttle\00", [18 x i8] zeroinitializer }, align 32
@edge_unthrottle.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.207, ptr @.str.6, ptr @.str.169, i8 1, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.207 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"edge_unthrottle\00", [16 x i8] zeroinitializer }, align 32
@edge_interrupt_callback.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.208, ptr @.str.6, ptr @.str.209, i8 0, i8 -109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.208 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"edge_interrupt_callback\00", [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - urb shutting down with status: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@edge_interrupt_callback.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.208, ptr @.str.6, ptr @.str.210, i8 0, i8 -108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.210 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - nonzero urb status received: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@edge_interrupt_callback.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.208, ptr @.str.6, ptr @.str.211, i8 0, i8 -103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.211 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s - bytes_avail=%d, rxBytesAvail=%d, read_in_progress=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@edge_interrupt_callback.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.208, ptr @.str.6, ptr @.str.212, i8 0, i8 -102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.212 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s - posting a read\0A\00", [43 x i8] zeroinitializer }, align 32
@edge_interrupt_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.208, ptr @.str.6, i32 626, ptr @.str.22, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s - usb_submit_urb(read bulk) failed with result = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@edge_interrupt_callback._entry_ptr = internal global ptr @edge_interrupt_callback._entry, section ".printk_index", align 4
@edge_interrupt_callback.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.208, ptr @.str.6, ptr @.str.214, i8 0, i8 -94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.214 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s - txcredits for port%d = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@edge_interrupt_callback._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.208, ptr @.str.6, i32 672, ptr @.str.22, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@edge_interrupt_callback._entry_ptr.216 = internal global ptr @edge_interrupt_callback._entry.215, section ".printk_index", align 4
@edge_bulk_in_callback.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.217, ptr @.str.6, ptr @.str.218, i8 0, i8 -83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.217 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"edge_bulk_in_callback\00", [42 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s - nonzero read bulk status received: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@edge_bulk_in_callback.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.217, ptr @.str.6, ptr @.str.219, i8 0, i8 -82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.219 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - read bulk callback with no data\0A\00", [58 x i8] zeroinitializer }, align 32
@edge_bulk_in_callback.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.217, ptr @.str.6, ptr @.str.220, i8 0, i8 -78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.220 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s - Received = %d, rxBytesAvail %d\0A\00", [59 x i8] zeroinitializer }, align 32
@edge_bulk_in_callback.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.217, ptr @.str.6, ptr @.str.212, i8 0, i8 -76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@edge_bulk_in_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.217, ptr @.str.6, i32 726, ptr @.str.22, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s - usb_submit_urb(read bulk) failed, retval = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@edge_bulk_in_callback._entry_ptr = internal global ptr @edge_bulk_in_callback._entry, section ".printk_index", align 4
@process_rcvd_data.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.222, ptr @.str.6, ptr @.str.223, i8 1, i8 -107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.222 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"process_rcvd_data\00", [46 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s - stuck in loop, exiting it.\0A\00", [63 x i8] zeroinitializer }, align 32
@process_rcvd_data.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.222, ptr @.str.6, ptr @.str.224, i8 1, i8 -102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.224 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s - Hdr1=%02X Hdr2=%02X\0A\00", [38 x i8] zeroinitializer }, align 32
@process_rcvd_data.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.222, ptr @.str.6, ptr @.str.225, i8 1, i8 -92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.225 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s - Data for Port %u Len %u\0A\00", [34 x i8] zeroinitializer }, align 32
@process_rcvd_data.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.222, ptr @.str.6, ptr @.str.226, i8 1, i8 -84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.226 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s - Sending %d bytes to TTY for port %d\0A\00", [54 x i8] zeroinitializer }, align 32
@process_rcvd_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.228, ptr @.str.6, i32 1760, ptr @.str.22, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s - edge_port == NULL for port %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"process_rcvd_status\00", [44 x i8] zeroinitializer }, align 32
@process_rcvd_status._entry_ptr = internal global ptr @process_rcvd_status._entry, section ".printk_index", align 4
@process_rcvd_status.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.228, ptr @.str.6, ptr @.str.229, i8 1, i8 -70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.229 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - Port %u EXT CHASE_RSP Data = %02x\0A\00", [56 x i8] zeroinitializer }, align 32
@process_rcvd_status.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.228, ptr @.str.6, ptr @.str.230, i8 1, i8 -66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.230 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s ========== Port %u CHECK_RSP Sequence = %02x =============\0A\00", [33 x i8] zeroinitializer }, align 32
@process_rcvd_status.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.228, ptr @.str.6, ptr @.str.231, i8 1, i8 -63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.231 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s - Port %u Open Response Initial MSR = %02x TxBufferSize = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@process_rcvd_status.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.228, ptr @.str.6, ptr @.str.232, i8 1, i8 -56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.232 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s - Port %u LSR Status = %02x\0A\00", [32 x i8] zeroinitializer }, align 32
@process_rcvd_status.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.228, ptr @.str.6, ptr @.str.233, i8 1, i8 -54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.233 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s - Port %u LSR Status = %02x, Data = %02x\0A\00", [51 x i8] zeroinitializer }, align 32
@process_rcvd_status.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.228, ptr @.str.6, ptr @.str.234, i8 1, i8 -51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.234 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s - Port %u MSR Status = %02x\0A\00", [32 x i8] zeroinitializer }, align 32
@process_rcvd_status.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.228, ptr @.str.6, ptr @.str.235, i8 1, i8 -48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.235 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s - Unrecognized IOSP status code %u\0A\00", [57 x i8] zeroinitializer }, align 32
@edge_tty_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.237, ptr @.str.6, i32 1874, ptr @.str.22, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s - dropping data, %d bytes lost\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"edge_tty_recv\00", [18 x i8] zeroinitializer }, align 32
@edge_tty_recv._entry_ptr = internal global ptr @edge_tty_recv._entry, section ".printk_index", align 4
@edge_bulk_out_data_callback.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.238, ptr @.str.6, ptr @.str.135, i8 0, i8 -69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.238 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"edge_bulk_out_data_callback\00", [36 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Edgeport 4 port adapter\00", [40 x i8] zeroinitializer }, align 32
@edgeport_4port_id_table = internal constant { [11 x %struct.usb_device_id], [88 x i8] } { [11 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 5640, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 5123, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 6, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 14, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 17, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 26, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 25, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 19, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [88 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"edgeport_4\00", [21 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Edgeport 8 port adapter\00", [40 x i8] zeroinitializer }, align 32
@edgeport_8port_id_table = internal constant { [7 x %struct.usb_device_id], [56 x i8] } { [7 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 5640, i16 15, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 18, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 20, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5640, i16 24, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"edgeport_8\00", [21 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"EPiC device\00", [20 x i8] zeroinitializer }, align 32
@Epic_port_id_table = internal constant { [9 x %struct.usb_device_id], [40 x i8] } { [9 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1028, i16 514, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1028, i16 515, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1028, i16 784, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1028, i16 785, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1028, i16 786, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1497, i16 -22696, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1497, i16 -22636, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1497, i16 -24027, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"epic\00", [27 x i8] zeroinitializer }, align 32
@switch.table.edge_startup = internal constant { [20 x i32], [48 x i8] } { [20 x i32] [i32 1073741824, i32 1073741824, i32 1073741824, i32 1073741824, i32 1073741824, i32 536870912, i32 805306368, i32 1073741824, i32 1073741824, i32 1073741824, i32 1073741824, i32 1073741824, i32 1073741824, i32 1073741824, i32 1073741824, i32 1073741824, i32 1073741824, i32 1073741824, i32 1073741824, i32 536870912], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.245 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 254, i64 255]
@__sancov_gen_cov_switch_values.246 = internal global [4 x i64] [i64 2, i64 8, i64 254, i64 255]
@__sancov_gen_cov_switch_values.247 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.248 = internal global [21 x i64] [i64 19, i64 32, i64 50, i64 75, i64 110, i64 134, i64 150, i64 300, i64 600, i64 1200, i64 1800, i64 2400, i64 4800, i64 7200, i64 9600, i64 14400, i64 19200, i64 38400, i64 57600, i64 115200, i64 230400]
@__sancov_gen_cov_switch_values.249 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.250 = internal global [4 x i64] [i64 2, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.251 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.252 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 8]
@___asan_gen_.253 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 3116, i32 41 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 3121, i32 1 }
@___asan_gen_.259 = private unnamed_addr constant [18 x i8] c"id_table_combined\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 102, i32 35 }
@___asan_gen_.262 = private unnamed_addr constant [22 x i8] c"edgeport_2port_device\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2976, i32 33 }
@___asan_gen_.265 = private unnamed_addr constant [22 x i8] c"edgeport_4port_device\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 3011, i32 33 }
@___asan_gen_.268 = private unnamed_addr constant [22 x i8] c"edgeport_8port_device\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 3046, i32 33 }
@___asan_gen_.271 = private unnamed_addr constant [12 x i8] c"epic_device\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 3081, i32 33 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2981, i32 18 }
@___asan_gen_.277 = private unnamed_addr constant [24 x i8] c"edgeport_2port_id_table\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 56, i32 35 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2979, i32 12 }
@___asan_gen_.283 = private unnamed_addr constant [11 x i8] c"descriptor\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2707, i32 21 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2718, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2731, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2752, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2758, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2765, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2770, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2776, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2803, i32 5 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2840, i32 5 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2873, i32 5 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2883, i32 5 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2895, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 527, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 528, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 529, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 530, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 531, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 532, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 533, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 534, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 535, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 536, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 537, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 538, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 539, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 540, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 544, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 398, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 399, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 400, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 401, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 402, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 403, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 404, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 405, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 406, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 407, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 408, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 409, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 410, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 418, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 422, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 424, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2525, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2534, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2538, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2539, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2541, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2543, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2545, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2547, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2549, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2556, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2560, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2564, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2565, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2567, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2569, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2585, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2594, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2597, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2598, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2600, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2602, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2604, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2606, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2608, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2610, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2633, i32 14 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2634, i32 14 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2638, i32 14 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2639, i32 14 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2643, i32 4 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2653, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2661, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2676, i32 4 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2684, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant [24 x i8] c"../include/linux/ihex.h\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 76, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1965, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 324, i32 13 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 327, i32 13 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 336, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 355, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 362, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 368, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 379, i32 5 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 387, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2960, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 871, i32 4 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 877, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 878, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 879, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 893, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 904, i32 3 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 930, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant [8 x i8] c"CmdUrbs\00", align 1
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 263, i32 17 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2140, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2153, i32 3 }
@___asan_gen_.695 = private unnamed_addr constant [30 x i8] c"../include/linux/usb/serial.h\00", align 1
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 393, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 776, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 787, i32 3 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1071, i32 3 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1083, i32 3 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1019, i32 4 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1029, i32 3 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1035, i32 5 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 961, i32 4 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 965, i32 5 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 981, i32 5 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 986, i32 4 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1135, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1141, i32 3 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1154, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1172, i32 3 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1189, i32 2 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1228, i32 3 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1241, i32 3 }
@___asan_gen_.769 = private unnamed_addr constant [33 x i8] c"send_more_port_data.__print_once\00", align 1
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1301, i32 3 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1310, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1335, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1551, i32 3 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1480, i32 3 }
@___asan_gen_.798 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 174, i32 2 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1452, i32 3 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2345, i32 3 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2354, i32 3 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2358, i32 3 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2362, i32 3 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2367, i32 3 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2376, i32 5 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2379, i32 5 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2383, i32 4 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2386, i32 4 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2389, i32 3 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2394, i32 3 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2397, i32 3 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2405, i32 3 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2407, i32 3 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2427, i32 4 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2430, i32 4 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2436, i32 4 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2439, i32 4 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2480, i32 2 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2283, i32 2 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2289, i32 3 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2296, i32 3 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2193, i32 3 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2198, i32 2 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2202, i32 3 }
@___asan_gen_.896 = private unnamed_addr constant [14 x i8] c"divisor_table\00", align 1
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 240, i32 41 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 2260, i32 3 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1574, i32 3 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1587, i32 4 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1591, i32 4 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1596, i32 4 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1358, i32 3 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1380, i32 3 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1418, i32 3 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 591, i32 3 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 594, i32 3 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 609, i32 5 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 617, i32 6 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 624, i32 7 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 649, i32 6 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 670, i32 3 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 692, i32 3 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 699, i32 3 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 714, i32 2 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 724, i32 4 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1621, i32 4 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1642, i32 4 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1680, i32 4 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1710, i32 6 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1758, i32 3 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1770, i32 4 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1786, i32 4 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1796, i32 3 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1826, i32 3 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1832, i32 3 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1845, i32 3 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1856, i32 3 }
@___asan_gen_.1016 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 1873, i32 3 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 748, i32 3 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 3016, i32 18 }
@___asan_gen_.1031 = private unnamed_addr constant [24 x i8] c"edgeport_4port_id_table\00", align 1
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 65, i32 35 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 3014, i32 12 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 3051, i32 18 }
@___asan_gen_.1040 = private unnamed_addr constant [24 x i8] c"edgeport_8port_id_table\00", align 1
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 79, i32 35 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 3049, i32 12 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 3086, i32 18 }
@___asan_gen_.1049 = private unnamed_addr constant [19 x i8] c"Epic_port_id_table\00", align 1
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 89, i32 35 }
@___asan_gen_.1052 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1053 = private constant [36 x i8] c"../drivers/usb/serial/io_edgeport.c\00", align 1
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1053, i32 3084, i32 12 }
@___asan_gen_.1055 = private unnamed_addr constant [26 x i8] c"switch.table.edge_startup\00", align 1
@llvm.compiler.used = appending global [302 x ptr] [ptr @__UNIQUE_ID_author395, ptr @__UNIQUE_ID_description396, ptr @__UNIQUE_ID_file397, ptr @__UNIQUE_ID_firmware399, ptr @__UNIQUE_ID_firmware400, ptr @__UNIQUE_ID_firmware401, ptr @__UNIQUE_ID_firmware402, ptr @__UNIQUE_ID_license398, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_io_edgeport__394_3121_usb_serial_module_init6, ptr @edge_bulk_in_callback._entry, ptr @edge_bulk_in_callback._entry_ptr, ptr @edge_interrupt_callback._entry, ptr @edge_interrupt_callback._entry.215, ptr @edge_interrupt_callback._entry_ptr, ptr @edge_interrupt_callback._entry_ptr.216, ptr @edge_open._entry, ptr @edge_open._entry.123, ptr @edge_open._entry_ptr, ptr @edge_open._entry_ptr.125, ptr @edge_startup._entry, ptr @edge_startup._entry.20, ptr @edge_startup._entry.24, ptr @edge_startup._entry.9, ptr @edge_startup._entry_ptr, ptr @edge_startup._entry_ptr.12, ptr @edge_startup._entry_ptr.23, ptr @edge_startup._entry_ptr.26, ptr @edge_tty_recv._entry, ptr @edge_tty_recv._entry_ptr, ptr @get_boot_desc._entry, ptr @get_boot_desc._entry_ptr, ptr @get_epic_descriptor._entry, ptr @get_epic_descriptor._entry_ptr, ptr @get_manufacturing_desc._entry, ptr @get_manufacturing_desc._entry_ptr, ptr @load_application_firmware._entry, ptr @load_application_firmware._entry.97, ptr @load_application_firmware._entry_ptr, ptr @load_application_firmware._entry_ptr.99, ptr @process_rcvd_status._entry, ptr @process_rcvd_status._entry_ptr, ptr @request_ihex_firmware._entry, ptr @request_ihex_firmware._entry_ptr, ptr @send_cmd_write_baud_rate._entry, ptr @send_cmd_write_baud_rate._entry_ptr, ptr @send_more_port_data._entry, ptr @send_more_port_data._entry_ptr, ptr @update_edgeport_E2PROM._entry, ptr @update_edgeport_E2PROM._entry.112, ptr @update_edgeport_E2PROM._entry_ptr, ptr @update_edgeport_E2PROM._entry_ptr.114, ptr @usb_serial_module_exit, ptr @write_cmd_usb._entry, ptr @write_cmd_usb._entry_ptr, ptr @serial_drivers, ptr @.str, ptr @id_table_combined, ptr @edgeport_2port_device, ptr @edgeport_4port_device, ptr @edgeport_8port_device, ptr @epic_device, ptr @.str.1, ptr @edgeport_2port_id_table, ptr @.str.2, ptr @edge_startup.descriptor, ptr @edge_startup.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.115, ptr @edge_port_probe.__key, ptr @.str.116, ptr @.str.117, ptr @edge_open.__key, ptr @.str.118, ptr @edge_open.__key.119, ptr @.str.120, ptr @edge_open.__key.121, ptr @.str.122, ptr @.str.124, ptr @.str.126, ptr @.str.127, ptr @CmdUrbs, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @send_more_port_data.__print_once, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @divisor_table, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @edgeport_4port_id_table, ptr @.str.240, ptr @.str.241, ptr @edgeport_8port_id_table, ptr @.str.242, ptr @.str.243, ptr @Epic_port_id_table, ptr @.str.244, ptr @switch.table.edge_startup], section "llvm.metadata"
@0 = internal global [269 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table_combined to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edgeport_2port_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edgeport_4port_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edgeport_8port_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epic_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edgeport_2port_id_table to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_startup.descriptor to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_startup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_startup._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_startup._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_startup._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_epic_descriptor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_manufacturing_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_boot_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_application_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_application_firmware._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_ihex_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_edgeport_E2PROM._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_edgeport_E2PROM._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_port_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_open.__key.119 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_open.__key.121 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_open._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CmdUrbs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_cmd_usb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_more_port_data.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_more_port_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_cmd_write_baud_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @divisor_table to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_interrupt_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_interrupt_callback._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_bulk_in_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_rcvd_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edge_tty_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edgeport_4port_id_table to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edgeport_8port_id_table to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Epic_port_id_table to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.edge_startup to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_serial_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_serial_register_drivers(ptr noundef nonnull @serial_drivers, ptr noundef nonnull @.str, ptr noundef nonnull @id_table_combined) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_serial_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_serial_deregister_drivers(ptr noundef nonnull @serial_drivers) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_deregister_drivers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_register_drivers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edge_startup(ptr noundef %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial, align 4
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1252) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup255_crit_edge, label %do.body

entry.cleanup255_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup255

do.body:                                          ; preds = %entry
  %es_lock = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %es_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @edge_startup.__key, i16 noundef signext 3) #11
  %serial5 = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 24
  %3 = ptrtoint ptr %serial5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %serial, ptr %serial5, align 8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %private.i, align 4
  %iManufacturer = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 10
  %5 = ptrtoint ptr %iManufacturer to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %iManufacturer, align 2
  %conv = zext i8 %6 to i32
  %call6 = tail call i32 @usb_string(ptr noundef %1, i32 noundef %conv, ptr noundef nonnull %call7.i.i, i32 noundef 65) #11
  %7 = tail call i32 @llvm.smax.i32(i32 %call6, i32 0)
  %inc = add nuw i32 %7, 1
  %arrayidx11 = getelementptr [66 x i8], ptr %call7.i.i, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 32, ptr %arrayidx11, align 1
  %iProduct = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 11
  %9 = ptrtoint ptr %iProduct to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %iProduct, align 1
  %conv13 = zext i8 %10 to i32
  %arrayidx15 = getelementptr [66 x i8], ptr %call7.i.i, i32 0, i32 %inc
  %sub = sub nsw i32 65, %7
  %call16 = tail call i32 @usb_string(ptr noundef %1, i32 noundef %conv13, ptr noundef %arrayidx15, i32 noundef %sub) #11
  %11 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %serial, align 4
  %dev21 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev21, ptr noundef nonnull @.str.4, ptr noundef nonnull %call7.i.i) #15
  %call23 = tail call fastcc i32 @get_epic_descriptor(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then26, label %do.body.if.end27_crit_edge

do.body.if.end27_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then26:                                        ; preds = %do.body
  %Supports = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 4, i32 9
  %13 = call ptr @memcpy(ptr %Supports, ptr @edge_startup.descriptor, i32 12)
  tail call fastcc void @get_manufacturing_desc(ptr noundef nonnull %call7.i.i)
  tail call fastcc void @get_boot_desc(ptr noundef nonnull %call7.i.i)
  %product_info1.i = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 3
  %14 = call ptr @memset(ptr %product_info1.i, i32 0, i32 40)
  %15 = ptrtoint ptr %serial5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %serial5, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %idProduct.i = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 16, i32 8
  %19 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %idProduct.i, align 2
  %21 = and i16 %20, -8193
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #11
  %23 = ptrtoint ptr %product_info1.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %product_info1.i, align 4
  %NumPorts.i = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 1, i32 10
  %24 = ptrtoint ptr %NumPorts.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %NumPorts.i, align 2
  %NumPorts3.i = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %NumPorts3.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %NumPorts3.i, align 2
  %ProdInfoVer.i = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 3, i32 2
  %27 = ptrtoint ptr %ProdInfoVer.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %ProdInfoVer.i, align 1
  %RomSize.i = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 1, i32 6
  %28 = ptrtoint ptr %RomSize.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %RomSize.i, align 2
  %RomSize5.i = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 3, i32 4
  %30 = ptrtoint ptr %RomSize5.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %RomSize5.i, align 4
  %RamSize.i = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 1, i32 7
  %31 = ptrtoint ptr %RamSize.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %RamSize.i, align 1
  %RamSize7.i = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 3, i32 5
  %33 = ptrtoint ptr %RamSize7.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %RamSize7.i, align 1
  %CpuRev.i = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 1, i32 8
  %34 = ptrtoint ptr %CpuRev.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %CpuRev.i, align 8
  %CpuRev9.i = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 3, i32 6
  %36 = ptrtoint ptr %CpuRev9.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %CpuRev9.i, align 2
  %BoardRev.i = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 1, i32 9
  %37 = ptrtoint ptr %BoardRev.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %BoardRev.i, align 1
  %BoardRev11.i = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 3, i32 7
  %39 = ptrtoint ptr %BoardRev11.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %BoardRev11.i, align 1
  %MajorVersion.i = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 2, i32 5
  %40 = ptrtoint ptr %MajorVersion.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %MajorVersion.i, align 8
  %BootMajorVersion.i = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 3, i32 8
  %42 = ptrtoint ptr %BootMajorVersion.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %BootMajorVersion.i, align 8
  %MinorVersion.i = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 2, i32 6
  %43 = ptrtoint ptr %MinorVersion.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %MinorVersion.i, align 1
  %BootMinorVersion.i = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 3, i32 9
  %45 = ptrtoint ptr %BootMinorVersion.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %BootMinorVersion.i, align 1
  %BuildNumber.i = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 2, i32 7
  %46 = ptrtoint ptr %BuildNumber.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %BuildNumber.i, align 2
  %BootBuildNumber.i = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 3, i32 10
  %48 = ptrtoint ptr %BootBuildNumber.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %BootBuildNumber.i, align 2
  %ManufactureDescDate.i = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 3, i32 14
  %DescDate.i = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 1, i32 11
  %49 = call ptr @memcpy(ptr %ManufactureDescDate.i, ptr %DescDate.i, i32 3)
  %50 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %16, align 4
  %idProduct19.i = getelementptr inbounds %struct.usb_device, ptr %51, i32 0, i32 16, i32 8
  %52 = ptrtoint ptr %idProduct19.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %idProduct19.i, align 2
  %54 = and i16 %53, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool.not.i = icmp eq i16 %54, 0
  %spec.select.i = select i1 %tobool.not.i, i8 -1, i8 -2
  %55 = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 3, i32 16
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %spec.select.i, ptr %55, align 4
  %trunc.i = trunc i16 %22 to i8
  %switch.tableidx = add i8 %trunc.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %switch.tableidx)
  %57 = icmp ult i8 %switch.tableidx, 20
  br i1 %57, label %switch.hole_check, label %if.then26.get_product_info.exit_crit_edge

if.then26.get_product_info.exit_crit_edge:        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_product_info.exit

switch.hole_check:                                ; preds = %if.then26
  %switch.maskindex = zext i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 1046649, %switch.maskindex
  %58 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %switch.lobit.not = icmp eq i32 %58, 0
  br i1 %switch.lobit.not, label %switch.hole_check.get_product_info.exit_crit_edge, label %switch.lookup

switch.hole_check.get_product_info.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_product_info.exit

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  %59 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [20 x i32], ptr @switch.table.edge_startup, i32 0, i32 %59
  %60 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %60)
  %switch.load = load i32, ptr %switch.gep, align 4
  %IsRS232.i = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 3, i32 3
  %61 = ptrtoint ptr %IsRS232.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %bf.load37.i = load i32, ptr %IsRS232.i, align 8
  %bf.set39.i = or i32 %bf.load37.i, %switch.load
  store i32 %bf.set39.i, ptr %IsRS232.i, align 8
  br label %get_product_info.exit

get_product_info.exit:                            ; preds = %switch.lookup, %switch.hole_check.get_product_info.exit_crit_edge, %if.then26.get_product_info.exit_crit_edge
  tail call fastcc void @dump_product_info(ptr noundef nonnull %call7.i.i, ptr noundef %product_info1.i) #11
  br label %if.end27

if.end27:                                         ; preds = %get_product_info.exit, %do.body.if.end27_crit_edge
  %is_epic = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 5
  %62 = ptrtoint ptr %is_epic to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %is_epic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool28.not = icmp eq i32 %63, 0
  br i1 %tobool28.not, label %land.lhs.true, label %if.end27.do.body43_crit_edge

if.end27.do.body43_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body43

land.lhs.true:                                    ; preds = %if.end27
  %NumPorts = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 3, i32 1
  %64 = ptrtoint ptr %NumPorts to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %NumPorts, align 2
  %num_ports = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 6
  %66 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %num_ports, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %65, i8 %67)
  %cmp31.not = icmp eq i8 %65, %67
  br i1 %cmp31.not, label %land.lhs.true.do.body43_crit_edge, label %do.end36

land.lhs.true.do.body43_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body43

do.end36:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %conv30 = zext i8 %67 to i32
  %conv29 = zext i8 %65 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.10, i32 noundef %conv29, i32 noundef %conv30) #15
  br label %do.body43

do.body43:                                        ; preds = %do.end36, %land.lhs.true.do.body43_crit_edge, %if.end27.do.body43_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_startup.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_startup, %if.then48)) #11
          to label %do.end51 [label %if.then48], !srcloc !678

if.then48:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %68 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_startup.__UNIQUE_ID_ddebug387, ptr noundef %dev2, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5, i32 noundef %68) #11
  br label %do.end51

do.end51:                                         ; preds = %if.then48, %do.body43
  %69 = ptrtoint ptr %is_epic to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %is_epic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool53.not = icmp eq i32 %70, 0
  br i1 %tobool53.not, label %if.then54, label %do.end51.do.body88_crit_edge

do.end51.do.body88_crit_edge:                     ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body88

if.then54:                                        ; preds = %do.end51
  tail call fastcc void @load_application_firmware(ptr noundef nonnull %call7.i.i)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_startup.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_startup, %if.then67)) #11
          to label %do.end70 [label %if.then67], !srcloc !678

if.then67:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %71 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_startup.__UNIQUE_ID_ddebug388, ptr noundef %dev2, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, i32 noundef %71) #11
  br label %do.end70

do.end70:                                         ; preds = %if.then67, %if.then54
  tail call fastcc void @update_edgeport_E2PROM(ptr noundef nonnull %call7.i.i)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_startup.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_startup, %if.then83)) #11
          to label %do.body88 [label %if.then83], !srcloc !678

if.then83:                                        ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %72 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_startup.__UNIQUE_ID_ddebug389, ptr noundef %dev2, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.5, i32 noundef %72) #11
  br label %do.body88

do.body88:                                        ; preds = %if.then83, %do.end70, %do.end51.do.body88_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_startup.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_startup, %if.then100)) #11
          to label %do.end109 [label %if.then100], !srcloc !678

if.then100:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #13
  %FirmwareMajorVersion = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 3, i32 11
  %73 = ptrtoint ptr %FirmwareMajorVersion to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %FirmwareMajorVersion, align 4
  %conv102 = zext i8 %74 to i32
  %FirmwareMinorVersion = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 3, i32 12
  %75 = ptrtoint ptr %FirmwareMinorVersion to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %FirmwareMinorVersion, align 1
  %conv104 = zext i8 %76 to i32
  %FirmwareBuildNumber = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 3, i32 13
  %77 = ptrtoint ptr %FirmwareBuildNumber to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %FirmwareBuildNumber, align 2
  %79 = tail call i16 @llvm.bswap.i16(i16 %78)
  %conv106 = zext i16 %79 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_startup.__UNIQUE_ID_ddebug390, ptr noundef %dev2, ptr noundef nonnull @.str.16, i32 noundef %conv102, i32 noundef %conv104, i32 noundef %conv106) #11
  br label %do.end109

do.end109:                                        ; preds = %if.then100, %do.body88
  %80 = ptrtoint ptr %is_epic to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %is_epic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool111.not = icmp eq i32 %81, 0
  br i1 %tobool111.not, label %do.end109.cleanup255_crit_edge, label %if.then112

do.end109.cleanup255_crit_edge:                   ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup255

if.then112:                                       ; preds = %do.end109
  %interface = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %82 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %interface, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %85, i32 0, i32 4
  %86 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp114494.not = icmp eq i8 %87, 0
  br i1 %cmp114494.not, label %if.then112.do.end236_crit_edge, label %for.body.lr.ph

if.then112.do.end236_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end236

for.body.lr.ph:                                   ; preds = %if.then112
  %endpoint116 = getelementptr inbounds %struct.usb_host_interface, ptr %85, i32 0, i32 3
  %interrupt_read_urb = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 8
  %interrupt_in_buffer = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 7
  %interrupt_in_endpoint = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 6
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 4
  %read_urb = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 11
  %bulk_in_buffer = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 10
  %bulk_in_endpoint = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 9
  %bulk_out_endpoint = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0502 = phi i32 [ 0, %for.body.lr.ph ], [ %inc224, %for.inc.for.body_crit_edge ]
  %interrupt_in_found.0.off0501 = phi i1 [ false, %for.body.lr.ph ], [ %interrupt_in_found.1.off0, %for.inc.for.body_crit_edge ]
  %bulk_in_found.0.off0498 = phi i1 [ false, %for.body.lr.ph ], [ %bulk_in_found.1.off0, %for.inc.for.body_crit_edge ]
  %bulk_out_found.0.off0495 = phi i1 [ false, %for.body.lr.ph ], [ %bulk_out_found.2.off0.ph, %for.inc.for.body_crit_edge ]
  %88 = ptrtoint ptr %endpoint116 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %endpoint116, align 4
  %arrayidx117 = getelementptr %struct.usb_host_endpoint, ptr %89, i32 %i.0502
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx117, i32 0, i32 4
  %90 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %91 = load i16, ptr %wMaxPacketSize.i, align 1
  %92 = and i16 %91, -249
  %93 = tail call i16 @llvm.bswap.i16(i16 %92) #11
  %and.i = zext i16 %93 to i32
  br i1 %interrupt_in_found.0.off0501, label %for.body.if.end158_crit_edge, label %land.lhs.true121

for.body.if.end158_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end158

land.lhs.true121:                                 ; preds = %for.body
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx117, i32 0, i32 3
  %94 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %bmAttributes.i.i, align 1
  %96 = and i8 %95, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %96)
  %cmp.i.not.i = icmp eq i8 %96, 3
  br i1 %cmp.i.not.i, label %usb_endpoint_is_int_in.exit, label %land.lhs.true121.if.end158_crit_edge

land.lhs.true121.if.end158_crit_edge:             ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end158

usb_endpoint_is_int_in.exit:                      ; preds = %land.lhs.true121
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx117, i32 0, i32 2
  %97 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %98)
  %tobool123.not = icmp sgt i8 %98, -1
  br i1 %tobool123.not, label %usb_endpoint_is_int_in.exit.if.end158_crit_edge, label %do.body125

usb_endpoint_is_int_in.exit.if.end158_crit_edge:  ; preds = %usb_endpoint_is_int_in.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end158

do.body125:                                       ; preds = %usb_endpoint_is_int_in.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_startup.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_startup, %if.then137)) #11
          to label %do.end140 [label %if.then137], !srcloc !678

if.then137:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_startup.__UNIQUE_ID_ddebug391, ptr noundef %dev2, ptr noundef nonnull @.str.17) #11
  br label %do.end140

do.end140:                                        ; preds = %if.then137, %do.body125
  %call141 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %99 = ptrtoint ptr %interrupt_read_urb to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call141, ptr %interrupt_read_urb, align 8
  %tobool143.not = icmp eq ptr %call141, null
  br i1 %tobool143.not, label %do.end140.error_crit_edge, label %if.end8.i

do.end140.error_crit_edge:                        ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end8.i:                                        ; preds = %do.end140
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %and.i, i32 noundef 3264) #16
  %100 = ptrtoint ptr %interrupt_in_buffer to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call9.i, ptr %interrupt_in_buffer, align 4
  %tobool148.not = icmp eq ptr %call9.i, null
  br i1 %tobool148.not, label %if.end8.i.error_crit_edge, label %if.end150

if.end8.i.error_crit_edge:                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end150:                                        ; preds = %if.end8.i
  %101 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %bEndpointAddress.i.i, align 1
  %103 = ptrtoint ptr %interrupt_in_endpoint to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %interrupt_in_endpoint, align 8
  %104 = ptrtoint ptr %interrupt_read_urb to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %interrupt_read_urb, align 8
  %106 = load i8, ptr %bEndpointAddress.i.i, align 1
  %conv153 = zext i8 %106 to i32
  %107 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %1, align 8
  %shl.i = shl i32 %108, 8
  %shl1.i = shl nuw nsw i32 %conv153, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or155 = or i32 %or.i, 1073741952
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx117, i32 0, i32 5
  %109 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %bInterval, align 1
  %conv157 = zext i8 %110 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %105, i32 0, i32 8
  %111 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %1, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %105, i32 0, i32 10
  %112 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %or155, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %105, i32 0, i32 14
  %113 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call9.i, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %105, i32 0, i32 19
  %114 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %and.i, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %105, i32 0, i32 28
  %115 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @edge_interrupt_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %105, i32 0, i32 27
  %116 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %117 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %118)
  %cmp.i436 = icmp eq i32 %118, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %118)
  %cmp6.i = icmp ugt i32 %118, 4
  %or.cond.i = or i1 %cmp.i436, %cmp6.i
  br i1 %or.cond.i, label %if.then.i438, label %if.end150.usb_fill_int_urb.exit_crit_edge

if.end150.usb_fill_int_urb.exit_crit_edge:        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #13
  br label %usb_fill_int_urb.exit

if.then.i438:                                     ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #13
  %119 = tail call i32 @llvm.smax.i32(i32 %conv157, i32 1) #11
  %120 = tail call i32 @llvm.umin.i32(i32 %119, i32 16) #11
  %sub.i = add nsw i32 %120, -1
  %shl.i437 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i438, %if.end150.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i437, %if.then.i438 ], [ %conv157, %if.end150.usb_fill_int_urb.exit_crit_edge ]
  %121 = getelementptr inbounds %struct.urb, ptr %105, i32 0, i32 25
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %interval.sink.i, ptr %121, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %105, i32 0, i32 23
  %123 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 -1, ptr %start_frame.i, align 4
  br label %if.end158

if.end158:                                        ; preds = %usb_fill_int_urb.exit, %usb_endpoint_is_int_in.exit.if.end158_crit_edge, %land.lhs.true121.if.end158_crit_edge, %for.body.if.end158_crit_edge
  %interrupt_in_found.1.off0 = phi i1 [ true, %for.body.if.end158_crit_edge ], [ true, %usb_fill_int_urb.exit ], [ false, %usb_endpoint_is_int_in.exit.if.end158_crit_edge ], [ false, %land.lhs.true121.if.end158_crit_edge ]
  br i1 %bulk_in_found.0.off0498, label %if.end158.if.end199_crit_edge, label %land.lhs.true160

if.end158.if.end199_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end199

land.lhs.true160:                                 ; preds = %if.end158
  %bmAttributes.i.i440 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx117, i32 0, i32 3
  %124 = ptrtoint ptr %bmAttributes.i.i440 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %bmAttributes.i.i440, align 1
  %126 = and i8 %125, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %126)
  %cmp.i.not.i441 = icmp eq i8 %126, 2
  br i1 %cmp.i.not.i441, label %usb_endpoint_is_bulk_in.exit, label %land.lhs.true160.if.end199_crit_edge

land.lhs.true160.if.end199_crit_edge:             ; preds = %land.lhs.true160
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end199

usb_endpoint_is_bulk_in.exit:                     ; preds = %land.lhs.true160
  %bEndpointAddress.i.i442 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx117, i32 0, i32 2
  %127 = ptrtoint ptr %bEndpointAddress.i.i442 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %bEndpointAddress.i.i442, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %128)
  %tobool162.not = icmp sgt i8 %128, -1
  br i1 %tobool162.not, label %usb_endpoint_is_bulk_in.exit.if.end199_crit_edge, label %do.body164

usb_endpoint_is_bulk_in.exit.if.end199_crit_edge: ; preds = %usb_endpoint_is_bulk_in.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end199

do.body164:                                       ; preds = %usb_endpoint_is_bulk_in.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_startup.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_startup, %if.then176)) #11
          to label %do.end179 [label %if.then176], !srcloc !678

if.then176:                                       ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_startup.__UNIQUE_ID_ddebug392, ptr noundef %dev2, ptr noundef nonnull @.str.18) #11
  br label %do.end179

do.end179:                                        ; preds = %if.then176, %do.body164
  %call180 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %129 = ptrtoint ptr %read_urb to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call180, ptr %read_urb, align 4
  %tobool182.not = icmp eq ptr %call180, null
  br i1 %tobool182.not, label %do.end179.error_crit_edge, label %if.end8.i429

do.end179.error_crit_edge:                        ; preds = %do.end179
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end8.i429:                                     ; preds = %do.end179
  %call9.i428 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %and.i, i32 noundef 3264) #16
  %130 = ptrtoint ptr %bulk_in_buffer to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call9.i428, ptr %bulk_in_buffer, align 8
  %tobool187.not = icmp eq ptr %call9.i428, null
  br i1 %tobool187.not, label %if.end8.i429.error_crit_edge, label %if.end189

if.end8.i429.error_crit_edge:                     ; preds = %if.end8.i429
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end189:                                        ; preds = %if.end8.i429
  call void @__sanitizer_cov_trace_pc() #13
  %131 = ptrtoint ptr %bEndpointAddress.i.i442 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %bEndpointAddress.i.i442, align 1
  %133 = ptrtoint ptr %bulk_in_endpoint to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %132, ptr %bulk_in_endpoint, align 4
  %134 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %read_urb, align 4
  %136 = load i8, ptr %bEndpointAddress.i.i442, align 1
  %conv193 = zext i8 %136 to i32
  %137 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %1, align 8
  %shl.i445 = shl i32 %138, 8
  %shl1.i446 = shl nuw nsw i32 %conv193, 15
  %or.i447 = or i32 %shl1.i446, %shl.i445
  %or196 = or i32 %or.i447, -1073741696
  %139 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %139, i32 2)
  %140 = load i16, ptr %wMaxPacketSize.i, align 1
  %141 = and i16 %140, -249
  %142 = tail call i16 @llvm.bswap.i16(i16 %141) #11
  %and.i449 = zext i16 %142 to i32
  %dev1.i450 = getelementptr inbounds %struct.urb, ptr %135, i32 0, i32 8
  %143 = ptrtoint ptr %dev1.i450 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %1, ptr %dev1.i450, align 4
  %pipe2.i451 = getelementptr inbounds %struct.urb, ptr %135, i32 0, i32 10
  %144 = ptrtoint ptr %pipe2.i451 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %or196, ptr %pipe2.i451, align 4
  %transfer_buffer3.i452 = getelementptr inbounds %struct.urb, ptr %135, i32 0, i32 14
  %145 = ptrtoint ptr %transfer_buffer3.i452 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call9.i428, ptr %transfer_buffer3.i452, align 4
  %transfer_buffer_length.i453 = getelementptr inbounds %struct.urb, ptr %135, i32 0, i32 19
  %146 = ptrtoint ptr %transfer_buffer_length.i453 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %and.i449, ptr %transfer_buffer_length.i453, align 4
  %complete.i454 = getelementptr inbounds %struct.urb, ptr %135, i32 0, i32 28
  %147 = ptrtoint ptr %complete.i454 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @edge_bulk_in_callback, ptr %complete.i454, align 4
  %context4.i455 = getelementptr inbounds %struct.urb, ptr %135, i32 0, i32 27
  %148 = ptrtoint ptr %context4.i455 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %call7.i.i, ptr %context4.i455, align 4
  br label %if.end199

if.end199:                                        ; preds = %if.end189, %usb_endpoint_is_bulk_in.exit.if.end199_crit_edge, %land.lhs.true160.if.end199_crit_edge, %if.end158.if.end199_crit_edge
  %bulk_in_found.1.off0 = phi i1 [ true, %if.end158.if.end199_crit_edge ], [ true, %if.end189 ], [ false, %usb_endpoint_is_bulk_in.exit.if.end199_crit_edge ], [ false, %land.lhs.true160.if.end199_crit_edge ]
  br i1 %bulk_out_found.0.off0495, label %if.end199.for.inc_crit_edge, label %land.lhs.true201

if.end199.for.inc_crit_edge:                      ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true201:                                 ; preds = %if.end199
  %bmAttributes.i.i456 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx117, i32 0, i32 3
  %149 = ptrtoint ptr %bmAttributes.i.i456 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %bmAttributes.i.i456, align 1
  %151 = and i8 %150, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %151)
  %cmp.i.not.i457 = icmp eq i8 %151, 2
  br i1 %cmp.i.not.i457, label %usb_endpoint_is_bulk_out.exit, label %land.lhs.true201.for.inc_crit_edge

land.lhs.true201.for.inc_crit_edge:               ; preds = %land.lhs.true201
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

usb_endpoint_is_bulk_out.exit:                    ; preds = %land.lhs.true201
  %bEndpointAddress.i.i458 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx117, i32 0, i32 2
  %152 = ptrtoint ptr %bEndpointAddress.i.i458 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %bEndpointAddress.i.i458, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool203.not = icmp slt i8 %153, 0
  br i1 %tobool203.not, label %usb_endpoint_is_bulk_out.exit.for.inc_crit_edge, label %do.body205

usb_endpoint_is_bulk_out.exit.for.inc_crit_edge:  ; preds = %usb_endpoint_is_bulk_out.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body205:                                       ; preds = %usb_endpoint_is_bulk_out.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_startup.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_startup, %if.then217)) #11
          to label %do.end220 [label %if.then217], !srcloc !678

if.then217:                                       ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_startup.__UNIQUE_ID_ddebug393, ptr noundef %dev2, ptr noundef nonnull @.str.19) #11
  br label %do.end220

do.end220:                                        ; preds = %if.then217, %do.body205
  %154 = ptrtoint ptr %bEndpointAddress.i.i458 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %bEndpointAddress.i.i458, align 1
  %156 = ptrtoint ptr %bulk_out_endpoint to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %155, ptr %bulk_out_endpoint, align 8
  br label %for.inc

for.inc:                                          ; preds = %do.end220, %usb_endpoint_is_bulk_out.exit.for.inc_crit_edge, %land.lhs.true201.for.inc_crit_edge, %if.end199.for.inc_crit_edge
  %bulk_out_found.2.off0.ph = phi i1 [ false, %usb_endpoint_is_bulk_out.exit.for.inc_crit_edge ], [ true, %do.end220 ], [ true, %if.end199.for.inc_crit_edge ], [ false, %land.lhs.true201.for.inc_crit_edge ]
  %inc224 = add nuw nsw i32 %i.0502, 1
  %157 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %bNumEndpoints, align 4
  %conv113 = zext i8 %158 to i32
  %cmp114 = icmp ult i32 %inc224, %conv113
  br i1 %cmp114, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %159 = and i1 %bulk_in_found.1.off0, %interrupt_in_found.1.off0
  %160 = and i1 %bulk_out_found.2.off0.ph, %159
  br i1 %160, label %if.end238, label %for.end.do.end236_crit_edge

for.end.do.end236_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end236

do.end236:                                        ; preds = %for.end.do.end236_crit_edge, %if.then112.do.end236_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.21) #15
  br label %error

if.end238:                                        ; preds = %for.end
  %interrupt_read_urb239 = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 8
  %161 = ptrtoint ptr %interrupt_read_urb239 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %interrupt_read_urb239, align 8
  %call240 = tail call i32 @usb_submit_urb(ptr noundef %162, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240)
  %tobool241.not = icmp eq i32 %call240, 0
  br i1 %tobool241.not, label %if.end238.cleanup255_crit_edge, label %do.end245

if.end238.cleanup255_crit_edge:                   ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup255

do.end245:                                        ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.5, i32 noundef %call240) #15
  br label %error

error:                                            ; preds = %do.end245, %do.end236, %if.end8.i429.error_crit_edge, %do.end179.error_crit_edge, %if.end8.i.error_crit_edge, %do.end140.error_crit_edge
  %response.4.ph = phi i32 [ -19, %do.end236 ], [ %call240, %do.end245 ], [ -12, %if.end8.i429.error_crit_edge ], [ -12, %do.end179.error_crit_edge ], [ -12, %if.end8.i.error_crit_edge ], [ -12, %do.end140.error_crit_edge ]
  %interrupt_read_urb251 = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 8
  %163 = ptrtoint ptr %interrupt_read_urb251 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %interrupt_read_urb251, align 8
  tail call void @usb_free_urb(ptr noundef %164) #11
  %interrupt_in_buffer252 = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 7
  %165 = ptrtoint ptr %interrupt_in_buffer252 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %interrupt_in_buffer252, align 4
  tail call void @kfree(ptr noundef %166) #11
  %read_urb253 = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 11
  %167 = ptrtoint ptr %read_urb253 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %read_urb253, align 4
  tail call void @usb_free_urb(ptr noundef %168) #11
  %bulk_in_buffer254 = getelementptr inbounds %struct.edgeport_serial, ptr %call7.i.i, i32 0, i32 10
  %169 = ptrtoint ptr %bulk_in_buffer254 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %bulk_in_buffer254, align 8
  tail call void @kfree(ptr noundef %170) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup255

cleanup255:                                       ; preds = %error, %if.end238.cleanup255_crit_edge, %do.end109.cleanup255_crit_edge, %entry.cleanup255_crit_edge
  %retval.0 = phi i32 [ %response.4.ph, %error ], [ -12, %entry.cleanup255_crit_edge ], [ 0, %do.end109.cleanup255_crit_edge ], [ 0, %if.end238.cleanup255_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edge_disconnect(ptr nocapture noundef readonly %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %is_epic = getelementptr inbounds %struct.edgeport_serial, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %is_epic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %is_epic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %interrupt_read_urb = getelementptr inbounds %struct.edgeport_serial, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %interrupt_read_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %interrupt_read_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #11
  %read_urb = getelementptr inbounds %struct.edgeport_serial, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edge_release(ptr nocapture noundef readonly %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %is_epic = getelementptr inbounds %struct.edgeport_serial, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %is_epic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %is_epic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %interrupt_read_urb = getelementptr inbounds %struct.edgeport_serial, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %interrupt_read_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %interrupt_read_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #11
  %6 = ptrtoint ptr %interrupt_read_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %interrupt_read_urb, align 4
  tail call void @usb_free_urb(ptr noundef %7) #11
  %interrupt_in_buffer = getelementptr inbounds %struct.edgeport_serial, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %interrupt_in_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %interrupt_in_buffer, align 4
  tail call void @kfree(ptr noundef %9) #11
  %read_urb = getelementptr inbounds %struct.edgeport_serial, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #11
  %12 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_urb, align 4
  tail call void @usb_free_urb(ptr noundef %13) #11
  %bulk_in_buffer = getelementptr inbounds %struct.edgeport_serial, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %bulk_in_buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bulk_in_buffer, align 4
  tail call void @kfree(ptr noundef %15) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edge_port_probe(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ep_lock = getelementptr inbounds %struct.edgeport_port, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %ep_lock, ptr noundef nonnull @.str.116, ptr noundef nonnull @edge_port_probe.__key, i16 noundef signext 3) #11
  %port2 = getelementptr inbounds %struct.edgeport_port, ptr %call7.i.i, i32 0, i32 22
  %1 = ptrtoint ptr %port2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %port, ptr %port2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edge_port_remove(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edge_open(ptr nocapture noundef readnone %tty, ptr noundef %port) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup159_crit_edge, label %if.end

entry.cleanup159_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup159

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 4
  %cmp4 = icmp eq ptr %5, null
  br i1 %cmp4, label %if.end.cleanup159_crit_edge, label %if.end6

if.end.cleanup159_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup159

if.end6:                                          ; preds = %if.end
  %interrupt_in_buffer = getelementptr inbounds %struct.edgeport_serial, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %interrupt_in_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %interrupt_in_buffer, align 4
  %cmp7 = icmp eq ptr %7, null
  br i1 %cmp7, label %if.then8, label %if.end6.do.body39_crit_edge

if.end6.do.body39_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body39

if.then8:                                         ; preds = %if.end6
  %port9 = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %port9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port9, align 4
  %interrupt_in_buffer10 = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %interrupt_in_buffer10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %interrupt_in_buffer10, align 8
  %12 = ptrtoint ptr %interrupt_in_buffer to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %interrupt_in_buffer, align 4
  %interrupt_in_endpointAddress = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 7
  %13 = ptrtoint ptr %interrupt_in_endpointAddress to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %interrupt_in_endpointAddress, align 8
  %interrupt_in_endpoint = getelementptr inbounds %struct.edgeport_serial, ptr %5, i32 0, i32 6
  %15 = ptrtoint ptr %interrupt_in_endpoint to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %interrupt_in_endpoint, align 4
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 6
  %16 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %interrupt_in_urb, align 4
  %interrupt_read_urb = getelementptr inbounds %struct.edgeport_serial, ptr %5, i32 0, i32 8
  %18 = ptrtoint ptr %interrupt_read_urb to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %interrupt_read_urb, align 4
  %bulk_in_buffer = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 12
  %19 = ptrtoint ptr %bulk_in_buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bulk_in_buffer, align 4
  %bulk_in_buffer12 = getelementptr inbounds %struct.edgeport_serial, ptr %5, i32 0, i32 10
  %21 = ptrtoint ptr %bulk_in_buffer12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %bulk_in_buffer12, align 4
  %bulk_in_endpointAddress = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 15
  %22 = ptrtoint ptr %bulk_in_endpointAddress to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bulk_in_endpointAddress, align 8
  %bulk_in_endpoint = getelementptr inbounds %struct.edgeport_serial, ptr %5, i32 0, i32 9
  %24 = ptrtoint ptr %bulk_in_endpoint to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %bulk_in_endpoint, align 4
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 14
  %25 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read_urb, align 4
  %read_urb13 = getelementptr inbounds %struct.edgeport_serial, ptr %5, i32 0, i32 11
  %27 = ptrtoint ptr %read_urb13 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %read_urb13, align 4
  %bulk_out_endpointAddress = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 26
  %28 = ptrtoint ptr %bulk_out_endpointAddress to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bulk_out_endpointAddress, align 4
  %bulk_out_endpoint = getelementptr inbounds %struct.edgeport_serial, ptr %5, i32 0, i32 14
  %30 = ptrtoint ptr %bulk_out_endpoint to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %bulk_out_endpoint, align 4
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  %33 = load i8, ptr %interrupt_in_endpointAddress, align 8
  %conv = zext i8 %33 to i32
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %32, align 8
  %shl.i = shl i32 %35, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or19 = or i32 %or.i, 1073741952
  %36 = load ptr, ptr %interrupt_in_buffer10, align 8
  %interval = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 25
  %37 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %interval, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 8
  %39 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %32, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 10
  %40 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or19, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 14
  %41 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %36, ptr %transfer_buffer3.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 28
  %42 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @edge_interrupt_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 27
  %43 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %5, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %32, i32 0, i32 4
  %44 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %cmp.i244 = icmp eq i32 %45, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %45)
  %cmp6.i = icmp ugt i32 %45, 4
  %or.cond.i = or i1 %cmp.i244, %cmp6.i
  br i1 %or.cond.i, label %if.then.i246, label %if.then8.usb_fill_int_urb.exit_crit_edge

if.then8.usb_fill_int_urb.exit_crit_edge:         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %usb_fill_int_urb.exit

if.then.i246:                                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %46 = tail call i32 @llvm.smax.i32(i32 %38, i32 1) #11
  %47 = tail call i32 @llvm.umin.i32(i32 %46, i32 16) #11
  %sub.i = add nsw i32 %47, -1
  %shl.i245 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i246, %if.then8.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i245, %if.then.i246 ], [ %38, %if.then8.usb_fill_int_urb.exit_crit_edge ]
  %48 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %interval.sink.i, ptr %interval, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 23
  %49 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %start_frame.i, align 4
  %50 = ptrtoint ptr %read_urb13 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read_urb13, align 4
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %3, align 4
  %54 = ptrtoint ptr %bulk_in_endpointAddress to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bulk_in_endpointAddress, align 8
  %conv27 = zext i8 %55 to i32
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %53, align 8
  %shl.i248 = shl i32 %57, 8
  %shl1.i249 = shl nuw nsw i32 %conv27, 15
  %or.i250 = or i32 %shl1.i249, %shl.i248
  %or30 = or i32 %or.i250, -1073741696
  %58 = ptrtoint ptr %bulk_in_buffer to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bulk_in_buffer, align 4
  %dev1.i251 = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 8
  %60 = ptrtoint ptr %dev1.i251 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %53, ptr %dev1.i251, align 4
  %pipe2.i252 = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 10
  %61 = ptrtoint ptr %pipe2.i252 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or30, ptr %pipe2.i252, align 4
  %transfer_buffer3.i253 = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 14
  %62 = ptrtoint ptr %transfer_buffer3.i253 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %transfer_buffer3.i253, align 4
  %complete.i255 = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 28
  %63 = ptrtoint ptr %complete.i255 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @edge_bulk_in_callback, ptr %complete.i255, align 4
  %context4.i256 = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 27
  %64 = ptrtoint ptr %context4.i256 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %5, ptr %context4.i256, align 4
  %read_in_progress = getelementptr inbounds %struct.edgeport_serial, ptr %5, i32 0, i32 12
  %65 = ptrtoint ptr %read_in_progress to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %read_in_progress, align 4
  %66 = ptrtoint ptr %interrupt_read_urb to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %interrupt_read_urb, align 4
  %call35 = tail call i32 @usb_submit_urb(ptr noundef %67, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool.not = icmp eq i32 %call35, 0
  br i1 %tobool.not, label %usb_fill_int_urb.exit.do.body39_crit_edge, label %do.end

usb_fill_int_urb.exit.do.body39_crit_edge:        ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body39

do.end:                                           ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.117, i32 noundef %call35) #15
  br label %do.body39

do.body39:                                        ; preds = %do.end, %usb_fill_int_urb.exit.do.body39_crit_edge, %if.end6.do.body39_crit_edge
  %wait_open = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 20
  tail call void @__init_waitqueue_head(ptr noundef %wait_open, ptr noundef nonnull @.str.118, ptr noundef nonnull @edge_open.__key) #11
  %wait_chase = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 19
  tail call void @__init_waitqueue_head(ptr noundef %wait_chase, ptr noundef nonnull @.str.120, ptr noundef nonnull @edge_open.__key.119) #11
  %wait_command = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 21
  tail call void @__init_waitqueue_head(ptr noundef %wait_command, ptr noundef nonnull @.str.122, ptr noundef nonnull @edge_open.__key.121) #11
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %1, align 4
  %shadowMCR = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 7
  %69 = ptrtoint ptr %shadowMCR to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 8, ptr %shadowMCR, align 1
  %chaseResponsePending = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 18
  %70 = ptrtoint ptr %chaseResponsePending to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %chaseResponsePending, align 4
  %openPending = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 15
  %71 = ptrtoint ptr %openPending to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %openPending, align 1
  %open = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 14
  %72 = ptrtoint ptr %open to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %open, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %73 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %73, i32 noundef 2592, i32 noundef 10) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %do.body39.do.end54_crit_edge, label %if.end.i257

do.body39.do.end54_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end54

if.end.i257:                                      ; preds = %do.body39
  %port.i = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 22
  %74 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %port.i, align 4
  %port_number.i = getelementptr inbounds %struct.usb_serial_port, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %port_number.i, align 4
  %78 = or i8 %77, -56
  %79 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %call7.i.i, align 8
  %arrayidx3.i = getelementptr i8, ptr %call7.i.i, i32 1
  %80 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %arrayidx3.i, align 1
  %arrayidx4.i = getelementptr i8, ptr %call7.i.i, i32 2
  %81 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %arrayidx4.i, align 2
  %call5.i = tail call fastcc i32 @write_cmd_usb(ptr noundef nonnull %1, ptr noundef nonnull %call7.i.i, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i257.if.end56_crit_edge, label %send_iosp_ext_cmd.exit

if.end.i257.if.end56_crit_edge:                   ; preds = %if.end.i257
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

send_iosp_ext_cmd.exit:                           ; preds = %if.end.i257
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp49 = icmp slt i32 %call5.i, 0
  br i1 %cmp49, label %send_iosp_ext_cmd.exit.do.end54_crit_edge, label %send_iosp_ext_cmd.exit.if.end56_crit_edge

send_iosp_ext_cmd.exit.if.end56_crit_edge:        ; preds = %send_iosp_ext_cmd.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

send_iosp_ext_cmd.exit.do.end54_crit_edge:        ; preds = %send_iosp_ext_cmd.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end54

do.end54:                                         ; preds = %send_iosp_ext_cmd.exit.do.end54_crit_edge, %do.body39.do.end54_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.117) #15
  %82 = ptrtoint ptr %openPending to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %openPending, align 1
  br label %cleanup159

if.end56:                                         ; preds = %send_iosp_ext_cmd.exit.if.end56_crit_edge, %if.end.i257.if.end56_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 900) #11
  %83 = ptrtoint ptr %openPending to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %openPending, align 1, !range !679
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool64.not = icmp eq i8 %84, 0
  br i1 %tobool64.not, label %if.end56.if.end104_crit_edge, label %if.then75

if.end56.if.end104_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104

if.then75:                                        ; preds = %if.end56
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %85 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %call78272 = call i32 @prepare_to_wait_event(ptr noundef %wait_open, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %86 = ptrtoint ptr %openPending to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %openPending, align 1, !range !679
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool81.not273 = icmp eq i8 %87, 0
  br i1 %tobool81.not273, label %if.then75.for.end_crit_edge, label %if.then75.cleanup_crit_edge

if.then75.cleanup_crit_edge:                      ; preds = %if.then75
  br label %cleanup

if.then75.for.end_crit_edge:                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then75.cleanup_crit_edge
  %__ret76.1274 = phi i32 [ %__ret76.1, %cleanup.cleanup_crit_edge ], [ 500, %if.then75.cleanup_crit_edge ]
  %call101 = call i32 @schedule_timeout(i32 noundef %__ret76.1274) #11
  %call78 = call i32 @prepare_to_wait_event(ptr noundef %wait_open, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %88 = ptrtoint ptr %openPending to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %openPending, align 1, !range !679
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool81.not = icmp eq i8 %89, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool87.not = icmp eq i32 %call101, 0
  %90 = select i1 %tobool81.not, i1 %tobool87.not, i1 false
  %__ret76.1 = select i1 %90, i32 1, i32 %call101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret76.1)
  %tobool94.not = icmp eq i32 %__ret76.1, 0
  %91 = select i1 %tobool81.not, i1 true, i1 %tobool94.not
  br i1 %91, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then75.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait_open, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end104

if.end104:                                        ; preds = %for.end, %if.end56.if.end104_crit_edge
  %92 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %open, align 4, !range !679
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool107.not = icmp eq i8 %93, 0
  br i1 %tobool107.not, label %do.body109, label %if.end122

do.body109:                                       ; preds = %if.end104
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_open.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_open, %if.then117)) #11
          to label %do.end120 [label %if.then117], !srcloc !678

if.then117:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_open.__UNIQUE_ID_ddebug285, ptr noundef %dev1, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.117) #11
  br label %do.end120

do.end120:                                        ; preds = %if.then117, %do.body109
  %94 = ptrtoint ptr %openPending to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %openPending, align 1
  br label %cleanup159

if.end122:                                        ; preds = %if.end104
  %txfifo = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 2
  %95 = ptrtoint ptr %txfifo to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %txfifo, align 4
  %tail = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 2, i32 1
  %96 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %tail, align 4
  %count = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 2, i32 2
  %97 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %count, align 4
  %maxTxCredits = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 1
  %98 = ptrtoint ptr %maxTxCredits to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %maxTxCredits, align 2
  %conv125 = zext i16 %99 to i32
  %size = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 2, i32 3
  %100 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %conv125, ptr %size, align 4
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv125, i32 noundef 3264) #16
  %fifo = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 2, i32 4
  %101 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call9.i, ptr %fifo, align 4
  %tobool133.not = icmp eq ptr %call9.i, null
  br i1 %tobool133.not, label %if.then134, label %if.end135

if.then134:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  call void @edge_close(ptr noundef %port)
  br label %cleanup159

if.end135:                                        ; preds = %if.end122
  %call136 = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %write_urb = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 3
  %102 = ptrtoint ptr %write_urb to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call136, ptr %write_urb, align 4
  %write_in_progress = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 4
  %103 = ptrtoint ptr %write_in_progress to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %write_in_progress, align 4
  %tobool138.not = icmp eq ptr %call136, null
  br i1 %tobool138.not, label %if.then139, label %do.body141

if.then139:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #13
  call void @edge_close(ptr noundef %port)
  br label %cleanup159

do.body141:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_open.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_open, %if.then153)) #11
          to label %cleanup159 [label %if.then153], !srcloc !678

if.then153:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #13
  %104 = ptrtoint ptr %maxTxCredits to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %maxTxCredits, align 2
  %conv155 = zext i16 %105 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_open.__UNIQUE_ID_ddebug286, ptr noundef %dev1, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.117, i32 noundef %conv155) #11
  br label %cleanup159

cleanup159:                                       ; preds = %if.then153, %do.body141, %if.then139, %if.then134, %do.end120, %do.end54, %if.end.cleanup159_crit_edge, %entry.cleanup159_crit_edge
  %retval.0 = phi i32 [ -19, %do.end54 ], [ -12, %if.then139 ], [ -12, %if.then134 ], [ -19, %do.end120 ], [ -19, %entry.cleanup159_crit_edge ], [ -19, %if.end.cleanup159_crit_edge ], [ 0, %if.then153 ], [ 0, %do.body141 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edge_close(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %cmp = icmp eq ptr %3, null
  %cmp2 = icmp eq ptr %5, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @block_until_tx_empty(ptr noundef nonnull %5)
  %closePending = getelementptr inbounds %struct.edgeport_port, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %closePending to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %closePending, align 1
  %is_epic = getelementptr inbounds %struct.edgeport_serial, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %is_epic to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %is_epic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end.if.then5_crit_edge, label %lor.lhs.false3

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

lor.lhs.false3:                                   ; preds = %if.end
  %Supports = getelementptr inbounds %struct.edgeport_serial, ptr %3, i32 0, i32 4, i32 9
  %9 = ptrtoint ptr %Supports to i32
  call void @__asan_loadN_noabort(i32 %9, i32 12)
  %bf.load = load i96, ptr %Supports, align 4
  %10 = and i96 %bf.load, 2305843009213693952
  %tobool4.not = icmp eq i96 %10, 0
  br i1 %tobool4.not, label %lor.lhs.false3.if.end17_crit_edge, label %lor.lhs.false3.if.then5_crit_edge

lor.lhs.false3.if.then5_crit_edge:                ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

lor.lhs.false3.if.end17_crit_edge:                ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then5:                                         ; preds = %lor.lhs.false3.if.then5_crit_edge, %if.end.if.then5_crit_edge
  %chaseResponsePending = getelementptr inbounds %struct.edgeport_port, ptr %5, i32 0, i32 18
  %11 = ptrtoint ptr %chaseResponsePending to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %chaseResponsePending, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_close.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_close, %if.then10)) #11
          to label %do.end [label %if.then10], !srcloc !678

if.then10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_close.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.136) #11
  br label %do.end

do.end:                                           ; preds = %if.then10, %if.then5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 2592, i32 noundef 10) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %do.end.if.else_crit_edge, label %if.end.i

do.end.if.else_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.end.i:                                         ; preds = %do.end
  %port.i = getelementptr inbounds %struct.edgeport_port, ptr %5, i32 0, i32 22
  %13 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port.i, align 4
  %port_number.i = getelementptr inbounds %struct.usb_serial_port, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %port_number.i, align 4
  %17 = or i8 %16, -56
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %call7.i.i, align 8
  %arrayidx3.i = getelementptr i8, ptr %call7.i.i, i32 1
  %19 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %arrayidx3.i, align 1
  %arrayidx4.i = getelementptr i8, ptr %call7.i.i, i32 2
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx4.i, align 2
  %call5.i = tail call fastcc i32 @write_cmd_usb(ptr noundef nonnull %5, ptr noundef nonnull %call7.i.i, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then14, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %if.else

if.then14:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @block_until_chase_response(ptr noundef nonnull %5)
  br label %if.end17

if.else:                                          ; preds = %if.then7.i, %do.end.if.else_crit_edge
  %21 = ptrtoint ptr %chaseResponsePending to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %chaseResponsePending, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then14, %lor.lhs.false3.if.end17_crit_edge
  %22 = ptrtoint ptr %is_epic to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %is_epic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool19.not = icmp eq i32 %23, 0
  br i1 %tobool19.not, label %if.end17.do.body29_crit_edge, label %lor.lhs.false20

if.end17.do.body29_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body29

lor.lhs.false20:                                  ; preds = %if.end17
  %Supports22 = getelementptr inbounds %struct.edgeport_serial, ptr %3, i32 0, i32 4, i32 9
  %24 = ptrtoint ptr %Supports22 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 12)
  %bf.load23 = load i96, ptr %Supports22, align 4
  %25 = and i96 %bf.load23, 4611686018427387904
  %tobool27.not = icmp eq i96 %25, 0
  br i1 %tobool27.not, label %lor.lhs.false20.if.end47_crit_edge, label %lor.lhs.false20.do.body29_crit_edge

lor.lhs.false20.do.body29_crit_edge:              ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body29

lor.lhs.false20.if.end47_crit_edge:               ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

do.body29:                                        ; preds = %lor.lhs.false20.do.body29_crit_edge, %if.end17.do.body29_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_close.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_close, %if.then41)) #11
          to label %do.end45 [label %if.then41], !srcloc !678

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #13
  %dev42 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_close.__UNIQUE_ID_ddebug295, ptr noundef %dev42, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.136) #11
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %do.body29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i90 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 2592, i32 noundef 10) #14
  %tobool.not.i91 = icmp eq ptr %call7.i.i90, null
  br i1 %tobool.not.i91, label %do.end45.if.end47_crit_edge, label %if.end.i98

do.end45.if.end47_crit_edge:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.end.i98:                                       ; preds = %do.end45
  %port.i92 = getelementptr inbounds %struct.edgeport_port, ptr %5, i32 0, i32 22
  %27 = ptrtoint ptr %port.i92 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %port.i92, align 4
  %port_number.i93 = getelementptr inbounds %struct.usb_serial_port, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %port_number.i93 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %port_number.i93, align 4
  %31 = or i8 %30, -56
  %32 = ptrtoint ptr %call7.i.i90 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %call7.i.i90, align 8
  %arrayidx3.i94 = getelementptr i8, ptr %call7.i.i90, i32 1
  %33 = ptrtoint ptr %arrayidx3.i94 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %arrayidx3.i94, align 1
  %arrayidx4.i95 = getelementptr i8, ptr %call7.i.i90, i32 2
  %34 = ptrtoint ptr %arrayidx4.i95 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %arrayidx4.i95, align 2
  %call5.i96 = tail call fastcc i32 @write_cmd_usb(ptr noundef nonnull %5, ptr noundef nonnull %call7.i.i90, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i96)
  %tobool6.not.i97 = icmp eq i32 %call5.i96, 0
  br i1 %tobool6.not.i97, label %if.end.i98.if.end47_crit_edge, label %if.then7.i99

if.end.i98.if.end47_crit_edge:                    ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then7.i99:                                     ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i90) #11
  br label %if.end47

if.end47:                                         ; preds = %if.then7.i99, %if.end.i98.if.end47_crit_edge, %do.end45.if.end47_crit_edge, %lor.lhs.false20.if.end47_crit_edge
  %35 = ptrtoint ptr %closePending to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %closePending, align 1
  %open = getelementptr inbounds %struct.edgeport_port, ptr %5, i32 0, i32 14
  %36 = ptrtoint ptr %open to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %open, align 4
  %openPending = getelementptr inbounds %struct.edgeport_port, ptr %5, i32 0, i32 15
  %37 = ptrtoint ptr %openPending to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %openPending, align 1
  %write_urb = getelementptr inbounds %struct.edgeport_port, ptr %5, i32 0, i32 3
  %38 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %39) #11
  %40 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_urb, align 4
  %tobool50.not = icmp eq ptr %41, null
  br i1 %tobool50.not, label %if.end47.if.end55_crit_edge, label %if.then51

if.end47.if.end55_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %41, i32 0, i32 14
  %42 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %transfer_buffer, align 4
  tail call void @kfree(ptr noundef %43) #11
  %44 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_urb, align 4
  tail call void @usb_free_urb(ptr noundef %45) #11
  %46 = ptrtoint ptr %write_urb to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %write_urb, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %if.end47.if.end55_crit_edge
  %fifo = getelementptr inbounds %struct.edgeport_port, ptr %5, i32 0, i32 2, i32 4
  %47 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fifo, align 4
  tail call void @kfree(ptr noundef %48) #11
  %49 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %fifo, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edge_write(ptr nocapture noundef readnone %tty, ptr noundef %port, ptr nocapture noundef readonly %data, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %txfifo = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 2
  %ep_lock = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 5
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ep_lock) #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 4
  %conv7 = zext i16 %3 to i32
  %count8 = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %count8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count8, align 4
  %sub = sub i32 %conv7, %5
  %6 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %count)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_write.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_write, %if.then17)) #11
          to label %do.end24 [label %if.then17], !srcloc !678

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 4
  %conv19 = zext i16 %8 to i32
  %9 = ptrtoint ptr %count8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count8, align 4
  %sub21 = sub i32 %conv19, %10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_write.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.148, i32 noundef %count, i32 noundef %sub21, i32 noundef %6) #11
  br label %do.end24

do.end24:                                         ; preds = %if.then17, %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp25 = icmp eq i32 %6, 0
  br i1 %cmp25, label %do.body28, label %if.end45

do.body28:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_write.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_write, %if.then40)) #11
          to label %finish_write [label %if.then40], !srcloc !678

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #13
  %dev41 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_write.__UNIQUE_ID_ddebug299, ptr noundef %dev41, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.148) #11
  br label %finish_write

if.end45:                                         ; preds = %do.end24
  %size = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 4
  %13 = ptrtoint ptr %txfifo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %txfifo, align 4
  %sub46 = sub i32 %12, %14
  %15 = tail call i32 @llvm.smin.i32(i32 %sub46, i32 %6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_write.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_write, %if.then66)) #11
          to label %do.end70 [label %if.then66], !srcloc !678

if.then66:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %dev67 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_write.__UNIQUE_ID_ddebug302, ptr noundef %dev67, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.148, i32 noundef %15, i32 noundef %sub46) #11
  br label %do.end70

do.end70:                                         ; preds = %if.then66, %if.end45
  %fifo71 = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %fifo71 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fifo71, align 4
  %18 = ptrtoint ptr %txfifo to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %txfifo, align 4
  %arrayidx = getelementptr i8, ptr %17, i32 %19
  %20 = call ptr @memcpy(ptr %arrayidx, ptr %data, i32 %15)
  %dev73 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %21 = load ptr, ptr %fifo71, align 4
  %22 = load i32, ptr %txfifo, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_write, %if.then.i)) #11
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !678

if.then.i:                                        ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx76 = getelementptr i8, ptr %21, i32 %22
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev73, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.148, i32 noundef %15, i32 noundef %15, ptr noundef %arrayidx76) #11
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %do.end70
  %23 = ptrtoint ptr %txfifo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %txfifo, align 4
  %add = add i32 %24, %15
  store i32 %add, ptr %txfifo, align 4
  %25 = ptrtoint ptr %count8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %count8, align 4
  %add79 = add i32 %26, %15
  store i32 %add79, ptr %count8, align 4
  %27 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %28)
  %cmp82 = icmp eq i32 %add, %28
  br i1 %cmp82, label %if.then84, label %usb_serial_debug_data.exit.if.end86_crit_edge

usb_serial_debug_data.exit.if.end86_crit_edge:    ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

if.then84:                                        ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %txfifo to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %txfifo, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %usb_serial_debug_data.exit.if.end86_crit_edge
  %sub87 = sub i32 %6, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %sub46)
  %tobool88.not.not = icmp sgt i32 %6, %sub46
  br i1 %tobool88.not.not, label %do.body90, label %if.end86.finish_write_crit_edge

if.end86.finish_write_crit_edge:                  ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %finish_write

do.body90:                                        ; preds = %if.end86
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_write.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_write, %if.then102)) #11
          to label %do.end106 [label %if.then102], !srcloc !678

if.then102:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_write.__UNIQUE_ID_ddebug303, ptr noundef %dev73, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.148, i32 noundef %sub87) #11
  br label %do.end106

do.end106:                                        ; preds = %if.then102, %do.body90
  %30 = ptrtoint ptr %fifo71 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fifo71, align 4
  %32 = ptrtoint ptr %txfifo to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %txfifo, align 4
  %arrayidx109 = getelementptr i8, ptr %31, i32 %33
  %arrayidx110 = getelementptr i8, ptr %data, i32 %15
  %34 = call ptr @memcpy(ptr %arrayidx109, ptr %arrayidx110, i32 %sub87)
  %35 = load ptr, ptr %fifo71, align 4
  %36 = load i32, ptr %txfifo, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_write, %if.then.i217)) #11
          to label %usb_serial_debug_data.exit218 [label %if.then.i217], !srcloc !678

if.then.i217:                                     ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx114 = getelementptr i8, ptr %35, i32 %36
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev73, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.148, i32 noundef %sub87, i32 noundef %sub87, ptr noundef %arrayidx114) #11
  br label %usb_serial_debug_data.exit218

usb_serial_debug_data.exit218:                    ; preds = %if.then.i217, %do.end106
  %37 = ptrtoint ptr %count8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %count8, align 4
  %add116 = add i32 %38, %sub87
  store i32 %add116, ptr %count8, align 4
  %39 = ptrtoint ptr %txfifo to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %txfifo, align 4
  %add118 = add i32 %40, %sub87
  store i32 %add118, ptr %txfifo, align 4
  br label %finish_write

finish_write:                                     ; preds = %usb_serial_debug_data.exit218, %if.end86.finish_write_crit_edge, %if.then40, %do.body28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ep_lock, i32 noundef %call4) #11
  %41 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %port, align 8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %42, i32 0, i32 15
  %43 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %private.i, align 4
  tail call fastcc void @send_more_port_data(ptr noundef %44, ptr noundef nonnull %1)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_write.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_write, %if.then134)) #11
          to label %cleanup [label %if.then134], !srcloc !678

if.then134:                                       ; preds = %finish_write
  call void @__sanitizer_cov_trace_pc() #13
  %dev135 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %1, align 4
  %conv137 = zext i16 %46 to i32
  %47 = ptrtoint ptr %count8 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %count8, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_write.__UNIQUE_ID_ddebug304, ptr noundef %dev135, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.148, i32 noundef %6, i32 noundef %conv137, i32 noundef %48) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then134, %finish_write, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %6, %if.then134 ], [ %6, %finish_write ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edge_write_room(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %ep_lock = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ep_lock) #11
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 4
  %conv6 = zext i16 %5 to i32
  %count = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  %sub = sub i32 %conv6, %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ep_lock, i32 noundef %call3) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_write_room.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_write_room, %if.then)) #11
          to label %do.end14 [label %if.then], !srcloc !678

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_write_room.__UNIQUE_ID_ddebug312, ptr noundef %dev, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.159, i32 noundef %sub) #11
  br label %do.end14

do.end14:                                         ; preds = %if.then, %entry
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edge_ioctl(ptr nocapture noundef readonly %tty, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21593, i32 %cmd)
  %cond = icmp eq i32 %cmd, 21593
  br i1 %cond, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_ioctl.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_ioctl, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !678

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_ioctl.__UNIQUE_ID_ddebug318, ptr noundef %dev, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.161) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %4 = inttoptr i32 %arg to ptr
  %call4 = tail call fastcc i32 @get_lsr_info(ptr noundef %3, ptr noundef %4)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ -515, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edge_set_termios(ptr noundef %tty, ptr noundef %port, ptr noundef %old_termios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %open = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %open, align 4, !range !679
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_set_termios.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_set_termios, %if.then6)) #11
          to label %cleanup [label %if.then6], !srcloc !678

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_set_termios.__UNIQUE_ID_ddebug316, ptr noundef %dev, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.168) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @change_port_settings(ptr noundef %tty, ptr noundef nonnull %1, ptr noundef %old_termios)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edge_break(ptr nocapture noundef readonly %tty, i32 noundef %break_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i, align 4
  %is_epic = getelementptr inbounds %struct.edgeport_serial, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %is_epic to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %is_epic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %Supports = getelementptr inbounds %struct.edgeport_serial, ptr %7, i32 0, i32 4, i32 9
  %10 = ptrtoint ptr %Supports to i32
  call void @__asan_loadN_noabort(i32 %10, i32 12)
  %bf.load = load i96, ptr %Supports, align 4
  %11 = and i96 %bf.load, 2305843009213693952
  %tobool2.not = icmp eq i96 %11, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.end12_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false.if.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %chaseResponsePending = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 18
  %12 = ptrtoint ptr %chaseResponsePending to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %chaseResponsePending, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_break.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_break, %if.then7)) #11
          to label %do.end [label %if.then7], !srcloc !678

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_break.__UNIQUE_ID_ddebug319, ptr noundef %dev, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.201) #11
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 2592, i32 noundef 10) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %do.end.if.else_crit_edge, label %if.end.i

do.end.if.else_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.end.i:                                         ; preds = %do.end
  %port.i = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 22
  %14 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port.i, align 4
  %port_number.i = getelementptr inbounds %struct.usb_serial_port, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %port_number.i, align 4
  %18 = or i8 %17, -56
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %call7.i.i, align 8
  %arrayidx3.i = getelementptr i8, ptr %call7.i.i, i32 1
  %20 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %arrayidx3.i, align 1
  %arrayidx4.i = getelementptr i8, ptr %call7.i.i, i32 2
  %21 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx4.i, align 2
  %call5.i = tail call fastcc i32 @write_cmd_usb(ptr noundef %3, ptr noundef nonnull %call7.i.i, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then9, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %if.else

if.then9:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @block_until_chase_response(ptr noundef %3)
  br label %if.end12

if.else:                                          ; preds = %if.then7.i, %do.end.if.else_crit_edge
  %22 = ptrtoint ptr %chaseResponsePending to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %chaseResponsePending, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9, %lor.lhs.false.if.end12_crit_edge
  %23 = ptrtoint ptr %is_epic to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %is_epic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool14.not = icmp eq i32 %24, 0
  br i1 %tobool14.not, label %if.end12.if.then23_crit_edge, label %lor.lhs.false15

if.end12.if.then23_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

lor.lhs.false15:                                  ; preds = %if.end12
  %Supports17 = getelementptr inbounds %struct.edgeport_serial, ptr %7, i32 0, i32 4, i32 9
  %25 = ptrtoint ptr %Supports17 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 12)
  %bf.load18 = load i96, ptr %Supports17, align 4
  %26 = and i96 %bf.load18, 72057594037927936
  %tobool22.not = icmp eq i96 %26, 0
  br i1 %tobool22.not, label %lor.lhs.false15.if.end84_crit_edge, label %lor.lhs.false15.if.then23_crit_edge

lor.lhs.false15.if.then23_crit_edge:              ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

lor.lhs.false15.if.end84_crit_edge:               ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

if.then23:                                        ; preds = %lor.lhs.false15.if.then23_crit_edge, %if.end12.if.then23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %break_state)
  %cmp24 = icmp eq i32 %break_state, -1
  br i1 %cmp24, label %do.body26, label %do.body45

do.body26:                                        ; preds = %if.then23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_break.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_break, %if.then38)) #11
          to label %do.end42 [label %if.then38], !srcloc !678

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  %dev39 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_break.__UNIQUE_ID_ddebug320, ptr noundef %dev39, ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.201) #11
  br label %do.end42

do.end42:                                         ; preds = %if.then38, %do.body26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i111 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 2592, i32 noundef 10) #14
  %tobool.not.i112 = icmp eq ptr %call7.i.i111, null
  br i1 %tobool.not.i112, label %do.end42.do.body66_crit_edge, label %if.end.i119

do.end42.do.body66_crit_edge:                     ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body66

if.end.i119:                                      ; preds = %do.end42
  %port.i113 = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 22
  %28 = ptrtoint ptr %port.i113 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port.i113, align 4
  %port_number.i114 = getelementptr inbounds %struct.usb_serial_port, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %port_number.i114 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %port_number.i114, align 4
  %32 = or i8 %31, -56
  %33 = ptrtoint ptr %call7.i.i111 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %call7.i.i111, align 8
  %arrayidx3.i115 = getelementptr i8, ptr %call7.i.i111, i32 1
  %34 = ptrtoint ptr %arrayidx3.i115 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 8, ptr %arrayidx3.i115, align 1
  %arrayidx4.i116 = getelementptr i8, ptr %call7.i.i111, i32 2
  %35 = ptrtoint ptr %arrayidx4.i116 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %arrayidx4.i116, align 2
  %call5.i117 = tail call fastcc i32 @write_cmd_usb(ptr noundef %3, ptr noundef nonnull %call7.i.i111, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i117)
  %tobool6.not.i118 = icmp eq i32 %call5.i117, 0
  br i1 %tobool6.not.i118, label %if.end.i119.if.end84_crit_edge, label %if.end.i119.do.body66.sink.split_crit_edge

if.end.i119.do.body66.sink.split_crit_edge:       ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body66.sink.split

if.end.i119.if.end84_crit_edge:                   ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

do.body45:                                        ; preds = %if.then23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_break.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_break, %if.then57)) #11
          to label %do.end61 [label %if.then57], !srcloc !678

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #13
  %dev58 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_break.__UNIQUE_ID_ddebug321, ptr noundef %dev58, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.201) #11
  br label %do.end61

do.end61:                                         ; preds = %if.then57, %do.body45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i123 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 2592, i32 noundef 10) #14
  %tobool.not.i124 = icmp eq ptr %call7.i.i123, null
  br i1 %tobool.not.i124, label %do.end61.do.body66_crit_edge, label %if.end.i131

do.end61.do.body66_crit_edge:                     ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body66

if.end.i131:                                      ; preds = %do.end61
  %port.i125 = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 22
  %37 = ptrtoint ptr %port.i125 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %port.i125, align 4
  %port_number.i126 = getelementptr inbounds %struct.usb_serial_port, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %port_number.i126 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %port_number.i126, align 4
  %41 = or i8 %40, -56
  %42 = ptrtoint ptr %call7.i.i123 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %call7.i.i123, align 8
  %arrayidx3.i127 = getelementptr i8, ptr %call7.i.i123, i32 1
  %43 = ptrtoint ptr %arrayidx3.i127 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 9, ptr %arrayidx3.i127, align 1
  %arrayidx4.i128 = getelementptr i8, ptr %call7.i.i123, i32 2
  %44 = ptrtoint ptr %arrayidx4.i128 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %arrayidx4.i128, align 2
  %call5.i129 = tail call fastcc i32 @write_cmd_usb(ptr noundef %3, ptr noundef nonnull %call7.i.i123, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i129)
  %tobool6.not.i130 = icmp eq i32 %call5.i129, 0
  br i1 %tobool6.not.i130, label %if.end.i131.if.end84_crit_edge, label %if.end.i131.do.body66.sink.split_crit_edge

if.end.i131.do.body66.sink.split_crit_edge:       ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body66.sink.split

if.end.i131.if.end84_crit_edge:                   ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

do.body66.sink.split:                             ; preds = %if.end.i131.do.body66.sink.split_crit_edge, %if.end.i119.do.body66.sink.split_crit_edge
  %call7.i.i111.sink = phi ptr [ %call7.i.i111, %if.end.i119.do.body66.sink.split_crit_edge ], [ %call7.i.i123, %if.end.i131.do.body66.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i111.sink) #11
  br label %do.body66

do.body66:                                        ; preds = %do.body66.sink.split, %do.end61.do.body66_crit_edge, %do.end42.do.body66_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_break.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_break, %if.then78)) #11
          to label %if.end84 [label %if.then78], !srcloc !678

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #13
  %dev79 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_break.__UNIQUE_ID_ddebug322, ptr noundef %dev79, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.201) #11
  br label %if.end84

if.end84:                                         ; preds = %if.then78, %do.body66, %if.end.i131.if.end84_crit_edge, %if.end.i119.if.end84_crit_edge, %lor.lhs.false15.if.end84_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edge_chars_in_buffer(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %ep_lock = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ep_lock) #11
  %maxTxCredits = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %maxTxCredits to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %maxTxCredits, align 2
  %conv6 = zext i16 %5 to i32
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %3, align 4
  %conv7 = zext i16 %7 to i32
  %sub = sub nsw i32 %conv6, %conv7
  %count = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  %add = add i32 %sub, %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ep_lock, i32 noundef %call3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not = icmp eq i32 %add, 0
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %do.body9

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_chars_in_buffer.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_chars_in_buffer, %if.then15)) #11
          to label %if.end18 [label %if.then15], !srcloc !678

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_chars_in_buffer.__UNIQUE_ID_ddebug313, ptr noundef %dev, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.205, i32 noundef %add) #11
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %do.body9, %entry.if.end18_crit_edge
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edge_throttle(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  %stop_char = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup30_crit_edge, label %if.end

entry.cleanup30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup30

if.end:                                           ; preds = %entry
  %open = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %open, align 4, !range !679
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_throttle.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_throttle, %if.then6)) #11
          to label %cleanup30 [label %if.then6], !srcloc !678

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_throttle.__UNIQUE_ID_ddebug314, ptr noundef %dev, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.206) #11
  br label %cleanup30

if.end8:                                          ; preds = %if.end
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %6 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %termios, align 4
  %and = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end8.if.end16_crit_edge, label %if.then10

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then10:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stop_char) #11
  %arrayidx = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 9
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = ptrtoint ptr %stop_char to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %stop_char, align 1
  %call12 = call i32 @edge_write(ptr noundef %tty, ptr noundef %1, ptr noundef nonnull %stop_char, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stop_char) #11
  br i1 %cmp13, label %if.then10.cleanup30_crit_edge, label %if.then10.if.end16_crit_edge

if.then10.if.end16_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then10.cleanup30_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup30

if.end16:                                         ; preds = %if.then10.if.end16_crit_edge, %if.end8.if.end16_crit_edge
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %11 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool19.not = icmp sgt i32 %12, -1
  br i1 %tobool19.not, label %if.end16.cleanup30_crit_edge, label %if.then20

if.end16.cleanup30_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup30

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %shadowMCR = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %shadowMCR to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %shadowMCR, align 1
  %15 = and i8 %14, -3
  store i8 %15, ptr %shadowMCR, align 1
  %call24 = tail call fastcc i32 @send_cmd_write_uart_register(ptr noundef nonnull %3, i8 noundef zeroext 4, i8 noundef zeroext %15)
  br label %cleanup30

cleanup30:                                        ; preds = %if.then20, %if.end16.cleanup30_crit_edge, %if.then10.cleanup30_crit_edge, %if.then6, %do.body, %entry.cleanup30_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edge_unthrottle(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  %start_char = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup25_crit_edge, label %if.end

entry.cleanup25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup25

if.end:                                           ; preds = %entry
  %open = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %open, align 4, !range !679
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_unthrottle.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_unthrottle, %if.then6)) #11
          to label %cleanup25 [label %if.then6], !srcloc !678

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_unthrottle.__UNIQUE_ID_ddebug315, ptr noundef %dev, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.207) #11
  br label %cleanup25

if.end8:                                          ; preds = %if.end
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %6 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %termios, align 4
  %and = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end8.if.end16_crit_edge, label %if.then10

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then10:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %start_char) #11
  %arrayidx = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 8
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = ptrtoint ptr %start_char to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %start_char, align 1
  %call12 = call i32 @edge_write(ptr noundef %tty, ptr noundef %1, ptr noundef nonnull %start_char, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %start_char) #11
  br i1 %cmp13, label %if.then10.cleanup25_crit_edge, label %if.then10.if.end16_crit_edge

if.then10.if.end16_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then10.cleanup25_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup25

if.end16:                                         ; preds = %if.then10.if.end16_crit_edge, %if.end8.if.end16_crit_edge
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %11 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool19.not = icmp sgt i32 %12, -1
  br i1 %tobool19.not, label %if.end16.cleanup25_crit_edge, label %if.then20

if.end16.cleanup25_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup25

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %shadowMCR = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %shadowMCR to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %shadowMCR, align 1
  %15 = or i8 %14, 2
  store i8 %15, ptr %shadowMCR, align 1
  %call23 = tail call fastcc i32 @send_cmd_write_uart_register(ptr noundef nonnull %3, i8 noundef zeroext 4, i8 noundef zeroext %15)
  br label %cleanup25

cleanup25:                                        ; preds = %if.then20, %if.end16.cleanup25_crit_edge, %if.then10.cleanup25_crit_edge, %if.then6, %do.body, %entry.cleanup25_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @edge_tiocmget(ptr nocapture noundef readonly %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %shadowMSR = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %shadowMSR to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shadowMSR, align 2
  %conv = zext i8 %5 to i32
  %shadowMCR = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %shadowMCR to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shadowMCR, align 1
  %conv1 = zext i8 %7 to i32
  %and = shl nuw nsw i32 %conv1, 1
  %or = and i32 %and, 6
  %and5 = shl nuw nsw i32 %conv, 1
  %8 = and i32 %and5, 32
  %and9 = lshr i32 %conv, 1
  %9 = and i32 %and9, 64
  %10 = and i32 %and5, 128
  %and17 = shl nuw nsw i32 %conv, 3
  %11 = and i32 %and17, 256
  %or8 = or i32 %9, %8
  %or12 = or i32 %or8, %10
  %or16 = or i32 %or12, %11
  %or20 = or i32 %or16, %or
  ret i32 %or20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edge_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %shadowMCR = getelementptr inbounds %struct.edgeport_port, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %shadowMCR to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shadowMCR, align 1
  %conv = zext i8 %5 to i32
  %and = lshr i32 %set, 1
  %and6 = lshr i32 %set, 11
  %6 = and i32 %and6, 16
  %7 = and i32 %and, 3
  %8 = or i32 %7, %6
  %9 = or i32 %8, %conv
  %and11 = and i32 %clear, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %and14 = and i32 %9, 253
  %mcr.3 = select i1 %tobool12.not, i32 %9, i32 %and14
  %and16 = and i32 %clear, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %and19 = and i32 %mcr.3, 254
  %mcr.4 = select i1 %tobool17.not, i32 %mcr.3, i32 %and19
  %and21 = and i32 %clear, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %and24 = and i32 %mcr.4, 239
  %mcr.5 = select i1 %tobool22.not, i32 %mcr.4, i32 %and24
  %conv26 = trunc i32 %mcr.5 to i8
  %10 = ptrtoint ptr %shadowMCR to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv26, ptr %shadowMCR, align 1
  %call29 = tail call fastcc i32 @send_cmd_write_uart_register(ptr noundef %3, i8 noundef zeroext 4, i8 noundef zeroext %conv26)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_tiocmiwait(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_get_icount(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edge_interrupt_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %4 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %actual_length, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status1, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %do.body6 [
    i32 0, label %sw.epilog
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge265
    i32 -108, label %entry.do.body_crit_edge266
  ]

entry.do.body_crit_edge266:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

entry.do.body_crit_edge265:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge265, %entry.do.body_crit_edge266
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_interrupt_callback.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_interrupt_callback, %if.then)) #11
          to label %cleanup [label %if.then], !srcloc !678

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev4 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %9 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev4, align 4
  %dev5 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_interrupt_callback.__UNIQUE_ID_ddebug273, ptr noundef %dev5, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.208, i32 noundef %7) #11
  br label %cleanup

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_interrupt_callback.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_interrupt_callback, %if.then18)) #11
          to label %exit [label %if.then18], !srcloc !678

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  %dev19 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %11 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev19, align 4
  %dev20 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_interrupt_callback.__UNIQUE_ID_ddebug274, ptr noundef %dev20, ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.208, i32 noundef %7) #11
  br label %exit

sw.epilog:                                        ; preds = %entry
  %serial = getelementptr inbounds %struct.edgeport_serial, ptr %1, i32 0, i32 24
  %13 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %serial, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %dev25 = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool26.not = icmp eq i32 %5, 0
  br i1 %tobool26.not, label %sw.epilog.exit_crit_edge, label %if.then27

sw.epilog.exit_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.then27:                                        ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_interrupt_callback, %if.then.i)) #11
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !678

if.then.i:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev25, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.208, i32 noundef %5, i32 noundef %5, ptr noundef %3) #11
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %if.then27
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %if.then28, label %usb_serial_debug_data.exit.if.end101_crit_edge

usb_serial_debug_data.exit.if.end101_crit_edge:   ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

if.then28:                                        ; preds = %usb_serial_debug_data.exit
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %3, align 1
  %conv = zext i8 %18 to i32
  %arrayidx29 = getelementptr i8, ptr %3, i32 1
  %19 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %20 to i32
  %shl = shl nuw nsw i32 %conv30, 8
  %or = or i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool31.not = icmp eq i32 %or, 0
  br i1 %tobool31.not, label %if.then28.if.end101_crit_edge, label %do.body34

if.then28.if.end101_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

do.body34:                                        ; preds = %if.then28
  %es_lock = getelementptr inbounds %struct.edgeport_serial, ptr %1, i32 0, i32 13
  %call39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %es_lock) #11
  %rxBytesAvail = getelementptr inbounds %struct.edgeport_serial, ptr %1, i32 0, i32 15
  %21 = ptrtoint ptr %rxBytesAvail to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %rxBytesAvail, align 2
  %23 = trunc i32 %or to i16
  %conv45 = add i16 %22, %23
  store i16 %conv45, ptr %rxBytesAvail, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_interrupt_callback.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_interrupt_callback, %if.then58)) #11
          to label %do.end65 [label %if.then58], !srcloc !678

if.then58:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %rxBytesAvail to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %rxBytesAvail, align 2
  %conv60 = sext i16 %25 to i32
  %read_in_progress = getelementptr inbounds %struct.edgeport_serial, ptr %1, i32 0, i32 12
  %26 = ptrtoint ptr %read_in_progress to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %read_in_progress, align 4, !range !679
  %28 = zext i8 %27 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_interrupt_callback.__UNIQUE_ID_ddebug275, ptr noundef %dev25, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.208, i32 noundef %or, i32 noundef %conv60, i32 noundef %28) #11
  br label %do.end65

do.end65:                                         ; preds = %if.then58, %do.body34
  %29 = ptrtoint ptr %rxBytesAvail to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %rxBytesAvail, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp68 = icmp sgt i16 %30, 0
  br i1 %cmp68, label %land.lhs.true, label %do.end65.if.end98_crit_edge

do.end65.if.end98_crit_edge:                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98

land.lhs.true:                                    ; preds = %do.end65
  %read_in_progress70 = getelementptr inbounds %struct.edgeport_serial, ptr %1, i32 0, i32 12
  %31 = ptrtoint ptr %read_in_progress70 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %read_in_progress70, align 4, !range !679
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool71.not = icmp eq i8 %32, 0
  br i1 %tobool71.not, label %do.body73, label %land.lhs.true.if.end98_crit_edge

land.lhs.true.if.end98_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98

do.body73:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_interrupt_callback.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_interrupt_callback, %if.then85)) #11
          to label %do.end88 [label %if.then85], !srcloc !678

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_interrupt_callback.__UNIQUE_ID_ddebug276, ptr noundef %dev25, ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.208) #11
  br label %do.end88

do.end88:                                         ; preds = %if.then85, %do.body73
  %33 = ptrtoint ptr %read_in_progress70 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %read_in_progress70, align 4
  %read_urb = getelementptr inbounds %struct.edgeport_serial, ptr %1, i32 0, i32 11
  %34 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read_urb, align 4
  %call90 = tail call i32 @usb_submit_urb(ptr noundef %35, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %do.end88.if.end98_crit_edge, label %do.end95

do.end88.if.end98_crit_edge:                      ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98

do.end95:                                         ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.208, i32 noundef %call90) #15
  %36 = ptrtoint ptr %read_in_progress70 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %read_in_progress70, align 4
  br label %if.end98

if.end98:                                         ; preds = %do.end95, %do.end88.if.end98_crit_edge, %land.lhs.true.if.end98_crit_edge, %do.end65.if.end98_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %es_lock, i32 noundef %call39) #11
  br label %if.end101

if.end101:                                        ; preds = %if.end98, %if.then28.if.end101_crit_edge, %usb_serial_debug_data.exit.if.end101_crit_edge
  %sub = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp102260 = icmp sgt i32 %sub, 2
  br i1 %cmp102260, label %if.end101.land.rhs_crit_edge, label %if.end101.exit_crit_edge

if.end101.exit_crit_edge:                         ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end101.land.rhs_crit_edge:                     ; preds = %if.end101
  br label %land.rhs

land.rhs:                                         ; preds = %if.end165.land.rhs_crit_edge, %if.end101.land.rhs_crit_edge
  %position.0264 = phi i32 [ %add166, %if.end165.land.rhs_crit_edge ], [ 2, %if.end101.land.rhs_crit_edge ]
  %portNumber.0261 = phi i32 [ %inc, %if.end165.land.rhs_crit_edge ], [ 0, %if.end101.land.rhs_crit_edge ]
  %37 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %serial, align 4
  %num_ports = getelementptr inbounds %struct.usb_serial, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %num_ports, align 1
  %conv105 = zext i8 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %portNumber.0261, i32 %conv105)
  %cmp106 = icmp ult i32 %portNumber.0261, %conv105
  br i1 %cmp106, label %while.body, label %land.rhs.exit_crit_edge

land.rhs.exit_crit_edge:                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

while.body:                                       ; preds = %land.rhs
  %arrayidx108 = getelementptr i8, ptr %3, i32 %position.0264
  %41 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx108, align 1
  %conv109 = zext i8 %42 to i32
  %add110 = or i32 %position.0264, 1
  %arrayidx111 = getelementptr i8, ptr %3, i32 %add110
  %43 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx111, align 1
  %conv112 = zext i8 %44 to i32
  %shl113 = shl nuw nsw i32 %conv112, 8
  %or114 = or i32 %shl113, %conv109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or114)
  %tobool115.not = icmp eq i32 %or114, 0
  br i1 %tobool115.not, label %while.body.if.end165_crit_edge, label %if.then116

while.body.if.end165_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end165

if.then116:                                       ; preds = %while.body
  %arrayidx119 = getelementptr %struct.usb_serial, ptr %38, i32 0, i32 12, i32 %portNumber.0261
  %45 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx119, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %46, i32 0, i32 32, i32 8
  %47 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %driver_data.i.i, align 4
  %tobool121.not = icmp eq ptr %48, null
  br i1 %tobool121.not, label %if.then116.if.end165_crit_edge, label %land.lhs.true122

if.then116.if.end165_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end165

land.lhs.true122:                                 ; preds = %if.then116
  %open = getelementptr inbounds %struct.edgeport_port, ptr %48, i32 0, i32 14
  %49 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %open, align 4, !range !679
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool123.not = icmp eq i8 %50, 0
  br i1 %tobool123.not, label %land.lhs.true122.if.end165_crit_edge, label %do.body127

land.lhs.true122.if.end165_crit_edge:             ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end165

do.body127:                                       ; preds = %land.lhs.true122
  %ep_lock = getelementptr inbounds %struct.edgeport_port, ptr %48, i32 0, i32 5
  %call134 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ep_lock) #11
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %48, align 4
  %53 = trunc i32 %or114 to i16
  %conv142 = add i16 %52, %53
  store i16 %conv142, ptr %48, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ep_lock, i32 noundef %call134) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_interrupt_callback.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_interrupt_callback, %if.then156)) #11
          to label %do.end161 [label %if.then156], !srcloc !678

if.then156:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %48 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %48, align 4
  %conv158 = zext i16 %55 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_interrupt_callback.__UNIQUE_ID_ddebug277, ptr noundef %dev25, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.208, i32 noundef %portNumber.0261, i32 noundef %conv158) #11
  br label %do.end161

do.end161:                                        ; preds = %if.then156, %do.body127
  %port162 = getelementptr inbounds %struct.edgeport_port, ptr %48, i32 0, i32 22
  %56 = ptrtoint ptr %port162 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %port162, align 4
  %port163 = getelementptr inbounds %struct.usb_serial_port, ptr %57, i32 0, i32 1
  tail call void @tty_port_tty_wakeup(ptr noundef %port163) #11
  tail call fastcc void @send_more_port_data(ptr noundef %1, ptr noundef nonnull %48)
  br label %if.end165

if.end165:                                        ; preds = %do.end161, %land.lhs.true122.if.end165_crit_edge, %if.then116.if.end165_crit_edge, %while.body.if.end165_crit_edge
  %add166 = add nuw nsw i32 %position.0264, 2
  %inc = add nuw nsw i32 %portNumber.0261, 1
  %cmp102 = icmp slt i32 %add166, %sub
  br i1 %cmp102, label %if.end165.land.rhs_crit_edge, label %if.end165.exit_crit_edge

if.end165.exit_crit_edge:                         ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end165.land.rhs_crit_edge:                     ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

exit:                                             ; preds = %if.end165.exit_crit_edge, %land.rhs.exit_crit_edge, %if.end101.exit_crit_edge, %sw.epilog.exit_crit_edge, %if.then18, %do.body6
  %call168 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %exit.cleanup_crit_edge, label %do.end173

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end173:                                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev174 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %58 = ptrtoint ptr %dev174 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev174, align 4
  %dev175 = getelementptr inbounds %struct.usb_device, ptr %59, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev175, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.208, i32 noundef %call168) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end173, %exit.cleanup_crit_edge, %if.then, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edge_bulk_in_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end8, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_bulk_in_callback.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_bulk_in_callback, %if.then5)) #11
          to label %do.end [label %if.then5], !srcloc !678

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev6 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %6 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev6, align 4
  %dev7 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_bulk_in_callback.__UNIQUE_ID_ddebug278, ptr noundef %dev7, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.217, i32 noundef %5) #11
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %read_in_progress = getelementptr inbounds %struct.edgeport_serial, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %read_in_progress to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %read_in_progress, align 4
  br label %cleanup

if.end8:                                          ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %9 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %do.body10, label %if.end29

do.body10:                                        ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_bulk_in_callback.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_bulk_in_callback, %if.then22)) #11
          to label %do.end27 [label %if.then22], !srcloc !678

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  %dev23 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %11 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev23, align 4
  %dev24 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_bulk_in_callback.__UNIQUE_ID_ddebug279, ptr noundef %dev24, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.217) #11
  br label %do.end27

do.end27:                                         ; preds = %if.then22, %do.body10
  %read_in_progress28 = getelementptr inbounds %struct.edgeport_serial, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %read_in_progress28 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %read_in_progress28, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.end8
  %serial = getelementptr inbounds %struct.edgeport_serial, ptr %1, i32 0, i32 24
  %14 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %serial, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %dev31 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15
  %conv33 = and i32 %10, 65535
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_bulk_in_callback, %if.then.i)) #11
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !678

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev31, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.217, i32 noundef %conv33, i32 noundef %conv33, ptr noundef %3) #11
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %if.end29
  %es_lock = getelementptr inbounds %struct.edgeport_serial, ptr %1, i32 0, i32 13
  %call40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %es_lock) #11
  %rxBytesAvail = getelementptr inbounds %struct.edgeport_serial, ptr %1, i32 0, i32 15
  %18 = ptrtoint ptr %rxBytesAvail to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rxBytesAvail, align 2
  %20 = trunc i32 %10 to i16
  %conv47 = sub i16 %19, %20
  store i16 %conv47, ptr %rxBytesAvail, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_bulk_in_callback.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_bulk_in_callback, %if.then60)) #11
          to label %do.end66 [label %if.then60], !srcloc !678

if.then60:                                        ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %rxBytesAvail to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %rxBytesAvail, align 2
  %conv63 = sext i16 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_bulk_in_callback.__UNIQUE_ID_ddebug280, ptr noundef %dev31, ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.217, i32 noundef %conv33, i32 noundef %conv63) #11
  br label %do.end66

do.end66:                                         ; preds = %if.then60, %usb_serial_debug_data.exit
  %23 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %actual_length, align 4
  %conv68 = trunc i32 %24 to i16
  tail call fastcc void @process_rcvd_data(ptr noundef %1, ptr noundef %3, i16 noundef zeroext %conv68)
  %25 = ptrtoint ptr %rxBytesAvail to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %rxBytesAvail, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp71 = icmp sgt i16 %26, 0
  br i1 %cmp71, label %do.body74, label %do.end66.if.end99.sink.split_crit_edge

do.end66.if.end99.sink.split_crit_edge:           ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99.sink.split

do.body74:                                        ; preds = %do.end66
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_bulk_in_callback.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_bulk_in_callback, %if.then86)) #11
          to label %do.end89 [label %if.then86], !srcloc !678

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_bulk_in_callback.__UNIQUE_ID_ddebug281, ptr noundef %dev31, ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.217) #11
  br label %do.end89

do.end89:                                         ; preds = %if.then86, %do.body74
  %read_urb = getelementptr inbounds %struct.edgeport_serial, ptr %1, i32 0, i32 11
  %27 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read_urb, align 4
  %call90 = tail call i32 @usb_submit_urb(ptr noundef %28, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %do.end89.if.end99_crit_edge, label %do.end95

do.end89.if.end99_crit_edge:                      ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

do.end95:                                         ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.217, i32 noundef %call90) #15
  br label %if.end99.sink.split

if.end99.sink.split:                              ; preds = %do.end95, %do.end66.if.end99.sink.split_crit_edge
  %read_in_progress96 = getelementptr inbounds %struct.edgeport_serial, ptr %1, i32 0, i32 12
  %29 = ptrtoint ptr %read_in_progress96 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %read_in_progress96, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.end99.sink.split, %do.end89.if.end99_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %es_lock, i32 noundef %call40) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %do.end27, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edge_bulk_out_data_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %do.body

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_bulk_out_data_callback.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_bulk_out_data_callback, %if.then5)) #11
          to label %if.end7 [label %if.then5], !srcloc !678

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %dev6 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_bulk_out_data_callback.__UNIQUE_ID_ddebug282, ptr noundef %dev6, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.238, i32 noundef %3) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.body, %entry.if.end7_crit_edge
  %open = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %open, align 4, !range !679
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not = icmp eq i8 %7, 0
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %port = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port, align 4
  %port10 = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 1
  tail call void @tty_port_tty_wakeup(ptr noundef %port10) #11
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  %write_in_progress = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %write_in_progress to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %write_in_progress, align 4
  %port12 = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 22
  %11 = ptrtoint ptr %port12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port12, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private.i, align 4
  tail call fastcc void @send_more_port_data(ptr noundef %16, ptr noundef %1)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_epic_descriptor(ptr noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %serial1 = getelementptr inbounds %struct.edgeport_serial, ptr %ep, i32 0, i32 24
  %0 = ptrtoint ptr %serial1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial1, align 4
  %product_info2 = getelementptr inbounds %struct.edgeport_serial, ptr %ep, i32 0, i32 3
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %is_epic = getelementptr inbounds %struct.edgeport_serial, ptr %ep, i32 0, i32 5
  %4 = ptrtoint ptr %is_epic to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %is_epic, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 24) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i = shl i32 %9, 8
  %or8 = or i32 %shl.i, -2147483520
  %call9 = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or8, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 24, i32 noundef 300) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %call9)
  %cmp = icmp eq i32 %call9, 24
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  %10 = ptrtoint ptr %is_epic to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %is_epic, align 4
  %epic_descriptor = getelementptr inbounds %struct.edgeport_serial, ptr %ep, i32 0, i32 4
  %11 = call ptr @memcpy(ptr %epic_descriptor, ptr %call7.i, i32 24)
  %12 = getelementptr inbounds %struct.edgeport_serial, ptr %ep, i32 0, i32 3, i32 3
  %13 = call ptr @memset(ptr %12, i32 0, i32 24)
  %NumPorts = getelementptr inbounds %struct.edge_compatibility_descriptor, ptr %call7.i, i32 0, i32 3
  %14 = ptrtoint ptr %NumPorts to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %NumPorts, align 1
  %NumPorts12 = getelementptr inbounds %struct.edgeport_serial, ptr %ep, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %NumPorts12 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %NumPorts12, align 2
  %ProdInfoVer = getelementptr inbounds %struct.edgeport_serial, ptr %ep, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %ProdInfoVer to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %ProdInfoVer, align 1
  %MajorVersion = getelementptr inbounds %struct.edge_compatibility_descriptor, ptr %call7.i, i32 0, i32 6
  %18 = ptrtoint ptr %MajorVersion to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %MajorVersion, align 8
  %FirmwareMajorVersion = getelementptr inbounds %struct.edgeport_serial, ptr %ep, i32 0, i32 3, i32 11
  %20 = ptrtoint ptr %FirmwareMajorVersion to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %FirmwareMajorVersion, align 4
  %MinorVersion = getelementptr inbounds %struct.edge_compatibility_descriptor, ptr %call7.i, i32 0, i32 7
  %21 = ptrtoint ptr %MinorVersion to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %MinorVersion, align 1
  %FirmwareMinorVersion = getelementptr inbounds %struct.edgeport_serial, ptr %ep, i32 0, i32 3, i32 12
  %23 = ptrtoint ptr %FirmwareMinorVersion to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %FirmwareMinorVersion, align 1
  %BuildNumber = getelementptr inbounds %struct.edge_compatibility_descriptor, ptr %call7.i, i32 0, i32 8
  %24 = ptrtoint ptr %BuildNumber to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %BuildNumber, align 2
  %FirmwareBuildNumber = getelementptr inbounds %struct.edgeport_serial, ptr %ep, i32 0, i32 3, i32 13
  %26 = ptrtoint ptr %FirmwareBuildNumber to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %FirmwareBuildNumber, align 2
  %iDownloadFile = getelementptr inbounds %struct.edge_compatibility_descriptor, ptr %call7.i, i32 0, i32 4
  %27 = ptrtoint ptr %iDownloadFile to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %iDownloadFile, align 4
  %iDownloadFile13 = getelementptr inbounds %struct.edgeport_serial, ptr %ep, i32 0, i32 3, i32 16
  %29 = ptrtoint ptr %iDownloadFile13 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %iDownloadFile13, align 4
  %EpicVer = getelementptr inbounds %struct.edge_compatibility_descriptor, ptr %call7.i, i32 0, i32 2
  %30 = ptrtoint ptr %EpicVer to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %EpicVer, align 2
  %EpicVer14 = getelementptr inbounds %struct.edgeport_serial, ptr %ep, i32 0, i32 3, i32 17
  %32 = ptrtoint ptr %EpicVer14 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %EpicVer14, align 1
  %Epic = getelementptr inbounds %struct.edgeport_serial, ptr %ep, i32 0, i32 3, i32 19
  %Supports = getelementptr inbounds %struct.edge_compatibility_descriptor, ptr %call7.i, i32 0, i32 9
  %33 = call ptr @memcpy(ptr %Epic, ptr %Supports, i32 12)
  %34 = ptrtoint ptr %product_info2 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 19, ptr %product_info2, align 4
  tail call fastcc void @dump_product_info(ptr noundef %ep, ptr noundef %product_info2)
  %Supports16 = getelementptr inbounds %struct.edgeport_serial, ptr %ep, i32 0, i32 4, i32 9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_epic_descriptor.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_epic_descriptor, %if.then21)) #11
          to label %do.body23 [label %if.then21], !srcloc !678

if.then21:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_epic_descriptor.__UNIQUE_ID_ddebug259, ptr noundef %dev4, ptr noundef nonnull @.str.28) #11
  br label %do.body23

do.body23:                                        ; preds = %if.then21, %if.then10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_epic_descriptor.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_epic_descriptor, %if.then35)) #11
          to label %do.body40 [label %if.then35], !srcloc !678

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %Supports16 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 12)
  %bf.load = load i96, ptr %Supports16, align 4
  %tobool36.not = icmp sgt i96 %bf.load, -1
  %cond = select i1 %tobool36.not, ptr @.str.31, ptr @.str.30
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_epic_descriptor.__UNIQUE_ID_ddebug260, ptr noundef %dev4, ptr noundef nonnull @.str.29, ptr noundef nonnull %cond) #11
  br label %do.body40

do.body40:                                        ; preds = %if.then35, %do.body23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_epic_descriptor.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_epic_descriptor, %if.then52)) #11
          to label %do.body61 [label %if.then52], !srcloc !678

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %Supports16 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 12)
  %bf.load53 = load i96, ptr %Supports16, align 4
  %37 = and i96 %bf.load53, 9223372036854775808
  %tobool56.not = icmp eq i96 %37, 0
  %cond57 = select i1 %tobool56.not, ptr @.str.31, ptr @.str.30
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_epic_descriptor.__UNIQUE_ID_ddebug261, ptr noundef %dev4, ptr noundef nonnull @.str.32, ptr noundef nonnull %cond57) #11
  br label %do.body61

do.body61:                                        ; preds = %if.then52, %do.body40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_epic_descriptor.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_epic_descriptor, %if.then73)) #11
          to label %do.body83 [label %if.then73], !srcloc !678

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %Supports16 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 12)
  %bf.load74 = load i96, ptr %Supports16, align 4
  %39 = and i96 %bf.load74, 4611686018427387904
  %tobool78.not = icmp eq i96 %39, 0
  %cond79 = select i1 %tobool78.not, ptr @.str.31, ptr @.str.30
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_epic_descriptor.__UNIQUE_ID_ddebug262, ptr noundef %dev4, ptr noundef nonnull @.str.33, ptr noundef nonnull %cond79) #11
  br label %do.body83

do.body83:                                        ; preds = %if.then73, %do.body61
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_epic_descriptor.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_epic_descriptor, %if.then95)) #11
          to label %do.body105 [label %if.then95], !srcloc !678

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %Supports16 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 12)
  %bf.load96 = load i96, ptr %Supports16, align 4
  %41 = and i96 %bf.load96, 2305843009213693952
  %tobool100.not = icmp eq i96 %41, 0
  %cond101 = select i1 %tobool100.not, ptr @.str.31, ptr @.str.30
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_epic_descriptor.__UNIQUE_ID_ddebug263, ptr noundef %dev4, ptr noundef nonnull @.str.34, ptr noundef nonnull %cond101) #11
  br label %do.body105

do.body105:                                       ; preds = %if.then95, %do.body83
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_epic_descriptor.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_epic_descriptor, %if.then117)) #11
          to label %do.body127 [label %if.then117], !srcloc !678

if.then117:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %Supports16 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 12)
  %bf.load118 = load i96, ptr %Supports16, align 4
  %43 = and i96 %bf.load118, 1152921504606846976
  %tobool122.not = icmp eq i96 %43, 0
  %cond123 = select i1 %tobool122.not, ptr @.str.31, ptr @.str.30
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_epic_descriptor.__UNIQUE_ID_ddebug264, ptr noundef %dev4, ptr noundef nonnull @.str.35, ptr noundef nonnull %cond123) #11
  br label %do.body127

do.body127:                                       ; preds = %if.then117, %do.body105
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_epic_descriptor.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_epic_descriptor, %if.then139)) #11
          to label %do.body149 [label %if.then139], !srcloc !678

if.then139:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %Supports16 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 12)
  %bf.load140 = load i96, ptr %Supports16, align 4
  %45 = and i96 %bf.load140, 576460752303423488
  %tobool144.not = icmp eq i96 %45, 0
  %cond145 = select i1 %tobool144.not, ptr @.str.31, ptr @.str.30
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_epic_descriptor.__UNIQUE_ID_ddebug265, ptr noundef %dev4, ptr noundef nonnull @.str.36, ptr noundef nonnull %cond145) #11
  br label %do.body149

do.body149:                                       ; preds = %if.then139, %do.body127
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_epic_descriptor.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_epic_descriptor, %if.then161)) #11
          to label %do.body171 [label %if.then161], !srcloc !678

if.then161:                                       ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %Supports16 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 12)
  %bf.load162 = load i96, ptr %Supports16, align 4
  %47 = and i96 %bf.load162, 288230376151711744
  %tobool166.not = icmp eq i96 %47, 0
  %cond167 = select i1 %tobool166.not, ptr @.str.31, ptr @.str.30
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_epic_descriptor.__UNIQUE_ID_ddebug266, ptr noundef %dev4, ptr noundef nonnull @.str.37, ptr noundef nonnull %cond167) #11
  br label %do.body171

do.body171:                                       ; preds = %if.then161, %do.body149
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_epic_descriptor.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_epic_descriptor, %if.then183)) #11
          to label %do.body193 [label %if.then183], !srcloc !678

if.then183:                                       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %Supports16 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 12)
  %bf.load184 = load i96, ptr %Supports16, align 4
  %49 = and i96 %bf.load184, 144115188075855872
  %tobool188.not = icmp eq i96 %49, 0
  %cond189 = select i1 %tobool188.not, ptr @.str.31, ptr @.str.30
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_epic_descriptor.__UNIQUE_ID_ddebug267, ptr noundef %dev4, ptr noundef nonnull @.str.38, ptr noundef nonnull %cond189) #11
  br label %do.body193

do.body193:                                       ; preds = %if.then183, %do.body171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_epic_descriptor.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_epic_descriptor, %if.then205)) #11
          to label %do.body215 [label %if.then205], !srcloc !678

if.then205:                                       ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %Supports16 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 12)
  %bf.load206 = load i96, ptr %Supports16, align 4
  %51 = and i96 %bf.load206, 72057594037927936
  %tobool210.not = icmp eq i96 %51, 0
  %cond211 = select i1 %tobool210.not, ptr @.str.31, ptr @.str.30
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_epic_descriptor.__UNIQUE_ID_ddebug268, ptr noundef %dev4, ptr noundef nonnull @.str.39, ptr noundef nonnull %cond211) #11
  br label %do.body215

do.body215:                                       ; preds = %if.then205, %do.body193
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_epic_descriptor.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_epic_descriptor, %if.then227)) #11
          to label %do.body237 [label %if.then227], !srcloc !678

if.then227:                                       ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %Supports16 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 12)
  %bf.load228 = load i96, ptr %Supports16, align 4
  %53 = and i96 %bf.load228, 36028797018963968
  %tobool232.not = icmp eq i96 %53, 0
  %cond233 = select i1 %tobool232.not, ptr @.str.31, ptr @.str.30
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_epic_descriptor.__UNIQUE_ID_ddebug269, ptr noundef %dev4, ptr noundef nonnull @.str.40, ptr noundef nonnull %cond233) #11
  br label %do.body237

do.body237:                                       ; preds = %if.then227, %do.body215
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_epic_descriptor.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_epic_descriptor, %if.then249)) #11
          to label %do.body259 [label %if.then249], !srcloc !678

if.then249:                                       ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %Supports16 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 12)
  %bf.load250 = load i96, ptr %Supports16, align 4
  %55 = and i96 %bf.load250, 18014398509481984
  %tobool254.not = icmp eq i96 %55, 0
  %cond255 = select i1 %tobool254.not, ptr @.str.31, ptr @.str.30
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_epic_descriptor.__UNIQUE_ID_ddebug270, ptr noundef %dev4, ptr noundef nonnull @.str.41, ptr noundef nonnull %cond255) #11
  br label %do.body259

do.body259:                                       ; preds = %if.then249, %do.body237
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_epic_descriptor.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_epic_descriptor, %if.then271)) #11
          to label %do.body281 [label %if.then271], !srcloc !678

if.then271:                                       ; preds = %do.body259
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %Supports16 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 12)
  %bf.load272 = load i96, ptr %Supports16, align 4
  %57 = and i96 %bf.load272, 9007199254740992
  %tobool276.not = icmp eq i96 %57, 0
  %cond277 = select i1 %tobool276.not, ptr @.str.31, ptr @.str.30
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_epic_descriptor.__UNIQUE_ID_ddebug271, ptr noundef %dev4, ptr noundef nonnull @.str.42, ptr noundef nonnull %cond277) #11
  br label %do.body281

do.body281:                                       ; preds = %if.then271, %do.body259
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_epic_descriptor.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_epic_descriptor, %if.then293)) #11
          to label %if.end310 [label %if.then293], !srcloc !678

if.then293:                                       ; preds = %do.body281
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %Supports16 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 12)
  %bf.load294 = load i96, ptr %Supports16, align 4
  %59 = and i96 %bf.load294, 2147483648
  %tobool298.not = icmp eq i96 %59, 0
  %cond299 = select i1 %tobool298.not, ptr @.str.31, ptr @.str.30
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_epic_descriptor.__UNIQUE_ID_ddebug272, ptr noundef %dev4, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond299) #11
  br label %if.end310

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9)
  %cmp303 = icmp sgt i32 %call9, -1
  br i1 %cmp303, label %do.end307, label %if.else.if.end310_crit_edge

if.else.if.end310_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end310

do.end307:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %interface = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 2
  %60 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %interface, align 4
  %dev308 = getelementptr inbounds %struct.usb_interface, ptr %61, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev308, ptr noundef nonnull @.str.44, i32 noundef %call9) #15
  br label %if.end310

if.end310:                                        ; preds = %do.end307, %if.else.if.end310_crit_edge, %if.then293, %do.body281
  %result.0 = phi i32 [ -5, %do.end307 ], [ %call9, %if.else.if.end310_crit_edge ], [ 0, %if.then293 ], [ 0, %do.body281 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end310, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.0, %if.end310 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_manufacturing_desc(ptr nocapture noundef %edge_serial) unnamed_addr #2 align 64 {
entry:
  %string = alloca [30 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %serial = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 24
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_manufacturing_desc.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_manufacturing_desc, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !678

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_manufacturing_desc.__UNIQUE_ID_ddebug361, ptr noundef %dev2, ptr noundef nonnull @.str.63) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serial, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 64) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %do.end.do.end10_crit_edge, label %while.body.i.preheader

do.end.do.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

while.body.i.preheader:                           ; preds = %do.end
  %manuf_descriptor = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end19.i.while.body.i_crit_edge, %while.body.i.preheader
  %data.addr.04.i = phi ptr [ %add.ptr.i, %if.end19.i.while.body.i_crit_edge ], [ %manuf_descriptor, %while.body.i.preheader ]
  %length.addr.03.i = phi i16 [ %sub.i, %if.end19.i.while.body.i_crit_edge ], [ 960, %while.body.i.preheader ]
  %addr.addr.02.i = phi i16 [ %add.i, %if.end19.i.while.body.i_crit_edge ], [ 31744, %while.body.i.preheader ]
  %7 = tail call i16 @llvm.umin.i16(i16 %length.addr.03.i, i16 64) #11
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i = shl i32 %11, 8
  %or9.i = or i32 %shl.i.i, -2147483520
  %call10.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or9.i, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext %addr.addr.02.i, i16 noundef zeroext 255, ptr noundef nonnull %call7.i.i, i16 noundef zeroext %7, i32 noundef 300) #11
  %conv11.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call10.i, i32 %conv11.i)
  %cmp12.i = icmp slt i32 %call10.i, %conv11.i
  br i1 %cmp12.i, label %if.then14.i, label %if.end19.i

if.then14.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10.i)
  %cmp15.i = icmp sgt i32 %call10.i, -1
  %spec.select = select i1 %cmp15.i, i32 -5, i32 %call10.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %do.end10

if.end19.i:                                       ; preds = %while.body.i
  %12 = call ptr @memcpy(ptr %data.addr.04.i, ptr %call7.i.i, i32 %conv11.i)
  %sub.i = sub i16 %length.addr.03.i, %7
  %add.i = add i16 %7, %addr.addr.02.i
  %add.ptr.i = getelementptr i8, ptr %data.addr.04.i, i32 %conv11.i
  %cmp.not.i = icmp eq i16 %sub.i, 0
  br i1 %cmp.not.i, label %if.else, label %if.end19.i.while.body.i_crit_edge

if.end19.i.while.body.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

do.end10:                                         ; preds = %if.then14.i, %do.end.do.end10_crit_edge
  %retval.0.i337367 = phi i32 [ %spec.select, %if.then14.i ], [ -12, %do.end.do.end10_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.64, i32 noundef %retval.0.i337367) #15
  br label %if.end263

if.else:                                          ; preds = %if.end19.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %string) #11
  %13 = call ptr @memset(ptr %string, i32 255, i32 30)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_manufacturing_desc.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_manufacturing_desc, %if.then23)) #11
          to label %do.body27 [label %if.then23], !srcloc !678

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_manufacturing_desc.__UNIQUE_ID_ddebug362, ptr noundef %dev2, ptr noundef nonnull @.str.65) #11
  br label %do.body27

do.body27:                                        ; preds = %if.then23, %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_manufacturing_desc.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_manufacturing_desc, %if.then39)) #11
          to label %do.body44 [label %if.then39], !srcloc !678

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #13
  %RomSize = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 1, i32 6
  %14 = ptrtoint ptr %RomSize to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %RomSize, align 2
  %conv = zext i8 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_manufacturing_desc.__UNIQUE_ID_ddebug363, ptr noundef %dev2, ptr noundef nonnull @.str.66, i32 noundef %conv) #11
  br label %do.body44

do.body44:                                        ; preds = %if.then39, %do.body27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_manufacturing_desc.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_manufacturing_desc, %if.then56)) #11
          to label %do.body62 [label %if.then56], !srcloc !678

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #13
  %RamSize = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 1, i32 7
  %16 = ptrtoint ptr %RamSize to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %RamSize, align 1
  %conv58 = zext i8 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_manufacturing_desc.__UNIQUE_ID_ddebug364, ptr noundef %dev2, ptr noundef nonnull @.str.67, i32 noundef %conv58) #11
  br label %do.body62

do.body62:                                        ; preds = %if.then56, %do.body44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_manufacturing_desc.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_manufacturing_desc, %if.then74)) #11
          to label %do.body80 [label %if.then74], !srcloc !678

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #13
  %CpuRev = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 1, i32 8
  %18 = ptrtoint ptr %CpuRev to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %CpuRev, align 2
  %conv76 = zext i8 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_manufacturing_desc.__UNIQUE_ID_ddebug365, ptr noundef %dev2, ptr noundef nonnull @.str.68, i32 noundef %conv76) #11
  br label %do.body80

do.body80:                                        ; preds = %if.then74, %do.body62
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_manufacturing_desc.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_manufacturing_desc, %if.then92)) #11
          to label %do.body98 [label %if.then92], !srcloc !678

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #13
  %BoardRev = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 1, i32 9
  %20 = ptrtoint ptr %BoardRev to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %BoardRev, align 1
  %conv94 = zext i8 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_manufacturing_desc.__UNIQUE_ID_ddebug366, ptr noundef %dev2, ptr noundef nonnull @.str.69, i32 noundef %conv94) #11
  br label %do.body98

do.body98:                                        ; preds = %if.then92, %do.body80
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_manufacturing_desc.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_manufacturing_desc, %if.then110)) #11
          to label %do.body116 [label %if.then110], !srcloc !678

if.then110:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #13
  %NumPorts = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 1, i32 10
  %22 = ptrtoint ptr %NumPorts to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %NumPorts, align 2
  %conv112 = zext i8 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_manufacturing_desc.__UNIQUE_ID_ddebug367, ptr noundef %dev2, ptr noundef nonnull @.str.70, i32 noundef %conv112) #11
  br label %do.body116

do.body116:                                       ; preds = %if.then110, %do.body98
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_manufacturing_desc.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_manufacturing_desc, %if.then128)) #11
          to label %do.end141 [label %if.then128], !srcloc !678

if.then128:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #13
  %DescDate = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 1, i32 11
  %24 = ptrtoint ptr %DescDate to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %DescDate, align 1
  %conv130 = zext i8 %25 to i32
  %arrayidx133 = getelementptr %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 1, i32 11, i32 1
  %26 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx133, align 1
  %conv134 = zext i8 %27 to i32
  %arrayidx137 = getelementptr %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 1, i32 11, i32 2
  %28 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx137, align 1
  %conv138 = zext i8 %29 to i32
  %add = add nuw nsw i32 %conv138, 1900
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_manufacturing_desc.__UNIQUE_ID_ddebug368, ptr noundef %dev2, ptr noundef nonnull @.str.71, i32 noundef %conv130, i32 noundef %conv134, i32 noundef %add) #11
  br label %do.end141

do.end141:                                        ; preds = %if.then128, %do.body116
  %SerialNumber = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 1, i32 14
  %SerNumLength = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 1, i32 12
  %30 = ptrtoint ptr %SerNumLength to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %SerNumLength, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %31)
  %cmp11.i = icmp ult i8 %31, 2
  br i1 %cmp11.i, label %do.end141.unicode_to_ascii.exit_crit_edge, label %if.end4.preheader.i

do.end141.unicode_to_ascii.exit_crit_edge:        ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #13
  br label %unicode_to_ascii.exit

if.end4.preheader.i:                              ; preds = %do.end141
  %32 = lshr i8 %31, 1
  %div = zext i8 %32 to i32
  %33 = add nsw i32 %div, -1
  %umin.i = tail call i32 @llvm.umin.i32(i32 %33, i32 28) #11
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end4.i.if.end4.i_crit_edge, %if.end4.preheader.i
  %i.02.i = phi i32 [ %inc.i, %if.end4.i.if.end4.i_crit_edge ], [ 0, %if.end4.preheader.i ]
  %arrayidx.i = getelementptr i16, ptr %SerialNumber, i32 %i.02.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx.i, align 2
  %36 = lshr i16 %35, 8
  %conv.i = trunc i16 %36 to i8
  %arrayidx5.i = getelementptr i8, ptr %string, i32 %i.02.i
  %37 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv.i, ptr %arrayidx5.i, align 1
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.i = icmp eq i32 %i.02.i, %umin.i
  br i1 %exitcond.i, label %unicode_to_ascii.exit.loopexit, label %if.end4.i.if.end4.i_crit_edge

if.end4.i.if.end4.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

unicode_to_ascii.exit.loopexit:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %38 = add nuw nsw i32 %umin.i, 1
  br label %unicode_to_ascii.exit

unicode_to_ascii.exit:                            ; preds = %unicode_to_ascii.exit.loopexit, %do.end141.unicode_to_ascii.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %do.end141.unicode_to_ascii.exit_crit_edge ], [ %38, %unicode_to_ascii.exit.loopexit ]
  %arrayidx6.i = getelementptr i8, ptr %string, i32 %i.0.lcssa.i
  %39 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx6.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_manufacturing_desc.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_manufacturing_desc, %if.then158)) #11
          to label %do.end162 [label %if.then158], !srcloc !678

if.then158:                                       ; preds = %unicode_to_ascii.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_manufacturing_desc.__UNIQUE_ID_ddebug369, ptr noundef %dev2, ptr noundef nonnull @.str.72, ptr noundef nonnull %string) #11
  br label %do.end162

do.end162:                                        ; preds = %if.then158, %unicode_to_ascii.exit
  %AssemblyNumber = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 1, i32 17
  %AssemblyNumLength = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 1, i32 15
  %40 = ptrtoint ptr %AssemblyNumLength to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %AssemblyNumLength, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %41)
  %cmp11.i338 = icmp ult i8 %41, 2
  br i1 %cmp11.i338, label %do.end162.unicode_to_ascii.exit350_crit_edge, label %if.end4.preheader.i340

do.end162.unicode_to_ascii.exit350_crit_edge:     ; preds = %do.end162
  call void @__sanitizer_cov_trace_pc() #13
  br label %unicode_to_ascii.exit350

if.end4.preheader.i340:                           ; preds = %do.end162
  %42 = lshr i8 %41, 1
  %div168 = zext i8 %42 to i32
  %43 = add nsw i32 %div168, -1
  %umin.i339 = call i32 @llvm.umin.i32(i32 %43, i32 28) #11
  br label %if.end4.i347

if.end4.i347:                                     ; preds = %if.end4.i347.if.end4.i347_crit_edge, %if.end4.preheader.i340
  %i.02.i341 = phi i32 [ %inc.i345, %if.end4.i347.if.end4.i347_crit_edge ], [ 0, %if.end4.preheader.i340 ]
  %arrayidx.i342 = getelementptr i16, ptr %AssemblyNumber, i32 %i.02.i341
  %44 = ptrtoint ptr %arrayidx.i342 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx.i342, align 2
  %46 = lshr i16 %45, 8
  %conv.i343 = trunc i16 %46 to i8
  %arrayidx5.i344 = getelementptr i8, ptr %string, i32 %i.02.i341
  %47 = ptrtoint ptr %arrayidx5.i344 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv.i343, ptr %arrayidx5.i344, align 1
  %inc.i345 = add nuw nsw i32 %i.02.i341, 1
  %exitcond.i346 = icmp eq i32 %i.02.i341, %umin.i339
  br i1 %exitcond.i346, label %unicode_to_ascii.exit350.loopexit, label %if.end4.i347.if.end4.i347_crit_edge

if.end4.i347.if.end4.i347_crit_edge:              ; preds = %if.end4.i347
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i347

unicode_to_ascii.exit350.loopexit:                ; preds = %if.end4.i347
  call void @__sanitizer_cov_trace_pc() #13
  %48 = add nuw nsw i32 %umin.i339, 1
  br label %unicode_to_ascii.exit350

unicode_to_ascii.exit350:                         ; preds = %unicode_to_ascii.exit350.loopexit, %do.end162.unicode_to_ascii.exit350_crit_edge
  %i.0.lcssa.i348 = phi i32 [ 0, %do.end162.unicode_to_ascii.exit350_crit_edge ], [ %48, %unicode_to_ascii.exit350.loopexit ]
  %arrayidx6.i349 = getelementptr i8, ptr %string, i32 %i.0.lcssa.i348
  %49 = ptrtoint ptr %arrayidx6.i349 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %arrayidx6.i349, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_manufacturing_desc.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_manufacturing_desc, %if.then181)) #11
          to label %do.end185 [label %if.then181], !srcloc !678

if.then181:                                       ; preds = %unicode_to_ascii.exit350
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_manufacturing_desc.__UNIQUE_ID_ddebug370, ptr noundef %dev2, ptr noundef nonnull @.str.73, ptr noundef nonnull %string) #11
  br label %do.end185

do.end185:                                        ; preds = %if.then181, %unicode_to_ascii.exit350
  %OemAssyNumber = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 1, i32 20
  %OemAssyNumLength = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 1, i32 18
  %50 = ptrtoint ptr %OemAssyNumLength to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %OemAssyNumLength, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %51)
  %cmp11.i351 = icmp ult i8 %51, 2
  br i1 %cmp11.i351, label %do.end185.unicode_to_ascii.exit363_crit_edge, label %if.end4.preheader.i353

do.end185.unicode_to_ascii.exit363_crit_edge:     ; preds = %do.end185
  call void @__sanitizer_cov_trace_pc() #13
  br label %unicode_to_ascii.exit363

if.end4.preheader.i353:                           ; preds = %do.end185
  %52 = lshr i8 %51, 1
  %div191 = zext i8 %52 to i32
  %53 = add nsw i32 %div191, -1
  %umin.i352 = call i32 @llvm.umin.i32(i32 %53, i32 28) #11
  br label %if.end4.i360

if.end4.i360:                                     ; preds = %if.end4.i360.if.end4.i360_crit_edge, %if.end4.preheader.i353
  %i.02.i354 = phi i32 [ %inc.i358, %if.end4.i360.if.end4.i360_crit_edge ], [ 0, %if.end4.preheader.i353 ]
  %arrayidx.i355 = getelementptr i16, ptr %OemAssyNumber, i32 %i.02.i354
  %54 = ptrtoint ptr %arrayidx.i355 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx.i355, align 2
  %56 = lshr i16 %55, 8
  %conv.i356 = trunc i16 %56 to i8
  %arrayidx5.i357 = getelementptr i8, ptr %string, i32 %i.02.i354
  %57 = ptrtoint ptr %arrayidx5.i357 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv.i356, ptr %arrayidx5.i357, align 1
  %inc.i358 = add nuw nsw i32 %i.02.i354, 1
  %exitcond.i359 = icmp eq i32 %i.02.i354, %umin.i352
  br i1 %exitcond.i359, label %unicode_to_ascii.exit363.loopexit, label %if.end4.i360.if.end4.i360_crit_edge

if.end4.i360.if.end4.i360_crit_edge:              ; preds = %if.end4.i360
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i360

unicode_to_ascii.exit363.loopexit:                ; preds = %if.end4.i360
  call void @__sanitizer_cov_trace_pc() #13
  %58 = add nuw nsw i32 %umin.i352, 1
  br label %unicode_to_ascii.exit363

unicode_to_ascii.exit363:                         ; preds = %unicode_to_ascii.exit363.loopexit, %do.end185.unicode_to_ascii.exit363_crit_edge
  %i.0.lcssa.i361 = phi i32 [ 0, %do.end185.unicode_to_ascii.exit363_crit_edge ], [ %58, %unicode_to_ascii.exit363.loopexit ]
  %arrayidx6.i362 = getelementptr i8, ptr %string, i32 %i.0.lcssa.i361
  %59 = ptrtoint ptr %arrayidx6.i362 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %arrayidx6.i362, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_manufacturing_desc.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_manufacturing_desc, %if.then204)) #11
          to label %do.body209 [label %if.then204], !srcloc !678

if.then204:                                       ; preds = %unicode_to_ascii.exit363
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_manufacturing_desc.__UNIQUE_ID_ddebug371, ptr noundef %dev2, ptr noundef nonnull @.str.74, ptr noundef nonnull %string) #11
  br label %do.body209

do.body209:                                       ; preds = %if.then204, %unicode_to_ascii.exit363
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_manufacturing_desc.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_manufacturing_desc, %if.then221)) #11
          to label %do.body227 [label %if.then221], !srcloc !678

if.then221:                                       ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #13
  %UartType = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 1, i32 25
  %60 = ptrtoint ptr %UartType to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %UartType, align 1
  %conv223 = zext i8 %61 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_manufacturing_desc.__UNIQUE_ID_ddebug372, ptr noundef %dev2, ptr noundef nonnull @.str.75, i32 noundef %conv223) #11
  br label %do.body227

do.body227:                                       ; preds = %if.then221, %do.body209
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_manufacturing_desc.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_manufacturing_desc, %if.then239)) #11
          to label %do.body245 [label %if.then239], !srcloc !678

if.then239:                                       ; preds = %do.body227
  call void @__sanitizer_cov_trace_pc() #13
  %IonPid = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 1, i32 26
  %62 = ptrtoint ptr %IonPid to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %IonPid, align 2
  %conv241 = zext i8 %63 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_manufacturing_desc.__UNIQUE_ID_ddebug373, ptr noundef %dev2, ptr noundef nonnull @.str.76, i32 noundef %conv241) #11
  br label %do.body245

do.body245:                                       ; preds = %if.then239, %do.body227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_manufacturing_desc.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_manufacturing_desc, %if.then257)) #11
          to label %do.end262 [label %if.then257], !srcloc !678

if.then257:                                       ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #13
  %IonConfig = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 1, i32 27
  %64 = ptrtoint ptr %IonConfig to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %IonConfig, align 1
  %conv259 = zext i8 %65 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_manufacturing_desc.__UNIQUE_ID_ddebug374, ptr noundef %dev2, ptr noundef nonnull @.str.77, i32 noundef %conv259) #11
  br label %do.end262

do.end262:                                        ; preds = %if.then257, %do.body245
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %string) #11
  br label %if.end263

if.end263:                                        ; preds = %do.end262, %do.end10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_boot_desc(ptr nocapture noundef %edge_serial) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %serial = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 24
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_boot_desc.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_boot_desc, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !678

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_boot_desc.__UNIQUE_ID_ddebug375, ptr noundef %dev2, ptr noundef nonnull @.str.79) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serial, align 4
  %boot_descriptor = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 64) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %do.end.do.end10_crit_edge, label %while.body.i.preheader

do.end.do.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

while.body.i.preheader:                           ; preds = %do.end
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i = shl i32 %10, 8
  %or9.i = or i32 %shl.i.i, -2147483520
  %call10.i = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or9.i, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext 32704, i16 noundef zeroext 255, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 64, i32 noundef 300) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call10.i)
  %cmp12.i = icmp slt i32 %call10.i, 64
  br i1 %cmp12.i, label %if.then14.i, label %if.end19.i

if.then14.i:                                      ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10.i)
  %cmp15.i = icmp sgt i32 %call10.i, -1
  %spec.select = select i1 %cmp15.i, i32 -5, i32 %call10.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %do.end10

if.end19.i:                                       ; preds = %while.body.i.preheader
  %11 = call ptr @memcpy(ptr %boot_descriptor, ptr %call7.i.i, i32 64)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_boot_desc.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_boot_desc, %if.then23)) #11
          to label %do.body27 [label %if.then23], !srcloc !678

do.end10:                                         ; preds = %if.then14.i, %do.end.do.end10_crit_edge
  %retval.0.i196200 = phi i32 [ %spec.select, %if.then14.i ], [ -12, %do.end.do.end10_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.80, i32 noundef %retval.0.i196200) #15
  br label %if.end152

if.then23:                                        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_boot_desc.__UNIQUE_ID_ddebug376, ptr noundef %dev2, ptr noundef nonnull @.str.81) #11
  br label %do.body27

do.body27:                                        ; preds = %if.then23, %if.end19.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_boot_desc.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_boot_desc, %if.then39)) #11
          to label %do.body44 [label %if.then39], !srcloc !678

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #13
  %BootCodeLength = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %BootCodeLength to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %BootCodeLength, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv = zext i16 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_boot_desc.__UNIQUE_ID_ddebug377, ptr noundef %dev2, ptr noundef nonnull @.str.82, i32 noundef %conv) #11
  br label %do.body44

do.body44:                                        ; preds = %if.then39, %do.body27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_boot_desc.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_boot_desc, %if.then56)) #11
          to label %do.body62 [label %if.then56], !srcloc !678

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #13
  %MajorVersion = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 2, i32 5
  %15 = ptrtoint ptr %MajorVersion to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %MajorVersion, align 2
  %conv58 = zext i8 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_boot_desc.__UNIQUE_ID_ddebug378, ptr noundef %dev2, ptr noundef nonnull @.str.83, i32 noundef %conv58) #11
  br label %do.body62

do.body62:                                        ; preds = %if.then56, %do.body44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_boot_desc.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_boot_desc, %if.then74)) #11
          to label %do.body80 [label %if.then74], !srcloc !678

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #13
  %MinorVersion = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 2, i32 6
  %17 = ptrtoint ptr %MinorVersion to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %MinorVersion, align 1
  %conv76 = zext i8 %18 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_boot_desc.__UNIQUE_ID_ddebug379, ptr noundef %dev2, ptr noundef nonnull @.str.84, i32 noundef %conv76) #11
  br label %do.body80

do.body80:                                        ; preds = %if.then74, %do.body62
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_boot_desc.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_boot_desc, %if.then92)) #11
          to label %do.body98 [label %if.then92], !srcloc !678

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #13
  %BuildNumber = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 2, i32 7
  %19 = ptrtoint ptr %BuildNumber to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %BuildNumber, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %conv94 = zext i16 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_boot_desc.__UNIQUE_ID_ddebug380, ptr noundef %dev2, ptr noundef nonnull @.str.85, i32 noundef %conv94) #11
  br label %do.body98

do.body98:                                        ; preds = %if.then92, %do.body80
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_boot_desc.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_boot_desc, %if.then110)) #11
          to label %do.body116 [label %if.then110], !srcloc !678

if.then110:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #13
  %Capabilities = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 2, i32 11
  %22 = ptrtoint ptr %Capabilities to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %Capabilities, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %conv112 = zext i16 %24 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_boot_desc.__UNIQUE_ID_ddebug381, ptr noundef %dev2, ptr noundef nonnull @.str.86, i32 noundef %conv112) #11
  br label %do.body116

do.body116:                                       ; preds = %if.then110, %do.body98
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_boot_desc.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_boot_desc, %if.then128)) #11
          to label %do.body134 [label %if.then128], !srcloc !678

if.then128:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #13
  %UConfig0 = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 2, i32 13
  %25 = ptrtoint ptr %UConfig0 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %UConfig0, align 2
  %conv130 = zext i8 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_boot_desc.__UNIQUE_ID_ddebug382, ptr noundef %dev2, ptr noundef nonnull @.str.87, i32 noundef %conv130) #11
  br label %do.body134

do.body134:                                       ; preds = %if.then128, %do.body116
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_boot_desc.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_boot_desc, %if.then146)) #11
          to label %if.end152 [label %if.then146], !srcloc !678

if.then146:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #13
  %UConfig1 = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 2, i32 14
  %27 = ptrtoint ptr %UConfig1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %UConfig1, align 1
  %conv148 = zext i8 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_boot_desc.__UNIQUE_ID_ddebug383, ptr noundef %dev2, ptr noundef nonnull @.str.88, i32 noundef %conv148) #11
  br label %if.end152

if.end152:                                        ; preds = %if.then146, %do.body134, %do.end10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @load_application_firmware(ptr nocapture noundef %edge_serial) unnamed_addr #2 align 64 {
entry:
  %lfw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %serial = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 24
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %iDownloadFile = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 3, i32 16
  %4 = ptrtoint ptr %iDownloadFile to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %iDownloadFile, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.245)
  switch i8 %5, label %entry.cleanup_crit_edge [
    i8 -1, label %entry.sw.epilog_crit_edge
    i8 -2, label %sw.bb3
    i8 0, label %do.body
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @load_application_firmware.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@load_application_firmware, %if.then)) #11
          to label %cleanup [label %if.then], !srcloc !678

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @load_application_firmware.__UNIQUE_ID_ddebug384, ptr noundef %dev2, ptr noundef nonnull @.str.94) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3, %entry.sw.epilog_crit_edge
  %fw_info.0 = phi ptr [ @.str.91, %sw.bb3 ], [ @.str.89, %entry.sw.epilog_crit_edge ]
  %fw_name.0 = phi ptr [ @.str.92, %sw.bb3 ], [ @.str.90, %entry.sw.epilog_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lfw.i) #11
  %7 = ptrtoint ptr %lfw.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %lfw.i, align 4, !annotation !680
  %call.i = call i32 @request_firmware(ptr noundef nonnull %lfw.i, ptr noundef nonnull %fw_name.0, ptr noundef %dev2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.epilog.do.end15_crit_edge

sw.epilog.do.end15_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end15

if.end.i:                                         ; preds = %sw.epilog
  %8 = ptrtoint ptr %lfw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lfw.i, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 4
  %sub.i.i = add i32 %13, -6
  %arrayidx.i.i = getelementptr i8, ptr %11, i32 %sub.i.i
  %cmp.not10.i.i = icmp ugt ptr %11, %arrayidx.i.i
  br i1 %cmp.not10.i.i, label %if.end.i.do.end.i_crit_edge, label %for.body.preheader.i.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

for.body.preheader.i.i:                           ; preds = %if.end.i
  %len.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %arrayidx.i.i, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %rec.011.i.i = phi ptr [ %add.ptr.i.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %11, %for.body.preheader.i.i ]
  %cmp2.i.i = icmp eq ptr %rec.011.i.i, %arrayidx.i.i
  br i1 %cmp2.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %14 = ptrtoint ptr %len.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %len.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.i.i = icmp eq i16 %15, 0
  br i1 %tobool.not.i.i, label %if.end16, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %len.i.i.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.011.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %len.i.i.i.i, align 1
  %add.i.i.i.i = add i16 %17, 6
  %conv.i.i.i = zext i16 %add.i.i.i.i to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 3
  %and.i.i.i = and i32 %add.i.i.i, 131068
  %add.ptr.i.i.i = getelementptr i8, ptr %rec.011.i.i, i32 %and.i.i.i
  %cmp.not.i.i = icmp ugt ptr %add.ptr.i.i.i, %arrayidx.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.do.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.101, ptr noundef nonnull %fw_name.0) #15
  %18 = ptrtoint ptr %lfw.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lfw.i, align 4
  call void @release_firmware(ptr noundef %19) #11
  br label %do.end15

do.end15:                                         ; preds = %do.end.i, %sw.epilog.do.end15_crit_edge
  %retval.0.i142.ph = phi i32 [ %call.i, %sw.epilog.do.end15_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfw.i) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.95, ptr noundef nonnull %fw_name.0, i32 noundef %retval.0.i142.ph) #15
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfw.i) #11
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i, align 4
  %data17 = getelementptr inbounds %struct.ihex_binrec, ptr %21, i32 0, i32 2
  %arrayidx = getelementptr [0 x i8], ptr %data17, i32 0, i32 2
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  %conv18 = zext i8 %23 to i16
  %shl = shl nuw i16 %conv18, 8
  %arrayidx20 = getelementptr [0 x i8], ptr %data17, i32 0, i32 3
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %25 to i16
  %or = or i16 %shl, %conv21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @load_application_firmware.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@load_application_firmware, %if.then35)) #11
          to label %do.end45 [label %if.then35], !srcloc !678

if.then35:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %data17 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %data17, align 1
  %conv38 = zext i8 %27 to i32
  %arrayidx40 = getelementptr [0 x i8], ptr %data17, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %29 to i32
  %conv42 = zext i16 %or to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @load_application_firmware.__UNIQUE_ID_ddebug385, ptr noundef %dev2, ptr noundef nonnull @.str.96, ptr noundef nonnull %fw_info.0, i32 noundef %conv38, i32 noundef %conv41, i32 noundef %conv42) #11
  br label %do.end45

do.end45:                                         ; preds = %if.then35, %if.end16
  %30 = ptrtoint ptr %data17 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %data17, align 1
  %FirmwareMajorVersion = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 3, i32 11
  %32 = ptrtoint ptr %FirmwareMajorVersion to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %FirmwareMajorVersion, align 4
  %arrayidx50 = getelementptr [0 x i8], ptr %data17, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx50, align 1
  %FirmwareMinorVersion = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 3, i32 12
  %35 = ptrtoint ptr %FirmwareMinorVersion to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %FirmwareMinorVersion, align 1
  %36 = call i16 @llvm.bswap.i16(i16 %or)
  %FirmwareBuildNumber = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 3, i32 13
  %37 = ptrtoint ptr %FirmwareBuildNumber to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %FirmwareBuildNumber, align 2
  %len.i.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %21, i32 0, i32 1
  %38 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %len.i.i.i, align 1
  %add.i.i.i143 = add i16 %39, 6
  %conv.i.i = zext i16 %add.i.i.i143 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 3
  %and.i.i = and i32 %add.i.i, 131068
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %and.i.i
  %len.i = getelementptr inbounds %struct.ihex_binrec, ptr %add.ptr.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool.not.i144 = icmp eq i16 %41, 0
  %tobool54.not164169 = icmp eq ptr %add.ptr.i.i, null
  %tobool54.not164 = select i1 %tobool.not.i144, i1 true, i1 %tobool54.not164169
  br i1 %tobool54.not164, label %do.end45.do.body75_crit_edge, label %do.end45.for.body_crit_edge

do.end45.for.body_crit_edge:                      ; preds = %do.end45
  br label %for.body

do.end45.do.body75_crit_edge:                     ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body75

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end45.for.body_crit_edge
  %rec.0165 = phi ptr [ %add.ptr.i.i150, %for.inc.for.body_crit_edge ], [ %add.ptr.i.i, %do.end45.for.body_crit_edge ]
  %42 = ptrtoint ptr %rec.0165 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %rec.0165, align 1
  %44 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %serial, align 4
  %shr = lshr i32 %43, 16
  %conv56 = trunc i32 %shr to i16
  %conv57 = trunc i32 %43 to i16
  %len = getelementptr inbounds %struct.ihex_binrec, ptr %rec.0165, i32 0, i32 1
  %46 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %len, align 1
  %data58 = getelementptr inbounds %struct.ihex_binrec, ptr %rec.0165, i32 0, i32 2
  %call60 = call fastcc i32 @sram_write(ptr noundef %45, i16 noundef zeroext %conv56, i16 noundef zeroext %conv57, i16 noundef zeroext %47, ptr noundef %data58)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp = icmp slt i32 %call60, 0
  br i1 %cmp, label %do.end65, label %for.inc

do.end65:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %and = and i32 %43, 65535
  %48 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %serial, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %dev68 = getelementptr inbounds %struct.usb_device, ptr %51, i32 0, i32 15
  %52 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %len, align 1
  %conv72 = zext i16 %53 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev68, ptr noundef nonnull @.str.98, i32 noundef %shr, i32 noundef %and, i32 noundef %conv72) #15
  br label %do.body75

for.inc:                                          ; preds = %for.body
  %54 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %len, align 1
  %add.i.i.i146 = add i16 %55, 6
  %conv.i.i147 = zext i16 %add.i.i.i146 to i32
  %add.i.i148 = add nuw nsw i32 %conv.i.i147, 3
  %and.i.i149 = and i32 %add.i.i148, 131068
  %add.ptr.i.i150 = getelementptr i8, ptr %rec.0165, i32 %and.i.i149
  %len.i151 = getelementptr inbounds %struct.ihex_binrec, ptr %add.ptr.i.i150, i32 0, i32 1
  %56 = ptrtoint ptr %len.i151 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %len.i151, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool.not.i152 = icmp eq i16 %57, 0
  %tobool54.not173 = icmp eq ptr %add.ptr.i.i150, null
  %tobool54.not = select i1 %tobool.not.i152, i1 true, i1 %tobool54.not173
  br i1 %tobool54.not, label %for.inc.do.body75_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.do.body75_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body75

do.body75:                                        ; preds = %for.inc.do.body75_crit_edge, %do.end65, %do.end45.do.body75_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @load_application_firmware.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@load_application_firmware, %if.then87)) #11
          to label %do.end90 [label %if.then87], !srcloc !678

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @load_application_firmware.__UNIQUE_ID_ddebug386, ptr noundef %dev2, ptr noundef nonnull @.str.100) #11
  br label %do.end90

do.end90:                                         ; preds = %if.then87, %do.body75
  %58 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %serial, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 8
  %shl.i = shl i32 %63, 8
  %or96 = or i32 %shl.i, -2147483648
  %call97 = call i32 @usb_control_msg(ptr noundef %61, i32 noundef %or96, i8 noundef zeroext 7, i8 noundef zeroext 64, i16 noundef zeroext 16384, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 3000) #11
  call void @release_firmware(ptr noundef %9) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end90, %do.end15, %if.then, %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_edgeport_E2PROM(ptr nocapture noundef readonly %edge_serial) unnamed_addr #2 align 64 {
entry:
  %lfw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %serial = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 24
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %iDownloadFile = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 3, i32 16
  %4 = ptrtoint ptr %iDownloadFile to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %iDownloadFile, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.246)
  switch i8 %5, label %entry.cleanup_crit_edge [
    i8 -1, label %entry.sw.epilog_crit_edge
    i8 -2, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %entry.sw.epilog_crit_edge
  %fw_name.0 = phi ptr [ @.str.107, %sw.bb3 ], [ @.str.106, %entry.sw.epilog_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lfw.i) #11
  %7 = ptrtoint ptr %lfw.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %lfw.i, align 4, !annotation !680
  %call.i = call i32 @request_firmware(ptr noundef nonnull %lfw.i, ptr noundef nonnull %fw_name.0, ptr noundef %dev2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.epilog.do.end_crit_edge

sw.epilog.do.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i:                                         ; preds = %sw.epilog
  %8 = ptrtoint ptr %lfw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lfw.i, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 4
  %sub.i.i = add i32 %13, -6
  %arrayidx.i.i = getelementptr i8, ptr %11, i32 %sub.i.i
  %cmp.not10.i.i = icmp ugt ptr %11, %arrayidx.i.i
  br i1 %cmp.not10.i.i, label %if.end.i.do.end.i_crit_edge, label %for.body.preheader.i.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

for.body.preheader.i.i:                           ; preds = %if.end.i
  %len.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %arrayidx.i.i, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %rec.011.i.i = phi ptr [ %add.ptr.i.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %11, %for.body.preheader.i.i ]
  %cmp2.i.i = icmp eq ptr %rec.011.i.i, %arrayidx.i.i
  br i1 %cmp2.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %14 = ptrtoint ptr %len.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %len.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.i.i = icmp eq i16 %15, 0
  br i1 %tobool.not.i.i, label %if.end, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %len.i.i.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.011.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %len.i.i.i.i, align 1
  %add.i.i.i.i = add i16 %17, 6
  %conv.i.i.i = zext i16 %add.i.i.i.i to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 3
  %and.i.i.i = and i32 %add.i.i.i, 131068
  %add.ptr.i.i.i = getelementptr i8, ptr %rec.011.i.i, i32 %and.i.i.i
  %cmp.not.i.i = icmp ugt ptr %add.ptr.i.i.i, %arrayidx.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.do.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.101, ptr noundef nonnull %fw_name.0) #15
  %18 = ptrtoint ptr %lfw.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lfw.i, align 4
  call void @release_firmware(ptr noundef %19) #11
  br label %do.end

do.end:                                           ; preds = %do.end.i, %sw.epilog.do.end_crit_edge
  %retval.0.i191.ph = phi i32 [ %call.i, %sw.epilog.do.end_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfw.i) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.95, ptr noundef nonnull %fw_name.0, i32 noundef %retval.0.i191.ph) #15
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfw.i) #11
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i, align 4
  %data7 = getelementptr inbounds %struct.ihex_binrec, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %data7 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data7, align 1
  %arrayidx9 = getelementptr [0 x i8], ptr %data7, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx9, align 1
  %arrayidx11 = getelementptr [0 x i8], ptr %data7, i32 0, i32 2
  %26 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %27 to i32
  %shl = shl nuw nsw i32 %conv12, 8
  %arrayidx14 = getelementptr [0 x i8], ptr %data7, i32 0, i32 3
  %28 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %29 to i32
  %or = or i32 %shl, %conv15
  %MajorVersion = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 2, i32 5
  %30 = ptrtoint ptr %MajorVersion to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %MajorVersion, align 2
  %conv17 = zext i8 %31 to i32
  %shl18 = shl nuw i32 %conv17, 24
  %MinorVersion = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 2, i32 6
  %32 = ptrtoint ptr %MinorVersion to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %MinorVersion, align 1
  %conv20 = zext i8 %33 to i32
  %shl21 = shl nuw nsw i32 %conv20, 16
  %add = or i32 %shl21, %shl18
  %BuildNumber = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 2, i32 7
  %34 = ptrtoint ptr %BuildNumber to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %BuildNumber, align 2
  %36 = call i16 @llvm.bswap.i16(i16 %35)
  %conv23 = zext i16 %36 to i32
  %add24 = or i32 %add, %conv23
  %conv25 = zext i8 %23 to i32
  %shl26 = shl nuw i32 %conv25, 24
  %conv27 = zext i8 %25 to i32
  %shl28 = shl nuw nsw i32 %conv27, 16
  %add29 = or i32 %shl28, %shl26
  %add31 = or i32 %add29, %or
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_edgeport_E2PROM.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_edgeport_E2PROM, %if.then37)) #11
          to label %do.end49 [label %if.then37], !srcloc !678

if.then37:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %MajorVersion to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %MajorVersion, align 2
  %conv40 = zext i8 %38 to i32
  %39 = ptrtoint ptr %MinorVersion to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %MinorVersion, align 1
  %conv43 = zext i8 %40 to i32
  %41 = ptrtoint ptr %BuildNumber to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %BuildNumber, align 2
  %43 = call i16 @llvm.bswap.i16(i16 %42)
  %conv46 = zext i16 %43 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_edgeport_E2PROM.__UNIQUE_ID_ddebug238, ptr noundef %dev2, ptr noundef nonnull @.str.109, i32 noundef %conv40, i32 noundef %conv43, i32 noundef %conv46) #11
  br label %do.end49

do.end49:                                         ; preds = %if.then37, %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %add31, i32 %add24)
  %cmp = icmp ugt i32 %add31, %add24
  br i1 %cmp, label %do.body52, label %do.body119

do.body52:                                        ; preds = %do.end49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_edgeport_E2PROM.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_edgeport_E2PROM, %if.then64)) #11
          to label %do.body80 [label %if.then64], !srcloc !678

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %MajorVersion to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %MajorVersion, align 2
  %conv67 = zext i8 %45 to i32
  %46 = ptrtoint ptr %MinorVersion to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %MinorVersion, align 1
  %conv70 = zext i8 %47 to i32
  %48 = ptrtoint ptr %BuildNumber to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %BuildNumber, align 2
  %50 = call i16 @llvm.bswap.i16(i16 %49)
  %conv73 = zext i16 %50 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_edgeport_E2PROM.__UNIQUE_ID_ddebug239, ptr noundef %dev2, ptr noundef nonnull @.str.110, i32 noundef %conv67, i32 noundef %conv70, i32 noundef %conv73, i32 noundef %conv25, i32 noundef %conv27, i32 noundef %or) #11
  br label %do.body80

do.body80:                                        ; preds = %if.then64, %do.body52
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_edgeport_E2PROM.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_edgeport_E2PROM, %if.then92)) #11
          to label %do.end95 [label %if.then92], !srcloc !678

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_edgeport_E2PROM.__UNIQUE_ID_ddebug240, ptr noundef %dev2, ptr noundef nonnull @.str.111) #11
  br label %do.end95

do.end95:                                         ; preds = %if.then92, %do.body80
  %len.i.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %21, i32 0, i32 1
  %51 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %len.i.i.i, align 1
  %add.i.i.i192 = add i16 %52, 6
  %conv.i.i = zext i16 %add.i.i.i192 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 3
  %and.i.i = and i32 %add.i.i, 131068
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %and.i.i
  %len.i = getelementptr inbounds %struct.ihex_binrec, ptr %add.ptr.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool.not.i193 = icmp eq i16 %54, 0
  %tobool97.not227239 = icmp eq ptr %add.ptr.i.i, null
  %tobool97.not227 = select i1 %tobool.not.i193, i1 true, i1 %tobool97.not227239
  br i1 %tobool97.not227, label %do.end95.if.end135_crit_edge, label %do.end95.for.body_crit_edge

do.end95.for.body_crit_edge:                      ; preds = %do.end95
  br label %for.body

do.end95.if.end135_crit_edge:                     ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end135

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end95.for.body_crit_edge
  %rec.0228 = phi ptr [ %add.ptr.i.i201, %for.inc.for.body_crit_edge ], [ %add.ptr.i.i, %do.end95.for.body_crit_edge ]
  %55 = ptrtoint ptr %rec.0228 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %rec.0228, align 1
  %57 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %serial, align 4
  %shr = lshr i32 %56, 16
  %conv99 = trunc i32 %shr to i16
  %len = getelementptr inbounds %struct.ihex_binrec, ptr %rec.0228, i32 0, i32 1
  %59 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %len, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %61 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %61, i32 noundef 3264, i32 noundef 64) #14
  %tobool.not.i194 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i194, label %for.body.do.end109_crit_edge, label %while.cond.preheader.i

for.body.do.end109_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end109

while.cond.preheader.i:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %cmp.not38.i = icmp eq i16 %60, 0
  br i1 %cmp.not38.i, label %while.cond.preheader.i.for.inc_crit_edge, label %while.body.i.preheader

while.cond.preheader.i.for.inc_crit_edge:         ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

while.body.i.preheader:                           ; preds = %while.cond.preheader.i
  %conv100 = trunc i32 %56 to i16
  %data101 = getelementptr inbounds %struct.ihex_binrec, ptr %rec.0228, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %if.end14.i.while.body.i_crit_edge, %while.body.i.preheader
  %data.addr.041.i = phi ptr [ %add.ptr.i, %if.end14.i.while.body.i_crit_edge ], [ %data101, %while.body.i.preheader ]
  %length.addr.040.i = phi i16 [ %sub.i, %if.end14.i.while.body.i_crit_edge ], [ %60, %while.body.i.preheader ]
  %addr.addr.039.i = phi i16 [ %add.i, %if.end14.i.while.body.i_crit_edge ], [ %conv100, %while.body.i.preheader ]
  %62 = call i16 @llvm.umin.i16(i16 %length.addr.040.i, i16 64) #11
  %conv7.i = zext i16 %62 to i32
  %63 = call ptr @memcpy(ptr %call7.i.i, ptr %data.addr.041.i, i32 %conv7.i)
  %64 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %58, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 8
  %shl.i.i = shl i32 %67, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call10.i = call i32 @usb_control_msg(ptr noundef %65, i32 noundef %or.i, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext %addr.addr.039.i, i16 noundef zeroext %conv99, ptr noundef nonnull %call7.i.i, i16 noundef zeroext %62, i32 noundef 300) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %rom_write.exit, label %if.end14.i

if.end14.i:                                       ; preds = %while.body.i
  %sub.i = sub i16 %length.addr.040.i, %62
  %add.i = add i16 %62, %addr.addr.039.i
  %add.ptr.i = getelementptr i8, ptr %data.addr.041.i, i32 %conv7.i
  %cmp.not.i = icmp eq i16 %sub.i, 0
  br i1 %cmp.not.i, label %if.end14.i.for.inc_crit_edge, label %if.end14.i.while.body.i_crit_edge

if.end14.i.while.body.i_crit_edge:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end14.i.for.inc_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

rom_write.exit:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %do.end109

do.end109:                                        ; preds = %rom_write.exit, %for.body.do.end109_crit_edge
  %and = and i32 %56, 65535
  %68 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %serial, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %dev112 = getelementptr inbounds %struct.usb_device, ptr %71, i32 0, i32 15
  %72 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %len, align 1
  %conv116 = zext i16 %73 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev112, ptr noundef nonnull @.str.113, i32 noundef %shr, i32 noundef %and, i32 noundef %conv116) #15
  br label %if.end135

for.inc:                                          ; preds = %if.end14.i.for.inc_crit_edge, %while.cond.preheader.i.for.inc_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %74 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %75 = load i16, ptr %len, align 1
  %add.i.i.i197 = add i16 %75, 6
  %conv.i.i198 = zext i16 %add.i.i.i197 to i32
  %add.i.i199 = add nuw nsw i32 %conv.i.i198, 3
  %and.i.i200 = and i32 %add.i.i199, 131068
  %add.ptr.i.i201 = getelementptr i8, ptr %rec.0228, i32 %and.i.i200
  %len.i202 = getelementptr inbounds %struct.ihex_binrec, ptr %add.ptr.i.i201, i32 0, i32 1
  %76 = ptrtoint ptr %len.i202 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 2)
  %77 = load i16, ptr %len.i202, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool.not.i203 = icmp eq i16 %77, 0
  %tobool97.not250 = icmp eq ptr %add.ptr.i.i201, null
  %tobool97.not = select i1 %tobool.not.i203, i1 true, i1 %tobool97.not250
  br i1 %tobool97.not, label %for.inc.if.end135_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.if.end135_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end135

do.body119:                                       ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_edgeport_E2PROM.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_edgeport_E2PROM, %if.then131)) #11
          to label %if.end135 [label %if.then131], !srcloc !678

if.then131:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_edgeport_E2PROM.__UNIQUE_ID_ddebug241, ptr noundef %dev2, ptr noundef nonnull @.str.115) #11
  br label %if.end135

if.end135:                                        ; preds = %if.then131, %do.body119, %for.inc.if.end135_crit_edge, %do.end109, %do.end95.if.end135_crit_edge
  call void @release_firmware(ptr noundef %9) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end135, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_product_info(ptr nocapture noundef readonly %edge_serial, ptr noundef readonly %product_info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %serial = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 24
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_product_info.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_product_info, %if.then)) #11
          to label %do.body5 [label %if.then], !srcloc !678

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_product_info.__UNIQUE_ID_ddebug242, ptr noundef %dev2, ptr noundef nonnull @.str.46) #11
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_product_info.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_product_info, %if.then17)) #11
          to label %do.body21 [label %if.then17], !srcloc !678

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %product_info to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %product_info, align 4
  %conv = zext i16 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_product_info.__UNIQUE_ID_ddebug243, ptr noundef %dev2, ptr noundef nonnull @.str.47, i32 noundef %conv) #11
  br label %do.body21

do.body21:                                        ; preds = %if.then17, %do.body5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_product_info.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_product_info, %if.then33)) #11
          to label %do.body38 [label %if.then33], !srcloc !678

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  %NumPorts = getelementptr inbounds %struct.edgeport_product_info, ptr %product_info, i32 0, i32 1
  %6 = ptrtoint ptr %NumPorts to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %NumPorts, align 2
  %conv34 = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_product_info.__UNIQUE_ID_ddebug244, ptr noundef %dev2, ptr noundef nonnull @.str.48, i32 noundef %conv34) #11
  br label %do.body38

do.body38:                                        ; preds = %if.then33, %do.body21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_product_info.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_product_info, %if.then50)) #11
          to label %do.body55 [label %if.then50], !srcloc !678

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #13
  %ProdInfoVer = getelementptr inbounds %struct.edgeport_product_info, ptr %product_info, i32 0, i32 2
  %8 = ptrtoint ptr %ProdInfoVer to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ProdInfoVer, align 1
  %conv51 = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_product_info.__UNIQUE_ID_ddebug245, ptr noundef %dev2, ptr noundef nonnull @.str.49, i32 noundef %conv51) #11
  br label %do.body55

do.body55:                                        ; preds = %if.then50, %do.body38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_product_info.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_product_info, %if.then67)) #11
          to label %do.body71 [label %if.then67], !srcloc !678

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #13
  %IsServer = getelementptr inbounds %struct.edgeport_product_info, ptr %product_info, i32 0, i32 3
  %10 = ptrtoint ptr %IsServer to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load i32, ptr %IsServer, align 4
  %bf.lshr = lshr i32 %bf.load, 31
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_product_info.__UNIQUE_ID_ddebug246, ptr noundef %dev2, ptr noundef nonnull @.str.50, i32 noundef %bf.lshr) #11
  br label %do.body71

do.body71:                                        ; preds = %if.then67, %do.body55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_product_info.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_product_info, %if.then83)) #11
          to label %do.body89 [label %if.then83], !srcloc !678

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #13
  %IsRS232 = getelementptr inbounds %struct.edgeport_product_info, ptr %product_info, i32 0, i32 3
  %11 = ptrtoint ptr %IsRS232 to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load84 = load i32, ptr %IsRS232, align 4
  %bf.lshr85 = lshr i32 %bf.load84, 30
  %bf.clear = and i32 %bf.lshr85, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_product_info.__UNIQUE_ID_ddebug247, ptr noundef %dev2, ptr noundef nonnull @.str.51, i32 noundef %bf.clear) #11
  br label %do.body89

do.body89:                                        ; preds = %if.then83, %do.body71
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_product_info.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_product_info, %if.then101)) #11
          to label %do.body108 [label %if.then101], !srcloc !678

if.then101:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #13
  %IsRS422 = getelementptr inbounds %struct.edgeport_product_info, ptr %product_info, i32 0, i32 3
  %12 = ptrtoint ptr %IsRS422 to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load102 = load i32, ptr %IsRS422, align 4
  %bf.lshr103 = lshr i32 %bf.load102, 29
  %bf.clear104 = and i32 %bf.lshr103, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_product_info.__UNIQUE_ID_ddebug248, ptr noundef %dev2, ptr noundef nonnull @.str.52, i32 noundef %bf.clear104) #11
  br label %do.body108

do.body108:                                       ; preds = %if.then101, %do.body89
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_product_info.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_product_info, %if.then120)) #11
          to label %do.body127 [label %if.then120], !srcloc !678

if.then120:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #13
  %IsRS485 = getelementptr inbounds %struct.edgeport_product_info, ptr %product_info, i32 0, i32 3
  %13 = ptrtoint ptr %IsRS485 to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load121 = load i32, ptr %IsRS485, align 4
  %bf.lshr122 = lshr i32 %bf.load121, 28
  %bf.clear123 = and i32 %bf.lshr122, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_product_info.__UNIQUE_ID_ddebug249, ptr noundef %dev2, ptr noundef nonnull @.str.53, i32 noundef %bf.clear123) #11
  br label %do.body127

do.body127:                                       ; preds = %if.then120, %do.body108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_product_info.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_product_info, %if.then139)) #11
          to label %do.body144 [label %if.then139], !srcloc !678

if.then139:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #13
  %RomSize = getelementptr inbounds %struct.edgeport_product_info, ptr %product_info, i32 0, i32 4
  %14 = ptrtoint ptr %RomSize to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %RomSize, align 4
  %conv140 = zext i8 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_product_info.__UNIQUE_ID_ddebug250, ptr noundef %dev2, ptr noundef nonnull @.str.54, i32 noundef %conv140) #11
  br label %do.body144

do.body144:                                       ; preds = %if.then139, %do.body127
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_product_info.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_product_info, %if.then156)) #11
          to label %do.body161 [label %if.then156], !srcloc !678

if.then156:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #13
  %RamSize = getelementptr inbounds %struct.edgeport_product_info, ptr %product_info, i32 0, i32 5
  %16 = ptrtoint ptr %RamSize to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %RamSize, align 1
  %conv157 = zext i8 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_product_info.__UNIQUE_ID_ddebug251, ptr noundef %dev2, ptr noundef nonnull @.str.55, i32 noundef %conv157) #11
  br label %do.body161

do.body161:                                       ; preds = %if.then156, %do.body144
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_product_info.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_product_info, %if.then173)) #11
          to label %do.body178 [label %if.then173], !srcloc !678

if.then173:                                       ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #13
  %CpuRev = getelementptr inbounds %struct.edgeport_product_info, ptr %product_info, i32 0, i32 6
  %18 = ptrtoint ptr %CpuRev to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %CpuRev, align 2
  %conv174 = zext i8 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_product_info.__UNIQUE_ID_ddebug252, ptr noundef %dev2, ptr noundef nonnull @.str.56, i32 noundef %conv174) #11
  br label %do.body178

do.body178:                                       ; preds = %if.then173, %do.body161
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_product_info.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_product_info, %if.then190)) #11
          to label %do.body195 [label %if.then190], !srcloc !678

if.then190:                                       ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #13
  %BoardRev = getelementptr inbounds %struct.edgeport_product_info, ptr %product_info, i32 0, i32 7
  %20 = ptrtoint ptr %BoardRev to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %BoardRev, align 1
  %conv191 = zext i8 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_product_info.__UNIQUE_ID_ddebug253, ptr noundef %dev2, ptr noundef nonnull @.str.57, i32 noundef %conv191) #11
  br label %do.body195

do.body195:                                       ; preds = %if.then190, %do.body178
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_product_info.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_product_info, %if.then207)) #11
          to label %do.body214 [label %if.then207], !srcloc !678

if.then207:                                       ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #13
  %BootMajorVersion = getelementptr inbounds %struct.edgeport_product_info, ptr %product_info, i32 0, i32 8
  %22 = ptrtoint ptr %BootMajorVersion to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %BootMajorVersion, align 4
  %conv208 = zext i8 %23 to i32
  %BootMinorVersion = getelementptr inbounds %struct.edgeport_product_info, ptr %product_info, i32 0, i32 9
  %24 = ptrtoint ptr %BootMinorVersion to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %BootMinorVersion, align 1
  %conv209 = zext i8 %25 to i32
  %BootBuildNumber = getelementptr inbounds %struct.edgeport_product_info, ptr %product_info, i32 0, i32 10
  %26 = ptrtoint ptr %BootBuildNumber to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %BootBuildNumber, align 2
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  %conv210 = zext i16 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_product_info.__UNIQUE_ID_ddebug254, ptr noundef %dev2, ptr noundef nonnull @.str.58, i32 noundef %conv208, i32 noundef %conv209, i32 noundef %conv210) #11
  br label %do.body214

do.body214:                                       ; preds = %if.then207, %do.body195
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_product_info.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_product_info, %if.then226)) #11
          to label %do.body233 [label %if.then226], !srcloc !678

if.then226:                                       ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #13
  %FirmwareMajorVersion = getelementptr inbounds %struct.edgeport_product_info, ptr %product_info, i32 0, i32 11
  %29 = ptrtoint ptr %FirmwareMajorVersion to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %FirmwareMajorVersion, align 4
  %conv227 = zext i8 %30 to i32
  %FirmwareMinorVersion = getelementptr inbounds %struct.edgeport_product_info, ptr %product_info, i32 0, i32 12
  %31 = ptrtoint ptr %FirmwareMinorVersion to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %FirmwareMinorVersion, align 1
  %conv228 = zext i8 %32 to i32
  %FirmwareBuildNumber = getelementptr inbounds %struct.edgeport_product_info, ptr %product_info, i32 0, i32 13
  %33 = ptrtoint ptr %FirmwareBuildNumber to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %FirmwareBuildNumber, align 2
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  %conv229 = zext i16 %35 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_product_info.__UNIQUE_ID_ddebug255, ptr noundef %dev2, ptr noundef nonnull @.str.16, i32 noundef %conv227, i32 noundef %conv228, i32 noundef %conv229) #11
  br label %do.body233

do.body233:                                       ; preds = %if.then226, %do.body214
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_product_info.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_product_info, %if.then245)) #11
          to label %do.body256 [label %if.then245], !srcloc !678

if.then245:                                       ; preds = %do.body233
  call void @__sanitizer_cov_trace_pc() #13
  %ManufactureDescDate = getelementptr inbounds %struct.edgeport_product_info, ptr %product_info, i32 0, i32 14
  %36 = ptrtoint ptr %ManufactureDescDate to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ManufactureDescDate, align 4
  %conv246 = zext i8 %37 to i32
  %arrayidx248 = getelementptr %struct.edgeport_product_info, ptr %product_info, i32 0, i32 14, i32 1
  %38 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx248, align 1
  %conv249 = zext i8 %39 to i32
  %arrayidx251 = getelementptr %struct.edgeport_product_info, ptr %product_info, i32 0, i32 14, i32 2
  %40 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx251, align 2
  %conv252 = zext i8 %41 to i32
  %add = add nuw nsw i32 %conv252, 1900
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_product_info.__UNIQUE_ID_ddebug256, ptr noundef %dev2, ptr noundef nonnull @.str.59, i32 noundef %conv246, i32 noundef %conv249, i32 noundef %add) #11
  br label %do.body256

do.body256:                                       ; preds = %if.then245, %do.body233
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_product_info.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_product_info, %if.then268)) #11
          to label %do.body273 [label %if.then268], !srcloc !678

if.then268:                                       ; preds = %do.body256
  call void @__sanitizer_cov_trace_pc() #13
  %iDownloadFile = getelementptr inbounds %struct.edgeport_product_info, ptr %product_info, i32 0, i32 16
  %42 = ptrtoint ptr %iDownloadFile to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %iDownloadFile, align 4
  %conv269 = zext i8 %43 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_product_info.__UNIQUE_ID_ddebug257, ptr noundef %dev2, ptr noundef nonnull @.str.60, i32 noundef %conv269) #11
  br label %do.body273

do.body273:                                       ; preds = %if.then268, %do.body256
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_product_info.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_product_info, %if.then285)) #11
          to label %do.end289 [label %if.then285], !srcloc !678

if.then285:                                       ; preds = %do.body273
  call void @__sanitizer_cov_trace_pc() #13
  %EpicVer = getelementptr inbounds %struct.edgeport_product_info, ptr %product_info, i32 0, i32 17
  %44 = ptrtoint ptr %EpicVer to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %EpicVer, align 1
  %conv286 = zext i8 %45 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_product_info.__UNIQUE_ID_ddebug258, ptr noundef %dev2, ptr noundef nonnull @.str.61, i32 noundef %conv286) #11
  br label %do.end289

do.end289:                                        ; preds = %if.then285, %do.body273
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sram_write(ptr nocapture noundef readonly %serial, i16 noundef zeroext %extAddr, i16 noundef zeroext %addr, i16 noundef zeroext %length, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sram_write.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sram_write, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !678

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %conv = zext i16 %extAddr to i32
  %conv4 = zext i16 %addr to i32
  %conv5 = zext i16 %length to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sram_write.__UNIQUE_ID_ddebug334, ptr noundef %dev3, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.104, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv5) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 64) #14
  %tobool7.not = icmp eq ptr %call7.i, null
  br i1 %tobool7.not, label %do.end.cleanup_crit_edge, label %while.cond.preheader

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.preheader:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %length)
  %cmp.not54 = icmp eq i16 %length, 0
  br i1 %cmp.not54, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %if.end25.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %addr.addr.057 = phi i16 [ %add, %if.end25.while.body_crit_edge ], [ %addr, %while.cond.preheader.while.body_crit_edge ]
  %data.addr.056 = phi ptr [ %add.ptr, %if.end25.while.body_crit_edge ], [ %data, %while.cond.preheader.while.body_crit_edge ]
  %length.addr.055 = phi i16 [ %sub, %if.end25.while.body_crit_edge ], [ %length, %while.cond.preheader.while.body_crit_edge ]
  %3 = tail call i16 @llvm.umin.i16(i16 %length.addr.055, i16 64)
  %conv17 = zext i16 %3 to i32
  %4 = call ptr @memcpy(ptr %call7.i, ptr %data.addr.056, i32 %conv17)
  %5 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %serial, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i = shl i32 %8, 8
  %or = or i32 %shl.i, -2147483648
  %call21 = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext %addr.addr.057, i16 noundef zeroext %extAddr, ptr noundef nonnull %call7.i, i16 noundef zeroext %3, i32 noundef 300) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %while.body.while.end_crit_edge, label %if.end25

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end25:                                         ; preds = %while.body
  %sub = sub i16 %length.addr.055, %3
  %add = add i16 %addr.addr.057, %3
  %add.ptr = getelementptr i8, ptr %data.addr.056, i32 %conv17
  %cmp.not = icmp eq i16 %sub, 0
  br i1 %cmp.not, label %if.end25.while.end_crit_edge, label %if.end25.while.body_crit_edge

if.end25.while.body_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end25.while.end_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end25.while.end_crit_edge, %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %result.1 = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %call21, %while.body.while.end_crit_edge ], [ %call21, %if.end25.while.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.1, %while.end ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_cmd_usb(ptr noundef %edge_port, ptr noundef %buffer, i32 noundef %length) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 22
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 4
  %dev2 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_cmd_usb, %if.then.i)) #11
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !678

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev2, ptr noundef nonnull @.str.132, ptr noundef nonnull @__func__.write_cmd_usb, i32 noundef %length, i32 noundef %length, ptr noundef %buffer) #11
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %entry
  %call3 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %usb_serial_debug_data.exit.cleanup_crit_edge, label %if.end

usb_serial_debug_data.exit.cleanup_crit_edge:     ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %usb_serial_debug_data.exit
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @CmdUrbs, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull @CmdUrbs, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @CmdUrbs, ptr nonnull @CmdUrbs, i32 1, ptr nonnull elementtype(i32) @CmdUrbs) #11, !srcloc !681
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_cmd_usb.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_cmd_usb, %if.then8)) #11
          to label %do.end [label %if.then8], !srcloc !678

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i42 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @CmdUrbs, i32 noundef 4) #11
  %7 = load volatile i32, ptr @CmdUrbs, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @write_cmd_usb.__UNIQUE_ID_ddebug335, ptr noundef %dev2, ptr noundef nonnull @.str.128, ptr noundef nonnull @__func__.write_cmd_usb, ptr noundef nonnull %call3, i32 noundef %7) #11
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.end
  %serial11 = getelementptr inbounds %struct.edgeport_serial, ptr %5, i32 0, i32 24
  %8 = ptrtoint ptr %serial11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %serial11, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %bulk_out_endpoint = getelementptr inbounds %struct.edgeport_serial, ptr %5, i32 0, i32 14
  %12 = ptrtoint ptr %bulk_out_endpoint to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bulk_out_endpoint, align 4
  %conv = zext i8 %13 to i32
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 8
  %shl.i = shl i32 %15, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 8
  %16 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %11, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 10
  %17 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 14
  %18 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %buffer, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 19
  %19 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %length, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 28
  %20 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @edge_bulk_out_cmd_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 27
  %21 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %edge_port, ptr %context4.i, align 4
  %commandPending = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 16
  %22 = ptrtoint ptr %commandPending to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %commandPending, align 2
  %call16 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call3, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.end.cleanup_crit_edge, label %do.end21

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end21:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.129, ptr noundef nonnull @__func__.write_cmd_usb, i32 noundef %call16) #15
  tail call void @usb_free_urb(ptr noundef nonnull %call3) #11
  %call.i.i43 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @CmdUrbs, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull @CmdUrbs, i32 1, i32 3, i32 1) #11
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @CmdUrbs, ptr nonnull @CmdUrbs, i32 1, ptr nonnull elementtype(i32) @CmdUrbs) #11, !srcloc !682
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %do.end.cleanup_crit_edge, %usb_serial_debug_data.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %do.end21 ], [ -12, %usb_serial_debug_data.exit.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edge_bulk_out_cmd_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @CmdUrbs, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull @CmdUrbs, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @CmdUrbs, ptr nonnull @CmdUrbs, i32 1, ptr nonnull elementtype(i32) @CmdUrbs) #11, !srcloc !682
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_bulk_out_cmd_callback.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_bulk_out_cmd_callback, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !678

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  %call.i.i42 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @CmdUrbs, i32 noundef 4) #11
  %7 = load volatile i32, ptr @CmdUrbs, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_bulk_out_cmd_callback.__UNIQUE_ID_ddebug283, ptr noundef %dev4, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.133, ptr noundef %urb, i32 noundef %7) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %8 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transfer_buffer, align 4
  tail call void @kfree(ptr noundef %9) #11
  tail call void @usb_free_urb(ptr noundef %urb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %if.end26, label %do.body8

do.body8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edge_bulk_out_cmd_callback.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edge_bulk_out_cmd_callback, %if.then20)) #11
          to label %cleanup [label %if.then20], !srcloc !678

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  %dev21 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %10 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev21, align 4
  %dev22 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edge_bulk_out_cmd_callback.__UNIQUE_ID_ddebug284, ptr noundef %dev22, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.133, i32 noundef %3) #11
  br label %cleanup

if.end26:                                         ; preds = %do.end
  %open = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 14
  %12 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %open, align 4, !range !679
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool27.not = icmp eq i8 %13, 0
  br i1 %tobool27.not, label %if.end26.if.end30_crit_edge, label %if.then28

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %port = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 22
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port, align 4
  %port29 = getelementptr inbounds %struct.usb_serial_port, ptr %15, i32 0, i32 1
  tail call void @tty_port_tty_wakeup(ptr noundef %port29) #11
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end26.if.end30_crit_edge
  %commandPending = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 16
  %16 = ptrtoint ptr %commandPending to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %commandPending, align 2
  %wait_command = getelementptr inbounds %struct.edgeport_port, ptr %1, i32 0, i32 21
  tail call void @__wake_up(ptr noundef %wait_command, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then20, %do.body8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @block_until_tx_empty(ptr noundef %edge_port) unnamed_addr #2 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 22
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %dev1 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #11
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wait, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !668) #11
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @autoremove_wake_function, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %4, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %4, ptr %5, align 4
  %count = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp73 = icmp eq i32 %16, 0
  br i1 %cmp73, label %entry.do.body_crit_edge, label %if.end9.lr.ph

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end9.lr.ph:                                    ; preds = %entry
  %wait_chase = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 19
  br label %if.end9

do.body:                                          ; preds = %if.end50.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @block_until_tx_empty.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@block_until_tx_empty, %if.then8)) #11
          to label %cleanup [label %if.then8], !srcloc !678

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @block_until_tx_empty.__UNIQUE_ID_ddebug291, ptr noundef %dev1, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.139) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end50.if.end9_crit_edge, %if.end9.lr.ph
  %17 = phi i32 [ %16, %if.end9.lr.ph ], [ %19, %if.end50.if.end9_crit_edge ]
  %loop.074 = phi i32 [ 30, %if.end9.lr.ph ], [ %loop.1, %if.end50.if.end9_crit_edge ]
  call void @prepare_to_wait(ptr noundef %wait_chase, ptr noundef nonnull %wait, i32 noundef 2) #11
  %call10 = call i32 @schedule_timeout(i32 noundef 10) #11
  call void @finish_wait(ptr noundef %wait_chase, ptr noundef nonnull %wait) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @block_until_tx_empty.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@block_until_tx_empty, %if.then24)) #11
          to label %do.end27 [label %if.then24], !srcloc !678

if.then24:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @block_until_tx_empty.__UNIQUE_ID_ddebug292, ptr noundef %dev1, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.139) #11
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %if.end9
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp29 = icmp eq i32 %17, %19
  br i1 %cmp29, label %if.then30, label %do.end27.if.end50_crit_edge

do.end27.if.end50_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then30:                                        ; preds = %do.end27
  %dec = add i32 %loop.074, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp31 = icmp eq i32 %dec, 0
  br i1 %cmp31, label %do.body33, label %if.then30.if.end50_crit_edge

if.then30.if.end50_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

do.body33:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @block_until_tx_empty.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@block_until_tx_empty, %if.then45)) #11
          to label %cleanup [label %if.then45], !srcloc !678

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @block_until_tx_empty.__UNIQUE_ID_ddebug293, ptr noundef %dev1, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.139) #11
  br label %cleanup

if.end50:                                         ; preds = %if.then30.if.end50_crit_edge, %do.end27.if.end50_crit_edge
  %loop.1 = phi i32 [ %dec, %if.then30.if.end50_crit_edge ], [ 30, %do.end27.if.end50_crit_edge ]
  %cmp = icmp eq i32 %19, 0
  br i1 %cmp, label %if.end50.do.body_crit_edge, label %if.end50.if.end9_crit_edge

if.end50.if.end9_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.end50.do.body_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

cleanup:                                          ; preds = %if.then45, %do.body33, %if.then8, %do.body
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @block_until_chase_response(ptr noundef %edge_port) unnamed_addr #2 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 22
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %dev1 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #11
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wait, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !668) #11
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @autoremove_wake_function, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %4, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %4, ptr %5, align 4
  %chaseResponsePending = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 18
  %maxTxCredits = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 1
  %wait_chase = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 19
  br label %while.cond

while.cond:                                       ; preds = %if.then73, %do.body61, %if.then39.while.cond_crit_edge, %entry
  %loop.0 = phi i32 [ 10, %entry ], [ %dec, %if.then39.while.cond_crit_edge ], [ 10, %if.then73 ], [ 10, %do.body61 ]
  %15 = ptrtoint ptr %edge_port to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %edge_port, align 4
  %17 = ptrtoint ptr %chaseResponsePending to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %chaseResponsePending, align 4, !range !679
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %do.body, label %while.cond.if.end31_crit_edge

while.cond.if.end31_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

do.body:                                          ; preds = %while.cond
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @block_until_chase_response.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@block_until_chase_response, %if.then9)) #11
          to label %do.end [label %if.then9], !srcloc !678

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @block_until_chase_response.__UNIQUE_ID_ddebug287, ptr noundef %dev1, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.143) #11
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %19 = ptrtoint ptr %edge_port to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %edge_port, align 4
  %21 = ptrtoint ptr %maxTxCredits to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %maxTxCredits, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %22)
  %cmp = icmp eq i16 %20, %22
  br i1 %cmp, label %do.body14, label %do.end.if.end31_crit_edge

do.end.if.end31_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

do.body14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @block_until_chase_response.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@block_until_chase_response, %if.then26)) #11
          to label %cleanup [label %if.then26], !srcloc !678

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @block_until_chase_response.__UNIQUE_ID_ddebug288, ptr noundef %dev1, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.143) #11
  br label %cleanup

if.end31:                                         ; preds = %do.end.if.end31_crit_edge, %while.cond.if.end31_crit_edge
  call void @prepare_to_wait(ptr noundef %wait_chase, ptr noundef nonnull %wait, i32 noundef 2) #11
  %call32 = call i32 @schedule_timeout(i32 noundef 100) #11
  call void @finish_wait(ptr noundef %wait_chase, ptr noundef nonnull %wait) #11
  %conv34 = zext i16 %16 to i32
  %23 = ptrtoint ptr %edge_port to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %edge_port, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %24)
  %cmp37 = icmp eq i16 %16, %24
  br i1 %cmp37, label %if.then39, label %do.body61

if.then39:                                        ; preds = %if.end31
  %dec = add i32 %loop.0, -1
  %cmp40 = icmp eq i32 %dec, 0
  br i1 %cmp40, label %if.then42, label %if.then39.while.cond_crit_edge

if.then39.while.cond_crit_edge:                   ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

if.then42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %chaseResponsePending to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %chaseResponsePending, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @block_until_chase_response.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@block_until_chase_response, %if.then56)) #11
          to label %cleanup [label %if.then56], !srcloc !678

if.then56:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @block_until_chase_response.__UNIQUE_ID_ddebug289, ptr noundef %dev1, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.143) #11
  br label %cleanup

do.body61:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @block_until_chase_response.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@block_until_chase_response, %if.then73)) #11
          to label %while.cond [label %if.then73], !srcloc !678

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %edge_port to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %edge_port, align 4
  %conv76 = zext i16 %27 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @block_until_chase_response.__UNIQUE_ID_ddebug290, ptr noundef %dev1, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.143, i32 noundef %conv34, i32 noundef %conv76) #11
  br label %while.cond

cleanup:                                          ; preds = %if.then56, %if.then42, %if.then26, %do.body14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @send_more_port_data(ptr nocapture noundef readonly %edge_serial, ptr noundef %edge_port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 22
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %dev1 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %ep_lock = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ep_lock) #11
  %write_in_progress = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 4
  %2 = ptrtoint ptr %write_in_progress to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %write_in_progress, align 4, !range !679
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.body12_crit_edge

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12

lor.lhs.false:                                    ; preds = %entry
  %open = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 14
  %4 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %open, align 4, !range !679
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool7.not = icmp eq i8 %5, 0
  br i1 %tobool7.not, label %lor.lhs.false.do.body12_crit_edge, label %lor.lhs.false8

lor.lhs.false.do.body12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %count9 = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %count9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp10 = icmp eq i32 %7, 0
  br i1 %cmp10, label %lor.lhs.false8.do.body12_crit_edge, label %if.end25

lor.lhs.false8.do.body12_crit_edge:               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12

do.body12:                                        ; preds = %lor.lhs.false8.do.body12_crit_edge, %lor.lhs.false.do.body12_crit_edge, %entry.do.body12_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_more_port_data.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_more_port_data, %if.then18)) #11
          to label %exit_send [label %if.then18], !srcloc !678

if.then18:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %count19 = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %count19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count19, align 4
  %10 = ptrtoint ptr %write_in_progress to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %write_in_progress, align 4, !range !679
  %12 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @send_more_port_data.__UNIQUE_ID_ddebug305, ptr noundef %dev1, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.154, i32 noundef %9, i32 noundef %12) #11
  br label %exit_send

if.end25:                                         ; preds = %lor.lhs.false8
  %13 = ptrtoint ptr %edge_port to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %edge_port, align 4
  %maxTxCredits = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 1
  %15 = ptrtoint ptr %maxTxCredits to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %maxTxCredits, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 259, i16 %16)
  %cmp29 = icmp ugt i16 %16, 259
  %17 = lshr i16 %16, 2
  %narrow = select i1 %cmp29, i16 %17, i16 64
  call void @__sanitizer_cov_trace_cmp2(i16 %narrow, i16 %14)
  %cmp31 = icmp ugt i16 %narrow, %14
  br i1 %cmp31, label %do.body34, label %if.end53

do.body34:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_more_port_data.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_more_port_data, %if.then46)) #11
          to label %exit_send [label %if.then46], !srcloc !678

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %count9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count9, align 4
  %20 = ptrtoint ptr %edge_port to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %edge_port, align 4
  %conv49 = zext i16 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @send_more_port_data.__UNIQUE_ID_ddebug308, ptr noundef %dev1, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.154, i32 noundef %19, i32 noundef %conv49) #11
  br label %exit_send

if.end53:                                         ; preds = %if.end25
  %22 = ptrtoint ptr %write_in_progress to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %write_in_progress, align 4
  %write_urb = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 3
  %23 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_urb, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 14
  %25 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %transfer_buffer, align 4
  tail call void @kfree(ptr noundef %26) #11
  %27 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %transfer_buffer, align 4
  %28 = ptrtoint ptr %count9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count9, align 4
  %add = add i32 %29, 2
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 2592) #16
  %tobool58.not = icmp eq ptr %call9.i, null
  br i1 %tobool58.not, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %write_in_progress to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %write_in_progress, align 4
  br label %exit_send

if.end61:                                         ; preds = %if.end53
  %31 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %port, align 4
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %port_number, align 4
  %conv65 = lshr i32 %29, 5
  %35 = trunc i32 %conv65 to i8
  %36 = and i8 %35, 120
  %conv68 = or i8 %34, %36
  %37 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv68, ptr %call9.i, align 128
  %conv69 = trunc i32 %29 to i8
  %arrayidx70 = getelementptr i8, ptr %call9.i, i32 1
  %38 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv69, ptr %arrayidx70, align 1
  %size = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 2, i32 3
  %39 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size, align 4
  %tail = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tail, align 4
  %sub = sub i32 %40, %42
  %43 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %29)
  %arrayidx78 = getelementptr i8, ptr %call9.i, i32 2
  %fifo79 = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 2, i32 4
  %44 = ptrtoint ptr %fifo79 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fifo79, align 4
  %arrayidx81 = getelementptr i8, ptr %45, i32 %42
  %46 = call ptr @memcpy(ptr %arrayidx78, ptr %arrayidx81, i32 %43)
  %add83 = add i32 %43, %42
  %47 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add83, ptr %tail, align 4
  %48 = ptrtoint ptr %count9 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %count9, align 4
  %sub85 = sub i32 %49, %43
  store i32 %sub85, ptr %count9, align 4
  %50 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add83, i32 %51)
  %cmp88 = icmp eq i32 %add83, %51
  br i1 %cmp88, label %if.then90, label %if.end61.if.end92_crit_edge

if.end61.if.end92_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

if.then90:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %tail, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %if.end61.if.end92_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %sub)
  %tobool94.not.not = icmp sgt i32 %29, %sub
  br i1 %tobool94.not.not, label %if.then95, label %if.end92.if.end105_crit_edge

if.end92.if.end105_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end105

if.then95:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  %sub93 = sub i32 %29, %43
  %add96 = add i32 %43, 2
  %arrayidx97 = getelementptr i8, ptr %call9.i, i32 %add96
  %53 = ptrtoint ptr %fifo79 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fifo79, align 4
  %55 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tail, align 4
  %arrayidx100 = getelementptr i8, ptr %54, i32 %56
  %57 = call ptr @memcpy(ptr %arrayidx97, ptr %arrayidx100, i32 %sub93)
  %add102 = add i32 %56, %sub93
  store i32 %add102, ptr %tail, align 4
  %58 = ptrtoint ptr %count9 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %count9, align 4
  %sub104 = sub i32 %59, %sub93
  store i32 %sub104, ptr %count9, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then95, %if.end92.if.end105_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool106.not = icmp eq i32 %29, 0
  br i1 %tobool106.not, label %if.end105.if.end111_crit_edge, label %if.then107

if.end105.if.end111_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111

if.then107:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %port, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_more_port_data, %if.then.i256)) #11
          to label %if.end111 [label %if.then.i256], !srcloc !678

if.then.i256:                                     ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #13
  %dev109 = getelementptr inbounds %struct.usb_serial_port, ptr %61, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev109, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.154, i32 noundef %29, i32 noundef %29, ptr noundef %arrayidx78) #11
  br label %if.end111

if.end111:                                        ; preds = %if.then.i256, %if.then107, %if.end105.if.end111_crit_edge
  %serial = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 24
  %62 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %serial, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %bulk_out_endpoint = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 14
  %66 = ptrtoint ptr %bulk_out_endpoint to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %bulk_out_endpoint, align 4
  %conv115 = zext i8 %67 to i32
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %65, align 8
  %shl.i = shl i32 %69, 8
  %shl1.i = shl nuw nsw i32 %conv115, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or117 = or i32 %or.i, -1073741824
  %dev1.i = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 8
  %70 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %65, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 10
  %71 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %or117, ptr %pipe2.i, align 4
  %72 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call9.i, ptr %transfer_buffer, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 19
  %73 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %add, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 28
  %74 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @edge_bulk_out_data_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 27
  %75 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %edge_port, ptr %context4.i, align 4
  %76 = ptrtoint ptr %edge_port to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %edge_port, align 4
  %78 = trunc i32 %29 to i16
  %conv122 = sub i16 %77, %78
  store i16 %conv122, ptr %edge_port, align 4
  %79 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %port, align 4
  %tx = getelementptr inbounds %struct.usb_serial_port, ptr %80, i32 0, i32 27, i32 4
  %81 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tx, align 8
  %add124 = add i32 %82, %29
  store i32 %add124, ptr %tx, align 8
  %call125 = tail call i32 @usb_submit_urb(ptr noundef %24, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.end111.do.body152_crit_edge, label %do.body128

if.end111.do.body152_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body152

do.body128:                                       ; preds = %if.end111
  %83 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %port, align 4
  %console = getelementptr inbounds %struct.usb_serial_port, ptr %84, i32 0, i32 1, i32 12
  %85 = ptrtoint ptr %console to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load = load i8, ptr %console, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool131.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool131.not, label %do.body128.if.then134_crit_edge, label %lor.lhs.false132

do.body128.if.then134_crit_edge:                  ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then134

lor.lhs.false132:                                 ; preds = %do.body128
  %.b249 = load i1, ptr @send_more_port_data.__print_once, align 1
  br i1 %.b249, label %lor.lhs.false132.if.end139_crit_edge, label %lor.lhs.false132.if.then134_crit_edge

lor.lhs.false132.if.then134_crit_edge:            ; preds = %lor.lhs.false132
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then134

lor.lhs.false132.if.end139_crit_edge:             ; preds = %lor.lhs.false132
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139

if.then134:                                       ; preds = %lor.lhs.false132.if.then134_crit_edge, %do.body128.if.then134_crit_edge
  store i1 true, ptr @send_more_port_data.__print_once, align 1
  %dev138 = getelementptr inbounds %struct.usb_serial_port, ptr %84, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev138, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.154, i32 noundef %call125) #15
  br label %if.end139

if.end139:                                        ; preds = %if.then134, %lor.lhs.false132.if.end139_crit_edge
  %86 = ptrtoint ptr %write_in_progress to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %write_in_progress, align 4
  %87 = ptrtoint ptr %edge_port to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %edge_port, align 4
  %conv146 = add i16 %88, %78
  store i16 %conv146, ptr %edge_port, align 4
  %89 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %port, align 4
  %tx149 = getelementptr inbounds %struct.usb_serial_port, ptr %90, i32 0, i32 27, i32 4
  %91 = ptrtoint ptr %tx149 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tx149, align 8
  %sub150 = sub i32 %92, %29
  store i32 %sub150, ptr %tx149, align 8
  br label %do.body152

do.body152:                                       ; preds = %if.end139, %if.end111.do.body152_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_more_port_data.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_more_port_data, %if.then164)) #11
          to label %exit_send [label %if.then164], !srcloc !678

if.then164:                                       ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #13
  %93 = ptrtoint ptr %edge_port to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %edge_port, align 4
  %conv166 = zext i16 %94 to i32
  %95 = ptrtoint ptr %count9 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %count9, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @send_more_port_data.__UNIQUE_ID_ddebug311, ptr noundef %dev1, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.154, i32 noundef %29, i32 noundef %conv166, i32 noundef %96) #11
  br label %exit_send

exit_send:                                        ; preds = %if.then164, %do.body152, %if.then59, %if.then46, %do.body34, %if.then18, %do.body12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ep_lock, i32 noundef %call3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_lsr_info(ptr noundef %edge_port, ptr noundef %value) unnamed_addr #2 align 64 {
entry:
  %result = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result) #11
  %0 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %result, align 4
  %ep_lock = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ep_lock) #11
  %maxTxCredits = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 1
  %1 = ptrtoint ptr %maxTxCredits to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %maxTxCredits, align 2
  %3 = ptrtoint ptr %edge_port to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %edge_port, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %4)
  %cmp7 = icmp eq i16 %2, %4
  br i1 %cmp7, label %land.lhs.true, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true:                                    ; preds = %entry
  %count = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp9 = icmp eq i32 %6, 0
  br i1 %cmp9, label %do.body11, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

do.body11:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_lsr_info.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_lsr_info, %if.then16)) #11
          to label %do.end18 [label %if.then16], !srcloc !678

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  %port = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 22
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port, align 4
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %8, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_lsr_info.__UNIQUE_ID_ddebug317, ptr noundef %dev, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.163) #11
  br label %do.end18

do.end18:                                         ; preds = %if.then16, %do.body11
  %9 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %result, align 4
  br label %if.end19

if.end19:                                         ; preds = %do.end18, %land.lhs.true.if.end19_crit_edge, %entry.if.end19_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ep_lock, i32 noundef %call2) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.167, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end19.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

if.end19.copy_to_user.exit.thread_crit_edge:      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %if.end19
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %value, i32 4, i32 -1226833920) #17, !srcloc !683
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %result, i32 noundef 4) #11
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %value, ptr noundef nonnull %result, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool22.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool22.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %if.end19.copy_to_user.exit.thread_crit_edge
  %11 = phi i32 [ -14, %if.end19.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result) #11
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @change_port_settings(ptr noundef %tty, ptr noundef %edge_port, ptr noundef %old_termios) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 22
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %dev1 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 4
  %open = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 14
  %6 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %open, align 4, !range !679
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %openPending = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 15
  %8 = ptrtoint ptr %openPending to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %openPending, align 1, !range !679
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %do.body, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then8)) #11
          to label %cleanup [label %if.then8], !srcloc !678

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug342, ptr noundef %dev1, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.170) #11
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %10 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %c_cflag, align 4
  %and = lshr i32 %11, 4
  %12 = and i32 %and, 3
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.247)
  switch i32 %12, label %if.end9.unreachabledefault [
    i32 0, label %sw.bb
    i32 1, label %sw.bb26
    i32 2, label %sw.bb43
    i32 3, label %sw.bb60
  ]

sw.bb:                                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then22)) #11
          to label %sw.epilog [label %if.then22], !srcloc !678

if.then22:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug343, ptr noundef %dev1, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.170) #11
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then39)) #11
          to label %sw.epilog [label %if.then39], !srcloc !678

if.then39:                                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug344, ptr noundef %dev1, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.170) #11
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then56)) #11
          to label %sw.epilog [label %if.then56], !srcloc !678

if.then56:                                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug345, ptr noundef %dev1, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.170) #11
  br label %sw.epilog

if.end9.unreachabledefault:                       ; preds = %if.end9
  unreachable

sw.bb60:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then73)) #11
          to label %sw.epilog [label %if.then73], !srcloc !678

if.then73:                                        ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug346, ptr noundef %dev1, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.170) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then73, %sw.bb60, %if.then56, %sw.bb43, %if.then39, %sw.bb26, %if.then22, %sw.bb
  %mask.0 = phi i8 [ -1, %if.then73 ], [ 127, %if.then56 ], [ 63, %if.then39 ], [ 31, %if.then22 ], [ 31, %sw.bb ], [ 63, %sw.bb26 ], [ 127, %sw.bb43 ], [ -1, %sw.bb60 ]
  %and77 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %do.body159, label %if.then79

if.then79:                                        ; preds = %sw.epilog
  %and80 = and i32 %11, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  %and120 = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool81.not, label %if.else119, label %if.then82

if.then82:                                        ; preds = %if.then79
  br i1 %tobool121.not, label %if.else, label %if.then85

if.then85:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then98)) #11
          to label %if.end175 [label %if.then98], !srcloc !678

if.then98:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug347, ptr noundef %dev1, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.170) #11
  br label %if.end175

if.else:                                          ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then114)) #11
          to label %if.end175 [label %if.then114], !srcloc !678

if.then114:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug348, ptr noundef %dev1, ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.170) #11
  br label %if.end175

if.else119:                                       ; preds = %if.then79
  br i1 %tobool121.not, label %if.else139, label %if.then122

if.then122:                                       ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then135)) #11
          to label %if.end175 [label %if.then135], !srcloc !678

if.then135:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug349, ptr noundef %dev1, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.170) #11
  br label %if.end175

if.else139:                                       ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then152)) #11
          to label %if.end175 [label %if.then152], !srcloc !678

if.then152:                                       ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug350, ptr noundef %dev1, ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.170) #11
  br label %if.end175

do.body159:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then171)) #11
          to label %if.end175 [label %if.then171], !srcloc !678

if.then171:                                       ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug351, ptr noundef %dev1, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.170) #11
  br label %if.end175

if.end175:                                        ; preds = %if.then171, %do.body159, %if.then152, %if.else139, %if.then135, %if.then122, %if.then114, %if.else, %if.then98, %if.then85
  %lParity.0 = phi i32 [ 40, %if.then98 ], [ 56, %if.then114 ], [ 8, %if.then135 ], [ 24, %if.then152 ], [ 0, %if.then171 ], [ 40, %if.then85 ], [ 56, %if.else ], [ 8, %if.then122 ], [ 24, %if.else139 ], [ 0, %do.body159 ]
  %and176 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176)
  %tobool177.not = icmp eq i32 %and176, 0
  br i1 %tobool177.not, label %if.else195, label %if.then178

if.then178:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then191)) #11
          to label %if.end212 [label %if.then191], !srcloc !678

if.then191:                                       ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug352, ptr noundef %dev1, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.170) #11
  br label %if.end212

if.else195:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then208)) #11
          to label %if.end212 [label %if.then208], !srcloc !678

if.then208:                                       ; preds = %if.else195
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug353, ptr noundef %dev1, ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.170) #11
  br label %if.end212

if.end212:                                        ; preds = %if.then208, %if.else195, %if.then191, %if.then178
  %lStop.0 = phi i32 [ 4, %if.then191 ], [ 0, %if.then208 ], [ 4, %if.then178 ], [ 0, %if.else195 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool214.not = icmp sgt i32 %11, -1
  br i1 %tobool214.not, label %do.body237, label %if.then215

if.then215:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then232)) #11
          to label %if.end253 [label %if.then232], !srcloc !678

if.then232:                                       ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug354, ptr noundef %dev1, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.170) #11
  br label %if.end253

do.body237:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then249)) #11
          to label %if.end253 [label %if.then249], !srcloc !678

if.then249:                                       ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug355, ptr noundef %dev1, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.170) #11
  br label %if.end253

if.end253:                                        ; preds = %if.then249, %do.body237, %if.then232, %if.then215
  %rxFlow.0 = phi i8 [ 1, %if.then232 ], [ 0, %if.then249 ], [ 1, %if.then215 ], [ 0, %do.body237 ]
  %14 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %termios, align 4
  %16 = and i32 %15, 5120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %if.end253.if.end361_crit_edge, label %if.then261

if.end253.if.end361_crit_edge:                    ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end361

if.then261:                                       ; preds = %if.end253
  %arrayidx = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 9
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  %arrayidx265 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 8
  %20 = ptrtoint ptr %arrayidx265 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx265, align 1
  %is_epic = getelementptr inbounds %struct.edgeport_serial, ptr %5, i32 0, i32 5
  %22 = ptrtoint ptr %is_epic to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %is_epic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool266.not = icmp eq i32 %23, 0
  br i1 %tobool266.not, label %if.then261.if.then269_crit_edge, label %lor.lhs.false267

if.then261.if.then269_crit_edge:                  ; preds = %if.then261
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then269

lor.lhs.false267:                                 ; preds = %if.then261
  %Supports = getelementptr inbounds %struct.edgeport_serial, ptr %5, i32 0, i32 4, i32 9
  %24 = ptrtoint ptr %Supports to i32
  call void @__asan_loadN_noabort(i32 %24, i32 12)
  %bf.load = load i96, ptr %Supports, align 4
  %25 = and i96 %bf.load, 288230376151711744
  %tobool268.not = icmp eq i96 %25, 0
  br i1 %tobool268.not, label %lor.lhs.false267.if.end272_crit_edge, label %lor.lhs.false267.if.then269_crit_edge

lor.lhs.false267.if.then269_crit_edge:            ; preds = %lor.lhs.false267
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then269

lor.lhs.false267.if.end272_crit_edge:             ; preds = %lor.lhs.false267
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end272

if.then269:                                       ; preds = %lor.lhs.false267.if.then269_crit_edge, %if.then261.if.then269_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 2592, i32 noundef 10) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.then269.send_iosp_ext_cmd.exit_crit_edge, label %if.end.i

if.then269.send_iosp_ext_cmd.exit_crit_edge:      ; preds = %if.then269
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_iosp_ext_cmd.exit

if.end.i:                                         ; preds = %if.then269
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %port, align 4
  %port_number.i = getelementptr inbounds %struct.usb_serial_port, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %port_number.i, align 4
  %31 = or i8 %30, -56
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %call7.i.i, align 8
  %arrayidx3.i = getelementptr i8, ptr %call7.i.i, i32 1
  %33 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 5, ptr %arrayidx3.i, align 1
  %arrayidx4.i = getelementptr i8, ptr %call7.i.i, i32 2
  %34 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %21, ptr %arrayidx4.i, align 2
  %call5.i = tail call fastcc i32 @write_cmd_usb(ptr noundef %edge_port, ptr noundef nonnull %call7.i.i, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.send_iosp_ext_cmd.exit_crit_edge, label %if.then7.i

if.end.i.send_iosp_ext_cmd.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_iosp_ext_cmd.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %send_iosp_ext_cmd.exit

send_iosp_ext_cmd.exit:                           ; preds = %if.then7.i, %if.end.i.send_iosp_ext_cmd.exit_crit_edge, %if.then269.send_iosp_ext_cmd.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i582 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 2592, i32 noundef 10) #14
  %tobool.not.i583 = icmp eq ptr %call7.i.i582, null
  br i1 %tobool.not.i583, label %send_iosp_ext_cmd.exit.if.end272_crit_edge, label %if.end.i590

send_iosp_ext_cmd.exit.if.end272_crit_edge:       ; preds = %send_iosp_ext_cmd.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end272

if.end.i590:                                      ; preds = %send_iosp_ext_cmd.exit
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %port, align 4
  %port_number.i585 = getelementptr inbounds %struct.usb_serial_port, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %port_number.i585 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %port_number.i585, align 4
  %40 = or i8 %39, -56
  %41 = ptrtoint ptr %call7.i.i582 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %call7.i.i582, align 8
  %arrayidx3.i586 = getelementptr i8, ptr %call7.i.i582, i32 1
  %42 = ptrtoint ptr %arrayidx3.i586 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 6, ptr %arrayidx3.i586, align 1
  %arrayidx4.i587 = getelementptr i8, ptr %call7.i.i582, i32 2
  %43 = ptrtoint ptr %arrayidx4.i587 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %19, ptr %arrayidx4.i587, align 2
  %call5.i588 = tail call fastcc i32 @write_cmd_usb(ptr noundef %edge_port, ptr noundef nonnull %call7.i.i582, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i588)
  %tobool6.not.i589 = icmp eq i32 %call5.i588, 0
  br i1 %tobool6.not.i589, label %if.end.i590.if.end272_crit_edge, label %if.then7.i591

if.end.i590.if.end272_crit_edge:                  ; preds = %if.end.i590
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end272

if.then7.i591:                                    ; preds = %if.end.i590
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i582) #11
  br label %if.end272

if.end272:                                        ; preds = %if.then7.i591, %if.end.i590.if.end272_crit_edge, %send_iosp_ext_cmd.exit.if.end272_crit_edge, %lor.lhs.false267.if.end272_crit_edge
  %44 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %termios, align 4
  %and275 = and i32 %45, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and275)
  %tobool276.not = icmp eq i32 %and275, 0
  br i1 %tobool276.not, label %do.body300, label %if.then277

if.then277:                                       ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #13
  %46 = or i8 %rxFlow.0, 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then293)) #11
          to label %if.end316 [label %if.then293], !srcloc !678

if.then293:                                       ; preds = %if.then277
  call void @__sanitizer_cov_trace_pc() #13
  %conv294 = zext i8 %21 to i32
  %conv295 = zext i8 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug356, ptr noundef %dev1, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.170, i32 noundef %conv294, i32 noundef %conv295) #11
  br label %if.end316

do.body300:                                       ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then312)) #11
          to label %if.end316 [label %if.then312], !srcloc !678

if.then312:                                       ; preds = %do.body300
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug357, ptr noundef %dev1, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.170) #11
  br label %if.end316

if.end316:                                        ; preds = %if.then312, %do.body300, %if.then293, %if.then277
  %rxFlow.1 = phi i8 [ %46, %if.then293 ], [ %rxFlow.0, %if.then312 ], [ %46, %if.then277 ], [ %rxFlow.0, %do.body300 ]
  %47 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %termios, align 4
  %and319 = and i32 %48, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and319)
  %tobool320.not = icmp eq i32 %and319, 0
  br i1 %tobool320.not, label %do.body344, label %if.then321

if.then321:                                       ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #13
  %49 = or i8 %rxFlow.0, 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then337)) #11
          to label %if.end361 [label %if.then337], !srcloc !678

if.then337:                                       ; preds = %if.then321
  call void @__sanitizer_cov_trace_pc() #13
  %conv338 = zext i8 %21 to i32
  %conv339 = zext i8 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug358, ptr noundef %dev1, ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.170, i32 noundef %conv338, i32 noundef %conv339) #11
  br label %if.end361

do.body344:                                       ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then356)) #11
          to label %if.end361 [label %if.then356], !srcloc !678

if.then356:                                       ; preds = %do.body344
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug359, ptr noundef %dev1, ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.170) #11
  br label %if.end361

if.end361:                                        ; preds = %if.then356, %do.body344, %if.then337, %if.then321, %if.end253.if.end361_crit_edge
  %txFlow.2 = phi i8 [ %rxFlow.0, %if.end253.if.end361_crit_edge ], [ %49, %if.then337 ], [ %rxFlow.0, %if.then356 ], [ %49, %if.then321 ], [ %rxFlow.0, %do.body344 ]
  %rxFlow.2 = phi i8 [ %rxFlow.0, %if.end253.if.end361_crit_edge ], [ %rxFlow.1, %if.then337 ], [ %rxFlow.1, %if.then356 ], [ %rxFlow.1, %if.then321 ], [ %rxFlow.1, %do.body344 ]
  %is_epic362 = getelementptr inbounds %struct.edgeport_serial, ptr %5, i32 0, i32 5
  %50 = ptrtoint ptr %is_epic362 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %is_epic362, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool363.not = icmp eq i32 %51, 0
  br i1 %tobool363.not, label %if.end361.if.then372_crit_edge, label %lor.lhs.false364

if.end361.if.then372_crit_edge:                   ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then372

lor.lhs.false364:                                 ; preds = %if.end361
  %Supports366 = getelementptr inbounds %struct.edgeport_serial, ptr %5, i32 0, i32 4, i32 9
  %52 = ptrtoint ptr %Supports366 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 12)
  %bf.load367 = load i96, ptr %Supports366, align 4
  %53 = and i96 %bf.load367, 1152921504606846976
  %tobool371.not = icmp eq i96 %53, 0
  br i1 %tobool371.not, label %lor.lhs.false364.if.end374_crit_edge, label %lor.lhs.false364.if.then372_crit_edge

lor.lhs.false364.if.then372_crit_edge:            ; preds = %lor.lhs.false364
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then372

lor.lhs.false364.if.end374_crit_edge:             ; preds = %lor.lhs.false364
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end374

if.then372:                                       ; preds = %lor.lhs.false364.if.then372_crit_edge, %if.end361.if.then372_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %54 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i594 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %54, i32 noundef 2592, i32 noundef 10) #14
  %tobool.not.i595 = icmp eq ptr %call7.i.i594, null
  br i1 %tobool.not.i595, label %if.then372.if.end374_crit_edge, label %if.end.i602

if.then372.if.end374_crit_edge:                   ; preds = %if.then372
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end374

if.end.i602:                                      ; preds = %if.then372
  %55 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %port, align 4
  %port_number.i597 = getelementptr inbounds %struct.usb_serial_port, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %port_number.i597 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %port_number.i597, align 4
  %59 = or i8 %58, -56
  %60 = ptrtoint ptr %call7.i.i594 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %call7.i.i594, align 8
  %arrayidx3.i598 = getelementptr i8, ptr %call7.i.i594, i32 1
  %61 = ptrtoint ptr %arrayidx3.i598 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 3, ptr %arrayidx3.i598, align 1
  %arrayidx4.i599 = getelementptr i8, ptr %call7.i.i594, i32 2
  %62 = ptrtoint ptr %arrayidx4.i599 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %rxFlow.2, ptr %arrayidx4.i599, align 2
  %call5.i600 = tail call fastcc i32 @write_cmd_usb(ptr noundef %edge_port, ptr noundef nonnull %call7.i.i594, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i600)
  %tobool6.not.i601 = icmp eq i32 %call5.i600, 0
  br i1 %tobool6.not.i601, label %if.end.i602.if.end374_crit_edge, label %if.then7.i603

if.end.i602.if.end374_crit_edge:                  ; preds = %if.end.i602
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end374

if.then7.i603:                                    ; preds = %if.end.i602
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i594) #11
  br label %if.end374

if.end374:                                        ; preds = %if.then7.i603, %if.end.i602.if.end374_crit_edge, %if.then372.if.end374_crit_edge, %lor.lhs.false364.if.end374_crit_edge
  %63 = ptrtoint ptr %is_epic362 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %is_epic362, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool376.not = icmp eq i32 %64, 0
  br i1 %tobool376.not, label %if.end374.if.then385_crit_edge, label %lor.lhs.false377

if.end374.if.then385_crit_edge:                   ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then385

lor.lhs.false377:                                 ; preds = %if.end374
  %Supports379 = getelementptr inbounds %struct.edgeport_serial, ptr %5, i32 0, i32 4, i32 9
  %65 = ptrtoint ptr %Supports379 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 12)
  %bf.load380 = load i96, ptr %Supports379, align 4
  %66 = and i96 %bf.load380, 576460752303423488
  %tobool384.not = icmp eq i96 %66, 0
  br i1 %tobool384.not, label %lor.lhs.false377.if.end387_crit_edge, label %lor.lhs.false377.if.then385_crit_edge

lor.lhs.false377.if.then385_crit_edge:            ; preds = %lor.lhs.false377
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then385

lor.lhs.false377.if.end387_crit_edge:             ; preds = %lor.lhs.false377
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end387

if.then385:                                       ; preds = %lor.lhs.false377.if.then385_crit_edge, %if.end374.if.then385_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %67 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i606 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %67, i32 noundef 2592, i32 noundef 10) #14
  %tobool.not.i607 = icmp eq ptr %call7.i.i606, null
  br i1 %tobool.not.i607, label %if.then385.if.end387_crit_edge, label %if.end.i614

if.then385.if.end387_crit_edge:                   ; preds = %if.then385
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end387

if.end.i614:                                      ; preds = %if.then385
  %68 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %port, align 4
  %port_number.i609 = getelementptr inbounds %struct.usb_serial_port, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %port_number.i609 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %port_number.i609, align 4
  %72 = or i8 %71, -56
  %73 = ptrtoint ptr %call7.i.i606 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %call7.i.i606, align 8
  %arrayidx3.i610 = getelementptr i8, ptr %call7.i.i606, i32 1
  %74 = ptrtoint ptr %arrayidx3.i610 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 4, ptr %arrayidx3.i610, align 1
  %arrayidx4.i611 = getelementptr i8, ptr %call7.i.i606, i32 2
  %75 = ptrtoint ptr %arrayidx4.i611 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %txFlow.2, ptr %arrayidx4.i611, align 2
  %call5.i612 = tail call fastcc i32 @write_cmd_usb(ptr noundef %edge_port, ptr noundef nonnull %call7.i.i606, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i612)
  %tobool6.not.i613 = icmp eq i32 %call5.i612, 0
  br i1 %tobool6.not.i613, label %if.end.i614.if.end387_crit_edge, label %if.then7.i615

if.end.i614.if.end387_crit_edge:                  ; preds = %if.end.i614
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end387

if.then7.i615:                                    ; preds = %if.end.i614
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i606) #11
  br label %if.end387

if.end387:                                        ; preds = %if.then7.i615, %if.end.i614.if.end387_crit_edge, %if.then385.if.end387_crit_edge, %lor.lhs.false377.if.end387_crit_edge
  %shadowLCR = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 6
  %76 = ptrtoint ptr %shadowLCR to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %shadowLCR, align 4
  %78 = and i8 %77, -64
  %or393 = or i32 %lParity.0, %12
  %or395 = or i32 %or393, %lStop.0
  %79 = trunc i32 %or395 to i8
  %conv399 = or i8 %78, %79
  store i8 %conv399, ptr %shadowLCR, align 4
  %validDataMask = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 12
  %80 = ptrtoint ptr %validDataMask to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %mask.0, ptr %validDataMask, align 2
  %call401 = tail call fastcc i32 @send_cmd_write_uart_register(ptr noundef %edge_port, i8 noundef zeroext 3, i8 noundef zeroext %conv399)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call401)
  %cmp.not = icmp eq i32 %call401, 0
  br i1 %cmp.not, label %if.end404, label %if.end387.cleanup_crit_edge

if.end387.cleanup_crit_edge:                      ; preds = %if.end387
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end404:                                        ; preds = %if.end387
  %shadowMCR = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 7
  %and405 = and i32 %11, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and405)
  %tobool406.not = icmp eq i32 %and405, 0
  %spec.select = select i1 %tobool406.not, i8 8, i8 11
  %81 = ptrtoint ptr %shadowMCR to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %spec.select, ptr %shadowMCR, align 1
  %call414 = tail call fastcc i32 @send_cmd_write_uart_register(ptr noundef %edge_port, i8 noundef zeroext 4, i8 noundef zeroext %spec.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call414)
  %cmp415.not = icmp eq i32 %call414, 0
  br i1 %cmp415.not, label %if.end418, label %if.end404.cleanup_crit_edge

if.end404.cleanup_crit_edge:                      ; preds = %if.end404
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end418:                                        ; preds = %if.end404
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool420.not = icmp eq i32 %call.i, 0
  %spec.store.select = select i1 %tobool420.not, i32 9600, i32 %call.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_port_settings.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_port_settings, %if.then435)) #11
          to label %do.end438 [label %if.then435], !srcloc !678

if.then435:                                       ; preds = %if.end418
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @change_port_settings.__UNIQUE_ID_ddebug360, ptr noundef %dev1, ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.170, i32 noundef %spec.store.select) #11
  br label %do.end438

do.end438:                                        ; preds = %if.then435, %if.end418
  %call439 = tail call fastcc i32 @send_cmd_write_baud_rate(ptr noundef %edge_port, i32 noundef %spec.store.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call439)
  %cmp440 = icmp eq i32 %call439, -1
  br i1 %cmp440, label %if.then442, label %do.end438.cleanup_crit_edge

do.end438.cleanup_crit_edge:                      ; preds = %do.end438
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then442:                                       ; preds = %do.end438
  call void @__sanitizer_cov_trace_pc() #13
  %call443 = tail call i32 @tty_termios_baud_rate(ptr noundef %old_termios) #11
  tail call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef %call443, i32 noundef %call443) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then442, %do.end438.cleanup_crit_edge, %if.end404.cleanup_crit_edge, %if.end387.cleanup_crit_edge, %if.then8, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_cmd_write_uart_register(ptr noundef %edge_port, i8 noundef zeroext %regNum, i8 noundef zeroext %regValue) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 22
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 4
  %dev2 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_cmd_write_uart_register.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_cmd_write_uart_register, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !678

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %regNum)
  %cmp = icmp eq i8 %regNum, 4
  %cond = select i1 %cmp, ptr @.str.191, ptr @.str.192
  %conv7 = zext i8 %regValue to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @send_cmd_write_uart_register.__UNIQUE_ID_ddebug339, ptr noundef %dev2, ptr noundef nonnull @.str.190, ptr noundef nonnull %cond, ptr noundef nonnull @.str.189, i32 noundef %conv7) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %is_epic = getelementptr inbounds %struct.edgeport_serial, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %is_epic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %is_epic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %do.end.if.end63_crit_edge, label %land.lhs.true

do.end.if.end63_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

land.lhs.true:                                    ; preds = %do.end
  %Supports = getelementptr inbounds %struct.edgeport_serial, ptr %5, i32 0, i32 4, i32 9
  %8 = ptrtoint ptr %Supports to i32
  call void @__asan_loadN_noabort(i32 %8, i32 12)
  %bf.load = load i96, ptr %Supports, align 4
  %9 = and i96 %bf.load, 36028797018963968
  %tobool9.not = icmp eq i96 %9, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %regNum)
  %cmp12 = icmp eq i8 %regNum, 4
  %or.cond = and i1 %cmp12, %tobool9.not
  br i1 %or.cond, label %do.body15, label %land.lhs.true34

do.body15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_cmd_write_uart_register.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_cmd_write_uart_register, %if.then27)) #11
          to label %cleanup [label %if.then27], !srcloc !678

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @send_cmd_write_uart_register.__UNIQUE_ID_ddebug340, ptr noundef %dev2, ptr noundef nonnull @.str.193) #11
  br label %cleanup

land.lhs.true34:                                  ; preds = %land.lhs.true
  %10 = ptrtoint ptr %Supports to i32
  call void @__asan_loadN_noabort(i32 %10, i32 12)
  %bf.load37 = load i96, ptr %Supports, align 4
  %11 = and i96 %bf.load37, 18014398509481984
  %tobool41.not = icmp eq i96 %11, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %regNum)
  %cmp44 = icmp eq i8 %regNum, 3
  %or.cond111 = and i1 %cmp44, %tobool41.not
  br i1 %or.cond111, label %do.body47, label %land.lhs.true34.if.end63_crit_edge

land.lhs.true34.if.end63_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

do.body47:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_cmd_write_uart_register.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_cmd_write_uart_register, %if.then59)) #11
          to label %cleanup [label %if.then59], !srcloc !678

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @send_cmd_write_uart_register.__UNIQUE_ID_ddebug341, ptr noundef %dev2, ptr noundef nonnull @.str.194) #11
  br label %cleanup

if.end63:                                         ; preds = %land.lhs.true34.if.end63_crit_edge, %do.end.if.end63_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 2592, i32 noundef 16) #14
  %cmp65 = icmp eq ptr %call7.i, null
  br i1 %cmp65, label %if.end63.cleanup_crit_edge, label %if.end68

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end68:                                         ; preds = %if.end63
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port, align 4
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %port_number, align 4
  %17 = shl i8 %regNum, 3
  %18 = and i8 %17, 56
  %19 = or i8 %18, %16
  %or75108 = or i8 %19, -128
  %20 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %or75108, ptr %call7.i, align 8
  %arrayidx77 = getelementptr i8, ptr %call7.i, i32 1
  %21 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %regValue, ptr %arrayidx77, align 1
  %call80 = tail call fastcc i32 @write_cmd_usb(ptr noundef %edge_port, ptr noundef nonnull %call7.i, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end68.cleanup_crit_edge, label %if.then82

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then82:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then82, %if.end68.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.then59, %do.body47, %if.then27, %do.body15
  %retval.0 = phi i32 [ 0, %if.then27 ], [ 0, %if.then59 ], [ -12, %if.end63.cleanup_crit_edge ], [ %call80, %if.then82 ], [ 0, %if.end68.cleanup_crit_edge ], [ 0, %do.body15 ], [ 0, %do.body47 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_cmd_write_baud_rate(ptr noundef %edge_port, i32 noundef %baudRate) unnamed_addr #2 align 64 {
entry:
  %divisor = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 22
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 4
  %dev2 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %divisor) #11
  %6 = ptrtoint ptr %divisor to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %divisor, align 4, !annotation !680
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %port_number, align 4
  %is_epic = getelementptr inbounds %struct.edgeport_serial, ptr %5, i32 0, i32 5
  %9 = ptrtoint ptr %is_epic to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %is_epic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.do.body11_crit_edge, label %land.lhs.true

entry.do.body11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body11

land.lhs.true:                                    ; preds = %entry
  %Supports = getelementptr inbounds %struct.edgeport_serial, ptr %5, i32 0, i32 4, i32 9
  %11 = ptrtoint ptr %Supports to i32
  call void @__asan_loadN_noabort(i32 %11, i32 12)
  %bf.load = load i96, ptr %Supports, align 4
  %12 = and i96 %bf.load, 9007199254740992
  %tobool4.not = icmp eq i96 %12, 0
  br i1 %tobool4.not, label %do.body, label %land.lhs.true.do.body11_crit_edge

land.lhs.true.do.body11_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body11

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_cmd_write_baud_rate.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_cmd_write_baud_rate, %if.then9)) #11
          to label %cleanup [label %if.then9], !srcloc !678

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @send_cmd_write_baud_rate.__UNIQUE_ID_ddebug336, ptr noundef %dev2, ptr noundef nonnull @.str.196, i32 noundef %baudRate) #11
  br label %cleanup

do.body11:                                        ; preds = %land.lhs.true.do.body11_crit_edge, %entry.do.body11_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_cmd_write_baud_rate.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_cmd_write_baud_rate, %if.then23)) #11
          to label %do.end26 [label %if.then23], !srcloc !678

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @send_cmd_write_baud_rate.__UNIQUE_ID_ddebug337, ptr noundef %dev2, ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.195, i32 noundef %baudRate) #11
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %do.body11
  %call27 = call fastcc i32 @calc_baud_rate_divisor(ptr noundef %dev2, i32 noundef %baudRate, ptr noundef nonnull %divisor)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end33, label %do.end32

do.end32:                                         ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.198, ptr noundef nonnull @.str.195) #15
  br label %cleanup

if.end33:                                         ; preds = %do.end26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 2592, i32 noundef 256) #14
  %tobool35.not = icmp eq ptr %call7.i, null
  br i1 %tobool35.not, label %if.end33.cleanup_crit_edge, label %if.end37

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  %14 = or i8 %8, -128
  %or39 = or i8 %8, -104
  %15 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %or39, ptr %call7.i, align 8
  %arrayidx41 = getelementptr i8, ptr %call7.i, i32 1
  %16 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -128, ptr %arrayidx41, align 1
  %add.ptr = getelementptr i8, ptr %call7.i, i32 2
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %14, ptr %add.ptr, align 2
  %18 = ptrtoint ptr %divisor to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %divisor, align 4
  %conv49 = trunc i32 %19 to i8
  %arrayidx50 = getelementptr i8, ptr %call7.i, i32 3
  %20 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv49, ptr %arrayidx50, align 1
  %add.ptr51 = getelementptr i8, ptr %call7.i, i32 4
  %21 = or i8 %8, -120
  %22 = ptrtoint ptr %add.ptr51 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %add.ptr51, align 4
  %and60 = lshr i32 %19, 8
  %conv61 = trunc i32 %and60 to i8
  %arrayidx62 = getelementptr i8, ptr %call7.i, i32 5
  %23 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv61, ptr %arrayidx62, align 1
  %add.ptr63 = getelementptr i8, ptr %call7.i, i32 6
  %24 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %or39, ptr %add.ptr63, align 2
  %shadowLCR = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 6
  %25 = ptrtoint ptr %shadowLCR to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %shadowLCR, align 4
  %arrayidx72 = getelementptr i8, ptr %call7.i, i32 7
  %27 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx72, align 1
  %call77 = tail call fastcc i32 @write_cmd_usb(ptr noundef %edge_port, ptr noundef nonnull %call7.i, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end37.cleanup_crit_edge, label %if.then79

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then79:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then79, %if.end37.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %do.end32, %if.then9, %do.body
  %retval.0 = phi i32 [ %call27, %do.end32 ], [ 0, %if.then9 ], [ -12, %if.end33.cleanup_crit_edge ], [ %call77, %if.then79 ], [ 0, %if.end37.cleanup_crit_edge ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %divisor) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @calc_baud_rate_divisor(ptr noundef %dev, i32 noundef %baudrate, ptr nocapture noundef writeonly %divisor) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %baudrate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.248)
  switch i32 %baudrate, label %for.inc.18 [
    i32 50, label %entry.if.then_crit_edge
    i32 75, label %if.then.fold.split
    i32 110, label %if.then.fold.split35
    i32 134, label %if.then.fold.split36
    i32 150, label %if.then.fold.split37
    i32 300, label %if.then.fold.split38
    i32 600, label %if.then.fold.split39
    i32 1200, label %if.then.fold.split40
    i32 1800, label %if.then.fold.split41
    i32 2400, label %if.then.fold.split42
    i32 4800, label %if.then.fold.split43
    i32 7200, label %if.then.fold.split44
    i32 9600, label %if.then.fold.split45
    i32 14400, label %if.then.fold.split46
    i32 19200, label %if.then.fold.split47
    i32 38400, label %if.then.fold.split48
    i32 57600, label %if.then.fold.split49
    i32 115200, label %if.then.fold.split50
    i32 230400, label %if.then.fold.split51
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then.fold.split35:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then.fold.split36:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then.fold.split37:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then.fold.split38:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then.fold.split39:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then.fold.split40:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then.fold.split41:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then.fold.split42:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then.fold.split43:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then.fold.split44:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then.fold.split45:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then.fold.split46:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then.fold.split47:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then.fold.split48:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then.fold.split49:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then.fold.split50:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then.fold.split51:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %if.then.fold.split51, %if.then.fold.split50, %if.then.fold.split49, %if.then.fold.split48, %if.then.fold.split47, %if.then.fold.split46, %if.then.fold.split45, %if.then.fold.split44, %if.then.fold.split43, %if.then.fold.split42, %if.then.fold.split41, %if.then.fold.split40, %if.then.fold.split39, %if.then.fold.split38, %if.then.fold.split37, %if.then.fold.split36, %if.then.fold.split35, %if.then.fold.split, %entry.if.then_crit_edge
  %i.033.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split35 ], [ 3, %if.then.fold.split36 ], [ 4, %if.then.fold.split37 ], [ 5, %if.then.fold.split38 ], [ 6, %if.then.fold.split39 ], [ 7, %if.then.fold.split40 ], [ 8, %if.then.fold.split41 ], [ 9, %if.then.fold.split42 ], [ 10, %if.then.fold.split43 ], [ 11, %if.then.fold.split44 ], [ 12, %if.then.fold.split45 ], [ 13, %if.then.fold.split46 ], [ 14, %if.then.fold.split47 ], [ 15, %if.then.fold.split48 ], [ 16, %if.then.fold.split49 ], [ 17, %if.then.fold.split50 ], [ 18, %if.then.fold.split51 ]
  %Divisor = getelementptr [19 x %struct.divisor_table_entry], ptr @divisor_table, i32 0, i32 %i.033.lcssa, i32 1
  %1 = ptrtoint ptr %Divisor to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %Divisor, align 4
  %conv = zext i16 %2 to i32
  %3 = ptrtoint ptr %divisor to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %divisor, align 4
  br label %cleanup

for.inc.18:                                       ; preds = %entry
  %4 = add i32 %baudrate, -51
  call void @__sanitizer_cov_trace_const_cmp4(i32 230349, i32 %4)
  %5 = icmp ult i32 %4, 230349
  br i1 %5, label %if.then7, label %for.inc.18.cleanup_crit_edge

for.inc.18.cleanup_crit_edge:                     ; preds = %for.inc.18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %for.inc.18
  call void @__sanitizer_cov_trace_pc() #13
  %div2931 = lshr i32 %baudrate, 1
  %add = add nuw nsw i32 %div2931, 230400
  %div830 = udiv i32 %add, %baudrate
  %6 = ptrtoint ptr %divisor to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div830, ptr %divisor, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @calc_baud_rate_divisor.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@calc_baud_rate_divisor, %if.then13)) #11
          to label %cleanup [label %if.then13], !srcloc !678

if.then13:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @calc_baud_rate_divisor.__UNIQUE_ID_ddebug338, ptr noundef %dev, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.199, i32 noundef %baudrate, i32 noundef %div830) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.then7, %for.inc.18.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then13 ], [ -1, %for.inc.18.cleanup_crit_edge ], [ 0, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @process_rcvd_data(ptr nocapture noundef %edge_serial, ptr noundef %buffer, i16 noundef zeroext %bufferLength) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %serial1 = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 24
  %0 = ptrtoint ptr %serial1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bufferLength)
  %cmp.not260 = icmp eq i16 %bufferLength, 0
  br i1 %cmp.not260, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %add = add i16 %bufferLength, 1
  %rxState = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 16
  %rxHeader3 = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 19
  %rxStatusParam173 = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 22
  %rxHeader1 = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 17
  %rxHeader2 = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 18
  %rxPort = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 20
  %rxStatusCode = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 21
  %rxBytesRemaining = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 23
  %num_ports = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %buffer.addr.0263 = phi ptr [ %buffer, %while.body.lr.ph ], [ %buffer.addr.3, %sw.epilog.while.body_crit_edge ]
  %bufferLength.addr.0262 = phi i16 [ %bufferLength, %while.body.lr.ph ], [ %bufferLength.addr.3, %sw.epilog.while.body_crit_edge ]
  %lastBufferLength.0261 = phi i16 [ %add, %while.body.lr.ph ], [ %bufferLength.addr.0262, %sw.epilog.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %lastBufferLength.0261, i16 %bufferLength.addr.0262)
  %cmp9 = icmp eq i16 %lastBufferLength.0261, %bufferLength.addr.0262
  br i1 %cmp9, label %do.body, label %if.end14

do.body:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_rcvd_data.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_rcvd_data, %if.then13)) #11
          to label %while.end [label %if.then13], !srcloc !678

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @process_rcvd_data.__UNIQUE_ID_ddebug323, ptr noundef %dev3, ptr noundef nonnull @.str.223, ptr noundef nonnull @.str.222) #11
  br label %while.end

if.end14:                                         ; preds = %while.body
  %4 = ptrtoint ptr %rxState to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rxState, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.249)
  switch i32 %5, label %if.end14.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end14.sw.bb21_crit_edge
    i32 2, label %if.end14.sw.bb108_crit_edge
    i32 3, label %sw.bb170
  ]

if.end14.sw.bb108_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb108

if.end14.sw.bb21_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb21

if.end14.sw.epilog_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end14
  %7 = ptrtoint ptr %buffer.addr.0263 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buffer.addr.0263, align 1
  %9 = ptrtoint ptr %rxHeader1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %rxHeader1, align 4
  %incdec.ptr = getelementptr i8, ptr %buffer.addr.0263, i32 1
  %dec = add i16 %bufferLength.addr.0262, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec)
  %cmp16 = icmp eq i16 %dec, 0
  br i1 %cmp16, label %if.then18, label %sw.bb.sw.bb21_crit_edge

sw.bb.sw.bb21_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb21

if.then18:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %rxState to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %rxState, align 4
  br label %while.end

sw.bb21:                                          ; preds = %sw.bb.sw.bb21_crit_edge, %if.end14.sw.bb21_crit_edge
  %bufferLength.addr.1 = phi i16 [ %bufferLength.addr.0262, %if.end14.sw.bb21_crit_edge ], [ %dec, %sw.bb.sw.bb21_crit_edge ]
  %buffer.addr.1 = phi ptr [ %buffer.addr.0263, %if.end14.sw.bb21_crit_edge ], [ %incdec.ptr, %sw.bb.sw.bb21_crit_edge ]
  %11 = ptrtoint ptr %buffer.addr.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %buffer.addr.1, align 1
  %13 = ptrtoint ptr %rxHeader2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %rxHeader2, align 1
  %incdec.ptr22 = getelementptr i8, ptr %buffer.addr.1, i32 1
  %dec23 = add i16 %bufferLength.addr.1, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_rcvd_data.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_rcvd_data, %if.then36)) #11
          to label %do.end43 [label %if.then36], !srcloc !678

if.then36:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %rxHeader1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rxHeader1, align 4
  %conv38 = zext i8 %15 to i32
  %16 = ptrtoint ptr %rxHeader2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rxHeader2, align 1
  %conv40 = zext i8 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @process_rcvd_data.__UNIQUE_ID_ddebug324, ptr noundef %dev3, ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.222, i32 noundef %conv38, i32 noundef %conv40) #11
  br label %do.end43

do.end43:                                         ; preds = %if.then36, %sw.bb21
  %18 = ptrtoint ptr %rxHeader1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rxHeader1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %tobool46.not = icmp sgt i8 %19, -1
  %and69 = and i8 %19, 7
  %20 = ptrtoint ptr %rxPort to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %and69, ptr %rxPort, align 1
  br i1 %tobool46.not, label %if.end66, label %if.then47

if.then47:                                        ; preds = %do.end43
  %21 = lshr i8 %19, 3
  %22 = and i8 %21, 15
  %23 = ptrtoint ptr %rxStatusCode to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %rxStatusCode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %22)
  %cmp58 = icmp ult i8 %22, 8
  %24 = ptrtoint ptr %rxHeader2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rxHeader2, align 1
  br i1 %cmp58, label %if.end63, label %if.then60

if.then60:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %rxStatusParam173 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %rxStatusParam173, align 1
  %27 = ptrtoint ptr %rxState to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %rxState, align 4
  br label %sw.epilog

if.end63:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @process_rcvd_status(ptr noundef %edge_serial, i8 noundef zeroext %25, i8 noundef zeroext 0)
  %28 = ptrtoint ptr %rxState to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %rxState, align 4
  br label %sw.epilog

if.end66:                                         ; preds = %do.end43
  %29 = and i8 %19, 120
  %conv76 = zext i8 %29 to i16
  %shl = shl nuw nsw i16 %conv76, 5
  %30 = ptrtoint ptr %rxHeader2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rxHeader2, align 1
  %conv80 = zext i8 %31 to i16
  %or = or i16 %shl, %conv80
  %32 = ptrtoint ptr %rxBytesRemaining to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %or, ptr %rxBytesRemaining, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_rcvd_data.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_rcvd_data, %if.then94)) #11
          to label %do.end101 [label %if.then94], !srcloc !678

if.then94:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %rxPort to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %rxPort, align 1
  %conv96 = zext i8 %34 to i32
  %35 = ptrtoint ptr %rxBytesRemaining to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %rxBytesRemaining, align 2
  %conv98 = sext i16 %36 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @process_rcvd_data.__UNIQUE_ID_ddebug325, ptr noundef %dev3, ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.222, i32 noundef %conv96, i32 noundef %conv98) #11
  br label %do.end101

do.end101:                                        ; preds = %if.then94, %if.end66
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec23)
  %cmp103 = icmp eq i16 %dec23, 0
  br i1 %cmp103, label %if.then105, label %do.end101.sw.bb108_crit_edge

do.end101.sw.bb108_crit_edge:                     ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb108

if.then105:                                       ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %rxState to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %rxState, align 4
  br label %while.end

sw.bb108:                                         ; preds = %do.end101.sw.bb108_crit_edge, %if.end14.sw.bb108_crit_edge
  %bufferLength.addr.2 = phi i16 [ %bufferLength.addr.0262, %if.end14.sw.bb108_crit_edge ], [ %dec23, %do.end101.sw.bb108_crit_edge ]
  %buffer.addr.2 = phi ptr [ %buffer.addr.0263, %if.end14.sw.bb108_crit_edge ], [ %incdec.ptr22, %do.end101.sw.bb108_crit_edge ]
  %conv109 = zext i16 %bufferLength.addr.2 to i32
  %38 = ptrtoint ptr %rxBytesRemaining to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %rxBytesRemaining, align 2
  %conv111 = sext i16 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv109, i32 %conv111)
  %cmp112 = icmp slt i32 %conv109, %conv111
  %. = select i1 %cmp112, i32 2, i32 0
  %bufferLength.addr.2. = select i1 %cmp112, i16 %bufferLength.addr.2, i16 %39
  %40 = ptrtoint ptr %rxState to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %., ptr %rxState, align 4
  %conv119 = zext i16 %bufferLength.addr.2. to i32
  %sub = sub i16 %bufferLength.addr.2, %bufferLength.addr.2.
  %sub125 = sub i16 %39, %bufferLength.addr.2.
  %41 = ptrtoint ptr %rxBytesRemaining to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %sub125, ptr %rxBytesRemaining, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bufferLength.addr.2.)
  %tobool128.not = icmp eq i16 %bufferLength.addr.2., 0
  br i1 %tobool128.not, label %sw.bb108.if.end168_crit_edge, label %land.lhs.true

sw.bb108.if.end168_crit_edge:                     ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

land.lhs.true:                                    ; preds = %sw.bb108
  %42 = ptrtoint ptr %rxPort to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %rxPort, align 1
  %44 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %num_ports, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %45)
  %cmp132 = icmp ult i8 %43, %45
  br i1 %cmp132, label %if.then134, label %land.lhs.true.if.end168_crit_edge

land.lhs.true.if.end168_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

if.then134:                                       ; preds = %land.lhs.true
  %conv130 = zext i8 %43 to i32
  %arrayidx = getelementptr %struct.usb_serial, ptr %1, i32 0, i32 12, i32 %conv130
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %47, i32 0, i32 32, i32 8
  %48 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %driver_data.i.i, align 4
  %tobool138.not = icmp eq ptr %49, null
  br i1 %tobool138.not, label %if.then134.if.end168_crit_edge, label %land.lhs.true139

if.then134.if.end168_crit_edge:                   ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

land.lhs.true139:                                 ; preds = %if.then134
  %open = getelementptr inbounds %struct.edgeport_port, ptr %49, i32 0, i32 14
  %50 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %open, align 4, !range !679
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool140.not = icmp eq i8 %51, 0
  br i1 %tobool140.not, label %land.lhs.true139.if.end168_crit_edge, label %do.body143

land.lhs.true139.if.end168_crit_edge:             ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

do.body143:                                       ; preds = %land.lhs.true139
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_rcvd_data.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_rcvd_data, %if.then155)) #11
          to label %do.end161 [label %if.then155], !srcloc !678

if.then155:                                       ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %rxPort to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %rxPort, align 1
  %conv158 = zext i8 %53 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @process_rcvd_data.__UNIQUE_ID_ddebug326, ptr noundef %dev3, ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.222, i32 noundef %conv119, i32 noundef %conv158) #11
  br label %do.end161

do.end161:                                        ; preds = %if.then155, %do.body143
  %port162 = getelementptr inbounds %struct.edgeport_port, ptr %49, i32 0, i32 22
  %54 = ptrtoint ptr %port162 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %port162, align 4
  %port1.i = getelementptr inbounds %struct.usb_serial_port, ptr %55, i32 0, i32 1
  %call.i.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port1.i, ptr noundef %buffer.addr.2, i8 noundef zeroext 0, i32 noundef %conv119) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %conv119)
  %cmp.i = icmp slt i32 %call.i.i, %conv119
  br i1 %cmp.i, label %do.end.i, label %do.end161.edge_tty_recv.exit_crit_edge

do.end161.edge_tty_recv.exit_crit_edge:           ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #13
  br label %edge_tty_recv.exit

do.end.i:                                         ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %55, i32 0, i32 32
  %sub.i = sub i32 %conv119, %call.i.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.237, i32 noundef %sub.i) #15
  br label %edge_tty_recv.exit

edge_tty_recv.exit:                               ; preds = %do.end.i, %do.end161.edge_tty_recv.exit_crit_edge
  tail call void @tty_flip_buffer_push(ptr noundef %port1.i) #11
  %56 = ptrtoint ptr %port162 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %port162, align 4
  %rx = getelementptr inbounds %struct.usb_serial_port, ptr %57, i32 0, i32 27, i32 5
  %58 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx, align 4
  %add166 = add i32 %59, %conv119
  store i32 %add166, ptr %rx, align 4
  br label %if.end168

if.end168:                                        ; preds = %edge_tty_recv.exit, %land.lhs.true139.if.end168_crit_edge, %if.then134.if.end168_crit_edge, %land.lhs.true.if.end168_crit_edge, %sw.bb108.if.end168_crit_edge
  %add.ptr = getelementptr i8, ptr %buffer.addr.2, i32 %conv119
  br label %sw.epilog

sw.bb170:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %buffer.addr.0263 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %buffer.addr.0263, align 1
  %62 = ptrtoint ptr %rxHeader3 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %rxHeader3, align 2
  %incdec.ptr171 = getelementptr i8, ptr %buffer.addr.0263, i32 1
  %dec172 = add i16 %bufferLength.addr.0262, -1
  %63 = ptrtoint ptr %rxStatusParam173 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %rxStatusParam173, align 1
  tail call fastcc void @process_rcvd_status(ptr noundef %edge_serial, i8 noundef zeroext %64, i8 noundef zeroext %61)
  %65 = ptrtoint ptr %rxState to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %rxState, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb170, %if.end168, %if.end63, %if.then60, %if.end14.sw.epilog_crit_edge
  %bufferLength.addr.3 = phi i16 [ %bufferLength.addr.0262, %if.end14.sw.epilog_crit_edge ], [ %dec172, %sw.bb170 ], [ %sub, %if.end168 ], [ %dec23, %if.end63 ], [ %dec23, %if.then60 ]
  %buffer.addr.3 = phi ptr [ %buffer.addr.0263, %if.end14.sw.epilog_crit_edge ], [ %incdec.ptr171, %sw.bb170 ], [ %add.ptr, %if.end168 ], [ %incdec.ptr22, %if.end63 ], [ %incdec.ptr22, %if.then60 ]
  %cmp.not = icmp eq i16 %bufferLength.addr.3, 0
  br i1 %cmp.not, label %sw.epilog.while.end_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %if.then105, %if.then18, %if.then13, %do.body, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @process_rcvd_status(ptr nocapture noundef readonly %edge_serial, i8 noundef zeroext %byte2, i8 noundef zeroext %byte3) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rxStatusCode = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 21
  %0 = ptrtoint ptr %rxStatusCode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rxStatusCode, align 4
  %rxPort = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 20
  %2 = ptrtoint ptr %rxPort to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rxPort, align 1
  %serial = getelementptr inbounds %struct.edgeport_serial, ptr %edge_serial, i32 0, i32 24
  %4 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serial, align 4
  %num_ports = getelementptr inbounds %struct.usb_serial, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_ports, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %7)
  %cmp.not = icmp ult i8 %3, %7
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.usb_serial, ptr %5, i32 0, i32 12, i32 %conv
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 32, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %cmp6 = icmp eq ptr %11, null
  br i1 %cmp6, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  %dev11 = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.228, i32 noundef %conv) #15
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %dev15 = getelementptr inbounds %struct.usb_serial_port, ptr %9, i32 0, i32 32
  %conv16 = zext i8 %1 to i32
  %14 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.250)
  switch i8 %1, label %if.end14.if.end87_crit_edge [
    i8 9, label %if.then19
    i8 10, label %if.then56
  ]

if.end14.if.end87_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

if.then19:                                        ; preds = %if.end14
  %15 = zext i8 %byte2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.251)
  switch i8 %byte2, label %if.then19.if.end87_crit_edge [
    i8 0, label %do.body21
    i8 1, label %do.body33
  ]

if.then19.if.end87_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

do.body21:                                        ; preds = %if.then19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_rcvd_status.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_rcvd_status, %if.then25)) #11
          to label %do.end31 [label %if.then25], !srcloc !678

if.then25:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %rxPort to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rxPort, align 1
  %conv27 = zext i8 %17 to i32
  %conv28 = zext i8 %byte3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @process_rcvd_status.__UNIQUE_ID_ddebug327, ptr noundef %dev15, ptr noundef nonnull @.str.229, ptr noundef nonnull @.str.228, i32 noundef %conv27, i32 noundef %conv28) #11
  br label %do.end31

do.end31:                                         ; preds = %if.then25, %do.body21
  %chaseResponsePending = getelementptr inbounds %struct.edgeport_port, ptr %11, i32 0, i32 18
  %18 = ptrtoint ptr %chaseResponsePending to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %chaseResponsePending, align 4
  %wait_chase = getelementptr inbounds %struct.edgeport_port, ptr %11, i32 0, i32 19
  tail call void @__wake_up(ptr noundef %wait_chase, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %cleanup

do.body33:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_rcvd_status.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_rcvd_status, %if.then45)) #11
          to label %cleanup [label %if.then45], !srcloc !678

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %rxPort to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rxPort, align 1
  %conv47 = zext i8 %20 to i32
  %conv48 = zext i8 %byte3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @process_rcvd_status.__UNIQUE_ID_ddebug328, ptr noundef %dev15, ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.228, i32 noundef %conv47, i32 noundef %conv48) #11
  br label %cleanup

if.then56:                                        ; preds = %if.end14
  %conv57 = zext i8 %byte3 to i16
  %add = shl nuw nsw i16 %conv57, 6
  %mul = add nuw nsw i16 %add, 64
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %mul, ptr %11, align 4
  %maxTxCredits = getelementptr inbounds %struct.edgeport_port, ptr %11, i32 0, i32 1
  %22 = ptrtoint ptr %maxTxCredits to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %mul, ptr %maxTxCredits, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_rcvd_status.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_rcvd_status, %if.then72)) #11
          to label %do.end80 [label %if.then72], !srcloc !678

if.then72:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %rxPort to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rxPort, align 1
  %conv74 = zext i8 %24 to i32
  %conv75 = zext i8 %byte2 to i32
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %11, align 4
  %conv77 = zext i16 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @process_rcvd_status.__UNIQUE_ID_ddebug329, ptr noundef %dev15, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.228, i32 noundef %conv74, i32 noundef %conv75, i32 noundef %conv77) #11
  br label %do.end80

do.end80:                                         ; preds = %if.then72, %if.then56
  %conv.i = zext i8 %byte2 to i32
  %and.i = and i32 %conv.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end80.handle_new_msr.exit_crit_edge, label %if.then.i

do.end80.handle_new_msr.exit_crit_edge:           ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_new_msr.exit

if.then.i:                                        ; preds = %do.end80
  %port.i = getelementptr inbounds %struct.edgeport_port, ptr %11, i32 0, i32 22
  %27 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %port.i, align 4
  %and3.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then5.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %icount1.i = getelementptr inbounds %struct.usb_serial_port, ptr %28, i32 0, i32 27
  %29 = ptrtoint ptr %icount1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %icount1.i, align 4
  %inc.i = add i32 %30, 1
  store i32 %inc.i, ptr %icount1.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then5.i, %if.then.i.if.end.i_crit_edge
  %and7.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then9.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %dsr.i = getelementptr inbounds %struct.usb_serial_port, ptr %28, i32 0, i32 27, i32 1
  %31 = ptrtoint ptr %dsr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dsr.i, align 4
  %inc10.i = add i32 %32, 1
  store i32 %inc10.i, ptr %dsr.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.end.i.if.end11.i_crit_edge
  %and13.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end11.i.if.end17.i_crit_edge, label %if.then15.i

if.end11.i.if.end17.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.then15.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  %dcd.i = getelementptr inbounds %struct.usb_serial_port, ptr %28, i32 0, i32 27, i32 3
  %33 = ptrtoint ptr %dcd.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dcd.i, align 4
  %inc16.i = add i32 %34, 1
  store i32 %inc16.i, ptr %dcd.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then15.i, %if.end11.i.if.end17.i_crit_edge
  %and19.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end17.i.if.end23.i_crit_edge, label %if.then21.i

if.end17.i.if.end23.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  %rng.i = getelementptr inbounds %struct.usb_serial_port, ptr %28, i32 0, i32 27, i32 2
  %35 = ptrtoint ptr %rng.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rng.i, align 4
  %inc22.i = add i32 %36, 1
  store i32 %inc22.i, ptr %rng.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.end17.i.if.end23.i_crit_edge
  %37 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %port.i, align 4
  %delta_msr_wait.i = getelementptr inbounds %struct.usb_serial_port, ptr %38, i32 0, i32 1, i32 9
  tail call void @__wake_up(ptr noundef %delta_msr_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  br label %handle_new_msr.exit

handle_new_msr.exit:                              ; preds = %if.end23.i, %do.end80.handle_new_msr.exit_crit_edge
  %and28.i = and i8 %byte2, -16
  %shadowMSR.i = getelementptr inbounds %struct.edgeport_port, ptr %11, i32 0, i32 8
  %39 = ptrtoint ptr %shadowMSR.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %and28.i, ptr %shadowMSR.i, align 2
  %port81 = getelementptr inbounds %struct.edgeport_port, ptr %11, i32 0, i32 22
  %40 = ptrtoint ptr %port81 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %port81, align 4
  %port82 = getelementptr inbounds %struct.usb_serial_port, ptr %41, i32 0, i32 1
  %call83 = tail call ptr @tty_port_tty_get(ptr noundef %port82) #11
  %tobool84.not = icmp eq ptr %call83, null
  br i1 %tobool84.not, label %handle_new_msr.exit.if.end86_crit_edge, label %if.then85

handle_new_msr.exit.if.end86_crit_edge:           ; preds = %handle_new_msr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

if.then85:                                        ; preds = %handle_new_msr.exit
  call void @__sanitizer_cov_trace_pc() #13
  %termios = getelementptr inbounds %struct.tty_struct, ptr %call83, i32 0, i32 13
  tail call fastcc void @change_port_settings(ptr noundef nonnull %call83, ptr noundef nonnull %11, ptr noundef %termios)
  tail call void @tty_kref_put(ptr noundef nonnull %call83) #11
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %handle_new_msr.exit.if.end86_crit_edge
  %openPending = getelementptr inbounds %struct.edgeport_port, ptr %11, i32 0, i32 15
  %42 = ptrtoint ptr %openPending to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %openPending, align 1
  %open = getelementptr inbounds %struct.edgeport_port, ptr %11, i32 0, i32 14
  %43 = ptrtoint ptr %open to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %open, align 4
  %wait_open = getelementptr inbounds %struct.edgeport_port, ptr %11, i32 0, i32 20
  tail call void @__wake_up(ptr noundef %wait_open, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %cleanup

if.end87:                                         ; preds = %if.then19.if.end87_crit_edge, %if.end14.if.end87_crit_edge
  %open88 = getelementptr inbounds %struct.edgeport_port, ptr %11, i32 0, i32 14
  %44 = ptrtoint ptr %open88 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %open88, align 4, !range !679
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool89.not = icmp eq i8 %45, 0
  br i1 %tobool89.not, label %if.end87.cleanup_crit_edge, label %lor.lhs.false

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end87
  %closePending = getelementptr inbounds %struct.edgeport_port, ptr %11, i32 0, i32 17
  %46 = ptrtoint ptr %closePending to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %closePending, align 1, !range !679
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool90.not = icmp eq i8 %47, 0
  br i1 %tobool90.not, label %if.end93, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end93:                                         ; preds = %lor.lhs.false
  %48 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.252)
  switch i8 %1, label %do.body156 [
    i8 0, label %do.body96
    i8 8, label %do.body116
    i8 1, label %do.body137
  ]

do.body96:                                        ; preds = %if.end93
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_rcvd_status.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_rcvd_status, %if.then108)) #11
          to label %do.end114 [label %if.then108], !srcloc !678

if.then108:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %rxPort to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %rxPort, align 1
  %conv110 = zext i8 %50 to i32
  %conv111 = zext i8 %byte2 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @process_rcvd_status.__UNIQUE_ID_ddebug330, ptr noundef %dev15, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.228, i32 noundef %conv110, i32 noundef %conv111) #11
  br label %do.end114

do.end114:                                        ; preds = %if.then108, %do.body96
  tail call fastcc void @handle_new_lsr(ptr noundef nonnull %11, i8 noundef zeroext 0, i8 noundef zeroext %byte2, i8 noundef zeroext 0)
  br label %cleanup

do.body116:                                       ; preds = %if.end93
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_rcvd_status.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_rcvd_status, %if.then128)) #11
          to label %do.end135 [label %if.then128], !srcloc !678

if.then128:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %rxPort to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %rxPort, align 1
  %conv130 = zext i8 %52 to i32
  %conv131 = zext i8 %byte2 to i32
  %conv132 = zext i8 %byte3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @process_rcvd_status.__UNIQUE_ID_ddebug331, ptr noundef %dev15, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.228, i32 noundef %conv130, i32 noundef %conv131, i32 noundef %conv132) #11
  br label %do.end135

do.end135:                                        ; preds = %if.then128, %do.body116
  tail call fastcc void @handle_new_lsr(ptr noundef nonnull %11, i8 noundef zeroext 1, i8 noundef zeroext %byte2, i8 noundef zeroext %byte3)
  br label %cleanup

do.body137:                                       ; preds = %if.end93
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_rcvd_status.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_rcvd_status, %if.then149)) #11
          to label %do.end155 [label %if.then149], !srcloc !678

if.then149:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %rxPort to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %rxPort, align 1
  %conv151 = zext i8 %54 to i32
  %conv152 = zext i8 %byte2 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @process_rcvd_status.__UNIQUE_ID_ddebug332, ptr noundef %dev15, ptr noundef nonnull @.str.234, ptr noundef nonnull @.str.228, i32 noundef %conv151, i32 noundef %conv152) #11
  br label %do.end155

do.end155:                                        ; preds = %if.then149, %do.body137
  tail call fastcc void @handle_new_msr(ptr noundef nonnull %11, i8 noundef zeroext %byte2)
  br label %cleanup

do.body156:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_rcvd_status.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_rcvd_status, %if.then168)) #11
          to label %cleanup [label %if.then168], !srcloc !678

if.then168:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @process_rcvd_status.__UNIQUE_ID_ddebug333, ptr noundef %dev15, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.228, i32 noundef %conv16) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then168, %do.body156, %do.end155, %do.end135, %do.end114, %lor.lhs.false.cleanup_crit_edge, %if.end87.cleanup_crit_edge, %if.end86, %if.then45, %do.body33, %do.end31, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_new_msr(ptr nocapture noundef %edge_port, i8 noundef zeroext %newMsr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %newMsr to i32
  %and = and i32 %conv, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end26_crit_edge, label %if.then

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then:                                          ; preds = %entry
  %port = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 22
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %and3 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %icount1 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %icount1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %icount1, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %icount1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %and7 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dsr = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 27, i32 1
  %4 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dsr, align 4
  %inc10 = add i32 %5, 1
  store i32 %inc10, ptr %dsr, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  %and13 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end11.if.end17_crit_edge, label %if.then15

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %dcd = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 27, i32 3
  %6 = ptrtoint ptr %dcd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dcd, align 4
  %inc16 = add i32 %7, 1
  store i32 %inc16, ptr %dcd, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end11.if.end17_crit_edge
  %and19 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end17.if.end23_crit_edge, label %if.then21

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %rng = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 27, i32 2
  %8 = ptrtoint ptr %rng to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rng, align 4
  %inc22 = add i32 %9, 1
  store i32 %inc22, ptr %rng, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end17.if.end23_crit_edge
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port, align 4
  %delta_msr_wait = getelementptr inbounds %struct.usb_serial_port, ptr %11, i32 0, i32 1, i32 9
  tail call void @__wake_up(ptr noundef %delta_msr_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  br label %if.end26

if.end26:                                         ; preds = %if.end23, %entry.if.end26_crit_edge
  %and28 = and i8 %newMsr, -16
  %shadowMSR = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 8
  %12 = ptrtoint ptr %shadowMSR to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %and28, ptr %shadowMSR, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_new_lsr(ptr nocapture noundef %edge_port, i8 noundef zeroext %lsrData, i8 noundef zeroext %lsr, i8 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  %data.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %data, ptr %data.addr, align 1
  %shadowLSR = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 9
  %1 = ptrtoint ptr %shadowLSR to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %lsr, ptr %shadowLSR, align 1
  %2 = and i8 %lsr, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %spec.select.v = select i1 %tobool.not, i8 30, i8 18
  %spec.select = and i8 %spec.select.v, %lsr
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %lsrData)
  %tobool7.not = icmp eq i8 %lsrData, 0
  br i1 %tobool7.not, label %entry.if.end9_crit_edge, label %if.then8

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then8:                                         ; preds = %entry
  %port = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 22
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port, align 4
  %port1.i = getelementptr inbounds %struct.usb_serial_port, ptr %4, i32 0, i32 1
  %call.i.i = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port1.i, ptr noundef nonnull %data.addr, i8 noundef zeroext 0, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 1
  br i1 %cmp.i, label %do.end.i, label %if.then8.edge_tty_recv.exit_crit_edge

if.then8.edge_tty_recv.exit_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %edge_tty_recv.exit

do.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %4, i32 0, i32 32
  %sub.i = sub i32 1, %call.i.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.237, i32 noundef %sub.i) #15
  br label %edge_tty_recv.exit

edge_tty_recv.exit:                               ; preds = %do.end.i, %if.then8.edge_tty_recv.exit_crit_edge
  call void @tty_flip_buffer_push(ptr noundef %port1.i) #11
  br label %if.end9

if.end9:                                          ; preds = %edge_tty_recv.exit, %entry.if.end9_crit_edge
  %port10 = getelementptr inbounds %struct.edgeport_port, ptr %edge_port, i32 0, i32 22
  %5 = ptrtoint ptr %port10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port10, align 4
  %conv12 = zext i8 %spec.select to i32
  %and13 = and i32 %conv12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end9.if.end16_crit_edge, label %if.then15

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %brk = getelementptr inbounds %struct.usb_serial_port, ptr %6, i32 0, i32 27, i32 9
  %7 = ptrtoint ptr %brk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %brk, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %brk, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end9.if.end16_crit_edge
  %and18 = and i32 %conv12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end16.if.end22_crit_edge, label %if.then20

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %overrun = getelementptr inbounds %struct.usb_serial_port, ptr %6, i32 0, i32 27, i32 8
  %9 = ptrtoint ptr %overrun to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %overrun, align 4
  %inc21 = add i32 %10, 1
  store i32 %inc21, ptr %overrun, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end16.if.end22_crit_edge
  %and24 = and i32 %conv12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end22.if.end28_crit_edge, label %if.then26

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %parity = getelementptr inbounds %struct.usb_serial_port, ptr %6, i32 0, i32 27, i32 7
  %11 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %parity, align 4
  %inc27 = add i32 %12, 1
  store i32 %inc27, ptr %parity, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end22.if.end28_crit_edge
  %and30 = and i32 %conv12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end28.if.end34_crit_edge, label %if.then32

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %frame = getelementptr inbounds %struct.usb_serial_port, ptr %6, i32 0, i32 27, i32 6
  %13 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %frame, align 4
  %inc33 = add i32 %14, 1
  store i32 %inc33, ptr %frame, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end28.if.end34_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 269)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 269)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !38, !39, !40, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !170, !172, !173, !175, !176, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !192, !193, !195, !196, !198, !199, !201, !202, !204, !205, !207, !208, !210, !211, !213, !214, !216, !217, !219, !220, !222, !223, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !239, !240, !242, !243, !245, !246, !248, !249, !251, !252, !254, !255, !257, !258, !260, !262, !264, !266, !268, !269, !270, !272, !273, !274, !276, !277, !279, !280, !281, !283, !284, !286, !287, !288, !289, !290, !292, !293, !294, !296, !298, !300, !301, !302, !304, !305, !307, !308, !310, !311, !313, !314, !315, !317, !318, !320, !321, !323, !324, !325, !327, !328, !330, !331, !333, !334, !336, !337, !338, !340, !341, !343, !344, !346, !348, !349, !351, !352, !353, !355, !356, !357, !358, !360, !362, !363, !364, !366, !367, !369, !370, !371, !373, !374, !376, !377, !378, !380, !381, !383, !384, !386, !387, !388, !390, !391, !393, !394, !396, !397, !399, !400, !401, !403, !404, !406, !407, !409, !410, !412, !413, !415, !416, !417, !419, !420, !422, !423, !424, !425, !427, !428, !430, !431, !432, !434, !435, !436, !438, !439, !440, !442, !443, !445, !447, !449, !450, !451, !453, !454, !456, !457, !459, !460, !462, !463, !465, !466, !468, !469, !471, !472, !474, !475, !477, !478, !480, !481, !483, !484, !486, !487, !489, !490, !492, !493, !495, !496, !498, !499, !501, !502, !504, !505, !507, !508, !510, !511, !512, !513, !514, !516, !517, !519, !520, !522, !523, !524, !526, !527, !529, !530, !531, !533, !534, !535, !537, !539, !540, !542, !543, !545, !546, !548, !549, !551, !552, !554, !555, !557, !558, !560, !561, !562, !564, !565, !567, !568, !570, !571, !573, !574, !575, !577, !578, !580, !581, !583, !584, !585, !587, !588, !590, !591, !593, !595, !596, !597, !599, !600, !601, !603, !604, !606, !607, !609, !610, !612, !613, !614, !615, !617, !618, !620, !621, !623, !624, !626, !627, !629, !630, !632, !633, !635, !636, !638, !639, !640, !641, !643, !644, !646, !648, !650, !652, !654, !656, !658, !660, !662, !664, !666}
!llvm.named.register.sp = !{!668}
!llvm.module.flags = !{!669, !670, !671, !672, !673, !674, !675, !676}
!llvm.ident = !{!677}

!0 = !{ptr @__initcall__kmod_io_edgeport__394_3121_usb_serial_module_init6, !1, !"__initcall__kmod_io_edgeport__394_3121_usb_serial_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/io_edgeport.c", i32 3121, i32 1}
!2 = !{ptr @__exitcall_usb_serial_module_exit, !1, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author395, !4, !"__UNIQUE_ID_author395", i1 false, i1 false}
!4 = !{!"../drivers/usb/serial/io_edgeport.c", i32 3123, i32 1}
!5 = !{ptr @__UNIQUE_ID_description396, !6, !"__UNIQUE_ID_description396", i1 false, i1 false}
!6 = !{!"../drivers/usb/serial/io_edgeport.c", i32 3124, i32 1}
!7 = !{ptr @__UNIQUE_ID_file397, !8, !"__UNIQUE_ID_file397", i1 false, i1 false}
!8 = !{!"../drivers/usb/serial/io_edgeport.c", i32 3125, i32 1}
!9 = !{ptr @__UNIQUE_ID_license398, !8, !"__UNIQUE_ID_license398", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_firmware399, !11, !"__UNIQUE_ID_firmware399", i1 false, i1 false}
!11 = !{!"../drivers/usb/serial/io_edgeport.c", i32 3126, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware400, !13, !"__UNIQUE_ID_firmware400", i1 false, i1 false}
!13 = !{!"../drivers/usb/serial/io_edgeport.c", i32 3127, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware401, !15, !"__UNIQUE_ID_firmware401", i1 false, i1 false}
!15 = !{!"../drivers/usb/serial/io_edgeport.c", i32 3128, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware402, !17, !"__UNIQUE_ID_firmware402", i1 false, i1 false}
!17 = !{!"../drivers/usb/serial/io_edgeport.c", i32 3129, i32 1}
!18 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @id_table_combined, !20, !"id_table_combined", i1 false, i1 false}
!20 = !{!"../drivers/usb/serial/io_edgeport.c", i32 102, i32 35}
!21 = !{ptr @serial_drivers, !22, !"serial_drivers", i1 false, i1 false}
!22 = !{!"../drivers/usb/serial/io_edgeport.c", i32 3116, i32 41}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2981, i32 18}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2979, i32 12}
!27 = !{ptr @edgeport_2port_device, !28, !"edgeport_2port_device", i1 false, i1 false}
!28 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2976, i32 33}
!29 = !{ptr @edgeport_2port_id_table, !30, !"edgeport_2port_id_table", i1 false, i1 false}
!30 = !{!"../drivers/usb/serial/io_edgeport.c", i32 56, i32 35}
!31 = !{ptr @edge_startup.descriptor, !32, !"descriptor", i1 false, i1 false}
!32 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2707, i32 21}
!33 = !{ptr @edge_startup.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2718, i32 2}
!35 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2731, i32 2}
!38 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @edge_startup._entry, !37, !"_entry", i1 false, i1 false}
!43 = !{ptr @edge_startup._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2752, i32 3}
!46 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @edge_startup._entry.9, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @edge_startup._entry_ptr.12, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2758, i32 2}
!51 = !{ptr @edge_startup.__UNIQUE_ID_ddebug387, !50, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2765, i32 3}
!54 = !{ptr @edge_startup.__UNIQUE_ID_ddebug388, !53, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!55 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2770, i32 3}
!57 = !{ptr @edge_startup.__UNIQUE_ID_ddebug389, !56, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2776, i32 2}
!60 = !{ptr @edge_startup.__UNIQUE_ID_ddebug390, !59, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2803, i32 5}
!63 = !{ptr @edge_startup.__UNIQUE_ID_ddebug391, !62, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!64 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2840, i32 5}
!66 = !{ptr @edge_startup.__UNIQUE_ID_ddebug392, !65, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!67 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2873, i32 5}
!69 = !{ptr @edge_startup.__UNIQUE_ID_ddebug393, !68, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2883, i32 5}
!72 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @edge_startup._entry.20, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @edge_startup._entry_ptr.23, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2895, i32 4}
!77 = !{ptr @edge_startup._entry.24, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @edge_startup._entry_ptr.26, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/serial/io_edgeport.c", i32 527, i32 3}
!81 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @get_epic_descriptor.__UNIQUE_ID_ddebug259, !80, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/serial/io_edgeport.c", i32 528, i32 3}
!85 = !{ptr @get_epic_descriptor.__UNIQUE_ID_ddebug260, !84, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!86 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/serial/io_edgeport.c", i32 529, i32 3}
!90 = !{ptr @get_epic_descriptor.__UNIQUE_ID_ddebug261, !89, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/serial/io_edgeport.c", i32 530, i32 3}
!93 = !{ptr @get_epic_descriptor.__UNIQUE_ID_ddebug262, !92, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/serial/io_edgeport.c", i32 531, i32 3}
!96 = !{ptr @get_epic_descriptor.__UNIQUE_ID_ddebug263, !95, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/serial/io_edgeport.c", i32 532, i32 3}
!99 = !{ptr @get_epic_descriptor.__UNIQUE_ID_ddebug264, !98, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/serial/io_edgeport.c", i32 533, i32 3}
!102 = !{ptr @get_epic_descriptor.__UNIQUE_ID_ddebug265, !101, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!103 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/serial/io_edgeport.c", i32 534, i32 3}
!105 = !{ptr @get_epic_descriptor.__UNIQUE_ID_ddebug266, !104, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!106 = !{ptr @.str.38, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/serial/io_edgeport.c", i32 535, i32 3}
!108 = !{ptr @get_epic_descriptor.__UNIQUE_ID_ddebug267, !107, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!109 = !{ptr @.str.39, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/serial/io_edgeport.c", i32 536, i32 3}
!111 = !{ptr @get_epic_descriptor.__UNIQUE_ID_ddebug268, !110, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!112 = !{ptr @.str.40, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/serial/io_edgeport.c", i32 537, i32 3}
!114 = !{ptr @get_epic_descriptor.__UNIQUE_ID_ddebug269, !113, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!115 = !{ptr @.str.41, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/serial/io_edgeport.c", i32 538, i32 3}
!117 = !{ptr @get_epic_descriptor.__UNIQUE_ID_ddebug270, !116, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!118 = !{ptr @.str.42, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/serial/io_edgeport.c", i32 539, i32 3}
!120 = !{ptr @get_epic_descriptor.__UNIQUE_ID_ddebug271, !119, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!121 = !{ptr @.str.43, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/serial/io_edgeport.c", i32 540, i32 3}
!123 = !{ptr @get_epic_descriptor.__UNIQUE_ID_ddebug272, !122, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!124 = !{ptr @.str.44, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/serial/io_edgeport.c", i32 544, i32 3}
!126 = !{ptr @get_epic_descriptor._entry, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @get_epic_descriptor._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.45, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/serial/io_edgeport.c", i32 398, i32 2}
!130 = !{ptr @.str.46, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @dump_product_info.__UNIQUE_ID_ddebug242, !129, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!132 = !{ptr @.str.47, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/serial/io_edgeport.c", i32 399, i32 2}
!134 = !{ptr @dump_product_info.__UNIQUE_ID_ddebug243, !133, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!135 = !{ptr @.str.48, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/serial/io_edgeport.c", i32 400, i32 2}
!137 = !{ptr @dump_product_info.__UNIQUE_ID_ddebug244, !136, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!138 = !{ptr @.str.49, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/usb/serial/io_edgeport.c", i32 401, i32 2}
!140 = !{ptr @dump_product_info.__UNIQUE_ID_ddebug245, !139, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!141 = !{ptr @.str.50, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/usb/serial/io_edgeport.c", i32 402, i32 2}
!143 = !{ptr @dump_product_info.__UNIQUE_ID_ddebug246, !142, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!144 = !{ptr @.str.51, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/usb/serial/io_edgeport.c", i32 403, i32 2}
!146 = !{ptr @dump_product_info.__UNIQUE_ID_ddebug247, !145, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!147 = !{ptr @.str.52, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/usb/serial/io_edgeport.c", i32 404, i32 2}
!149 = !{ptr @dump_product_info.__UNIQUE_ID_ddebug248, !148, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!150 = !{ptr @.str.53, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/serial/io_edgeport.c", i32 405, i32 2}
!152 = !{ptr @dump_product_info.__UNIQUE_ID_ddebug249, !151, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!153 = !{ptr @.str.54, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/serial/io_edgeport.c", i32 406, i32 2}
!155 = !{ptr @dump_product_info.__UNIQUE_ID_ddebug250, !154, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!156 = !{ptr @.str.55, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/usb/serial/io_edgeport.c", i32 407, i32 2}
!158 = !{ptr @dump_product_info.__UNIQUE_ID_ddebug251, !157, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!159 = !{ptr @.str.56, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/usb/serial/io_edgeport.c", i32 408, i32 2}
!161 = !{ptr @dump_product_info.__UNIQUE_ID_ddebug252, !160, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!162 = !{ptr @.str.57, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/usb/serial/io_edgeport.c", i32 409, i32 2}
!164 = !{ptr @dump_product_info.__UNIQUE_ID_ddebug253, !163, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!165 = !{ptr @.str.58, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/usb/serial/io_edgeport.c", i32 410, i32 2}
!167 = !{ptr @dump_product_info.__UNIQUE_ID_ddebug254, !166, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!168 = !{ptr @dump_product_info.__UNIQUE_ID_ddebug255, !169, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!169 = !{!"../drivers/usb/serial/io_edgeport.c", i32 414, i32 2}
!170 = !{ptr @.str.59, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/usb/serial/io_edgeport.c", i32 418, i32 2}
!172 = !{ptr @dump_product_info.__UNIQUE_ID_ddebug256, !171, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!173 = !{ptr @.str.60, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/usb/serial/io_edgeport.c", i32 422, i32 2}
!175 = !{ptr @dump_product_info.__UNIQUE_ID_ddebug257, !174, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!176 = !{ptr @.str.61, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/usb/serial/io_edgeport.c", i32 424, i32 2}
!178 = !{ptr @dump_product_info.__UNIQUE_ID_ddebug258, !177, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!179 = !{ptr @.str.62, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2525, i32 2}
!181 = !{ptr @.str.63, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @get_manufacturing_desc.__UNIQUE_ID_ddebug361, !180, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!183 = !{ptr @.str.64, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2534, i32 3}
!185 = !{ptr @get_manufacturing_desc._entry, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @get_manufacturing_desc._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.65, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2538, i32 3}
!189 = !{ptr @get_manufacturing_desc.__UNIQUE_ID_ddebug362, !188, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!190 = !{ptr @.str.66, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2539, i32 3}
!192 = !{ptr @get_manufacturing_desc.__UNIQUE_ID_ddebug363, !191, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!193 = !{ptr @.str.67, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2541, i32 3}
!195 = !{ptr @get_manufacturing_desc.__UNIQUE_ID_ddebug364, !194, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!196 = !{ptr @.str.68, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2543, i32 3}
!198 = !{ptr @get_manufacturing_desc.__UNIQUE_ID_ddebug365, !197, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!199 = !{ptr @.str.69, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2545, i32 3}
!201 = !{ptr @get_manufacturing_desc.__UNIQUE_ID_ddebug366, !200, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!202 = !{ptr @.str.70, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2547, i32 3}
!204 = !{ptr @get_manufacturing_desc.__UNIQUE_ID_ddebug367, !203, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!205 = !{ptr @.str.71, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2549, i32 3}
!207 = !{ptr @get_manufacturing_desc.__UNIQUE_ID_ddebug368, !206, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!208 = !{ptr @.str.72, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2556, i32 3}
!210 = !{ptr @get_manufacturing_desc.__UNIQUE_ID_ddebug369, !209, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!211 = !{ptr @.str.73, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2560, i32 3}
!213 = !{ptr @get_manufacturing_desc.__UNIQUE_ID_ddebug370, !212, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!214 = !{ptr @.str.74, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2564, i32 3}
!216 = !{ptr @get_manufacturing_desc.__UNIQUE_ID_ddebug371, !215, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!217 = !{ptr @.str.75, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2565, i32 3}
!219 = !{ptr @get_manufacturing_desc.__UNIQUE_ID_ddebug372, !218, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!220 = !{ptr @.str.76, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2567, i32 3}
!222 = !{ptr @get_manufacturing_desc.__UNIQUE_ID_ddebug373, !221, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!223 = !{ptr @.str.77, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2569, i32 3}
!225 = !{ptr @get_manufacturing_desc.__UNIQUE_ID_ddebug374, !224, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!226 = !{ptr @.str.78, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2585, i32 2}
!228 = !{ptr @.str.79, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @get_boot_desc.__UNIQUE_ID_ddebug375, !227, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!230 = !{ptr @.str.80, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2594, i32 3}
!232 = !{ptr @get_boot_desc._entry, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @get_boot_desc._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.81, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2597, i32 3}
!236 = !{ptr @get_boot_desc.__UNIQUE_ID_ddebug376, !235, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!237 = !{ptr @.str.82, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2598, i32 3}
!239 = !{ptr @get_boot_desc.__UNIQUE_ID_ddebug377, !238, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!240 = !{ptr @.str.83, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2600, i32 3}
!242 = !{ptr @get_boot_desc.__UNIQUE_ID_ddebug378, !241, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!243 = !{ptr @.str.84, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2602, i32 3}
!245 = !{ptr @get_boot_desc.__UNIQUE_ID_ddebug379, !244, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!246 = !{ptr @.str.85, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2604, i32 3}
!248 = !{ptr @get_boot_desc.__UNIQUE_ID_ddebug380, !247, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!249 = !{ptr @.str.86, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2606, i32 3}
!251 = !{ptr @get_boot_desc.__UNIQUE_ID_ddebug381, !250, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!252 = !{ptr @.str.87, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2608, i32 3}
!254 = !{ptr @get_boot_desc.__UNIQUE_ID_ddebug382, !253, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!255 = !{ptr @.str.88, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2610, i32 3}
!257 = !{ptr @get_boot_desc.__UNIQUE_ID_ddebug383, !256, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!258 = !{ptr @.str.89, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2633, i32 14}
!260 = !{ptr @.str.90, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2634, i32 14}
!262 = !{ptr @.str.91, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2638, i32 14}
!264 = !{ptr @.str.92, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2639, i32 14}
!266 = !{ptr @.str.93, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2643, i32 4}
!268 = !{ptr @.str.94, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @load_application_firmware.__UNIQUE_ID_ddebug384, !267, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!270 = !{ptr @.str.95, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2653, i32 3}
!272 = !{ptr @load_application_firmware._entry, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @load_application_firmware._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.96, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2661, i32 2}
!276 = !{ptr @load_application_firmware.__UNIQUE_ID_ddebug385, !275, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!277 = !{ptr @.str.98, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2676, i32 4}
!279 = !{ptr @load_application_firmware._entry.97, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @load_application_firmware._entry_ptr.99, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.100, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2684, i32 2}
!283 = !{ptr @load_application_firmware.__UNIQUE_ID_ddebug386, !282, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!284 = !{ptr @.str.101, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../include/linux/ihex.h", i32 76, i32 3}
!286 = !{ptr @.str.102, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @.str.103, !285, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @request_ihex_firmware._entry, !285, !"_entry", i1 false, i1 false}
!289 = !{ptr @request_ihex_firmware._entry_ptr, !285, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.104, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1965, i32 2}
!292 = !{ptr @.str.105, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @sram_write.__UNIQUE_ID_ddebug334, !291, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!294 = !{ptr @.str.106, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/usb/serial/io_edgeport.c", i32 324, i32 13}
!296 = !{ptr @.str.107, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/usb/serial/io_edgeport.c", i32 327, i32 13}
!298 = !{ptr @.str.108, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/usb/serial/io_edgeport.c", i32 336, i32 3}
!300 = !{ptr @update_edgeport_E2PROM._entry, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @update_edgeport_E2PROM._entry_ptr, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.109, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/usb/serial/io_edgeport.c", i32 355, i32 2}
!304 = !{ptr @update_edgeport_E2PROM.__UNIQUE_ID_ddebug238, !303, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!305 = !{ptr @.str.110, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/usb/serial/io_edgeport.c", i32 362, i32 3}
!307 = !{ptr @update_edgeport_E2PROM.__UNIQUE_ID_ddebug239, !306, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!308 = !{ptr @.str.111, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/usb/serial/io_edgeport.c", i32 368, i32 3}
!310 = !{ptr @update_edgeport_E2PROM.__UNIQUE_ID_ddebug240, !309, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!311 = !{ptr @.str.113, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/usb/serial/io_edgeport.c", i32 379, i32 5}
!313 = !{ptr @update_edgeport_E2PROM._entry.112, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @update_edgeport_E2PROM._entry_ptr.114, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.115, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/usb/serial/io_edgeport.c", i32 387, i32 3}
!317 = !{ptr @update_edgeport_E2PROM.__UNIQUE_ID_ddebug241, !316, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!318 = !{ptr @edge_port_probe.__key, !319, !"__key", i1 false, i1 false}
!319 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2960, i32 2}
!320 = !{ptr @.str.116, !319, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @.str.117, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/usb/serial/io_edgeport.c", i32 871, i32 4}
!323 = !{ptr @edge_open._entry, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @edge_open._entry_ptr, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @edge_open.__key, !326, !"__key", i1 false, i1 false}
!326 = !{!"../drivers/usb/serial/io_edgeport.c", i32 877, i32 2}
!327 = !{ptr @.str.118, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @edge_open.__key.119, !329, !"__key", i1 false, i1 false}
!329 = !{!"../drivers/usb/serial/io_edgeport.c", i32 878, i32 2}
!330 = !{ptr @.str.120, !329, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @edge_open.__key.121, !332, !"__key", i1 false, i1 false}
!332 = !{!"../drivers/usb/serial/io_edgeport.c", i32 879, i32 2}
!333 = !{ptr @.str.122, !332, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @.str.124, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/usb/serial/io_edgeport.c", i32 893, i32 3}
!336 = !{ptr @edge_open._entry.123, !335, !"_entry", i1 false, i1 false}
!337 = !{ptr @edge_open._entry_ptr.125, !335, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.126, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/usb/serial/io_edgeport.c", i32 904, i32 3}
!340 = !{ptr @edge_open.__UNIQUE_ID_ddebug285, !339, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!341 = !{ptr @.str.127, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/usb/serial/io_edgeport.c", i32 930, i32 2}
!343 = !{ptr @edge_open.__UNIQUE_ID_ddebug286, !342, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!344 = !{ptr @__func__.write_cmd_usb, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2132, i32 29}
!346 = !{ptr @.str.128, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2140, i32 2}
!348 = !{ptr @write_cmd_usb.__UNIQUE_ID_ddebug335, !347, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!349 = !{ptr @.str.129, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2153, i32 3}
!351 = !{ptr @write_cmd_usb._entry, !350, !"_entry", i1 false, i1 false}
!352 = !{ptr @write_cmd_usb._entry_ptr, !350, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.130, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../include/linux/usb/serial.h", i32 393, i32 2}
!355 = !{ptr @.str.131, !354, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @.str.132, !354, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, !354, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!358 = !{ptr @CmdUrbs, !359, !"CmdUrbs", i1 false, i1 false}
!359 = !{!"../drivers/usb/serial/io_edgeport.c", i32 263, i32 17}
!360 = !{ptr @.str.133, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/usb/serial/io_edgeport.c", i32 776, i32 2}
!362 = !{ptr @.str.134, !361, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @edge_bulk_out_cmd_callback.__UNIQUE_ID_ddebug283, !361, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!364 = !{ptr @.str.135, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/usb/serial/io_edgeport.c", i32 787, i32 3}
!366 = !{ptr @edge_bulk_out_cmd_callback.__UNIQUE_ID_ddebug284, !365, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!367 = !{ptr @.str.136, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1071, i32 3}
!369 = !{ptr @.str.137, !368, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @edge_close.__UNIQUE_ID_ddebug294, !368, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!371 = !{ptr @.str.138, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1083, i32 3}
!373 = !{ptr @edge_close.__UNIQUE_ID_ddebug295, !372, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!374 = !{ptr @.str.139, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1019, i32 4}
!376 = !{ptr @.str.140, !375, !"<string literal>", i1 false, i1 false}
!377 = !{ptr @block_until_tx_empty.__UNIQUE_ID_ddebug291, !375, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!378 = !{ptr @.str.141, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1029, i32 3}
!380 = !{ptr @block_until_tx_empty.__UNIQUE_ID_ddebug292, !379, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!381 = !{ptr @.str.142, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1035, i32 5}
!383 = !{ptr @block_until_tx_empty.__UNIQUE_ID_ddebug293, !382, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!384 = !{ptr @.str.143, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/usb/serial/io_edgeport.c", i32 961, i32 4}
!386 = !{ptr @.str.144, !385, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @block_until_chase_response.__UNIQUE_ID_ddebug287, !385, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!388 = !{ptr @.str.145, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/usb/serial/io_edgeport.c", i32 965, i32 5}
!390 = !{ptr @block_until_chase_response.__UNIQUE_ID_ddebug288, !389, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!391 = !{ptr @.str.146, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/usb/serial/io_edgeport.c", i32 981, i32 5}
!393 = !{ptr @block_until_chase_response.__UNIQUE_ID_ddebug289, !392, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!394 = !{ptr @.str.147, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/usb/serial/io_edgeport.c", i32 986, i32 4}
!396 = !{ptr @block_until_chase_response.__UNIQUE_ID_ddebug290, !395, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!397 = !{ptr @.str.148, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1135, i32 2}
!399 = !{ptr @.str.149, !398, !"<string literal>", i1 false, i1 false}
!400 = !{ptr @edge_write.__UNIQUE_ID_ddebug298, !398, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!401 = !{ptr @.str.150, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1141, i32 3}
!403 = !{ptr @edge_write.__UNIQUE_ID_ddebug299, !402, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!404 = !{ptr @.str.151, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1154, i32 2}
!406 = !{ptr @edge_write.__UNIQUE_ID_ddebug302, !405, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!407 = !{ptr @.str.152, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1172, i32 3}
!409 = !{ptr @edge_write.__UNIQUE_ID_ddebug303, !408, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!410 = !{ptr @.str.153, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1189, i32 2}
!412 = !{ptr @edge_write.__UNIQUE_ID_ddebug304, !411, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!413 = !{ptr @.str.154, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1228, i32 3}
!415 = !{ptr @.str.155, !414, !"<string literal>", i1 false, i1 false}
!416 = !{ptr @send_more_port_data.__UNIQUE_ID_ddebug305, !414, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!417 = !{ptr @.str.156, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1241, i32 3}
!419 = !{ptr @send_more_port_data.__UNIQUE_ID_ddebug308, !418, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!420 = distinct !{null, !421, !"__print_once", i1 false, i1 false}
!421 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1301, i32 3}
!422 = !{ptr @.str.157, !421, !"<string literal>", i1 false, i1 false}
!423 = !{ptr @send_more_port_data._entry, !421, !"_entry", i1 false, i1 false}
!424 = !{ptr @send_more_port_data._entry_ptr, !421, !"_entry_ptr", i1 false, i1 false}
!425 = !{ptr @.str.158, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1310, i32 2}
!427 = !{ptr @send_more_port_data.__UNIQUE_ID_ddebug311, !426, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!428 = !{ptr @.str.159, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1335, i32 2}
!430 = !{ptr @.str.160, !429, !"<string literal>", i1 false, i1 false}
!431 = !{ptr @edge_write_room.__UNIQUE_ID_ddebug312, !429, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!432 = !{ptr @.str.161, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1551, i32 3}
!434 = !{ptr @.str.162, !433, !"<string literal>", i1 false, i1 false}
!435 = !{ptr @edge_ioctl.__UNIQUE_ID_ddebug318, !433, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!436 = !{ptr @.str.163, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1480, i32 3}
!438 = !{ptr @.str.164, !437, !"<string literal>", i1 false, i1 false}
!439 = !{ptr @get_lsr_info.__UNIQUE_ID_ddebug317, !437, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!440 = distinct !{null, !441, !"__already_done", i1 false, i1 false}
!441 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!442 = distinct !{null, !441, !"<string literal>", i1 false, i1 false}
!443 = distinct !{null, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!445 = !{ptr @.str.167, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!447 = !{ptr @.str.168, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1452, i32 3}
!449 = !{ptr @.str.169, !448, !"<string literal>", i1 false, i1 false}
!450 = !{ptr @edge_set_termios.__UNIQUE_ID_ddebug316, !448, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!451 = !{ptr @.str.170, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2345, i32 3}
!453 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug342, !452, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!454 = !{ptr @.str.171, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2354, i32 3}
!456 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug343, !455, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!457 = !{ptr @.str.172, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2358, i32 3}
!459 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug344, !458, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!460 = !{ptr @.str.173, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2362, i32 3}
!462 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug345, !461, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!463 = !{ptr @.str.174, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2367, i32 3}
!465 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug346, !464, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!466 = !{ptr @.str.175, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2376, i32 5}
!468 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug347, !467, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!469 = !{ptr @.str.176, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2379, i32 5}
!471 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug348, !470, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!472 = !{ptr @.str.177, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2383, i32 4}
!474 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug349, !473, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!475 = !{ptr @.str.178, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2386, i32 4}
!477 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug350, !476, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!478 = !{ptr @.str.179, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2389, i32 3}
!480 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug351, !479, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!481 = !{ptr @.str.180, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2394, i32 3}
!483 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug352, !482, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!484 = !{ptr @.str.181, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2397, i32 3}
!486 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug353, !485, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!487 = !{ptr @.str.182, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2405, i32 3}
!489 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug354, !488, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!490 = !{ptr @.str.183, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2407, i32 3}
!492 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug355, !491, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!493 = !{ptr @.str.184, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2427, i32 4}
!495 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug356, !494, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!496 = !{ptr @.str.185, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2430, i32 4}
!498 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug357, !497, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!499 = !{ptr @.str.186, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2436, i32 4}
!501 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug358, !500, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!502 = !{ptr @.str.187, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2439, i32 4}
!504 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug359, !503, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!505 = !{ptr @.str.188, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2480, i32 2}
!507 = !{ptr @change_port_settings.__UNIQUE_ID_ddebug360, !506, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!508 = !{ptr @.str.189, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2283, i32 2}
!510 = !{ptr @.str.190, !509, !"<string literal>", i1 false, i1 false}
!511 = !{ptr @send_cmd_write_uart_register.__UNIQUE_ID_ddebug339, !509, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!512 = !{ptr @.str.191, !509, !"<string literal>", i1 false, i1 false}
!513 = !{ptr @.str.192, !509, !"<string literal>", i1 false, i1 false}
!514 = !{ptr @.str.193, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2289, i32 3}
!516 = !{ptr @send_cmd_write_uart_register.__UNIQUE_ID_ddebug340, !515, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!517 = !{ptr @.str.194, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2296, i32 3}
!519 = !{ptr @send_cmd_write_uart_register.__UNIQUE_ID_ddebug341, !518, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!520 = !{ptr @.str.195, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2193, i32 3}
!522 = !{ptr @.str.196, !521, !"<string literal>", i1 false, i1 false}
!523 = !{ptr @send_cmd_write_baud_rate.__UNIQUE_ID_ddebug336, !521, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!524 = !{ptr @.str.197, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2198, i32 2}
!526 = !{ptr @send_cmd_write_baud_rate.__UNIQUE_ID_ddebug337, !525, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!527 = !{ptr @.str.198, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2202, i32 3}
!529 = !{ptr @send_cmd_write_baud_rate._entry, !528, !"_entry", i1 false, i1 false}
!530 = !{ptr @send_cmd_write_baud_rate._entry_ptr, !528, !"_entry_ptr", i1 false, i1 false}
!531 = !{ptr @.str.199, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/usb/serial/io_edgeport.c", i32 2260, i32 3}
!533 = !{ptr @.str.200, !532, !"<string literal>", i1 false, i1 false}
!534 = !{ptr @calc_baud_rate_divisor.__UNIQUE_ID_ddebug338, !532, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!535 = !{ptr @divisor_table, !536, !"divisor_table", i1 false, i1 false}
!536 = !{!"../drivers/usb/serial/io_edgeport.c", i32 240, i32 41}
!537 = !{ptr @.str.201, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1574, i32 3}
!539 = !{ptr @edge_break.__UNIQUE_ID_ddebug319, !538, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!540 = !{ptr @.str.202, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1587, i32 4}
!542 = !{ptr @edge_break.__UNIQUE_ID_ddebug320, !541, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!543 = !{ptr @.str.203, !544, !"<string literal>", i1 false, i1 false}
!544 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1591, i32 4}
!545 = !{ptr @edge_break.__UNIQUE_ID_ddebug321, !544, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!546 = !{ptr @.str.204, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1596, i32 4}
!548 = !{ptr @edge_break.__UNIQUE_ID_ddebug322, !547, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!549 = !{ptr @.str.205, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1358, i32 3}
!551 = !{ptr @edge_chars_in_buffer.__UNIQUE_ID_ddebug313, !550, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!552 = !{ptr @.str.206, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1380, i32 3}
!554 = !{ptr @edge_throttle.__UNIQUE_ID_ddebug314, !553, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!555 = !{ptr @.str.207, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1418, i32 3}
!557 = !{ptr @edge_unthrottle.__UNIQUE_ID_ddebug315, !556, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!558 = !{ptr @.str.208, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../drivers/usb/serial/io_edgeport.c", i32 591, i32 3}
!560 = !{ptr @.str.209, !559, !"<string literal>", i1 false, i1 false}
!561 = !{ptr @edge_interrupt_callback.__UNIQUE_ID_ddebug273, !559, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!562 = !{ptr @.str.210, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/usb/serial/io_edgeport.c", i32 594, i32 3}
!564 = !{ptr @edge_interrupt_callback.__UNIQUE_ID_ddebug274, !563, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!565 = !{ptr @.str.211, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/usb/serial/io_edgeport.c", i32 609, i32 5}
!567 = !{ptr @edge_interrupt_callback.__UNIQUE_ID_ddebug275, !566, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!568 = !{ptr @.str.212, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../drivers/usb/serial/io_edgeport.c", i32 617, i32 6}
!570 = !{ptr @edge_interrupt_callback.__UNIQUE_ID_ddebug276, !569, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!571 = !{ptr @.str.213, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/usb/serial/io_edgeport.c", i32 624, i32 7}
!573 = !{ptr @edge_interrupt_callback._entry, !572, !"_entry", i1 false, i1 false}
!574 = !{ptr @edge_interrupt_callback._entry_ptr, !572, !"_entry_ptr", i1 false, i1 false}
!575 = !{ptr @.str.214, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../drivers/usb/serial/io_edgeport.c", i32 649, i32 6}
!577 = !{ptr @edge_interrupt_callback.__UNIQUE_ID_ddebug277, !576, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!578 = !{ptr @edge_interrupt_callback._entry.215, !579, !"_entry", i1 false, i1 false}
!579 = !{!"../drivers/usb/serial/io_edgeport.c", i32 670, i32 3}
!580 = !{ptr @edge_interrupt_callback._entry_ptr.216, !579, !"_entry_ptr", i1 false, i1 false}
!581 = !{ptr @.str.217, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../drivers/usb/serial/io_edgeport.c", i32 692, i32 3}
!583 = !{ptr @.str.218, !582, !"<string literal>", i1 false, i1 false}
!584 = !{ptr @edge_bulk_in_callback.__UNIQUE_ID_ddebug278, !582, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!585 = !{ptr @.str.219, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/usb/serial/io_edgeport.c", i32 699, i32 3}
!587 = !{ptr @edge_bulk_in_callback.__UNIQUE_ID_ddebug279, !586, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!588 = !{ptr @.str.220, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../drivers/usb/serial/io_edgeport.c", i32 714, i32 2}
!590 = !{ptr @edge_bulk_in_callback.__UNIQUE_ID_ddebug280, !589, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!591 = !{ptr @edge_bulk_in_callback.__UNIQUE_ID_ddebug281, !592, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!592 = !{!"../drivers/usb/serial/io_edgeport.c", i32 721, i32 3}
!593 = !{ptr @.str.221, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/usb/serial/io_edgeport.c", i32 724, i32 4}
!595 = !{ptr @edge_bulk_in_callback._entry, !594, !"_entry", i1 false, i1 false}
!596 = !{ptr @edge_bulk_in_callback._entry_ptr, !594, !"_entry_ptr", i1 false, i1 false}
!597 = !{ptr @.str.222, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1621, i32 4}
!599 = !{ptr @.str.223, !598, !"<string literal>", i1 false, i1 false}
!600 = !{ptr @process_rcvd_data.__UNIQUE_ID_ddebug323, !598, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!601 = !{ptr @.str.224, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1642, i32 4}
!603 = !{ptr @process_rcvd_data.__UNIQUE_ID_ddebug324, !602, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!604 = !{ptr @.str.225, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1680, i32 4}
!606 = !{ptr @process_rcvd_data.__UNIQUE_ID_ddebug325, !605, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!607 = !{ptr @.str.226, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1710, i32 6}
!609 = !{ptr @process_rcvd_data.__UNIQUE_ID_ddebug326, !608, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!610 = !{ptr @.str.227, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1758, i32 3}
!612 = !{ptr @.str.228, !611, !"<string literal>", i1 false, i1 false}
!613 = !{ptr @process_rcvd_status._entry, !611, !"_entry", i1 false, i1 false}
!614 = !{ptr @process_rcvd_status._entry_ptr, !611, !"_entry_ptr", i1 false, i1 false}
!615 = !{ptr @.str.229, !616, !"<string literal>", i1 false, i1 false}
!616 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1770, i32 4}
!617 = !{ptr @process_rcvd_status.__UNIQUE_ID_ddebug327, !616, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!618 = !{ptr @.str.230, !619, !"<string literal>", i1 false, i1 false}
!619 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1786, i32 4}
!620 = !{ptr @process_rcvd_status.__UNIQUE_ID_ddebug328, !619, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!621 = !{ptr @.str.231, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1796, i32 3}
!623 = !{ptr @process_rcvd_status.__UNIQUE_ID_ddebug329, !622, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!624 = !{ptr @.str.232, !625, !"<string literal>", i1 false, i1 false}
!625 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1826, i32 3}
!626 = !{ptr @process_rcvd_status.__UNIQUE_ID_ddebug330, !625, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!627 = !{ptr @.str.233, !628, !"<string literal>", i1 false, i1 false}
!628 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1832, i32 3}
!629 = !{ptr @process_rcvd_status.__UNIQUE_ID_ddebug331, !628, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!630 = !{ptr @.str.234, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1845, i32 3}
!632 = !{ptr @process_rcvd_status.__UNIQUE_ID_ddebug332, !631, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!633 = !{ptr @.str.235, !634, !"<string literal>", i1 false, i1 false}
!634 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1856, i32 3}
!635 = !{ptr @process_rcvd_status.__UNIQUE_ID_ddebug333, !634, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!636 = !{ptr @.str.236, !637, !"<string literal>", i1 false, i1 false}
!637 = !{!"../drivers/usb/serial/io_edgeport.c", i32 1873, i32 3}
!638 = !{ptr @.str.237, !637, !"<string literal>", i1 false, i1 false}
!639 = !{ptr @edge_tty_recv._entry, !637, !"_entry", i1 false, i1 false}
!640 = !{ptr @edge_tty_recv._entry_ptr, !637, !"_entry_ptr", i1 false, i1 false}
!641 = !{ptr @.str.238, !642, !"<string literal>", i1 false, i1 false}
!642 = !{!"../drivers/usb/serial/io_edgeport.c", i32 748, i32 3}
!643 = !{ptr @edge_bulk_out_data_callback.__UNIQUE_ID_ddebug282, !642, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!644 = !{ptr @.str.239, !645, !"<string literal>", i1 false, i1 false}
!645 = !{!"../drivers/usb/serial/io_edgeport.c", i32 3016, i32 18}
!646 = !{ptr @.str.240, !647, !"<string literal>", i1 false, i1 false}
!647 = !{!"../drivers/usb/serial/io_edgeport.c", i32 3014, i32 12}
!648 = !{ptr @edgeport_4port_device, !649, !"edgeport_4port_device", i1 false, i1 false}
!649 = !{!"../drivers/usb/serial/io_edgeport.c", i32 3011, i32 33}
!650 = !{ptr @edgeport_4port_id_table, !651, !"edgeport_4port_id_table", i1 false, i1 false}
!651 = !{!"../drivers/usb/serial/io_edgeport.c", i32 65, i32 35}
!652 = !{ptr @.str.241, !653, !"<string literal>", i1 false, i1 false}
!653 = !{!"../drivers/usb/serial/io_edgeport.c", i32 3051, i32 18}
!654 = !{ptr @.str.242, !655, !"<string literal>", i1 false, i1 false}
!655 = !{!"../drivers/usb/serial/io_edgeport.c", i32 3049, i32 12}
!656 = !{ptr @edgeport_8port_device, !657, !"edgeport_8port_device", i1 false, i1 false}
!657 = !{!"../drivers/usb/serial/io_edgeport.c", i32 3046, i32 33}
!658 = !{ptr @edgeport_8port_id_table, !659, !"edgeport_8port_id_table", i1 false, i1 false}
!659 = !{!"../drivers/usb/serial/io_edgeport.c", i32 79, i32 35}
!660 = !{ptr @.str.243, !661, !"<string literal>", i1 false, i1 false}
!661 = !{!"../drivers/usb/serial/io_edgeport.c", i32 3086, i32 18}
!662 = !{ptr @.str.244, !663, !"<string literal>", i1 false, i1 false}
!663 = !{!"../drivers/usb/serial/io_edgeport.c", i32 3084, i32 12}
!664 = !{ptr @epic_device, !665, !"epic_device", i1 false, i1 false}
!665 = !{!"../drivers/usb/serial/io_edgeport.c", i32 3081, i32 33}
!666 = !{ptr @Epic_port_id_table, !667, !"Epic_port_id_table", i1 false, i1 false}
!667 = !{!"../drivers/usb/serial/io_edgeport.c", i32 89, i32 35}
!668 = !{!"sp"}
!669 = !{i32 1, !"wchar_size", i32 2}
!670 = !{i32 1, !"min_enum_size", i32 4}
!671 = !{i32 8, !"branch-target-enforcement", i32 0}
!672 = !{i32 8, !"sign-return-address", i32 0}
!673 = !{i32 8, !"sign-return-address-all", i32 0}
!674 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!675 = !{i32 7, !"uwtable", i32 1}
!676 = !{i32 7, !"frame-pointer", i32 2}
!677 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!678 = !{i64 2148787921, i64 2148787926, i64 2148787939, i64 2148787983, i64 2148788017, i64 2148788038}
!679 = !{i8 0, i8 2}
!680 = !{!"auto-init"}
!681 = !{i64 2148306106, i64 2148306132, i64 2148306161, i64 2148306195, i64 2148306226, i64 2148306249}
!682 = !{i64 2148308571, i64 2148308597, i64 2148308626, i64 2148308660, i64 2148308691, i64 2148308714}
!683 = !{i64 2152680853, i64 2152680878}
