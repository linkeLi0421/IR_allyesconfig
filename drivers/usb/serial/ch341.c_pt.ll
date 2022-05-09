; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/ch341.c_pt.bc'
source_filename = "../drivers/usb/serial/ch341.c"
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
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ch341_private = type { %struct.spinlock, i32, i8, i8, i8, i32, i32 }
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
%struct.usb_serial = type { ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, [16 x ptr], %struct.kref, %struct.mutex, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@__initcall__kmod_ch341__258_842_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ch341_device, ptr null], [24 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file259 = internal constant [36 x i8] c"ch341.file=drivers/usb/serial/ch341\00", section ".modinfo", align 1
@__UNIQUE_ID_license260 = internal constant [21 x i8] c"ch341.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ch341\00", [26 x i8] zeroinitializer }, align 32
@id_table = internal constant { [7 x %struct.usb_device_id], [56 x i8] } { [7 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 6790, i16 21795, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6790, i16 29986, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6790, i16 29987, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8580, i16 87, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 17224, i16 21795, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -26234, i16 29987, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ch341_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr null, ptr @id_table, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 1, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ch341_port_probe, ptr @ch341_port_remove, ptr null, ptr null, ptr @ch341_reset_resume, ptr @ch341_open, ptr @ch341_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ch341_set_termios, ptr @ch341_break_ctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ch341_tiocmget, ptr @ch341_tiocmset, ptr @usb_serial_generic_tiocmiwait, ptr null, ptr @ch341_dtr_rts, ptr @ch341_carrier_raised, ptr null, ptr @ch341_read_int_callback, ptr null, ptr null, ptr null, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ch341-uart\00", [21 x i8] zeroinitializer }, align 32
@ch341_port_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ch341_configure.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ch341_configure\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/usb/serial/ch341.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Chip version: 0x%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@ch341_control_in.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.4, ptr @.str.7, i8 0, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ch341_control_in\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s - (%02x,%04x,%04x,%u)\0A\00", [38 x i8] zeroinitializer }, align 32
@ch341_control_in._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.4, i32 140, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to receive control message: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ch341_control_in._entry_ptr = internal global ptr @ch341_control_in._entry, section ".printk_index", align 4
@ch341_control_out.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.4, ptr @.str.12, i8 0, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ch341_control_out\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s - (%02x,%04x,%04x)\0A\00", [41 x i8] zeroinitializer }, align 32
@ch341_control_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.4, i32 120, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to send control message: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ch341_control_out._entry_ptr = internal global ptr @ch341_control_out._entry, section ".printk_index", align 4
@ch341_detect_quirks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 348, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"break control not supported, using simulated break\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ch341_detect_quirks\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ch341_detect_quirks._entry_ptr = internal global ptr @ch341_detect_quirks._entry, section ".printk_index", align 4
@ch341_detect_quirks._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.4, i32 352, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to read break control: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ch341_detect_quirks._entry_ptr.19 = internal global ptr @ch341_detect_quirks._entry.17, section ".printk_index", align 4
@ch341_detect_quirks.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.4, ptr @.str.20, i8 0, i8 89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"enabling quirk flags: 0x%02lx\0A\00", [33 x i8] zeroinitializer }, align 32
@ch341_reset_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 802, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to submit interrupt urb: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ch341_reset_resume\00", [45 x i8] zeroinitializer }, align 32
@ch341_reset_resume._entry_ptr = internal global ptr @ch341_reset_resume._entry, section ".printk_index", align 4
@ch341_reset_resume._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.4, i32 809, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to read modem status: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ch341_reset_resume._entry_ptr.25 = internal global ptr @ch341_reset_resume._entry.23, section ".printk_index", align 4
@ch341_open.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.4, ptr @.str.27, i8 0, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ch341_open\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - submitting interrupt urb\0A\00", [33 x i8] zeroinitializer }, align 32
@ch341_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.4, i32 447, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s - failed to submit interrupt urb: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ch341_open._entry_ptr = internal global ptr @ch341_open._entry, section ".printk_index", align 4
@ch341_open._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.26, ptr @.str.4, i32 453, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@ch341_open._entry_ptr.30 = internal global ptr @ch341_open._entry.29, section ".printk_index", align 4
@ch341_break_ctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 634, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s - USB control read error (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ch341_break_ctl\00", [16 x i8] zeroinitializer }, align 32
@ch341_break_ctl._entry_ptr = internal global ptr @ch341_break_ctl._entry, section ".printk_index", align 4
@ch341_break_ctl.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.4, ptr @.str.33, i8 0, i8 -97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s - initial ch341 break register contents - reg1: %x, reg2: %x\0A\00", [63 x i8] zeroinitializer }, align 32
@ch341_break_ctl.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.4, ptr @.str.34, i8 0, i8 -96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s - Enter break state requested\0A\00", [62 x i8] zeroinitializer }, align 32
@ch341_break_ctl.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.4, ptr @.str.35, i8 0, i8 -95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s - Leave break state requested\0A\00", [62 x i8] zeroinitializer }, align 32
@ch341_break_ctl.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.4, ptr @.str.36, i8 0, i8 -94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s - New ch341 break register contents - reg1: %x, reg2: %x\0A\00", [35 x i8] zeroinitializer }, align 32
@ch341_break_ctl._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.32, ptr @.str.4, i32 655, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s - USB control write error (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@ch341_break_ctl._entry_ptr.39 = internal global ptr @ch341_break_ctl._entry.37, section ".printk_index", align 4
@ch341_simulate_break.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.4, ptr @.str.41, i8 0, i8 -116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ch341_simulate_break\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"enter break state requested\0A\00", [35 x i8] zeroinitializer }, align 32
@ch341_simulate_break._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.4, i32 568, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to change baud rate to %u: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ch341_simulate_break._entry_ptr = internal global ptr @ch341_simulate_break._entry, section ".printk_index", align 4
@ch341_simulate_break._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.40, ptr @.str.4, i32 576, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"failed to write NUL byte for simulated break condition: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@ch341_simulate_break._entry_ptr.45 = internal global ptr @ch341_simulate_break._entry.43, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ch341_simulate_break.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.4, ptr @.str.46, i8 0, i8 -108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"leave break state requested\0A\00", [35 x i8] zeroinitializer }, align 32
@ch341_simulate_break.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.4, ptr @.str.47, i8 0, i8 -106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"wait %d ms while transmitting NUL byte at %u baud\0A\00", [45 x i8] zeroinitializer }, align 32
@ch341_simulate_break._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.40, ptr @.str.4, i32 612, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"restoring original baud rate of %u failed: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@ch341_simulate_break._entry_ptr.50 = internal global ptr @ch341_simulate_break._entry.48, section ".printk_index", align 4
@ch341_tiocmget.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.4, ptr @.str.52, i8 0, i8 -61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ch341_tiocmget\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s - result = %x\0A\00", [46 x i8] zeroinitializer }, align 32
@ch341_read_int_callback.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.4, ptr @.str.54, i8 0, i8 -71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ch341_read_int_callback\00", [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s - urb shutting down: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@ch341_read_int_callback.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.4, ptr @.str.55, i8 0, i8 -70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s - nonzero urb status: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ch341_read_int_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.53, ptr @.str.4, i32 755, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s - usb_submit_urb failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ch341_read_int_callback._entry_ptr = internal global ptr @ch341_read_int_callback._entry, section ".printk_index", align 4
@usb_serial_debug_data.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.58, ptr @.str.59, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb_serial_debug_data\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/usb/serial.h\00", [37 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - length = %d, data = %*ph\0A\00", [33 x i8] zeroinitializer }, align 32
@ch341_update_status.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.4, ptr @.str.61, i8 0, i8 -81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ch341_update_status\00", [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s - multiple status change\0A\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967264]
@___asan_gen_.63 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 838, i32 41 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 842, i32 1 }
@___asan_gen_.69 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 83, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant [13 x i8] c"ch341_device\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 816, i32 33 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 819, i32 11 }
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 372, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 311, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 131, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 139, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 113, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 120, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 348, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 352, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 356, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 801, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 808, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 443, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 446, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 453, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 633, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 637, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 640, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 644, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 648, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 654, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 560, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 566, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 574, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 592, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 599, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 610, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 780, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 740, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 744, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 754, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant [30 x i8] c"../include/linux/usb/serial.h\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 393, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.265 = private constant [30 x i8] c"../drivers/usb/serial/ch341.c\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 701, i32 3 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @__UNIQUE_ID_file259, ptr @__UNIQUE_ID_license260, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_ch341__258_842_usb_serial_module_init6, ptr @ch341_break_ctl._entry, ptr @ch341_break_ctl._entry.37, ptr @ch341_break_ctl._entry_ptr, ptr @ch341_break_ctl._entry_ptr.39, ptr @ch341_control_in._entry, ptr @ch341_control_in._entry_ptr, ptr @ch341_control_out._entry, ptr @ch341_control_out._entry_ptr, ptr @ch341_detect_quirks._entry, ptr @ch341_detect_quirks._entry.17, ptr @ch341_detect_quirks._entry_ptr, ptr @ch341_detect_quirks._entry_ptr.19, ptr @ch341_open._entry, ptr @ch341_open._entry.29, ptr @ch341_open._entry_ptr, ptr @ch341_open._entry_ptr.30, ptr @ch341_read_int_callback._entry, ptr @ch341_read_int_callback._entry_ptr, ptr @ch341_reset_resume._entry, ptr @ch341_reset_resume._entry.23, ptr @ch341_reset_resume._entry_ptr, ptr @ch341_reset_resume._entry_ptr.25, ptr @ch341_simulate_break._entry, ptr @ch341_simulate_break._entry.43, ptr @ch341_simulate_break._entry.48, ptr @ch341_simulate_break._entry_ptr, ptr @ch341_simulate_break._entry_ptr.45, ptr @ch341_simulate_break._entry_ptr.50, ptr @usb_serial_module_exit, ptr @serial_drivers, ptr @.str, ptr @id_table, ptr @ch341_device, ptr @.str.1, ptr @ch341_port_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch341_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch341_port_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch341_control_in._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch341_control_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch341_detect_quirks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch341_detect_quirks._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch341_reset_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch341_reset_resume._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch341_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch341_open._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch341_break_ctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch341_break_ctl._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch341_simulate_break._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch341_simulate_break._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch341_simulate_break._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch341_read_int_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }]
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
define internal i32 @ch341_port_probe(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 60) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @ch341_port_probe.__key, i16 noundef signext 3) #8
  %baud_rate = getelementptr inbounds %struct.ch341_private, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %baud_rate to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 9600, ptr %baud_rate, align 4
  %lcr = getelementptr inbounds %struct.ch341_private, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %lcr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -61, ptr %lcr, align 2
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call2 = tail call fastcc i32 @ch341_configure(ptr noundef %6, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.body.error_crit_edge, label %if.end4

do.body.error_crit_edge:                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end4:                                          ; preds = %do.body
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call5 = tail call fastcc i32 @ch341_detect_quirks(ptr noundef %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.error_crit_edge, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.error_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

error:                                            ; preds = %if.end4.error_crit_edge, %do.body.error_crit_edge
  %r.0 = phi i32 [ %call2, %do.body.error_crit_edge ], [ %call5, %if.end4.error_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %error ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ch341_port_remove(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch341_reset_resume(ptr noundef %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 12
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serial, align 4
  %call2 = tail call fastcc i32 @ch341_configure(ptr noundef %5, ptr noundef nonnull %3)
  %iflags.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1, i32 11
  %6 = ptrtoint ptr %iflags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %iflags.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end20_crit_edge, label %if.then5

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then5:                                         ; preds = %if.end
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %interrupt_in_urb, align 4
  %call6 = tail call i32 @usb_submit_urb(ptr noundef %9, i32 noundef 3072) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %dev9 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.21, i32 noundef %call6) #12
  br label %cleanup

if.end10:                                         ; preds = %if.then5
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call13 = tail call fastcc i32 @ch341_get_status(ptr noundef %13, ptr noundef nonnull %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %do.end17, label %if.end10.if.end20_crit_edge

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %dev18 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.24, i32 noundef %call13) #12
  br label %if.end20

if.end20:                                         ; preds = %do.end17, %if.end10.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %call21 = tail call i32 @usb_serial_generic_resume(ptr noundef %serial) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.end ], [ %call21, %if.end20 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch341_open(ptr noundef %tty, ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %tty, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ch341_set_termios(ptr noundef nonnull %tty, ptr noundef %port, ptr noundef null)
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch341_open.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch341_open, %if.then5)) #8
          to label %do.end [label %if.then5], !srcloc !152

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ch341_open.__UNIQUE_ID_ddebug246, ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26) #8
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %2 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interrupt_in_urb, align 4
  %call7 = tail call i32 @usb_submit_urb(ptr noundef %3, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end14, label %do.end12

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev13 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, i32 noundef %call7) #12
  br label %cleanup

if.end14:                                         ; preds = %do.end
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call16 = tail call fastcc i32 @ch341_get_status(ptr noundef %7, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %do.end20, label %if.end22

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %dev21 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.24, i32 noundef %call16) #12
  br label %err_kill_interrupt_urb

if.end22:                                         ; preds = %if.end14
  %call23 = tail call i32 @usb_serial_generic_open(ptr noundef %tty, ptr noundef %port) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.end22.err_kill_interrupt_urb_crit_edge

if.end22.err_kill_interrupt_urb_crit_edge:        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_kill_interrupt_urb

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_kill_interrupt_urb:                           ; preds = %if.end22.err_kill_interrupt_urb_crit_edge, %do.end20
  %r.0 = phi i32 [ %call16, %do.end20 ], [ %call23, %if.end22.err_kill_interrupt_urb_crit_edge ]
  %8 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %interrupt_in_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #8
  br label %cleanup

cleanup:                                          ; preds = %err_kill_interrupt_urb, %if.end22.cleanup_crit_edge, %do.end12
  %retval.0 = phi i32 [ %call7, %do.end12 ], [ %r.0, %err_kill_interrupt_urb ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ch341_close(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_serial_generic_close(ptr noundef %port) #8
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %0 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interrupt_in_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ch341_set_termios(ptr noundef %tty, ptr nocapture noundef readonly %port, ptr noundef %old_termios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %old_termios, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %call1 = tail call i32 @tty_termios_hw_change(ptr noundef %termios, ptr noundef nonnull %old_termios) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %termios.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios.i) #8
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %2 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_cflag, align 4
  %4 = trunc i32 %3 to i8
  %5 = lshr i8 %4, 4
  %switch.idx.cast = and i8 %5, 3
  %switch.offset = or i8 %switch.idx.cast, -64
  %and20 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end.if.end44_crit_edge, label %if.then22

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and28 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %cmp = icmp eq i32 %and28, 0
  %spec.select.v = select i1 %cmp, i8 24, i8 8
  %and37 = lshr i32 %3, 25
  %6 = trunc i32 %and37 to i8
  %7 = and i8 %6, 32
  %spec.select = or i8 %7, %spec.select.v
  %8 = or i8 %spec.select, %switch.offset
  br label %if.end44

if.end44:                                         ; preds = %if.then22, %if.end.if.end44_crit_edge
  %lcr.2 = phi i8 [ %switch.offset, %if.end.if.end44_crit_edge ], [ %8, %if.then22 ]
  %9 = trunc i32 %3 to i8
  %10 = lshr i8 %9, 4
  %11 = and i8 %10, 4
  %12 = or i8 %lcr.2, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool54.not = icmp eq i32 %call.i, 0
  br i1 %tobool54.not, label %if.end44.do.body74_crit_edge, label %if.then55

if.end44.do.body74_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body74

if.then55:                                        ; preds = %if.end44
  %baud_rate56 = getelementptr inbounds %struct.ch341_private, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %baud_rate56 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call.i, ptr %baud_rate56, align 4
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call58 = tail call fastcc i32 @ch341_set_baudrate_lcr(ptr noundef %17, ptr noundef %1, i32 noundef %call.i, i8 noundef zeroext %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call58)
  %cmp59 = icmp sgt i32 %call58, -1
  %brmerge = or i1 %tobool.not, %cmp59
  br i1 %brmerge, label %if.else, label %if.then63

if.then63:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  %call64 = tail call i32 @tty_termios_baud_rate(ptr noundef nonnull %old_termios) #8
  %18 = ptrtoint ptr %baud_rate56 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call64, ptr %baud_rate56, align 4
  tail call void @tty_termios_copy_hw(ptr noundef %termios.i, ptr noundef nonnull %old_termios) #8
  br label %do.body74

if.else:                                          ; preds = %if.then55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp67 = icmp eq i32 %call58, 0
  br i1 %cmp67, label %if.then69, label %if.else.do.body74_crit_edge

if.else.do.body74_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body74

if.then69:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %lcr70 = getelementptr inbounds %struct.ch341_private, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %lcr70 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %12, ptr %lcr70, align 2
  br label %do.body74

do.body74:                                        ; preds = %if.then69, %if.else.do.body74_crit_edge, %if.then63, %if.end44.do.body74_crit_edge
  %call78 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %20 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %c_cflag, align 4
  %and83 = and i32 %21, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %cmp84 = icmp eq i32 %and83, 0
  br i1 %cmp84, label %if.then86, label %if.else90

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #10
  %mcr = getelementptr inbounds %struct.ch341_private, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %mcr to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mcr, align 4
  %24 = and i8 %23, -97
  store i8 %24, ptr %mcr, align 4
  br label %if.end103

if.else90:                                        ; preds = %do.body74
  br i1 %tobool.not, label %if.else90.if.end103_crit_edge, label %land.lhs.true92

if.else90.if.end103_crit_edge:                    ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

land.lhs.true92:                                  ; preds = %if.else90
  %c_cflag93 = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 2
  %25 = ptrtoint ptr %c_cflag93 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %c_cflag93, align 4
  %and94 = and i32 %26, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %cmp95 = icmp eq i32 %and94, 0
  br i1 %cmp95, label %if.then97, label %land.lhs.true92.if.end103_crit_edge

land.lhs.true92.if.end103_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

if.then97:                                        ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #10
  %mcr98 = getelementptr inbounds %struct.ch341_private, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %mcr98 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %mcr98, align 4
  %29 = or i8 %28, 96
  store i8 %29, ptr %mcr98, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then97, %land.lhs.true92.if.end103_crit_edge, %if.else90.if.end103_crit_edge, %if.then86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call78) #8
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %port, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %mcr107 = getelementptr inbounds %struct.ch341_private, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %mcr107 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %mcr107, align 4
  %conv.i = zext i8 %35 to i16
  %neg.i = xor i16 %conv.i, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch341_control_out.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch341_set_termios, %if.then.i.i)) #8
          to label %do.end.i.i [label %if.then.i.i], !srcloc !152

if.then.i.i:                                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  %dev3.i.i = getelementptr inbounds %struct.usb_device, ptr %33, i32 0, i32 15
  %conv4.i.i = zext i16 %neg.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ch341_control_out.__UNIQUE_ID_ddebug238, ptr noundef %dev3.i.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef 164, i32 noundef %conv4.i.i, i32 noundef 0) #8
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %if.end103
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %33, align 8
  %shl.i.i.i = shl i32 %37, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call7.i.i = tail call i32 @usb_control_msg(ptr noundef %33, i32 noundef %or.i.i, i8 noundef zeroext -92, i8 noundef zeroext 64, i16 noundef zeroext %neg.i, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp.i.i = icmp slt i32 %call7.i.i, 0
  br i1 %cmp.i.i, label %do.end12.i.i, label %do.end.i.i.cleanup_crit_edge

do.end.i.i.cleanup_crit_edge:                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end12.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev13.i.i = getelementptr inbounds %struct.usb_device, ptr %33, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i, ptr noundef nonnull @.str.13, i32 noundef %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end12.i.i, %do.end.i.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ch341_break_ctl(ptr noundef %tty, i32 noundef %break_state) #2 align 64 {
entry:
  %break_reg = alloca [2 x i8], align 2
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
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %break_reg) #8
  %4 = ptrtoint ptr %break_reg to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %break_reg, align 2, !annotation !153
  %5 = getelementptr inbounds [2 x i8], ptr %break_reg, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !153
  %quirks = getelementptr inbounds %struct.ch341_private, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %quirks, align 4
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ch341_simulate_break(ptr noundef %tty, i32 noundef %break_state)
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch341_control_in.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch341_break_ctl, %if.then.i)) #8
          to label %do.end.i [label %if.then.i], !srcloc !152

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev3.i = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ch341_control_in.__UNIQUE_ID_ddebug239, ptr noundef %dev3.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 149, i32 noundef 6149, i32 noundef 0, i32 noundef 2) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end
  %call7.i = call i32 @usb_control_msg_recv(ptr noundef %12, i8 noundef zeroext 0, i8 noundef zeroext -107, i8 noundef zeroext -64, i16 noundef zeroext 6149, i16 noundef zeroext 0, ptr noundef nonnull %break_reg, i16 noundef zeroext 2, i32 noundef 1000, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %do.body6, label %do.end

do.end:                                           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev13.i = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i, ptr noundef nonnull @.str.8, i32 noundef %call7.i) #12
  %dev4 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %call7.i) #12
  br label %cleanup

do.body6:                                         ; preds = %do.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch341_break_ctl.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch341_break_ctl, %if.then11)) #8
          to label %do.end17 [label %if.then11], !srcloc !152

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %dev12 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %13 = ptrtoint ptr %break_reg to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %break_reg, align 2
  %conv = zext i8 %14 to i32
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %5, align 1
  %conv14 = zext i8 %16 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ch341_break_ctl.__UNIQUE_ID_ddebug250, ptr noundef %dev12, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef %conv, i32 noundef %conv14) #8
  br label %do.end17

do.end17:                                         ; preds = %if.then11, %do.body6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %break_state)
  %cmp.not = icmp eq i32 %break_state, 0
  br i1 %cmp.not, label %do.body45, label %do.body20

do.body20:                                        ; preds = %do.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch341_break_ctl.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch341_break_ctl, %if.then32)) #8
          to label %do.end36 [label %if.then32], !srcloc !152

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  %dev33 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ch341_break_ctl.__UNIQUE_ID_ddebug251, ptr noundef %dev33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32) #8
  br label %do.end36

do.end36:                                         ; preds = %if.then32, %do.body20
  %17 = ptrtoint ptr %break_reg to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %break_reg, align 2
  %19 = and i8 %18, -2
  store i8 %19, ptr %break_reg, align 2
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %5, align 1
  %22 = and i8 %21, -65
  br label %do.body70

do.body45:                                        ; preds = %do.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch341_break_ctl.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch341_break_ctl, %if.then57)) #8
          to label %do.end61 [label %if.then57], !srcloc !152

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  %dev58 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ch341_break_ctl.__UNIQUE_ID_ddebug252, ptr noundef %dev58, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.32) #8
  br label %do.end61

do.end61:                                         ; preds = %if.then57, %do.body45
  %23 = ptrtoint ptr %break_reg to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %break_reg, align 2
  %25 = or i8 %24, 1
  store i8 %25, ptr %break_reg, align 2
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %5, align 1
  %28 = or i8 %27, 64
  br label %do.body70

do.body70:                                        ; preds = %do.end61, %do.end36
  %storemerge = phi i8 [ %28, %do.end61 ], [ %22, %do.end36 ]
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %storemerge, ptr %5, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch341_break_ctl.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch341_break_ctl, %if.then82)) #8
          to label %do.end90 [label %if.then82], !srcloc !152

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #10
  %dev83 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %30 = ptrtoint ptr %break_reg to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %break_reg, align 2
  %conv85 = zext i8 %31 to i32
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %5, align 1
  %conv87 = zext i8 %33 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ch341_break_ctl.__UNIQUE_ID_ddebug253, ptr noundef %dev83, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.32, i32 noundef %conv85, i32 noundef %conv87) #8
  br label %do.end90

do.end90:                                         ; preds = %if.then82, %do.body70
  %34 = ptrtoint ptr %break_reg to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %break_reg, align 2
  %36 = call i16 @llvm.bswap.i16(i16 %35) #8
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch341_control_out.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch341_break_ctl, %if.then.i132)) #8
          to label %do.end.i134 [label %if.then.i132], !srcloc !152

if.then.i132:                                     ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #10
  %dev3.i131 = getelementptr inbounds %struct.usb_device, ptr %40, i32 0, i32 15
  %conv5.i = zext i16 %36 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ch341_control_out.__UNIQUE_ID_ddebug238, ptr noundef %dev3.i131, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef 154, i32 noundef 6149, i32 noundef %conv5.i) #8
  br label %do.end.i134

do.end.i134:                                      ; preds = %if.then.i132, %do.end90
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 8
  %shl.i.i = shl i32 %42, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call7.i133 = call i32 @usb_control_msg(ptr noundef %40, i32 noundef %or.i, i8 noundef zeroext -102, i8 noundef zeroext 64, i16 noundef zeroext 6149, i16 noundef zeroext %36, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i133)
  %cmp.i = icmp slt i32 %call7.i133, 0
  br i1 %cmp.i, label %do.end101, label %do.end.i134.cleanup_crit_edge

do.end.i134.cleanup_crit_edge:                    ; preds = %do.end.i134
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end101:                                        ; preds = %do.end.i134
  call void @__sanitizer_cov_trace_pc() #10
  %dev13.i135 = getelementptr inbounds %struct.usb_device, ptr %40, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i135, ptr noundef nonnull @.str.13, i32 noundef %call7.i133) #12
  %dev102 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev102, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.32, i32 noundef %call7.i133) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end101, %do.end.i134.cleanup_crit_edge, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %break_reg) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch341_tiocmget(ptr nocapture noundef readonly %tty) #2 align 64 {
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
  %mcr6 = getelementptr inbounds %struct.ch341_private, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mcr6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mcr6, align 4
  %msr = getelementptr inbounds %struct.ch341_private, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %msr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %msr, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3) #8
  %8 = lshr i8 %5, 4
  %9 = and i8 %8, 6
  %or = zext i8 %9 to i32
  %conv13 = zext i8 %7 to i32
  %and14 = shl nuw nsw i32 %conv13, 5
  %10 = and i32 %and14, 32
  %or17 = or i32 %10, %or
  %and19 = shl nuw nsw i32 %conv13, 7
  %11 = and i32 %and19, 256
  %or22 = or i32 %or17, %11
  %12 = and i32 %and14, 128
  %or27 = or i32 %or22, %12
  %and29 = shl nuw nsw i32 %conv13, 3
  %13 = and i32 %and29, 64
  %or32 = or i32 %or27, %13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch341_tiocmget.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch341_tiocmget, %if.then)) #8
          to label %do.end40 [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ch341_tiocmget.__UNIQUE_ID_ddebug257, ptr noundef %dev, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.51, i32 noundef %or32) #8
  br label %do.end40

do.end40:                                         ; preds = %if.then, %entry
  ret i32 %or32
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch341_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #2 align 64 {
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
  %and = and i32 %set, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mcr = getelementptr inbounds %struct.ch341_private, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mcr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mcr, align 4
  %6 = or i8 %5, 64
  store i8 %6, ptr %mcr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and8 = and i32 %set, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.if.end15_crit_edge, label %if.then10

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %mcr11 = getelementptr inbounds %struct.ch341_private, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %mcr11 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mcr11, align 4
  %9 = or i8 %8, 32
  store i8 %9, ptr %mcr11, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end.if.end15_crit_edge
  %and16 = and i32 %clear, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end23_crit_edge, label %if.then18

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %mcr19 = getelementptr inbounds %struct.ch341_private, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %mcr19 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mcr19, align 4
  %12 = and i8 %11, -65
  store i8 %12, ptr %mcr19, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end15.if.end23_crit_edge
  %and24 = and i32 %clear, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end31_crit_edge, label %if.then26

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %mcr27 = getelementptr inbounds %struct.ch341_private, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %mcr27 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mcr27, align 4
  %15 = and i8 %14, -33
  store i8 %15, ptr %mcr27, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.end23.if.end31_crit_edge
  %mcr32 = getelementptr inbounds %struct.ch341_private, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %mcr32 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mcr32, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3) #8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %conv.i = zext i8 %17 to i16
  %neg.i = xor i16 %conv.i, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch341_control_out.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch341_tiocmset, %if.then.i.i)) #8
          to label %do.end.i.i [label %if.then.i.i], !srcloc !152

if.then.i.i:                                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %dev3.i.i = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 15
  %conv4.i.i = zext i16 %neg.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ch341_control_out.__UNIQUE_ID_ddebug238, ptr noundef %dev3.i.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef 164, i32 noundef %conv4.i.i, i32 noundef 0) #8
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %if.end31
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i.i.i = shl i32 %23, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call7.i.i = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %or.i.i, i8 noundef zeroext -92, i8 noundef zeroext 64, i16 noundef zeroext %neg.i, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp.i.i = icmp slt i32 %call7.i.i, 0
  br i1 %cmp.i.i, label %do.end12.i.i, label %do.end.i.i.ch341_set_handshake.exit_crit_edge

do.end.i.i.ch341_set_handshake.exit_crit_edge:    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ch341_set_handshake.exit

do.end12.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev13.i.i = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i, ptr noundef nonnull @.str.13, i32 noundef %call7.i.i) #12
  br label %ch341_set_handshake.exit

ch341_set_handshake.exit:                         ; preds = %do.end12.i.i, %do.end.i.i.ch341_set_handshake.exit_crit_edge
  ret i32 %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_tiocmiwait(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ch341_dtr_rts(ptr nocapture noundef readonly %port, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %mcr8 = getelementptr inbounds %struct.ch341_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mcr8 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mcr8, align 4
  %4 = and i8 %3, -97
  %masksel = select i1 %tobool.not, i8 0, i8 96
  %.sink = or i8 %4, %masksel
  store i8 %.sink, ptr %mcr8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call3) #8
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %mcr12 = getelementptr inbounds %struct.ch341_private, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %mcr12 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mcr12, align 4
  %conv.i = zext i8 %10 to i16
  %neg.i = xor i16 %conv.i, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch341_control_out.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch341_dtr_rts, %if.then.i.i)) #8
          to label %do.end.i.i [label %if.then.i.i], !srcloc !152

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev3.i.i = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  %conv4.i.i = zext i16 %neg.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ch341_control_out.__UNIQUE_ID_ddebug238, ptr noundef %dev3.i.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef 164, i32 noundef %conv4.i.i, i32 noundef 0) #8
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %entry
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 8
  %shl.i.i.i = shl i32 %12, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call7.i.i = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or.i.i, i8 noundef zeroext -92, i8 noundef zeroext 64, i16 noundef zeroext %neg.i, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp.i.i = icmp slt i32 %call7.i.i, 0
  br i1 %cmp.i.i, label %do.end12.i.i, label %do.end.i.i.ch341_set_handshake.exit_crit_edge

do.end.i.i.ch341_set_handshake.exit_crit_edge:    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ch341_set_handshake.exit

do.end12.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev13.i.i = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i, ptr noundef nonnull @.str.13, i32 noundef %call7.i.i) #12
  br label %ch341_set_handshake.exit

ch341_set_handshake.exit:                         ; preds = %do.end12.i.i, %do.end.i.i.ch341_set_handshake.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ch341_carrier_raised(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %msr = getelementptr inbounds %struct.ch341_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %msr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msr, align 1
  %4 = lshr i8 %3, 3
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ch341_read_int_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status1, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.body6 [
    i32 0, label %sw.epilog
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge56
    i32 -108, label %entry.do.body_crit_edge57
  ]

entry.do.body_crit_edge57:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

entry.do.body_crit_edge56:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge56, %entry.do.body_crit_edge57
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch341_read_int_callback.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch341_read_int_callback, %if.then)) #8
          to label %cleanup [label %if.then], !srcloc !152

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ch341_read_int_callback.__UNIQUE_ID_ddebug255, ptr noundef %dev4, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.53, i32 noundef %6) #8
  br label %cleanup

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch341_read_int_callback.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch341_read_int_callback, %if.then18)) #8
          to label %exit [label %if.then18], !srcloc !152

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %dev19 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %7 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev19, align 4
  %dev20 = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ch341_read_int_callback.__UNIQUE_ID_ddebug256, ptr noundef %dev20, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53, i32 noundef %10) #8
  br label %exit

sw.epilog:                                        ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %11 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %actual_length, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %13 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %transfer_buffer, align 4
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %15 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %context, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch341_read_int_callback, %if.then.i)) #8
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !152

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %dev25 = getelementptr inbounds %struct.usb_serial_port, ptr %16, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev25, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.53, i32 noundef %12, i32 noundef %12, ptr noundef %14) #8
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %sw.epilog
  tail call fastcc void @ch341_update_status(ptr noundef %16, ptr noundef %14, i32 noundef %12)
  br label %exit

exit:                                             ; preds = %usb_serial_debug_data.exit, %if.then18, %do.body6
  %call26 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %exit.cleanup_crit_edge, label %do.end31

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end31:                                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev32 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %17 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev32, align 4
  %dev33 = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.53, i32 noundef %call26) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %exit.cleanup_crit_edge, %if.then, %do.body
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ch341_configure(ptr noundef %dev, ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  %buffer = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer) #8
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buffer, align 1, !annotation !153
  %1 = getelementptr inbounds [2 x i8], ptr %buffer, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !153
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch341_control_in.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch341_configure, %if.then.i)) #8
          to label %do.end.i [label %if.then.i], !srcloc !152

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev3.i = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ch341_control_in.__UNIQUE_ID_ddebug239, ptr noundef %dev3.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 95, i32 noundef 0, i32 noundef 0, i32 noundef 2) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %call7.i = call i32 @usb_control_msg_recv(ptr noundef %dev, i8 noundef zeroext 0, i8 noundef zeroext 95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buffer, i16 noundef zeroext 2, i32 noundef 1000, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %do.body, label %ch341_control_in.exit

ch341_control_in.exit:                            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev13.i = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i, ptr noundef nonnull @.str.8, i32 noundef %call7.i) #12
  br label %cleanup

do.body:                                          ; preds = %do.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch341_configure.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch341_configure, %if.then5)) #8
          to label %do.end [label %if.then5], !srcloc !152

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev6 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  %3 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %buffer, align 1
  %conv = zext i8 %4 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ch341_configure.__UNIQUE_ID_ddebug244, ptr noundef %dev6, ptr noundef nonnull @.str.5, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch341_control_out.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch341_configure, %if.then.i39)) #8
          to label %do.end.i41 [label %if.then.i39], !srcloc !152

if.then.i39:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev3.i38 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ch341_control_out.__UNIQUE_ID_ddebug238, ptr noundef %dev3.i38, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef 161, i32 noundef 0, i32 noundef 0) #8
  br label %do.end.i41

do.end.i41:                                       ; preds = %if.then.i39, %do.end
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev, align 8
  %shl.i.i = shl i32 %6, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call7.i40 = call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or.i, i8 noundef zeroext -95, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i40)
  %cmp.i = icmp slt i32 %call7.i40, 0
  br i1 %cmp.i, label %ch341_control_out.exit.thread, label %if.end11

ch341_control_out.exit.thread:                    ; preds = %do.end.i41
  call void @__sanitizer_cov_trace_pc() #10
  %dev13.i42 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i42, ptr noundef nonnull @.str.13, i32 noundef %call7.i40) #12
  br label %cleanup

if.end11:                                         ; preds = %do.end.i41
  %baud_rate = getelementptr inbounds %struct.ch341_private, ptr %priv, i32 0, i32 1
  %7 = ptrtoint ptr %baud_rate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %baud_rate, align 4
  %lcr = getelementptr inbounds %struct.ch341_private, ptr %priv, i32 0, i32 4
  %9 = ptrtoint ptr %lcr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %lcr, align 2
  %call12 = call fastcc i32 @ch341_set_baudrate_lcr(ptr noundef %dev, ptr noundef %priv, i32 noundef %8, i8 noundef zeroext %10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %mcr = getelementptr inbounds %struct.ch341_private, ptr %priv, i32 0, i32 2
  %11 = ptrtoint ptr %mcr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mcr, align 4
  %conv.i = zext i8 %12 to i16
  %neg.i = xor i16 %conv.i, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch341_control_out.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch341_configure, %if.then.i.i)) #8
          to label %do.end.i.i [label %if.then.i.i], !srcloc !152

if.then.i.i:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %dev3.i.i = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  %conv4.i.i = zext i16 %neg.i to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ch341_control_out.__UNIQUE_ID_ddebug238, ptr noundef %dev3.i.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef 164, i32 noundef %conv4.i.i, i32 noundef 0) #8
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %if.end16
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dev, align 8
  %shl.i.i.i = shl i32 %14, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call7.i.i = call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or.i.i, i8 noundef zeroext -92, i8 noundef zeroext 64, i16 noundef zeroext %neg.i, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp.i.i = icmp slt i32 %call7.i.i, 0
  br i1 %cmp.i.i, label %do.end12.i.i, label %do.end.i.i.ch341_set_handshake.exit_crit_edge

do.end.i.i.ch341_set_handshake.exit_crit_edge:    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ch341_set_handshake.exit

do.end12.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev13.i.i = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i, ptr noundef nonnull @.str.13, i32 noundef %call7.i.i) #12
  br label %ch341_set_handshake.exit

ch341_set_handshake.exit:                         ; preds = %do.end12.i.i, %do.end.i.i.ch341_set_handshake.exit_crit_edge
  %15 = call i32 @llvm.smin.i32(i32 %call7.i.i, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %ch341_set_handshake.exit, %if.end11.cleanup_crit_edge, %ch341_control_out.exit.thread, %ch341_control_in.exit
  %retval.0 = phi i32 [ %call7.i, %ch341_control_in.exit ], [ %call12, %if.end11.cleanup_crit_edge ], [ %15, %ch341_set_handshake.exit ], [ %call7.i40, %ch341_control_out.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ch341_detect_quirks(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  %buffer = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer) #8
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %buffer, align 1, !annotation !153
  %7 = getelementptr inbounds [2 x i8], ptr %buffer, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !153
  %call1 = call i32 @usb_control_msg_recv(ptr noundef %5, i8 noundef zeroext 0, i8 noundef zeroext -107, i8 noundef zeroext -64, i16 noundef zeroext 5, i16 noundef zeroext 0, ptr noundef nonnull %buffer, i16 noundef zeroext 2, i32 noundef 1000, i32 noundef 3264) #8
  %9 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %call1, label %do.end6 [
    i32 -32, label %do.body11
    i32 0, label %entry.if.end22_crit_edge
  ]

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev7 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.18, i32 noundef %call1) #12
  br label %if.end22

do.body11:                                        ; preds = %entry
  %dev2 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.14) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch341_detect_quirks.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch341_detect_quirks, %if.then16)) #8
          to label %do.end20 [label %if.then16], !srcloc !152

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ch341_detect_quirks.__UNIQUE_ID_ddebug245, ptr noundef %dev2, ptr noundef nonnull @.str.20, i32 noundef 3) #8
  br label %do.end20

do.end20:                                         ; preds = %if.then16, %do.body11
  %quirks21 = getelementptr inbounds %struct.ch341_private, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %quirks21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %quirks21, align 4
  %or = or i32 %11, 3
  store i32 %or, ptr %quirks21, align 4
  br label %if.end22

if.end22:                                         ; preds = %do.end20, %do.end6, %entry.if.end22_crit_edge
  %r.034 = phi i32 [ 0, %do.end20 ], [ %call1, %do.end6 ], [ %call1, %entry.if.end22_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer) #8
  ret i32 %r.034
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ch341_set_baudrate_lcr(ptr noundef %dev, ptr nocapture noundef readonly %priv, i32 noundef %baud_rate, i8 noundef zeroext %lcr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %baud_rate)
  %tobool.not = icmp eq i32 %baud_rate, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.umax.i32(i32 %baud_rate, i32 46) #8
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 3000000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 23437, i32 %1)
  %cmp8.i = icmp ugt i32 %1, 23437
  br i1 %cmp8.i, label %if.end11.i, label %for.inc.i

for.inc.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2929, i32 %1)
  %cmp8.1.i = icmp ugt i32 %1, 2929
  call void @__sanitizer_cov_trace_const_cmp4(i32 366, i32 %1)
  %cmp8.2.i = icmp ugt i32 %1, 366
  %spec.select.i = zext i1 %cmp8.2.i to i32
  %ps.089.lcssa.ph.i = select i1 %cmp8.1.i, i32 2, i32 %spec.select.i
  %mul.neg92.i = mul nsw i32 %ps.089.lcssa.ph.i, -3
  %sub1293.i = add nsw i32 %mul.neg92.i, 11
  %shl94.i = shl nuw nsw i32 1, %sub1293.i
  %mul1395.i = shl nuw nsw i32 %1, %sub1293.i
  %quirks.i = getelementptr inbounds %struct.ch341_private, ptr %priv, i32 0, i32 5
  %2 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  br label %if.end17.i

if.end11.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %mul13.i = shl nuw nsw i32 %1, 2
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end11.i, %for.inc.i
  %mul13102.i = phi i32 [ %mul13.i, %if.end11.i ], [ %mul1395.i, %for.inc.i ]
  %shl100.i = phi i32 [ 4, %if.end11.i ], [ %shl94.i, %for.inc.i ]
  %ps.089.lcssa98.i = phi i32 [ 3, %if.end11.i ], [ %ps.089.lcssa.ph.i, %for.inc.i ]
  %force_fact0.0.off0.i = phi i1 [ false, %if.end11.i ], [ %tobool.not.i, %for.inc.i ]
  %div14104.i = udiv i32 48000000, %mul13102.i
  %4 = add nsw i32 %mul13102.i, -5333334
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5145833, i32 %4)
  %5 = icmp ult i32 %4, -5145833
  %brmerge.i = select i1 %5, i1 true, i1 %force_fact0.0.off0.i
  %div2383.i = zext i1 %brmerge.i to i32
  %div.0.i = lshr i32 %div14104.i, %div2383.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div.0.i)
  %cmp26.i = icmp ult i32 %div.0.i, 2
  br i1 %cmp26.i, label %if.end17.i.cleanup_crit_edge, label %ch341_get_divisor.exit

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ch341_get_divisor.exit:                           ; preds = %if.end17.i
  %clk_div.0.i = shl nuw nsw i32 %shl100.i, %div2383.i
  %mul29.i = mul nuw nsw i32 %clk_div.0.i, %div.0.i
  %div30.i = udiv i32 768000000, %mul29.i
  %mul31.i = shl nuw nsw i32 %1, 4
  %sub32.i = sub nsw i32 %div30.i, %mul31.i
  %add.i = add nuw nsw i32 %div.0.i, 1
  %mul34.i = mul nuw nsw i32 %add.i, %clk_div.0.i
  %div35.i = udiv i32 768000000, %mul34.i
  %sub36.i = sub nsw i32 %mul31.i, %div35.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub32.i, i32 %sub36.i)
  %cmp37.not.i = icmp ult i32 %sub32.i, %sub36.i
  %spec.select84.i = select i1 %cmp37.not.i, i32 %div.0.i, i32 %add.i
  %rem.i = and i32 %spec.select84.i, 1
  %6 = shl nuw nsw i32 %rem.i, 2
  %7 = xor i32 %rem.i, 1
  %fact.1.i = select i1 %brmerge.i, i32 0, i32 %6
  %spec.select86.i = select i1 %brmerge.i, i32 0, i32 %7
  %div.2.i = lshr i32 %spec.select84.i, %spec.select86.i
  %.neg.i = mul nsw i32 %div.2.i, -256
  %shl47.i = add nsw i32 %.neg.i, 65536
  %or.i = or i32 %shl47.i, %fact.1.i
  %or49.i = or i32 %or.i, %ps.089.lcssa98.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or49.i)
  %cmp = icmp slt i32 %or49.i, 0
  br i1 %cmp, label %ch341_get_divisor.exit.cleanup_crit_edge, label %if.end2

ch341_get_divisor.exit.cleanup_crit_edge:         ; preds = %ch341_get_divisor.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %ch341_get_divisor.exit
  %8 = trunc i32 %or49.i to i16
  %conv = or i16 %8, 128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch341_control_out.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch341_set_baudrate_lcr, %if.then.i)) #8
          to label %do.end.i [label %if.then.i], !srcloc !152

if.then.i:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  %dev3.i = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  %conv5.i = zext i16 %conv to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ch341_control_out.__UNIQUE_ID_ddebug238, ptr noundef %dev3.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef 154, i32 noundef 4882, i32 noundef %conv5.i) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dev, align 8
  %shl.i.i = shl i32 %10, 8
  %or.i21 = or i32 %shl.i.i, -2147483648
  %call7.i = tail call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or.i21, i8 noundef zeroext -102, i8 noundef zeroext 64, i16 noundef zeroext 4882, i16 noundef zeroext %conv, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i = icmp slt i32 %call7.i, 0
  br i1 %cmp.i, label %do.end.i.cleanup.sink.split_crit_edge, label %ch341_control_out.exit

do.end.i.cleanup.sink.split_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

ch341_control_out.exit:                           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool4.not = icmp eq i32 %call7.i, 0
  br i1 %tobool4.not, label %if.end6, label %ch341_control_out.exit.cleanup_crit_edge

ch341_control_out.exit.cleanup_crit_edge:         ; preds = %ch341_control_out.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %ch341_control_out.exit
  %conv7 = zext i8 %lcr to i16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch341_control_out.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch341_set_baudrate_lcr, %if.then.i24)) #8
          to label %do.end.i29 [label %if.then.i24], !srcloc !152

if.then.i24:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %dev3.i22 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  %conv5.i23 = zext i8 %lcr to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ch341_control_out.__UNIQUE_ID_ddebug238, ptr noundef %dev3.i22, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef 154, i32 noundef 9496, i32 noundef %conv5.i23) #8
  br label %do.end.i29

do.end.i29:                                       ; preds = %if.then.i24, %if.end6
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dev, align 8
  %shl.i.i25 = shl i32 %12, 8
  %or.i26 = or i32 %shl.i.i25, -2147483648
  %call7.i27 = tail call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or.i26, i8 noundef zeroext -102, i8 noundef zeroext 64, i16 noundef zeroext 9496, i16 noundef zeroext %conv7, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i27)
  %cmp.i28 = icmp slt i32 %call7.i27, 0
  br i1 %cmp.i28, label %do.end.i29.cleanup.sink.split_crit_edge, label %do.end.i29.cleanup_crit_edge

do.end.i29.cleanup_crit_edge:                     ; preds = %do.end.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i29.cleanup.sink.split_crit_edge:          ; preds = %do.end.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end.i29.cleanup.sink.split_crit_edge, %do.end.i.cleanup.sink.split_crit_edge
  %call7.i27.sink = phi i32 [ %call7.i, %do.end.i.cleanup.sink.split_crit_edge ], [ %call7.i27, %do.end.i29.cleanup.sink.split_crit_edge ]
  %dev13.i30 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i30, ptr noundef nonnull @.str.13, i32 noundef %call7.i27.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end.i29.cleanup_crit_edge, %ch341_control_out.exit.cleanup_crit_edge, %ch341_get_divisor.exit.cleanup_crit_edge, %if.end17.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %ch341_get_divisor.exit.cleanup_crit_edge ], [ %call7.i, %ch341_control_out.exit.cleanup_crit_edge ], [ -22, %if.end17.i.cleanup_crit_edge ], [ %call7.i27, %do.end.i29.cleanup_crit_edge ], [ %call7.i27.sink, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg_recv(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ch341_get_status(ptr noundef %dev, ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  %buffer = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer) #8
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buffer, align 1, !annotation !153
  %1 = getelementptr inbounds [2 x i8], ptr %buffer, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !153
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch341_control_in.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch341_get_status, %if.then.i)) #8
          to label %do.end.i [label %if.then.i], !srcloc !152

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev3.i = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ch341_control_in.__UNIQUE_ID_ddebug239, ptr noundef %dev3.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 149, i32 noundef 1798, i32 noundef 0, i32 noundef 2) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %call7.i = call i32 @usb_control_msg_recv(ptr noundef %dev, i8 noundef zeroext 0, i8 noundef zeroext -107, i8 noundef zeroext -64, i16 noundef zeroext 1798, i16 noundef zeroext 0, ptr noundef nonnull %buffer, i16 noundef zeroext 2, i32 noundef 1000, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %do.body1, label %ch341_control_in.exit

ch341_control_in.exit:                            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev13.i = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i, ptr noundef nonnull @.str.8, i32 noundef %call7.i) #12
  br label %cleanup

do.body1:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %priv) #8
  %3 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %buffer, align 1
  %5 = and i8 %4, 15
  %6 = xor i8 %5, 15
  %msr = getelementptr inbounds %struct.ch341_private, ptr %priv, i32 0, i32 3
  %7 = ptrtoint ptr %msr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %msr, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %priv, i32 noundef %call3) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %ch341_control_in.exit
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer) #8
  ret i32 %call7.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_generic_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_hw_change(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_copy_hw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ch341_simulate_break(ptr noundef %tty, i32 noundef %break_state) unnamed_addr #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %break_state)
  %cmp.not = icmp eq i32 %break_state, 0
  br i1 %cmp.not, label %do.body23, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch341_simulate_break.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch341_simulate_break, %if.then4)) #8
          to label %do.end [label %if.then4], !srcloc !152

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ch341_simulate_break.__UNIQUE_ID_ddebug247, ptr noundef %dev, ptr noundef nonnull @.str.41) #8
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call6 = tail call fastcc i32 @ch341_set_baudrate_lcr(ptr noundef %7, ptr noundef %3, i32 noundef 46, i8 noundef zeroext -61)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end11, label %if.end13

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev12 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.42, i32 noundef 46, i32 noundef %call6) #12
  br label %restore

if.end13:                                         ; preds = %do.end
  %call14 = tail call i32 @tty_put_char(ptr noundef %tty, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %dev20 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.44, i32 noundef %call14) #12
  br label %restore

if.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %8, 23
  %break_end = getelementptr inbounds %struct.ch341_private, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %break_end to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %break_end, align 4
  br label %cleanup

do.body23:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch341_simulate_break.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch341_simulate_break, %if.then35)) #8
          to label %do.end39 [label %if.then35], !srcloc !152

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  %dev36 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ch341_simulate_break.__UNIQUE_ID_ddebug248, ptr noundef %dev36, ptr noundef nonnull @.str.46) #8
  br label %do.end39

do.end39:                                         ; preds = %if.then35, %do.body23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %break_end40 = getelementptr inbounds %struct.ch341_private, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %break_end40 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %break_end40, align 4
  %sub = sub i32 %10, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp41 = icmp slt i32 %sub, 0
  br i1 %cmp41, label %if.then42, label %do.end39.restore_crit_edge

do.end39.restore_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %restore

if.then42:                                        ; preds = %do.end39
  %sub44 = sub i32 %12, %10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch341_simulate_break.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch341_simulate_break, %if.then57)) #8
          to label %do.end62 [label %if.then57], !srcloc !152

if.then57:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  %dev58 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %call59 = tail call i32 @jiffies_to_msecs(i32 noundef %sub44) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ch341_simulate_break.__UNIQUE_ID_ddebug249, ptr noundef %dev58, ptr noundef nonnull @.str.47, i32 noundef %call59, i32 noundef 46) #8
  br label %do.end62

do.end62:                                         ; preds = %if.then57, %if.then42
  %call63 = tail call i32 @schedule_timeout_interruptible(i32 noundef %sub44) #8
  br label %restore

restore:                                          ; preds = %do.end62, %do.end39.restore_crit_edge, %do.end19, %do.end11
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %baud_rate = getelementptr inbounds %struct.ch341_private, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %baud_rate to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %baud_rate, align 4
  %lcr = getelementptr inbounds %struct.ch341_private, ptr %3, i32 0, i32 4
  %19 = ptrtoint ptr %lcr to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %lcr, align 2
  %call67 = tail call fastcc i32 @ch341_set_baudrate_lcr(ptr noundef %16, ptr noundef %3, i32 noundef %18, i8 noundef zeroext %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %do.end72, label %restore.cleanup_crit_edge

restore.cleanup_crit_edge:                        ; preds = %restore
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end72:                                         ; preds = %restore
  call void @__sanitizer_cov_trace_pc() #10
  %dev73 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %21 = ptrtoint ptr %baud_rate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %baud_rate, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev73, ptr noundef nonnull @.str.49, i32 noundef %22, i32 noundef %call67) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end72, %restore.cleanup_crit_edge, %if.end21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_put_char(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ch341_update_status(ptr noundef %port, ptr nocapture noundef readonly %data, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp = icmp ult i32 %len, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr i8, ptr %data, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, 15
  %5 = xor i8 %4, 15
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %msr = getelementptr inbounds %struct.ch341_private, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %msr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %msr, align 1
  %xor90 = xor i8 %5, %7
  store i8 %5, ptr %msr, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call6) #8
  %arrayidx14 = getelementptr i8, ptr %data, i32 1
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx14, align 1
  %10 = and i8 %9, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end.if.end28_crit_edge, label %do.body18

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

do.body18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch341_update_status.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch341_update_status, %if.then24)) #8
          to label %if.end28 [label %if.then24], !srcloc !152

if.then24:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ch341_update_status.__UNIQUE_ID_ddebug254, ptr noundef %dev, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.60) #8
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %do.body18, %if.end.if.end28_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor90)
  %tobool29.not = icmp eq i8 %xor90, 0
  br i1 %tobool29.not, label %if.end28.cleanup_crit_edge, label %if.end31

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %if.end28
  %conv32 = zext i8 %xor90 to i32
  %and33 = and i32 %conv32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end31.if.end36_crit_edge, label %if.then35

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %icount = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27
  %11 = ptrtoint ptr %icount to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %icount, align 8
  %inc = add i32 %12, 1
  store i32 %inc, ptr %icount, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end31.if.end36_crit_edge
  %and38 = and i32 %conv32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end36.if.end43_crit_edge, label %if.then40

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %dsr = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 1
  %13 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dsr, align 4
  %inc42 = add i32 %14, 1
  store i32 %inc42, ptr %dsr, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end36.if.end43_crit_edge
  %and45 = and i32 %conv32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end43.if.end50_crit_edge, label %if.then47

if.end43.if.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %rng = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 2
  %15 = ptrtoint ptr %rng to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rng, align 8
  %inc49 = add i32 %16, 1
  store i32 %inc49, ptr %rng, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end43.if.end50_crit_edge
  %and52 = and i32 %conv32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end50.if.end64_crit_edge, label %if.then54

if.end50.if.end64_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then54:                                        ; preds = %if.end50
  %dcd = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 3
  %17 = ptrtoint ptr %dcd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dcd, align 4
  %inc56 = add i32 %18, 1
  store i32 %inc56, ptr %dcd, align 4
  %port57 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1
  %call58 = tail call ptr @tty_port_tty_get(ptr noundef %port57) #8
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %if.then54.if.end64_crit_edge, label %if.then60

if.then54.if.end64_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then60:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  %19 = and i8 %5, 8
  %and62 = zext i8 %19 to i32
  tail call void @usb_serial_handle_dcd_change(ptr noundef %port, ptr noundef nonnull %call58, i32 noundef %and62) #8
  tail call void @tty_kref_put(ptr noundef nonnull %call58) #8
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %if.then54.if.end64_crit_edge, %if.end50.if.end64_crit_edge
  %delta_msr_wait = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1, i32 9
  tail call void @__wake_up(ptr noundef %delta_msr_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.end28.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_handle_dcd_change(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !15, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !46, !47, !48, !49, !51, !52, !53, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !78, !79, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !132, !133, !134, !136, !137, !138, !139, !141, !142}
!llvm.module.flags = !{!143, !144, !145, !146, !147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = !{ptr @__initcall__kmod_ch341__258_842_usb_serial_module_init6, !1, !"__initcall__kmod_ch341__258_842_usb_serial_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/ch341.c", i32 842, i32 1}
!2 = !{ptr @__exitcall_usb_serial_module_exit, !1, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file259, !4, !"__UNIQUE_ID_file259", i1 false, i1 false}
!4 = !{!"../drivers/usb/serial/ch341.c", i32 844, i32 1}
!5 = !{ptr @__UNIQUE_ID_license260, !4, !"__UNIQUE_ID_license260", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @id_table, !8, !"id_table", i1 false, i1 false}
!8 = !{!"../drivers/usb/serial/ch341.c", i32 83, i32 35}
!9 = !{ptr @serial_drivers, !10, !"serial_drivers", i1 false, i1 false}
!10 = !{!"../drivers/usb/serial/ch341.c", i32 838, i32 41}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/usb/serial/ch341.c", i32 819, i32 11}
!13 = !{ptr @ch341_device, !14, !"ch341_device", i1 false, i1 false}
!14 = !{!"../drivers/usb/serial/ch341.c", i32 816, i32 33}
!15 = !{ptr @ch341_port_probe.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/usb/serial/ch341.c", i32 372, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/serial/ch341.c", i32 311, i32 2}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ch341_configure.__UNIQUE_ID_ddebug244, !19, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/serial/ch341.c", i32 131, i32 2}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ch341_control_in.__UNIQUE_ID_ddebug239, !24, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/serial/ch341.c", i32 139, i32 3}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ch341_control_in._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @ch341_control_in._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/serial/ch341.c", i32 113, i32 2}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ch341_control_out.__UNIQUE_ID_ddebug238, !34, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/serial/ch341.c", i32 120, i32 3}
!39 = !{ptr @ch341_control_out._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ch341_control_out._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = distinct !{null, !42, !"ch341_min_rates", i1 false, i1 false}
!42 = !{!"../drivers/usb/serial/ch341.c", i32 151, i32 22}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/serial/ch341.c", i32 348, i32 3}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ch341_detect_quirks._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @ch341_detect_quirks._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/serial/ch341.c", i32 352, i32 3}
!51 = !{ptr @ch341_detect_quirks._entry.17, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @ch341_detect_quirks._entry_ptr.19, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/serial/ch341.c", i32 356, i32 3}
!55 = !{ptr @ch341_detect_quirks.__UNIQUE_ID_ddebug245, !54, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/serial/ch341.c", i32 801, i32 4}
!58 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ch341_reset_resume._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @ch341_reset_resume._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/serial/ch341.c", i32 808, i32 4}
!63 = !{ptr @ch341_reset_resume._entry.23, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @ch341_reset_resume._entry_ptr.25, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/serial/ch341.c", i32 443, i32 2}
!67 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @ch341_open.__UNIQUE_ID_ddebug246, !66, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/serial/ch341.c", i32 446, i32 3}
!71 = !{ptr @ch341_open._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @ch341_open._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @ch341_open._entry.29, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../drivers/usb/serial/ch341.c", i32 453, i32 3}
!75 = !{ptr @ch341_open._entry_ptr.30, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/serial/ch341.c", i32 633, i32 3}
!78 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @ch341_break_ctl._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @ch341_break_ctl._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/serial/ch341.c", i32 637, i32 2}
!83 = !{ptr @ch341_break_ctl.__UNIQUE_ID_ddebug250, !82, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/serial/ch341.c", i32 640, i32 3}
!86 = !{ptr @ch341_break_ctl.__UNIQUE_ID_ddebug251, !85, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/serial/ch341.c", i32 644, i32 3}
!89 = !{ptr @ch341_break_ctl.__UNIQUE_ID_ddebug252, !88, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/serial/ch341.c", i32 648, i32 2}
!92 = !{ptr @ch341_break_ctl.__UNIQUE_ID_ddebug253, !91, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/serial/ch341.c", i32 654, i32 3}
!95 = !{ptr @ch341_break_ctl._entry.37, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @ch341_break_ctl._entry_ptr.39, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/serial/ch341.c", i32 560, i32 3}
!99 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @ch341_simulate_break.__UNIQUE_ID_ddebug247, !98, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/serial/ch341.c", i32 566, i32 4}
!103 = !{ptr @ch341_simulate_break._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @ch341_simulate_break._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/serial/ch341.c", i32 574, i32 4}
!107 = !{ptr @ch341_simulate_break._entry.43, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @ch341_simulate_break._entry_ptr.45, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/serial/ch341.c", i32 592, i32 2}
!111 = !{ptr @ch341_simulate_break.__UNIQUE_ID_ddebug248, !110, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!112 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/serial/ch341.c", i32 599, i32 3}
!114 = !{ptr @ch341_simulate_break.__UNIQUE_ID_ddebug249, !113, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/serial/ch341.c", i32 610, i32 3}
!117 = !{ptr @ch341_simulate_break._entry.48, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @ch341_simulate_break._entry_ptr.50, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/serial/ch341.c", i32 780, i32 2}
!121 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @ch341_tiocmget.__UNIQUE_ID_ddebug257, !120, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!123 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/usb/serial/ch341.c", i32 740, i32 3}
!125 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @ch341_read_int_callback.__UNIQUE_ID_ddebug255, !124, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!127 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/serial/ch341.c", i32 744, i32 3}
!129 = !{ptr @ch341_read_int_callback.__UNIQUE_ID_ddebug256, !128, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!130 = !{ptr @.str.56, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/usb/serial/ch341.c", i32 754, i32 3}
!132 = !{ptr @ch341_read_int_callback._entry, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @ch341_read_int_callback._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../include/linux/usb/serial.h", i32 393, i32 2}
!136 = !{ptr @.str.58, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.59, !135, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, !135, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!139 = !{ptr @.str.60, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/usb/serial/ch341.c", i32 701, i32 3}
!141 = !{ptr @.str.61, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @ch341_update_status.__UNIQUE_ID_ddebug254, !140, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!143 = !{i32 1, !"wchar_size", i32 2}
!144 = !{i32 1, !"min_enum_size", i32 4}
!145 = !{i32 8, !"branch-target-enforcement", i32 0}
!146 = !{i32 8, !"sign-return-address", i32 0}
!147 = !{i32 8, !"sign-return-address-all", i32 0}
!148 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!149 = !{i32 7, !"uwtable", i32 1}
!150 = !{i32 7, !"frame-pointer", i32 2}
!151 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!152 = !{i64 2148711685, i64 2148711690, i64 2148711703, i64 2148711747, i64 2148711781, i64 2148711802}
!153 = !{!"auto-init"}
