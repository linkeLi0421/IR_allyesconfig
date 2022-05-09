; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/ark3116.c_pt.bc'
source_filename = "../drivers/usb/serial/ark3116.c"
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
%struct.ark3116_private = type { i32, %struct.mutex, i32, i32, i32, i32, %struct.spinlock, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.usb_serial = type { ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, [16 x ptr], %struct.kref, %struct.mutex, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@__initcall__kmod_ark3116__246_639_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ark3116_device, ptr null], [24 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file247 = internal constant [40 x i8] c"ark3116.file=drivers/usb/serial/ark3116\00", section ".modinfo", align 1
@__UNIQUE_ID_license248 = internal constant [20 x i8] c"ark3116.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [63 x i8] c"ark3116.author=Bart Hartgers <bart.hartgers+ark3116@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [51 x i8] c"ark3116.description=USB ARK3116 serial/IrDA driver\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ark3116\00", [24 x i8] zeroinitializer }, align 32
@id_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 25927, i16 562, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6380, i16 12568, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ark3116_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr null, ptr @id_table, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 1, i8 1, i8 1, i8 1, i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ark3116_port_probe, ptr @ark3116_port_remove, ptr null, ptr null, ptr null, ptr @ark3116_open, ptr @ark3116_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ark3116_set_termios, ptr @ark3116_break_ctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ark3116_tiocmget, ptr @ark3116_tiocmset, ptr @usb_serial_generic_tiocmiwait, ptr @usb_serial_generic_get_icount, ptr null, ptr null, ptr null, ptr @ark3116_read_int_callback, ptr null, ptr null, ptr null, ptr @ark3116_process_read_urb, ptr null }, [72 x i8] zeroinitializer }, align 32
@ark3116_port_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&priv->hw_lock\00", [17 x i8] zeroinitializer }, align 32
@ark3116_port_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&priv->status_lock\00", [45 x i8] zeroinitializer }, align 32
@ark3116_port_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 176, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"using %s mode\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ark3116_port_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/serial/ark3116.c\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ark3116_port_probe._entry_ptr = internal global ptr @ark3116_port_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IrDA\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RS232\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ark3116_open.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.6, ptr @.str.12, i8 0, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ark3116_open\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s - usb_serial_generic_open failed: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ark3116_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.6, i32 362, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"submit irq_in urb failed %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ark3116_open._entry_ptr = internal global ptr @ark3116_open._entry, section ".printk_index", align 4
@ark3116_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.6, i32 104, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to read register %u: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ark3116_read_reg\00", [47 x i8] zeroinitializer }, align 32
@ark3116_read_reg._entry_ptr = internal global ptr @ark3116_read_reg._entry, section ".printk_index", align 4
@ark3116_set_termios.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.6, ptr @.str.18, i8 0, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ark3116_set_termios\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s - setting bps to %d\0A\00", [40 x i8] zeroinitializer }, align 32
@ark3116_set_termios.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.6, ptr @.str.19, i8 0, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s - setting hcr:0x%02x,lcr:0x%02x,quot:%d\0A\00", [52 x i8] zeroinitializer }, align 32
@ark3116_set_termios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.6, i32 302, ptr @.str.21, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"software flow control not implemented\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ark3116_set_termios._entry_ptr = internal global ptr @ark3116_set_termios._entry, section ".printk_index", align 4
@ark3116_read_int_callback.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.6, ptr @.str.23, i8 0, i8 -125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ark3116_read_int_callback\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - urb shutting down with status: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@ark3116_read_int_callback.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.6, ptr @.str.24, i8 0, i8 -124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - nonzero urb status received: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ark3116_read_int_callback.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.6, ptr @.str.25, i8 0, i8 -122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: iir=%02x\0A\00", [18 x i8] zeroinitializer }, align 32
@ark3116_read_int_callback.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.6, ptr @.str.26, i8 0, i8 -122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: msr=%02x\0A\00", [18 x i8] zeroinitializer }, align 32
@ark3116_read_int_callback.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.6, ptr @.str.27, i8 0, i8 -120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: lsr=%02x\0A\00", [18 x i8] zeroinitializer }, align 32
@ark3116_read_int_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.22, ptr @.str.6, i32 561, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to resubmit interrupt urb: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ark3116_read_int_callback._entry_ptr = internal global ptr @ark3116_read_int_callback._entry, section ".printk_index", align 4
@usb_serial_debug_data.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.30, ptr @.str.31, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb_serial_debug_data\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/usb/serial.h\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - length = %d, data = %*ph\0A\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 460800, i64 921600]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 4, i64 0, i64 6]
@___asan_gen_.34 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 635, i32 41 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 639, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 43, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"ark3116_device\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 611, i32 33 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 133, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 134, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 176, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 338, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 361, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 102, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 232, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 259, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 301, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 525, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 529, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 536, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 538, i32 5 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 543, i32 5 }
@___asan_gen_.142 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.146 = private constant [32 x i8] c"../drivers/usb/serial/ark3116.c\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 560, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [30 x i8] c"../include/linux/usb/serial.h\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 393, i32 2 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file247, ptr @__UNIQUE_ID_license248, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_ark3116__246_639_usb_serial_module_init6, ptr @ark3116_open._entry, ptr @ark3116_open._entry_ptr, ptr @ark3116_port_probe._entry, ptr @ark3116_port_probe._entry_ptr, ptr @ark3116_read_int_callback._entry, ptr @ark3116_read_int_callback._entry_ptr, ptr @ark3116_read_reg._entry, ptr @ark3116_read_reg._entry_ptr, ptr @ark3116_set_termios._entry, ptr @ark3116_set_termios._entry_ptr, ptr @usb_serial_module_exit, ptr @serial_drivers, ptr @.str, ptr @id_table, ptr @ark3116_device, ptr @ark3116_port_probe.__key, ptr @.str.1, ptr @ark3116_port_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark3116_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark3116_port_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark3116_port_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark3116_port_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark3116_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark3116_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark3116_set_termios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ark3116_read_int_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }]
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
define internal i32 @ark3116_port_probe(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 164) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  %hw_lock = getelementptr inbounds %struct.ark3116_private, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %hw_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ark3116_port_probe.__key) #5
  %status_lock = getelementptr inbounds %struct.ark3116_private, ptr %call7.i.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %status_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @ark3116_port_probe.__key.2, i16 noundef signext 3) #5
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %idVendor.i = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 16, i32 7
  %5 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %idVendor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -5096, i16 %6)
  %cmp.i = icmp eq i16 %6, -5096
  br i1 %cmp.i, label %land.lhs.true.i, label %do.body.if.end.i_crit_edge

do.body.if.end.i_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %do.body
  %idProduct.i = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 16, i32 8
  %7 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %idProduct.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6193, i16 %8)
  %cmp5.i = icmp eq i16 %8, 6193
  br i1 %cmp5.i, label %land.lhs.true.i.is_irda.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i.is_irda.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %is_irda.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %do.body.if.end.i_crit_edge
  br label %is_irda.exit

is_irda.exit:                                     ; preds = %if.end.i, %land.lhs.true.i.is_irda.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ 1, %land.lhs.true.i.is_irda.exit_crit_edge ]
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %retval.0.i, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i = shl i32 %14, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or.i, i8 noundef zeroext -2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #5
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl.i.i71 = shl i32 %18, 8
  %or.i72 = or i32 %shl.i.i71, -2147483648
  %call3.i73 = tail call i32 @usb_control_msg(ptr noundef %16, i32 noundef %or.i72, i8 noundef zeroext -2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #5
  %hcr = getelementptr inbounds %struct.ark3116_private, ptr %call7.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %hcr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %hcr, align 8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i.i74 = shl i32 %23, 8
  %or.i75 = or i32 %shl.i.i74, -2147483648
  %call3.i76 = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %or.i75, i8 noundef zeroext -2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #5
  %mcr = getelementptr inbounds %struct.ark3116_private, ptr %call7.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %mcr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %mcr, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %shl.i.i77 = shl i32 %28, 8
  %or.i78 = or i32 %shl.i.i77, -2147483648
  %call3.i79 = tail call i32 @usb_control_msg(ptr noundef %26, i32 noundef %or.i78, i8 noundef zeroext -2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #5
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool12.not = icmp eq i32 %30, 0
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 8
  %shl.i.i80 = shl i32 %34, 8
  %or.i81 = or i32 %shl.i.i80, -2147483648
  br i1 %tobool12.not, label %if.then13, label %if.else

if.then13:                                        ; preds = %is_irda.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i82 = tail call i32 @usb_control_msg(ptr noundef %32, i32 noundef %or.i81, i8 noundef zeroext -2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 11, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #5
  br label %if.end19

if.else:                                          ; preds = %is_irda.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i85 = tail call i32 @usb_control_msg(ptr noundef %32, i32 noundef %or.i81, i8 noundef zeroext -2, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 11, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #5
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 8
  %shl.i.i86 = shl i32 %38, 8
  %or.i87 = or i32 %shl.i.i86, -2147483648
  %call3.i88 = tail call i32 @usb_control_msg(ptr noundef %36, i32 noundef %or.i87, i8 noundef zeroext -2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 12, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #5
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 8
  %shl.i.i89 = shl i32 %42, 8
  %or.i90 = or i32 %shl.i.i89, -2147483648
  %call3.i91 = tail call i32 @usb_control_msg(ptr noundef %40, i32 noundef %or.i90, i8 noundef zeroext -2, i8 noundef zeroext 64, i16 noundef zeroext 65, i16 noundef zeroext 13, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #5
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 8
  %shl.i.i92 = shl i32 %46, 8
  %or.i93 = or i32 %shl.i.i92, -2147483648
  %call3.i94 = tail call i32 @usb_control_msg(ptr noundef %44, i32 noundef %or.i93, i8 noundef zeroext -2, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 10, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #5
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then13
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 8
  %shl.i.i95 = shl i32 %50, 8
  %or.i96 = or i32 %shl.i.i95, -2147483648
  %call3.i97 = tail call i32 @usb_control_msg(ptr noundef %48, i32 noundef %or.i96, i8 noundef zeroext -2, i8 noundef zeroext 64, i16 noundef zeroext 128, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #5
  %quot = getelementptr inbounds %struct.ark3116_private, ptr %call7.i.i, i32 0, i32 2
  %51 = ptrtoint ptr %quot to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 313, ptr %quot, align 8
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 8
  %shl.i.i98 = shl i32 %55, 8
  %or.i99 = or i32 %shl.i.i98, -2147483648
  %call3.i100 = tail call i32 @usb_control_msg(ptr noundef %53, i32 noundef %or.i99, i8 noundef zeroext -2, i8 noundef zeroext 64, i16 noundef zeroext 57, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #5
  %56 = ptrtoint ptr %quot to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %quot, align 8
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 8
  %shl.i.i101 = shl i32 %61, 8
  %or.i102 = or i32 %shl.i.i101, -2147483648
  %62 = trunc i32 %57 to i16
  %63 = lshr i16 %62, 8
  %call3.i104 = tail call i32 @usb_control_msg(ptr noundef %59, i32 noundef %or.i102, i8 noundef zeroext -2, i8 noundef zeroext 64, i16 noundef zeroext %63, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #5
  %lcr = getelementptr inbounds %struct.ark3116_private, ptr %call7.i.i, i32 0, i32 3
  %64 = ptrtoint ptr %lcr to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 3, ptr %lcr, align 4
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 8
  %shl.i.i105 = shl i32 %68, 8
  %or.i106 = or i32 %shl.i.i105, -2147483648
  %call3.i107 = tail call i32 @usb_control_msg(ptr noundef %66, i32 noundef %or.i106, i8 noundef zeroext -2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #5
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 8
  %shl.i.i108 = shl i32 %72, 8
  %or.i109 = or i32 %shl.i.i108, -2147483648
  %call3.i110 = tail call i32 @usb_control_msg(ptr noundef %70, i32 noundef %or.i109, i8 noundef zeroext -2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 14, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #5
  %73 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool31.not = icmp eq i32 %74, 0
  br i1 %tobool31.not, label %if.end19.do.end37_crit_edge, label %if.then32

if.end19.do.end37_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end37

if.then32:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 8
  %shl.i.i111 = shl i32 %78, 8
  %or.i112 = or i32 %shl.i.i111, -2147483648
  %call3.i113 = tail call i32 @usb_control_msg(ptr noundef %76, i32 noundef %or.i112, i8 noundef zeroext -2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 9, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #5
  br label %do.end37

do.end37:                                         ; preds = %if.then32, %if.end19.do.end37_crit_edge
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %79 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool39.not = icmp eq i32 %80, 0
  %cond = select i1 %tobool39.not, ptr @.str.10, ptr @.str.9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull %cond) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end37 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ark3116_port_remove(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hw_lock = getelementptr inbounds %struct.ark3116_private, ptr %1, i32 0, i32 1
  tail call void @mutex_destroy(ptr noundef %hw_lock) #5
  tail call void @kfree(ptr noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ark3116_open(ptr noundef %tty, ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 1) #8
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @usb_serial_generic_open(ptr noundef %tty, ptr noundef %port) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end11, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ark3116_open.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ark3116_open, %if.then9)) #5
          to label %cleanup.sink.split [label %if.then9], !srcloc !93

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ark3116_open.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef %call3) #5
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i = shl i32 %8, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or2.i, i8 noundef zeroext -2, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 1000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 1
  br i1 %cmp.i, label %do.end.i, label %if.end11.ark3116_read_reg.exit_crit_edge

if.end11.ark3116_read_reg.exit_crit_edge:         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %ark3116_read_reg.exit

do.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %interface.i = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %interface.i, align 4
  %dev5.i = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i, ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef %call3.i) #9
  br label %ark3116_read_reg.exit

ark3116_read_reg.exit:                            ; preds = %do.end.i, %if.end11.ark3116_read_reg.exit_crit_edge
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i68 = shl i32 %14, 8
  %or2.i69 = or i32 %shl.i.i68, -2147483520
  %call3.i70 = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or2.i69, i8 noundef zeroext -2, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 6, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 1000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i70)
  %cmp.i71 = icmp slt i32 %call3.i70, 1
  br i1 %cmp.i71, label %do.end.i76, label %if.end16

do.end.i76:                                       ; preds = %ark3116_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %interface.i72 = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %interface.i72 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %interface.i72, align 4
  %dev5.i73 = getelementptr inbounds %struct.usb_interface, ptr %16, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i73, ptr noundef nonnull @.str.15, i32 noundef 6, i32 noundef %call3.i70) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i70)
  %cmp6.i74 = icmp eq i32 %call3.i70, 0
  %spec.select = select i1 %cmp6.i74, i32 -5, i32 %call3.i70
  br label %err_close

if.end16:                                         ; preds = %ark3116_read_reg.exit
  %17 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %call7.i, align 8
  %conv = zext i8 %18 to i32
  %msr = getelementptr inbounds %struct.ark3116_private, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %msr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv, ptr %msr, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i.i79 = shl i32 %23, 8
  %or2.i80 = or i32 %shl.i.i79, -2147483520
  %call3.i81 = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %or2.i80, i8 noundef zeroext -2, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 5, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 1000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i81)
  %cmp.i82 = icmp slt i32 %call3.i81, 1
  br i1 %cmp.i82, label %do.end.i87, label %if.end20

do.end.i87:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %interface.i83 = getelementptr inbounds %struct.usb_serial, ptr %3, i32 0, i32 2
  %24 = ptrtoint ptr %interface.i83 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %interface.i83, align 4
  %dev5.i84 = getelementptr inbounds %struct.usb_interface, ptr %25, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i84, ptr noundef nonnull @.str.15, i32 noundef 5, i32 noundef %call3.i81) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i81)
  %cmp6.i85 = icmp eq i32 %call3.i81, 0
  %spec.select101 = select i1 %cmp6.i85, i32 -5, i32 %call3.i81
  br label %err_close

if.end20:                                         ; preds = %if.end16
  %26 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %call7.i, align 8
  %conv21 = zext i8 %27 to i32
  %lsr = getelementptr inbounds %struct.ark3116_private, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %lsr to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv21, ptr %lsr, align 4
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %29 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %interrupt_in_urb, align 4
  %call22 = tail call i32 @usb_submit_urb(ptr noundef %30, i32 noundef 3264) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end29, label %do.end27

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %dev28 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.13, i32 noundef %call22) #9
  br label %err_close

if.end29:                                         ; preds = %if.end20
  %31 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %port, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 8
  %shl.i.i90 = shl i32 %36, 8
  %or.i = or i32 %shl.i.i90, -2147483648
  %call3.i91 = tail call i32 @usb_control_msg(ptr noundef %34, i32 noundef %or.i, i8 noundef zeroext -2, i8 noundef zeroext 64, i16 noundef zeroext 12, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #5
  %37 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %port, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 8
  %shl.i.i92 = shl i32 %42, 8
  %or.i93 = or i32 %shl.i.i92, -2147483648
  %call3.i94 = tail call i32 @usb_control_msg(ptr noundef %40, i32 noundef %or.i93, i8 noundef zeroext -2, i8 noundef zeroext 64, i16 noundef zeroext 8, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #5
  %tobool34.not = icmp eq ptr %tty, null
  br i1 %tobool34.not, label %if.end29.cleanup.sink.split_crit_edge, label %if.then35

if.end29.cleanup.sink.split_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ark3116_set_termios(ptr noundef nonnull %tty, ptr noundef %port, ptr noundef null)
  br label %cleanup.sink.split

err_close:                                        ; preds = %do.end27, %do.end.i87, %do.end.i76
  %result.0 = phi i32 [ %call22, %do.end27 ], [ %spec.select, %do.end.i76 ], [ %spec.select101, %do.end.i87 ]
  tail call void @usb_serial_generic_close(ptr noundef %port) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_close, %if.then35, %if.end29.cleanup.sink.split_crit_edge, %if.then9, %do.body
  %retval.0.ph = phi i32 [ 0, %if.then35 ], [ 0, %if.end29.cleanup.sink.split_crit_edge ], [ %call3, %if.then9 ], [ %result.0, %err_close ], [ %call3, %do.body ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ark3116_close(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext -2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i6 = shl i32 %9, 8
  %or.i7 = or i32 %shl.i.i6, -2147483648
  %call3.i8 = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or.i7, i8 noundef zeroext -2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #5
  tail call void @usb_serial_generic_close(ptr noundef %port) #5
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %10 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %interrupt_in_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ark3116_set_termios(ptr noundef %tty, ptr noundef %port, ptr nocapture noundef readnone %old_termios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %termios2 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %4 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_cflag, align 4
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios2) #5
  %6 = trunc i32 %5 to i8
  %7 = lshr i8 %6, 4
  %switch.idx.cast = and i8 %7, 3
  %8 = trunc i32 %5 to i8
  %9 = lshr i8 %8, 4
  %10 = and i8 %9, 4
  %and9 = lshr i32 %5, 5
  %11 = trunc i32 %and9 to i8
  %12 = and i8 %11, 8
  %13 = or i8 %12, %10
  %14 = or i8 %13, %switch.idx.cast
  %and16 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %15 = or i8 %14, 16
  %lcr.3 = select i1 %tobool17.not, i8 %15, i8 %14
  %and23 = lshr i32 %5, 25
  %16 = trunc i32 %and23 to i8
  %17 = and i8 %16, 32
  %18 = or i8 %lcr.3, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool31.not.inv = icmp slt i32 %5, 0
  %conv32 = select i1 %tobool31.not.inv, i8 3, i8 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ark3116_set_termios.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ark3116_set_termios, %if.then37)) #5
          to label %do.end [label %if.then37], !srcloc !93

if.then37:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ark3116_set_termios.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef %call.i) #5
  br label %do.end

do.end:                                           ; preds = %if.then37, %entry
  %19 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %sw.default41 [
    i32 0, label %do.end.sw.epilog52_crit_edge
    i32 460800, label %sw.bb48
    i32 921600, label %sw.bb50
  ]

do.end.sw.epilog52_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog52

sw.default41:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %20 = add i32 %call.i, -3000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2999926, i32 %20)
  %21 = icmp ult i32 %20, -2999926
  %bps.0 = select i1 %21, i32 9600, i32 %call.i
  %mul.i = shl nuw nsw i32 %bps.0, 1
  %add.i = add nuw nsw i32 %mul.i, 12000000
  %mul1.i = shl nuw nsw i32 %bps.0, 2
  %div.i229 = udiv i32 %add.i, %mul1.i
  br label %sw.epilog52

sw.bb48:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog52

sw.bb50:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog52

sw.epilog52:                                      ; preds = %sw.bb50, %sw.bb48, %sw.default41, %do.end.sw.epilog52_crit_edge
  %bps.1 = phi i32 [ %bps.0, %sw.default41 ], [ %call.i, %sw.bb50 ], [ %call.i, %sw.bb48 ], [ %call.i, %do.end.sw.epilog52_crit_edge ]
  %quot.0 = phi i32 [ %div.i229, %sw.default41 ], [ 3, %sw.bb50 ], [ 7, %sw.bb48 ], [ 313, %do.end.sw.epilog52_crit_edge ]
  %eval.0 = phi i8 [ 0, %sw.default41 ], [ 2, %sw.bb50 ], [ 1, %sw.bb48 ], [ 0, %do.end.sw.epilog52_crit_edge ]
  %hw_lock = getelementptr inbounds %struct.ark3116_private, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %hw_lock, i32 noundef 0) #5
  %lcr53 = getelementptr inbounds %struct.ark3116_private, ptr %3, i32 0, i32 3
  %22 = ptrtoint ptr %lcr53 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lcr53, align 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 64
  %conv57 = or i8 %18, %25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ark3116_set_termios.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ark3116_set_termios, %if.then70)) #5
          to label %do.end76 [label %if.then70], !srcloc !93

if.then70:                                        ; preds = %sw.epilog52
  call void @__sanitizer_cov_trace_pc() #7
  %dev71 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %conv72 = zext i8 %conv32 to i32
  %conv73 = zext i8 %conv57 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ark3116_set_termios.__UNIQUE_ID_ddebug239, ptr noundef %dev71, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %conv72, i32 noundef %conv73, i32 noundef %quot.0) #5
  br label %do.end76

do.end76:                                         ; preds = %if.then70, %sw.epilog52
  %hcr77 = getelementptr inbounds %struct.ark3116_private, ptr %3, i32 0, i32 4
  %26 = ptrtoint ptr %hcr77 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hcr77, align 4
  %conv78 = zext i8 %conv32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv78)
  %cmp79.not = icmp eq i32 %27, %conv78
  br i1 %cmp79.not, label %do.end76.if.end85_crit_edge, label %if.then81

do.end76.if.end85_crit_edge:                      ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

if.then81:                                        ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %hcr77 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv78, ptr %hcr77, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  %shl.i.i = shl i32 %32, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv.i = zext i8 %conv32 to i16
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %30, i32 noundef %or.i, i8 noundef zeroext -2, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #5
  br label %if.end85

if.end85:                                         ; preds = %if.then81, %do.end76.if.end85_crit_edge
  %quot86 = getelementptr inbounds %struct.ark3116_private, ptr %3, i32 0, i32 2
  %33 = ptrtoint ptr %quot86 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %quot86, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %quot.0)
  %cmp87.not = icmp eq i32 %34, %quot.0
  br i1 %cmp87.not, label %if.else, label %if.then89

if.then89:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %quot86 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %quot.0, ptr %quot86, align 4
  %conv91 = zext i8 %conv57 to i32
  %36 = ptrtoint ptr %lcr53 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv91, ptr %lcr53, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 8
  %shl.i.i197 = shl i32 %40, 8
  %or.i198 = or i32 %shl.i.i197, -2147483648
  %call3.i199 = tail call i32 @usb_control_msg(ptr noundef %38, i32 noundef %or.i198, i8 noundef zeroext -2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #5
  %or95 = or i8 %conv57, -128
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 8
  %shl.i.i200 = shl i32 %44, 8
  %or.i201 = or i32 %shl.i.i200, -2147483648
  %conv.i202 = zext i8 %or95 to i16
  %call3.i203 = tail call i32 @usb_control_msg(ptr noundef %42, i32 noundef %or.i201, i8 noundef zeroext -2, i8 noundef zeroext 64, i16 noundef zeroext %conv.i202, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #5
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 8
  %shl.i.i204 = shl i32 %48, 8
  %or.i205 = or i32 %shl.i.i204, -2147483648
  %49 = trunc i32 %quot.0 to i16
  %conv.i206 = and i16 %49, 255
  %call3.i207 = tail call i32 @usb_control_msg(ptr noundef %46, i32 noundef %or.i205, i8 noundef zeroext -2, i8 noundef zeroext 64, i16 noundef zeroext %conv.i206, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #5
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 8
  %shl.i.i208 = shl i32 %53, 8
  %or.i209 = or i32 %shl.i.i208, -2147483648
  %54 = lshr i16 %49, 8
  %call3.i211 = tail call i32 @usb_control_msg(ptr noundef %51, i32 noundef %or.i209, i8 noundef zeroext -2, i8 noundef zeroext 64, i16 noundef zeroext %54, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #5
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 8
  %shl.i.i212 = shl i32 %58, 8
  %or.i213 = or i32 %shl.i.i212, -2147483648
  %conv.i214 = zext i8 %conv57 to i16
  %call3.i215 = tail call i32 @usb_control_msg(ptr noundef %56, i32 noundef %or.i213, i8 noundef zeroext -2, i8 noundef zeroext 64, i16 noundef zeroext %conv.i214, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #5
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 8
  %shl.i.i216 = shl i32 %62, 8
  %or.i217 = or i32 %shl.i.i216, -2147483648
  %conv.i218 = zext i8 %eval.0 to i16
  %call3.i219 = tail call i32 @usb_control_msg(ptr noundef %60, i32 noundef %or.i217, i8 noundef zeroext -2, i8 noundef zeroext 64, i16 noundef zeroext %conv.i218, i16 noundef zeroext 14, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #5
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 8
  %shl.i.i220 = shl i32 %66, 8
  %or.i221 = or i32 %shl.i.i220, -2147483648
  %call3.i222 = tail call i32 @usb_control_msg(ptr noundef %64, i32 noundef %or.i221, i8 noundef zeroext -2, i8 noundef zeroext 64, i16 noundef zeroext 8, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #5
  br label %if.end116

if.else:                                          ; preds = %if.end85
  %67 = ptrtoint ptr %lcr53 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %lcr53, align 4
  %conv108 = zext i8 %conv57 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %conv108)
  %cmp109.not = icmp eq i32 %68, %conv108
  br i1 %cmp109.not, label %if.else.if.end116_crit_edge, label %if.then111

if.else.if.end116_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end116

if.then111:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %69 = ptrtoint ptr %lcr53 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv108, ptr %lcr53, align 4
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 8
  %shl.i.i223 = shl i32 %73, 8
  %or.i224 = or i32 %shl.i.i223, -2147483648
  %conv.i225 = zext i8 %conv57 to i16
  %call3.i226 = tail call i32 @usb_control_msg(ptr noundef %71, i32 noundef %or.i224, i8 noundef zeroext -2, i8 noundef zeroext 64, i16 noundef zeroext %conv.i225, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #5
  br label %if.end116

if.end116:                                        ; preds = %if.then111, %if.else.if.end116_crit_edge, %if.then89
  tail call void @mutex_unlock(ptr noundef %hw_lock) #5
  %74 = ptrtoint ptr %termios2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %termios2, align 4
  %76 = and i32 %75, 5120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %if.end116.if.end131_crit_edge, label %do.end129

if.end116.if.end131_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end131

do.end129:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #7
  %dev130 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev130, ptr noundef nonnull @.str.20) #9
  br label %if.end131

if.end131:                                        ; preds = %do.end129, %if.end116.if.end131_crit_edge
  %call132 = tail call i32 @tty_termios_baud_rate(ptr noundef %termios2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end131.if.end135_crit_edge, label %if.then134

if.end131.if.end135_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end135

if.then134:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tty_termios_encode_baud_rate(ptr noundef %termios2, i32 noundef %bps.1, i32 noundef %bps.1) #5
  br label %if.end135

if.end135:                                        ; preds = %if.then134, %if.end131.if.end135_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ark3116_break_ctl(ptr nocapture noundef readonly %tty, i32 noundef %break_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %hw_lock = getelementptr inbounds %struct.ark3116_private, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %hw_lock, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %break_state)
  %tobool.not = icmp eq i32 %break_state, 0
  %lcr1 = getelementptr inbounds %struct.ark3116_private, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %lcr1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lcr1, align 4
  %and = and i32 %5, -65
  %masksel = select i1 %tobool.not, i32 0, i32 64
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %lcr1, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i = shl i32 %11, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %12 = trunc i32 %and.sink to i16
  %conv.i = and i16 %12, 255
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i, i8 noundef zeroext -2, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #5
  tail call void @mutex_unlock(ptr noundef %hw_lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ark3116_tiocmget(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %hw_lock = getelementptr inbounds %struct.ark3116_private, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %hw_lock, i32 noundef 0) #5
  %mcr = getelementptr inbounds %struct.ark3116_private, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %mcr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mcr, align 4
  tail call void @mutex_unlock(ptr noundef %hw_lock) #5
  %status_lock = getelementptr inbounds %struct.ark3116_private, ptr %3, i32 0, i32 6
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %status_lock) #5
  %msr = getelementptr inbounds %struct.ark3116_private, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %msr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %status_lock, i32 noundef %call4) #5
  %and = shl i32 %7, 3
  %8 = and i32 %and, 256
  %and8 = shl i32 %7, 1
  %9 = and i32 %and8, 32
  %10 = and i32 %and8, 128
  %and15 = lshr i32 %7, 1
  %11 = and i32 %and15, 64
  %and19 = shl i32 %5, 1
  %and27 = shl i32 %5, 11
  %12 = and i32 %and27, 8192
  %13 = and i32 %and27, 16384
  %or = and i32 %and19, 6
  %or14 = or i32 %or, %12
  %or18 = or i32 %or14, %13
  %or22 = or i32 %or18, %9
  %or26 = or i32 %or22, %8
  %or30 = or i32 %or26, %10
  %or34 = or i32 %or30, %11
  ret i32 %or34
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ark3116_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %hw_lock = getelementptr inbounds %struct.ark3116_private, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %hw_lock, i32 noundef 0) #5
  %and = and i32 %set, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mcr = getelementptr inbounds %struct.ark3116_private, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %mcr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mcr, align 4
  %or = or i32 %5, 2
  store i32 %or, ptr %mcr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and1 = and i32 %set, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %mcr4 = getelementptr inbounds %struct.ark3116_private, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %mcr4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mcr4, align 4
  %or5 = or i32 %7, 1
  store i32 %or5, ptr %mcr4, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %and7 = and i32 %set, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end12_crit_edge, label %if.then9

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %mcr10 = getelementptr inbounds %struct.ark3116_private, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %mcr10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mcr10, align 4
  %or11 = or i32 %9, 4
  store i32 %or11, ptr %mcr10, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end6.if.end12_crit_edge
  %and13 = and i32 %set, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end18_crit_edge, label %if.then15

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %mcr16 = getelementptr inbounds %struct.ark3116_private, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %mcr16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mcr16, align 4
  %or17 = or i32 %11, 8
  store i32 %or17, ptr %mcr16, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end12.if.end18_crit_edge
  %and19 = and i32 %clr, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end24_crit_edge, label %if.then21

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %mcr22 = getelementptr inbounds %struct.ark3116_private, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %mcr22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mcr22, align 4
  %and23 = and i32 %13, -3
  store i32 %and23, ptr %mcr22, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end18.if.end24_crit_edge
  %and25 = and i32 %clr, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end30_crit_edge, label %if.then27

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %mcr28 = getelementptr inbounds %struct.ark3116_private, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %mcr28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mcr28, align 4
  %and29 = and i32 %15, -2
  store i32 %and29, ptr %mcr28, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end24.if.end30_crit_edge
  %and31 = and i32 %clr, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end36_crit_edge, label %if.then33

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %mcr34 = getelementptr inbounds %struct.ark3116_private, ptr %3, i32 0, i32 5
  %16 = ptrtoint ptr %mcr34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mcr34, align 4
  %and35 = and i32 %17, -5
  store i32 %and35, ptr %mcr34, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end30.if.end36_crit_edge
  %and37 = and i32 %clr, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end42_crit_edge, label %if.then39

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %mcr40 = getelementptr inbounds %struct.ark3116_private, ptr %3, i32 0, i32 5
  %18 = ptrtoint ptr %mcr40 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mcr40, align 4
  %and41 = and i32 %19, -9
  store i32 %and41, ptr %mcr40, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end36.if.end42_crit_edge
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %mcr43 = getelementptr inbounds %struct.ark3116_private, ptr %3, i32 0, i32 5
  %22 = ptrtoint ptr %mcr43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mcr43, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i.i = shl i32 %27, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %28 = trunc i32 %23 to i16
  %conv.i = and i16 %28, 255
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or.i, i8 noundef zeroext -2, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #5
  tail call void @mutex_unlock(ptr noundef %hw_lock) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_tiocmiwait(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_get_icount(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ark3116_read_int_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %4 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transfer_buffer, align 4
  %6 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %3, label %do.body4 [
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge158
    i32 -108, label %entry.do.body_crit_edge159
    i32 0, label %sw.bb21
  ]

entry.do.body_crit_edge159:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge158:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge158, %entry.do.body_crit_edge159
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ark3116_read_int_callback.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ark3116_read_int_callback, %if.then)) #5
          to label %cleanup109 [label %if.then], !srcloc !93

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ark3116_read_int_callback.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef %3) #5
  br label %cleanup109

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ark3116_read_int_callback.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ark3116_read_int_callback, %if.then16)) #5
          to label %sw.epilog [label %if.then16], !srcloc !93

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  %dev17 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ark3116_read_int_callback.__UNIQUE_ID_ddebug242, ptr noundef %dev17, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %3) #5
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %7 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp = icmp eq i32 %8, 4
  br i1 %cmp, label %land.lhs.true, label %sw.bb21.if.end97_crit_edge

sw.bb21.if.end97_crit_edge:                       ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

land.lhs.true:                                    ; preds = %sw.bb21
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -24, i8 %10)
  %cmp22 = icmp eq i8 %10, -24
  br i1 %cmp22, label %if.then24, label %land.lhs.true.if.end97_crit_edge

land.lhs.true.if.end97_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

if.then24:                                        ; preds = %land.lhs.true
  %arrayidx25 = getelementptr i8, ptr %5, i32 1
  %11 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx25, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ark3116_read_int_callback.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ark3116_read_int_callback, %if.then40)) #5
          to label %do.end46 [label %if.then40], !srcloc !93

if.then40:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  %dev41 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %13 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx25, align 1
  %conv43 = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ark3116_read_int_callback.__UNIQUE_ID_ddebug243, ptr noundef %dev41, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.22, i32 noundef %conv43) #5
  br label %do.end46

do.end46:                                         ; preds = %if.then40, %if.then24
  %15 = trunc i8 %12 to i4
  %trunc = and i4 %15, -2
  %16 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.33)
  switch i4 %trunc, label %do.end46.if.end97_crit_edge [
    i4 0, label %do.body51
    i4 6, label %do.body75
  ]

do.end46.if.end97_crit_edge:                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

do.body51:                                        ; preds = %do.end46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ark3116_read_int_callback.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ark3116_read_int_callback, %if.then63)) #5
          to label %do.end69 [label %if.then63], !srcloc !93

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #7
  %dev64 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %arrayidx65 = getelementptr i8, ptr %5, i32 3
  %17 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx65, align 1
  %conv66 = zext i8 %18 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ark3116_read_int_callback.__UNIQUE_ID_ddebug244, ptr noundef %dev64, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.22, i32 noundef %conv66) #5
  br label %do.end69

do.end69:                                         ; preds = %if.then63, %do.body51
  %arrayidx70 = getelementptr i8, ptr %5, i32 3
  %19 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx70, align 1
  tail call fastcc void @ark3116_update_msr(ptr noundef %1, i8 noundef zeroext %20)
  br label %sw.epilog

do.body75:                                        ; preds = %do.end46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ark3116_read_int_callback.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ark3116_read_int_callback, %if.then87)) #5
          to label %do.end93 [label %if.then87], !srcloc !93

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #7
  %dev88 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %arrayidx89 = getelementptr i8, ptr %5, i32 2
  %21 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx89, align 1
  %conv90 = zext i8 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ark3116_read_int_callback.__UNIQUE_ID_ddebug245, ptr noundef %dev88, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.22, i32 noundef %conv90) #5
  br label %do.end93

do.end93:                                         ; preds = %if.then87, %do.body75
  %arrayidx94 = getelementptr i8, ptr %5, i32 2
  %23 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx94, align 1
  tail call fastcc void @ark3116_update_lsr(ptr noundef %1, i8 noundef zeroext %24)
  br label %sw.epilog

if.end97:                                         ; preds = %do.end46.if.end97_crit_edge, %land.lhs.true.if.end97_crit_edge, %sw.bb21.if.end97_crit_edge
  %25 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %actual_length, align 4
  %27 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %transfer_buffer, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ark3116_read_int_callback, %if.then.i)) #5
          to label %sw.epilog [label %if.then.i], !srcloc !93

if.then.i:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  %dev98 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev98, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.22, i32 noundef %26, i32 noundef %26, ptr noundef %28) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i, %if.end97, %do.end93, %do.end69, %if.then16, %do.body4
  %call101 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %sw.epilog.cleanup109_crit_edge, label %do.end106

sw.epilog.cleanup109_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup109

do.end106:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %dev107 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev107, ptr noundef nonnull @.str.28, i32 noundef %call101) #9
  br label %cleanup109

cleanup109:                                       ; preds = %do.end106, %sw.epilog.cleanup109_crit_edge, %if.then, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ark3116_process_read_urb(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %status_lock = getelementptr inbounds %struct.ark3116_private, ptr %3, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %status_lock) #5
  %lsr6 = getelementptr inbounds %struct.ark3116_private, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %lsr6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lsr6, align 4
  %and = and i32 %7, -31
  store i32 %and, ptr %lsr6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %status_lock, i32 noundef %call3) #5
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %8 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and9 = and i32 %7, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end31_crit_edge, label %if.then11

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then11:                                        ; preds = %if.end
  %and12 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else, label %if.then11.if.end24_crit_edge

if.then11.if.end24_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.else:                                          ; preds = %if.then11
  %and15 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else18, label %if.else.if.end24_crit_edge

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %10 = trunc i32 %7 to i8
  %11 = lshr i8 %10, 2
  %12 = and i8 %11, 2
  br label %if.end24

if.end24:                                         ; preds = %if.else18, %if.else.if.end24_crit_edge, %if.then11.if.end24_crit_edge
  %tty_flag.0 = phi i8 [ 1, %if.then11.if.end24_crit_edge ], [ 3, %if.else.if.end24_crit_edge ], [ %12, %if.else18 ]
  %and25 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end31_crit_edge, label %if.then27

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then27:                                        ; preds = %if.end24
  %port28 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  %tail.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1, i32 0, i32 8
  %13 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i, align 4
  %flags.i = getelementptr inbounds %struct.tty_buffer, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then27.if.end12.i_crit_edge

if.then27.if.end12.i_crit_edge:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.then27
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.tty_buffer, ptr %14, i32 0, i32 2
  %19 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp3.i = icmp slt i32 %18, %20
  br i1 %cmp3.i, label %if.end.i, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

if.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %14, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i.i.i, i32 %18
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %20
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 4, ptr %add.ptr.i.i, align 1
  %22 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %23, 1
  store i32 %inc.i, ptr %used.i, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %data.i.i.i, i32 %23
  %24 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %add.ptr.i1.i, align 1
  br label %if.end31

if.end12.i:                                       ; preds = %land.lhs.true.i.if.end12.i_crit_edge, %if.then27.if.end12.i_crit_edge
  %call13.i = tail call i32 @__tty_insert_flip_char(ptr noundef %port28, i8 noundef zeroext 0, i8 noundef zeroext 4) #5
  br label %if.end31

if.end31:                                         ; preds = %if.end12.i, %if.end.i, %if.end24.if.end31_crit_edge, %if.end.if.end31_crit_edge
  %tty_flag.1 = phi i8 [ %tty_flag.0, %if.end24.if.end31_crit_edge ], [ 0, %if.end.if.end31_crit_edge ], [ %tty_flag.0, %if.end.i ], [ %tty_flag.0, %if.end12.i ]
  %port32 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %actual_length, align 4
  %call34 = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port32, ptr noundef %5, i8 noundef zeroext %tty_flag.1, i32 noundef %26) #5
  tail call void @tty_flip_buffer_push(ptr noundef %port32) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_generic_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ark3116_update_msr(ptr noundef %port, i8 noundef zeroext %msr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %status_lock = getelementptr inbounds %struct.ark3116_private, ptr %1, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %status_lock) #5
  %conv6 = zext i8 %msr to i32
  %msr7 = getelementptr inbounds %struct.ark3116_private, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %msr7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv6, ptr %msr7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %status_lock, i32 noundef %call3) #5
  %and = and i32 %conv6, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end36_crit_edge, label %if.then

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then:                                          ; preds = %entry
  %and11 = and i32 %conv6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then.if.end_crit_edge, label %if.then13

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %icount = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27
  %3 = ptrtoint ptr %icount to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %icount, align 8
  %inc = add i32 %4, 1
  store i32 %inc, ptr %icount, align 8
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then.if.end_crit_edge
  %and15 = and i32 %conv6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end.if.end20_crit_edge, label %if.then17

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dsr = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 1
  %5 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dsr, align 4
  %inc19 = add i32 %6, 1
  store i32 %inc19, ptr %dsr, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end.if.end20_crit_edge
  %and22 = and i32 %conv6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end27_crit_edge, label %if.then24

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %dcd = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 3
  %7 = ptrtoint ptr %dcd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dcd, align 4
  %inc26 = add i32 %8, 1
  store i32 %inc26, ptr %dcd, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end20.if.end27_crit_edge
  %and29 = and i32 %conv6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.if.end34_crit_edge, label %if.then31

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %rng = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 2
  %9 = ptrtoint ptr %rng to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rng, align 8
  %inc33 = add i32 %10, 1
  store i32 %inc33, ptr %rng, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end27.if.end34_crit_edge
  %delta_msr_wait = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1, i32 9
  tail call void @__wake_up(ptr noundef %delta_msr_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #5
  br label %if.end36

if.end36:                                         ; preds = %if.end34, %entry.if.end36_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ark3116_update_lsr(ptr nocapture noundef %port, i8 noundef zeroext %lsr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %status_lock = getelementptr inbounds %struct.ark3116_private, ptr %1, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %status_lock) #5
  %conv6 = zext i8 %lsr to i32
  %lsr7 = getelementptr inbounds %struct.ark3116_private, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %lsr7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lsr7, align 4
  %or = or i32 %3, %conv6
  store i32 %or, ptr %lsr7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %status_lock, i32 noundef %call3) #5
  %and = and i32 %conv6, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end35_crit_edge, label %if.then

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then:                                          ; preds = %entry
  %and11 = and i32 %conv6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then.if.end_crit_edge, label %if.then13

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %brk = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 9
  %4 = ptrtoint ptr %brk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %brk, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %brk, align 4
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then.if.end_crit_edge
  %and15 = and i32 %conv6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end.if.end20_crit_edge, label %if.then17

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %frame = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 6
  %6 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame, align 8
  %inc19 = add i32 %7, 1
  store i32 %inc19, ptr %frame, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end.if.end20_crit_edge
  %and22 = and i32 %conv6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end27_crit_edge, label %if.then24

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %parity = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 7
  %8 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %parity, align 4
  %inc26 = add i32 %9, 1
  store i32 %inc26, ptr %parity, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end20.if.end27_crit_edge
  %and29 = and i32 %conv6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.if.end35_crit_edge, label %if.then31

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %overrun = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 27, i32 8
  %10 = ptrtoint ptr %overrun to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %overrun, align 8
  %inc33 = add i32 %11, 1
  store i32 %inc33, ptr %overrun, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.end27.if.end35_crit_edge, %entry.if.end35_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
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
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !17, !19, !20, !22, !23, !25, !26, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !79, !81, !82, !83}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__initcall__kmod_ark3116__246_639_usb_serial_module_init6, !1, !"__initcall__kmod_ark3116__246_639_usb_serial_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/ark3116.c", i32 639, i32 1}
!2 = !{ptr @__exitcall_usb_serial_module_exit, !1, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file247, !4, !"__UNIQUE_ID_file247", i1 false, i1 false}
!4 = !{!"../drivers/usb/serial/ark3116.c", i32 641, i32 1}
!5 = !{ptr @__UNIQUE_ID_license248, !4, !"__UNIQUE_ID_license248", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author249, !7, !"__UNIQUE_ID_author249", i1 false, i1 false}
!7 = !{!"../drivers/usb/serial/ark3116.c", i32 643, i32 1}
!8 = !{ptr @__UNIQUE_ID_description250, !9, !"__UNIQUE_ID_description250", i1 false, i1 false}
!9 = !{!"../drivers/usb/serial/ark3116.c", i32 644, i32 1}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @id_table, !12, !"id_table", i1 false, i1 false}
!12 = !{!"../drivers/usb/serial/ark3116.c", i32 43, i32 35}
!13 = !{ptr @serial_drivers, !14, !"serial_drivers", i1 false, i1 false}
!14 = !{!"../drivers/usb/serial/ark3116.c", i32 635, i32 41}
!15 = !{ptr @ark3116_device, !16, !"ark3116_device", i1 false, i1 false}
!16 = !{!"../drivers/usb/serial/ark3116.c", i32 611, i32 33}
!17 = !{ptr @ark3116_port_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/usb/serial/ark3116.c", i32 133, i32 2}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ark3116_port_probe.__key.2, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/usb/serial/ark3116.c", i32 134, i32 2}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/serial/ark3116.c", i32 176, i32 2}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ark3116_port_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @ark3116_port_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/serial/ark3116.c", i32 338, i32 3}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ark3116_open.__UNIQUE_ID_ddebug240, !34, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/serial/ark3116.c", i32 361, i32 3}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ark3116_open._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @ark3116_open._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/serial/ark3116.c", i32 102, i32 3}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ark3116_read_reg._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @ark3116_read_reg._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/serial/ark3116.c", i32 232, i32 2}
!49 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ark3116_set_termios.__UNIQUE_ID_ddebug238, !48, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/serial/ark3116.c", i32 259, i32 2}
!53 = !{ptr @ark3116_set_termios.__UNIQUE_ID_ddebug239, !52, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/serial/ark3116.c", i32 301, i32 3}
!56 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ark3116_set_termios._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @ark3116_set_termios._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/serial/ark3116.c", i32 525, i32 3}
!61 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @ark3116_read_int_callback.__UNIQUE_ID_ddebug241, !60, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/serial/ark3116.c", i32 529, i32 3}
!65 = !{ptr @ark3116_read_int_callback.__UNIQUE_ID_ddebug242, !64, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/serial/ark3116.c", i32 536, i32 4}
!68 = !{ptr @ark3116_read_int_callback.__UNIQUE_ID_ddebug243, !67, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/serial/ark3116.c", i32 538, i32 5}
!71 = !{ptr @ark3116_read_int_callback.__UNIQUE_ID_ddebug244, !70, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/serial/ark3116.c", i32 543, i32 5}
!74 = !{ptr @ark3116_read_int_callback.__UNIQUE_ID_ddebug245, !73, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/serial/ark3116.c", i32 560, i32 3}
!77 = !{ptr @ark3116_read_int_callback._entry, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @ark3116_read_int_callback._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../include/linux/usb/serial.h", i32 393, i32 2}
!81 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, !80, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{i64 2148709879, i64 2148709884, i64 2148709897, i64 2148709941, i64 2148709975, i64 2148709996}
