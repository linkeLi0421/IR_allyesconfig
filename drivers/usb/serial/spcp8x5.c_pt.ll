; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/spcp8x5.c_pt.bc'
source_filename = "../drivers/usb/serial/spcp8x5.c"
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
%struct.usb_serial = type { ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, [16 x ptr], %struct.kref, %struct.mutex, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spcp8x5_private = type { i32, %struct.spinlock, i8 }
%struct.usb_serial_port = type { ptr, %struct.tty_port, %struct.spinlock, i32, i8, ptr, ptr, i8, ptr, i32, ptr, i8, ptr, i32, ptr, i8, [2 x ptr], [2 x ptr], i32, ptr, i32, ptr, %struct.kfifo, [2 x ptr], [2 x ptr], i32, i8, %struct.async_icount, i32, i32, %struct.work_struct, i32, %struct.device }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }

@__initcall__kmod_spcp8x5__241_487_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @spcp8x5_device, ptr null], [24 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description242 = internal constant [57 x i8] c"spcp8x5.description=SPCP8x5 USB to serial adaptor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [40 x i8] c"spcp8x5.file=drivers/usb/serial/spcp8x5\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [20 x i8] c"spcp8x5.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spcp8x5\00", [24 x i8] zeroinitializer }, align 32
@id_table = internal constant { [6 x %struct.usb_device_id], [48 x i8] } { [6 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1137, i16 2078, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1276, i16 516, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1276, i16 561, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1276, i16 565, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1276, i16 513, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@spcp8x5_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr null, ptr @id_table, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 1, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr @spcp8x5_probe, ptr null, ptr null, ptr null, ptr null, ptr @spcp8x5_port_probe, ptr @spcp8x5_port_remove, ptr null, ptr null, ptr null, ptr @spcp8x5_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spcp8x5_set_termios, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spcp8x5_tiocmget, ptr @spcp8x5_tiocmset, ptr null, ptr null, ptr @spcp8x5_dtr_rts, ptr @spcp8x5_carrier_raised, ptr @spcp8x5_init_termios, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPCP8x5\00", [24 x i8] zeroinitializer }, align 32
@spcp8x5_port_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@spcp8x5_set_ctrl_line._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 194, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to set control lines: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"spcp8x5_set_ctrl_line\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/serial/spcp8x5.c\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@spcp8x5_set_ctrl_line._entry_ptr = internal global ptr @spcp8x5_set_ctrl_line._entry, section ".printk_index", align 4
@spcp8x5_set_termios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 342, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unsupported baudrate, using 9600\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"spcp8x5_set_termios\00", [44 x i8] zeroinitializer }, align 32
@spcp8x5_set_termios._entry_ptr = internal global ptr @spcp8x5_set_termios._entry, section ".printk_index", align 4
@spcp8x5_set_termios._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.5, i32 380, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Set UART format %#x failed (error = %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@spcp8x5_set_termios._entry_ptr.12 = internal global ptr @spcp8x5_set_termios._entry.10, section ".printk_index", align 4
@spcp8x5_set_termios.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.5, ptr @.str.13, i8 0, i8 95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"0x21:0x40:0:0  %d\0A\00", [45 x i8] zeroinitializer }, align 32
@spcp8x5_set_work_mode.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.5, ptr @.str.15, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"spcp8x5_set_work_mode\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"value = %#x , index = %#x\0A\00", [37 x i8] zeroinitializer }, align 32
@spcp8x5_set_work_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.5, i32 247, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to set work mode: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@spcp8x5_set_work_mode._entry_ptr = internal global ptr @spcp8x5_set_work_mode._entry, section ".printk_index", align 4
@spcp8x5_get_msr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 217, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get modem status: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spcp8x5_get_msr\00", [16 x i8] zeroinitializer }, align 32
@spcp8x5_get_msr._entry_ptr = internal global ptr @spcp8x5_get_msr._entry, section ".printk_index", align 4
@spcp8x5_get_msr.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.5, ptr @.str.19, i8 0, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"0xc0:0x22:0:6  %d - 0x02%x\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 32, i64 0, i64 300, i64 600, i64 1200, i64 2400, i64 4800, i64 9600, i64 19200, i64 38400, i64 57600, i64 115200, i64 230400, i64 460800, i64 921600, i64 1000000, i64 3000000]
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 483, i32 41 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 487, i32 1 }
@___asan_gen_.26 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 40, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"spcp8x5_device\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 462, i32 33 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 465, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 162, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 193, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 342, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 379, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 381, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 245, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 247, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 217, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [32 x i8] c"../drivers/usb/serial/spcp8x5.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 223, i32 2 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_spcp8x5__241_487_usb_serial_module_init6, ptr @spcp8x5_get_msr._entry, ptr @spcp8x5_get_msr._entry_ptr, ptr @spcp8x5_set_ctrl_line._entry, ptr @spcp8x5_set_ctrl_line._entry_ptr, ptr @spcp8x5_set_termios._entry, ptr @spcp8x5_set_termios._entry.10, ptr @spcp8x5_set_termios._entry_ptr, ptr @spcp8x5_set_termios._entry_ptr.12, ptr @spcp8x5_set_work_mode._entry, ptr @spcp8x5_set_work_mode._entry_ptr, ptr @usb_serial_module_exit, ptr @serial_drivers, ptr @.str, ptr @id_table, ptr @spcp8x5_device, ptr @.str.1, ptr @spcp8x5_port_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spcp8x5_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spcp8x5_port_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spcp8x5_set_ctrl_line._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spcp8x5_set_termios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spcp8x5_set_termios._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spcp8x5_set_work_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spcp8x5_get_msr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @spcp8x5_probe(ptr nocapture noundef writeonly %serial, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %id, ptr %private.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spcp8x5_port_probe(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 52) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.spcp8x5_private, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @spcp8x5_port_probe.__key, i16 noundef signext 3) #7
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %3, i32 0, i32 12
  %5 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_info, align 4
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %drain_delay = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 1, i32 18
  %9 = ptrtoint ptr %drain_delay to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 256, ptr %drain_delay, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spcp8x5_port_remove(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spcp8x5_open(ptr noundef %tty, ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 21
  %6 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_urb, align 8
  %pipe = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pipe, align 4
  %call2 = tail call i32 @usb_clear_halt(ptr noundef %5, i32 noundef %9) #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %read_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 14
  %12 = ptrtoint ptr %read_urb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_urb, align 4
  %pipe4 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %pipe4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pipe4, align 4
  %call5 = tail call i32 @usb_clear_halt(ptr noundef %11, i32 noundef %15) #7
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i = shl i32 %19, 8
  %or = or i32 %shl.i, -2147483648
  %call9 = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or, i8 noundef zeroext 9, i8 noundef zeroext 0, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %and.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.spcp8x5_set_ctrl_line.exit_crit_edge

if.end.spcp8x5_set_ctrl_line.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %spcp8x5_set_ctrl_line.exit

if.end.i:                                         ; preds = %if.end
  %line_control = getelementptr inbounds %struct.spcp8x5_private, ptr %3, i32 0, i32 2
  %24 = ptrtoint ptr %line_control to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %line_control, align 4
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %port, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %shl.i.i = shl i32 %31, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv.i = zext i8 %25 to i16
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %29, i32 noundef %or.i, i8 noundef zeroext 35, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.not.i = icmp eq i32 %call4.i, 0
  br i1 %cmp.not.i, label %if.end.i.spcp8x5_set_ctrl_line.exit_crit_edge, label %do.end.i

if.end.i.spcp8x5_set_ctrl_line.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spcp8x5_set_ctrl_line.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev7.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.3, i32 noundef %call4.i) #11
  br label %spcp8x5_set_ctrl_line.exit

spcp8x5_set_ctrl_line.exit:                       ; preds = %do.end.i, %if.end.i.spcp8x5_set_ctrl_line.exit_crit_edge, %if.end.spcp8x5_set_ctrl_line.exit_crit_edge
  %tobool11.not = icmp eq ptr %tty, null
  br i1 %tobool11.not, label %spcp8x5_set_ctrl_line.exit.if.end13_crit_edge, label %if.then12

spcp8x5_set_ctrl_line.exit.if.end13_crit_edge:    ; preds = %spcp8x5_set_ctrl_line.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then12:                                        ; preds = %spcp8x5_set_ctrl_line.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @spcp8x5_set_termios(ptr noundef nonnull %tty, ptr noundef %port, ptr noundef null)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %spcp8x5_set_ctrl_line.exit.if.end13_crit_edge
  %call14 = tail call i32 @usb_serial_generic_open(ptr noundef %tty, ptr noundef %port) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end13 ], [ %call9, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spcp8x5_set_termios(ptr noundef %tty, ptr noundef %port, ptr noundef %old_termios) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %4 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_cflag, align 4
  %tobool.not = icmp eq ptr %old_termios, null
  br i1 %tobool.not, label %do.body5.thread, label %land.lhs.true

do.body5.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %lock204 = getelementptr inbounds %struct.spcp8x5_private, ptr %3, i32 0, i32 1
  %call7205 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock204) #7
  %line_control206 = getelementptr inbounds %struct.spcp8x5_private, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %line_control206 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %line_control206, align 4
  br label %if.end28

land.lhs.true:                                    ; preds = %entry
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %call3 = tail call i32 @tty_termios_hw_change(ptr noundef %termios, ptr noundef nonnull %old_termios) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true11:                                  ; preds = %land.lhs.true
  %lock = getelementptr inbounds %struct.spcp8x5_private, ptr %3, i32 0, i32 1
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %line_control = getelementptr inbounds %struct.spcp8x5_private, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %line_control to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %line_control, align 4
  %c_cflag12 = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 2
  %10 = ptrtoint ptr %c_cflag12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %c_cflag12, align 4
  %and = and i32 %11, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp13 = icmp eq i32 %and, 0
  br i1 %cmp13, label %if.then15, label %land.lhs.true11.if.end28_crit_edge

land.lhs.true11.if.end28_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then15:                                        ; preds = %land.lhs.true11
  %12 = or i8 %9, 1
  %13 = ptrtoint ptr %line_control to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %line_control, align 4
  %14 = ptrtoint ptr %c_cflag12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %c_cflag12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %tobool21.not = icmp sgt i32 %15, -1
  br i1 %tobool21.not, label %if.then22, label %if.then15.if.end28_crit_edge

if.then15.if.end28_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then22:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %16 = or i8 %9, 3
  %17 = ptrtoint ptr %line_control to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %line_control, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then22, %if.then15.if.end28_crit_edge, %land.lhs.true11.if.end28_crit_edge, %do.body5.thread
  %18 = phi i8 [ %7, %do.body5.thread ], [ %9, %if.then15.if.end28_crit_edge ], [ %9, %if.then22 ], [ %9, %land.lhs.true11.if.end28_crit_edge ]
  %line_control209 = phi ptr [ %line_control206, %do.body5.thread ], [ %line_control, %if.then15.if.end28_crit_edge ], [ %line_control, %if.then22 ], [ %line_control, %land.lhs.true11.if.end28_crit_edge ]
  %call7208 = phi i32 [ %call7205, %do.body5.thread ], [ %call7, %if.then15.if.end28_crit_edge ], [ %call7, %if.then22 ], [ %call7, %land.lhs.true11.if.end28_crit_edge ]
  %lock207 = phi ptr [ %lock204, %do.body5.thread ], [ %lock, %if.then15.if.end28_crit_edge ], [ %lock, %if.then22 ], [ %lock, %land.lhs.true11.if.end28_crit_edge ]
  %19 = ptrtoint ptr %line_control209 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %line_control209, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %20)
  %cmp32.not = icmp eq i8 %18, %20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock207, i32 noundef %call7208) #7
  br i1 %cmp32.not, label %if.end28.if.end39_crit_edge, label %if.then34

if.end28.if.end39_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then34:                                        ; preds = %if.end28
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %and.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then34.if.end39_crit_edge

if.then34.if.end39_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.end.i:                                         ; preds = %if.then34
  %25 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %port, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 8
  %shl.i.i = shl i32 %30, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv.i = zext i8 %20 to i16
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %28, i32 noundef %or.i, i8 noundef zeroext 35, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.not.i = icmp eq i32 %call4.i, 0
  br i1 %cmp.not.i, label %if.end.i.if.end39_crit_edge, label %do.end.i

if.end.i.if.end39_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev7.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.3, i32 noundef %call4.i) #11
  br label %if.end39

if.end39:                                         ; preds = %do.end.i, %if.end.i.if.end39_crit_edge, %if.then34.if.end39_crit_edge, %if.end28.if.end39_crit_edge
  %termios.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios.i) #7
  %31 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %do.end71 [
    i32 300, label %if.end39.sw.epilog_crit_edge
    i32 600, label %sw.bb41
    i32 1200, label %sw.bb43
    i32 2400, label %sw.bb45
    i32 4800, label %sw.bb47
    i32 9600, label %sw.bb49
    i32 19200, label %sw.bb51
    i32 38400, label %sw.bb53
    i32 57600, label %sw.bb55
    i32 115200, label %sw.bb57
    i32 230400, label %sw.bb59
    i32 460800, label %sw.bb61
    i32 921600, label %sw.bb63
    i32 3000000, label %sw.bb65
    i32 0, label %if.end39.sw.bb67_crit_edge
    i32 1000000, label %if.end39.sw.bb67_crit_edge211
  ]

if.end39.sw.bb67_crit_edge211:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb67

if.end39.sw.bb67_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb67

if.end39.sw.epilog_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb59:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb63:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb65:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb67:                                          ; preds = %if.end39.sw.bb67_crit_edge, %if.end39.sw.bb67_crit_edge211
  br label %sw.epilog

do.end71:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end71, %sw.bb67, %sw.bb65, %sw.bb63, %sw.bb61, %sw.bb59, %sw.bb57, %sw.bb55, %sw.bb53, %sw.bb51, %sw.bb49, %sw.bb47, %sw.bb45, %sw.bb43, %sw.bb41, %if.end39.sw.epilog_crit_edge
  %buf.sroa.0.0 = phi i32 [ 0, %do.end71 ], [ 11, %sw.bb67 ], [ 17, %sw.bb65 ], [ 14, %sw.bb63 ], [ 13, %sw.bb61 ], [ 12, %sw.bb59 ], [ 11, %sw.bb57 ], [ 10, %sw.bb55 ], [ 9, %sw.bb53 ], [ 7, %sw.bb51 ], [ 5, %sw.bb49 ], [ 4, %sw.bb47 ], [ 3, %sw.bb45 ], [ 2, %sw.bb43 ], [ 1, %sw.bb41 ], [ 0, %if.end39.sw.epilog_crit_edge ]
  %and72 = lshr i32 %5, 4
  %or99 = and i32 %and72, 7
  %and101 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  %and104 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  %cond106 = select i1 %tobool105.not, i32 48, i32 16
  %or109 = select i1 %tobool102.not, i32 0, i32 %cond106
  %buf.sroa.19.1 = or i32 %or109, %or99
  %conv120 = shl nuw nsw i32 %buf.sroa.19.1, 8
  %or121 = or i32 %buf.sroa.0.0, %conv120
  %conv122 = trunc i32 %or121 to i16
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %shl.i = shl i32 %35, 8
  %or126 = or i32 %shl.i, -2147483648
  %call127 = tail call i32 @usb_control_msg(ptr noundef %33, i32 noundef %or126, i8 noundef zeroext 33, i8 noundef zeroext 64, i16 noundef zeroext %conv122, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %cmp128 = icmp slt i32 %call127, 0
  br i1 %cmp128, label %do.end133, label %sw.epilog.do.body137_crit_edge

sw.epilog.do.body137_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body137

do.end133:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %dev134 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev134, ptr noundef nonnull @.str.11, i32 noundef %or121, i32 noundef %call127) #11
  br label %do.body137

do.body137:                                       ; preds = %do.end133, %sw.epilog.do.body137_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spcp8x5_set_termios.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spcp8x5_set_termios, %if.then143)) #7
          to label %do.end147 [label %if.then143], !srcloc !65

if.then143:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #9
  %dev144 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spcp8x5_set_termios.__UNIQUE_ID_ddebug240, ptr noundef %dev144, ptr noundef nonnull @.str.13, i32 noundef %call127) #7
  br label %do.end147

do.end147:                                        ; preds = %if.then143, %do.body137
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool149.not = icmp sgt i32 %5, -1
  br i1 %tobool149.not, label %do.end147.cleanup_crit_edge, label %if.then150

do.end147.cleanup_crit_edge:                      ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then150:                                       ; preds = %do.end147
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %driver_data.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %and.i198 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i198)
  %tobool.not.i199 = icmp eq i32 %and.i198, 0
  br i1 %tobool.not.i199, label %if.end.i202, label %if.then150.cleanup_crit_edge

if.then150.cleanup_crit_edge:                     ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i202:                                      ; preds = %if.then150
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %port, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 8
  %shl.i.i200 = shl i32 %45, 8
  %or.i201 = or i32 %shl.i.i200, -2147483648
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %43, i32 noundef %or.i201, i8 noundef zeroext 36, i8 noundef zeroext 64, i16 noundef zeroext 10, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spcp8x5_set_work_mode.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spcp8x5_set_termios, %if.then8.i)) #7
          to label %do.end.i203 [label %if.then8.i], !srcloc !65

if.then8.i:                                       ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #9
  %dev9.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spcp8x5_set_work_mode.__UNIQUE_ID_ddebug239, ptr noundef %dev9.i, ptr noundef nonnull @.str.15, i32 noundef 10, i32 noundef 0) #7
  br label %do.end.i203

do.end.i203:                                      ; preds = %if.then8.i, %if.end.i202
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %do.end16.i, label %do.end.i203.cleanup_crit_edge

do.end.i203.cleanup_crit_edge:                    ; preds = %do.end.i203
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end16.i:                                       ; preds = %do.end.i203
  call void @__sanitizer_cov_trace_pc() #9
  %dev17.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i, ptr noundef nonnull @.str.16, i32 noundef %call3.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end16.i, %do.end.i203.cleanup_crit_edge, %if.then150.cleanup_crit_edge, %do.end147.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spcp8x5_tiocmget(ptr nocapture noundef readonly %tty) #3 align 64 {
entry:
  %status = alloca i8, align 1
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #7
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %status, align 1, !annotation !66
  %call1 = call fastcc i32 @spcp8x5_get_msr(ptr noundef %1, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.spcp8x5_private, ptr %3, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %line_control = getelementptr inbounds %struct.spcp8x5_private, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %line_control to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %line_control, align 4
  %conv7 = zext i8 %6 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  %and = shl nuw nsw i32 %conv7, 1
  %or = and i32 %and, 6
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %status, align 1
  %conv13 = zext i8 %8 to i32
  %and14 = shl nuw nsw i32 %conv13, 1
  %9 = and i32 %and14, 32
  %or17 = or i32 %9, %or
  %and19 = shl nuw nsw i32 %conv13, 3
  %10 = and i32 %and19, 256
  %or22 = or i32 %or17, %10
  %11 = and i32 %and14, 128
  %or27 = or i32 %or22, %11
  %and29 = lshr i32 %conv13, 1
  %12 = and i32 %and29, 64
  %or32 = or i32 %or27, %12
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or32, %do.body2 ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spcp8x5_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #3 align 64 {
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
  %lock = getelementptr inbounds %struct.spcp8x5_private, ptr %3, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %and = and i32 %set, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %line_control = getelementptr inbounds %struct.spcp8x5_private, ptr %3, i32 0, i32 2
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %line_control11 = getelementptr inbounds %struct.spcp8x5_private, ptr %3, i32 0, i32 2
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %line_control19 = getelementptr inbounds %struct.spcp8x5_private, ptr %3, i32 0, i32 2
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %line_control27 = getelementptr inbounds %struct.spcp8x5_private, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %line_control27 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %line_control27, align 4
  %15 = and i8 %14, -2
  store i8 %15, ptr %line_control27, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.end23.if.end31_crit_edge
  %line_control32 = getelementptr inbounds %struct.spcp8x5_private, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %line_control32 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %line_control32, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %and.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end31.spcp8x5_set_ctrl_line.exit_crit_edge

if.end31.spcp8x5_set_ctrl_line.exit_crit_edge:    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %spcp8x5_set_ctrl_line.exit

if.end.i:                                         ; preds = %if.end31
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i.i = shl i32 %27, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv.i = zext i8 %17 to i16
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or.i, i8 noundef zeroext 35, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.not.i = icmp eq i32 %call4.i, 0
  br i1 %cmp.not.i, label %if.end.i.spcp8x5_set_ctrl_line.exit_crit_edge, label %do.end.i

if.end.i.spcp8x5_set_ctrl_line.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spcp8x5_set_ctrl_line.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev7.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.3, i32 noundef %call4.i) #11
  br label %spcp8x5_set_ctrl_line.exit

spcp8x5_set_ctrl_line.exit:                       ; preds = %do.end.i, %if.end.i.spcp8x5_set_ctrl_line.exit_crit_edge, %if.end31.spcp8x5_set_ctrl_line.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %if.end31.spcp8x5_set_ctrl_line.exit_crit_edge ], [ %call4.i, %do.end.i ], [ 0, %if.end.i.spcp8x5_set_ctrl_line.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spcp8x5_dtr_rts(ptr noundef %port, i32 noundef %on) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.spcp8x5_private, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %line_control6 = getelementptr inbounds %struct.spcp8x5_private, ptr %1, i32 0, i32 2
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %line_control6 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %line_control6, align 4
  %4 = and i8 %3, -4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %.sink = phi i8 [ %4, %if.else ], [ 3, %entry.if.end_crit_edge ]
  %5 = ptrtoint ptr %line_control6 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink, ptr %line_control6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.spcp8x5_set_ctrl_line.exit_crit_edge

if.end.spcp8x5_set_ctrl_line.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %spcp8x5_set_ctrl_line.exit

if.end.i:                                         ; preds = %if.end
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i = shl i32 %15, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv.i = zext i8 %.sink to i16
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or.i, i8 noundef zeroext 35, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.not.i = icmp eq i32 %call4.i, 0
  br i1 %cmp.not.i, label %if.end.i.spcp8x5_set_ctrl_line.exit_crit_edge, label %do.end.i

if.end.i.spcp8x5_set_ctrl_line.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spcp8x5_set_ctrl_line.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev7.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.3, i32 noundef %call4.i) #11
  br label %spcp8x5_set_ctrl_line.exit

spcp8x5_set_ctrl_line.exit:                       ; preds = %do.end.i, %if.end.i.spcp8x5_set_ctrl_line.exit_crit_edge, %if.end.spcp8x5_set_ctrl_line.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spcp8x5_carrier_raised(ptr noundef %port) #3 align 64 {
entry:
  %msr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msr) #7
  %0 = ptrtoint ptr %msr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %msr, align 1, !annotation !66
  %call = call fastcc i32 @spcp8x5_get_msr(ptr noundef %port, ptr noundef nonnull %msr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %msr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %msr, align 1
  %.lobit = lshr i8 %2, 7
  %3 = zext i8 %.lobit to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %3, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msr) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spcp8x5_init_termios(ptr noundef %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef 115200, i32 noundef 115200) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_hw_change(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spcp8x5_get_msr(ptr noundef %port, ptr nocapture noundef writeonly %status) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 1) #10
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %5, align 8
  %shl.i = shl i32 %10, 8
  %or7 = or i32 %shl.i, -2147483520
  %call8 = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or7, i8 noundef zeroext 34, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 6, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 1, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp = icmp slt i32 %call8, 1
  br i1 %cmp, label %do.end, label %do.body15

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev10 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.17, i32 noundef %call8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp11 = icmp eq i32 %call8, 0
  %spec.store.select = select i1 %cmp11, i32 -5, i32 %call8
  br label %out

do.body15:                                        ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spcp8x5_get_msr.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spcp8x5_get_msr, %if.then20)) #7
          to label %do.end24 [label %if.then20], !srcloc !65

if.then20:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  %dev21 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %call7.i.i, align 8
  %conv = zext i8 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spcp8x5_get_msr.__UNIQUE_ID_ddebug238, ptr noundef %dev21, ptr noundef nonnull @.str.19, i32 noundef %call8, i32 noundef %conv) #7
  br label %do.end24

do.end24:                                         ; preds = %if.then20, %do.body15
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %call7.i.i, align 8
  %15 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %status, align 1
  br label %out

out:                                              ; preds = %do.end24, %do.end
  %ret.0 = phi i32 [ %spec.store.select, %do.end ], [ 0, %do.end24 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -1, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !17, !19, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__initcall__kmod_spcp8x5__241_487_usb_serial_module_init6, !1, !"__initcall__kmod_spcp8x5__241_487_usb_serial_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/spcp8x5.c", i32 487, i32 1}
!2 = !{ptr @__exitcall_usb_serial_module_exit, !1, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description242, !4, !"__UNIQUE_ID_description242", i1 false, i1 false}
!4 = !{!"../drivers/usb/serial/spcp8x5.c", i32 489, i32 1}
!5 = !{ptr @__UNIQUE_ID_file243, !6, !"__UNIQUE_ID_file243", i1 false, i1 false}
!6 = !{!"../drivers/usb/serial/spcp8x5.c", i32 490, i32 1}
!7 = !{ptr @__UNIQUE_ID_license244, !6, !"__UNIQUE_ID_license244", i1 false, i1 false}
!8 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @id_table, !10, !"id_table", i1 false, i1 false}
!10 = !{!"../drivers/usb/serial/spcp8x5.c", i32 40, i32 35}
!11 = !{ptr @serial_drivers, !12, !"serial_drivers", i1 false, i1 false}
!12 = !{!"../drivers/usb/serial/spcp8x5.c", i32 483, i32 41}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/serial/spcp8x5.c", i32 465, i32 12}
!15 = !{ptr @spcp8x5_device, !16, !"spcp8x5_device", i1 false, i1 false}
!16 = !{!"../drivers/usb/serial/spcp8x5.c", i32 462, i32 33}
!17 = !{ptr @spcp8x5_port_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/usb/serial/spcp8x5.c", i32 162, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/serial/spcp8x5.c", i32 193, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @spcp8x5_set_ctrl_line._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @spcp8x5_set_ctrl_line._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/serial/spcp8x5.c", i32 342, i32 3}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @spcp8x5_set_termios._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @spcp8x5_set_termios._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/serial/spcp8x5.c", i32 379, i32 3}
!35 = !{ptr @spcp8x5_set_termios._entry.10, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @spcp8x5_set_termios._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/serial/spcp8x5.c", i32 381, i32 2}
!39 = !{ptr @spcp8x5_set_termios.__UNIQUE_ID_ddebug240, !38, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/serial/spcp8x5.c", i32 245, i32 2}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @spcp8x5_set_work_mode.__UNIQUE_ID_ddebug239, !41, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/serial/spcp8x5.c", i32 247, i32 3}
!46 = !{ptr @spcp8x5_set_work_mode._entry, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @spcp8x5_set_work_mode._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/serial/spcp8x5.c", i32 217, i32 3}
!50 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @spcp8x5_get_msr._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @spcp8x5_get_msr._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/serial/spcp8x5.c", i32 223, i32 2}
!55 = !{ptr @spcp8x5_get_msr.__UNIQUE_ID_ddebug238, !54, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 2148702412, i64 2148702417, i64 2148702430, i64 2148702474, i64 2148702508, i64 2148702529}
!66 = !{!"auto-init"}
