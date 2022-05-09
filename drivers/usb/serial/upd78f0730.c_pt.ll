; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/upd78f0730.c_pt.bc'
source_filename = "../drivers/usb/serial/upd78f0730.c"
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
%struct.upd78f0730_open_close = type { i8, i8 }
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
%struct.upd78f0730_line_control = type <{ i8, i32, i8 }>
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.upd78f0730_set_dtr_rts = type { i8, i8 }
%struct.upd78f0730_port_private = type { %struct.mutex, i8 }

@__initcall__kmod_upd78f0730__254_428_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @upd78f0730_device, ptr null], [24 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description255 = internal constant [73 x i8] c"upd78f0730.description=Renesas uPD78F0730 USB to serial converter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author256 = internal constant [56 x i8] c"upd78f0730.author=Maksim Salau <maksim.salau@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file257 = internal constant [46 x i8] c"upd78f0730.file=drivers/usb/serial/upd78f0730\00", section ".modinfo", align 1
@__UNIQUE_ID_license258 = internal constant [26 x i8] c"upd78f0730.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"upd78f0730\00", [21 x i8] zeroinitializer }, align 32
@id_table = internal constant { [4 x %struct.usb_device_id], [32 x i8] } { [4 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1033, i16 99, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1115, i16 530, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1611, i16 30757, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@upd78f0730_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr null, ptr @id_table, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 1, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @upd78f0730_port_probe, ptr @upd78f0730_port_remove, ptr null, ptr null, ptr null, ptr @upd78f0730_open, ptr @upd78f0730_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @upd78f0730_set_termios, ptr @upd78f0730_break_ctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @upd78f0730_tiocmget, ptr @upd78f0730_tiocmset, ptr null, ptr null, ptr @upd78f0730_dtr_rts, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@upd78f0730_port_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&private->lock\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@upd78f0730_open.request = internal constant { %struct.upd78f0730_open_close, [30 x i8] } { %struct.upd78f0730_open_close { i8 3, i8 1 }, [30 x i8] zeroinitializer }, align 32
@upd78f0730_send_ctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 152, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to send control request %02x: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"upd78f0730_send_ctl\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/usb/serial/upd78f0730.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@upd78f0730_send_ctl._entry_ptr = internal global ptr @upd78f0730_send_ctl._entry, section ".printk_index", align 4
@upd78f0730_close.request = internal constant { %struct.upd78f0730_open_close, [30 x i8] } { %struct.upd78f0730_open_close { i8 3, i8 0 }, [30 x i8] zeroinitializer }, align 32
@upd78f0730_set_termios.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.4, ptr @.str.8, i8 0, i8 79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"upd78f0730_set_termios\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s - baud rate = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@upd78f0730_set_termios.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.4, ptr @.str.9, i8 0, i8 80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s - 7 data bits\0A\00", [46 x i8] zeroinitializer }, align 32
@upd78f0730_set_termios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.4, i32 328, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"data size is not supported, using 8 bits\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@upd78f0730_set_termios._entry_ptr = internal global ptr @upd78f0730_set_termios._entry, section ".printk_index", align 4
@upd78f0730_set_termios.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.4, ptr @.str.12, i8 0, i8 83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s - 8 data bits\0A\00", [46 x i8] zeroinitializer }, align 32
@upd78f0730_set_termios.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.4, ptr @.str.13, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - odd parity\0A\00", [47 x i8] zeroinitializer }, align 32
@upd78f0730_set_termios.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.4, ptr @.str.14, i8 0, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s - even parity\0A\00", [46 x i8] zeroinitializer }, align 32
@upd78f0730_set_termios._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.7, ptr @.str.4, i32 347, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"MARK/SPACE parity is not supported\0A\00", [60 x i8] zeroinitializer }, align 32
@upd78f0730_set_termios._entry_ptr.17 = internal global ptr @upd78f0730_set_termios._entry.15, section ".printk_index", align 4
@upd78f0730_set_termios.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.4, ptr @.str.18, i8 0, i8 87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s - no parity\0A\00", [16 x i8] zeroinitializer }, align 32
@upd78f0730_set_termios.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.4, ptr @.str.19, i8 0, i8 89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s - 2 stop bits\0A\00", [46 x i8] zeroinitializer }, align 32
@upd78f0730_set_termios.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.4, ptr @.str.20, i8 0, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - 1 stop bit\0A\00", [47 x i8] zeroinitializer }, align 32
@upd78f0730_set_termios._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.7, ptr @.str.4, i32 364, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"RTSCTS flow control is not supported\0A\00", [58 x i8] zeroinitializer }, align 32
@upd78f0730_set_termios._entry_ptr.23 = internal global ptr @upd78f0730_set_termios._entry.21, section ".printk_index", align 4
@upd78f0730_set_termios._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.7, ptr @.str.4, i32 368, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"XON/XOFF flow control is not supported\0A\00", [56 x i8] zeroinitializer }, align 32
@upd78f0730_set_termios._entry_ptr.26 = internal global ptr @upd78f0730_set_termios._entry.24, section ".printk_index", align 4
@upd78f0730_set_termios.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.4, ptr @.str.27, i8 0, i8 92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s - no flow control\0A\00", [42 x i8] zeroinitializer }, align 32
@upd78f0730_break_ctl.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.4, ptr @.str.29, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"upd78f0730_break_ctl\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s - set BREAK\0A\00", [16 x i8] zeroinitializer }, align 32
@upd78f0730_break_ctl.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.4, ptr @.str.30, i8 0, i8 64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s - clear BREAK\0A\00", [46 x i8] zeroinitializer }, align 32
@upd78f0730_tiocmget.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.32, i8 0, i8 49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"upd78f0730_tiocmget\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s - res = %x\0A\00", [17 x i8] zeroinitializer }, align 32
@upd78f0730_tiocmset.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.4, ptr @.str.34, i8 0, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"upd78f0730_tiocmset\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s - set DTR\0A\00", [18 x i8] zeroinitializer }, align 32
@upd78f0730_tiocmset.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.4, ptr @.str.35, i8 0, i8 55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s - set RTS\0A\00", [18 x i8] zeroinitializer }, align 32
@upd78f0730_tiocmset.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.4, ptr @.str.36, i8 0, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s - clear DTR\0A\00", [16 x i8] zeroinitializer }, align 32
@upd78f0730_tiocmset.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.4, ptr @.str.37, i8 0, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s - clear RTS\0A\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 2400, i64 4800, i64 9600, i64 19200, i64 38400, i64 57600, i64 115200, i64 153600]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 48]
@___asan_gen_.39 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 423, i32 41 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 428, i32 1 }
@___asan_gen_.45 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 31, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant [18 x i8] c"upd78f0730_device\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 405, i32 33 }
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 168, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 378, i32 44 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 151, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [8 x i8] c"request\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 396, i32 44 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 318, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 323, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 328, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 332, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 339, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 342, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 347, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 351, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 356, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 359, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 364, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 368, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 371, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 253, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 256, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 199, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 218, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 222, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 226, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private constant [35 x i8] c"../drivers/usb/serial/upd78f0730.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 230, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author256, ptr @__UNIQUE_ID_description255, ptr @__UNIQUE_ID_file257, ptr @__UNIQUE_ID_license258, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_upd78f0730__254_428_usb_serial_module_init6, ptr @upd78f0730_send_ctl._entry, ptr @upd78f0730_send_ctl._entry_ptr, ptr @upd78f0730_set_termios._entry, ptr @upd78f0730_set_termios._entry.15, ptr @upd78f0730_set_termios._entry.21, ptr @upd78f0730_set_termios._entry.24, ptr @upd78f0730_set_termios._entry_ptr, ptr @upd78f0730_set_termios._entry_ptr.17, ptr @upd78f0730_set_termios._entry_ptr.23, ptr @upd78f0730_set_termios._entry_ptr.26, ptr @usb_serial_module_exit, ptr @serial_drivers, ptr @.str, ptr @id_table, ptr @upd78f0730_device, ptr @upd78f0730_port_probe.__key, ptr @.str.1, ptr @upd78f0730_open.request, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @upd78f0730_close.request, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upd78f0730_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upd78f0730_port_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upd78f0730_open.request to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upd78f0730_send_ctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upd78f0730_close.request to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upd78f0730_set_termios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upd78f0730_set_termios._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upd78f0730_set_termios._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upd78f0730_set_termios._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }]
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
define internal i32 @upd78f0730_port_probe(ptr nocapture noundef writeonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 96) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @upd78f0730_port_probe.__key) #7
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @upd78f0730_port_remove(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_destroy(ptr noundef %1) #7
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @upd78f0730_open(ptr noundef %tty, ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call ptr @kmemdup(ptr noundef nonnull @upd78f0730_open.request, i32 noundef 2, i32 noundef 3264) #7
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %entry.cleanup_crit_edge, label %if.end3.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.i:                                        ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call.i, i16 noundef zeroext 2, i32 noundef 5000) #7
  tail call void @kfree(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.then8.i, label %if.end

if.then8.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev10.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull @.str.2, i32 noundef 3, i32 noundef %call5.i) #11
  br label %cleanup

if.end:                                           ; preds = %if.end3.i
  %tobool1.not = icmp eq ptr %tty, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @upd78f0730_set_termios(ptr noundef nonnull %tty, ptr noundef %port, ptr noundef null)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %call4 = tail call i32 @usb_serial_generic_open(ptr noundef %tty, ptr noundef %port) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then8.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ -12, %entry.cleanup_crit_edge ], [ %call5.i, %if.then8.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @upd78f0730_close(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_serial_generic_close(ptr noundef %port) #7
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call ptr @kmemdup(ptr noundef nonnull @upd78f0730_close.request, i32 noundef 2, i32 noundef 3264) #7
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %entry.upd78f0730_send_ctl.exit_crit_edge, label %if.end3.i

entry.upd78f0730_send_ctl.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %upd78f0730_send_ctl.exit

if.end3.i:                                        ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call.i, i16 noundef zeroext 2, i32 noundef 5000) #7
  tail call void @kfree(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.then8.i, label %if.end3.i.upd78f0730_send_ctl.exit_crit_edge

if.end3.i.upd78f0730_send_ctl.exit_crit_edge:     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %upd78f0730_send_ctl.exit

if.then8.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev10.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull @.str.2, i32 noundef 3, i32 noundef %call5.i) #11
  br label %upd78f0730_send_ctl.exit

upd78f0730_send_ctl.exit:                         ; preds = %if.then8.i, %if.end3.i.upd78f0730_send_ctl.exit_crit_edge, %entry.upd78f0730_send_ctl.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @upd78f0730_set_termios(ptr noundef %tty, ptr noundef %port, ptr noundef %old_termios) #2 align 64 {
entry:
  %request = alloca %struct.upd78f0730_line_control, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %request) #7
  %0 = getelementptr inbounds %struct.upd78f0730_line_control, ptr %request, i32 0, i32 1
  %1 = getelementptr inbounds %struct.upd78f0730_line_control, ptr %request, i32 0, i32 2
  %tobool.not = icmp eq ptr %old_termios, null
  %termios3 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @tty_termios_hw_change(ptr noundef %termios3, ptr noundef nonnull %old_termios) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.end.thread

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %2 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_cflag, align 4
  %and = and i32 %3, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end.if.then4_crit_edge, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.end.thread:                                    ; preds = %land.lhs.true
  %c_cflag319 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %4 = ptrtoint ptr %c_cflag319 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_cflag319, align 4
  %and320 = and i32 %5, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and320)
  %cmp321 = icmp eq i32 %and320, 0
  br i1 %cmp321, label %if.end.thread.if.then4_crit_edge, label %land.lhs.true6

if.end.thread.if.then4_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.then4:                                         ; preds = %if.end.thread.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %c_cflag327 = phi ptr [ %c_cflag319, %if.end.thread.if.then4_crit_edge ], [ %c_cflag, %if.end.if.then4_crit_edge ]
  %tty2.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tty2.i, align 4
  %call.i = tail call i32 @upd78f0730_tiocmset(ptr noundef %7, i32 noundef 0, i32 noundef 6) #7
  br label %if.end12

land.lhs.true6:                                   ; preds = %if.end.thread
  %c_cflag7 = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 2
  %8 = ptrtoint ptr %c_cflag7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %c_cflag7, align 4
  %and8 = and i32 %9, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp9 = icmp eq i32 %and8, 0
  br i1 %cmp9, label %if.then10, label %land.lhs.true6.if.end12_crit_edge

land.lhs.true6.if.end12_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  %tty2.i313 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %tty2.i313 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tty2.i313, align 4
  %call.i314 = tail call i32 @upd78f0730_tiocmset(ptr noundef %11, i32 noundef 6, i32 noundef 0) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %land.lhs.true6.if.end12_crit_edge, %if.then4, %if.end.if.end12_crit_edge
  %c_cflag325 = phi ptr [ %c_cflag319, %land.lhs.true6.if.end12_crit_edge ], [ %c_cflag319, %if.then10 ], [ %c_cflag327, %if.then4 ], [ %c_cflag, %if.end.if.end12_crit_edge ]
  %call.i.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios3) #7
  %12 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i.i, label %for.cond.8.i [
    i32 153600, label %if.end12.upd78f0730_get_baud_rate.exit_crit_edge
    i32 115200, label %if.end12.upd78f0730_get_baud_rate.exit_crit_edge341
    i32 57600, label %if.end12.upd78f0730_get_baud_rate.exit_crit_edge342
    i32 38400, label %if.end12.upd78f0730_get_baud_rate.exit_crit_edge343
    i32 19200, label %if.end12.upd78f0730_get_baud_rate.exit_crit_edge344
    i32 9600, label %if.end12.upd78f0730_get_baud_rate.exit_crit_edge345
    i32 4800, label %if.end12.upd78f0730_get_baud_rate.exit_crit_edge346
    i32 2400, label %if.end12.upd78f0730_get_baud_rate.exit_crit_edge347
    i32 0, label %if.end12.upd78f0730_get_baud_rate.exit_crit_edge348
  ]

if.end12.upd78f0730_get_baud_rate.exit_crit_edge348: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %upd78f0730_get_baud_rate.exit

if.end12.upd78f0730_get_baud_rate.exit_crit_edge347: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %upd78f0730_get_baud_rate.exit

if.end12.upd78f0730_get_baud_rate.exit_crit_edge346: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %upd78f0730_get_baud_rate.exit

if.end12.upd78f0730_get_baud_rate.exit_crit_edge345: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %upd78f0730_get_baud_rate.exit

if.end12.upd78f0730_get_baud_rate.exit_crit_edge344: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %upd78f0730_get_baud_rate.exit

if.end12.upd78f0730_get_baud_rate.exit_crit_edge343: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %upd78f0730_get_baud_rate.exit

if.end12.upd78f0730_get_baud_rate.exit_crit_edge342: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %upd78f0730_get_baud_rate.exit

if.end12.upd78f0730_get_baud_rate.exit_crit_edge341: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %upd78f0730_get_baud_rate.exit

if.end12.upd78f0730_get_baud_rate.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %upd78f0730_get_baud_rate.exit

for.cond.8.i:                                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef 9600, i32 noundef 9600) #7
  %call.i10.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios3) #7
  br label %upd78f0730_get_baud_rate.exit

upd78f0730_get_baud_rate.exit:                    ; preds = %for.cond.8.i, %if.end12.upd78f0730_get_baud_rate.exit_crit_edge, %if.end12.upd78f0730_get_baud_rate.exit_crit_edge341, %if.end12.upd78f0730_get_baud_rate.exit_crit_edge342, %if.end12.upd78f0730_get_baud_rate.exit_crit_edge343, %if.end12.upd78f0730_get_baud_rate.exit_crit_edge344, %if.end12.upd78f0730_get_baud_rate.exit_crit_edge345, %if.end12.upd78f0730_get_baud_rate.exit_crit_edge346, %if.end12.upd78f0730_get_baud_rate.exit_crit_edge347, %if.end12.upd78f0730_get_baud_rate.exit_crit_edge348
  %retval.0.i315 = phi i32 [ %call.i10.i, %for.cond.8.i ], [ %call.i.i, %if.end12.upd78f0730_get_baud_rate.exit_crit_edge ], [ %call.i.i, %if.end12.upd78f0730_get_baud_rate.exit_crit_edge341 ], [ %call.i.i, %if.end12.upd78f0730_get_baud_rate.exit_crit_edge342 ], [ %call.i.i, %if.end12.upd78f0730_get_baud_rate.exit_crit_edge343 ], [ %call.i.i, %if.end12.upd78f0730_get_baud_rate.exit_crit_edge344 ], [ %call.i.i, %if.end12.upd78f0730_get_baud_rate.exit_crit_edge345 ], [ %call.i.i, %if.end12.upd78f0730_get_baud_rate.exit_crit_edge346 ], [ %call.i.i, %if.end12.upd78f0730_get_baud_rate.exit_crit_edge347 ], [ %call.i.i, %if.end12.upd78f0730_get_baud_rate.exit_crit_edge348 ]
  %13 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %request, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i315)
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %0, align 1
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %1, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @upd78f0730_set_termios.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@upd78f0730_set_termios, %if.then19)) #7
          to label %do.end [label %if.then19], !srcloc !112

if.then19:                                        ; preds = %upd78f0730_get_baud_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @upd78f0730_set_termios.__UNIQUE_ID_ddebug245, ptr noundef %dev1, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i315) #7
  br label %do.end

do.end:                                           ; preds = %if.then19, %upd78f0730_get_baud_rate.exit
  %17 = ptrtoint ptr %c_cflag325 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %c_cflag325, align 4
  %and23 = and i32 %18, 48
  %19 = zext i32 %and23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %and23, label %sw.default [
    i32 32, label %sw.bb
    i32 48, label %do.end.sw.bb51_crit_edge
  ]

do.end.sw.bb51_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb51

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @upd78f0730_set_termios.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@upd78f0730_set_termios, %if.then38)) #7
          to label %sw.epilog [label %if.then38], !srcloc !112

if.then38:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @upd78f0730_set_termios.__UNIQUE_ID_ddebug246, ptr noundef %dev1, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7) #7
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %or47 = or i32 %18, 48
  %20 = ptrtoint ptr %c_cflag325 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or47, ptr %c_cflag325, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.10) #11
  br label %sw.bb51

sw.bb51:                                          ; preds = %sw.default, %do.end.sw.bb51_crit_edge
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %1, align 1
  %23 = or i8 %22, 1
  store i8 %23, ptr %1, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @upd78f0730_set_termios.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@upd78f0730_set_termios, %if.then68)) #7
          to label %sw.epilog [label %if.then68], !srcloc !112

if.then68:                                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @upd78f0730_set_termios.__UNIQUE_ID_ddebug247, ptr noundef %dev1, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.7) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then68, %sw.bb51, %if.then38, %sw.bb
  %24 = ptrtoint ptr %c_cflag325 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %c_cflag325, align 4
  %and74 = and i32 %25, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.else136, label %if.then76

if.then76:                                        ; preds = %sw.epilog
  %and79 = and i32 %25, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %1, align 1
  br i1 %tobool80.not, label %if.else102, label %if.then81

if.then81:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #9
  %28 = or i8 %27, 8
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %1, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @upd78f0730_set_termios.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@upd78f0730_set_termios, %if.then98)) #7
          to label %if.end123 [label %if.then98], !srcloc !112

if.then98:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @upd78f0730_set_termios.__UNIQUE_ID_ddebug248, ptr noundef %dev1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.7) #7
  br label %if.end123

if.else102:                                       ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #9
  %30 = or i8 %27, 4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %1, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @upd78f0730_set_termios.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@upd78f0730_set_termios, %if.then119)) #7
          to label %if.end123 [label %if.then119], !srcloc !112

if.then119:                                       ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @upd78f0730_set_termios.__UNIQUE_ID_ddebug249, ptr noundef %dev1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7) #7
  br label %if.end123

if.end123:                                        ; preds = %if.then119, %if.else102, %if.then98, %if.then81
  %32 = ptrtoint ptr %c_cflag325 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %c_cflag325, align 4
  %and126 = and i32 %33, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %if.end123.if.end157_crit_edge, label %if.then128

if.end123.if.end157_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end157

if.then128:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  %and131 = and i32 %33, -1073741825
  %34 = ptrtoint ptr %c_cflag325 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and131, ptr %c_cflag325, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.16) #11
  br label %if.end157

if.else136:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @upd78f0730_set_termios.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@upd78f0730_set_termios, %if.then153)) #7
          to label %if.end157 [label %if.then153], !srcloc !112

if.then153:                                       ; preds = %if.else136
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @upd78f0730_set_termios.__UNIQUE_ID_ddebug250, ptr noundef %dev1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.7) #7
  br label %if.end157

if.end157:                                        ; preds = %if.then153, %if.else136, %if.then128, %if.end123.if.end157_crit_edge
  %35 = ptrtoint ptr %c_cflag325 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %c_cflag325, align 4
  %and160 = and i32 %36, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %if.else183, label %if.then162

if.then162:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %1, align 1
  %39 = or i8 %38, 2
  store i8 %39, ptr %1, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @upd78f0730_set_termios.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@upd78f0730_set_termios, %if.then179)) #7
          to label %if.end204 [label %if.then179], !srcloc !112

if.then179:                                       ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @upd78f0730_set_termios.__UNIQUE_ID_ddebug251, ptr noundef %dev1, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.7) #7
  br label %if.end204

if.else183:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @upd78f0730_set_termios.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@upd78f0730_set_termios, %if.then200)) #7
          to label %if.end204 [label %if.then200], !srcloc !112

if.then200:                                       ; preds = %if.else183
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @upd78f0730_set_termios.__UNIQUE_ID_ddebug252, ptr noundef %dev1, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.7) #7
  br label %if.end204

if.end204:                                        ; preds = %if.then200, %if.else183, %if.then179, %if.then162
  %40 = ptrtoint ptr %c_cflag325 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %c_cflag325, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %tobool208.not = icmp sgt i32 %41, -1
  br i1 %tobool208.not, label %if.end204.if.end216_crit_edge, label %if.then209

if.end204.if.end216_crit_edge:                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end216

if.then209:                                       ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #9
  %and212 = and i32 %41, 2147483647
  %42 = ptrtoint ptr %c_cflag325 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and212, ptr %c_cflag325, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.22) #11
  br label %if.end216

if.end216:                                        ; preds = %if.then209, %if.end204.if.end216_crit_edge
  %43 = ptrtoint ptr %termios3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %termios3, align 4
  %45 = and i32 %44, 5120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %if.end216.if.end231_crit_edge, label %if.then224

if.end216.if.end231_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end231

if.then224:                                       ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #9
  %and227 = and i32 %44, -5121
  %47 = ptrtoint ptr %termios3 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and227, ptr %termios3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.25) #11
  br label %if.end231

if.end231:                                        ; preds = %if.then224, %if.end216.if.end231_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @upd78f0730_set_termios.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@upd78f0730_set_termios, %if.then248)) #7
          to label %do.end251 [label %if.then248], !srcloc !112

if.then248:                                       ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @upd78f0730_set_termios.__UNIQUE_ID_ddebug253, ptr noundef %dev1, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.7) #7
  br label %do.end251

do.end251:                                        ; preds = %if.then248, %if.end231
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %port, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %call.i316 = call ptr @kmemdup(ptr noundef nonnull %request, i32 noundef 6, i32 noundef 3264) #7
  %tobool1.not.i = icmp eq ptr %call.i316, null
  br i1 %tobool1.not.i, label %do.end251.cleanup_crit_edge, label %if.end3.i

do.end251.cleanup_crit_edge:                      ; preds = %do.end251
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.i:                                        ; preds = %do.end251
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 8
  %shl.i.i = shl i32 %53, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call5.i = call i32 @usb_control_msg(ptr noundef %51, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call.i316, i16 noundef zeroext 6, i32 noundef 5000) #7
  call void @kfree(ptr noundef nonnull %call.i316) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.then8.i, label %if.end3.i.cleanup_crit_edge

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %request, align 1
  %conv11.i = zext i8 %55 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %conv11.i, i32 noundef %call5.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then8.i, %if.end3.i.cleanup_crit_edge, %do.end251.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %request) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @upd78f0730_break_ctl(ptr nocapture noundef readonly %tty, i32 noundef %break_state) #2 align 64 {
entry:
  %request = alloca %struct.upd78f0730_set_dtr_rts, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %request) #7
  %2 = getelementptr inbounds %struct.upd78f0730_set_dtr_rts, ptr %request, i32 0, i32 1
  %dev1 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %4, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %break_state)
  %tobool.not = icmp eq i32 %break_state, 0
  %line_signals8 = getelementptr inbounds %struct.upd78f0730_port_private, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %line_signals8 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %line_signals8, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = or i8 %6, 4
  %8 = ptrtoint ptr %line_signals8 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %line_signals8, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @upd78f0730_break_ctl.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@upd78f0730_break_ctl, %if.then7)) #7
          to label %if.end27 [label %if.then7], !srcloc !112

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @upd78f0730_break_ctl.__UNIQUE_ID_ddebug243, ptr noundef %dev1, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28) #7
  br label %if.end27

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = and i8 %6, -5
  %10 = ptrtoint ptr %line_signals8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %line_signals8, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @upd78f0730_break_ctl.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@upd78f0730_break_ctl, %if.then23)) #7
          to label %if.end27 [label %if.then23], !srcloc !112

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @upd78f0730_break_ctl.__UNIQUE_ID_ddebug244, ptr noundef %dev1, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.else, %if.then7, %if.then
  %11 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %request, align 1
  %line_signals28 = getelementptr inbounds %struct.upd78f0730_port_private, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %line_signals28 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %line_signals28, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %2, align 1
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call.i = call ptr @kmemdup(ptr noundef nonnull %request, i32 noundef 2, i32 noundef 3264) #7
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.end27.upd78f0730_send_ctl.exit_crit_edge, label %if.end3.i

if.end27.upd78f0730_send_ctl.exit_crit_edge:      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %upd78f0730_send_ctl.exit

if.end3.i:                                        ; preds = %if.end27
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i = shl i32 %20, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call5.i = call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call.i, i16 noundef zeroext 2, i32 noundef 5000) #7
  call void @kfree(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.then8.i, label %if.end3.i.upd78f0730_send_ctl.exit_crit_edge

if.end3.i.upd78f0730_send_ctl.exit_crit_edge:     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %upd78f0730_send_ctl.exit

if.then8.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %request, align 1
  %conv11.i = zext i8 %22 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %conv11.i, i32 noundef %call5.i) #11
  br label %upd78f0730_send_ctl.exit

upd78f0730_send_ctl.exit:                         ; preds = %if.then8.i, %if.end3.i.upd78f0730_send_ctl.exit_crit_edge, %if.end27.upd78f0730_send_ctl.exit_crit_edge
  call void @mutex_unlock(ptr noundef %4) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %request) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @upd78f0730_tiocmget(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #7
  %line_signals = getelementptr inbounds %struct.upd78f0730_port_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %line_signals to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %line_signals, align 4
  tail call void @mutex_unlock(ptr noundef %3) #7
  %trunc = trunc i8 %5 to i3
  %rev = tail call i3 @llvm.bitreverse.i3(i3 %trunc)
  %mask = and i3 %rev, -2
  %or = zext i3 %mask to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @upd78f0730_tiocmget.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@upd78f0730_tiocmget, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !112

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @upd78f0730_tiocmget.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef %or) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @upd78f0730_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #2 align 64 {
entry:
  %request = alloca %struct.upd78f0730_set_dtr_rts, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %request) #7
  %2 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %request, align 1, !annotation !113
  %3 = getelementptr inbounds %struct.upd78f0730_set_dtr_rts, ptr %request, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !113
  %dev1 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %6, i32 noundef 0) #7
  %and = and i32 %set, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %line_signals = getelementptr inbounds %struct.upd78f0730_port_private, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %line_signals to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %line_signals, align 4
  %9 = or i8 %8, 2
  store i8 %9, ptr %line_signals, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @upd78f0730_tiocmset.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@upd78f0730_tiocmset, %if.then7)) #7
          to label %if.end8 [label %if.then7], !srcloc !112

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @upd78f0730_tiocmset.__UNIQUE_ID_ddebug239, ptr noundef %dev1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then, %entry.if.end8_crit_edge
  %and9 = and i32 %set, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end32_crit_edge, label %if.then11

if.end8.if.end32_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %line_signals12 = getelementptr inbounds %struct.upd78f0730_port_private, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %line_signals12 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %line_signals12, align 4
  %12 = or i8 %11, 1
  store i8 %12, ptr %line_signals12, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @upd78f0730_tiocmset.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@upd78f0730_tiocmset, %if.then28)) #7
          to label %if.end32 [label %if.then28], !srcloc !112

if.then28:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @upd78f0730_tiocmset.__UNIQUE_ID_ddebug240, ptr noundef %dev1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33) #7
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.then11, %if.end8.if.end32_crit_edge
  %and33 = and i32 %clear, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end56_crit_edge, label %if.then35

if.end32.if.end56_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %line_signals36 = getelementptr inbounds %struct.upd78f0730_port_private, ptr %6, i32 0, i32 1
  %13 = ptrtoint ptr %line_signals36 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %line_signals36, align 4
  %15 = and i8 %14, -3
  store i8 %15, ptr %line_signals36, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @upd78f0730_tiocmset.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@upd78f0730_tiocmset, %if.then52)) #7
          to label %if.end56 [label %if.then52], !srcloc !112

if.then52:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @upd78f0730_tiocmset.__UNIQUE_ID_ddebug241, ptr noundef %dev1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.33) #7
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.then35, %if.end32.if.end56_crit_edge
  %and57 = and i32 %clear, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end56.if.end80_crit_edge, label %if.then59

if.end56.if.end80_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %line_signals60 = getelementptr inbounds %struct.upd78f0730_port_private, ptr %6, i32 0, i32 1
  %16 = ptrtoint ptr %line_signals60 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %line_signals60, align 4
  %18 = and i8 %17, -2
  store i8 %18, ptr %line_signals60, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @upd78f0730_tiocmset.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@upd78f0730_tiocmset, %if.then76)) #7
          to label %if.end80 [label %if.then76], !srcloc !112

if.then76:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @upd78f0730_tiocmset.__UNIQUE_ID_ddebug242, ptr noundef %dev1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.33) #7
  br label %if.end80

if.end80:                                         ; preds = %if.then76, %if.then59, %if.end56.if.end80_crit_edge
  %19 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %request, align 1
  %line_signals81 = getelementptr inbounds %struct.upd78f0730_port_private, ptr %6, i32 0, i32 1
  %20 = ptrtoint ptr %line_signals81 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %line_signals81, align 4
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %3, align 1
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %call.i = call ptr @kmemdup(ptr noundef nonnull %request, i32 noundef 2, i32 noundef 3264) #7
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.end80.upd78f0730_send_ctl.exit_crit_edge, label %if.end3.i

if.end80.upd78f0730_send_ctl.exit_crit_edge:      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %upd78f0730_send_ctl.exit

if.end3.i:                                        ; preds = %if.end80
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %shl.i.i = shl i32 %28, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call5.i = call i32 @usb_control_msg(ptr noundef %26, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call.i, i16 noundef zeroext 2, i32 noundef 5000) #7
  call void @kfree(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.then8.i, label %if.end3.i.upd78f0730_send_ctl.exit_crit_edge

if.end3.i.upd78f0730_send_ctl.exit_crit_edge:     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %upd78f0730_send_ctl.exit

if.then8.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %request, align 1
  %conv11.i = zext i8 %30 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %conv11.i, i32 noundef %call5.i) #11
  br label %upd78f0730_send_ctl.exit

upd78f0730_send_ctl.exit:                         ; preds = %if.then8.i, %if.end3.i.upd78f0730_send_ctl.exit_crit_edge, %if.end80.upd78f0730_send_ctl.exit_crit_edge
  %retval.0.i106 = phi i32 [ %call5.i, %if.then8.i ], [ -12, %if.end80.upd78f0730_send_ctl.exit_crit_edge ], [ 0, %if.end3.i.upd78f0730_send_ctl.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %6) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %request) #7
  ret i32 %retval.0.i106
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @upd78f0730_dtr_rts(ptr nocapture noundef readonly %port, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tty2 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %tty2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tty2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %. = select i1 %tobool.not, i32 0, i32 6
  %.3 = select i1 %tobool.not, i32 6, i32 0
  %call = tail call i32 @upd78f0730_tiocmset(ptr noundef %1, i32 noundef %., i32 noundef %.3)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_generic_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_hw_change(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i3 @llvm.bitreverse.i3(i3) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !35, !36, !38, !39, !41, !42, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !79, !81, !82, !83, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !99, !100, !102}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__initcall__kmod_upd78f0730__254_428_usb_serial_module_init6, !1, !"__initcall__kmod_upd78f0730__254_428_usb_serial_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/upd78f0730.c", i32 428, i32 1}
!2 = !{ptr @__exitcall_usb_serial_module_exit, !1, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description255, !4, !"__UNIQUE_ID_description255", i1 false, i1 false}
!4 = !{!"../drivers/usb/serial/upd78f0730.c", i32 430, i32 1}
!5 = !{ptr @__UNIQUE_ID_author256, !6, !"__UNIQUE_ID_author256", i1 false, i1 false}
!6 = !{!"../drivers/usb/serial/upd78f0730.c", i32 431, i32 1}
!7 = !{ptr @__UNIQUE_ID_file257, !8, !"__UNIQUE_ID_file257", i1 false, i1 false}
!8 = !{!"../drivers/usb/serial/upd78f0730.c", i32 432, i32 1}
!9 = !{ptr @__UNIQUE_ID_license258, !8, !"__UNIQUE_ID_license258", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @id_table, !12, !"id_table", i1 false, i1 false}
!12 = !{!"../drivers/usb/serial/upd78f0730.c", i32 31, i32 35}
!13 = !{ptr @serial_drivers, !14, !"serial_drivers", i1 false, i1 false}
!14 = !{!"../drivers/usb/serial/upd78f0730.c", i32 423, i32 41}
!15 = !{ptr @upd78f0730_device, !16, !"upd78f0730_device", i1 false, i1 false}
!16 = !{!"../drivers/usb/serial/upd78f0730.c", i32 405, i32 33}
!17 = !{ptr @upd78f0730_port_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/usb/serial/upd78f0730.c", i32 168, i32 2}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @upd78f0730_open.request, !21, !"request", i1 false, i1 false}
!21 = !{!"../drivers/usb/serial/upd78f0730.c", i32 378, i32 44}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/serial/upd78f0730.c", i32 151, i32 3}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @upd78f0730_send_ctl._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @upd78f0730_send_ctl._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @upd78f0730_close.request, !31, !"request", i1 false, i1 false}
!31 = !{!"../drivers/usb/serial/upd78f0730.c", i32 396, i32 44}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/serial/upd78f0730.c", i32 318, i32 2}
!34 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @upd78f0730_set_termios.__UNIQUE_ID_ddebug245, !33, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/serial/upd78f0730.c", i32 323, i32 3}
!38 = !{ptr @upd78f0730_set_termios.__UNIQUE_ID_ddebug246, !37, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/serial/upd78f0730.c", i32 328, i32 3}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @upd78f0730_set_termios._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @upd78f0730_set_termios._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/serial/upd78f0730.c", i32 332, i32 3}
!46 = !{ptr @upd78f0730_set_termios.__UNIQUE_ID_ddebug247, !45, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/serial/upd78f0730.c", i32 339, i32 4}
!49 = !{ptr @upd78f0730_set_termios.__UNIQUE_ID_ddebug248, !48, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/serial/upd78f0730.c", i32 342, i32 4}
!52 = !{ptr @upd78f0730_set_termios.__UNIQUE_ID_ddebug249, !51, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/serial/upd78f0730.c", i32 347, i32 4}
!55 = !{ptr @upd78f0730_set_termios._entry.15, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @upd78f0730_set_termios._entry_ptr.17, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/serial/upd78f0730.c", i32 351, i32 3}
!59 = !{ptr @upd78f0730_set_termios.__UNIQUE_ID_ddebug250, !58, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/serial/upd78f0730.c", i32 356, i32 3}
!62 = !{ptr @upd78f0730_set_termios.__UNIQUE_ID_ddebug251, !61, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/serial/upd78f0730.c", i32 359, i32 3}
!65 = !{ptr @upd78f0730_set_termios.__UNIQUE_ID_ddebug252, !64, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/serial/upd78f0730.c", i32 364, i32 3}
!68 = !{ptr @upd78f0730_set_termios._entry.21, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @upd78f0730_set_termios._entry_ptr.23, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/serial/upd78f0730.c", i32 368, i32 3}
!72 = !{ptr @upd78f0730_set_termios._entry.24, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @upd78f0730_set_termios._entry_ptr.26, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/serial/upd78f0730.c", i32 371, i32 2}
!76 = !{ptr @upd78f0730_set_termios.__UNIQUE_ID_ddebug253, !75, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!77 = distinct !{null, !78, !"supported", i1 false, i1 false}
!78 = !{!"../drivers/usb/serial/upd78f0730.c", i32 282, i32 23}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/serial/upd78f0730.c", i32 253, i32 3}
!81 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @upd78f0730_break_ctl.__UNIQUE_ID_ddebug243, !80, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/serial/upd78f0730.c", i32 256, i32 3}
!85 = !{ptr @upd78f0730_break_ctl.__UNIQUE_ID_ddebug244, !84, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/serial/upd78f0730.c", i32 199, i32 2}
!88 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @upd78f0730_tiocmget.__UNIQUE_ID_ddebug238, !87, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/serial/upd78f0730.c", i32 218, i32 3}
!92 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @upd78f0730_tiocmset.__UNIQUE_ID_ddebug239, !91, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/serial/upd78f0730.c", i32 222, i32 3}
!96 = !{ptr @upd78f0730_tiocmset.__UNIQUE_ID_ddebug240, !95, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/serial/upd78f0730.c", i32 226, i32 3}
!99 = !{ptr @upd78f0730_tiocmset.__UNIQUE_ID_ddebug241, !98, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/serial/upd78f0730.c", i32 230, i32 3}
!102 = !{ptr @upd78f0730_tiocmset.__UNIQUE_ID_ddebug242, !101, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{i64 2148962742, i64 2148962747, i64 2148962760, i64 2148962804, i64 2148962838, i64 2148962859}
!113 = !{!"auto-init"}
