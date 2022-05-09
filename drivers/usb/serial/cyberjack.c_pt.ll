; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/cyberjack.c_pt.bc'
source_filename = "../drivers/usb/serial/cyberjack.c"
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
%struct.cyberjack_private = type { %struct.spinlock, i16, [320 x i8], i16, i16 }
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
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@__initcall__kmod_cyberjack__258_419_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @cyberjack_device, ptr null], [24 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author259 = internal constant [35 x i8] c"cyberjack.author=Matthias Bruestle\00", section ".modinfo", align 1
@__UNIQUE_ID_description260 = internal constant [83 x i8] c"cyberjack.description=REINER SCT cyberJack pinpad/e-com USB Chipcard Reader Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file261 = internal constant [44 x i8] c"cyberjack.file=drivers/usb/serial/cyberjack\00", section ".modinfo", align 1
@__UNIQUE_ID_license262 = internal constant [22 x i8] c"cyberjack.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cyberjack\00", [22 x i8] zeroinitializer }, align 32
@id_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 3147, i16 256, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cyberjack_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.1, ptr @id_table, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 1, i8 0, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cyberjack_port_probe, ptr @cyberjack_port_remove, ptr null, ptr null, ptr null, ptr @cyberjack_open, ptr @cyberjack_close, ptr @cyberjack_write, ptr @cyberjack_write_room, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cyberjack_read_int_callback, ptr null, ptr @cyberjack_read_bulk_callback, ptr @cyberjack_write_bulk_callback, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Reiner SCT Cyberjack USB card reader\00", [59 x i8] zeroinitializer }, align 32
@cyberjack_port_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@cyberjack_port_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 118, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"usb_submit_urb(read int) failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cyberjack_port_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/usb/serial/cyberjack.c\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cyberjack_port_probe._entry_ptr = internal global ptr @cyberjack_port_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cyberjack_open.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.5, ptr @.str.9, i8 0, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cyberjack_open\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s - usb_clear_halt\0A\00", [43 x i8] zeroinitializer }, align 32
@cyberjack_write.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.5, ptr @.str.11, i8 0, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cyberjack_write\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - write request of 0 bytes\0A\00", [33 x i8] zeroinitializer }, align 32
@cyberjack_write.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.5, ptr @.str.12, i8 0, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s - already writing\0A\00", [42 x i8] zeroinitializer }, align 32
@cyberjack_write.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.5, ptr @.str.13, i8 0, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s - expected data: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@cyberjack_write.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.5, ptr @.str.14, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s - transmitting data (frame 1)\0A\00", [62 x i8] zeroinitializer }, align 32
@cyberjack_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.5, i32 218, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s - failed submitting write urb, error %d\0A\00", [52 x i8] zeroinitializer }, align 32
@cyberjack_write._entry_ptr = internal global ptr @cyberjack_write._entry, section ".printk_index", align 4
@cyberjack_write.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.5, ptr @.str.16, i8 0, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s - priv->wrsent=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@cyberjack_write.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.5, ptr @.str.17, i8 0, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s - priv->wrfilled=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@cyberjack_write.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.5, ptr @.str.18, i8 0, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s - buffer cleaned\0A\00", [43 x i8] zeroinitializer }, align 32
@usb_serial_debug_data.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.20, ptr @.str.21, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb_serial_debug_data\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/usb/serial.h\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - length = %d, data = %*ph\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.cyberjack_read_int_callback = private unnamed_addr constant [28 x i8] c"cyberjack_read_int_callback\00", align 1
@cyberjack_read_int_callback.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.cyberjack_read_int_callback, ptr @.str.5, ptr @.str.22, i8 0, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Too many bulk_in urbs to do.\0A\00", [34 x i8] zeroinitializer }, align 32
@cyberjack_read_int_callback.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.cyberjack_read_int_callback, ptr @.str.5, ptr @.str.23, i8 0, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - rdtodo: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@cyberjack_read_int_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.cyberjack_read_int_callback, ptr @.str.5, i32 293, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s - failed resubmitting read urb, error %d\0A\00", [51 x i8] zeroinitializer }, align 32
@cyberjack_read_int_callback._entry_ptr = internal global ptr @cyberjack_read_int_callback._entry, section ".printk_index", align 4
@cyberjack_read_int_callback.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.cyberjack_read_int_callback, ptr @.str.5, ptr @.str.25, i8 0, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - usb_submit_urb(read urb)\0A\00", [33 x i8] zeroinitializer }, align 32
@cyberjack_read_int_callback._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__.cyberjack_read_int_callback, ptr @.str.5, i32 301, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@cyberjack_read_int_callback._entry_ptr.27 = internal global ptr @cyberjack_read_int_callback._entry.26, section ".printk_index", align 4
@cyberjack_read_int_callback.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.cyberjack_read_int_callback, ptr @.str.5, ptr @.str.28, i8 0, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s - usb_submit_urb(int urb)\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.cyberjack_read_bulk_callback = private unnamed_addr constant [29 x i8] c"cyberjack_read_bulk_callback\00", align 1
@cyberjack_read_bulk_callback.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.cyberjack_read_bulk_callback, ptr @.str.5, ptr @.str.29, i8 0, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s - nonzero read bulk status received: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@cyberjack_read_bulk_callback.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.cyberjack_read_bulk_callback, ptr @.str.5, ptr @.str.23, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cyberjack_read_bulk_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.cyberjack_read_bulk_callback, ptr @.str.5, i32 346, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@cyberjack_read_bulk_callback._entry_ptr = internal global ptr @cyberjack_read_bulk_callback._entry, section ".printk_index", align 4
@cyberjack_read_bulk_callback.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.cyberjack_read_bulk_callback, ptr @.str.5, ptr @.str.25, i8 0, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cyberjack_write_bulk_callback.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.5, ptr @.str.31, i8 0, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cyberjack_write_bulk_callback\00", [34 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s - nonzero write bulk status received: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@cyberjack_write_bulk_callback.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.5, ptr @.str.32, i8 0, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s - transmitting data (frame n)\0A\00", [62 x i8] zeroinitializer }, align 32
@cyberjack_write_bulk_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.30, ptr @.str.5, i32 389, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@cyberjack_write_bulk_callback._entry_ptr = internal global ptr @cyberjack_write_bulk_callback._entry, section ".printk_index", align 4
@cyberjack_write_bulk_callback.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.5, ptr @.str.16, i8 0, i8 99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cyberjack_write_bulk_callback.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.5, ptr @.str.17, i8 0, i8 99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cyberjack_write_bulk_callback.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.5, ptr @.str.18, i8 0, i8 101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 88, i32 41 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 419, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 61, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"cyberjack_device\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 68, i32 33 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 73, i32 18 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 109, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 118, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 139, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 168, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 173, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 195, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 203, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 216, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 227, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 228, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 231, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant [30 x i8] c"../include/linux/usb/serial.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 393, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 277, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 285, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 292, i32 5 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 294, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 301, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 302, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 318, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 345, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 361, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 373, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.154 = private constant [34 x i8] c"../drivers/usb/serial/cyberjack.c\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 388, i32 4 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author259, ptr @__UNIQUE_ID_description260, ptr @__UNIQUE_ID_file261, ptr @__UNIQUE_ID_license262, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_cyberjack__258_419_usb_serial_module_init6, ptr @cyberjack_port_probe._entry, ptr @cyberjack_port_probe._entry_ptr, ptr @cyberjack_read_bulk_callback._entry, ptr @cyberjack_read_bulk_callback._entry_ptr, ptr @cyberjack_read_int_callback._entry, ptr @cyberjack_read_int_callback._entry.26, ptr @cyberjack_read_int_callback._entry_ptr, ptr @cyberjack_read_int_callback._entry_ptr.27, ptr @cyberjack_write._entry, ptr @cyberjack_write._entry_ptr, ptr @cyberjack_write_bulk_callback._entry, ptr @cyberjack_write_bulk_callback._entry_ptr, ptr @usb_serial_module_exit, ptr @serial_drivers, ptr @.str, ptr @id_table, ptr @cyberjack_device, ptr @.str.1, ptr @cyberjack_port_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyberjack_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyberjack_port_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyberjack_port_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyberjack_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyberjack_read_int_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyberjack_read_int_callback._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyberjack_read_bulk_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyberjack_write_bulk_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_serial_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_serial_register_drivers(ptr noundef nonnull @serial_drivers, ptr noundef nonnull @.str, ptr noundef nonnull @id_table) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_serial_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_serial_deregister_drivers(ptr noundef nonnull @serial_drivers) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_deregister_drivers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_register_drivers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyberjack_port_probe(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 372) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @cyberjack_port_probe.__key, i16 noundef signext 3) #7
  %rdtodo = getelementptr inbounds %struct.cyberjack_private, ptr %call7.i, i32 0, i32 1
  %1 = ptrtoint ptr %rdtodo to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %rdtodo, align 4
  %wrfilled = getelementptr inbounds %struct.cyberjack_private, ptr %call7.i, i32 0, i32 3
  %2 = ptrtoint ptr %wrfilled to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %wrfilled, align 2
  %wrsent = getelementptr inbounds %struct.cyberjack_private, ptr %call7.i, i32 0, i32 4
  %3 = ptrtoint ptr %wrsent to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %wrsent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i, ptr %driver_data.i.i, align 4
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %5 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %interrupt_in_urb, align 4
  %call2 = tail call i32 @usb_submit_urb(ptr noundef %6, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %do.end7

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end7:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %do.end7 ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cyberjack_port_remove(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %0 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interrupt_in_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %1) #7
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyberjack_open(ptr nocapture noundef readnone %tty, ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyberjack_open.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyberjack_open, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyberjack_open.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 21
  %4 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_urb, align 8
  %pipe = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pipe, align 4
  %call4 = tail call i32 @usb_clear_halt(ptr noundef %3, i32 noundef %7) #7
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #7
  %rdtodo = getelementptr inbounds %struct.cyberjack_private, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %rdtodo to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %rdtodo, align 4
  %wrfilled = getelementptr inbounds %struct.cyberjack_private, ptr %9, i32 0, i32 3
  %11 = ptrtoint ptr %wrfilled to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %wrfilled, align 2
  %wrsent = getelementptr inbounds %struct.cyberjack_private, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %wrsent to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %wrsent, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %call10) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cyberjack_close(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 21
  %0 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_urb, align 8
  tail call void @usb_kill_urb(ptr noundef %1) #7
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 14
  %2 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyberjack_write(ptr nocapture noundef readnone %tty, ptr noundef %port, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyberjack_write.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyberjack_write, %if.then5)) #7
          to label %cleanup192 [label %if.then5], !srcloc !123

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyberjack_write.__UNIQUE_ID_ddebug239, ptr noundef %dev1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #7
  br label %cleanup192

if.end6:                                          ; preds = %entry
  %write_urbs_free = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 25
  %call7 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %write_urbs_free) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.body10, label %do.body28

do.body10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyberjack_write.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyberjack_write, %if.then22)) #7
          to label %cleanup192 [label %if.then22], !srcloc !123

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyberjack_write.__UNIQUE_ID_ddebug240, ptr noundef %dev1, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10) #7
  br label %cleanup192

do.body28:                                        ; preds = %if.end6
  %call32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #7
  %wrfilled = getelementptr inbounds %struct.cyberjack_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %wrfilled to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %wrfilled, align 2
  %conv37 = sext i16 %3 to i32
  %add = add i32 %conv37, %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %add)
  %cmp38 = icmp ugt i32 %add, 320
  br i1 %cmp38, label %if.then40, label %if.end44

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %wrfilled to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %wrfilled, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call32) #7
  tail call void @_set_bit(i32 noundef 0, ptr noundef %write_urbs_free) #7
  br label %cleanup192

if.end44:                                         ; preds = %do.body28
  %wrbuf = getelementptr inbounds %struct.cyberjack_private, ptr %1, i32 0, i32 2
  %add.ptr = getelementptr i8, ptr %wrbuf, i32 %conv37
  %5 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %count)
  %6 = ptrtoint ptr %wrfilled to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %wrfilled, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyberjack_write, %if.then.i)) #7
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !123

if.then.i:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %conv50 = sext i16 %7 to i32
  %add.ptr51 = getelementptr i8, ptr %wrbuf, i32 %conv50
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev1, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.10, i32 noundef %count, i32 noundef %count, ptr noundef %add.ptr51) #7
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %if.end44
  %8 = ptrtoint ptr %wrfilled to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %wrfilled, align 2
  %10 = trunc i32 %count to i16
  %conv55 = add i16 %9, %10
  store i16 %conv55, ptr %wrfilled, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %conv55)
  %cmp58 = icmp sgt i16 %conv55, 2
  br i1 %cmp58, label %if.then60, label %usb_serial_debug_data.exit.if.end84_crit_edge

usb_serial_debug_data.exit.if.end84_crit_edge:    ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then60:                                        ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.cyberjack_private, ptr %1, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 2
  %conv62 = zext i8 %12 to i32
  %shl = shl nuw nsw i32 %conv62, 8
  %arrayidx64 = getelementptr %struct.cyberjack_private, ptr %1, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %14 to i32
  %add66 = or i32 %shl, %conv65
  %add67 = add nuw nsw i32 %add66, 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyberjack_write.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyberjack_write, %if.then80)) #7
          to label %if.end84 [label %if.then80], !srcloc !123

if.then80:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyberjack_write.__UNIQUE_ID_ddebug241, ptr noundef %dev1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.10, i32 noundef %add67) #7
  br label %if.end84

if.end84:                                         ; preds = %if.then80, %if.then60, %usb_serial_debug_data.exit.if.end84_crit_edge
  %wrexpected.0 = phi i32 [ %add67, %if.then80 ], [ 320, %usb_serial_debug_data.exit.if.end84_crit_edge ], [ %add67, %if.then60 ]
  %15 = ptrtoint ptr %wrfilled to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %wrfilled, align 2
  %conv86 = sext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %wrexpected.0, i32 %conv86)
  %cmp87.not = icmp sgt i32 %wrexpected.0, %conv86
  br i1 %cmp87.not, label %if.end84.if.end190_crit_edge, label %if.then89

if.end84.if.end190_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end190

if.then89:                                        ; preds = %if.end84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyberjack_write.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyberjack_write, %if.then102)) #7
          to label %do.end105 [label %if.then102], !srcloc !123

if.then102:                                       ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyberjack_write.__UNIQUE_ID_ddebug242, ptr noundef %dev1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10) #7
  br label %do.end105

do.end105:                                        ; preds = %if.then102, %if.then89
  %bulk_out_size = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 20
  %17 = ptrtoint ptr %bulk_out_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bulk_out_size, align 4
  %19 = tail call i32 @llvm.smin.i32(i32 %wrexpected.0, i32 %18)
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 21
  %20 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_urb, align 8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %transfer_buffer, align 4
  %24 = call ptr @memcpy(ptr %23, ptr %wrbuf, i32 %19)
  %conv111 = trunc i32 %19 to i16
  %wrsent = getelementptr inbounds %struct.cyberjack_private, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %wrsent to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv111, ptr %wrsent, align 4
  %26 = load ptr, ptr %write_urb, align 8
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 19
  %27 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %19, ptr %transfer_buffer_length, align 4
  %28 = load ptr, ptr %write_urb, align 8
  %call114 = tail call i32 @usb_submit_urb(ptr noundef %28, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %do.body126, label %cleanup

do.body126:                                       ; preds = %do.end105
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyberjack_write.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyberjack_write, %if.then138)) #7
          to label %do.body144 [label %if.then138], !srcloc !123

if.then138:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %wrsent to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %wrsent, align 4
  %conv140 = sext i16 %30 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyberjack_write.__UNIQUE_ID_ddebug243, ptr noundef %dev1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.10, i32 noundef %conv140) #7
  br label %do.body144

do.body144:                                       ; preds = %if.then138, %do.body126
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyberjack_write.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyberjack_write, %if.then156)) #7
          to label %do.end161 [label %if.then156], !srcloc !123

if.then156:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %wrfilled to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %wrfilled, align 2
  %conv158 = sext i16 %32 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyberjack_write.__UNIQUE_ID_ddebug244, ptr noundef %dev1, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.10, i32 noundef %conv158) #7
  br label %do.end161

do.end161:                                        ; preds = %if.then156, %do.body144
  %33 = ptrtoint ptr %wrsent to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %wrsent, align 4
  %35 = ptrtoint ptr %wrfilled to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %wrfilled, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %36)
  %cmp166.not = icmp slt i16 %34, %36
  br i1 %cmp166.not, label %do.end161.if.end190_crit_edge, label %do.body169

do.end161.if.end190_crit_edge:                    ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end190

do.body169:                                       ; preds = %do.end161
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyberjack_write.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyberjack_write, %if.then181)) #7
          to label %cleanup.thread [label %if.then181], !srcloc !123

if.then181:                                       ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyberjack_write.__UNIQUE_ID_ddebug245, ptr noundef %dev1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.10) #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then181, %do.body169
  %37 = call ptr @memset(ptr %wrbuf, i32 0, i32 324)
  br label %if.end190

cleanup:                                          ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.10, i32 noundef %call114) #11
  %38 = ptrtoint ptr %wrfilled to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %wrfilled, align 2
  %39 = ptrtoint ptr %wrsent to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %wrsent, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call32) #7
  tail call void @_set_bit(i32 noundef 0, ptr noundef %write_urbs_free) #7
  br label %cleanup192

if.end190:                                        ; preds = %cleanup.thread, %do.end161.if.end190_crit_edge, %if.end84.if.end190_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call32) #7
  br label %cleanup192

cleanup192:                                       ; preds = %if.end190, %cleanup, %if.then40, %if.then22, %do.body10, %if.then5, %do.body
  %retval.1 = phi i32 [ 0, %if.then40 ], [ %count, %if.end190 ], [ 0, %cleanup ], [ 0, %if.then5 ], [ 0, %if.then22 ], [ 0, %do.body ], [ 0, %do.body10 ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cyberjack_write_room(ptr nocapture noundef readnone %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 32
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cyberjack_read_int_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %4 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transfer_buffer, align 4
  %status2 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup114_crit_edge

entry.cleanup114_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup114

if.end:                                           ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %8 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual_length, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyberjack_read_int_callback, %if.then.i)) #7
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !123

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev1, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.cyberjack_read_int_callback, i32 noundef %9, i32 noundef %9, ptr noundef %5) #7
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %if.end
  %10 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp = icmp eq i32 %11, 4
  br i1 %cmp, label %land.lhs.true, label %usb_serial_debug_data.exit.resubmit_crit_edge

usb_serial_debug_data.exit.resubmit_crit_edge:    ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %resubmit

land.lhs.true:                                    ; preds = %usb_serial_debug_data.exit
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp4 = icmp eq i8 %13, 1
  br i1 %cmp4, label %if.then6, label %land.lhs.true.resubmit_crit_edge

land.lhs.true.resubmit_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %resubmit

if.then6:                                         ; preds = %land.lhs.true
  %arrayidx7 = getelementptr i8, ptr %5, i32 3
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx7, align 1
  %conv9 = zext i8 %15 to i32
  %shl = shl nuw nsw i32 %conv9, 8
  %arrayidx10 = getelementptr i8, ptr %5, i32 2
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %17 to i32
  %add = or i32 %shl, %conv11
  %add12 = add nuw nsw i32 %add, 3
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #7
  %rdtodo = getelementptr inbounds %struct.cyberjack_private, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %rdtodo to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rdtodo, align 4
  %conv21 = sext i16 %19 to i32
  %conv22 = and i32 %add12, 65535
  %sub = sub nsw i32 32767, %conv22
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv21)
  %cmp23 = icmp slt i32 %sub, %conv21
  br i1 %cmp23, label %do.body26, label %if.end37

do.body26:                                        ; preds = %if.then6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyberjack_read_int_callback.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyberjack_read_int_callback, %if.then32)) #7
          to label %do.end35 [label %if.then32], !srcloc !123

if.then32:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyberjack_read_int_callback.__UNIQUE_ID_ddebug246, ptr noundef %dev1, ptr noundef nonnull @.str.22) #7
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %do.body26
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call18) #7
  br label %resubmit

if.end37:                                         ; preds = %if.then6
  %20 = trunc i32 %add12 to i16
  %conv42 = add i16 %19, %20
  %21 = ptrtoint ptr %rdtodo to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv42, ptr %rdtodo, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyberjack_read_int_callback.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyberjack_read_int_callback, %if.then55)) #7
          to label %do.end60 [label %if.then55], !srcloc !123

if.then55:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %rdtodo to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %rdtodo, align 4
  %conv57 = sext i16 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyberjack_read_int_callback.__UNIQUE_ID_ddebug247, ptr noundef %dev1, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.cyberjack_read_int_callback, i32 noundef %conv57) #7
  br label %do.end60

do.end60:                                         ; preds = %if.then55, %if.end37
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call18) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool62.not = icmp eq i16 %19, 0
  br i1 %tobool62.not, label %if.then63, label %do.end60.resubmit_crit_edge

do.end60.resubmit_crit_edge:                      ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %resubmit

if.then63:                                        ; preds = %do.end60
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 14
  %24 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_urb, align 4
  %call64 = tail call i32 @usb_submit_urb(ptr noundef %25, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.then63.do.body71_crit_edge, label %do.end69

if.then63.do.body71_crit_edge:                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body71

do.end69:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.cyberjack_read_int_callback, i32 noundef %call64) #11
  br label %do.body71

do.body71:                                        ; preds = %do.end69, %if.then63.do.body71_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyberjack_read_int_callback.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyberjack_read_int_callback, %if.then83)) #7
          to label %resubmit [label %if.then83], !srcloc !123

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyberjack_read_int_callback.__UNIQUE_ID_ddebug248, ptr noundef %dev1, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.cyberjack_read_int_callback) #7
  br label %resubmit

resubmit:                                         ; preds = %if.then83, %do.body71, %do.end60.resubmit_crit_edge, %do.end35, %land.lhs.true.resubmit_crit_edge, %usb_serial_debug_data.exit.resubmit_crit_edge
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %interrupt_in_urb, align 4
  %call90 = tail call i32 @usb_submit_urb(ptr noundef %27, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %resubmit.do.body98_crit_edge, label %do.end95

resubmit.do.body98_crit_edge:                     ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body98

do.end95:                                         ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #11
  br label %do.body98

do.body98:                                        ; preds = %do.end95, %resubmit.do.body98_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyberjack_read_int_callback.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyberjack_read_int_callback, %if.then110)) #7
          to label %cleanup114 [label %if.then110], !srcloc !123

if.then110:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyberjack_read_int_callback.__UNIQUE_ID_ddebug249, ptr noundef %dev1, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.cyberjack_read_int_callback) #7
  br label %cleanup114

cleanup114:                                       ; preds = %if.then110, %do.body98, %entry.cleanup114_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cyberjack_read_bulk_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %4 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transfer_buffer, align 4
  %status2 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status2, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %8 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual_length, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyberjack_read_bulk_callback, %if.then.i)) #7
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !123

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev1, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.cyberjack_read_bulk_callback, i32 noundef %9, i32 noundef %9, ptr noundef %5) #7
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end8, label %do.body

do.body:                                          ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyberjack_read_bulk_callback.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyberjack_read_bulk_callback, %if.then7)) #7
          to label %cleanup [label %if.then7], !srcloc !123

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyberjack_read_bulk_callback.__UNIQUE_ID_ddebug250, ptr noundef %dev1, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.cyberjack_read_bulk_callback, i32 noundef %7) #7
  br label %cleanup

if.end8:                                          ; preds = %usb_serial_debug_data.exit
  %10 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not = icmp eq i32 %11, 0
  br i1 %tobool10.not, label %if.end8.do.body18_crit_edge, label %if.then11

if.end8.do.body18_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body18

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %port12 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  %call.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port12, ptr noundef %5, i8 noundef zeroext 0, i32 noundef %11) #7
  tail call void @tty_flip_buffer_push(ptr noundef %port12) #7
  br label %do.body18

do.body18:                                        ; preds = %if.then11, %if.end8.do.body18_crit_edge
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #7
  %12 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual_length, align 4
  %rdtodo = getelementptr inbounds %struct.cyberjack_private, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %rdtodo to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %rdtodo, align 4
  %16 = trunc i32 %13 to i16
  %conv28 = sub i16 %15, %16
  %17 = tail call i16 @llvm.smax.i16(i16 %conv28, i16 0)
  %18 = ptrtoint ptr %rdtodo to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %rdtodo, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call21) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyberjack_read_bulk_callback.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyberjack_read_bulk_callback, %if.then50)) #7
          to label %do.end54 [label %if.then50], !srcloc !123

if.then50:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  %conv51122 = zext i16 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyberjack_read_bulk_callback.__UNIQUE_ID_ddebug251, ptr noundef %dev1, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.cyberjack_read_bulk_callback, i32 noundef %conv51122) #7
  br label %do.end54

do.end54:                                         ; preds = %if.then50, %do.body18
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %conv28)
  %tobool55.not = icmp slt i16 %conv28, 1
  br i1 %tobool55.not, label %do.end54.cleanup_crit_edge, label %if.then56

do.end54.cleanup_crit_edge:                       ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then56:                                        ; preds = %do.end54
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 14
  %19 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read_urb, align 4
  %call57 = tail call i32 @usb_submit_urb(ptr noundef %20, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then56.do.body64_crit_edge, label %do.end62

if.then56.do.body64_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body64

do.end62:                                         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.cyberjack_read_bulk_callback, i32 noundef %call57) #11
  br label %do.body64

do.body64:                                        ; preds = %do.end62, %if.then56.do.body64_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyberjack_read_bulk_callback.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyberjack_read_bulk_callback, %if.then76)) #7
          to label %cleanup [label %if.then76], !srcloc !123

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyberjack_read_bulk_callback.__UNIQUE_ID_ddebug252, ptr noundef %dev1, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.cyberjack_read_bulk_callback) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %do.body64, %do.end54.cleanup_crit_edge, %if.then7, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cyberjack_write_bulk_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %status2 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.body10, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyberjack_write_bulk_callback.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyberjack_write_bulk_callback, %if.then7)) #7
          to label %do.end [label %if.then7], !srcloc !123

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyberjack_write_bulk_callback.__UNIQUE_ID_ddebug253, ptr noundef %dev1, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, i32 noundef %5) #7
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %write_urbs_free = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 25
  tail call void @_set_bit(i32 noundef 0, ptr noundef %write_urbs_free) #7
  br label %cleanup146

do.body10:                                        ; preds = %entry
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #7
  %wrfilled = getelementptr inbounds %struct.cyberjack_private, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %wrfilled to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %wrfilled, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool18.not = icmp eq i16 %7, 0
  br i1 %tobool18.not, label %do.body10.if.then143_crit_edge, label %if.then19

do.body10.if.then143_crit_edge:                   ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then143

if.then19:                                        ; preds = %do.body10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyberjack_write_bulk_callback.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyberjack_write_bulk_callback, %if.then32)) #7
          to label %do.end35 [label %if.then32], !srcloc !123

if.then32:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyberjack_write_bulk_callback.__UNIQUE_ID_ddebug254, ptr noundef %dev1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30) #7
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %if.then19
  %8 = ptrtoint ptr %wrfilled to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %wrfilled, align 2
  %conv37 = sext i16 %9 to i32
  %wrsent = getelementptr inbounds %struct.cyberjack_private, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %wrsent to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %wrsent, align 4
  %conv38 = sext i16 %11 to i32
  %sub = sub nsw i32 %conv37, %conv38
  %bulk_out_size = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 20
  %12 = ptrtoint ptr %bulk_out_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bulk_out_size, align 4
  %14 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %13)
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 21
  %15 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_urb, align 8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %transfer_buffer, align 4
  %wrbuf = getelementptr inbounds %struct.cyberjack_private, ptr %3, i32 0, i32 2
  %add.ptr = getelementptr i8, ptr %wrbuf, i32 %conv38
  %19 = call ptr @memcpy(ptr %18, ptr %add.ptr, i32 %14)
  %20 = ptrtoint ptr %wrsent to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %wrsent, align 4
  %22 = trunc i32 %14 to i16
  %conv51 = add i16 %21, %22
  store i16 %conv51, ptr %wrsent, align 4
  %23 = load ptr, ptr %write_urb, align 8
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %14, ptr %transfer_buffer_length, align 4
  %25 = load ptr, ptr %write_urb, align 8
  %call54 = tail call i32 @usb_submit_urb(ptr noundef %25, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end62, label %exit

if.end62:                                         ; preds = %do.end35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyberjack_write_bulk_callback.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyberjack_write_bulk_callback, %if.then75)) #7
          to label %do.body81 [label %if.then75], !srcloc !123

if.then75:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %wrsent to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %wrsent, align 4
  %conv77 = sext i16 %27 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyberjack_write_bulk_callback.__UNIQUE_ID_ddebug255, ptr noundef %dev1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.30, i32 noundef %conv77) #7
  br label %do.body81

do.body81:                                        ; preds = %if.then75, %if.end62
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyberjack_write_bulk_callback.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyberjack_write_bulk_callback, %if.then93)) #7
          to label %do.end98 [label %if.then93], !srcloc !123

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %wrfilled to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %wrfilled, align 2
  %conv95 = sext i16 %29 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyberjack_write_bulk_callback.__UNIQUE_ID_ddebug256, ptr noundef %dev1, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.30, i32 noundef %conv95) #7
  br label %do.end98

do.end98:                                         ; preds = %if.then93, %do.body81
  %30 = ptrtoint ptr %wrsent to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %wrsent, align 4
  %32 = ptrtoint ptr %wrfilled to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %wrfilled, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %33)
  %cmp110.not = icmp slt i16 %31, %33
  br i1 %cmp110.not, label %lor.lhs.false, label %do.end98.do.body117_crit_edge

do.end98.do.body117_crit_edge:                    ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body117

lor.lhs.false:                                    ; preds = %do.end98
  %conv107 = sext i16 %31 to i32
  %arrayidx = getelementptr %struct.cyberjack_private, ptr %3, i32 0, i32 2, i32 2
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx, align 2
  %conv100 = zext i8 %35 to i32
  %shl = shl nuw nsw i32 %conv100, 8
  %arrayidx102 = getelementptr %struct.cyberjack_private, ptr %3, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx102, align 1
  %conv103 = zext i8 %37 to i32
  %add104 = or i32 %shl, %conv103
  %add105 = add nuw nsw i32 %add104, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add105, i32 %conv107)
  %cmp114.not = icmp sgt i32 %add105, %conv107
  br i1 %cmp114.not, label %lor.lhs.false.exit.thread_crit_edge, label %lor.lhs.false.do.body117_crit_edge

lor.lhs.false.do.body117_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body117

lor.lhs.false.exit.thread_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.thread

do.body117:                                       ; preds = %lor.lhs.false.do.body117_crit_edge, %do.end98.do.body117_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyberjack_write_bulk_callback.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyberjack_write_bulk_callback, %if.then129)) #7
          to label %do.end132 [label %if.then129], !srcloc !123

if.then129:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyberjack_write_bulk_callback.__UNIQUE_ID_ddebug257, ptr noundef %dev1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.30) #7
  br label %do.end132

do.end132:                                        ; preds = %if.then129, %do.body117
  %38 = call ptr @memset(ptr %wrbuf, i32 0, i32 324)
  br label %exit.thread

exit.thread:                                      ; preds = %do.end132, %lor.lhs.false.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call13) #7
  br label %if.end145

exit:                                             ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.30, i32 noundef %call54) #11
  %39 = ptrtoint ptr %wrfilled to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %wrfilled, align 2
  %40 = ptrtoint ptr %wrsent to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %wrsent, align 4
  br label %if.then143

if.then143:                                       ; preds = %exit, %do.body10.if.then143_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call13) #7
  %write_urbs_free144 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 25
  tail call void @_set_bit(i32 noundef 0, ptr noundef %write_urbs_free144) #7
  br label %if.end145

if.end145:                                        ; preds = %if.then143, %exit.thread
  tail call void @usb_serial_port_softint(ptr noundef %1) #7
  br label %cleanup146

cleanup146:                                       ; preds = %if.end145, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_port_softint(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !21, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !64, !65, !67, !69, !70, !72, !73, !75, !76, !77, !79, !80, !82, !83, !85, !86, !88, !90, !91, !93, !95, !96, !98, !100, !101, !102, !104, !105, !107, !108, !110, !112}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @__initcall__kmod_cyberjack__258_419_usb_serial_module_init6, !1, !"__initcall__kmod_cyberjack__258_419_usb_serial_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/cyberjack.c", i32 419, i32 1}
!2 = !{ptr @__exitcall_usb_serial_module_exit, !1, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author259, !4, !"__UNIQUE_ID_author259", i1 false, i1 false}
!4 = !{!"../drivers/usb/serial/cyberjack.c", i32 421, i32 1}
!5 = !{ptr @__UNIQUE_ID_description260, !6, !"__UNIQUE_ID_description260", i1 false, i1 false}
!6 = !{!"../drivers/usb/serial/cyberjack.c", i32 422, i32 1}
!7 = !{ptr @__UNIQUE_ID_file261, !8, !"__UNIQUE_ID_file261", i1 false, i1 false}
!8 = !{!"../drivers/usb/serial/cyberjack.c", i32 423, i32 1}
!9 = !{ptr @__UNIQUE_ID_license262, !8, !"__UNIQUE_ID_license262", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @id_table, !12, !"id_table", i1 false, i1 false}
!12 = !{!"../drivers/usb/serial/cyberjack.c", i32 61, i32 35}
!13 = !{ptr @serial_drivers, !14, !"serial_drivers", i1 false, i1 false}
!14 = !{!"../drivers/usb/serial/cyberjack.c", i32 88, i32 41}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/serial/cyberjack.c", i32 73, i32 18}
!17 = !{ptr @cyberjack_device, !18, !"cyberjack_device", i1 false, i1 false}
!18 = !{!"../drivers/usb/serial/cyberjack.c", i32 68, i32 33}
!19 = !{ptr @cyberjack_port_probe.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/usb/serial/cyberjack.c", i32 109, i32 2}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/serial/cyberjack.c", i32 118, i32 3}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @cyberjack_port_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @cyberjack_port_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/serial/cyberjack.c", i32 139, i32 2}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @cyberjack_open.__UNIQUE_ID_ddebug238, !31, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/serial/cyberjack.c", i32 168, i32 3}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @cyberjack_write.__UNIQUE_ID_ddebug239, !35, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/serial/cyberjack.c", i32 173, i32 3}
!40 = !{ptr @cyberjack_write.__UNIQUE_ID_ddebug240, !39, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/serial/cyberjack.c", i32 195, i32 3}
!43 = !{ptr @cyberjack_write.__UNIQUE_ID_ddebug241, !42, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/serial/cyberjack.c", i32 203, i32 3}
!46 = !{ptr @cyberjack_write.__UNIQUE_ID_ddebug242, !45, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/serial/cyberjack.c", i32 216, i32 4}
!49 = !{ptr @cyberjack_write._entry, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @cyberjack_write._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/serial/cyberjack.c", i32 227, i32 3}
!53 = !{ptr @cyberjack_write.__UNIQUE_ID_ddebug243, !52, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/serial/cyberjack.c", i32 228, i32 3}
!56 = !{ptr @cyberjack_write.__UNIQUE_ID_ddebug244, !55, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/serial/cyberjack.c", i32 231, i32 4}
!59 = !{ptr @cyberjack_write.__UNIQUE_ID_ddebug245, !58, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/usb/serial.h", i32 393, i32 2}
!62 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, !61, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!65 = !{ptr @__func__.cyberjack_read_int_callback, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/serial/cyberjack.c", i32 263, i32 29}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/serial/cyberjack.c", i32 277, i32 4}
!69 = !{ptr @cyberjack_read_int_callback.__UNIQUE_ID_ddebug246, !68, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!70 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/serial/cyberjack.c", i32 285, i32 3}
!72 = !{ptr @cyberjack_read_int_callback.__UNIQUE_ID_ddebug247, !71, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/serial/cyberjack.c", i32 292, i32 5}
!75 = !{ptr @cyberjack_read_int_callback._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @cyberjack_read_int_callback._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/serial/cyberjack.c", i32 294, i32 4}
!79 = !{ptr @cyberjack_read_int_callback.__UNIQUE_ID_ddebug248, !78, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!80 = !{ptr @cyberjack_read_int_callback._entry.26, !81, !"_entry", i1 false, i1 false}
!81 = !{!"../drivers/usb/serial/cyberjack.c", i32 301, i32 3}
!82 = !{ptr @cyberjack_read_int_callback._entry_ptr.27, !81, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/serial/cyberjack.c", i32 302, i32 2}
!85 = !{ptr @cyberjack_read_int_callback.__UNIQUE_ID_ddebug249, !84, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!86 = !{ptr @__func__.cyberjack_read_bulk_callback, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/serial/cyberjack.c", i32 316, i32 29}
!88 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/serial/cyberjack.c", i32 318, i32 3}
!90 = !{ptr @cyberjack_read_bulk_callback.__UNIQUE_ID_ddebug250, !89, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!91 = !{ptr @cyberjack_read_bulk_callback.__UNIQUE_ID_ddebug251, !92, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!92 = !{!"../drivers/usb/serial/cyberjack.c", i32 339, i32 2}
!93 = !{ptr @cyberjack_read_bulk_callback._entry, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../drivers/usb/serial/cyberjack.c", i32 345, i32 4}
!95 = !{ptr @cyberjack_read_bulk_callback._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @cyberjack_read_bulk_callback.__UNIQUE_ID_ddebug252, !97, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!97 = !{!"../drivers/usb/serial/cyberjack.c", i32 347, i32 3}
!98 = !{ptr @.str.30, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/serial/cyberjack.c", i32 361, i32 3}
!100 = !{ptr @.str.31, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @cyberjack_write_bulk_callback.__UNIQUE_ID_ddebug253, !99, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!102 = !{ptr @.str.32, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/serial/cyberjack.c", i32 373, i32 3}
!104 = !{ptr @cyberjack_write_bulk_callback.__UNIQUE_ID_ddebug254, !103, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!105 = !{ptr @cyberjack_write_bulk_callback._entry, !106, !"_entry", i1 false, i1 false}
!106 = !{!"../drivers/usb/serial/cyberjack.c", i32 388, i32 4}
!107 = !{ptr @cyberjack_write_bulk_callback._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @cyberjack_write_bulk_callback.__UNIQUE_ID_ddebug255, !109, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!109 = !{!"../drivers/usb/serial/cyberjack.c", i32 398, i32 3}
!110 = !{ptr @cyberjack_write_bulk_callback.__UNIQUE_ID_ddebug256, !111, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!111 = !{!"../drivers/usb/serial/cyberjack.c", i32 399, i32 3}
!112 = !{ptr @cyberjack_write_bulk_callback.__UNIQUE_ID_ddebug257, !113, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!113 = !{!"../drivers/usb/serial/cyberjack.c", i32 405, i32 4}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{i64 2148701354, i64 2148701359, i64 2148701372, i64 2148701416, i64 2148701450, i64 2148701471}
