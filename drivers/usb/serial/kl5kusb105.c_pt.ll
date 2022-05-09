; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/kl5kusb105.c_pt.bc'
source_filename = "../drivers/usb/serial/kl5kusb105.c"
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
%struct.klsi_105_port_settings = type { i8, i8, i8, i8, i8 }
%struct.klsi_105_private = type { %struct.klsi_105_port_settings, i32, %struct.spinlock }
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
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@__initcall__kmod_kl5kusb105__248_510_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @kl5kusb105d_device, ptr null], [24 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author249 = internal constant [82 x i8] c"kl5kusb105.author=Utz-Uwe Haus <haus@uuhaus.de>, Johan Hovold <jhovold@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [76 x i8] c"kl5kusb105.description=KLSI KL5KUSB105 chipset USB->Serial Converter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [46 x i8] c"kl5kusb105.file=drivers/usb/serial/kl5kusb105\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [23 x i8] c"kl5kusb105.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"kl5kusb105\00", [21 x i8] zeroinitializer }, align 32
@id_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2096, i16 128, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@kl5kusb105d_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.1, ptr @id_table, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 1, i8 0, i8 0, i8 0, i8 0, i32 0, i32 64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @klsi_105_port_probe, ptr @klsi_105_port_remove, ptr null, ptr null, ptr null, ptr @klsi_105_open, ptr @klsi_105_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @klsi_105_set_termios, ptr null, ptr null, ptr null, ptr null, ptr @usb_serial_generic_throttle, ptr @usb_serial_generic_unthrottle, ptr @klsi_105_tiocmget, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @klsi_105_process_read_urb, ptr @klsi_105_prepare_write_buffer }, [72 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"KL5KUSB105D / PalmConnect\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kl5kusb105d\00", [20 x i8] zeroinitializer }, align 32
@klsi_105_port_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@klsi_105_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 267, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Enabling read failed (error = %d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"klsi_105_open\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/usb/serial/kl5kusb105.c\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@klsi_105_open._entry_ptr = internal global ptr @klsi_105_open._entry, section ".printk_index", align 4
@klsi_105_open.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.9, i8 0, i8 67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s - enabled reading\0A\00", [42 x i8] zeroinitializer }, align 32
@klsi_105_open.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.10, i8 0, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s - read line state 0x%lx\0A\00", [36 x i8] zeroinitializer }, align 32
@klsi_105_chg_port_settings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.6, i32 140, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Change port settings failed (error = %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"klsi_105_chg_port_settings\00", [37 x i8] zeroinitializer }, align 32
@klsi_105_chg_port_settings._entry_ptr = internal global ptr @klsi_105_chg_port_settings._entry, section ".printk_index", align 4
@klsi_105_chg_port_settings.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.6, ptr @.str.13, i8 0, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"pktlen %u, baudrate 0x%02x, databits %u, u1 %u, u2 %u\0A\00", [41 x i8] zeroinitializer }, align 32
@klsi_105_get_line_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.6, i32 169, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"reading line status failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"klsi_105_get_line_state\00", [40 x i8] zeroinitializer }, align 32
@klsi_105_get_line_state._entry_ptr = internal global ptr @klsi_105_get_line_state._entry, section ".printk_index", align 4
@klsi_105_get_line_state.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.6, ptr @.str.16, i8 0, i8 43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"read status %04x\0A\00", [46 x i8] zeroinitializer }, align 32
@klsi_105_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.6, i32 316, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to disable read: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"klsi_105_close\00", [17 x i8] zeroinitializer }, align 32
@klsi_105_close._entry_ptr = internal global ptr @klsi_105_close._entry, section ".printk_index", align 4
@klsi_105_set_termios.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.6, ptr @.str.20, i8 0, i8 105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"klsi_105_set_termios\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unsupported baudrate, using 9600\0A\00", [62 x i8] zeroinitializer }, align 32
@klsi_105_set_termios.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.6, ptr @.str.21, i8 0, i8 110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s - 5 bits/byte not supported\0A\00", [32 x i8] zeroinitializer }, align 32
@klsi_105_set_termios.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.6, ptr @.str.22, i8 0, i8 111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s - 6 bits/byte not supported\0A\00", [32 x i8] zeroinitializer }, align 32
@klsi_105_set_termios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.19, ptr @.str.6, i32 454, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"CSIZE was not CS5-CS8, using default of 8\0A\00", [53 x i8] zeroinitializer }, align 32
@klsi_105_set_termios._entry_ptr = internal global ptr @klsi_105_set_termios._entry, section ".printk_index", align 4
@klsi_105_tiocmget._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.6, i32 498, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Reading line control failed (error = %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"klsi_105_tiocmget\00", [46 x i8] zeroinitializer }, align 32
@klsi_105_tiocmget._entry_ptr = internal global ptr @klsi_105_tiocmget._entry, section ".printk_index", align 4
@klsi_105_tiocmget.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.6, ptr @.str.10, i8 0, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@klsi_105_process_read_urb.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.6, ptr @.str.27, i8 0, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"klsi_105_process_read_urb\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s - malformed packet\0A\00", [41 x i8] zeroinitializer }, align 32
@klsi_105_process_read_urb.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.6, ptr @.str.28, i8 0, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s - packet length mismatch\0A\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1200, i64 2400, i64 4800, i64 9600, i64 19200, i64 38400, i64 57600, i64 115200]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 96, i32 41 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 510, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 68, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c"kl5kusb105d_device\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 75, i32 33 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 80, i32 18 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 78, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 205, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 267, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 271, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 282, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 139, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 142, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 169, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 175, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 316, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 421, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 440, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 444, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 454, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 497, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 353, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private constant [35 x i8] c"../drivers/usb/serial/kl5kusb105.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 359, i32 3 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_kl5kusb105__248_510_usb_serial_module_init6, ptr @klsi_105_chg_port_settings._entry, ptr @klsi_105_chg_port_settings._entry_ptr, ptr @klsi_105_close._entry, ptr @klsi_105_close._entry_ptr, ptr @klsi_105_get_line_state._entry, ptr @klsi_105_get_line_state._entry_ptr, ptr @klsi_105_open._entry, ptr @klsi_105_open._entry_ptr, ptr @klsi_105_set_termios._entry, ptr @klsi_105_set_termios._entry_ptr, ptr @klsi_105_tiocmget._entry, ptr @klsi_105_tiocmget._entry_ptr, ptr @usb_serial_module_exit, ptr @serial_drivers, ptr @.str, ptr @id_table, ptr @kl5kusb105d_device, ptr @.str.1, ptr @.str.2, ptr @klsi_105_port_probe.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kl5kusb105d_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @klsi_105_port_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @klsi_105_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @klsi_105_chg_port_settings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @klsi_105_get_line_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @klsi_105_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @klsi_105_set_termios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @klsi_105_tiocmget._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
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
define internal i32 @klsi_105_port_probe(ptr nocapture noundef writeonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 56) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 5, ptr %call7.i, align 8
  %baudrate = getelementptr inbounds %struct.klsi_105_port_settings, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %baudrate to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 6, ptr %baudrate, align 1
  %databits = getelementptr inbounds %struct.klsi_105_port_settings, ptr %call7.i, i32 0, i32 2
  %3 = ptrtoint ptr %databits to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 8, ptr %databits, align 2
  %unknown1 = getelementptr inbounds %struct.klsi_105_port_settings, ptr %call7.i, i32 0, i32 3
  %4 = ptrtoint ptr %unknown1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %unknown1, align 1
  %unknown2 = getelementptr inbounds %struct.klsi_105_port_settings, ptr %call7.i, i32 0, i32 4
  %5 = ptrtoint ptr %unknown2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %unknown2, align 4
  %line_state = getelementptr inbounds %struct.klsi_105_private, ptr %call7.i, i32 0, i32 1
  %6 = ptrtoint ptr %line_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %line_state, align 8
  %lock = getelementptr inbounds %struct.klsi_105_private, ptr %call7.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @klsi_105_port_probe.__key, i16 noundef signext 3) #7
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @klsi_105_port_remove(ptr nocapture noundef readonly %port) #2 align 64 {
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
define internal i32 @klsi_105_open(ptr noundef %tty, ptr noundef %port) #2 align 64 {
entry:
  %status.i = alloca i16, align 2
  %cfg = alloca %struct.klsi_105_port_settings, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %cfg) #7
  %2 = getelementptr inbounds %struct.klsi_105_port_settings, ptr %cfg, i32 0, i32 1
  %3 = getelementptr inbounds %struct.klsi_105_port_settings, ptr %cfg, i32 0, i32 2
  %4 = getelementptr inbounds %struct.klsi_105_port_settings, ptr %cfg, i32 0, i32 3
  %5 = getelementptr inbounds %struct.klsi_105_port_settings, ptr %cfg, i32 0, i32 4
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 5, ptr %cfg, align 1
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 6, ptr %2, align 1
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 8, ptr %3, align 1
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %4, align 1
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %5, align 1
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call.i = call i32 @usb_control_msg_send(ptr noundef %14, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %cfg, i16 noundef zeroext 5, i32 noundef 5000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.do.body2.i_crit_edge, label %do.end.i

entry.do.body2.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev1.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.11, i32 noundef %call.i) #11
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.end.i, %entry.do.body2.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @klsi_105_chg_port_settings.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@klsi_105_open, %if.then7.i)) #7
          to label %klsi_105_chg_port_settings.exit [label %if.then7.i], !srcloc !96

if.then7.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev8.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %15 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cfg, align 1
  %conv.i = zext i8 %16 to i32
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %2, align 1
  %conv9.i = zext i8 %18 to i32
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %3, align 1
  %conv10.i = zext i8 %20 to i32
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %4, align 1
  %conv11.i = zext i8 %22 to i32
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %5, align 1
  %conv12.i = zext i8 %24 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @klsi_105_chg_port_settings.__UNIQUE_ID_ddebug238, ptr noundef %dev8.i, ptr noundef nonnull @.str.13, i32 noundef %conv.i, i32 noundef %conv9.i, i32 noundef %conv10.i, i32 noundef %conv11.i, i32 noundef %conv12.i) #7
  br label %klsi_105_chg_port_settings.exit

klsi_105_chg_port_settings.exit:                  ; preds = %if.then7.i, %do.body2.i
  %lock = getelementptr inbounds %struct.klsi_105_private, ptr %1, i32 0, i32 2
  %call5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %25 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %cfg, align 1
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %1, align 4
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %2, align 1
  %baudrate13 = getelementptr inbounds %struct.klsi_105_port_settings, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %baudrate13 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %baudrate13, align 1
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %3, align 1
  %databits16 = getelementptr inbounds %struct.klsi_105_port_settings, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %databits16 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %databits16, align 2
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %4, align 1
  %unknown119 = getelementptr inbounds %struct.klsi_105_port_settings, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %unknown119 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %unknown119, align 1
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %5, align 1
  %unknown222 = getelementptr inbounds %struct.klsi_105_port_settings, ptr %1, i32 0, i32 4
  %39 = ptrtoint ptr %unknown222 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %unknown222, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #7
  %call24 = call i32 @usb_serial_generic_open(ptr noundef %tty, ptr noundef %port) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool.not = icmp eq i32 %call24, 0
  br i1 %tobool.not, label %if.end, label %klsi_105_chg_port_settings.exit.cleanup_crit_edge

klsi_105_chg_port_settings.exit.cleanup_crit_edge: ; preds = %klsi_105_chg_port_settings.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %klsi_105_chg_port_settings.exit
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %port, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 8
  %shl.i = shl i32 %45, 8
  %or = or i32 %shl.i, -2147483648
  %call28 = call i32 @usb_control_msg(ptr noundef %43, i32 noundef %or, i8 noundef zeroext 3, i8 noundef zeroext 65, i16 noundef zeroext 3, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end34, label %do.body36

do.end34:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev35 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35, ptr noundef nonnull @.str.4, i32 noundef %call28) #11
  br label %err_generic_close

do.body36:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @klsi_105_open.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@klsi_105_open, %if.then42)) #7
          to label %if.end47 [label %if.then42], !srcloc !96

if.then42:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #9
  %dev43 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @klsi_105_open.__UNIQUE_ID_ddebug240, ptr noundef %dev43, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5) #7
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %do.body36
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status.i) #7
  %46 = ptrtoint ptr %status.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 -1, ptr %status.i, align 2, !annotation !97
  %47 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %port, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %call.i128 = call i32 @usb_control_msg_recv(ptr noundef %50, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %status.i, i16 noundef zeroext 2, i32 noundef 10000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %tobool.not.i129 = icmp eq i32 %call.i128, 0
  br i1 %tobool.not.i129, label %if.end.i, label %klsi_105_get_line_state.exit

if.end.i:                                         ; preds = %if.end47
  %51 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %status.i, align 2
  %53 = call i16 @llvm.bswap.i16(i16 %52) #7
  %54 = ptrtoint ptr %status.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %status.i, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @klsi_105_get_line_state.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@klsi_105_open, %if.then7.i134)) #7
          to label %klsi_105_get_line_state.exit.thread [label %if.then7.i134], !srcloc !96

if.then7.i134:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev8.i132 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %55 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %status.i, align 2
  %conv.i133 = zext i16 %56 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @klsi_105_get_line_state.__UNIQUE_ID_ddebug239, ptr noundef %dev8.i132, ptr noundef nonnull @.str.16, i32 noundef %conv.i133) #7
  br label %klsi_105_get_line_state.exit.thread

klsi_105_get_line_state.exit.thread:              ; preds = %if.then7.i134, %if.end.i
  %57 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %status.i, align 2
  %59 = and i16 %58, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool13.not.i = icmp eq i16 %59, 0
  %or.i = select i1 %tobool13.not.i, i32 0, i32 288
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status.i) #7
  br label %do.body54

klsi_105_get_line_state.exit:                     ; preds = %if.end47
  %dev1.i130 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i130, ptr noundef nonnull @.str.14, i32 noundef %call.i128) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %cmp49 = icmp slt i32 %call.i128, 0
  br i1 %cmp49, label %if.then51, label %klsi_105_get_line_state.exit.do.body54_crit_edge

klsi_105_get_line_state.exit.do.body54_crit_edge: ; preds = %klsi_105_get_line_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body54

if.then51:                                        ; preds = %klsi_105_get_line_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %port, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 8
  %shl.i135 = shl i32 %65, 8
  %or91 = or i32 %shl.i135, -2147483648
  %call92 = call i32 @usb_control_msg(ptr noundef %63, i32 noundef %or91, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 2, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #7
  br label %err_generic_close

do.body54:                                        ; preds = %klsi_105_get_line_state.exit.do.body54_crit_edge, %klsi_105_get_line_state.exit.thread
  %line_state.0140 = phi i32 [ %or.i, %klsi_105_get_line_state.exit.thread ], [ -1, %klsi_105_get_line_state.exit.do.body54_crit_edge ]
  %call62 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %line_state67 = getelementptr inbounds %struct.klsi_105_private, ptr %1, i32 0, i32 1
  %66 = ptrtoint ptr %line_state67 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %line_state.0140, ptr %line_state67, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call62) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @klsi_105_open.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@klsi_105_open, %if.then81)) #7
          to label %cleanup [label %if.then81], !srcloc !96

if.then81:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #9
  %dev82 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @klsi_105_open.__UNIQUE_ID_ddebug241, ptr noundef %dev82, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5, i32 noundef %line_state.0140) #7
  br label %cleanup

err_generic_close:                                ; preds = %if.then51, %do.end34
  %retval1.0 = phi i32 [ %call28, %do.end34 ], [ %call.i128, %if.then51 ]
  call void @usb_serial_generic_close(ptr noundef %port) #7
  br label %cleanup

cleanup:                                          ; preds = %err_generic_close, %if.then81, %do.body54, %klsi_105_chg_port_settings.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %err_generic_close ], [ %call24, %klsi_105_chg_port_settings.exit.cleanup_crit_edge ], [ 0, %if.then81 ], [ 0, %do.body54 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %cfg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @klsi_105_close(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %shl.i = shl i32 %5, 8
  %or = or i32 %shl.i, -2147483648
  %call3 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 2, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.17, i32 noundef %call3) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @usb_serial_generic_close(ptr noundef %port) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @klsi_105_set_termios(ptr noundef %tty, ptr noundef %port, ptr nocapture noundef readonly %old_termios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %2 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %termios, align 4
  %4 = ptrtoint ptr %old_termios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old_termios, align 4
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %6 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %c_cflag, align 4
  %c_cflag4 = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 2
  %8 = ptrtoint ptr %c_cflag4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %c_cflag4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 5) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body6:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.klsi_105_private, ptr %1, i32 0, i32 2
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #7
  %11 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %do.body34 [
    i32 0, label %do.body6.sw.epilog_crit_edge
    i32 1200, label %do.body6.sw.epilog.sink.split_crit_edge
    i32 2400, label %sw.bb13
    i32 4800, label %sw.bb16
    i32 9600, label %sw.bb19
    i32 19200, label %sw.bb22
    i32 38400, label %sw.bb25
    i32 57600, label %sw.bb28
    i32 115200, label %sw.bb31
  ]

do.body6.sw.epilog.sink.split_crit_edge:          ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

do.body6.sw.epilog_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb13:                                          ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb16:                                          ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb19:                                          ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb22:                                          ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb25:                                          ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb28:                                          ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb31:                                          ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

do.body34:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @klsi_105_set_termios.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@klsi_105_set_termios, %if.then40)) #7
          to label %sw.epilog.sink.split [label %if.then40], !srcloc !96

if.then40:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @klsi_105_set_termios.__UNIQUE_ID_ddebug244, ptr noundef %dev1, ptr noundef nonnull @.str.20) #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then40, %do.body34, %sw.bb31, %sw.bb28, %sw.bb25, %sw.bb22, %sw.bb19, %sw.bb16, %sw.bb13, %do.body6.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 0, %sw.bb31 ], [ 1, %sw.bb28 ], [ 2, %sw.bb25 ], [ 4, %sw.bb22 ], [ 6, %sw.bb19 ], [ 8, %sw.bb16 ], [ 9, %sw.bb13 ], [ 10, %do.body6.sw.epilog.sink.split_crit_edge ], [ 6, %do.body34 ], [ 6, %if.then40 ]
  %baud.0.ph = phi i32 [ %call.i, %sw.bb31 ], [ %call.i, %sw.bb28 ], [ %call.i, %sw.bb25 ], [ %call.i, %sw.bb22 ], [ %call.i, %sw.bb19 ], [ %call.i, %sw.bb16 ], [ %call.i, %sw.bb13 ], [ %call.i, %do.body6.sw.epilog.sink.split_crit_edge ], [ 9600, %do.body34 ], [ 9600, %if.then40 ]
  %baudrate45 = getelementptr inbounds %struct.klsi_105_port_settings, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %baudrate45 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %.sink, ptr %baudrate45, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.body6.sw.epilog_crit_edge
  %baud.0 = phi i32 [ %call.i, %do.body6.sw.epilog_crit_edge ], [ %baud.0.ph, %sw.epilog.sink.split ]
  tail call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef %baud.0, i32 noundef %baud.0) #7
  %and = and i32 %7, 48
  %and46 = and i32 %9, 48
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and46)
  %cmp47.not = icmp eq i32 %and, %and46
  br i1 %cmp47.not, label %sw.epilog.if.end99_crit_edge, label %if.then49

sw.epilog.if.end99_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

if.then49:                                        ; preds = %sw.epilog
  %13 = lshr exact i32 %and, 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %13, label %if.then49.unreachabledefault [
    i32 0, label %do.body52
    i32 1, label %do.body70
    i32 2, label %if.then49.if.end99.sink.split_crit_edge
    i32 3, label %sw.bb89
  ]

if.then49.if.end99.sink.split_crit_edge:          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99.sink.split

do.body52:                                        ; preds = %if.then49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @klsi_105_set_termios.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@klsi_105_set_termios, %if.then64)) #7
          to label %do.end67 [label %if.then64], !srcloc !96

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @klsi_105_set_termios.__UNIQUE_ID_ddebug245, ptr noundef %dev1, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %do.body52
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #7
  br label %err

do.body70:                                        ; preds = %if.then49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @klsi_105_set_termios.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@klsi_105_set_termios, %if.then82)) #7
          to label %do.end85 [label %if.then82], !srcloc !96

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @klsi_105_set_termios.__UNIQUE_ID_ddebug246, ptr noundef %dev1, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.19) #7
  br label %do.end85

do.end85:                                         ; preds = %if.then82, %do.body70
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #7
  br label %err

sw.bb89:                                          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99.sink.split

if.then49.unreachabledefault:                     ; preds = %if.then49
  unreachable

if.end99.sink.split:                              ; preds = %sw.bb89, %if.then49.if.end99.sink.split_crit_edge
  %.sink195 = phi i8 [ 8, %sw.bb89 ], [ 7, %if.then49.if.end99.sink.split_crit_edge ]
  %databits = getelementptr inbounds %struct.klsi_105_port_settings, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %databits to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink195, ptr %databits, align 2
  br label %if.end99

if.end99:                                         ; preds = %if.end99.sink.split, %sw.epilog.if.end99_crit_edge
  %16 = xor i32 %9, %7
  %17 = and i32 %16, 832
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %if.end99.if.end112_crit_edge, label %if.then108

if.end99.if.end112_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

if.then108:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %c_cflag, align 4
  %and111 = and i32 %20, -833
  store i32 %and111, ptr %c_cflag, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then108, %if.end99.if.end112_crit_edge
  %21 = xor i32 %5, %3
  %22 = and i32 %21, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp115.not = icmp eq i32 %22, 0
  br i1 %cmp115.not, label %lor.lhs.false117, label %if.end112.if.then127_crit_edge

if.end112.if.then127_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then127

lor.lhs.false117:                                 ; preds = %if.end112
  %23 = and i32 %21, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp120.not = icmp eq i32 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp125.not = icmp sgt i32 %16, -1
  %or.cond = select i1 %cmp120.not, i1 %cmp125.not, i1 false
  br i1 %or.cond, label %lor.lhs.false117.if.end131_crit_edge, label %lor.lhs.false117.if.then127_crit_edge

lor.lhs.false117.if.then127_crit_edge:            ; preds = %lor.lhs.false117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then127

lor.lhs.false117.if.end131_crit_edge:             ; preds = %lor.lhs.false117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end131

if.then127:                                       ; preds = %lor.lhs.false117.if.then127_crit_edge, %if.end112.if.then127_crit_edge
  %24 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %c_cflag, align 4
  %and130 = and i32 %25, 2147483647
  store i32 %and130, ptr %c_cflag, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.then127, %lor.lhs.false117.if.end131_crit_edge
  %26 = call ptr @memcpy(ptr %call7.i, ptr %1, i32 5)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #7
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %port, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call.i190 = tail call i32 @usb_control_msg_send(ptr noundef %30, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 5, i32 noundef 5000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i190)
  %tobool.not.i = icmp eq i32 %call.i190, 0
  br i1 %tobool.not.i, label %if.end131.do.body2.i_crit_edge, label %do.end.i

if.end131.do.body2.i_crit_edge:                   ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2.i

do.end.i:                                         ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %call.i190) #11
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.end.i, %if.end131.do.body2.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @klsi_105_chg_port_settings.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@klsi_105_set_termios, %if.then7.i)) #7
          to label %err [label %if.then7.i], !srcloc !96

if.then7.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %call7.i, align 8
  %conv.i = zext i8 %32 to i32
  %baudrate.i = getelementptr inbounds %struct.klsi_105_port_settings, ptr %call7.i, i32 0, i32 1
  %33 = ptrtoint ptr %baudrate.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %baudrate.i, align 1
  %conv9.i = zext i8 %34 to i32
  %databits.i = getelementptr inbounds %struct.klsi_105_port_settings, ptr %call7.i, i32 0, i32 2
  %35 = ptrtoint ptr %databits.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %databits.i, align 2
  %conv10.i = zext i8 %36 to i32
  %unknown1.i = getelementptr inbounds %struct.klsi_105_port_settings, ptr %call7.i, i32 0, i32 3
  %37 = ptrtoint ptr %unknown1.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %unknown1.i, align 1
  %conv11.i = zext i8 %38 to i32
  %unknown2.i = getelementptr inbounds %struct.klsi_105_port_settings, ptr %call7.i, i32 0, i32 4
  %39 = ptrtoint ptr %unknown2.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %unknown2.i, align 4
  %conv12.i = zext i8 %40 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @klsi_105_chg_port_settings.__UNIQUE_ID_ddebug238, ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %conv.i, i32 noundef %conv9.i, i32 noundef %conv10.i, i32 noundef %conv11.i, i32 noundef %conv12.i) #7
  br label %err

err:                                              ; preds = %if.then7.i, %do.body2.i, %do.end85, %do.end67
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_generic_throttle(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_generic_unthrottle(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @klsi_105_tiocmget(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  %status.i = alloca i16, align 2
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
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status.i) #7
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %status.i, align 2, !annotation !97
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call.i = call i32 @usb_control_msg_recv(ptr noundef %8, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %status.i, i16 noundef zeroext 2, i32 noundef 10000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %klsi_105_get_line_state.exit

if.end.i:                                         ; preds = %entry
  %9 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %status.i, align 2
  %11 = call i16 @llvm.bswap.i16(i16 %10) #7
  %12 = ptrtoint ptr %status.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %status.i, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @klsi_105_get_line_state.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@klsi_105_tiocmget, %if.then7.i)) #7
          to label %klsi_105_get_line_state.exit.thread [label %if.then7.i], !srcloc !96

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev8.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %13 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %status.i, align 2
  %conv.i = zext i16 %14 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @klsi_105_get_line_state.__UNIQUE_ID_ddebug239, ptr noundef %dev8.i, ptr noundef nonnull @.str.16, i32 noundef %conv.i) #7
  br label %klsi_105_get_line_state.exit.thread

klsi_105_get_line_state.exit.thread:              ; preds = %if.then7.i, %if.end.i
  %15 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %status.i, align 2
  %17 = and i16 %16, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool13.not.i = icmp eq i16 %17, 0
  %or.i = select i1 %tobool13.not.i, i32 0, i32 288
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status.i) #7
  br label %do.body3

klsi_105_get_line_state.exit:                     ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.14, i32 noundef %call.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %klsi_105_get_line_state.exit.do.body3_crit_edge

klsi_105_get_line_state.exit.do.body3_crit_edge:  ; preds = %klsi_105_get_line_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body3

do.end:                                           ; preds = %klsi_105_get_line_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.24, i32 noundef %call.i) #11
  br label %cleanup

do.body3:                                         ; preds = %klsi_105_get_line_state.exit.do.body3_crit_edge, %klsi_105_get_line_state.exit.thread
  %line_state.038 = phi i32 [ %or.i, %klsi_105_get_line_state.exit.thread ], [ -1, %klsi_105_get_line_state.exit.do.body3_crit_edge ]
  %lock = getelementptr inbounds %struct.klsi_105_private, ptr %3, i32 0, i32 2
  %call6 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %line_state11 = getelementptr inbounds %struct.klsi_105_private, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %line_state11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %line_state.038, ptr %line_state11, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @klsi_105_tiocmget.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@klsi_105_tiocmget, %if.then18)) #7
          to label %cleanup [label %if.then18], !srcloc !96

if.then18:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  %dev19 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @klsi_105_tiocmget.__UNIQUE_ID_ddebug247, ptr noundef %dev19, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.25, i32 noundef %line_state.038) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %do.body3, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %line_state.038, %if.then18 ], [ %line_state.038, %do.body3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @klsi_105_process_read_urb(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp ult i32 %5, 3
  br i1 %cmp, label %do.body, label %if.end8

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @klsi_105_process_read_urb.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@klsi_105_process_read_urb, %if.then6)) #7
          to label %cleanup [label %if.then6], !srcloc !96

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @klsi_105_process_read_urb.__UNIQUE_ID_ddebug242, ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %3, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #7
  %conv = zext i16 %8 to i32
  %sub = add i32 %5, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp11 = icmp ult i32 %sub, %conv
  br i1 %cmp11, label %do.body14, label %if.end8.if.end33_crit_edge

if.end8.if.end33_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

do.body14:                                        ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @klsi_105_process_read_urb.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@klsi_105_process_read_urb, %if.then26)) #7
          to label %do.end30 [label %if.then26], !srcloc !96

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %dev27 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @klsi_105_process_read_urb.__UNIQUE_ID_ddebug243, ptr noundef %dev27, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26) #7
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %do.body14
  %9 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %actual_length, align 4
  %sub32 = add i32 %10, -2
  br label %if.end33

if.end33:                                         ; preds = %do.end30, %if.end8.if.end33_crit_edge
  %len.0 = phi i32 [ %sub32, %do.end30 ], [ %conv, %if.end8.if.end33_crit_edge ]
  %port34 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %3, i32 2
  %call.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port34, ptr noundef %add.ptr, i8 noundef zeroext 0, i32 noundef %len.0) #7
  tail call void @tty_flip_buffer_push(ptr noundef %port34) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then6, %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @klsi_105_prepare_write_buffer(ptr noundef %port, ptr noundef %dest, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 22
  %add.ptr = getelementptr i8, ptr %dest, i32 2
  %call6 = tail call i32 @__kfifo_out(ptr noundef %write_fifo, ptr noundef %add.ptr, i32 noundef %size) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  %conv11 = trunc i32 %call6 to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv11) #7
  %1 = ptrtoint ptr %dest to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 %0, ptr %dest, align 1
  %add = add i32 %call6, 2
  ret i32 %add
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_generic_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg_recv(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !37, !38, !40, !41, !42, !43, !45, !46, !48, !49, !50, !51, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !82, !83, !84, !86}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__initcall__kmod_kl5kusb105__248_510_usb_serial_module_init6, !1, !"__initcall__kmod_kl5kusb105__248_510_usb_serial_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/kl5kusb105.c", i32 510, i32 1}
!2 = !{ptr @__exitcall_usb_serial_module_exit, !1, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author249, !4, !"__UNIQUE_ID_author249", i1 false, i1 false}
!4 = !{!"../drivers/usb/serial/kl5kusb105.c", i32 512, i32 1}
!5 = !{ptr @__UNIQUE_ID_description250, !6, !"__UNIQUE_ID_description250", i1 false, i1 false}
!6 = !{!"../drivers/usb/serial/kl5kusb105.c", i32 513, i32 1}
!7 = !{ptr @__UNIQUE_ID_file251, !8, !"__UNIQUE_ID_file251", i1 false, i1 false}
!8 = !{!"../drivers/usb/serial/kl5kusb105.c", i32 514, i32 1}
!9 = !{ptr @__UNIQUE_ID_license252, !8, !"__UNIQUE_ID_license252", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @id_table, !12, !"id_table", i1 false, i1 false}
!12 = !{!"../drivers/usb/serial/kl5kusb105.c", i32 68, i32 35}
!13 = !{ptr @serial_drivers, !14, !"serial_drivers", i1 false, i1 false}
!14 = !{!"../drivers/usb/serial/kl5kusb105.c", i32 96, i32 41}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/serial/kl5kusb105.c", i32 80, i32 18}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/serial/kl5kusb105.c", i32 78, i32 12}
!19 = !{ptr @kl5kusb105d_device, !20, !"kl5kusb105d_device", i1 false, i1 false}
!20 = !{!"../drivers/usb/serial/kl5kusb105.c", i32 75, i32 33}
!21 = !{ptr @klsi_105_port_probe.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/usb/serial/kl5kusb105.c", i32 205, i32 2}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/serial/kl5kusb105.c", i32 267, i32 3}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @klsi_105_open._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @klsi_105_open._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/serial/kl5kusb105.c", i32 271, i32 3}
!34 = !{ptr @klsi_105_open.__UNIQUE_ID_ddebug240, !33, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/serial/kl5kusb105.c", i32 282, i32 2}
!37 = !{ptr @klsi_105_open.__UNIQUE_ID_ddebug241, !36, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/serial/kl5kusb105.c", i32 139, i32 3}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @klsi_105_chg_port_settings._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @klsi_105_chg_port_settings._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/serial/kl5kusb105.c", i32 142, i32 2}
!45 = !{ptr @klsi_105_chg_port_settings.__UNIQUE_ID_ddebug238, !44, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/serial/kl5kusb105.c", i32 169, i32 3}
!48 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @klsi_105_get_line_state._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @klsi_105_get_line_state._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/serial/kl5kusb105.c", i32 175, i32 2}
!53 = !{ptr @klsi_105_get_line_state.__UNIQUE_ID_ddebug239, !52, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/serial/kl5kusb105.c", i32 316, i32 3}
!56 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @klsi_105_close._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @klsi_105_close._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/serial/kl5kusb105.c", i32 421, i32 3}
!61 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @klsi_105_set_termios.__UNIQUE_ID_ddebug244, !60, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/serial/kl5kusb105.c", i32 440, i32 4}
!65 = !{ptr @klsi_105_set_termios.__UNIQUE_ID_ddebug245, !64, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/serial/kl5kusb105.c", i32 444, i32 4}
!68 = !{ptr @klsi_105_set_termios.__UNIQUE_ID_ddebug246, !67, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/serial/kl5kusb105.c", i32 454, i32 4}
!71 = !{ptr @klsi_105_set_termios._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @klsi_105_set_termios._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/serial/kl5kusb105.c", i32 497, i32 3}
!75 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @klsi_105_tiocmget._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @klsi_105_tiocmget._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @klsi_105_tiocmget.__UNIQUE_ID_ddebug247, !79, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!79 = !{!"../drivers/usb/serial/kl5kusb105.c", i32 506, i32 2}
!80 = !{ptr @.str.26, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/serial/kl5kusb105.c", i32 353, i32 3}
!82 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @klsi_105_process_read_urb.__UNIQUE_ID_ddebug242, !81, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!84 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/serial/kl5kusb105.c", i32 359, i32 3}
!86 = !{ptr @klsi_105_process_read_urb.__UNIQUE_ID_ddebug243, !85, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{i64 2148703303, i64 2148703308, i64 2148703321, i64 2148703365, i64 2148703399, i64 2148703420}
!97 = !{!"auto-init"}
