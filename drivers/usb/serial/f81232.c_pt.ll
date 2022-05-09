; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/f81232.c_pt.bc'
source_filename = "../drivers/usb/serial/f81232.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.usb_serial_driver = type { ptr, ptr, %struct.list_head, %struct.device_driver, ptr, %struct.usb_dynids, i8, i8, i8, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_serial_port = type { ptr, %struct.tty_port, %struct.spinlock, i32, i8, ptr, ptr, i8, ptr, i32, ptr, i8, ptr, i32, ptr, i8, [2 x ptr], [2 x ptr], i32, ptr, i32, ptr, %struct.kfifo, [2 x ptr], [2 x ptr], i32, i8, %struct.async_icount, i32, i32, %struct.work_struct, i32, %struct.device }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.kfifo = type { %union.anon.70, [0 x i8] }
%union.anon.70 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.async_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.f81232_private = type { %struct.mutex, i8, i8, i8, i32, %struct.work_struct, %struct.work_struct, ptr }
%struct.usb_serial = type { ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, [16 x ptr], %struct.kref, %struct.mutex, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }

@serial_drivers = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @f81232_device, ptr @f81534a_device, ptr null], [20 x i8] zeroinitializer }, align 32
@f81534a_ctrl_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.68, ptr @f81534a_ctrl_probe, ptr @f81534a_ctrl_disconnect, ptr null, ptr null, ptr @f81534a_ctrl_resume, ptr null, ptr null, ptr null, ptr @f81534a_ctrl_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_f81232__243_1068_f81232_init6 = internal global ptr @f81232_init, section ".initcall6.init", align 4
@__exitcall_f81232_exit = internal global ptr @f81232_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description244 = internal constant [72 x i8] c"f81232.description=Fintek F81232/532A/534A/535/536 USB to serial driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author245 = internal constant [62 x i8] c"f81232.author=Greg Kroah-Hartman <gregkh@linuxfoundation.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author246 = internal constant [52 x i8] c"f81232.author=Peter Hong <peter_hong@fintek.com.tw>\00", section ".modinfo", align 1
@__UNIQUE_ID_file247 = internal constant [38 x i8] c"f81232.file=drivers/usb/serial/f81232\00", section ".modinfo", align 1
@__UNIQUE_ID_license248 = internal constant [22 x i8] c"f81232.license=GPL v2\00", section ".modinfo", align 1
@f81232_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr null, ptr @f81232_id_table, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 1, i8 0, i8 0, i8 0, i8 0, i32 256, i32 256, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @f81232_port_probe, ptr null, ptr @f81232_suspend, ptr @f81232_resume, ptr null, ptr @f81232_open, ptr @f81232_close, ptr null, ptr null, ptr null, ptr @f81232_get_serial, ptr null, ptr @f81232_set_termios, ptr @f81232_break_ctl, ptr null, ptr null, ptr @f81232_tx_empty, ptr null, ptr null, ptr @f81232_tiocmget, ptr @f81232_tiocmset, ptr @usb_serial_generic_tiocmiwait, ptr null, ptr @f81232_dtr_rts, ptr @f81232_carrier_raised, ptr null, ptr @f81232_read_int_callback, ptr null, ptr null, ptr null, ptr @f81232_process_read_urb, ptr null }, [72 x i8] zeroinitializer }, align 32
@f81534a_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr null, ptr @f81534a_id_table, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str.60, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 1, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @f81534a_port_probe, ptr null, ptr @f81232_suspend, ptr @f81232_resume, ptr null, ptr @f81534a_open, ptr @f81232_close, ptr null, ptr null, ptr null, ptr @f81232_get_serial, ptr null, ptr @f81232_set_termios, ptr @f81232_break_ctl, ptr null, ptr null, ptr @f81232_tx_empty, ptr null, ptr null, ptr @f81232_tiocmget, ptr @f81232_tiocmset, ptr @usb_serial_generic_tiocmiwait, ptr null, ptr @f81232_dtr_rts, ptr @f81232_carrier_raised, ptr null, ptr @f81232_read_int_callback, ptr null, ptr null, ptr null, ptr @f81534a_process_read_urb, ptr null }, [72 x i8] zeroinitializer }, align 32
@f81232_id_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 6452, i16 1798, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"f81232\00", [25 x i8] zeroinitializer }, align 32
@f81232_port_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@f81232_port_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&priv->interrupt_work)\00", [55 x i8] zeroinitializer }, align 32
@f81232_port_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&priv->lsr_work)\00", [61 x i8] zeroinitializer }, align 32
@f81232_read_msr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 211, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s fail, status: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"f81232_read_msr\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/serial/f81232.c\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@f81232_read_msr._entry_ptr = internal global ptr @f81232_read_msr._entry, section ".printk_index", align 4
@f81232_get_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.8, i32 155, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s failed status: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"f81232_get_register\00", [44 x i8] zeroinitializer }, align 32
@f81232_get_register._entry_ptr = internal global ptr @f81232_get_register._entry, section ".printk_index", align 4
@f81232_lsr_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.8, i32 830, ptr @.str.15, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"read LSR failed: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"f81232_lsr_worker\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@f81232_lsr_worker._entry_ptr = internal global ptr @f81232_lsr_worker._entry, section ".printk_index", align 4
@f81232_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.8, i32 969, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"submit interrupt urb failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"f81232_resume\00", [18 x i8] zeroinitializer }, align 32
@f81232_resume._entry_ptr = internal global ptr @f81232_resume._entry, section ".printk_index", align 4
@f81232_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.8, i32 724, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s - failed submitting interrupt urb, error %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"f81232_open\00", [20 x i8] zeroinitializer }, align 32
@f81232_open._entry_ptr = internal global ptr @f81232_open._entry, section ".printk_index", align 4
@f81232_port_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.8, i32 575, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s failed to set FCR: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"f81232_port_enable\00", [45 x i8] zeroinitializer }, align 32
@f81232_port_enable._entry_ptr = internal global ptr @f81232_port_enable._entry, section ".printk_index", align 4
@f81232_port_enable._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.8, i32 584, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s failed to set IER: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@f81232_port_enable._entry_ptr.24 = internal global ptr @f81232_port_enable._entry.22, section ".printk_index", align 4
@f81232_set_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.25, ptr @.str.8, i32 178, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"f81232_set_register\00", [44 x i8] zeroinitializer }, align 32
@f81232_set_register._entry_ptr = internal global ptr @f81232_set_register._entry, section ".printk_index", align 4
@f81232_port_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.26, ptr @.str.8, i32 598, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"f81232_port_disable\00", [44 x i8] zeroinitializer }, align 32
@f81232_port_disable._entry_ptr = internal global ptr @f81232_port_disable._entry, section ".printk_index", align 4
@f81232_set_termios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.8, i32 668, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s failed to set LCR: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"f81232_set_termios\00", [45 x i8] zeroinitializer }, align 32
@f81232_set_termios._entry_ptr = internal global ptr @f81232_set_termios._entry, section ".printk_index", align 4
@f81232_set_mctrl.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.8, ptr @.str.30, i8 0, i8 68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"f81232_set_mctrl\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s new:%02x old:%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@f81232_set_mctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.8, i32 278, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s set MCR status < 0\0A\00", [41 x i8] zeroinitializer }, align 32
@f81232_set_mctrl._entry_ptr = internal global ptr @f81232_set_mctrl._entry, section ".printk_index", align 4
@baudrate_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 115200, i32 921600, i32 1152000, i32 1500000], [16 x i8] zeroinitializer }, align 32
@clock_table = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\03\01\02", [28 x i8] zeroinitializer }, align 32
@f81232_set_baudrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.8, i32 519, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s failed to set CLK_REG: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"f81232_set_baudrate\00", [44 x i8] zeroinitializer }, align 32
@f81232_set_baudrate._entry_ptr = internal global ptr @f81232_set_baudrate._entry, section ".printk_index", align 4
@f81232_set_baudrate._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.8, i32 527, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s failed to get LCR: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@f81232_set_baudrate._entry_ptr.36 = internal global ptr @f81232_set_baudrate._entry.34, section ".printk_index", align 4
@f81232_set_baudrate._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.8, i32 535, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s failed to set DLAB: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@f81232_set_baudrate._entry_ptr.39 = internal global ptr @f81232_set_baudrate._entry.37, section ".printk_index", align 4
@f81232_set_baudrate._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.33, ptr @.str.8, i32 543, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s failed to set baudrate MSB: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@f81232_set_baudrate._entry_ptr.42 = internal global ptr @f81232_set_baudrate._entry.40, section ".printk_index", align 4
@f81232_set_baudrate._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.33, ptr @.str.8, i32 551, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s failed to set baudrate LSB: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@f81232_set_baudrate._entry_ptr.45 = internal global ptr @f81232_set_baudrate._entry.43, section ".printk_index", align 4
@f81232_set_baudrate._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.8, i32 559, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@f81232_set_baudrate._entry_ptr.47 = internal global ptr @f81232_set_baudrate._entry.46, section ".printk_index", align 4
@f81232_break_ctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.8, i32 470, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"set break failed: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"f81232_break_ctl\00", [47 x i8] zeroinitializer }, align 32
@f81232_break_ctl._entry_ptr = internal global ptr @f81232_break_ctl._entry, section ".printk_index", align 4
@f81232_read_int_callback.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.8, ptr @.str.51, i8 0, i8 82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"f81232_read_int_callback\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - urb shutting down with status: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@f81232_read_int_callback.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.8, ptr @.str.52, i8 0, i8 83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - nonzero urb status received: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@f81232_read_int_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.50, ptr @.str.8, i32 349, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s - usb_submit_urb failed with result %d\0A\00", [53 x i8] zeroinitializer }, align 32
@f81232_read_int_callback._entry_ptr = internal global ptr @f81232_read_int_callback._entry, section ".printk_index", align 4
@usb_serial_debug_data.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.55, ptr @.str.56, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb_serial_debug_data\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/usb/serial.h\00", [37 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - length = %d, data = %*ph\0A\00", [33 x i8] zeroinitializer }, align 32
@f81232_update_line_status.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.8, ptr @.str.58, i8 0, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"f81232_update_line_status\00", [38 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IIR: MSR Change: %02x\0A\00", [41 x i8] zeroinitializer }, align 32
@f81232_update_line_status.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.8, ptr @.str.59, i8 0, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IIR: LSR Change: %02x\0A\00", [41 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@f81534a_id_table = internal constant { [10 x %struct.usb_device_id], [48 x i8] } { [10 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 11330, i16 5634, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 11330, i16 5636, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 11330, i16 5637, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 11330, i16 5638, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 11330, i16 5640, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 11330, i16 5682, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 11330, i16 5684, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 11330, i16 5685, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 11330, i16 5686, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"f81534a\00", [24 x i8] zeroinitializer }, align 32
@f81534a_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.8, i32 748, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to set MODE_REG: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"f81534a_open\00", [19 x i8] zeroinitializer }, align 32
@f81534a_open._entry_ptr = internal global ptr @f81534a_open._entry, section ".printk_index", align 4
@f81534a_process_read_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.8, i32 424, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"short message received: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"f81534a_process_read_urb\00", [39 x i8] zeroinitializer }, align 32
@f81534a_process_read_urb._entry_ptr = internal global ptr @f81534a_process_read_urb._entry, section ".printk_index", align 4
@f81534a_process_read_urb._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.8, i32 431, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"malformed message received: %d (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@f81534a_process_read_urb._entry_ptr.67 = internal global ptr @f81534a_process_read_urb._entry.65, section ".printk_index", align 4
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"f81534a_ctrl\00", [19 x i8] zeroinitializer }, align 32
@f81534a_ctrl_id_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 11330, i16 5880, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@f81534a_ctrl_enable_all_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.8, i32 888, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable ports: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"f81534a_ctrl_enable_all_ports\00", [34 x i8] zeroinitializer }, align 32
@f81534a_ctrl_enable_all_ports._entry_ptr = internal global ptr @f81534a_ctrl_enable_all_ports._entry, section ".printk_index", align 4
@f81534a_ctrl_set_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.8, i32 862, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to set register 0x%x: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"f81534a_ctrl_set_register\00", [38 x i8] zeroinitializer }, align 32
@f81534a_ctrl_set_register._entry_ptr = internal global ptr @f81534a_ctrl_set_register._entry, section ".printk_index", align 4
@combined_id_table = internal constant { [12 x %struct.usb_device_id], [64 x i8] } { [12 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 6452, i16 1798, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 11330, i16 5634, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 11330, i16 5636, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 11330, i16 5637, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 11330, i16 5638, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 11330, i16 5640, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 11330, i16 5682, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 11330, i16 5684, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 11330, i16 5685, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 11330, i16 5686, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 11330, i16 5880, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4294967201, i64 4294967277, i64 4294967284]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 32, i64 4294967201, i64 4294967277, i64 4294967284]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 32, i64 4294967201, i64 4294967277, i64 4294967284]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 32, i64 4294967201, i64 4294967277, i64 4294967284]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 32, i64 4294967201, i64 4294967277, i64 4294967284]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 32, i64 4294967201, i64 4294967277, i64 4294967284]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 32, i64 4294967201, i64 4294967277, i64 4294967284]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 4294967201, i64 4294967277, i64 4294967284]
@__sancov_gen_cov_switch_values.80 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 32, i64 4294967201, i64 4294967277, i64 4294967284]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 32, i64 4294967201, i64 4294967277, i64 4294967284]
@__sancov_gen_cov_switch_values.83 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 4294967201, i64 4294967277, i64 4294967284]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 32, i64 4294967201, i64 4294967277, i64 4294967284]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 32, i64 4294967201, i64 4294967277, i64 4294967284]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 32, i64 4294967201, i64 4294967277, i64 4294967284]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 32, i64 4294967201, i64 4294967277, i64 4294967284]
@__sancov_gen_cov_switch_values.90 = internal global [5 x i64] [i64 3, i64 32, i64 4294967201, i64 4294967277, i64 4294967284]
@__sancov_gen_cov_switch_values.91 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967201, i64 4294967277, i64 4294967284]
@__sancov_gen_cov_switch_values.92 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967201, i64 4294967277, i64 4294967284]
@___asan_gen_.93 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1029, i32 41 }
@___asan_gen_.96 = private unnamed_addr constant [20 x i8] c"f81534a_ctrl_driver\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1035, i32 26 }
@___asan_gen_.99 = private unnamed_addr constant [14 x i8] c"f81232_device\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 977, i32 33 }
@___asan_gen_.102 = private unnamed_addr constant [15 x i8] c"f81534a_device\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1004, i32 33 }
@___asan_gen_.105 = private unnamed_addr constant [16 x i8] c"f81232_id_table\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 42, i32 35 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 980, i32 12 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 917, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 918, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 919, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 211, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 155, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 830, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 968, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 723, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 574, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 583, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 178, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 597, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 667, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 273, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 278, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant [15 x i8] c"baudrate_table\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 127, i32 18 }
@___asan_gen_.237 = private unnamed_addr constant [12 x i8] c"clock_table\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 128, i32 17 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 518, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 526, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 534, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 542, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 550, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 558, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 470, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 330, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 334, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 347, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant [30 x i8] c"../include/linux/usb/serial.h\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 393, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 300, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 309, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant [17 x i8] c"f81534a_id_table\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 47, i32 35 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1007, i32 12 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 748, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 423, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 430, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1036, i32 11 }
@___asan_gen_.351 = private unnamed_addr constant [22 x i8] c"f81534a_ctrl_id_table\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 52, i32 35 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 888, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.369 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 861, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant [18 x i8] c"combined_id_table\00", align 1
@___asan_gen_.373 = private constant [31 x i8] c"../drivers/usb/serial/f81232.c\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 57, i32 35 }
@llvm.compiler.used = appending global [126 x ptr] [ptr @__UNIQUE_ID_author245, ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file247, ptr @__UNIQUE_ID_license248, ptr @__exitcall_f81232_exit, ptr @__initcall__kmod_f81232__243_1068_f81232_init6, ptr @f81232_break_ctl._entry, ptr @f81232_break_ctl._entry_ptr, ptr @f81232_exit, ptr @f81232_get_register._entry, ptr @f81232_get_register._entry_ptr, ptr @f81232_lsr_worker._entry, ptr @f81232_lsr_worker._entry_ptr, ptr @f81232_open._entry, ptr @f81232_open._entry_ptr, ptr @f81232_port_disable._entry, ptr @f81232_port_disable._entry_ptr, ptr @f81232_port_enable._entry, ptr @f81232_port_enable._entry.22, ptr @f81232_port_enable._entry_ptr, ptr @f81232_port_enable._entry_ptr.24, ptr @f81232_read_int_callback._entry, ptr @f81232_read_int_callback._entry_ptr, ptr @f81232_read_msr._entry, ptr @f81232_read_msr._entry_ptr, ptr @f81232_resume._entry, ptr @f81232_resume._entry_ptr, ptr @f81232_set_baudrate._entry, ptr @f81232_set_baudrate._entry.34, ptr @f81232_set_baudrate._entry.37, ptr @f81232_set_baudrate._entry.40, ptr @f81232_set_baudrate._entry.43, ptr @f81232_set_baudrate._entry.46, ptr @f81232_set_baudrate._entry_ptr, ptr @f81232_set_baudrate._entry_ptr.36, ptr @f81232_set_baudrate._entry_ptr.39, ptr @f81232_set_baudrate._entry_ptr.42, ptr @f81232_set_baudrate._entry_ptr.45, ptr @f81232_set_baudrate._entry_ptr.47, ptr @f81232_set_mctrl._entry, ptr @f81232_set_mctrl._entry_ptr, ptr @f81232_set_register._entry, ptr @f81232_set_register._entry_ptr, ptr @f81232_set_termios._entry, ptr @f81232_set_termios._entry_ptr, ptr @f81534a_ctrl_enable_all_ports._entry, ptr @f81534a_ctrl_enable_all_ports._entry_ptr, ptr @f81534a_ctrl_set_register._entry, ptr @f81534a_ctrl_set_register._entry_ptr, ptr @f81534a_open._entry, ptr @f81534a_open._entry_ptr, ptr @f81534a_process_read_urb._entry, ptr @f81534a_process_read_urb._entry.65, ptr @f81534a_process_read_urb._entry_ptr, ptr @f81534a_process_read_urb._entry_ptr.67, ptr @serial_drivers, ptr @f81534a_ctrl_driver, ptr @f81232_device, ptr @f81534a_device, ptr @f81232_id_table, ptr @.str, ptr @f81232_port_probe.__key, ptr @.str.1, ptr @f81232_port_probe.__key.2, ptr @.str.3, ptr @f81232_port_probe.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @baudrate_table, ptr @clock_table, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @f81534a_id_table, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @f81534a_ctrl_id_table, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @combined_id_table], section "llvm.metadata"
@0 = internal global [94 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534a_ctrl_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81232_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534a_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81232_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81232_port_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81232_port_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81232_port_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81232_read_msr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81232_get_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81232_lsr_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81232_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81232_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81232_port_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81232_port_enable._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81232_set_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81232_port_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81232_set_termios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81232_set_mctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @baudrate_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clock_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81232_set_baudrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81232_set_baudrate._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81232_set_baudrate._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81232_set_baudrate._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81232_set_baudrate._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81232_set_baudrate._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81232_break_ctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81232_read_int_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534a_id_table to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534a_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534a_process_read_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534a_process_read_urb._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534a_ctrl_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534a_ctrl_enable_all_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f81534a_ctrl_set_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @combined_id_table to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @f81232_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_serial_deregister_drivers(ptr noundef nonnull @serial_drivers) #6
  tail call void @usb_deregister(ptr noundef nonnull @f81534a_ctrl_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_deregister_drivers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @f81232_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @f81534a_ctrl_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @usb_serial_register_drivers(ptr noundef nonnull @serial_drivers, ptr noundef nonnull @.str, ptr noundef nonnull @combined_id_table) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_deregister(ptr noundef nonnull @f81534a_ctrl_driver) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f81232_port_probe(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 192, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @f81232_port_probe.__key) #6
  %interrupt_work = getelementptr inbounds %struct.f81232_private, ptr %call.i, i32 0, i32 6
  tail call void @__init_work(ptr noundef %interrupt_work, i32 noundef 0) #6
  %0 = ptrtoint ptr %interrupt_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %interrupt_work, align 4
  %lockdep_map = getelementptr inbounds %struct.f81232_private, ptr %call.i, i32 0, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @f81232_port_probe.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry5 = getelementptr inbounds %struct.f81232_private, ptr %call.i, i32 0, i32 6, i32 1
  %1 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.f81232_private, ptr %call.i, i32 0, i32 6, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.f81232_private, ptr %call.i, i32 0, i32 6, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @f81232_interrupt_work, ptr %func, align 4
  %lsr_work = getelementptr inbounds %struct.f81232_private, ptr %call.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %lsr_work, i32 noundef 0) #6
  %4 = ptrtoint ptr %lsr_work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %lsr_work, align 4
  %lockdep_map15 = getelementptr inbounds %struct.f81232_private, ptr %call.i, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map15, ptr noundef nonnull @.str.5, ptr noundef nonnull @f81232_port_probe.__key.4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry17 = getelementptr inbounds %struct.f81232_private, ptr %call.i, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry17, ptr %entry17, align 4
  %prev.i38 = getelementptr inbounds %struct.f81232_private, ptr %call.i, i32 0, i32 5, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i38 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry17, ptr %prev.i38, align 4
  %func19 = getelementptr inbounds %struct.f81232_private, ptr %call.i, i32 0, i32 5, i32 2
  %7 = ptrtoint ptr %func19 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @f81232_lsr_worker, ptr %func19, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %port22 = getelementptr inbounds %struct.f81232_private, ptr %call.i, i32 0, i32 7
  %9 = ptrtoint ptr %port22 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %port, ptr %port22, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f81232_suspend(ptr nocapture noundef readonly %serial, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 12
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx2 = getelementptr %struct.usb_serial_port, ptr %1, i32 0, i32 17, i32 0
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #6
  %arrayidx2.1 = getelementptr %struct.usb_serial_port, ptr %1, i32 0, i32 17, i32 1
  %6 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2.1, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #6
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %interrupt_in_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #6
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %interrupt_work = getelementptr inbounds %struct.f81232_private, ptr %3, i32 0, i32 6
  %call3 = tail call zeroext i1 @flush_work(ptr noundef %interrupt_work) #6
  %lsr_work = getelementptr inbounds %struct.f81232_private, ptr %3, i32 0, i32 5
  %call4 = tail call zeroext i1 @flush_work(ptr noundef %lsr_work) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f81232_resume(ptr noundef %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 12
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 4
  %iflags.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1, i32 11
  %2 = ptrtoint ptr %iflags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %iflags.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %interrupt_in_urb, align 4
  %call3 = tail call i32 @usb_submit_urb(ptr noundef %5, i32 noundef 3072) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then.if.end5_crit_edge, label %do.end

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call3) #9
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call6 = tail call i32 @usb_serial_generic_resume(ptr noundef %serial) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ %call6, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f81232_open(ptr noundef %tty, ptr noundef %port) #2 align 64 {
entry:
  %val.addr.i18.i = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %0 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -121, ptr %val.addr.i.i, align 1
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call.i.i = call i32 @usb_control_msg_send(ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 290, i16 noundef zeroext 0, ptr noundef nonnull %val.addr.i.i, i16 noundef zeroext 1, i32 noundef 5000, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %entry
  %dev2.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.25, i32 noundef %call.i.i) #9
  %5 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i.i, label %sw.default.i.i.i [
    i32 -95, label %do.end.i.i.do.end.i_crit_edge
    i32 -12, label %do.end.i.i.do.end.i_crit_edge28
    i32 -19, label %do.end.i.i.do.end.i_crit_edge29
  ]

do.end.i.i.do.end.i_crit_edge29:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i.i.do.end.i_crit_edge28:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i.i.do.end.i_crit_edge:                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

sw.default.i.i.i:                                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %sw.default.i.i.i, %do.end.i.i.do.end.i_crit_edge, %do.end.i.i.do.end.i_crit_edge28, %do.end.i.i.do.end.i_crit_edge29
  %status.0.i.ph.i = phi i32 [ %call.i.i, %do.end.i.i.do.end.i_crit_edge ], [ %call.i.i, %do.end.i.i.do.end.i_crit_edge28 ], [ %call.i.i, %do.end.i.i.do.end.i_crit_edge29 ], [ -5, %sw.default.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %status.0.i.ph.i) #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i18.i) #6
  %6 = ptrtoint ptr %val.addr.i18.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 8, ptr %val.addr.i18.i, align 1
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call.i19.i = call i32 @usb_control_msg_send(ptr noundef %10, i8 noundef zeroext 0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 289, i16 noundef zeroext 0, ptr noundef nonnull %val.addr.i18.i, i16 noundef zeroext 1, i32 noundef 5000, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i)
  %tobool.not.i20.i = icmp eq i32 %call.i19.i, 0
  br i1 %tobool.not.i20.i, label %if.end, label %do.end.i22.i

do.end.i22.i:                                     ; preds = %if.end.i
  %dev2.i21.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i21.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.25, i32 noundef %call.i19.i) #9
  %11 = zext i32 %call.i19.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %call.i19.i, label %sw.default.i.i23.i [
    i32 -95, label %do.end.i22.i.do.end6.i_crit_edge
    i32 -12, label %do.end.i22.i.do.end6.i_crit_edge30
    i32 -19, label %do.end.i22.i.do.end6.i_crit_edge31
  ]

do.end.i22.i.do.end6.i_crit_edge31:               ; preds = %do.end.i22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

do.end.i22.i.do.end6.i_crit_edge30:               ; preds = %do.end.i22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

do.end.i22.i.do.end6.i_crit_edge:                 ; preds = %do.end.i22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

sw.default.i.i23.i:                               ; preds = %do.end.i22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

do.end6.i:                                        ; preds = %sw.default.i.i23.i, %do.end.i22.i.do.end6.i_crit_edge, %do.end.i22.i.do.end6.i_crit_edge30, %do.end.i22.i.do.end6.i_crit_edge31
  %status.0.i24.ph.i = phi i32 [ %call.i19.i, %do.end.i22.i.do.end6.i_crit_edge ], [ %call.i19.i, %do.end.i22.i.do.end6.i_crit_edge30 ], [ %call.i19.i, %do.end.i22.i.do.end6.i_crit_edge31 ], [ -5, %sw.default.i.i23.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i18.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i21.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef %status.0.i24.ph.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i18.i) #6
  %tobool1.not = icmp eq ptr %tty, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @f81232_set_termios(ptr noundef nonnull %tty, ptr noundef %port, ptr noundef null)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %12 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %interrupt_in_urb, align 4
  %call4 = call i32 @usb_submit_urb(ptr noundef %13, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef %call4) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %call8 = call i32 @usb_serial_generic_open(ptr noundef %tty, ptr noundef %port) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.then10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %interrupt_in_urb, align 4
  call void @usb_kill_urb(ptr noundef %15) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end7.cleanup_crit_edge, %do.end, %do.end6.i, %do.end.i
  %retval.0 = phi i32 [ %call4, %do.end ], [ %call8, %if.then10 ], [ 0, %if.end7.cleanup_crit_edge ], [ %status.0.i24.ph.i, %do.end6.i ], [ %status.0.i.ph.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f81232_close(ptr noundef %port) #2 align 64 {
entry:
  %val.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %2 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %val.addr.i.i, align 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call.i.i = call i32 @usb_control_msg_send(ptr noundef %6, i8 noundef zeroext 0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 289, i16 noundef zeroext 0, ptr noundef nonnull %val.addr.i.i, i16 noundef zeroext 1, i32 noundef 5000, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %f81232_set_register.exit.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %entry
  %dev2.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.25, i32 noundef %call.i.i) #9
  %7 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %call.i.i, label %sw.default.i.i.i [
    i32 -95, label %do.end.i.i.do.end.i_crit_edge
    i32 -12, label %do.end.i.i.do.end.i_crit_edge8
    i32 -19, label %do.end.i.i.do.end.i_crit_edge9
  ]

do.end.i.i.do.end.i_crit_edge9:                   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i.i.do.end.i_crit_edge8:                   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i.i.do.end.i_crit_edge:                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

sw.default.i.i.i:                                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

f81232_set_register.exit.i:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  br label %f81232_port_disable.exit

do.end.i:                                         ; preds = %sw.default.i.i.i, %do.end.i.i.do.end.i_crit_edge, %do.end.i.i.do.end.i_crit_edge8, %do.end.i.i.do.end.i_crit_edge9
  %status.0.i.ph.i = phi i32 [ %call.i.i, %do.end.i.i.do.end.i_crit_edge ], [ %call.i.i, %do.end.i.i.do.end.i_crit_edge8 ], [ %call.i.i, %do.end.i.i.do.end.i_crit_edge9 ], [ -5, %sw.default.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.26, i32 noundef %status.0.i.ph.i) #9
  br label %f81232_port_disable.exit

f81232_port_disable.exit:                         ; preds = %do.end.i, %f81232_set_register.exit.i
  call void @usb_serial_generic_close(ptr noundef %port) #6
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %8 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %interrupt_in_urb, align 4
  call void @usb_kill_urb(ptr noundef %9) #6
  %interrupt_work = getelementptr inbounds %struct.f81232_private, ptr %1, i32 0, i32 6
  %call2 = call zeroext i1 @flush_work(ptr noundef %interrupt_work) #6
  %lsr_work = getelementptr inbounds %struct.f81232_private, ptr %1, i32 0, i32 5
  %call3 = call zeroext i1 @flush_work(ptr noundef %lsr_work) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @f81232_get_serial(ptr nocapture noundef readonly %tty, ptr nocapture noundef writeonly %ss) #3 align 64 {
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
  %baud_base = getelementptr inbounds %struct.f81232_private, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %baud_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %baud_base, align 4
  %baud_base1 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 7
  %6 = ptrtoint ptr %baud_base1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %baud_base1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f81232_set_termios(ptr noundef %tty, ptr noundef %port, ptr noundef %old_termios) #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  %val.addr.i130.i = alloca i8, align 1
  %val.addr.i121.i = alloca i8, align 1
  %val.addr.i112.i = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  %lcr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %old_termios, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %call1 = tail call i32 @tty_termios_hw_change(ptr noundef %termios, ptr noundef nonnull %old_termios) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.end.thread

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %2 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_cflag, align 4
  %and = and i32 %3, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end.if.then4_crit_edge, label %if.end14.thread

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.end.thread:                                    ; preds = %land.lhs.true
  %c_cflag130 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %4 = ptrtoint ptr %c_cflag130 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_cflag130, align 4
  %and131 = and i32 %5, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %cmp132 = icmp eq i32 %and131, 0
  br i1 %cmp132, label %if.end.thread.if.then4_crit_edge, label %land.lhs.true7

if.end.thread.if.then4_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.then4:                                         ; preds = %if.end.thread.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %c_cflag135 = phi ptr [ %c_cflag130, %if.end.thread.if.then4_crit_edge ], [ %c_cflag, %if.end.if.then4_crit_edge ]
  %call5 = tail call fastcc i32 @f81232_set_mctrl(ptr noundef %port, i32 noundef 0, i32 noundef 6)
  br label %if.end14

land.lhs.true7:                                   ; preds = %if.end.thread
  %c_cflag8 = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 2
  %6 = ptrtoint ptr %c_cflag8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %c_cflag8, align 4
  %and9 = and i32 %7, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %cmp10 = icmp eq i32 %and9, 0
  br i1 %cmp10, label %if.then11, label %land.lhs.true7.if.end14_crit_edge

land.lhs.true7.if.end14_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then11:                                        ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call fastcc i32 @f81232_set_mctrl(ptr noundef %port, i32 noundef 6, i32 noundef 0)
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %land.lhs.true7.if.end14_crit_edge, %if.then4
  %c_cflag133 = phi ptr [ %c_cflag130, %land.lhs.true7.if.end14_crit_edge ], [ %c_cflag130, %if.then11 ], [ %c_cflag135, %if.then4 ]
  %termios.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp16.not = icmp eq i32 %call.i, 0
  br i1 %cmp16.not, label %if.end14.if.end23_crit_edge, label %if.then17

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.end14.thread:                                  ; preds = %if.end
  %termios.i142 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %call.i143 = tail call i32 @tty_termios_baud_rate(ptr noundef %termios.i142) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143)
  %cmp16.not144 = icmp eq i32 %call.i143, 0
  br i1 %cmp16.not144, label %if.end14.thread.if.end23_crit_edge, label %if.end14.thread.if.end22_crit_edge

if.end14.thread.if.end22_crit_edge:               ; preds = %if.end14.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.end14.thread.if.end23_crit_edge:               ; preds = %if.end14.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then17:                                        ; preds = %if.end14
  br i1 %tobool.not, label %if.then17.if.end22_crit_edge, label %if.then19

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then19:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = tail call i32 @tty_termios_baud_rate(ptr noundef nonnull %old_termios) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.then17.if.end22_crit_edge, %if.end14.thread.if.end22_crit_edge
  %c_cflag133145154 = phi ptr [ %c_cflag133, %if.then19 ], [ %c_cflag133, %if.then17.if.end22_crit_edge ], [ %c_cflag, %if.end14.thread.if.end22_crit_edge ]
  %call.i147153 = phi i32 [ %call.i, %if.then19 ], [ %call.i, %if.then17.if.end22_crit_edge ], [ %call.i143, %if.end14.thread.if.end22_crit_edge ]
  %old_baud.0 = phi i32 [ %call20, %if.then19 ], [ 9600, %if.then17.if.end22_crit_edge ], [ 9600, %if.end14.thread.if.end22_crit_edge ]
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lcr.i) #6
  %10 = ptrtoint ptr %lcr.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %lcr.i, align 1, !annotation !192
  call void @__sanitizer_cov_trace_const_cmp4(i32 115200, i32 %call.i147153)
  %cmp1.not.i.i = icmp ugt i32 %call.i147153, 115200
  br i1 %cmp1.not.i.i, label %for.inc.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.end22
  %rem.i.i = urem i32 115200, %call.i147153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %cmp3.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %cmp3.i.i, label %land.lhs.true.i.i.if.end7.i_crit_edge, label %land.lhs.true.i.i.land.lhs.true.1.i.i_crit_edge

land.lhs.true.i.i.land.lhs.true.1.i.i_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.1.i.i

land.lhs.true.i.i.if.end7.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

for.inc.i.i:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 921600, i32 %call.i147153)
  %cmp1.not.1.i.i = icmp ugt i32 %call.i147153, 921600
  br i1 %cmp1.not.1.i.i, label %for.inc.1.i.i, label %for.inc.i.i.land.lhs.true.1.i.i_crit_edge

for.inc.i.i.land.lhs.true.1.i.i_crit_edge:        ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.1.i.i

land.lhs.true.1.i.i:                              ; preds = %for.inc.i.i.land.lhs.true.1.i.i_crit_edge, %land.lhs.true.i.i.land.lhs.true.1.i.i_crit_edge
  %rem.1.i.i = urem i32 921600, %call.i147153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.1.i.i)
  %cmp3.1.i.i = icmp eq i32 %rem.1.i.i, 0
  br i1 %cmp3.1.i.i, label %land.lhs.true.1.i.i.if.end7.i_crit_edge, label %land.lhs.true.1.i.i.land.lhs.true.2.i.i_crit_edge

land.lhs.true.1.i.i.land.lhs.true.2.i.i_crit_edge: ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.2.i.i

land.lhs.true.1.i.i.if.end7.i_crit_edge:          ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1152000, i32 %call.i147153)
  %cmp1.not.2.i.i = icmp ugt i32 %call.i147153, 1152000
  br i1 %cmp1.not.2.i.i, label %for.inc.2.i.i, label %for.inc.1.i.i.land.lhs.true.2.i.i_crit_edge

for.inc.1.i.i.land.lhs.true.2.i.i_crit_edge:      ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.2.i.i

land.lhs.true.2.i.i:                              ; preds = %for.inc.1.i.i.land.lhs.true.2.i.i_crit_edge, %land.lhs.true.1.i.i.land.lhs.true.2.i.i_crit_edge
  %rem.2.i.i = urem i32 1152000, %call.i147153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.2.i.i)
  %cmp3.2.i.i = icmp eq i32 %rem.2.i.i, 0
  br i1 %cmp3.2.i.i, label %land.lhs.true.2.i.i.if.end7.i_crit_edge, label %land.lhs.true.2.i.i.land.lhs.true.3.i.i_crit_edge

land.lhs.true.2.i.i.land.lhs.true.3.i.i_crit_edge: ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.3.i.i

land.lhs.true.2.i.i.if.end7.i_crit_edge:          ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %call.i147153)
  %cmp1.not.3.i.i = icmp ugt i32 %call.i147153, 1500000
  br i1 %cmp1.not.3.i.i, label %for.inc.2.i.i.for.inc.i_crit_edge, label %for.inc.2.i.i.land.lhs.true.3.i.i_crit_edge

for.inc.2.i.i.land.lhs.true.3.i.i_crit_edge:      ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.3.i.i

for.inc.2.i.i.for.inc.i_crit_edge:                ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.3.i.i:                              ; preds = %for.inc.2.i.i.land.lhs.true.3.i.i_crit_edge, %land.lhs.true.2.i.i.land.lhs.true.3.i.i_crit_edge
  %rem.3.i.i = urem i32 1500000, %call.i147153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.3.i.i)
  %cmp3.3.i.i = icmp eq i32 %rem.3.i.i, 0
  br i1 %cmp3.3.i.i, label %land.lhs.true.3.i.i.if.end7.i_crit_edge, label %land.lhs.true.3.i.i.for.inc.i_crit_edge

land.lhs.true.3.i.i.for.inc.i_crit_edge:          ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.3.i.i.if.end7.i_crit_edge:          ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

for.inc.i:                                        ; preds = %land.lhs.true.3.i.i.for.inc.i_crit_edge, %for.inc.2.i.i.for.inc.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 115200, i32 %old_baud.0)
  %cmp1.not.i.1.i = icmp ugt i32 %old_baud.0, 115200
  br i1 %cmp1.not.i.1.i, label %for.inc.i.1.i, label %land.lhs.true.i.1.i

land.lhs.true.i.1.i:                              ; preds = %for.inc.i
  %rem.i.1.i = urem i32 115200, %old_baud.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.1.i)
  %cmp3.i.1.i = icmp eq i32 %rem.i.1.i, 0
  br i1 %cmp3.i.1.i, label %land.lhs.true.i.1.i.if.end7.i_crit_edge, label %land.lhs.true.i.1.i.land.lhs.true.1.i.1.i_crit_edge

land.lhs.true.i.1.i.land.lhs.true.1.i.1.i_crit_edge: ; preds = %land.lhs.true.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.1.i.1.i

land.lhs.true.i.1.i.if.end7.i_crit_edge:          ; preds = %land.lhs.true.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

for.inc.i.1.i:                                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 921600, i32 %old_baud.0)
  %cmp1.not.1.i.1.i = icmp ugt i32 %old_baud.0, 921600
  br i1 %cmp1.not.1.i.1.i, label %for.inc.1.i.1.i, label %for.inc.i.1.i.land.lhs.true.1.i.1.i_crit_edge

for.inc.i.1.i.land.lhs.true.1.i.1.i_crit_edge:    ; preds = %for.inc.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.1.i.1.i

land.lhs.true.1.i.1.i:                            ; preds = %for.inc.i.1.i.land.lhs.true.1.i.1.i_crit_edge, %land.lhs.true.i.1.i.land.lhs.true.1.i.1.i_crit_edge
  %rem.1.i.1.i = urem i32 921600, %old_baud.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.1.i.1.i)
  %cmp3.1.i.1.i = icmp eq i32 %rem.1.i.1.i, 0
  br i1 %cmp3.1.i.1.i, label %land.lhs.true.1.i.1.i.if.end7.i_crit_edge, label %land.lhs.true.1.i.1.i.land.lhs.true.2.i.1.i_crit_edge

land.lhs.true.1.i.1.i.land.lhs.true.2.i.1.i_crit_edge: ; preds = %land.lhs.true.1.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.2.i.1.i

land.lhs.true.1.i.1.i.if.end7.i_crit_edge:        ; preds = %land.lhs.true.1.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

for.inc.1.i.1.i:                                  ; preds = %for.inc.i.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1152000, i32 %old_baud.0)
  %cmp1.not.2.i.1.i = icmp ugt i32 %old_baud.0, 1152000
  br i1 %cmp1.not.2.i.1.i, label %for.inc.2.i.1.i, label %for.inc.1.i.1.i.land.lhs.true.2.i.1.i_crit_edge

for.inc.1.i.1.i.land.lhs.true.2.i.1.i_crit_edge:  ; preds = %for.inc.1.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.2.i.1.i

land.lhs.true.2.i.1.i:                            ; preds = %for.inc.1.i.1.i.land.lhs.true.2.i.1.i_crit_edge, %land.lhs.true.1.i.1.i.land.lhs.true.2.i.1.i_crit_edge
  %rem.2.i.1.i = urem i32 1152000, %old_baud.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.2.i.1.i)
  %cmp3.2.i.1.i = icmp eq i32 %rem.2.i.1.i, 0
  br i1 %cmp3.2.i.1.i, label %land.lhs.true.2.i.1.i.if.end7.i_crit_edge, label %land.lhs.true.2.i.1.i.land.lhs.true.3.i.1.i_crit_edge

land.lhs.true.2.i.1.i.land.lhs.true.3.i.1.i_crit_edge: ; preds = %land.lhs.true.2.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.3.i.1.i

land.lhs.true.2.i.1.i.if.end7.i_crit_edge:        ; preds = %land.lhs.true.2.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

for.inc.2.i.1.i:                                  ; preds = %for.inc.1.i.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %old_baud.0)
  %cmp1.not.3.i.1.i = icmp ugt i32 %old_baud.0, 1500000
  br i1 %cmp1.not.3.i.1.i, label %for.inc.2.i.1.i.land.lhs.true.i.2.i_crit_edge, label %for.inc.2.i.1.i.land.lhs.true.3.i.1.i_crit_edge

for.inc.2.i.1.i.land.lhs.true.3.i.1.i_crit_edge:  ; preds = %for.inc.2.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.3.i.1.i

for.inc.2.i.1.i.land.lhs.true.i.2.i_crit_edge:    ; preds = %for.inc.2.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i.2.i

land.lhs.true.3.i.1.i:                            ; preds = %for.inc.2.i.1.i.land.lhs.true.3.i.1.i_crit_edge, %land.lhs.true.2.i.1.i.land.lhs.true.3.i.1.i_crit_edge
  %rem.3.i.1.i = urem i32 1500000, %old_baud.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.3.i.1.i)
  %cmp3.3.i.1.i = icmp eq i32 %rem.3.i.1.i, 0
  br i1 %cmp3.3.i.1.i, label %land.lhs.true.3.i.1.i.if.end7.i_crit_edge, label %land.lhs.true.3.i.1.i.land.lhs.true.i.2.i_crit_edge

land.lhs.true.3.i.1.i.land.lhs.true.i.2.i_crit_edge: ; preds = %land.lhs.true.3.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i.2.i

land.lhs.true.3.i.1.i.if.end7.i_crit_edge:        ; preds = %land.lhs.true.3.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

land.lhs.true.i.2.i:                              ; preds = %land.lhs.true.3.i.1.i.land.lhs.true.i.2.i_crit_edge, %for.inc.2.i.1.i.land.lhs.true.i.2.i_crit_edge
  br label %if.end7.i

if.end7.i:                                        ; preds = %land.lhs.true.i.2.i, %land.lhs.true.3.i.1.i.if.end7.i_crit_edge, %land.lhs.true.2.i.1.i.if.end7.i_crit_edge, %land.lhs.true.1.i.1.i.if.end7.i_crit_edge, %land.lhs.true.i.1.i.if.end7.i_crit_edge, %land.lhs.true.3.i.i.if.end7.i_crit_edge, %land.lhs.true.2.i.i.if.end7.i_crit_edge, %land.lhs.true.1.i.i.if.end7.i_crit_edge, %land.lhs.true.i.i.if.end7.i_crit_edge
  %.lcssa.i = phi i32 [ %call.i147153, %land.lhs.true.i.i.if.end7.i_crit_edge ], [ %call.i147153, %land.lhs.true.1.i.i.if.end7.i_crit_edge ], [ %call.i147153, %land.lhs.true.2.i.i.if.end7.i_crit_edge ], [ %call.i147153, %land.lhs.true.3.i.i.if.end7.i_crit_edge ], [ %old_baud.0, %land.lhs.true.i.1.i.if.end7.i_crit_edge ], [ %old_baud.0, %land.lhs.true.1.i.1.i.if.end7.i_crit_edge ], [ %old_baud.0, %land.lhs.true.2.i.1.i.if.end7.i_crit_edge ], [ %old_baud.0, %land.lhs.true.3.i.1.i.if.end7.i_crit_edge ], [ 9600, %land.lhs.true.i.2.i ]
  %retval.0.i.ph.i = phi i32 [ 0, %land.lhs.true.i.i.if.end7.i_crit_edge ], [ 1, %land.lhs.true.1.i.i.if.end7.i_crit_edge ], [ 2, %land.lhs.true.2.i.i.if.end7.i_crit_edge ], [ 3, %land.lhs.true.3.i.i.if.end7.i_crit_edge ], [ 0, %land.lhs.true.i.1.i.if.end7.i_crit_edge ], [ 1, %land.lhs.true.1.i.1.i.if.end7.i_crit_edge ], [ 2, %land.lhs.true.2.i.1.i.if.end7.i_crit_edge ], [ 3, %land.lhs.true.3.i.1.i.if.end7.i_crit_edge ], [ 0, %land.lhs.true.i.2.i ]
  tail call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef %.lcssa.i, i32 noundef %.lcssa.i) #6
  %arrayidx8.i = getelementptr [4 x i32], ptr @baudrate_table, i32 0, i32 %retval.0.i.ph.i
  %11 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx8.i, align 4
  %baud_base.i = getelementptr inbounds %struct.f81232_private, ptr %9, i32 0, i32 4
  %13 = ptrtoint ptr %baud_base.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %baud_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa.i)
  %tobool.not.i.i = icmp eq i32 %.lcssa.i, 0
  br i1 %tobool.not.i.i, label %if.end7.i.calc_baud_divisor.exit.i_crit_edge, label %if.end.i.i

if.end7.i.calc_baud_divisor.exit.i_crit_edge:     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %calc_baud_divisor.exit.i

if.end.i.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %div4.i.i = lshr i32 %.lcssa.i, 1
  %add.i.i = add i32 %12, %div4.i.i
  %div1.i.i = udiv i32 %add.i.i, %.lcssa.i
  br label %calc_baud_divisor.exit.i

calc_baud_divisor.exit.i:                         ; preds = %if.end.i.i, %if.end7.i.calc_baud_divisor.exit.i_crit_edge
  %retval.0.i102.i = phi i32 [ %div1.i.i, %if.end.i.i ], [ 0, %if.end7.i.calc_baud_divisor.exit.i_crit_edge ]
  %arrayidx11.i = getelementptr [4 x i8], ptr @clock_table, i32 0, i32 %retval.0.i.ph.i
  %14 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx11.i, align 1
  %call12.i = tail call fastcc i32 @f81232_set_mask_register(ptr noundef %port, i16 noundef zeroext 262, i8 noundef zeroext 3, i8 noundef zeroext %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool.not.i, label %if.end14.i, label %do.end.i

do.end.i:                                         ; preds = %calc_baud_divisor.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef %call12.i) #9
  br label %f81232_set_baudrate.exit

if.end14.i:                                       ; preds = %calc_baud_divisor.exit.i
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %port, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %call.i.i = call i32 @usb_control_msg_recv(ptr noundef %19, i8 noundef zeroext 0, i8 noundef zeroext -96, i8 noundef zeroext -64, i16 noundef zeroext 291, i16 noundef zeroext 0, ptr noundef nonnull %lcr.i, i16 noundef zeroext 1, i32 noundef 5000, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i103.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i103.i, label %if.end22.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end14.i
  %dev2.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %call.i.i) #9
  %20 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %call.i.i, label %sw.default.i.i.i [
    i32 -95, label %do.end.i.i.do.end20.i_crit_edge
    i32 -12, label %do.end.i.i.do.end20.i_crit_edge155
    i32 -19, label %do.end.i.i.do.end20.i_crit_edge156
  ]

do.end.i.i.do.end20.i_crit_edge156:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20.i

do.end.i.i.do.end20.i_crit_edge155:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20.i

do.end.i.i.do.end20.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20.i

sw.default.i.i.i:                                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20.i

do.end20.i:                                       ; preds = %sw.default.i.i.i, %do.end.i.i.do.end20.i_crit_edge, %do.end.i.i.do.end20.i_crit_edge155, %do.end.i.i.do.end20.i_crit_edge156
  %status.0.i.ph.i = phi i32 [ %call.i.i, %do.end.i.i.do.end20.i_crit_edge ], [ %call.i.i, %do.end.i.i.do.end20.i_crit_edge155 ], [ %call.i.i, %do.end.i.i.do.end20.i_crit_edge156 ], [ -5, %sw.default.i.i.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33, i32 noundef %status.0.i.ph.i) #9
  br label %f81232_set_baudrate.exit

if.end22.i:                                       ; preds = %if.end14.i
  %21 = ptrtoint ptr %lcr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %lcr.i, align 1
  %23 = or i8 %22, -128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %24 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %val.addr.i.i, align 1
  %25 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %port, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call.i105.i = call i32 @usb_control_msg_send(ptr noundef %28, i8 noundef zeroext 0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 291, i16 noundef zeroext 0, ptr noundef nonnull %val.addr.i.i, i16 noundef zeroext 1, i32 noundef 5000, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105.i)
  %tobool.not.i106.i = icmp eq i32 %call.i105.i, 0
  br i1 %tobool.not.i106.i, label %if.end31.i, label %do.end.i108.i

do.end.i108.i:                                    ; preds = %if.end22.i
  %dev2.i107.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i107.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.25, i32 noundef %call.i105.i) #9
  %29 = zext i32 %call.i105.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %call.i105.i, label %sw.default.i.i109.i [
    i32 -95, label %do.end.i108.i.do.end29.i_crit_edge
    i32 -12, label %do.end.i108.i.do.end29.i_crit_edge157
    i32 -19, label %do.end.i108.i.do.end29.i_crit_edge158
  ]

do.end.i108.i.do.end29.i_crit_edge158:            ; preds = %do.end.i108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end29.i

do.end.i108.i.do.end29.i_crit_edge157:            ; preds = %do.end.i108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end29.i

do.end.i108.i.do.end29.i_crit_edge:               ; preds = %do.end.i108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end29.i

sw.default.i.i109.i:                              ; preds = %do.end.i108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end29.i

do.end29.i:                                       ; preds = %sw.default.i.i109.i, %do.end.i108.i.do.end29.i_crit_edge, %do.end.i108.i.do.end29.i_crit_edge157, %do.end.i108.i.do.end29.i_crit_edge158
  %status.0.i110.ph.i = phi i32 [ %call.i105.i, %do.end.i108.i.do.end29.i_crit_edge ], [ %call.i105.i, %do.end.i108.i.do.end29.i_crit_edge157 ], [ %call.i105.i, %do.end.i108.i.do.end29.i_crit_edge158 ], [ -5, %sw.default.i.i109.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i107.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.33, i32 noundef %status.0.i110.ph.i) #9
  br label %f81232_set_baudrate.exit

if.end31.i:                                       ; preds = %if.end22.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %conv32.i = trunc i32 %retval.0.i102.i to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i112.i) #6
  %30 = ptrtoint ptr %val.addr.i112.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv32.i, ptr %val.addr.i112.i, align 1
  %31 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %port, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %call.i113.i = call i32 @usb_control_msg_send(ptr noundef %34, i8 noundef zeroext 0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 288, i16 noundef zeroext 0, ptr noundef nonnull %val.addr.i112.i, i16 noundef zeroext 1, i32 noundef 5000, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113.i)
  %tobool.not.i114.i = icmp eq i32 %call.i113.i, 0
  br i1 %tobool.not.i114.i, label %if.end40.i, label %do.end.i116.i

do.end.i116.i:                                    ; preds = %if.end31.i
  %dev2.i115.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i115.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.25, i32 noundef %call.i113.i) #9
  %35 = zext i32 %call.i113.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %call.i113.i, label %sw.default.i.i117.i [
    i32 -95, label %do.end.i116.i.do.end38.i_crit_edge
    i32 -12, label %do.end.i116.i.do.end38.i_crit_edge159
    i32 -19, label %do.end.i116.i.do.end38.i_crit_edge160
  ]

do.end.i116.i.do.end38.i_crit_edge160:            ; preds = %do.end.i116.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end38.i

do.end.i116.i.do.end38.i_crit_edge159:            ; preds = %do.end.i116.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end38.i

do.end.i116.i.do.end38.i_crit_edge:               ; preds = %do.end.i116.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end38.i

sw.default.i.i117.i:                              ; preds = %do.end.i116.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end38.i

do.end38.i:                                       ; preds = %sw.default.i.i117.i, %do.end.i116.i.do.end38.i_crit_edge, %do.end.i116.i.do.end38.i_crit_edge159, %do.end.i116.i.do.end38.i_crit_edge160
  %status.0.i118.ph.i = phi i32 [ %call.i113.i, %do.end.i116.i.do.end38.i_crit_edge ], [ %call.i113.i, %do.end.i116.i.do.end38.i_crit_edge159 ], [ %call.i113.i, %do.end.i116.i.do.end38.i_crit_edge160 ], [ -5, %sw.default.i.i117.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i112.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i115.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.33, i32 noundef %status.0.i118.ph.i) #9
  br label %reapply_lcr.i

if.end40.i:                                       ; preds = %if.end31.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i112.i) #6
  %and41.i = lshr i32 %retval.0.i102.i, 8
  %conv42.i = trunc i32 %and41.i to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i121.i) #6
  %36 = ptrtoint ptr %val.addr.i121.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv42.i, ptr %val.addr.i121.i, align 1
  %37 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %port, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %call.i122.i = call i32 @usb_control_msg_send(ptr noundef %40, i8 noundef zeroext 0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 289, i16 noundef zeroext 0, ptr noundef nonnull %val.addr.i121.i, i16 noundef zeroext 1, i32 noundef 5000, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122.i)
  %tobool.not.i123.i = icmp eq i32 %call.i122.i, 0
  br i1 %tobool.not.i123.i, label %f81232_set_register.exit129.i, label %do.end.i125.i

do.end.i125.i:                                    ; preds = %if.end40.i
  %dev2.i124.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i124.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.25, i32 noundef %call.i122.i) #9
  %41 = zext i32 %call.i122.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %call.i122.i, label %sw.default.i.i126.i [
    i32 -95, label %do.end.i125.i.do.end48.i_crit_edge
    i32 -12, label %do.end.i125.i.do.end48.i_crit_edge161
    i32 -19, label %do.end.i125.i.do.end48.i_crit_edge162
  ]

do.end.i125.i.do.end48.i_crit_edge162:            ; preds = %do.end.i125.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48.i

do.end.i125.i.do.end48.i_crit_edge161:            ; preds = %do.end.i125.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48.i

do.end.i125.i.do.end48.i_crit_edge:               ; preds = %do.end.i125.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48.i

sw.default.i.i126.i:                              ; preds = %do.end.i125.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48.i

f81232_set_register.exit129.i:                    ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i121.i) #6
  br label %reapply_lcr.i

do.end48.i:                                       ; preds = %sw.default.i.i126.i, %do.end.i125.i.do.end48.i_crit_edge, %do.end.i125.i.do.end48.i_crit_edge161, %do.end.i125.i.do.end48.i_crit_edge162
  %status.0.i127.ph.i = phi i32 [ %call.i122.i, %do.end.i125.i.do.end48.i_crit_edge ], [ %call.i122.i, %do.end.i125.i.do.end48.i_crit_edge161 ], [ %call.i122.i, %do.end.i125.i.do.end48.i_crit_edge162 ], [ -5, %sw.default.i.i126.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i121.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i124.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.33, i32 noundef %status.0.i127.ph.i) #9
  br label %reapply_lcr.i

reapply_lcr.i:                                    ; preds = %do.end48.i, %f81232_set_register.exit129.i, %do.end38.i
  %42 = ptrtoint ptr %lcr.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %lcr.i, align 1
  %44 = and i8 %43, 127
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i130.i) #6
  %45 = ptrtoint ptr %val.addr.i130.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %val.addr.i130.i, align 1
  %46 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %port, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %call.i131.i = call i32 @usb_control_msg_send(ptr noundef %49, i8 noundef zeroext 0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 291, i16 noundef zeroext 0, ptr noundef nonnull %val.addr.i130.i, i16 noundef zeroext 1, i32 noundef 5000, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131.i)
  %tobool.not.i132.i = icmp eq i32 %call.i131.i, 0
  br i1 %tobool.not.i132.i, label %f81232_set_register.exit138.i, label %do.end.i134.i

do.end.i134.i:                                    ; preds = %reapply_lcr.i
  %dev2.i133.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i133.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.25, i32 noundef %call.i131.i) #9
  %50 = zext i32 %call.i131.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %call.i131.i, label %sw.default.i.i135.i [
    i32 -95, label %do.end.i134.i.do.end59.i_crit_edge
    i32 -12, label %do.end.i134.i.do.end59.i_crit_edge163
    i32 -19, label %do.end.i134.i.do.end59.i_crit_edge164
  ]

do.end.i134.i.do.end59.i_crit_edge164:            ; preds = %do.end.i134.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end59.i

do.end.i134.i.do.end59.i_crit_edge163:            ; preds = %do.end.i134.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end59.i

do.end.i134.i.do.end59.i_crit_edge:               ; preds = %do.end.i134.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end59.i

sw.default.i.i135.i:                              ; preds = %do.end.i134.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end59.i

f81232_set_register.exit138.i:                    ; preds = %reapply_lcr.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i130.i) #6
  br label %f81232_set_baudrate.exit

do.end59.i:                                       ; preds = %sw.default.i.i135.i, %do.end.i134.i.do.end59.i_crit_edge, %do.end.i134.i.do.end59.i_crit_edge163, %do.end.i134.i.do.end59.i_crit_edge164
  %status.0.i136.ph.i = phi i32 [ %call.i131.i, %do.end.i134.i.do.end59.i_crit_edge ], [ %call.i131.i, %do.end.i134.i.do.end59.i_crit_edge163 ], [ %call.i131.i, %do.end.i134.i.do.end59.i_crit_edge164 ], [ -5, %sw.default.i.i135.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i130.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i133.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.33, i32 noundef %status.0.i136.ph.i) #9
  br label %f81232_set_baudrate.exit

f81232_set_baudrate.exit:                         ; preds = %do.end59.i, %f81232_set_register.exit138.i, %do.end29.i, %do.end20.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lcr.i) #6
  br label %if.end23

if.end23:                                         ; preds = %f81232_set_baudrate.exit, %if.end14.thread.if.end23_crit_edge, %if.end14.if.end23_crit_edge
  %c_cflag133146 = phi ptr [ %c_cflag, %if.end14.thread.if.end23_crit_edge ], [ %c_cflag133145154, %f81232_set_baudrate.exit ], [ %c_cflag133, %if.end14.if.end23_crit_edge ]
  %51 = ptrtoint ptr %c_cflag133146 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %c_cflag133146, align 4
  %and26 = and i32 %52, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end23.if.end48_crit_edge, label %if.then28

if.end23.if.end48_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %and32 = and i32 %52, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %spec.select = select i1 %tobool33.not, i8 24, i8 8
  %and41 = lshr i32 %52, 25
  %53 = trunc i32 %and41 to i8
  %54 = and i8 %53, 32
  %55 = or i8 %54, %spec.select
  br label %if.end48

if.end48:                                         ; preds = %if.then28, %if.end23.if.end48_crit_edge
  %new_lcr.1 = phi i8 [ 0, %if.end23.if.end48_crit_edge ], [ %55, %if.then28 ]
  %56 = trunc i32 %52 to i8
  %57 = lshr i8 %56, 4
  %58 = and i8 %57, 4
  %59 = or i8 %new_lcr.1, %58
  %and60 = lshr i32 %52, 4
  %60 = and i32 %and60, 3
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %60, label %if.end57.unreachabledefault [
    i32 0, label %if.end48.sw.epilog_crit_edge
    i32 1, label %sw.bb64
    i32 2, label %sw.bb68
    i32 3, label %sw.bb72
  ]

if.end48.sw.epilog_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %62 = or i8 %59, 1
  br label %sw.epilog

sw.bb68:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %63 = or i8 %59, 2
  br label %sw.epilog

if.end57.unreachabledefault:                      ; preds = %if.end48
  unreachable

sw.bb72:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %64 = or i8 %59, 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb72, %sw.bb68, %sw.bb64, %if.end48.sw.epilog_crit_edge
  %new_lcr.3 = phi i8 [ %64, %sw.bb72 ], [ %63, %sw.bb68 ], [ %62, %sw.bb64 ], [ %59, %if.end48.sw.epilog_crit_edge ]
  call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #6
  %shadow_lcr = getelementptr inbounds %struct.f81232_private, ptr %1, i32 0, i32 3
  %65 = ptrtoint ptr %shadow_lcr to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %shadow_lcr, align 2
  %67 = and i8 %66, 64
  %or79124 = or i8 %67, %new_lcr.3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %68 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %or79124, ptr %val.addr.i, align 1
  %69 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %port, align 8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %call.i127 = call i32 @usb_control_msg_send(ptr noundef %72, i8 noundef zeroext 0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 291, i16 noundef zeroext 0, ptr noundef nonnull %val.addr.i, i16 noundef zeroext 1, i32 noundef 5000, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127)
  %tobool.not.i128 = icmp eq i32 %call.i127, 0
  br i1 %tobool.not.i128, label %f81232_set_register.exit, label %do.end.i129

do.end.i129:                                      ; preds = %sw.epilog
  %dev2.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.25, i32 noundef %call.i127) #9
  %73 = zext i32 %call.i127 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %call.i127, label %sw.default.i.i [
    i32 -95, label %do.end.i129.do.end_crit_edge
    i32 -12, label %do.end.i129.do.end_crit_edge165
    i32 -19, label %do.end.i129.do.end_crit_edge166
  ]

do.end.i129.do.end_crit_edge166:                  ; preds = %do.end.i129
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end.i129.do.end_crit_edge165:                  ; preds = %do.end.i129
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end.i129.do.end_crit_edge:                     ; preds = %do.end.i129
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

sw.default.i.i:                                   ; preds = %do.end.i129
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

f81232_set_register.exit:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  br label %if.end84

do.end:                                           ; preds = %sw.default.i.i, %do.end.i129.do.end_crit_edge, %do.end.i129.do.end_crit_edge165, %do.end.i129.do.end_crit_edge166
  %status.0.i.ph = phi i32 [ %call.i127, %do.end.i129.do.end_crit_edge ], [ %call.i127, %do.end.i129.do.end_crit_edge165 ], [ %call.i127, %do.end.i129.do.end_crit_edge166 ], [ -5, %sw.default.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %status.0.i.ph) #9
  br label %if.end84

if.end84:                                         ; preds = %do.end, %f81232_set_register.exit
  %74 = ptrtoint ptr %shadow_lcr to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %or79124, ptr %shadow_lcr, align 2
  call void @mutex_unlock(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f81232_break_ctl(ptr nocapture noundef readonly %tty, i32 noundef %break_state) #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
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
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %break_state)
  %tobool.not = icmp eq i32 %break_state, 0
  %shadow_lcr2 = getelementptr inbounds %struct.f81232_private, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %shadow_lcr2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shadow_lcr2, align 2
  %6 = and i8 %5, -65
  %masksel = select i1 %tobool.not, i8 0, i8 64
  %.sink = or i8 %6, %masksel
  store i8 %.sink, ptr %shadow_lcr2, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %7 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %.sink, ptr %val.addr.i, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call.i = call i32 @usb_control_msg_send(ptr noundef %11, i8 noundef zeroext 0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 291, i16 noundef zeroext 0, ptr noundef nonnull %val.addr.i, i16 noundef zeroext 1, i32 noundef 5000, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %f81232_set_register.exit, label %do.end.i

do.end.i:                                         ; preds = %entry
  %dev2.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.25, i32 noundef %call.i) #9
  %12 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %call.i, label %sw.default.i.i [
    i32 -95, label %do.end.i.do.end_crit_edge
    i32 -12, label %do.end.i.do.end_crit_edge21
    i32 -19, label %do.end.i.do.end_crit_edge22
  ]

do.end.i.do.end_crit_edge22:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end.i.do.end_crit_edge21:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end.i.do.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

sw.default.i.i:                                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

f81232_set_register.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  br label %if.end9

do.end:                                           ; preds = %sw.default.i.i, %do.end.i.do.end_crit_edge, %do.end.i.do.end_crit_edge21, %do.end.i.do.end_crit_edge22
  %status.0.i.ph = phi i32 [ %call.i, %do.end.i.do.end_crit_edge ], [ %call.i, %do.end.i.do.end_crit_edge21 ], [ %call.i, %do.end.i.do.end_crit_edge22 ], [ -5, %sw.default.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.48, i32 noundef %status.0.i.ph) #9
  br label %if.end9

if.end9:                                          ; preds = %do.end, %f81232_set_register.exit
  call void @mutex_unlock(ptr noundef %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @f81232_tx_empty(ptr noundef %port) #2 align 64 {
entry:
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #6
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp, align 1, !annotation !192
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call.i = call i32 @usb_control_msg_recv(ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext -96, i8 noundef zeroext -64, i16 noundef zeroext 293, i16 noundef zeroext 0, ptr noundef nonnull %tmp, i16 noundef zeroext 1, i32 noundef 5000, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev2.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %call.i) #9
  br label %if.end3

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tmp, align 1
  %7 = and i8 %6, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not.not = icmp eq i8 %7, 0
  br i1 %cmp.not.not, label %if.then.cleanup_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %do.end.i
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end3 ], [ false, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #6
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f81232_tiocmget(ptr nocapture noundef readonly %tty) #2 align 64 {
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
  tail call fastcc void @f81232_read_msr(ptr noundef %1)
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #6
  %modem_control = getelementptr inbounds %struct.f81232_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %modem_control to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %modem_control, align 4
  %modem_status = getelementptr inbounds %struct.f81232_private, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %modem_status to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %modem_status, align 1
  tail call void @mutex_unlock(ptr noundef %3) #6
  %conv = zext i8 %5 to i32
  %and = shl nuw nsw i32 %conv, 1
  %or = and i32 %and, 6
  %conv6 = zext i8 %7 to i32
  %and7 = shl nuw nsw i32 %conv6, 1
  %8 = and i32 %and7, 32
  %or10 = or i32 %8, %or
  %and12 = lshr i32 %conv6, 1
  %9 = and i32 %and12, 64
  %or15 = or i32 %or10, %9
  %10 = and i32 %and7, 128
  %or20 = or i32 %or15, %10
  %and22 = shl nuw nsw i32 %conv6, 3
  %11 = and i32 %and22, 256
  %or25 = or i32 %or20, %11
  ret i32 %or25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f81232_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %call = tail call fastcc i32 @f81232_set_mctrl(ptr noundef %1, i32 noundef %set, i32 noundef %clear)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_tiocmiwait(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f81232_dtr_rts(ptr noundef %port, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call fastcc i32 @f81232_set_mctrl(ptr noundef %port, i32 noundef 6, i32 noundef 0)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call fastcc i32 @f81232_set_mctrl(ptr noundef %port, i32 noundef 0, i32 noundef 6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f81232_carrier_raised(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #6
  %modem_status = getelementptr inbounds %struct.f81232_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %modem_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %modem_status, align 1
  tail call void @mutex_unlock(ptr noundef %1) #6
  %.lobit = lshr i8 %3, 7
  %4 = zext i8 %.lobit to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f81232_read_int_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %3, label %do.body5 [
    i32 0, label %sw.epilog
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge56
    i32 -108, label %entry.do.body_crit_edge57
  ]

entry.do.body_crit_edge57:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.do.body_crit_edge56:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge56, %entry.do.body_crit_edge57
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f81232_read_int_callback.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@f81232_read_int_callback, %if.then)) #6
          to label %cleanup [label %if.then], !srcloc !193

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @f81232_read_int_callback.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, i32 noundef %3) #6
  br label %cleanup

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f81232_read_int_callback.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@f81232_read_int_callback, %if.then17)) #6
          to label %exit [label %if.then17], !srcloc !193

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  %dev18 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @f81232_read_int_callback.__UNIQUE_ID_ddebug242, ptr noundef %dev18, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50, i32 noundef %3) #6
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
  %dev22 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@f81232_read_int_callback, %if.then.i)) #6
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !193

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev22, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.50, i32 noundef %6, i32 noundef %6, ptr noundef %8) #6
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %sw.epilog
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %9 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %usb_serial_debug_data.exit.exit_crit_edge, label %if.end.i

usb_serial_debug_data.exit.exit_crit_edge:        ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end.i:                                         ; preds = %usb_serial_debug_data.exit
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %8, align 1
  %13 = and i8 %12, 7
  %and.i = zext i8 %13 to i32
  %14 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %and.i, label %if.end.i.exit_crit_edge [
    i32 0, label %do.body.i
    i32 6, label %do.body11.i
  ]

if.end.i.exit_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

do.body.i:                                        ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f81232_update_line_status.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@f81232_read_int_callback, %if.then5.i)) #6
          to label %do.end.i [label %if.then5.i], !srcloc !193

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %8, align 1
  %conv7.i = zext i8 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @f81232_update_line_status.__UNIQUE_ID_ddebug239, ptr noundef %dev22, ptr noundef nonnull @.str.58, i32 noundef %conv7.i) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then5.i, %do.body.i
  %interrupt_work.i = getelementptr inbounds %struct.f81232_private, ptr %10, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %17 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %interrupt_work.i) #6
  br label %exit

do.body11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f81232_update_line_status.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@f81232_read_int_callback, %if.then23.i)) #6
          to label %exit [label %if.then23.i], !srcloc !193

if.then23.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %8, align 1
  %conv26.i = zext i8 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @f81232_update_line_status.__UNIQUE_ID_ddebug240, ptr noundef %dev22, ptr noundef nonnull @.str.59, i32 noundef %conv26.i) #6
  br label %exit

exit:                                             ; preds = %if.then23.i, %do.body11.i, %do.end.i, %if.end.i.exit_crit_edge, %usb_serial_debug_data.exit.exit_crit_edge, %if.then17, %do.body5
  %call25 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %exit.cleanup_crit_edge, label %do.end30

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end30:                                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev31 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %20 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev31, align 4
  %dev32 = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.50, i32 noundef %call25) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %exit.cleanup_crit_edge, %if.then, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f81232_process_read_urb(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp ugt i32 %5, 1
  %rem = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp336.not = icmp eq i32 %7, 0
  br i1 %cmp336.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sysrq = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 31
  %port12 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  %tail.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.037 = phi i32 [ 0, %for.body.lr.ph ], [ %add16, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %3, i32 %i.037
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %call = tail call fastcc zeroext i8 @f81232_handle_lsr(ptr noundef %1, i8 noundef zeroext %9)
  %10 = ptrtoint ptr %sysrq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sysrq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  %.pre = or i32 %i.037, 1
  br i1 %tobool4.not, label %for.body.if.end11_crit_edge, label %if.then5

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then5:                                         ; preds = %for.body
  %arrayidx6 = getelementptr i8, ptr %3, i32 %.pre
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx6, align 1
  %conv = zext i8 %13 to i32
  %call7 = tail call i32 @usb_serial_handle_sysrq_char(ptr noundef %1, i32 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then5.if.end11_crit_edge, label %if.then5.for.inc_crit_edge

if.then5.for.inc_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end11:                                         ; preds = %if.then5.if.end11_crit_edge, %for.body.if.end11_crit_edge
  %arrayidx14 = getelementptr i8, ptr %3, i32 %.pre
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx14, align 1
  %16 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i, align 4
  %flags.i = getelementptr inbounds %struct.tty_buffer, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %cmp.i = icmp eq i8 %call, 0
  %20 = or i1 %cmp.i, %tobool.not.i
  br i1 %20, label %land.lhs.true.i, label %if.end11.if.end12.i_crit_edge

if.end11.if.end12.i_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.end11
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %17, i32 0, i32 1
  %21 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.tty_buffer, ptr %17, i32 0, i32 2
  %23 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp3.i = icmp slt i32 %22, %24
  br i1 %cmp3.i, label %if.then.i, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then.i:                                        ; preds = %land.lhs.true.i
  br i1 %tobool.not.i, label %if.then8.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %17, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i.i.i, i32 %22
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %24
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %call, ptr %add.ptr.i.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then8.i, %if.then.i.if.end.i_crit_edge
  %26 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %27, 1
  store i32 %inc.i, ptr %used.i, align 4
  %data.i.i = getelementptr inbounds %struct.tty_buffer, ptr %17, i32 0, i32 6
  %add.ptr.i1.i = getelementptr i8, ptr %data.i.i, i32 %27
  %28 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %15, ptr %add.ptr.i1.i, align 1
  br label %for.inc

if.end12.i:                                       ; preds = %land.lhs.true.i.if.end12.i_crit_edge, %if.end11.if.end12.i_crit_edge
  %call13.i = tail call i32 @__tty_insert_flip_char(ptr noundef %port12, i8 noundef zeroext %15, i8 noundef zeroext %call) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end12.i, %if.end.i, %if.then5.for.inc_crit_edge
  %add16 = add i32 %i.037, 2
  %29 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %actual_length, align 4
  %cmp3 = icmp ult i32 %add16, %30
  br i1 %cmp3, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %port17 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  tail call void @tty_flip_buffer_push(ptr noundef %port17) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f81232_interrupt_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  tail call fastcc void @f81232_read_msr(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f81232_lsr_worker(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #6
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp, align 1, !annotation !192
  %port2 = getelementptr i8, ptr %work, i32 88
  %1 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port2, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call.i = call i32 @usb_control_msg_recv(ptr noundef %6, i8 noundef zeroext 0, i8 noundef zeroext -96, i8 noundef zeroext -64, i16 noundef zeroext 293, i16 noundef zeroext 0, ptr noundef nonnull %tmp, i16 noundef zeroext 1, i32 noundef 5000, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %do.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end.i:                                         ; preds = %entry
  %dev2.i = getelementptr inbounds %struct.usb_serial_port, ptr %2, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %call.i) #9
  %7 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %call.i, label %sw.default.i.i [
    i32 -95, label %do.end.i.do.end_crit_edge
    i32 -12, label %do.end.i.do.end_crit_edge8
    i32 -19, label %do.end.i.do.end_crit_edge9
  ]

do.end.i.do.end_crit_edge9:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end.i.do.end_crit_edge8:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end.i.do.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

sw.default.i.i:                                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %sw.default.i.i, %do.end.i.do.end_crit_edge, %do.end.i.do.end_crit_edge8, %do.end.i.do.end_crit_edge9
  %status.0.i.ph = phi i32 [ %call.i, %do.end.i.do.end_crit_edge ], [ %call.i, %do.end.i.do.end_crit_edge8 ], [ %call.i, %do.end.i.do.end_crit_edge9 ], [ -5, %sw.default.i.i ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2.i, ptr noundef nonnull @.str.13, i32 noundef %status.0.i.ph) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @f81232_read_msr(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  %current_msr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %current_msr) #6
  %0 = ptrtoint ptr %current_msr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %current_msr, align 1, !annotation !192
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %2, i32 noundef 0) #6
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call.i = call i32 @usb_control_msg_recv(ptr noundef %6, i8 noundef zeroext 0, i8 noundef zeroext -96, i8 noundef zeroext -64, i16 noundef zeroext 294, i16 noundef zeroext 0, ptr noundef nonnull %current_msr, i16 noundef zeroext 1, i32 noundef 5000, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %do.end.i

do.end.i:                                         ; preds = %entry
  %dev2.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %call.i) #9
  %7 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %call.i, label %sw.default.i.i [
    i32 -95, label %do.end.i.do.end_crit_edge
    i32 -12, label %do.end.i.do.end_crit_edge64
    i32 -19, label %do.end.i.do.end_crit_edge65
  ]

do.end.i.do.end_crit_edge65:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end.i.do.end_crit_edge64:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end.i.do.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

sw.default.i.i:                                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %sw.default.i.i, %do.end.i.do.end_crit_edge, %do.end.i.do.end_crit_edge64, %do.end.i.do.end_crit_edge65
  %status.0.i.ph = phi i32 [ %call.i, %do.end.i.do.end_crit_edge ], [ %call.i, %do.end.i.do.end_crit_edge64 ], [ %call.i, %do.end.i.do.end_crit_edge65 ], [ -5, %sw.default.i.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %status.0.i.ph) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %current_msr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %current_msr, align 1
  %10 = and i8 %9, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not = icmp eq i8 %10, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %modem_status = getelementptr inbounds %struct.f81232_private, ptr %2, i32 0, i32 2
  %11 = ptrtoint ptr %modem_status to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %9, ptr %modem_status, align 1
  %12 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool9.not = icmp eq i8 %12, 0
  br i1 %tobool9.not, label %if.end6.if.end11_crit_edge, label %if.then10

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %icount = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27
  %13 = ptrtoint ptr %icount to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %icount, align 8
  %inc = add i32 %14, 1
  store i32 %inc, ptr %icount, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end6.if.end11_crit_edge
  %15 = and i8 %9, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool14.not = icmp eq i8 %15, 0
  br i1 %tobool14.not, label %if.end11.if.end18_crit_edge, label %if.then15

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %dsr = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 1
  %16 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dsr, align 4
  %inc17 = add i32 %17, 1
  store i32 %inc17, ptr %dsr, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end11.if.end18_crit_edge
  %18 = and i8 %9, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool21.not = icmp eq i8 %18, 0
  br i1 %tobool21.not, label %if.end18.if.end25_crit_edge, label %if.then22

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %rng = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 2
  %19 = ptrtoint ptr %rng to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rng, align 8
  %inc24 = add i32 %20, 1
  store i32 %inc24, ptr %rng, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end18.if.end25_crit_edge
  %21 = and i8 %9, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool28.not = icmp eq i8 %21, 0
  br i1 %tobool28.not, label %if.end25.if.end39_crit_edge, label %if.then29

if.end25.if.end39_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then29:                                        ; preds = %if.end25
  %dcd = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 3
  %22 = ptrtoint ptr %dcd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dcd, align 4
  %inc31 = add i32 %23, 1
  store i32 %inc31, ptr %dcd, align 4
  %port32 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1
  %call33 = call ptr @tty_port_tty_get(ptr noundef %port32) #6
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.then29.if.end39_crit_edge, label %if.then35

if.then29.if.end39_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then35:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %current_msr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %current_msr, align 1
  %26 = and i8 %25, -128
  %and37 = zext i8 %26 to i32
  call void @usb_serial_handle_dcd_change(ptr noundef %port, ptr noundef nonnull %call33, i32 noundef %and37) #6
  call void @tty_kref_put(ptr noundef nonnull %call33) #6
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.then29.if.end39_crit_edge, %if.end25.if.end39_crit_edge
  %delta_msr_wait = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1, i32 9
  call void @__wake_up(ptr noundef %delta_msr_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.end.cleanup_crit_edge, %do.end
  call void @mutex_unlock(ptr noundef %2) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %current_msr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_handle_dcd_change(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg_recv(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_generic_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_hw_change(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @f81232_set_mctrl(ptr noundef %port, i32 noundef %set, i32 noundef %clear) unnamed_addr #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %or = or i32 %clear, %set
  %and = and i32 %or, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %neg = xor i32 %set, -1
  %and1 = and i32 %neg, %clear
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #6
  %modem_control = getelementptr inbounds %struct.f81232_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %modem_control to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %modem_control, align 4
  %4 = or i8 %3, 8
  %and4 = and i32 %and1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  %5 = and i8 %4, -2
  %spec.select = select i1 %tobool.not, i8 %4, i8 %5
  %and10 = and i32 %and1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %6 = and i8 %spec.select, -3
  %val.1 = select i1 %tobool11.not, i8 %spec.select, i8 %6
  %7 = trunc i32 %set to i8
  %8 = lshr i8 %7, 1
  %9 = and i8 %8, 3
  %10 = or i8 %9, %val.1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f81232_set_mctrl.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@f81232_set_mctrl, %if.then35)) #6
          to label %do.end [label %if.then35], !srcloc !193

if.then35:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv36 = zext i8 %10 to i32
  %11 = ptrtoint ptr %modem_control to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %modem_control, align 4
  %conv38 = zext i8 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @f81232_set_mctrl.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef %conv36, i32 noundef %conv38) #6
  br label %do.end

do.end:                                           ; preds = %if.then35, %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %13 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %10, ptr %val.addr.i, align 1
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call.i = call i32 @usb_control_msg_send(ptr noundef %17, i8 noundef zeroext 0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 292, i16 noundef zeroext 0, ptr noundef nonnull %val.addr.i, i16 noundef zeroext 1, i32 noundef 5000, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end48, label %do.end.i

do.end.i:                                         ; preds = %do.end
  %dev2.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.25, i32 noundef %call.i) #9
  %18 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %call.i, label %sw.default.i.i [
    i32 -95, label %do.end.i.do.end45_crit_edge
    i32 -12, label %do.end.i.do.end45_crit_edge78
    i32 -19, label %do.end.i.do.end45_crit_edge79
  ]

do.end.i.do.end45_crit_edge79:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end45

do.end.i.do.end45_crit_edge78:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end45

do.end.i.do.end45_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end45

sw.default.i.i:                                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end45

do.end45:                                         ; preds = %sw.default.i.i, %do.end.i.do.end45_crit_edge, %do.end.i.do.end45_crit_edge78, %do.end.i.do.end45_crit_edge79
  %status.0.i.ph = phi i32 [ %call.i, %do.end.i.do.end45_crit_edge ], [ %call.i, %do.end.i.do.end45_crit_edge78 ], [ %call.i, %do.end.i.do.end45_crit_edge79 ], [ -5, %sw.default.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29) #9
  br label %cleanup.sink.split

if.end48:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  %19 = ptrtoint ptr %modem_control to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %10, ptr %modem_control, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end48, %do.end45
  %retval.0.ph = phi i32 [ 0, %if.end48 ], [ %status.0.i.ph, %do.end45 ]
  call void @mutex_unlock(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @f81232_set_mask_register(ptr noundef %port, i16 noundef zeroext %reg, i8 noundef zeroext %mask, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #6
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp, align 1, !annotation !192
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call.i = call i32 @usb_control_msg_recv(ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext -96, i8 noundef zeroext -64, i16 noundef zeroext %reg, i16 noundef zeroext 0, ptr noundef nonnull %tmp, i16 noundef zeroext 1, i32 noundef 5000, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %do.end.i

do.end.i:                                         ; preds = %entry
  %dev2.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %call.i) #9
  %5 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %call.i, label %sw.default.i.i [
    i32 -95, label %do.end.i.cleanup_crit_edge
    i32 -12, label %do.end.i.cleanup_crit_edge21
    i32 -19, label %do.end.i.cleanup_crit_edge22
  ]

do.end.i.cleanup_crit_edge22:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i.cleanup_crit_edge21:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.default.i.i:                                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tmp, align 1
  %neg = xor i8 %mask, -1
  %and = and i8 %7, %neg
  %and412 = and i8 %val, %mask
  %or = or i8 %and, %and412
  store i8 %or, ptr %tmp, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %8 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %or, ptr %val.addr.i, align 1
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call.i13 = call i32 @usb_control_msg_send(ptr noundef %12, i8 noundef zeroext 0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %reg, i16 noundef zeroext 0, ptr noundef nonnull %val.addr.i, i16 noundef zeroext 1, i32 noundef 5000, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %tobool.not.i14 = icmp eq i32 %call.i13, 0
  br i1 %tobool.not.i14, label %if.end.f81232_set_register.exit_crit_edge, label %do.end.i16

if.end.f81232_set_register.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %f81232_set_register.exit

do.end.i16:                                       ; preds = %if.end
  %dev2.i15 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i15, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.25, i32 noundef %call.i13) #9
  %13 = zext i32 %call.i13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %call.i13, label %sw.default.i.i17 [
    i32 -95, label %do.end.i16.f81232_set_register.exit_crit_edge
    i32 -12, label %do.end.i16.f81232_set_register.exit_crit_edge23
    i32 -19, label %do.end.i16.f81232_set_register.exit_crit_edge24
  ]

do.end.i16.f81232_set_register.exit_crit_edge24:  ; preds = %do.end.i16
  call void @__sanitizer_cov_trace_pc() #8
  br label %f81232_set_register.exit

do.end.i16.f81232_set_register.exit_crit_edge23:  ; preds = %do.end.i16
  call void @__sanitizer_cov_trace_pc() #8
  br label %f81232_set_register.exit

do.end.i16.f81232_set_register.exit_crit_edge:    ; preds = %do.end.i16
  call void @__sanitizer_cov_trace_pc() #8
  br label %f81232_set_register.exit

sw.default.i.i17:                                 ; preds = %do.end.i16
  call void @__sanitizer_cov_trace_pc() #8
  br label %f81232_set_register.exit

f81232_set_register.exit:                         ; preds = %sw.default.i.i17, %do.end.i16.f81232_set_register.exit_crit_edge, %do.end.i16.f81232_set_register.exit_crit_edge23, %do.end.i16.f81232_set_register.exit_crit_edge24, %if.end.f81232_set_register.exit_crit_edge
  %status.0.i18 = phi i32 [ 0, %if.end.f81232_set_register.exit_crit_edge ], [ -5, %sw.default.i.i17 ], [ %call.i13, %do.end.i16.f81232_set_register.exit_crit_edge ], [ %call.i13, %do.end.i16.f81232_set_register.exit_crit_edge23 ], [ %call.i13, %do.end.i16.f81232_set_register.exit_crit_edge24 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  br label %cleanup

cleanup:                                          ; preds = %f81232_set_register.exit, %sw.default.i.i, %do.end.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge21, %do.end.i.cleanup_crit_edge22
  %retval.0 = phi i32 [ %status.0.i18, %f81232_set_register.exit ], [ %call.i, %do.end.i.cleanup_crit_edge ], [ %call.i, %do.end.i.cleanup_crit_edge21 ], [ %call.i, %do.end.i.cleanup_crit_edge22 ], [ -5, %sw.default.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @f81232_handle_lsr(ptr noundef %port, i8 noundef zeroext %lsr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %conv = zext i8 %lsr to i32
  %and = and i32 %conv, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %brk = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 9
  %2 = ptrtoint ptr %brk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %brk, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %brk, align 4
  %call5 = tail call i32 @usb_serial_handle_break(ptr noundef %port) #6
  br label %if.end21

if.else:                                          ; preds = %if.end
  %and7 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else12, label %if.then9

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %parity = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 7
  %4 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %parity, align 4
  %inc11 = add i32 %5, 1
  store i32 %inc11, ptr %parity, align 4
  br label %if.end21

if.else12:                                        ; preds = %if.else
  %and14 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else12.if.end21_crit_edge, label %if.then16

if.else12.if.end21_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then16:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #8
  %frame = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 6
  %6 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame, align 8
  %inc18 = add i32 %7, 1
  store i32 %inc18, ptr %frame, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.else12.if.end21_crit_edge, %if.then9, %if.then4
  %tty_flag.0 = phi i8 [ 1, %if.then4 ], [ 3, %if.then9 ], [ 2, %if.then16 ], [ 0, %if.else12.if.end21_crit_edge ]
  %and23 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end21.cleanup_crit_edge, label %if.then25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then25:                                        ; preds = %if.end21
  %overrun = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 8
  %8 = ptrtoint ptr %overrun to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %overrun, align 8
  %inc27 = add i32 %9, 1
  store i32 %inc27, ptr %overrun, align 8
  %lsr_work = getelementptr inbounds %struct.f81232_private, ptr %1, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %lsr_work) #6
  %port29 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1
  %tail.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1, i32 0, i32 8
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
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then25.if.end12.i_crit_edge

if.then25.if.end12.i_crit_edge:                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.then25
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
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
  br label %cleanup

if.end12.i:                                       ; preds = %land.lhs.true.i.if.end12.i_crit_edge, %if.then25.if.end12.i_crit_edge
  %call13.i = tail call i32 @__tty_insert_flip_char(ptr noundef %port29, i8 noundef zeroext 0, i8 noundef zeroext 4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12.i, %if.end.i, %if.end21.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %entry.cleanup_crit_edge ], [ %tty_flag.0, %if.end21.cleanup_crit_edge ], [ %tty_flag.0, %if.end.i ], [ %tty_flag.0, %if.end12.i ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_handle_sysrq_char(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_handle_break(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f81534a_port_probe(ptr noundef %port) #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %0 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 64, ptr %val.addr.i, align 1
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call.i = call i32 @usb_control_msg_send(ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 270, i16 noundef zeroext 0, ptr noundef nonnull %val.addr.i, i16 noundef zeroext 1, i32 noundef 5000, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %do.end.i

do.end.i:                                         ; preds = %entry
  %dev2.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.25, i32 noundef %call.i) #9
  %5 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %call.i, label %sw.default.i.i [
    i32 -95, label %do.end.i.f81232_set_register.exit.thread_crit_edge
    i32 -12, label %do.end.i.f81232_set_register.exit.thread_crit_edge6
    i32 -19, label %do.end.i.f81232_set_register.exit.thread_crit_edge7
  ]

do.end.i.f81232_set_register.exit.thread_crit_edge7: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %f81232_set_register.exit.thread

do.end.i.f81232_set_register.exit.thread_crit_edge6: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %f81232_set_register.exit.thread

do.end.i.f81232_set_register.exit.thread_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %f81232_set_register.exit.thread

sw.default.i.i:                                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %f81232_set_register.exit.thread

f81232_set_register.exit.thread:                  ; preds = %sw.default.i.i, %do.end.i.f81232_set_register.exit.thread_crit_edge, %do.end.i.f81232_set_register.exit.thread_crit_edge6, %do.end.i.f81232_set_register.exit.thread_crit_edge7
  %status.0.i.ph = phi i32 [ %call.i, %do.end.i.f81232_set_register.exit.thread_crit_edge ], [ %call.i, %do.end.i.f81232_set_register.exit.thread_crit_edge6 ], [ %call.i, %do.end.i.f81232_set_register.exit.thread_crit_edge7 ], [ -5, %sw.default.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  %call1 = call i32 @f81232_port_probe(ptr noundef %port)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %f81232_set_register.exit.thread
  %retval.0 = phi i32 [ %call1, %if.end ], [ %status.0.i.ph, %f81232_set_register.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f81534a_open(ptr noundef %tty, ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @f81232_set_mask_register(ptr noundef %port, i16 noundef zeroext 263, i8 noundef zeroext 15, i8 noundef zeroext 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61, i32 noundef %call) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @f81232_open(ptr noundef %tty, ptr noundef %port)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f81534a_process_read_urb(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp ult i32 %5, 3
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63, i32 noundef %5) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %3, align 1
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp3.not = icmp eq i32 %5, %conv
  br i1 %cmp3.not, label %if.end12, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev9 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.66, i32 noundef %5, i32 noundef %conv) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %sub = add nsw i32 %5, -1
  %arrayidx14 = getelementptr i8, ptr %3, i32 %sub
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx14, align 1
  %call = tail call fastcc zeroext i8 @f81232_handle_lsr(ptr noundef %1, i8 noundef zeroext %9)
  %sysrq = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 31
  %10 = ptrtoint ptr %sysrq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sysrq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  %port29 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  br i1 %tobool.not, label %if.else, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end12
  %tail.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %cmp.i = icmp eq i8 %call, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.066 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx20 = getelementptr i8, ptr %3, i32 %i.066
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %13 to i32
  %call22 = tail call i32 @usb_serial_handle_sysrq_char(ptr noundef %1, i32 noundef %conv21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then24:                                        ; preds = %for.body
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx20, align 1
  %16 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i, align 4
  %flags.i = getelementptr inbounds %struct.tty_buffer, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %20 = or i1 %cmp.i, %tobool.not.i
  br i1 %20, label %land.lhs.true.i, label %if.then24.if.end12.i_crit_edge

if.then24.if.end12.i_crit_edge:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.then24
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %17, i32 0, i32 1
  %21 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.tty_buffer, ptr %17, i32 0, i32 2
  %23 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp3.i = icmp slt i32 %22, %24
  br i1 %cmp3.i, label %if.then.i, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then.i:                                        ; preds = %land.lhs.true.i
  br i1 %tobool.not.i, label %if.then8.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %17, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i.i.i, i32 %22
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %24
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %call, ptr %add.ptr.i.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then8.i, %if.then.i.if.end.i_crit_edge
  %26 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %27, 1
  store i32 %inc.i, ptr %used.i, align 4
  %data.i.i = getelementptr inbounds %struct.tty_buffer, ptr %17, i32 0, i32 6
  %add.ptr.i1.i = getelementptr i8, ptr %data.i.i, i32 %27
  %28 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %15, ptr %add.ptr.i1.i, align 1
  br label %for.inc

if.end12.i:                                       ; preds = %land.lhs.true.i.if.end12.i_crit_edge, %if.then24.if.end12.i_crit_edge
  %call13.i = tail call i32 @__tty_insert_flip_char(ptr noundef %port29, i8 noundef zeroext %15, i8 noundef zeroext %call) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end12.i, %if.end.i, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.066, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.inc.if.end34_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.if.end34_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx30 = getelementptr i8, ptr %3, i32 1
  %sub32 = add nsw i32 %5, -2
  %call33 = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port29, ptr noundef %arrayidx30, i8 noundef zeroext %call, i32 noundef %sub32) #6
  br label %if.end34

if.end34:                                         ; preds = %if.else, %for.inc.if.end34_crit_edge
  %port35 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  tail call void @tty_flip_buffer_push(ptr noundef %port35) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %do.end8, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f81534a_ctrl_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @f81534a_ctrl_enable_all_ports(ptr noundef %intf, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f81534a_ctrl_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @f81534a_ctrl_enable_all_ports(ptr noundef %intf, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f81534a_ctrl_resume(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @f81534a_ctrl_enable_all_ports(ptr noundef %intf, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @f81534a_ctrl_enable_all_ports(ptr noundef %intf, i1 noundef zeroext %en) unnamed_addr #2 align 64 {
entry:
  %enable = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %enable) #6
  %0 = ptrtoint ptr %enable to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %enable, align 2
  br i1 %en, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %enable, align 2
  %arrayidx1 = getelementptr inbounds [2 x i8], ptr %enable, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -113, ptr %arrayidx1, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 -128
  %call1.i = call i32 @usb_control_msg_send(ptr noundef %add.ptr.i.i, i8 noundef zeroext 0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 278, i16 noundef zeroext 0, ptr noundef nonnull %enable, i16 noundef zeroext 2, i32 noundef 5000, i32 noundef 3264) #6
  %5 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %call1.i, label %while.cond.i [
    i32 0, label %if.end.if.end4_crit_edge
    i32 -95, label %if.end.do.end_crit_edge
    i32 -12, label %if.end.do.end_crit_edge11
    i32 -19, label %if.end.do.end_crit_edge12
  ]

if.end.do.end_crit_edge12:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.do.end_crit_edge11:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

while.cond.i:                                     ; preds = %if.end
  %call1.1.i = call i32 @usb_control_msg_send(ptr noundef %add.ptr.i.i, i8 noundef zeroext 0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 278, i16 noundef zeroext 0, ptr noundef nonnull %enable, i16 noundef zeroext 2, i32 noundef 5000, i32 noundef 3264) #6
  %6 = zext i32 %call1.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %call1.1.i, label %while.cond.1.i [
    i32 0, label %while.cond.i.if.end4_crit_edge
    i32 -95, label %while.cond.i.do.end_crit_edge
    i32 -12, label %while.cond.i.do.end_crit_edge13
    i32 -19, label %while.cond.i.do.end_crit_edge14
  ]

while.cond.i.do.end_crit_edge14:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

while.cond.i.do.end_crit_edge13:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

while.cond.i.do.end_crit_edge:                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

while.cond.i.if.end4_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

while.cond.1.i:                                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %while.cond.1.i, %while.cond.i.do.end_crit_edge, %while.cond.i.do.end_crit_edge13, %while.cond.i.do.end_crit_edge14, %if.end.do.end_crit_edge, %if.end.do.end_crit_edge11, %if.end.do.end_crit_edge12
  %status.1.ph.i = phi i32 [ -5, %while.cond.1.i ], [ %call1.1.i, %while.cond.i.do.end_crit_edge ], [ %call1.1.i, %while.cond.i.do.end_crit_edge13 ], [ %call1.1.i, %while.cond.i.do.end_crit_edge14 ], [ %call1.i, %if.end.do.end_crit_edge ], [ %call1.i, %if.end.do.end_crit_edge11 ], [ %call1.i, %if.end.do.end_crit_edge12 ]
  %dev8.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.71, i32 noundef 278, i32 noundef %status.1.ph.i) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.69, i32 noundef %status.1.ph.i) #9
  br label %if.end4

if.end4:                                          ; preds = %do.end, %while.cond.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %status.14.i10 = phi i32 [ %status.1.ph.i, %do.end ], [ %call1.1.i, %while.cond.i.if.end4_crit_edge ], [ %call1.i, %if.end.if.end4_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %enable) #6
  ret i32 %status.14.i10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_register_drivers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !24, !26, !27, !29, !30, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !115, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !147, !149, !151, !153, !154, !155, !156, !158, !159, !160, !161, !163, !164, !165, !167, !169, !171, !172, !173, !174, !176, !177, !178, !179, !181}
!llvm.module.flags = !{!183, !184, !185, !186, !187, !188, !189, !190}
!llvm.ident = !{!191}

!0 = !{ptr @__initcall__kmod_f81232__243_1068_f81232_init6, !1, !"__initcall__kmod_f81232__243_1068_f81232_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/f81232.c", i32 1068, i32 1}
!2 = !{ptr @__exitcall_f81232_exit, !3, !"__exitcall_f81232_exit", i1 false, i1 false}
!3 = !{!"../drivers/usb/serial/f81232.c", i32 1069, i32 1}
!4 = !{ptr @__UNIQUE_ID_description244, !5, !"__UNIQUE_ID_description244", i1 false, i1 false}
!5 = !{!"../drivers/usb/serial/f81232.c", i32 1071, i32 1}
!6 = !{ptr @__UNIQUE_ID_author245, !7, !"__UNIQUE_ID_author245", i1 false, i1 false}
!7 = !{!"../drivers/usb/serial/f81232.c", i32 1072, i32 1}
!8 = !{ptr @__UNIQUE_ID_author246, !9, !"__UNIQUE_ID_author246", i1 false, i1 false}
!9 = !{!"../drivers/usb/serial/f81232.c", i32 1073, i32 1}
!10 = !{ptr @__UNIQUE_ID_file247, !11, !"__UNIQUE_ID_file247", i1 false, i1 false}
!11 = !{!"../drivers/usb/serial/f81232.c", i32 1074, i32 1}
!12 = !{ptr @__UNIQUE_ID_license248, !11, !"__UNIQUE_ID_license248", i1 false, i1 false}
!13 = !{ptr @serial_drivers, !14, !"serial_drivers", i1 false, i1 false}
!14 = !{!"../drivers/usb/serial/f81232.c", i32 1029, i32 41}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/serial/f81232.c", i32 980, i32 12}
!17 = !{ptr @f81232_device, !18, !"f81232_device", i1 false, i1 false}
!18 = !{!"../drivers/usb/serial/f81232.c", i32 977, i32 33}
!19 = !{ptr @f81232_id_table, !20, !"f81232_id_table", i1 false, i1 false}
!20 = !{!"../drivers/usb/serial/f81232.c", i32 42, i32 35}
!21 = !{ptr @f81232_port_probe.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/usb/serial/f81232.c", i32 917, i32 2}
!23 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @f81232_port_probe.__key.2, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/usb/serial/f81232.c", i32 918, i32 2}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @f81232_port_probe.__key.4, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/usb/serial/f81232.c", i32 919, i32 2}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/serial/f81232.c", i32 211, i32 3}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @f81232_read_msr._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @f81232_read_msr._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/serial/f81232.c", i32 155, i32 3}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @f81232_get_register._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @f81232_get_register._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/serial/f81232.c", i32 830, i32 3}
!45 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @f81232_lsr_worker._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @f81232_lsr_worker._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/serial/f81232.c", i32 968, i32 4}
!51 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @f81232_resume._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @f81232_resume._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/serial/f81232.c", i32 723, i32 3}
!56 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @f81232_open._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @f81232_open._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/serial/f81232.c", i32 574, i32 3}
!61 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @f81232_port_enable._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @f81232_port_enable._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/serial/f81232.c", i32 583, i32 3}
!66 = !{ptr @f81232_port_enable._entry.22, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @f81232_port_enable._entry_ptr.24, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/serial/f81232.c", i32 178, i32 3}
!70 = !{ptr @f81232_set_register._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @f81232_set_register._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/serial/f81232.c", i32 597, i32 3}
!74 = !{ptr @f81232_port_disable._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @f81232_port_disable._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/serial/f81232.c", i32 667, i32 3}
!78 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @f81232_set_termios._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @f81232_set_termios._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/serial/f81232.c", i32 273, i32 2}
!83 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @f81232_set_mctrl.__UNIQUE_ID_ddebug238, !82, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/serial/f81232.c", i32 278, i32 3}
!87 = !{ptr @f81232_set_mctrl._entry, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @f81232_set_mctrl._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/serial/f81232.c", i32 518, i32 3}
!91 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @f81232_set_baudrate._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @f81232_set_baudrate._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/serial/f81232.c", i32 526, i32 3}
!96 = !{ptr @f81232_set_baudrate._entry.34, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @f81232_set_baudrate._entry_ptr.36, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/serial/f81232.c", i32 534, i32 3}
!100 = !{ptr @f81232_set_baudrate._entry.37, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @f81232_set_baudrate._entry_ptr.39, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/serial/f81232.c", i32 542, i32 3}
!104 = !{ptr @f81232_set_baudrate._entry.40, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @f81232_set_baudrate._entry_ptr.42, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/serial/f81232.c", i32 550, i32 3}
!108 = !{ptr @f81232_set_baudrate._entry.43, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @f81232_set_baudrate._entry_ptr.45, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @f81232_set_baudrate._entry.46, !111, !"_entry", i1 false, i1 false}
!111 = !{!"../drivers/usb/serial/f81232.c", i32 558, i32 3}
!112 = !{ptr @f81232_set_baudrate._entry_ptr.47, !111, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @baudrate_table, !114, !"baudrate_table", i1 false, i1 false}
!114 = !{!"../drivers/usb/serial/f81232.c", i32 127, i32 18}
!115 = !{ptr @clock_table, !116, !"clock_table", i1 false, i1 false}
!116 = !{!"../drivers/usb/serial/f81232.c", i32 128, i32 17}
!117 = !{ptr @.str.48, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/serial/f81232.c", i32 470, i32 3}
!119 = !{ptr @.str.49, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @f81232_break_ctl._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @f81232_break_ctl._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/serial/f81232.c", i32 330, i32 3}
!124 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @f81232_read_int_callback.__UNIQUE_ID_ddebug241, !123, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!126 = !{ptr @.str.52, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/serial/f81232.c", i32 334, i32 3}
!128 = !{ptr @f81232_read_int_callback.__UNIQUE_ID_ddebug242, !127, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!129 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/serial/f81232.c", i32 347, i32 3}
!131 = !{ptr @f81232_read_int_callback._entry, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @f81232_read_int_callback._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.54, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../include/linux/usb/serial.h", i32 393, i32 2}
!135 = !{ptr @.str.55, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.56, !134, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, !134, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!138 = !{ptr @.str.57, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/usb/serial/f81232.c", i32 300, i32 3}
!140 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @f81232_update_line_status.__UNIQUE_ID_ddebug239, !139, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!142 = !{ptr @.str.59, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/usb/serial/f81232.c", i32 309, i32 3}
!144 = !{ptr @f81232_update_line_status.__UNIQUE_ID_ddebug240, !143, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!145 = !{ptr @.str.60, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/serial/f81232.c", i32 1007, i32 12}
!147 = !{ptr @f81534a_device, !148, !"f81534a_device", i1 false, i1 false}
!148 = !{!"../drivers/usb/serial/f81232.c", i32 1004, i32 33}
!149 = !{ptr @f81534a_id_table, !150, !"f81534a_id_table", i1 false, i1 false}
!150 = !{!"../drivers/usb/serial/f81232.c", i32 47, i32 35}
!151 = !{ptr @.str.61, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/usb/serial/f81232.c", i32 748, i32 3}
!153 = !{ptr @.str.62, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @f81534a_open._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @f81534a_open._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.63, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/usb/serial/f81232.c", i32 423, i32 3}
!158 = !{ptr @.str.64, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @f81534a_process_read_urb._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @f81534a_process_read_urb._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.66, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/usb/serial/f81232.c", i32 430, i32 3}
!163 = !{ptr @f81534a_process_read_urb._entry.65, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @f81534a_process_read_urb._entry_ptr.67, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.68, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/usb/serial/f81232.c", i32 1036, i32 11}
!167 = !{ptr @f81534a_ctrl_driver, !168, !"f81534a_ctrl_driver", i1 false, i1 false}
!168 = !{!"../drivers/usb/serial/f81232.c", i32 1035, i32 26}
!169 = !{ptr @.str.69, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/usb/serial/f81232.c", i32 888, i32 3}
!171 = !{ptr @.str.70, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @f81534a_ctrl_enable_all_ports._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @f81534a_ctrl_enable_all_ports._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.71, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/usb/serial/f81232.c", i32 861, i32 3}
!176 = !{ptr @.str.72, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @f81534a_ctrl_set_register._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @f81534a_ctrl_set_register._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @f81534a_ctrl_id_table, !180, !"f81534a_ctrl_id_table", i1 false, i1 false}
!180 = !{!"../drivers/usb/serial/f81232.c", i32 52, i32 35}
!181 = !{ptr @combined_id_table, !182, !"combined_id_table", i1 false, i1 false}
!182 = !{!"../drivers/usb/serial/f81232.c", i32 57, i32 35}
!183 = !{i32 1, !"wchar_size", i32 2}
!184 = !{i32 1, !"min_enum_size", i32 4}
!185 = !{i32 8, !"branch-target-enforcement", i32 0}
!186 = !{i32 8, !"sign-return-address", i32 0}
!187 = !{i32 8, !"sign-return-address-all", i32 0}
!188 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!189 = !{i32 7, !"uwtable", i32 1}
!190 = !{i32 7, !"frame-pointer", i32 2}
!191 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!192 = !{!"auto-init"}
!193 = !{i64 2148715453, i64 2148715458, i64 2148715471, i64 2148715515, i64 2148715549, i64 2148715570}
