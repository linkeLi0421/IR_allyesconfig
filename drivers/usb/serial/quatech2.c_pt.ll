; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/quatech2.c_pt.bc'
source_filename = "../drivers/usb/serial/quatech2.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qt2_device_detail = type { i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.qt2_serial_private = type { i8, ptr, ptr }
%struct.usb_serial = type { ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, [16 x ptr], %struct.kref, %struct.mutex, ptr }
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
%struct.qt2_port_private = type { i8, %struct.spinlock, i8, ptr, ptr, %struct.spinlock, i8, i8, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }

@__initcall__kmod_quatech2__241_973_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @qt2_device, ptr null], [24 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description242 = internal constant [58 x i8] c"quatech2.description=Quatech 2nd gen USB to Serial Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [42 x i8] c"quatech2.file=drivers/usb/serial/quatech2\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [24 x i8] c"quatech2.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"quatech2\00", [23 x i8] zeroinitializer }, align 32
@id_table = internal constant { [8 x %struct.usb_device_id], [32 x i8] } { [8 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1565, i16 -16096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1565, i16 -16064, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1565, i16 -16048, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1565, i16 -16032, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1565, i16 -16016, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1565, i16 -15968, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1565, i16 -16000, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@qt2_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.1, ptr @id_table, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, ptr @qt2_attach, ptr @qt2_calc_num_ports, ptr @qt2_disconnect, ptr @qt2_release, ptr @qt2_port_probe, ptr @qt2_port_remove, ptr null, ptr null, ptr null, ptr @qt2_open, ptr @qt2_close, ptr @qt2_write, ptr @qt2_write_room, ptr null, ptr null, ptr null, ptr @qt2_set_termios, ptr @qt2_break_ctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qt2_tiocmget, ptr @qt2_tiocmset, ptr @usb_serial_generic_tiocmiwait, ptr @usb_serial_generic_get_icount, ptr @qt2_dtr_rts, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Quatech 2nd gen USB to Serial Driver\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"quatech-serial\00", [17 x i8] zeroinitializer }, align 32
@qt2_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 647, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s - failed to power on unit: %i\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qt2_attach\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/usb/serial/quatech2.c\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qt2_attach._entry_ptr = internal global ptr @qt2_attach._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qt2_setup_urbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 628, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s - submit read urb failed %i\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qt2_setup_urbs\00", [17 x i8] zeroinitializer }, align 32
@qt2_setup_urbs._entry_ptr = internal global ptr @qt2_setup_urbs._entry, section ".printk_index", align 4
@qt2_read_bulk_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 592, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s - non-zero urb status: %i\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qt2_read_bulk_callback\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@qt2_read_bulk_callback._entry_ptr = internal global ptr @qt2_read_bulk_callback._entry, section ".printk_index", align 4
@qt2_read_bulk_callback._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.5, i32 602, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s - resubmit read urb failed: %i\0A\00", [61 x i8] zeroinitializer }, align 32
@qt2_read_bulk_callback._entry_ptr.15 = internal global ptr @qt2_read_bulk_callback._entry.13, section ".printk_index", align 4
@qt2_process_read_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 499, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - status message too short\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qt2_process_read_urb\00", [43 x i8] zeroinitializer }, align 32
@qt2_process_read_urb._entry_ptr = internal global ptr @qt2_process_read_urb._entry, section ".printk_index", align 4
@qt2_process_read_urb._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.5, i32 510, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s - xmit_empty message too short\0A\00", [61 x i8] zeroinitializer }, align 32
@qt2_process_read_urb._entry_ptr.20 = internal global ptr @qt2_process_read_urb._entry.18, section ".printk_index", align 4
@qt2_process_read_urb._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.5, i32 521, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s - change_port message too short\0A\00", [60 x i8] zeroinitializer }, align 32
@qt2_process_read_urb._entry_ptr.23 = internal global ptr @qt2_process_read_urb._entry.21, section ".printk_index", align 4
@qt2_process_read_urb._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.5, i32 531, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - port change to invalid port: %i\0A\00", [58 x i8] zeroinitializer }, align 32
@qt2_process_read_urb._entry_ptr.26 = internal global ptr @qt2_process_read_urb._entry.24, section ".printk_index", align 4
@qt2_process_read_urb._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.17, ptr @.str.5, i32 553, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s - unsupported command %i\0A\00", [35 x i8] zeroinitializer }, align 32
@qt2_process_read_urb._entry_ptr.29 = internal global ptr @qt2_process_read_urb._entry.27, section ".printk_index", align 4
@qt2_device_details = internal constant { [8 x %struct.qt2_device_detail], [32 x i8] } { [8 x %struct.qt2_device_detail] [%struct.qt2_device_detail { i32 49440, i32 1 }, %struct.qt2_device_detail { i32 49488, i32 2 }, %struct.qt2_device_detail { i32 49472, i32 2 }, %struct.qt2_device_detail { i32 49520, i32 4 }, %struct.qt2_device_detail { i32 49504, i32 4 }, %struct.qt2_device_detail { i32 49536, i32 8 }, %struct.qt2_device_detail { i32 49568, i32 8 }, %struct.qt2_device_detail zeroinitializer], [32 x i8] zeroinitializer }, align 32
@qt2_calc_num_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.5, i32 258, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"don't know the number of ports, assuming 1\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qt2_calc_num_ports\00", [45 x i8] zeroinitializer }, align 32
@qt2_calc_num_ports._entry_ptr = internal global ptr @qt2_calc_num_ports._entry, section ".printk_index", align 4
@qt2_port_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&port_priv->lock\00", [47 x i8] zeroinitializer }, align 32
@qt2_port_probe.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&port_priv->urb_lock\00", [43 x i8] zeroinitializer }, align 32
@qt2_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.5, i32 357, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s failed to set RS232 mode for port %i error %i\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qt2_open\00", [23 x i8] zeroinitializer }, align 32
@qt2_open._entry_ptr = internal global ptr @qt2_open._entry, section ".printk_index", align 4
@qt2_open._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.5, i32 374, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s - open port failed %i\0A\00", [38 x i8] zeroinitializer }, align 32
@qt2_open._entry_ptr.39 = internal global ptr @qt2_open._entry.37, section ".printk_index", align 4
@qt2_open._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.5, i32 393, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s - initial setup failed (%i)\0A\00", [32 x i8] zeroinitializer }, align 32
@qt2_open._entry_ptr.42 = internal global ptr @qt2_open._entry.40, section ".printk_index", align 4
@qt2_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.5, i32 425, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s - transmit buffer flush failed: %i\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qt2_close\00", [22 x i8] zeroinitializer }, align 32
@qt2_close._entry_ptr = internal global ptr @qt2_close._entry, section ".printk_index", align 4
@qt2_close._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.5, i32 435, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - receive buffer flush failed: %i\0A\00", [58 x i8] zeroinitializer }, align 32
@qt2_close._entry_ptr.47 = internal global ptr @qt2_close._entry.45, section ".printk_index", align 4
@qt2_close._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.5, i32 446, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s - close port failed %i\0A\00", [37 x i8] zeroinitializer }, align 32
@qt2_close._entry_ptr.50 = internal global ptr @qt2_close._entry.48, section ".printk_index", align 4
@qt2_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.5, i32 908, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s - no output urb\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qt2_write\00", [22 x i8] zeroinitializer }, align 32
@qt2_write._entry_ptr = internal global ptr @qt2_write._entry, section ".printk_index", align 4
@qt2_write._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.5, i32 918, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qt2_write - urb is in use\0A\00", [37 x i8] zeroinitializer }, align 32
@qt2_write._entry_ptr.55 = internal global ptr @qt2_write._entry.53, section ".printk_index", align 4
@qt2_set_termios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.5, i32 308, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s - qt2_set_port_config failed: %i\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qt2_set_termios\00", [16 x i8] zeroinitializer }, align 32
@qt2_set_termios._entry_ptr = internal global ptr @qt2_set_termios._entry, section ".printk_index", align 4
@qt2_set_termios._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.5, i32 319, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s - set HW flow control failed: %i\0A\00", [59 x i8] zeroinitializer }, align 32
@qt2_set_termios._entry_ptr.60 = internal global ptr @qt2_set_termios._entry.58, section ".printk_index", align 4
@qt2_set_termios._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.5, i32 332, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s - set SW flow control failed: %i\0A\00", [59 x i8] zeroinitializer }, align 32
@qt2_set_termios._entry_ptr.63 = internal global ptr @qt2_set_termios._entry.61, section ".printk_index", align 4
@qt2_break_ctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.5, i32 782, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s - failed to send control message: %i\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qt2_break_ctl\00", [18 x i8] zeroinitializer }, align 32
@qt2_break_ctl._entry_ptr = internal global ptr @qt2_break_ctl._entry, section ".printk_index", align 4
@update_mctrl.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.5, ptr @.str.67, i8 0, i8 56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"update_mctrl\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"update_mctrl - DTR|RTS not being set|cleared\0A\00", [50 x i8] zeroinitializer }, align 32
@update_mctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.5, i32 241, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"update_mctrl - Error from MODEM_CTRL urb: %i\0A\00", [50 x i8] zeroinitializer }, align 32
@update_mctrl._entry_ptr = internal global ptr @update_mctrl._entry, section ".printk_index", align 4
@qt2_dtr_rts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.5, i32 796, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error from flowcontrol urb\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qt2_dtr_rts\00", [20 x i8] zeroinitializer }, align 32
@qt2_dtr_rts._entry_ptr = internal global ptr @qt2_dtr_rts._entry, section ".printk_index", align 4
@switch.table.qt2_calc_num_ports = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr getelementptr inbounds ([8 x %struct.qt2_device_detail], ptr @qt2_device_details, i32 0, i32 5), ptr @qt2_device_details, ptr getelementptr inbounds ([8 x %struct.qt2_device_detail], ptr @qt2_device_details, i32 0, i32 6), ptr @qt2_device_details, ptr @qt2_device_details, ptr @qt2_device_details, ptr @qt2_device_details, ptr @qt2_device_details, ptr @qt2_device_details, ptr @qt2_device_details, ptr @qt2_device_details, ptr @qt2_device_details, ptr getelementptr inbounds ([8 x %struct.qt2_device_detail], ptr @qt2_device_details, i32 0, i32 2), ptr getelementptr inbounds ([8 x %struct.qt2_device_detail], ptr @qt2_device_details, i32 0, i32 1), ptr getelementptr inbounds ([8 x %struct.qt2_device_detail], ptr @qt2_device_details, i32 0, i32 4), ptr getelementptr inbounds ([8 x %struct.qt2_device_detail], ptr @qt2_device_details, i32 0, i32 3)], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.71 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 255]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.73 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 969, i32 40 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 973, i32 1 }
@___asan_gen_.79 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 95, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant [11 x i8] c"qt2_device\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 943, i32 33 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 948, i32 22 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 946, i32 11 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 646, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 627, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 590, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 600, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 497, i32 6 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 508, i32 6 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 519, i32 6 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 529, i32 6 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 551, i32 5 }
@___asan_gen_.169 = private unnamed_addr constant [19 x i8] c"qt2_device_details\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 84, i32 39 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 257, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 686, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 687, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 355, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 373, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 392, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 424, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 434, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 445, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 908, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 918, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 307, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 318, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 331, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 780, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 224, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 239, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.299 = private constant [33 x i8] c"../drivers/usb/serial/quatech2.c\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 796, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant [32 x i8] c"switch.table.qt2_calc_num_ports\00", align 1
@llvm.compiler.used = appending global [107 x ptr] [ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_quatech2__241_973_usb_serial_module_init6, ptr @qt2_attach._entry, ptr @qt2_attach._entry_ptr, ptr @qt2_break_ctl._entry, ptr @qt2_break_ctl._entry_ptr, ptr @qt2_calc_num_ports._entry, ptr @qt2_calc_num_ports._entry_ptr, ptr @qt2_close._entry, ptr @qt2_close._entry.45, ptr @qt2_close._entry.48, ptr @qt2_close._entry_ptr, ptr @qt2_close._entry_ptr.47, ptr @qt2_close._entry_ptr.50, ptr @qt2_dtr_rts._entry, ptr @qt2_dtr_rts._entry_ptr, ptr @qt2_open._entry, ptr @qt2_open._entry.37, ptr @qt2_open._entry.40, ptr @qt2_open._entry_ptr, ptr @qt2_open._entry_ptr.39, ptr @qt2_open._entry_ptr.42, ptr @qt2_process_read_urb._entry, ptr @qt2_process_read_urb._entry.18, ptr @qt2_process_read_urb._entry.21, ptr @qt2_process_read_urb._entry.24, ptr @qt2_process_read_urb._entry.27, ptr @qt2_process_read_urb._entry_ptr, ptr @qt2_process_read_urb._entry_ptr.20, ptr @qt2_process_read_urb._entry_ptr.23, ptr @qt2_process_read_urb._entry_ptr.26, ptr @qt2_process_read_urb._entry_ptr.29, ptr @qt2_read_bulk_callback._entry, ptr @qt2_read_bulk_callback._entry.13, ptr @qt2_read_bulk_callback._entry_ptr, ptr @qt2_read_bulk_callback._entry_ptr.15, ptr @qt2_set_termios._entry, ptr @qt2_set_termios._entry.58, ptr @qt2_set_termios._entry.61, ptr @qt2_set_termios._entry_ptr, ptr @qt2_set_termios._entry_ptr.60, ptr @qt2_set_termios._entry_ptr.63, ptr @qt2_setup_urbs._entry, ptr @qt2_setup_urbs._entry_ptr, ptr @qt2_write._entry, ptr @qt2_write._entry.53, ptr @qt2_write._entry_ptr, ptr @qt2_write._entry_ptr.55, ptr @update_mctrl._entry, ptr @update_mctrl._entry_ptr, ptr @usb_serial_module_exit, ptr @serial_drivers, ptr @.str, ptr @id_table, ptr @qt2_device, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @qt2_device_details, ptr @.str.30, ptr @.str.31, ptr @qt2_port_probe.__key, ptr @.str.32, ptr @qt2_port_probe.__key.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @switch.table.qt2_calc_num_ports], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2_setup_urbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2_read_bulk_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2_read_bulk_callback._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2_process_read_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2_process_read_urb._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2_process_read_urb._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2_process_read_urb._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2_process_read_urb._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2_device_details to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2_calc_num_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2_port_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2_port_probe.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2_open._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2_open._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2_close._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2_close._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2_write._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2_set_termios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2_set_termios._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2_set_termios._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2_break_ctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_mctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2_dtr_rts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qt2_calc_num_ports to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_serial_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_serial_register_drivers(ptr noundef nonnull @serial_drivers, ptr noundef nonnull @.str, ptr noundef nonnull @id_table) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_serial_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_serial_deregister_drivers(ptr noundef nonnull @serial_drivers) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_deregister_drivers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_register_drivers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qt2_attach(ptr noundef %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i = shl i32 %3, 8
  %or = or i32 %shl.i, -2147483648
  %call2 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or, i8 noundef zeroext -62, i8 noundef zeroext 64, i16 noundef zeroext -32768, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serial, align 4
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 12) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 512) #10
  %read_buffer = getelementptr inbounds %struct.qt2_serial_private, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %read_buffer to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i, ptr %read_buffer, align 8
  %tobool10.not = icmp eq ptr %call7.i, null
  br i1 %tobool10.not, label %if.end7.err_buf_crit_edge, label %if.end12

if.end7.err_buf_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_buf

if.end12:                                         ; preds = %if.end7
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %9 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %private.i, align 4
  %port.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 12
  %10 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port.i, align 4
  %call1.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #6
  %read_urb.i = getelementptr inbounds %struct.qt2_serial_private, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %read_urb.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call1.i, ptr %read_urb.i, align 4
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end12.attach_failed_crit_edge, label %if.end.i

if.end12.attach_failed_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %attach_failed

if.end.i:                                         ; preds = %if.end12
  %13 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %serial, align 4
  %bulk_in_endpointAddress.i = getelementptr inbounds %struct.usb_serial_port, ptr %11, i32 0, i32 15
  %15 = ptrtoint ptr %bulk_in_endpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bulk_in_endpointAddress.i, align 8
  %conv.i = zext i8 %16 to i32
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %14, align 8
  %shl.i.i = shl i32 %18, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or6.i = or i32 %or.i.i, -1073741696
  %19 = ptrtoint ptr %read_buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read_buffer, align 8
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 8
  %21 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %14, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 10
  %22 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or6.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 14
  %23 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 19
  %24 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 512, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 28
  %25 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @qt2_read_bulk_callback, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 27
  %26 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %serial, ptr %context4.i.i, align 4
  %27 = ptrtoint ptr %read_urb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read_urb.i, align 4
  %call8.i = tail call i32 @usb_submit_urb(ptr noundef %28, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.not.i = icmp eq i32 %call8.i, 0
  br i1 %cmp.not.i, label %if.end.i.cleanup_crit_edge, label %do.end.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %serial, align 4
  %dev12.i = getelementptr inbounds %struct.usb_device, ptr %30, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %call8.i) #9
  %31 = ptrtoint ptr %read_urb.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %32) #6
  br label %attach_failed

attach_failed:                                    ; preds = %do.end.i, %if.end12.attach_failed_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end12.attach_failed_crit_edge ], [ %call8.i, %do.end.i ]
  %33 = ptrtoint ptr %read_buffer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read_buffer, align 8
  tail call void @kfree(ptr noundef %34) #6
  br label %err_buf

err_buf:                                          ; preds = %attach_failed, %if.end7.err_buf_crit_edge
  %status.0 = phi i32 [ %retval.0.i.ph, %attach_failed ], [ -12, %if.end7.err_buf_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_buf, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %status.0, %err_buf ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qt2_calc_num_ports(ptr nocapture noundef readonly %serial, ptr nocapture noundef readnone %epds) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial, align 4
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 8
  %2 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %idProduct, align 2
  %4 = add i16 %3, 32575
  %5 = call i16 @llvm.fshl.i16(i16 %4, i16 %4, i16 4)
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %5)
  %6 = icmp ult i16 %5, 16
  br i1 %6, label %switch.hole_check, label %entry.for.cond.6_crit_edge

entry.for.cond.6_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.6

for.cond.6:                                       ; preds = %switch.hole_check.for.cond.6_crit_edge, %entry.for.cond.6_crit_edge
  %7 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %serial, align 4
  %dev5 = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.30) #9
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.shifted = lshr i16 -3067, %5
  %9 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %switch.lobit.not = icmp eq i16 %9, 0
  br i1 %switch.lobit.not, label %switch.hole_check.for.cond.6_crit_edge, label %switch.lookup

switch.hole_check.for.cond.6_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.6

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %10 = sext i16 %5 to i32
  %switch.gep = getelementptr inbounds [16 x ptr], ptr @switch.table.qt2_calc_num_ports, i32 0, i32 %10
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %d.sroa.6.0.arrayidx.sroa_idx.le = getelementptr inbounds i8, ptr %switch.load, i32 4
  %12 = ptrtoint ptr %d.sroa.6.0.arrayidx.sroa_idx.le to i32
  call void @__asan_load4_noabort(i32 %12)
  %d.sroa.6.0.copyload.le = load i32, ptr %d.sroa.6.0.arrayidx.sroa_idx.le, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %for.cond.6
  %retval.0 = phi i32 [ 1, %for.cond.6 ], [ %d.sroa.6.0.copyload.le, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qt2_disconnect(ptr nocapture noundef readonly %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %read_urb = getelementptr inbounds %struct.qt2_serial_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qt2_release(ptr nocapture noundef readonly %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %read_urb = getelementptr inbounds %struct.qt2_serial_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #6
  %4 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_urb, align 4
  tail call void @usb_free_urb(ptr noundef %5) #6
  %read_buffer = getelementptr inbounds %struct.qt2_serial_private, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %read_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_buffer, align 4
  tail call void @kfree(ptr noundef %7) #6
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qt2_port_probe(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 112) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.qt2_port_private, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.32, ptr noundef nonnull @qt2_port_probe.__key, i16 noundef signext 3) #6
  %urb_lock = getelementptr inbounds %struct.qt2_port_private, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %urb_lock, ptr noundef nonnull @.str.34, ptr noundef nonnull @qt2_port_probe.__key.33, i16 noundef signext 3) #6
  %port7 = getelementptr inbounds %struct.qt2_port_private, ptr %call7.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %port7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %port, ptr %port7, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 512) #10
  %write_buffer = getelementptr inbounds %struct.qt2_port_private, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %write_buffer to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i, ptr %write_buffer, align 8
  %tobool10.not = icmp eq ptr %call7.i, null
  br i1 %tobool10.not, label %do.body.err_buf_crit_edge, label %if.end12

do.body.err_buf_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_buf

if.end12:                                         ; preds = %do.body
  %call13 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #6
  %write_urb = getelementptr inbounds %struct.qt2_port_private, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %write_urb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13, ptr %write_urb, align 4
  %tobool15.not = icmp eq ptr %call13, null
  br i1 %tobool15.not, label %err_urb, label %if.end17

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %port18 = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %port18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port18, align 4
  %bulk_out_endpointAddress = getelementptr inbounds %struct.usb_serial_port, ptr %8, i32 0, i32 26
  %9 = ptrtoint ptr %bulk_out_endpointAddress to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bulk_out_endpointAddress, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %conv = zext i8 %10 to i32
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i = shl i32 %14, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %15 = ptrtoint ptr %write_buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_buffer, align 8
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call13, i32 0, i32 8
  %17 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %12, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call13, i32 0, i32 10
  %18 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call13, i32 0, i32 14
  %19 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call13, i32 0, i32 19
  %20 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 512, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call13, i32 0, i32 28
  %21 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @qt2_write_bulk_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call13, i32 0, i32 27
  %22 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %port, ptr %context4.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_urb:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %write_buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_buffer, align 8
  tail call void @kfree(ptr noundef %25) #6
  br label %err_buf

err_buf:                                          ; preds = %err_urb, %do.body.err_buf_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_buf, %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ -12, %err_buf ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qt2_port_remove(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %write_urb = getelementptr inbounds %struct.qt2_port_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_urb, align 4
  tail call void @usb_free_urb(ptr noundef %3) #6
  %write_buffer = getelementptr inbounds %struct.qt2_port_private, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %write_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_buffer, align 4
  tail call void @kfree(ptr noundef %5) #6
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qt2_open(ptr noundef %tty, ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %port_number = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 4
  %0 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_number, align 4
  %conv = zext i8 %1 to i16
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 8
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i = shl i32 %9, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call1.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or.i, i8 noundef zeroext -31, i8 noundef zeroext 64, i16 noundef zeroext 64, i16 noundef zeroext %conv, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev4 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv5 = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef %conv5, i32 noundef %call1.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 2) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i = shl i32 %14, 8
  %or12 = or i32 %shl.i, -2147483520
  %call13 = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or12, i8 noundef zeroext -54, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %conv, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 2, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 2
  br i1 %cmp14, label %do.end19, label %do.body27

do.end19:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %dev20 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, i32 noundef %call13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call13)
  %cmp21 = icmp sgt i32 %call13, -1
  %spec.store.select = select i1 %cmp21, i32 -5, i32 %call13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

do.body27:                                        ; preds = %if.end8
  %lock = getelementptr inbounds %struct.qt2_port_private, ptr %5, i32 0, i32 5
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %call7.i.i, align 8
  %shadowLSR = getelementptr inbounds %struct.qt2_port_private, ptr %5, i32 0, i32 6
  %17 = ptrtoint ptr %shadowLSR to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %shadowLSR, align 4
  %arrayidx36 = getelementptr i8, ptr %call7.i.i, i32 1
  %18 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx36, align 1
  %shadowMSR = getelementptr inbounds %struct.qt2_port_private, ptr %5, i32 0, i32 7
  %20 = ptrtoint ptr %shadowMSR to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %shadowMSR, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call31) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %or.i93 = or i16 %conv, 768
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %shl.i.i94 = shl i32 %24, 8
  %or8.i = or i32 %shl.i.i94, -2147483648
  %call10.i = tail call i32 @usb_control_msg(ptr noundef %22, i32 noundef %or8.i, i8 noundef zeroext -63, i8 noundef zeroext 64, i16 noundef zeroext 96, i16 noundef zeroext %or.i93, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp41 = icmp slt i32 %call10.i, 0
  br i1 %cmp41, label %do.end46, label %if.end49

do.end46:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  %dev47 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv48 = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.36, i32 noundef %conv48) #9
  br label %cleanup

if.end49:                                         ; preds = %do.body27
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %1, ptr %5, align 4
  %tobool52.not = icmp eq ptr %tty, null
  br i1 %tobool52.not, label %if.end49.cleanup_crit_edge, label %if.then53

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  tail call void @qt2_set_termios(ptr noundef nonnull %tty, ptr noundef %port, ptr noundef %termios)
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %if.end49.cleanup_crit_edge, %do.end46, %do.end19, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call1.i, %do.end ], [ %spec.store.select, %do.end19 ], [ %call10.i, %do.end46 ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.then53 ], [ 0, %if.end49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qt2_close(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %write_urb = getelementptr inbounds %struct.qt2_port_private, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i = shl i32 %9, 8
  %or = or i32 %shl.i, -2147483648
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %3, align 4
  %conv = zext i8 %11 to i16
  %call4 = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or, i8 noundef zeroext -60, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext %conv, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev6 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %call4) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i54 = shl i32 %15, 8
  %or10 = or i32 %shl.i54, -2147483648
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %3, align 4
  %conv12 = zext i8 %17 to i16
  %call13 = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or10, i8 noundef zeroext -60, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv12, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %do.end19, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev20 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.44, i32 noundef %call13) #9
  br label %if.end21

if.end21:                                         ; preds = %do.end19, %if.end.if.end21_crit_edge
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i55 = shl i32 %21, 8
  %or25 = or i32 %shl.i55, -2147483648
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %3, align 4
  %conv27 = zext i8 %23 to i16
  %call28 = tail call i32 @usb_control_msg(ptr noundef %19, i32 noundef %or25, i8 noundef zeroext -54, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv27, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end34, label %if.end21.if.end36_crit_edge

if.end21.if.end36_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

do.end34:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %dev35 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.44, i32 noundef %call28) #9
  br label %if.end36

if.end36:                                         ; preds = %do.end34, %if.end21.if.end36_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qt2_write(ptr nocapture noundef readnone %tty, ptr noundef %port, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %write_urb1 = getelementptr inbounds %struct.qt2_port_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %write_urb1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_urb1, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.smin.i32(i32 %count, i32 507)
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 14
  %5 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %transfer_buffer, align 4
  %urb_lock = getelementptr inbounds %struct.qt2_port_private, ptr %1, i32 0, i32 1
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %urb_lock) #6
  %urb_in_use = getelementptr inbounds %struct.qt2_port_private, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %urb_in_use to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %urb_in_use, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end19, label %do.end17

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev18 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.54) #9
  br label %write_out

if.end19:                                         ; preds = %if.end
  %incdec.ptr = getelementptr i8, ptr %6, i32 1
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 27, ptr %6, align 1
  %incdec.ptr20 = getelementptr i8, ptr %6, i32 2
  %10 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 27, ptr %incdec.ptr, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %1, align 4
  %incdec.ptr21 = getelementptr i8, ptr %6, i32 3
  %13 = ptrtoint ptr %incdec.ptr20 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %incdec.ptr20, align 1
  %conv22 = trunc i32 %4 to i16
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv22) #6
  %15 = ptrtoint ptr %incdec.ptr21 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %incdec.ptr21, align 1
  %add.ptr = getelementptr i8, ptr %6, i32 5
  %16 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %4)
  %add = add nsw i32 %4, 5
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 19
  %17 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %transfer_buffer_length, align 4
  %call23 = tail call i32 @usb_submit_urb(ptr noundef nonnull %3, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then26, label %if.end19.write_out_crit_edge

if.end19.write_out_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_out

if.then26:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %urb_in_use to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %urb_in_use, align 4
  br label %write_out

write_out:                                        ; preds = %if.then26, %if.end19.write_out_crit_edge, %do.end17
  %bytes_out.0 = phi i32 [ 0, %do.end17 ], [ %4, %if.then26 ], [ 0, %if.end19.write_out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %urb_lock, i32 noundef %call9) #6
  br label %cleanup

cleanup:                                          ; preds = %write_out, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %bytes_out.0, %write_out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qt2_write_room(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %urb_lock = getelementptr inbounds %struct.qt2_port_private, ptr %3, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %urb_lock) #6
  %urb_in_use = getelementptr inbounds %struct.qt2_port_private, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %urb_in_use to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %urb_in_use, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %. = select i1 %tobool.not, i32 507, i32 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %urb_lock, i32 noundef %call3) #6
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qt2_set_termios(ptr noundef %tty, ptr noundef %port, ptr nocapture noundef readnone %old_termios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %termios2 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %4 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_cflag, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and3 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %. = select i1 %tobool4.not, i16 24, i16 8
  %new_lcr.0 = select i1 %tobool.not, i16 0, i16 %.
  %and11 = lshr i32 %5, 4
  %8 = and i32 %and11, 3
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.end10.unreachabledefault [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb15
    i32 2, label %sw.bb19
    i32 3, label %sw.bb23
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = or i16 %new_lcr.0, 1
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = or i16 %new_lcr.0, 2
  br label %sw.epilog

if.end10.unreachabledefault:                      ; preds = %entry
  unreachable

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = or i16 %new_lcr.0, 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb23, %sw.bb19, %sw.bb15, %entry.sw.epilog_crit_edge
  %new_lcr.1 = phi i16 [ %12, %sw.bb23 ], [ %11, %sw.bb19 ], [ %10, %sw.bb15 ], [ %new_lcr.0, %entry.sw.epilog_crit_edge ]
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios2) #6
  %conv28 = trunc i32 %call.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv28)
  %tobool29.not = icmp eq i16 %conv28, 0
  %spec.store.select = select i1 %tobool29.not, i16 9600, i16 %conv28
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %7, align 4
  %conv.i = zext i16 %spec.store.select to i32
  %conv.i.frozen = freeze i32 %conv.i
  %div.i12.i = udiv i32 921600, %conv.i.frozen
  %15 = mul i32 %div.i12.i, %conv.i.frozen
  %rem1.i13.i.decomposed = sub i32 921600, %15
  %mul.i.i = shl nuw nsw i32 %rem1.i13.i.decomposed, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %conv.i)
  %cmp.not.i.i = icmp uge i32 %mul.i.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 110, i16 %spec.store.select)
  %cmp2.not.i.i = icmp ne i16 %spec.store.select, 110
  %not.or.cond.i.i = and i1 %cmp2.not.i.i, %cmp.not.i.i
  %inc.i.i = zext i1 %not.or.cond.i.i to i32
  %divisor.0.i.i = add nuw nsw i32 %div.i12.i, %inc.i.i
  %shl.i = shl nsw i16 %new_lcr.1, 8
  %conv5.i = zext i8 %14 to i16
  %or.i = or i16 %shl.i, %conv5.i
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %17, 8
  %or8.i = or i32 %shl.i.i, -2147483648
  %conv9.i = trunc i32 %divisor.0.i.i to i16
  %call10.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or8.i, i8 noundef zeroext -63, i8 noundef zeroext 64, i16 noundef zeroext %conv9.i, i16 noundef zeroext %or.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp = icmp slt i32 %call10.i, 0
  br i1 %cmp, label %do.end, label %sw.epilog.if.end36_crit_edge

sw.epilog.if.end36_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %dev35 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef %call10.i) #9
  br label %if.end36

if.end36:                                         ; preds = %do.end, %sw.epilog.if.end36_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool38.not = icmp sgt i32 %5, -1
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %7, align 4
  %conv45 = zext i8 %19 to i16
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %3, align 8
  %shl.i.i125 = shl i32 %21, 8
  %or.i126 = or i32 %shl.i.i125, -2147483648
  %.137 = select i1 %tobool38.not, i16 0, i16 528
  %call1.i127 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i126, i8 noundef zeroext -59, i8 noundef zeroext 64, i16 noundef zeroext %.137, i16 noundef zeroext %conv45, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i127)
  %cmp48 = icmp slt i32 %call1.i127, 0
  br i1 %cmp48, label %do.end53, label %if.end36.if.end55_crit_edge

if.end36.if.end55_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

do.end53:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %dev54 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev54, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.57, i32 noundef %call1.i127) #9
  br label %if.end55

if.end55:                                         ; preds = %do.end53, %if.end36.if.end55_crit_edge
  %22 = ptrtoint ptr %termios2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %termios2, align 4
  %24 = and i32 %23, 5120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %if.end55.if.end82_crit_edge, label %if.then63

if.end55.if.end82_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

if.then63:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 8
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 1
  %conv65 = zext i8 %27 to i16
  %shl = shl nuw i16 %conv65, 8
  %arrayidx70 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 9
  %28 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx70, align 1
  %conv72 = zext i8 %29 to i16
  %or73 = or i16 %shl, %conv72
  br label %if.end82

if.end82:                                         ; preds = %if.then63, %if.end55.if.end82_crit_edge
  %.sink134 = phi i16 [ %or73, %if.then63 ], [ 0, %if.end55.if.end82_crit_edge ]
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %7, align 4
  %conv80 = zext i8 %31 to i16
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %3, align 8
  %shl.i.i131 = shl i32 %33, 8
  %or.i132 = or i32 %shl.i.i131, -2147483648
  %call1.i133 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i132, i8 noundef zeroext -58, i8 noundef zeroext 64, i16 noundef zeroext %.sink134, i16 noundef zeroext %conv80, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i133)
  %cmp83 = icmp slt i32 %call1.i133, 0
  br i1 %cmp83, label %do.end88, label %if.end82.if.end90_crit_edge

if.end82.if.end90_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

do.end88:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  %dev89 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev89, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.57, i32 noundef %call1.i133) #9
  br label %if.end90

if.end90:                                         ; preds = %do.end88, %if.end82.if.end90_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qt2_break_ctl(ptr nocapture noundef readonly %tty, i32 noundef %break_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %break_state)
  %cmp = icmp eq i32 %break_state, -1
  %conv = zext i1 %cmp to i16
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %3, align 4
  %conv1 = zext i8 %9 to i16
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 8
  %shl.i.i = shl i32 %11, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call1.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or.i, i8 noundef zeroext -56, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext %conv1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp3 = icmp slt i32 %call1.i, 0
  br i1 %cmp3, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev5 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev5, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, i32 noundef %call1.i) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qt2_tiocmget(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 2) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %7, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %5, align 8
  %shl.i.i = shl i32 %12, 8
  %or1.i = or i32 %shl.i.i, -2147483520
  %conv2.i = zext i8 %10 to i16
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or1.i, i8 noundef zeroext -64, i8 noundef zeroext -64, i16 noundef zeroext 4, i16 noundef zeroext %conv2.i, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 1, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp5.i = icmp eq i32 %call3.i, 0
  %ret.0.i = select i1 %cmp5.i, i32 -5, i32 %call3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp = icmp slt i32 %ret.0.i, 0
  br i1 %cmp, label %if.end.mget_out_crit_edge, label %if.end5

if.end.mget_out_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %mget_out

if.end5:                                          ; preds = %if.end
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %7, align 4
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 1
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %5, align 8
  %shl.i.i59 = shl i32 %16, 8
  %or1.i60 = or i32 %shl.i.i59, -2147483520
  %conv2.i61 = zext i8 %14 to i16
  %call3.i62 = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or1.i60, i8 noundef zeroext -64, i8 noundef zeroext -64, i16 noundef zeroext 6, i16 noundef zeroext %conv2.i61, ptr noundef %add.ptr, i16 noundef zeroext 1, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i62)
  %cmp5.i63 = icmp eq i32 %call3.i62, 0
  %ret.0.i64 = select i1 %cmp5.i63, i32 -5, i32 %call3.i62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i64)
  %cmp8 = icmp slt i32 %ret.0.i64, 0
  br i1 %cmp8, label %if.end5.mget_out_crit_edge, label %if.end10

if.end5.mget_out_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %mget_out

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %call7.i.i, align 8
  %conv = zext i8 %18 to i32
  %and = shl nuw nsw i32 %conv, 1
  %or = and i32 %and, 6
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr, align 1
  %conv18 = zext i8 %20 to i32
  %and19 = shl nuw nsw i32 %conv18, 1
  %21 = and i32 %and19, 32
  %or22 = or i32 %21, %or
  %and25 = lshr i32 %conv18, 1
  %22 = and i32 %and25, 64
  %or28 = or i32 %or22, %22
  %23 = and i32 %and19, 128
  %or34 = or i32 %or28, %23
  %and37 = shl nuw nsw i32 %conv18, 3
  %24 = and i32 %and37, 256
  %or40 = or i32 %or34, %24
  br label %mget_out

mget_out:                                         ; preds = %if.end10, %if.end5.mget_out_crit_edge, %if.end.mget_out_crit_edge
  %r.0 = phi i32 [ %ret.0.i, %if.end.mget_out_crit_edge ], [ %ret.0.i64, %if.end5.mget_out_crit_edge ], [ %or40, %if.end10 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %mget_out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %mget_out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qt2_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %port1.i = getelementptr inbounds %struct.qt2_port_private, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port1.i, align 4
  %or.i = or i32 %clear, %set
  %and.i = and i32 %or.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end7.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_mctrl.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qt2_tiocmset, %if.then5.i)) #6
          to label %update_mctrl.exit [label %if.then5.i], !srcloc !152

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev6.i = getelementptr inbounds %struct.usb_serial_port, ptr %5, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_mctrl.__UNIQUE_ID_ddebug238, ptr noundef %dev6.i, ptr noundef nonnull @.str.67) #6
  br label %update_mctrl.exit

if.end7.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %3, align 4
  %12 = trunc i32 %set to i16
  %13 = shl i16 %12, 7
  %shl.i.i = and i16 %13, 768
  %or.i.i = or i16 %shl.i.i, 4
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %9, align 8
  %shl.i.i.i = shl i32 %15, 8
  %or3.i.i = or i32 %shl.i.i.i, -2147483648
  %conv4.i.i = zext i8 %11 to i16
  %call5.i.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or3.i.i, i8 noundef zeroext -64, i8 noundef zeroext 64, i16 noundef zeroext %or.i.i, i16 noundef zeroext %conv4.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp20.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp20.i, label %do.end25.i, label %if.end7.i.update_mctrl.exit_crit_edge

if.end7.i.update_mctrl.exit_crit_edge:            ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %update_mctrl.exit

do.end25.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev26.i = getelementptr inbounds %struct.usb_serial_port, ptr %5, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26.i, ptr noundef nonnull @.str.68, i32 noundef %call5.i.i) #9
  br label %update_mctrl.exit

update_mctrl.exit:                                ; preds = %do.end25.i, %if.end7.i.update_mctrl.exit_crit_edge, %if.then5.i, %do.body.i
  %retval.0.i = phi i32 [ 0, %if.then5.i ], [ %call5.i.i, %do.end25.i ], [ %call5.i.i, %if.end7.i.update_mctrl.exit_crit_edge ], [ 0, %do.body.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_tiocmiwait(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_get_icount(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qt2_dtr_rts(ptr noundef %port, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %if.then, label %if.then7.critedge

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 8
  %shl.i.i = shl i32 %9, 8
  %or3.i = or i32 %shl.i.i, -2147483648
  %conv4.i = zext i8 %7 to i16
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or3.i, i8 noundef zeroext -64, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext %conv4.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp = icmp slt i32 %call5.i, 0
  br i1 %cmp, label %do.end, label %if.then.if.else_crit_edge

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %dev4 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4, ptr noundef nonnull @.str.69) #9
  br label %if.else

if.then7.critedge:                                ; preds = %entry
  %port1.i = getelementptr inbounds %struct.qt2_port_private, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port1.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %1, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %15, align 8
  %shl.i.i.i = shl i32 %19, 8
  %or3.i.i = or i32 %shl.i.i.i, -2147483648
  %conv4.i.i = zext i8 %17 to i16
  %call5.i.i = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or3.i.i, i8 noundef zeroext -64, i8 noundef zeroext 64, i16 noundef zeroext 772, i16 noundef zeroext %conv4.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp20.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp20.i, label %if.then7.critedge.if.end10.sink.split_crit_edge, label %if.then7.critedge.if.end10_crit_edge

if.then7.critedge.if.end10_crit_edge:             ; preds = %if.then7.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then7.critedge.if.end10.sink.split_crit_edge:  ; preds = %if.then7.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.sink.split

if.else:                                          ; preds = %do.end, %if.then.if.else_crit_edge
  %port1.i17 = getelementptr inbounds %struct.qt2_port_private, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %port1.i17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port1.i17, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %1, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %25, align 8
  %shl.i.i.i18 = shl i32 %29, 8
  %or3.i.i19 = or i32 %shl.i.i.i18, -2147483648
  %conv4.i.i20 = zext i8 %27 to i16
  %call5.i.i21 = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or3.i.i19, i8 noundef zeroext -64, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext %conv4.i.i20, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i21)
  %cmp20.i22 = icmp slt i32 %call5.i.i21, 0
  br i1 %cmp20.i22, label %if.else.if.end10.sink.split_crit_edge, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.else.if.end10.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.sink.split

if.end10.sink.split:                              ; preds = %if.else.if.end10.sink.split_crit_edge, %if.then7.critedge.if.end10.sink.split_crit_edge
  %.sink = phi ptr [ %11, %if.then7.critedge.if.end10.sink.split_crit_edge ], [ %21, %if.else.if.end10.sink.split_crit_edge ]
  %call5.i.i21.sink = phi i32 [ %call5.i.i, %if.then7.critedge.if.end10.sink.split_crit_edge ], [ %call5.i.i21, %if.else.if.end10.sink.split_crit_edge ]
  %dev26.i23 = getelementptr inbounds %struct.usb_serial_port, ptr %.sink, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26.i23, ptr noundef nonnull @.str.68, i32 noundef %call5.i.i21.sink) #9
  br label %if.end10

if.end10:                                         ; preds = %if.end10.sink.split, %if.else.if.end10_crit_edge, %if.then7.critedge.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qt2_read_bulk_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %3) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %actual_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end.qt2_process_read_urb.exit_crit_edge, label %for.body.lr.ph.i

if.end.qt2_process_read_urb.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %qt2_process_read_urb.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %private.i.i = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  %idxprom.i = zext i8 %11 to i32
  %arrayidx.i = getelementptr %struct.usb_serial, ptr %1, i32 0, i32 12, i32 %idxprom.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %sub.i = add i32 %7, -3
  %sub33.i = add i32 %7, -4
  %num_ports.i = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 6
  %sub22.i = add i32 %7, -5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0134.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %port.0133.i = phi ptr [ %13, %for.body.lr.ph.i ], [ %port.3.i, %for.inc.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %transfer_buffer.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %i.0134.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0134.i, i32 %sub.i)
  %cmp4.not.i = icmp sgt i32 %i.0134.i, %sub.i
  br i1 %cmp4.not.i, label %for.body.i.if.end76.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end76.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 27, i8 %17)
  %cmp5.i = icmp eq i8 %17, 27
  br i1 %cmp5.i, label %land.lhs.true7.i, label %land.lhs.true.i.if.end76.i_crit_edge

land.lhs.true.i.if.end76.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %18 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 27, i8 %19)
  %cmp10.i = icmp eq i8 %19, 27
  br i1 %cmp10.i, label %if.then12.i, label %land.lhs.true7.i.if.end76.i_crit_edge

land.lhs.true7.i.if.end76.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76.i

if.then12.i:                                      ; preds = %land.lhs.true7.i
  %add.ptr13.i = getelementptr i8, ptr %add.ptr.i, i32 2
  %20 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr13.i, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %21, label %do.end69.i [
    i8 0, label %if.then12.i.sw.bb.i_crit_edge
    i8 1, label %if.then12.i.sw.bb.i_crit_edge18
    i8 2, label %sw.bb21.i
    i8 3, label %sw.bb32.i
    i8 4, label %if.then12.i.sw.bb61.i_crit_edge
    i8 5, label %if.then12.i.sw.bb61.i_crit_edge19
    i8 -1, label %sw.bb63.i
  ]

if.then12.i.sw.bb61.i_crit_edge19:                ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb61.i

if.then12.i.sw.bb61.i_crit_edge:                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb61.i

if.then12.i.sw.bb.i_crit_edge18:                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.then12.i.sw.bb.i_crit_edge:                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then12.i.sw.bb.i_crit_edge, %if.then12.i.sw.bb.i_crit_edge18
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0134.i, i32 %sub33.i)
  %cmp16.i = icmp sgt i32 %i.0134.i, %sub33.i
  br i1 %cmp16.i, label %do.end.i, label %if.end19.i

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %port.0133.i, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #9
  br label %if.end76.i

if.end19.i:                                       ; preds = %sw.bb.i
  %23 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %21, label %if.end19.i.qt2_process_status.exit.i_crit_edge [
    i8 0, label %sw.bb.i.i
    i8 1, label %sw.bb1.i.i
  ]

if.end19.i.qt2_process_status.exit.i_crit_edge:   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qt2_process_status.exit.i

sw.bb.i.i:                                        ; preds = %if.end19.i
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port.0133.i, i32 0, i32 32, i32 8
  %24 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i.i, label %sw.bb.i.i.qt2_process_status.exit.i_crit_edge, label %if.end.i.i.i

sw.bb.i.i.qt2_process_status.exit.i_crit_edge:    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qt2_process_status.exit.i

if.end.i.i.i:                                     ; preds = %sw.bb.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr13.i, i32 1
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr.i.i, align 1
  %28 = and i8 %27, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool1.not.i.i.i = icmp eq i8 %28, 0
  %and4.i.i.i = and i8 %27, 18
  %spec.select.i.i.i = select i1 %tobool1.not.i.i.i, i8 %27, i8 %and4.i.i.i
  %lock.i.i.i = getelementptr inbounds %struct.qt2_port_private, ptr %25, i32 0, i32 5
  %call10.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i.i) #6
  %shadowLSR.i.i.i = getelementptr inbounds %struct.qt2_port_private, ptr %25, i32 0, i32 6
  %29 = ptrtoint ptr %shadowLSR.i.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %spec.select.i.i.i, ptr %shadowLSR.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i, i32 noundef %call10.i.i.i) #6
  %conv15.i.i.i = zext i8 %spec.select.i.i.i to i32
  %and16.i.i.i = and i32 %conv15.i.i.i, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i.i)
  %tobool17.not.i.i.i = icmp eq i32 %and16.i.i.i, 0
  br i1 %tobool17.not.i.i.i, label %if.end.i.i.i.qt2_process_status.exit.i_crit_edge, label %if.then18.i.i.i

if.end.i.i.i.qt2_process_status.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qt2_process_status.exit.i

if.then18.i.i.i:                                  ; preds = %if.end.i.i.i
  %and20.i.i.i = and i32 %conv15.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i.i.i)
  %tobool21.not.i.i.i = icmp eq i32 %and20.i.i.i, 0
  br i1 %tobool21.not.i.i.i, label %if.then18.i.i.i.if.end23.i.i.i_crit_edge, label %if.then22.i.i.i

if.then18.i.i.i.if.end23.i.i.i_crit_edge:         ; preds = %if.then18.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i.i.i

if.then22.i.i.i:                                  ; preds = %if.then18.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %brk.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port.0133.i, i32 0, i32 27, i32 9
  %30 = ptrtoint ptr %brk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %brk.i.i.i, align 4
  %inc.i.i.i = add i32 %31, 1
  store i32 %inc.i.i.i, ptr %brk.i.i.i, align 4
  br label %if.end23.i.i.i

if.end23.i.i.i:                                   ; preds = %if.then22.i.i.i, %if.then18.i.i.i.if.end23.i.i.i_crit_edge
  %and25.i.i.i = and i32 %conv15.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i.i)
  %tobool26.not.i.i.i = icmp eq i32 %and25.i.i.i, 0
  br i1 %tobool26.not.i.i.i, label %if.end23.i.i.i.if.end29.i.i.i_crit_edge, label %if.then27.i.i.i

if.end23.i.i.i.if.end29.i.i.i_crit_edge:          ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i.i.i

if.then27.i.i.i:                                  ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %overrun.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port.0133.i, i32 0, i32 27, i32 8
  %32 = ptrtoint ptr %overrun.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %overrun.i.i.i, align 4
  %inc28.i.i.i = add i32 %33, 1
  store i32 %inc28.i.i.i, ptr %overrun.i.i.i, align 4
  br label %if.end29.i.i.i

if.end29.i.i.i:                                   ; preds = %if.then27.i.i.i, %if.end23.i.i.i.if.end29.i.i.i_crit_edge
  %and31.i.i.i = and i32 %conv15.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and31.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.end29.i.i.i.if.end35.i.i.i_crit_edge, label %if.then33.i.i.i

if.end29.i.i.i.if.end35.i.i.i_crit_edge:          ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.i.i.i

if.then33.i.i.i:                                  ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %parity.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port.0133.i, i32 0, i32 27, i32 7
  %34 = ptrtoint ptr %parity.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %parity.i.i.i, align 4
  %inc34.i.i.i = add i32 %35, 1
  store i32 %inc34.i.i.i, ptr %parity.i.i.i, align 4
  br label %if.end35.i.i.i

if.end35.i.i.i:                                   ; preds = %if.then33.i.i.i, %if.end29.i.i.i.if.end35.i.i.i_crit_edge
  %and37.i.i.i = and i32 %conv15.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i.i.i)
  %tobool38.not.i.i.i = icmp eq i32 %and37.i.i.i, 0
  br i1 %tobool38.not.i.i.i, label %if.end35.i.i.i.qt2_process_status.exit.i_crit_edge, label %if.then39.i.i.i

if.end35.i.i.i.qt2_process_status.exit.i_crit_edge: ; preds = %if.end35.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qt2_process_status.exit.i

if.then39.i.i.i:                                  ; preds = %if.end35.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %frame.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port.0133.i, i32 0, i32 27, i32 6
  %36 = ptrtoint ptr %frame.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %frame.i.i.i, align 4
  %inc40.i.i.i = add i32 %37, 1
  store i32 %inc40.i.i.i, ptr %frame.i.i.i, align 4
  br label %qt2_process_status.exit.i

sw.bb1.i.i:                                       ; preds = %if.end19.i
  %driver_data.i.i.i6.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port.0133.i, i32 0, i32 32, i32 8
  %38 = ptrtoint ptr %driver_data.i.i.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver_data.i.i.i6.i.i, align 4
  %tobool.not.i7.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i7.i.i, label %sw.bb1.i.i.qt2_process_status.exit.i_crit_edge, label %do.body1.i.i.i

sw.bb1.i.i.qt2_process_status.exit.i_crit_edge:   ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qt2_process_status.exit.i

do.body1.i.i.i:                                   ; preds = %sw.bb1.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr13.i, i32 1
  %40 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %add.ptr2.i.i, align 1
  %lock.i8.i.i = getelementptr inbounds %struct.qt2_port_private, ptr %39, i32 0, i32 5
  %call3.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i8.i.i) #6
  %shadowMSR.i.i.i = getelementptr inbounds %struct.qt2_port_private, ptr %39, i32 0, i32 7
  %42 = ptrtoint ptr %shadowMSR.i.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %shadowMSR.i.i.i, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i8.i.i, i32 noundef %call3.i.i.i) #6
  %conv7.i.i.i = zext i8 %41 to i32
  %and.i.i.i = and i32 %conv7.i.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %do.body1.i.i.i.qt2_process_status.exit.i_crit_edge, label %if.then9.i.i.i

do.body1.i.i.i.qt2_process_status.exit.i_crit_edge: ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qt2_process_status.exit.i

if.then9.i.i.i:                                   ; preds = %do.body1.i.i.i
  %and11.i.i.i = and i32 %conv7.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i.i)
  %tobool12.not.i.i.i = icmp eq i32 %and11.i.i.i, 0
  br i1 %tobool12.not.i.i.i, label %if.then9.i.i.i.if.end14.i.i.i_crit_edge, label %if.then13.i.i.i

if.then9.i.i.i.if.end14.i.i.i_crit_edge:          ; preds = %if.then9.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i.i.i

if.then13.i.i.i:                                  ; preds = %if.then9.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %icount.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port.0133.i, i32 0, i32 27
  %43 = ptrtoint ptr %icount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %icount.i.i.i, align 8
  %inc.i9.i.i = add i32 %44, 1
  store i32 %inc.i9.i.i, ptr %icount.i.i.i, align 8
  br label %if.end14.i.i.i

if.end14.i.i.i:                                   ; preds = %if.then13.i.i.i, %if.then9.i.i.i.if.end14.i.i.i_crit_edge
  %and16.i10.i.i = and i32 %conv7.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i10.i.i)
  %tobool17.not.i11.i.i = icmp eq i32 %and16.i10.i.i, 0
  br i1 %tobool17.not.i11.i.i, label %if.end14.i.i.i.if.end21.i.i.i_crit_edge, label %if.then18.i12.i.i

if.end14.i.i.i.if.end21.i.i.i_crit_edge:          ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i.i.i

if.then18.i12.i.i:                                ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dsr.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port.0133.i, i32 0, i32 27, i32 1
  %45 = ptrtoint ptr %dsr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dsr.i.i.i, align 4
  %inc20.i.i.i = add i32 %46, 1
  store i32 %inc20.i.i.i, ptr %dsr.i.i.i, align 4
  br label %if.end21.i.i.i

if.end21.i.i.i:                                   ; preds = %if.then18.i12.i.i, %if.end14.i.i.i.if.end21.i.i.i_crit_edge
  %and23.i.i.i = and i32 %conv7.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and23.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.end21.i.i.i.if.end28.i.i.i_crit_edge, label %if.then25.i.i.i

if.end21.i.i.i.if.end28.i.i.i_crit_edge:          ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i.i.i

if.then25.i.i.i:                                  ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dcd.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port.0133.i, i32 0, i32 27, i32 3
  %47 = ptrtoint ptr %dcd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dcd.i.i.i, align 4
  %inc27.i.i.i = add i32 %48, 1
  store i32 %inc27.i.i.i, ptr %dcd.i.i.i, align 4
  br label %if.end28.i.i.i

if.end28.i.i.i:                                   ; preds = %if.then25.i.i.i, %if.end21.i.i.i.if.end28.i.i.i_crit_edge
  %and30.i.i.i = and i32 %conv7.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i.i.i)
  %tobool31.not.i.i.i = icmp eq i32 %and30.i.i.i, 0
  br i1 %tobool31.not.i.i.i, label %if.end28.i.i.i.if.end35.i14.i.i_crit_edge, label %if.then32.i.i.i

if.end28.i.i.i.if.end35.i14.i.i_crit_edge:        ; preds = %if.end28.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.i14.i.i

if.then32.i.i.i:                                  ; preds = %if.end28.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %rng.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port.0133.i, i32 0, i32 27, i32 2
  %49 = ptrtoint ptr %rng.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rng.i.i.i, align 8
  %inc34.i13.i.i = add i32 %50, 1
  store i32 %inc34.i13.i.i, ptr %rng.i.i.i, align 8
  br label %if.end35.i14.i.i

if.end35.i14.i.i:                                 ; preds = %if.then32.i.i.i, %if.end28.i.i.i.if.end35.i14.i.i_crit_edge
  %delta_msr_wait.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port.0133.i, i32 0, i32 1, i32 9
  tail call void @__wake_up(ptr noundef %delta_msr_wait.i.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  br label %qt2_process_status.exit.i

qt2_process_status.exit.i:                        ; preds = %if.end35.i14.i.i, %do.body1.i.i.i.qt2_process_status.exit.i_crit_edge, %sw.bb1.i.i.qt2_process_status.exit.i_crit_edge, %if.then39.i.i.i, %if.end35.i.i.i.qt2_process_status.exit.i_crit_edge, %if.end.i.i.i.qt2_process_status.exit.i_crit_edge, %sw.bb.i.i.qt2_process_status.exit.i_crit_edge, %if.end19.i.qt2_process_status.exit.i_crit_edge
  %add.i = add i32 %i.0134.i, 3
  br label %for.inc.i

sw.bb21.i:                                        ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0134.i, i32 %sub22.i)
  %cmp23.i = icmp sgt i32 %i.0134.i, %sub22.i
  br i1 %cmp23.i, label %do.end28.i, label %if.end30.i

do.end28.i:                                       ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev29.i = getelementptr inbounds %struct.usb_serial_port, ptr %port.0133.i, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev29.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17) #9
  br label %if.end76.i

if.end30.i:                                       ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #8
  %add31.i = add i32 %i.0134.i, 4
  br label %for.inc.i

sw.bb32.i:                                        ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0134.i, i32 %sub33.i)
  %cmp34.i = icmp sgt i32 %i.0134.i, %sub33.i
  br i1 %cmp34.i, label %do.end39.i, label %if.end41.i

do.end39.i:                                       ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev40.i = getelementptr inbounds %struct.usb_serial_port, ptr %port.0133.i, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev40.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.17) #9
  br label %if.end76.i

if.end41.i:                                       ; preds = %sw.bb32.i
  %port42.i = getelementptr inbounds %struct.usb_serial_port, ptr %port.0133.i, i32 0, i32 1
  tail call void @tty_flip_buffer_push(ptr noundef %port42.i) #6
  %add.ptr43.i = getelementptr i8, ptr %add.ptr.i, i32 3
  %51 = ptrtoint ptr %add.ptr43.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %add.ptr43.i, align 1
  %conv44.i = zext i8 %52 to i32
  %53 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %num_ports.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %52, i8 %54)
  %cmp46.i = icmp ugt i8 %52, %54
  br i1 %cmp46.i, label %do.end51.i, label %if.end54.i

do.end51.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev52.i = getelementptr inbounds %struct.usb_serial_port, ptr %port.0133.i, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev52.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.17, i32 noundef %conv44.i) #9
  br label %if.end76.i

if.end54.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %52, ptr %9, align 4
  %arrayidx59.i = getelementptr %struct.usb_serial, ptr %1, i32 0, i32 12, i32 %conv44.i
  %56 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx59.i, align 4
  %add60.i = add i32 %i.0134.i, 3
  br label %for.inc.i

sw.bb61.i:                                        ; preds = %if.then12.i.sw.bb61.i_crit_edge, %if.then12.i.sw.bb61.i_crit_edge19
  %add62.i = add i32 %i.0134.i, 2
  br label %for.inc.i

sw.bb63.i:                                        ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  %port64.i = getelementptr inbounds %struct.usb_serial_port, ptr %port.0133.i, i32 0, i32 1
  %call.i.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port64.i, ptr noundef %add.ptr.i, i8 noundef zeroext 0, i32 noundef 2) #6
  %add66.i = add i32 %i.0134.i, 2
  br label %for.inc.i

do.end69.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv14.i = zext i8 %21 to i32
  %dev70.i = getelementptr inbounds %struct.usb_serial_port, ptr %port.0133.i, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev70.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.17, i32 noundef %conv14.i) #9
  br label %if.end76.i

if.end76.i:                                       ; preds = %do.end69.i, %do.end51.i, %do.end39.i, %do.end28.i, %do.end.i, %land.lhs.true7.i.if.end76.i_crit_edge, %land.lhs.true.i.if.end76.i_crit_edge, %for.body.i.if.end76.i_crit_edge
  %58 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %add.ptr.i, align 1
  %tail.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port.0133.i, i32 0, i32 1, i32 0, i32 8
  %60 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tail.i.i, align 4
  %used.i.i = getelementptr inbounds %struct.tty_buffer, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %used.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.tty_buffer, ptr %61, i32 0, i32 2
  %64 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp3.i.i = icmp slt i32 %63, %65
  br i1 %cmp3.i.i, label %if.then.i.i, label %if.end12.i.i

if.then.i.i:                                      ; preds = %if.end76.i
  %flags.i.i = getelementptr inbounds %struct.tty_buffer, ptr %61, i32 0, i32 5
  %66 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool7.not.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool7.not.not.i.i, label %if.then8.i.i, label %if.then.i.i.if.end.i.i_crit_edge

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then8.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %61, i32 0, i32 6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %63
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %65
  %68 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %add.ptr.i.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then8.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %69 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %used.i.i, align 4
  %inc.i.i = add i32 %70, 1
  store i32 %inc.i.i, ptr %used.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %61, i32 0, i32 6
  %add.ptr.i1.i.i = getelementptr i8, ptr %data.i.i.i, i32 %70
  %71 = ptrtoint ptr %add.ptr.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %59, ptr %add.ptr.i1.i.i, align 1
  br label %for.inc.i

if.end12.i.i:                                     ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #8
  %port77.i = getelementptr inbounds %struct.usb_serial_port, ptr %port.0133.i, i32 0, i32 1
  %call13.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %port77.i, i8 noundef zeroext %59, i8 noundef zeroext 0) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end12.i.i, %if.end.i.i, %sw.bb63.i, %sw.bb61.i, %if.end54.i, %if.end30.i, %qt2_process_status.exit.i
  %port.3.i = phi ptr [ %port.0133.i, %if.end.i.i ], [ %port.0133.i, %if.end12.i.i ], [ %port.0133.i, %qt2_process_status.exit.i ], [ %port.0133.i, %if.end30.i ], [ %57, %if.end54.i ], [ %port.0133.i, %sw.bb61.i ], [ %port.0133.i, %sw.bb63.i ]
  %i.3.i = phi i32 [ %i.0134.i, %if.end.i.i ], [ %i.0134.i, %if.end12.i.i ], [ %add.i, %qt2_process_status.exit.i ], [ %add31.i, %if.end30.i ], [ %add60.i, %if.end54.i ], [ %add62.i, %sw.bb61.i ], [ %add66.i, %sw.bb63.i ]
  %inc.i = add i32 %i.3.i, 1
  %72 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %actual_length.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %73
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  %port79.i = getelementptr inbounds %struct.usb_serial_port, ptr %port.3.i, i32 0, i32 1
  tail call void @tty_flip_buffer_push(ptr noundef %port79.i) #6
  br label %qt2_process_read_urb.exit

qt2_process_read_urb.exit:                        ; preds = %for.end.i, %if.end.qt2_process_read_urb.exit_crit_edge
  %call = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %qt2_process_read_urb.exit.cleanup_crit_edge, label %do.end7

qt2_process_read_urb.exit.cleanup_crit_edge:      ; preds = %qt2_process_read_urb.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end7:                                          ; preds = %qt2_process_read_urb.exit
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 4
  %dev9 = getelementptr inbounds %struct.usb_device, ptr %75, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11, i32 noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %qt2_process_read_urb.exit.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qt2_write_bulk_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %urb_lock = getelementptr inbounds %struct.qt2_port_private, ptr %3, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %urb_lock) #6
  %urb_in_use = getelementptr inbounds %struct.qt2_port_private, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %urb_in_use to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %urb_in_use, align 4
  tail call void @usb_serial_port_softint(ptr noundef %1) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %urb_lock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_port_softint(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.fshl.i16(i16, i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !72, !73, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141}
!llvm.module.flags = !{!142, !143, !144, !145, !146, !147, !148, !149}
!llvm.ident = !{!150}

!0 = !{ptr @__initcall__kmod_quatech2__241_973_usb_serial_module_init6, !1, !"__initcall__kmod_quatech2__241_973_usb_serial_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/quatech2.c", i32 973, i32 1}
!2 = !{ptr @__exitcall_usb_serial_module_exit, !1, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description242, !4, !"__UNIQUE_ID_description242", i1 false, i1 false}
!4 = !{!"../drivers/usb/serial/quatech2.c", i32 975, i32 1}
!5 = !{ptr @__UNIQUE_ID_file243, !6, !"__UNIQUE_ID_file243", i1 false, i1 false}
!6 = !{!"../drivers/usb/serial/quatech2.c", i32 976, i32 1}
!7 = !{ptr @__UNIQUE_ID_license244, !6, !"__UNIQUE_ID_license244", i1 false, i1 false}
!8 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @id_table, !10, !"id_table", i1 false, i1 false}
!10 = !{!"../drivers/usb/serial/quatech2.c", i32 95, i32 35}
!11 = !{ptr @serial_drivers, !12, !"serial_drivers", i1 false, i1 false}
!12 = !{!"../drivers/usb/serial/quatech2.c", i32 969, i32 40}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/serial/quatech2.c", i32 948, i32 22}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/serial/quatech2.c", i32 946, i32 11}
!17 = !{ptr @qt2_device, !18, !"qt2_device", i1 false, i1 false}
!18 = !{!"../drivers/usb/serial/quatech2.c", i32 943, i32 33}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/serial/quatech2.c", i32 646, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @qt2_attach._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @qt2_attach._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/serial/quatech2.c", i32 627, i32 3}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @qt2_setup_urbs._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @qt2_setup_urbs._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/serial/quatech2.c", i32 590, i32 3}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @qt2_read_bulk_callback._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @qt2_read_bulk_callback._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/serial/quatech2.c", i32 600, i32 3}
!40 = !{ptr @qt2_read_bulk_callback._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @qt2_read_bulk_callback._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/serial/quatech2.c", i32 497, i32 6}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @qt2_process_read_urb._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @qt2_process_read_urb._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/serial/quatech2.c", i32 508, i32 6}
!49 = !{ptr @qt2_process_read_urb._entry.18, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @qt2_process_read_urb._entry_ptr.20, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/serial/quatech2.c", i32 519, i32 6}
!53 = !{ptr @qt2_process_read_urb._entry.21, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @qt2_process_read_urb._entry_ptr.23, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/serial/quatech2.c", i32 529, i32 6}
!57 = !{ptr @qt2_process_read_urb._entry.24, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @qt2_process_read_urb._entry_ptr.26, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/serial/quatech2.c", i32 551, i32 5}
!61 = !{ptr @qt2_process_read_urb._entry.27, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @qt2_process_read_urb._entry_ptr.29, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/serial/quatech2.c", i32 257, i32 2}
!65 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @qt2_calc_num_ports._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @qt2_calc_num_ports._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @qt2_device_details, !69, !"qt2_device_details", i1 false, i1 false}
!69 = !{!"../drivers/usb/serial/quatech2.c", i32 84, i32 39}
!70 = !{ptr @qt2_port_probe.__key, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/usb/serial/quatech2.c", i32 686, i32 2}
!72 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @qt2_port_probe.__key.33, !74, !"__key", i1 false, i1 false}
!74 = !{!"../drivers/usb/serial/quatech2.c", i32 687, i32 2}
!75 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/serial/quatech2.c", i32 355, i32 3}
!78 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @qt2_open._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @qt2_open._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/serial/quatech2.c", i32 373, i32 3}
!83 = !{ptr @qt2_open._entry.37, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @qt2_open._entry_ptr.39, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/serial/quatech2.c", i32 392, i32 3}
!87 = !{ptr @qt2_open._entry.40, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @qt2_open._entry_ptr.42, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/serial/quatech2.c", i32 424, i32 3}
!91 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @qt2_close._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @qt2_close._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/serial/quatech2.c", i32 434, i32 3}
!96 = !{ptr @qt2_close._entry.45, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @qt2_close._entry_ptr.47, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/serial/quatech2.c", i32 445, i32 3}
!100 = !{ptr @qt2_close._entry.48, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @qt2_close._entry_ptr.50, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/serial/quatech2.c", i32 908, i32 3}
!104 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @qt2_write._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @qt2_write._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/serial/quatech2.c", i32 918, i32 3}
!109 = !{ptr @qt2_write._entry.53, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @qt2_write._entry_ptr.55, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/serial/quatech2.c", i32 307, i32 3}
!113 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @qt2_set_termios._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @qt2_set_termios._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/serial/quatech2.c", i32 318, i32 3}
!118 = !{ptr @qt2_set_termios._entry.58, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @qt2_set_termios._entry_ptr.60, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.62, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/serial/quatech2.c", i32 331, i32 3}
!122 = !{ptr @qt2_set_termios._entry.61, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @qt2_set_termios._entry_ptr.63, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.64, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/serial/quatech2.c", i32 780, i32 3}
!126 = !{ptr @.str.65, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @qt2_break_ctl._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @qt2_break_ctl._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.66, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/serial/quatech2.c", i32 224, i32 3}
!131 = !{ptr @.str.67, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @update_mctrl.__UNIQUE_ID_ddebug238, !130, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!133 = !{ptr @.str.68, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/serial/quatech2.c", i32 239, i32 3}
!135 = !{ptr @update_mctrl._entry, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @update_mctrl._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.69, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/serial/quatech2.c", i32 796, i32 4}
!139 = !{ptr @.str.70, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @qt2_dtr_rts._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @qt2_dtr_rts._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{i32 1, !"wchar_size", i32 2}
!143 = !{i32 1, !"min_enum_size", i32 4}
!144 = !{i32 8, !"branch-target-enforcement", i32 0}
!145 = !{i32 8, !"sign-return-address", i32 0}
!146 = !{i32 8, !"sign-return-address-all", i32 0}
!147 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!148 = !{i32 7, !"uwtable", i32 1}
!149 = !{i32 7, !"frame-pointer", i32 2}
!150 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!151 = !{i8 0, i8 2}
!152 = !{i64 2148262156, i64 2148262161, i64 2148262174, i64 2148262218, i64 2148262252, i64 2148262273}
