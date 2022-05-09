; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/keyspan_pda.c_pt.bc'
source_filename = "../drivers/usb/serial/keyspan_pda.c"
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
%struct.keyspan_pda_private = type { i32, %struct.work_struct, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@__UNIQUE_ID_firmware258 = internal constant [48 x i8] c"keyspan_pda.firmware=keyspan_pda/keyspan_pda.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware259 = internal constant [47 x i8] c"keyspan_pda.firmware=keyspan_pda/xircom_pgs.fw\00", section ".modinfo", align 1
@__initcall__kmod_keyspan_pda__260_715_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @keyspan_pda_device, ptr @keyspan_pda_fake_device, ptr null], [20 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author261 = internal constant [85 x i8] c"keyspan_pda.author=Brian Warner <warner@lothar.com>, Johan Hovold <johan@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description262 = internal constant [57 x i8] c"keyspan_pda.description=USB Keyspan PDA Converter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file263 = internal constant [48 x i8] c"keyspan_pda.file=drivers/usb/serial/keyspan_pda\00", section ".modinfo", align 1
@__UNIQUE_ID_license264 = internal constant [24 x i8] c"keyspan_pda.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"keyspan_pda\00", [20 x i8] zeroinitializer }, align 32
@id_table_combined = internal constant { [6 x %struct.usb_device_id], [48 x i8] } { [6 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1741, i16 259, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2138, i16 -32729, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2138, i16 -32731, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5701, i16 -32621, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1741, i16 260, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@keyspan_pda_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.1, ptr @id_table_std, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 1, i8 0, i8 1, i8 1, i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @keyspan_pda_port_probe, ptr @keyspan_pda_port_remove, ptr null, ptr null, ptr null, ptr @keyspan_pda_open, ptr @keyspan_pda_close, ptr @keyspan_pda_write, ptr null, ptr null, ptr null, ptr null, ptr @keyspan_pda_set_termios, ptr @keyspan_pda_break_ctl, ptr null, ptr null, ptr null, ptr @keyspan_pda_rx_throttle, ptr @keyspan_pda_rx_unthrottle, ptr @keyspan_pda_tiocmget, ptr @keyspan_pda_tiocmset, ptr null, ptr null, ptr @keyspan_pda_dtr_rts, ptr null, ptr null, ptr @keyspan_pda_rx_interrupt, ptr null, ptr null, ptr @keyspan_pda_write_bulk_callback, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@keyspan_pda_fake_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.36, ptr @id_table_fake, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str.37, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 1, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, ptr @keyspan_pda_fake_startup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Keyspan PDA\00", [20 x i8] zeroinitializer }, align 32
@id_table_std = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1741, i16 260, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@keyspan_pda_port_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&priv->unthrottle_work)\00", [54 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@keyspan_pda_request_unthrottle.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"keyspan_pda_request_unthrottle\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/usb/serial/keyspan_pda.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@keyspan_pda_request_unthrottle.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.6, i8 0, i8 32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s - error %d from usb_control_msg\0A\00", [60 x i8] zeroinitializer }, align 32
@keyspan_pda_get_write_room.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.4, ptr @.str.8, i8 0, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"keyspan_pda_get_write_room\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"roomquery failed: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@keyspan_pda_get_write_room.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.4, ptr @.str.9, i8 0, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"roomquery says %d\0A\00", [45 x i8] zeroinitializer }, align 32
@keyspan_pda_open.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.4, ptr @.str.11, i8 0, i8 -111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"keyspan_pda_open\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - usb_submit_urb(read int) failed\0A\00", [58 x i8] zeroinitializer }, align 32
@keyspan_pda_write.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.4, ptr @.str.13, i8 0, i8 -122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"keyspan_pda_write\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - count = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@keyspan_pda_write_start.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.4, ptr @.str.15, i8 0, i8 124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"keyspan_pda_write_start\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s - count = %d, txroom = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@keyspan_pda_write_start.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.4, ptr @.str.16, i8 0, i8 125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"usb_submit_urb(write bulk) failed\0A\00", [61 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@keyspan_pda_set_termios.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.4, ptr @.str.18, i8 0, i8 88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"keyspan_pda_set_termios\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"can't handle requested baud rate\0A\00", [62 x i8] zeroinitializer }, align 32
@keyspan_pda_break_ctl.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.4, ptr @.str.6, i8 0, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"keyspan_pda_break_ctl\00", [42 x i8] zeroinitializer }, align 32
@keyspan_pda_rx_unthrottle.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.4, ptr @.str.21, i8 0, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"keyspan_pda_rx_unthrottle\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"usb_submit_urb(read urb) failed\0A\00", [63 x i8] zeroinitializer }, align 32
@keyspan_pda_rx_interrupt.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.4, ptr @.str.23, i8 0, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"keyspan_pda_rx_interrupt\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - urb shutting down with status: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@keyspan_pda_rx_interrupt.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.4, ptr @.str.24, i8 0, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - nonzero urb status received: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@keyspan_pda_rx_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.4, i32 173, ptr @.str.26, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"short message received\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@keyspan_pda_rx_interrupt._entry_ptr = internal global ptr @keyspan_pda_rx_interrupt._entry, section ".printk_index", align 4
@keyspan_pda_rx_interrupt._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.22, ptr @.str.4, i32 189, ptr @.str.26, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"short interrupt message received\0A\00", [62 x i8] zeroinitializer }, align 32
@keyspan_pda_rx_interrupt._entry_ptr.30 = internal global ptr @keyspan_pda_rx_interrupt._entry.28, section ".printk_index", align 4
@keyspan_pda_rx_interrupt.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.4, ptr @.str.31, i8 0, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx int, d1=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@keyspan_pda_rx_interrupt._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.22, ptr @.str.4, i32 218, ptr @.str.34, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s - usb_submit_urb failed with result %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@keyspan_pda_rx_interrupt._entry_ptr.35 = internal global ptr @keyspan_pda_rx_interrupt._entry.32, section ".printk_index", align 4
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Keyspan PDA - (prerenumeration)\00", [32 x i8] zeroinitializer }, align 32
@id_table_fake = internal constant { [5 x %struct.usb_device_id], [40 x i8] } { [5 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1741, i16 259, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2138, i16 -32729, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2138, i16 -32731, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5701, i16 -32621, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"keyspan_pda_pre\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"keyspan_pda/keyspan_pda.fw\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"keyspan_pda/xircom_pgs.fw\00", [38 x i8] zeroinitializer }, align 32
@keyspan_pda_fake_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 625, ptr @.str.34, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: unknown vendor, aborting.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"keyspan_pda_fake_startup\00", [39 x i8] zeroinitializer }, align 32
@keyspan_pda_fake_startup._entry_ptr = internal global ptr @keyspan_pda_fake_startup._entry, section ".printk_index", align 4
@keyspan_pda_fake_startup._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.4, i32 631, ptr @.str.34, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to load firmware \22%s\22\0A\00", [34 x i8] zeroinitializer }, align 32
@keyspan_pda_fake_startup._entry_ptr.44 = internal global ptr @keyspan_pda_fake_startup._entry.42, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 110, i64 300, i64 1200, i64 2400, i64 4800, i64 9600, i64 19200, i64 38400, i64 57600, i64 115200]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 16, i64 1741, i64 2138, i64 5701]
@___asan_gen_.48 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 709, i32 41 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 715, i32 1 }
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"id_table_combined\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 53, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant [19 x i8] c"keyspan_pda_device\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 683, i32 33 }
@___asan_gen_.60 = private unnamed_addr constant [24 x i8] c"keyspan_pda_fake_device\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 672, i32 33 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 688, i32 18 }
@___asan_gen_.66 = private unnamed_addr constant [13 x i8] c"id_table_std\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 63, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 656, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 112, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 129, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 94, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 98, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 581, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 539, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 498, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 502, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 354, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 319, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 242, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 165, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 168, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 173, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 189, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 192, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 216, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 677, i32 18 }
@___asan_gen_.174 = private unnamed_addr constant [14 x i8] c"id_table_fake\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 68, i32 35 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 675, i32 12 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 617, i32 13 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 621, i32 13 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 624, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.199 = private constant [36 x i8] c"../drivers/usb/serial/keyspan_pda.c\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 630, i32 3 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_author261, ptr @__UNIQUE_ID_description262, ptr @__UNIQUE_ID_file263, ptr @__UNIQUE_ID_firmware258, ptr @__UNIQUE_ID_firmware259, ptr @__UNIQUE_ID_license264, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_keyspan_pda__260_715_usb_serial_module_init6, ptr @keyspan_pda_fake_startup._entry, ptr @keyspan_pda_fake_startup._entry.42, ptr @keyspan_pda_fake_startup._entry_ptr, ptr @keyspan_pda_fake_startup._entry_ptr.44, ptr @keyspan_pda_rx_interrupt._entry, ptr @keyspan_pda_rx_interrupt._entry.28, ptr @keyspan_pda_rx_interrupt._entry.32, ptr @keyspan_pda_rx_interrupt._entry_ptr, ptr @keyspan_pda_rx_interrupt._entry_ptr.30, ptr @keyspan_pda_rx_interrupt._entry_ptr.35, ptr @usb_serial_module_exit, ptr @serial_drivers, ptr @.str, ptr @id_table_combined, ptr @keyspan_pda_device, ptr @keyspan_pda_fake_device, ptr @.str.1, ptr @id_table_std, ptr @keyspan_pda_port_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @id_table_fake, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table_combined to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyspan_pda_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyspan_pda_fake_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table_std to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyspan_pda_port_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyspan_pda_rx_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyspan_pda_rx_interrupt._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyspan_pda_rx_interrupt._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table_fake to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyspan_pda_fake_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyspan_pda_fake_startup._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_serial_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_serial_register_drivers(ptr noundef nonnull @serial_drivers, ptr noundef nonnull @.str, ptr noundef nonnull @id_table_combined) #7
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
define internal i32 @keyspan_pda_port_probe(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 56) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %unthrottle_work = getelementptr inbounds %struct.keyspan_pda_private, ptr %call7.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %unthrottle_work, i32 noundef 0) #7
  %1 = ptrtoint ptr %unthrottle_work to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %unthrottle_work, align 4
  %lockdep_map = getelementptr inbounds %struct.keyspan_pda_private, ptr %call7.i, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @keyspan_pda_port_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry4 = getelementptr inbounds %struct.keyspan_pda_private, ptr %call7.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry4, ptr %entry4, align 8
  %prev.i = getelementptr inbounds %struct.keyspan_pda_private, ptr %call7.i, i32 0, i32 1, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.keyspan_pda_private, ptr %call7.i, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @keyspan_pda_request_unthrottle, ptr %func, align 8
  %port6 = getelementptr inbounds %struct.keyspan_pda_private, ptr %call7.i, i32 0, i32 3
  %5 = ptrtoint ptr %port6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %port, ptr %port6, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keyspan_pda_port_remove(ptr nocapture noundef readonly %port) #2 align 64 {
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
define internal i32 @keyspan_pda_open(ptr nocapture noundef readnone %tty, ptr noundef %port) #2 align 64 {
entry:
  %room.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %port1.i = getelementptr inbounds %struct.keyspan_pda_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port1.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %room.i) #7
  %6 = ptrtoint ptr %room.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %room.i, align 1, !annotation !124
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %call.i = call i32 @usb_control_msg_recv(ptr noundef %8, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext -63, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %room.i, i16 noundef zeroext 1, i32 noundef 2000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body10.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_pda_get_write_room.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_pda_open, %if.then7.i)) #7
          to label %keyspan_pda_get_write_room.exit [label %if.then7.i], !srcloc !125

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev8.i = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_pda_get_write_room.__UNIQUE_ID_ddebug238, ptr noundef %dev8.i, ptr noundef nonnull @.str.8, i32 noundef %call.i) #7
  br label %keyspan_pda_get_write_room.exit

do.body10.i:                                      ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_pda_get_write_room.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_pda_open, %if.then22.i)) #7
          to label %keyspan_pda_get_write_room.exit.thread [label %if.then22.i], !srcloc !125

if.then22.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev23.i = getelementptr inbounds %struct.usb_serial_port, ptr %3, i32 0, i32 32
  %9 = ptrtoint ptr %room.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %room.i, align 1
  %conv.i = zext i8 %10 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_pda_get_write_room.__UNIQUE_ID_ddebug239, ptr noundef %dev23.i, ptr noundef nonnull @.str.9, i32 noundef %conv.i) #7
  br label %keyspan_pda_get_write_room.exit.thread

keyspan_pda_get_write_room.exit.thread:           ; preds = %if.then22.i, %do.body10.i
  %11 = ptrtoint ptr %room.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %room.i, align 1
  %conv27.i = zext i8 %12 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %room.i) #7
  br label %if.end

keyspan_pda_get_write_room.exit:                  ; preds = %if.then7.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %room.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %keyspan_pda_get_write_room.exit.cleanup_crit_edge, label %keyspan_pda_get_write_room.exit.if.end_crit_edge

keyspan_pda_get_write_room.exit.if.end_crit_edge: ; preds = %keyspan_pda_get_write_room.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

keyspan_pda_get_write_room.exit.cleanup_crit_edge: ; preds = %keyspan_pda_get_write_room.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %keyspan_pda_get_write_room.exit.if.end_crit_edge, %keyspan_pda_get_write_room.exit.thread
  %retval.0.i2225 = phi i32 [ %conv27.i, %keyspan_pda_get_write_room.exit.thread ], [ %call.i, %keyspan_pda_get_write_room.exit.if.end_crit_edge ]
  %lock = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 2
  call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i2225, ptr %1, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %14 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %interrupt_in_urb, align 4
  %call3 = call i32 @usb_submit_urb(ptr noundef %15, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_pda_open.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_pda_open, %if.then9)) #7
          to label %cleanup [label %if.then9], !srcloc !125

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_pda_open.__UNIQUE_ID_ddebug257, ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %do.body, %if.end.cleanup_crit_edge, %keyspan_pda_get_write_room.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %keyspan_pda_get_write_room.exit.cleanup_crit_edge ], [ %call3, %if.then9 ], [ 0, %if.end.cleanup_crit_edge ], [ %call3, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keyspan_pda_close(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %2 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interrupt_in_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #7
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 21
  %4 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_urb, align 8
  tail call void @usb_kill_urb(ptr noundef %5) #7
  %unthrottle_work = getelementptr inbounds %struct.keyspan_pda_private, ptr %1, i32 0, i32 1
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %unthrottle_work) #7
  %lock = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 22
  %out = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 22, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %out, align 4
  %7 = ptrtoint ptr %write_fifo to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %write_fifo, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keyspan_pda_write(ptr nocapture noundef readnone %tty, ptr noundef %port, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_pda_write.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_pda_write, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !125

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_pda_write.__UNIQUE_ID_ddebug256, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef %count) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool3.not = icmp eq i32 %count, 0
  br i1 %tobool3.not, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 2
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 22
  %call16 = tail call i32 @__kfifo_in(ptr noundef %write_fifo, ptr noundef %buf, i32 noundef %count) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #7
  %call19 = tail call fastcc i32 @keyspan_pda_write_start(ptr noundef %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  %call16.call19 = select i1 %tobool20.not, i32 %call16, i32 %call19
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ %call16.call19, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keyspan_pda_set_termios(ptr noundef %tty, ptr noundef %port, ptr noundef %old_termios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %termios.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios.i) #7
  %2 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %sw.default.i [
    i32 110, label %entry.keyspan_pda_setbaud.exit_crit_edge
    i32 300, label %sw.bb1.i
    i32 1200, label %sw.bb2.i
    i32 2400, label %sw.bb3.i
    i32 4800, label %sw.bb4.i
    i32 9600, label %sw.bb5.i
    i32 19200, label %sw.bb6.i
    i32 38400, label %sw.bb7.i
    i32 57600, label %sw.bb8.i
    i32 115200, label %sw.bb9.i
  ]

entry.keyspan_pda_setbaud.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %keyspan_pda_setbaud.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %keyspan_pda_setbaud.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %keyspan_pda_setbaud.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %keyspan_pda_setbaud.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %keyspan_pda_setbaud.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %keyspan_pda_setbaud.exit

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %keyspan_pda_setbaud.exit

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %keyspan_pda_setbaud.exit

sw.bb8.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %keyspan_pda_setbaud.exit

sw.bb9.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %keyspan_pda_setbaud.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %keyspan_pda_setbaud.exit

keyspan_pda_setbaud.exit:                         ; preds = %sw.default.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.keyspan_pda_setbaud.exit_crit_edge
  %baud.addr.0.i = phi i32 [ 9600, %sw.default.i ], [ %call.i, %sw.bb9.i ], [ %call.i, %sw.bb8.i ], [ %call.i, %sw.bb7.i ], [ %call.i, %sw.bb6.i ], [ %call.i, %sw.bb5.i ], [ %call.i, %sw.bb4.i ], [ %call.i, %sw.bb3.i ], [ %call.i, %sw.bb2.i ], [ %call.i, %sw.bb1.i ], [ %call.i, %entry.keyspan_pda_setbaud.exit_crit_edge ]
  %bindex.0.i = phi i16 [ 5, %sw.default.i ], [ 9, %sw.bb9.i ], [ 8, %sw.bb8.i ], [ 7, %sw.bb7.i ], [ 6, %sw.bb6.i ], [ 5, %sw.bb5.i ], [ 4, %sw.bb4.i ], [ 3, %sw.bb3.i ], [ 2, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %entry.keyspan_pda_setbaud.exit_crit_edge ]
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i.i = shl i32 %6, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call11.i = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext %bindex.0.i, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 2000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp.i = icmp slt i32 %call11.i, 0
  br i1 %cmp.i, label %do.body, label %keyspan_pda_setbaud.exit.if.end8_crit_edge

keyspan_pda_setbaud.exit.if.end8_crit_edge:       ; preds = %keyspan_pda_setbaud.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.body:                                          ; preds = %keyspan_pda_setbaud.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_pda_set_termios.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_pda_set_termios, %if.then6)) #7
          to label %do.end [label %if.then6], !srcloc !125

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_pda_set_termios.__UNIQUE_ID_ddebug251, ptr noundef %dev, ptr noundef nonnull @.str.18) #7
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %call7 = tail call i32 @tty_termios_baud_rate(ptr noundef %old_termios) #7
  br label %if.end8

if.end8:                                          ; preds = %do.end, %keyspan_pda_setbaud.exit.if.end8_crit_edge
  %speed.0 = phi i32 [ %call7, %do.end ], [ %baud.addr.0.i, %keyspan_pda_setbaud.exit.if.end8_crit_edge ]
  tail call void @tty_termios_copy_hw(ptr noundef %termios.i, ptr noundef %old_termios) #7
  tail call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef %speed.0, i32 noundef %speed.0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keyspan_pda_break_ctl(ptr nocapture noundef readonly %tty, i32 noundef %break_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %break_state)
  %cmp = icmp eq i32 %break_state, -1
  %. = zext i1 %cmp to i16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i = shl i32 %7, 8
  %or = or i32 %shl.i, -2147483648
  %call3 = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or, i8 noundef zeroext 4, i8 noundef zeroext 65, i16 noundef zeroext %., i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 2000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.body, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_pda_break_ctl.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_pda_break_ctl, %if.then10)) #7
          to label %if.end13 [label %if.then10], !srcloc !125

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev11 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_pda_break_ctl.__UNIQUE_ID_ddebug250, ptr noundef %dev11, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.19, i32 noundef %call3) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %do.body, %entry.if.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keyspan_pda_rx_throttle(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interrupt_in_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keyspan_pda_rx_unthrottle(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interrupt_in_urb, align 4
  %call = tail call i32 @usb_submit_urb(ptr noundef %3, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %do.body

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_pda_rx_unthrottle.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_pda_rx_unthrottle, %if.then5)) #7
          to label %if.end6 [label %if.then5], !srcloc !125

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_pda_rx_unthrottle.__UNIQUE_ID_ddebug249, ptr noundef %dev, ptr noundef nonnull @.str.21) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.body, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keyspan_pda_tiocmget(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  %data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #7
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %data.i, align 1, !annotation !124
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %call.i = call i32 @usb_control_msg_recv(ptr noundef %6, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext -63, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %data.i, i16 noundef zeroext 1, i32 noundef 2000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %keyspan_pda_get_modem_info.exit.thread, label %keyspan_pda_get_modem_info.exit

keyspan_pda_get_modem_info.exit.thread:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #7
  %phi.cast = zext i8 %8 to i32
  br label %if.end

keyspan_pda_get_modem_info.exit:                  ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %keyspan_pda_get_modem_info.exit.cleanup_crit_edge, label %keyspan_pda_get_modem_info.exit.if.end_crit_edge

keyspan_pda_get_modem_info.exit.if.end_crit_edge: ; preds = %keyspan_pda_get_modem_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

keyspan_pda_get_modem_info.exit.cleanup_crit_edge: ; preds = %keyspan_pda_get_modem_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %keyspan_pda_get_modem_info.exit.if.end_crit_edge, %keyspan_pda_get_modem_info.exit.thread
  %status.033 = phi i32 [ %phi.cast, %keyspan_pda_get_modem_info.exit.thread ], [ 255, %keyspan_pda_get_modem_info.exit.if.end_crit_edge ]
  %and = lshr i32 %status.033, 6
  %9 = and i32 %and, 2
  %and7 = shl nuw nsw i32 %status.033, 2
  %10 = and i32 %and7, 128
  %and12 = shl nuw nsw i32 %status.033, 4
  %11 = and i32 %and12, 256
  %12 = and i32 %and7, 32
  %or = and i32 %status.033, 68
  %or10 = or i32 %or, %9
  %or15 = or i32 %or10, %10
  %or20 = or i32 %or15, %11
  %or25 = or i32 %or20, %12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %keyspan_pda_get_modem_info.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %or25, %if.end ], [ %call.i, %keyspan_pda_get_modem_info.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keyspan_pda_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #2 align 64 {
entry:
  %data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #7
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %data.i, align 1, !annotation !124
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %call.i = call i32 @usb_control_msg_recv(ptr noundef %6, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext -63, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %data.i, i16 noundef zeroext 1, i32 noundef 2000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %keyspan_pda_get_modem_info.exit.thread, label %keyspan_pda_get_modem_info.exit

keyspan_pda_get_modem_info.exit.thread:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #7
  br label %if.end

keyspan_pda_get_modem_info.exit:                  ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %keyspan_pda_get_modem_info.exit.cleanup_crit_edge, label %keyspan_pda_get_modem_info.exit.if.end_crit_edge

keyspan_pda_get_modem_info.exit.if.end_crit_edge: ; preds = %keyspan_pda_get_modem_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

keyspan_pda_get_modem_info.exit.cleanup_crit_edge: ; preds = %keyspan_pda_get_modem_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %keyspan_pda_get_modem_info.exit.if.end_crit_edge, %keyspan_pda_get_modem_info.exit.thread
  %status.041 = phi i8 [ %8, %keyspan_pda_get_modem_info.exit.thread ], [ -1, %keyspan_pda_get_modem_info.exit.if.end_crit_edge ]
  %9 = trunc i32 %set to i8
  %10 = and i8 %9, 4
  %11 = shl i8 %9, 6
  %12 = and i8 %11, -128
  %13 = or i8 %12, %10
  %14 = or i8 %13, %status.041
  %and12 = and i32 %clear, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %15 = and i8 %14, -5
  %status.3 = select i1 %tobool13.not, i8 %14, i8 %15
  %and19 = and i32 %clear, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %16 = and i8 %status.3, 127
  %status.4 = select i1 %tobool20.not, i8 %status.3, i8 %16
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i = shl i32 %20, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv.i = zext i8 %status.4 to i16
  %call2.i = call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or.i, i8 noundef zeroext 3, i8 noundef zeroext 65, i16 noundef zeroext %conv.i, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 2000) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %keyspan_pda_get_modem_info.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %if.end ], [ %call.i, %keyspan_pda_get_modem_info.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keyspan_pda_dtr_rts(ptr nocapture noundef readonly %port, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i4 = shl i32 %5, 8
  %or.i5 = or i32 %shl.i.i4, -2147483648
  %. = select i1 %tobool.not, i16 0, i16 132
  %call2.i6 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i5, i8 noundef zeroext 3, i8 noundef zeroext 65, i16 noundef zeroext %., i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 2000) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keyspan_pda_rx_interrupt(ptr noundef %urb) #2 align 64 {
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
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %10 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %7, label %do.body6 [
    i32 0, label %sw.epilog
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge143
    i32 -108, label %entry.do.body_crit_edge144
  ]

entry.do.body_crit_edge144:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge143:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge143, %entry.do.body_crit_edge144
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_pda_rx_interrupt.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_pda_rx_interrupt, %if.then)) #7
          to label %cleanup [label %if.then], !srcloc !125

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %dev5 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_pda_rx_interrupt.__UNIQUE_ID_ddebug244, ptr noundef %dev5, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef %7) #7
  br label %cleanup

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_pda_rx_interrupt.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_pda_rx_interrupt, %if.then18)) #7
          to label %exit [label %if.then18], !srcloc !125

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %dev19 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %13 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev19, align 4
  %dev20 = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_pda_rx_interrupt.__UNIQUE_ID_ddebug245, ptr noundef %dev20, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %7) #7
  br label %exit

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %do.end27, label %if.end29

do.end27:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %dev28 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev28, ptr noundef nonnull @.str.25) #11
  br label %exit

if.end29:                                         ; preds = %sw.epilog
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %3, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %16, label %if.end29.exit_crit_edge [
    i8 0, label %sw.bb30
    i8 1, label %sw.bb38
  ]

if.end29.exit_crit_edge:                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

sw.bb30:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp31 = icmp ult i32 %5, 2
  br i1 %cmp31, label %sw.bb30.exit_crit_edge, label %if.end34

sw.bb30.exit_crit_edge:                           ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end34:                                         ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  %port35 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %3, i32 1
  %sub = add i32 %5, -1
  %call.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port35, ptr noundef %add.ptr, i8 noundef zeroext 0, i32 noundef %sub) #7
  tail call void @tty_flip_buffer_push(ptr noundef %port35) #7
  br label %exit

sw.bb38:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp39 = icmp ult i32 %5, 2
  br i1 %cmp39, label %do.end44, label %do.body47

do.end44:                                         ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #9
  %dev45 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev45, ptr noundef nonnull @.str.29) #11
  br label %exit

do.body47:                                        ; preds = %sw.bb38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_pda_rx_interrupt.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_pda_rx_interrupt, %if.then59)) #7
          to label %do.end65 [label %if.then59], !srcloc !125

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  %dev60 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %arrayidx61 = getelementptr i8, ptr %3, i32 1
  %18 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_pda_rx_interrupt.__UNIQUE_ID_ddebug246, ptr noundef %dev60, ptr noundef nonnull @.str.31, i32 noundef %conv62) #7
  br label %do.end65

do.end65:                                         ; preds = %if.then59, %do.body47
  %arrayidx66 = getelementptr i8, ptr %3, i32 1
  %20 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx66, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %cond104 = icmp eq i8 %21, 2
  br i1 %cond104, label %do.body70, label %do.end65.exit_crit_edge

do.end65.exit_crit_edge:                          ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

do.body70:                                        ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 2
  %call75 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %9, align 4
  %24 = tail call i32 @llvm.smax.i32(i32 %23, i32 128)
  %25 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %9, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call75) #7
  %call85 = tail call fastcc i32 @keyspan_pda_write_start(ptr noundef %1)
  tail call void @usb_serial_port_softint(ptr noundef %1) #7
  br label %exit

exit:                                             ; preds = %do.body70, %do.end65.exit_crit_edge, %do.end44, %if.end34, %sw.bb30.exit_crit_edge, %if.end29.exit_crit_edge, %do.end27, %if.then18, %do.body6
  %call90 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %exit.cleanup_crit_edge, label %do.end95

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end95:                                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev96 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev96, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.22, i32 noundef %call90) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end95, %exit.cleanup_crit_edge, %if.then, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keyspan_pda_write_bulk_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %lock = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %2 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %transfer_buffer_length, align 4
  %tx_bytes = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_bytes, align 4
  %sub = sub i32 %5, %3
  store i32 %sub, ptr %tx_bytes, align 4
  %write_urbs_free = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 25
  %6 = ptrtoint ptr %write_urbs_free to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %write_urbs_free, align 4
  %or.i = or i32 %7, 1
  store i32 %or.i, ptr %write_urbs_free, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  %call6 = tail call fastcc i32 @keyspan_pda_write_start(ptr noundef %1)
  tail call void @usb_serial_port_softint(ptr noundef %1) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keyspan_pda_request_unthrottle(ptr nocapture noundef %work) #2 align 64 {
entry:
  %room.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %port1 = getelementptr i8, ptr %work, i32 48
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_pda_request_unthrottle.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_pda_request_unthrottle, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !125

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_pda_request_unthrottle.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i = shl i32 %7, 8
  %or = or i32 %shl.i, -2147483648
  %call9 = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or, i8 noundef zeroext 7, i8 noundef zeroext 65, i16 noundef zeroext 128, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 2000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %do.body11, label %do.end.if.end29_crit_edge

do.end.if.end29_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.body11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_pda_request_unthrottle.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_pda_request_unthrottle, %if.then23)) #7
          to label %if.end29 [label %if.then23], !srcloc !125

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %dev25 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_pda_request_unthrottle.__UNIQUE_ID_ddebug241, ptr noundef %dev25, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, i32 noundef %call9) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then23, %do.body11, %do.end.if.end29_crit_edge
  %10 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port1, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %room.i) #7
  %14 = ptrtoint ptr %room.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %room.i, align 1, !annotation !124
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %13, align 4
  %call.i = call i32 @usb_control_msg_recv(ptr noundef %16, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext -63, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %room.i, i16 noundef zeroext 1, i32 noundef 2000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body10.i, label %do.body.i

do.body.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_pda_get_write_room.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_pda_request_unthrottle, %if.then7.i)) #7
          to label %keyspan_pda_get_write_room.exit [label %if.then7.i], !srcloc !125

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev8.i = getelementptr inbounds %struct.usb_serial_port, ptr %11, i32 0, i32 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_pda_get_write_room.__UNIQUE_ID_ddebug238, ptr noundef %dev8.i, ptr noundef nonnull @.str.8, i32 noundef %call.i) #7
  br label %keyspan_pda_get_write_room.exit

do.body10.i:                                      ; preds = %if.end29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_pda_get_write_room.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_pda_request_unthrottle, %if.then22.i)) #7
          to label %do.end26.i [label %if.then22.i], !srcloc !125

if.then22.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev23.i = getelementptr inbounds %struct.usb_serial_port, ptr %11, i32 0, i32 32
  %17 = ptrtoint ptr %room.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %room.i, align 1
  %conv.i = zext i8 %18 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_pda_get_write_room.__UNIQUE_ID_ddebug239, ptr noundef %dev23.i, ptr noundef nonnull @.str.9, i32 noundef %conv.i) #7
  br label %do.end26.i

do.end26.i:                                       ; preds = %if.then22.i, %do.body10.i
  %19 = ptrtoint ptr %room.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %room.i, align 1
  %conv27.i = zext i8 %20 to i32
  br label %keyspan_pda_get_write_room.exit

keyspan_pda_get_write_room.exit:                  ; preds = %do.end26.i, %if.then7.i, %do.body.i
  %retval.0.i66 = phi i32 [ %conv27.i, %do.end26.i ], [ %call.i, %if.then7.i ], [ %call.i, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %room.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %retval.0.i66)
  %cmp31 = icmp sgt i32 %retval.0.i66, 128
  br i1 %cmp31, label %do.body34, label %keyspan_pda_get_write_room.exit.if.end48_crit_edge

keyspan_pda_get_write_room.exit.if.end48_crit_edge: ; preds = %keyspan_pda_get_write_room.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

do.body34:                                        ; preds = %keyspan_pda_get_write_room.exit
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 2
  %call38 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr, align 4
  %23 = call i32 @llvm.smax.i32(i32 %22, i32 %retval.0.i66)
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %add.ptr, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call38) #7
  call void @usb_serial_port_softint(ptr noundef %1) #7
  br label %if.end48

if.end48:                                         ; preds = %do.body34, %keyspan_pda_get_write_room.exit.if.end48_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_port_softint(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg_recv(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @keyspan_pda_write_start(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 22
  %4 = ptrtoint ptr %write_fifo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %write_fifo, align 4
  %out = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 22, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out, align 4
  %write_urbs_free = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 25
  %8 = ptrtoint ptr %write_urbs_free to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %write_urbs_free, align 4
  %and1.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp8 = icmp eq i32 %5, %7
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11 = icmp eq i32 %3, 0
  %or.cond143 = select i1 %or.cond, i1 true, i1 %cmp11
  br i1 %or.cond143, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = sub i32 %5, %7
  %and.i = and i32 %9, -2
  %10 = ptrtoint ptr %write_urbs_free to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and.i, ptr %write_urbs_free, align 4
  %11 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %3)
  %bulk_out_size = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 20
  %12 = ptrtoint ptr %bulk_out_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bulk_out_size, align 4
  %14 = tail call i32 @llvm.smin.i32(i32 %11, i32 %13)
  %write_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 21
  %15 = ptrtoint ptr %write_urb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_urb, align 8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %transfer_buffer, align 4
  %call26 = tail call i32 @__kfifo_out(ptr noundef %write_fifo, ptr noundef %18, i32 noundef %14) #7
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 19
  %19 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call26, ptr %transfer_buffer_length, align 4
  %tx_bytes = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 28
  %20 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %21, %call26
  store i32 %add, ptr %tx_bytes, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %sub29 = sub i32 %23, %call26
  store i32 %sub29, ptr %1, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_pda_write_start.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_pda_write_start, %if.then37)) #7
          to label %do.end40 [label %if.then37], !srcloc !125

if.then37:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_pda_write_start.__UNIQUE_ID_ddebug252, ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, i32 noundef %call26, i32 noundef %3) #7
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %if.end
  %call41 = tail call i32 @usb_submit_urb(ptr noundef %16, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end85, label %do.body44

do.body44:                                        ; preds = %do.end40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keyspan_pda_write_start.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keyspan_pda_write_start, %if.then56)) #7
          to label %do.body62 [label %if.then56], !srcloc !125

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  %dev57 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keyspan_pda_write_start.__UNIQUE_ID_ddebug253, ptr noundef %dev57, ptr noundef nonnull @.str.16) #7
  br label %do.body62

do.body62:                                        ; preds = %if.then56, %do.body44
  %call70 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %24 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_bytes, align 4
  %sub76 = sub i32 %25, %call26
  store i32 %sub76, ptr %tx_bytes, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %1, align 4
  %add78 = add i32 %call26, %3
  %28 = tail call i32 @llvm.smax.i32(i32 %27, i32 %add78)
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %1, align 4
  %30 = ptrtoint ptr %write_urbs_free to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %write_urbs_free, align 4
  %or.i = or i32 %31, 1
  store i32 %or.i, ptr %write_urbs_free, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call70) #7
  br label %cleanup

if.end85:                                         ; preds = %do.end40
  call void @__sanitizer_cov_trace_cmp4(i32 %call26, i32 %3)
  %cmp86 = icmp eq i32 %call26, %3
  br i1 %cmp86, label %if.then88, label %if.end85.cleanup_crit_edge

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  %unthrottle_work = getelementptr inbounds %struct.keyspan_pda_private, ptr %1, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %32 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %unthrottle_work) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then88, %if.end85.cleanup_crit_edge, %do.body62, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call41, %do.body62 ], [ %3, %if.then88 ], [ %call26, %if.end85.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_copy_hw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keyspan_pda_fake_startup(ptr nocapture noundef readonly %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial, align 4
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 7
  %2 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %idVendor, align 8
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %call = tail call i32 @ezusb_fx1_set_reset(ptr noundef %1, i8 noundef zeroext 1) #7
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %4, label %do.end [
    i16 1741, label %entry.sw.epilog_crit_edge
    i16 2138, label %entry.sw.bb2_crit_edge
    i16 5701, label %entry.sw.bb2_crit_edge19
  ]

entry.sw.bb2_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge19
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %serial, align 4
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %fw_name.0 = phi ptr [ @.str.39, %sw.bb2 ], [ @.str.38, %entry.sw.epilog_crit_edge ]
  %8 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %serial, align 4
  %call6 = tail call i32 @ezusb_fx1_ihex_firmware_download(ptr noundef %9, ptr noundef nonnull %fw_name.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end10, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end10:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %serial, align 4
  %dev12 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.43, ptr noundef nonnull %fw_name.0) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -2, %do.end10 ], [ 1, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ezusb_fx1_set_reset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ezusb_fx1_ihex_firmware_download(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !17, !19, !21, !23, !25, !27, !28, !30, !31, !32, !33, !35, !36, !38, !39, !40, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !60, !61, !62, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !78, !79, !80, !81, !82, !84, !85, !86, !88, !89, !91, !92, !93, !94, !96, !98, !100, !102, !104, !106, !108, !109, !110, !111, !113, !114}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @__UNIQUE_ID_firmware258, !1, !"__UNIQUE_ID_firmware258", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 644, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware259, !3, !"__UNIQUE_ID_firmware259", i1 false, i1 false}
!3 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 645, i32 1}
!4 = !{ptr @__initcall__kmod_keyspan_pda__260_715_usb_serial_module_init6, !5, !"__initcall__kmod_keyspan_pda__260_715_usb_serial_module_init6", i1 false, i1 false}
!5 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 715, i32 1}
!6 = !{ptr @__exitcall_usb_serial_module_exit, !5, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author261, !8, !"__UNIQUE_ID_author261", i1 false, i1 false}
!8 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 717, i32 1}
!9 = !{ptr @__UNIQUE_ID_description262, !10, !"__UNIQUE_ID_description262", i1 false, i1 false}
!10 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 718, i32 1}
!11 = !{ptr @__UNIQUE_ID_file263, !12, !"__UNIQUE_ID_file263", i1 false, i1 false}
!12 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 719, i32 1}
!13 = !{ptr @__UNIQUE_ID_license264, !12, !"__UNIQUE_ID_license264", i1 false, i1 false}
!14 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @id_table_combined, !16, !"id_table_combined", i1 false, i1 false}
!16 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 53, i32 35}
!17 = !{ptr @serial_drivers, !18, !"serial_drivers", i1 false, i1 false}
!18 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 709, i32 41}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 688, i32 18}
!21 = !{ptr @keyspan_pda_device, !22, !"keyspan_pda_device", i1 false, i1 false}
!22 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 683, i32 33}
!23 = !{ptr @id_table_std, !24, !"id_table_std", i1 false, i1 false}
!24 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 63, i32 35}
!25 = !{ptr @keyspan_pda_port_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 656, i32 2}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 112, i32 2}
!30 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @keyspan_pda_request_unthrottle.__UNIQUE_ID_ddebug240, !29, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 129, i32 3}
!35 = !{ptr @keyspan_pda_request_unthrottle.__UNIQUE_ID_ddebug241, !34, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 94, i32 3}
!38 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @keyspan_pda_get_write_room.__UNIQUE_ID_ddebug238, !37, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 98, i32 2}
!42 = !{ptr @keyspan_pda_get_write_room.__UNIQUE_ID_ddebug239, !41, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 581, i32 3}
!45 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @keyspan_pda_open.__UNIQUE_ID_ddebug257, !44, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 539, i32 2}
!49 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @keyspan_pda_write.__UNIQUE_ID_ddebug256, !48, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 498, i32 2}
!53 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @keyspan_pda_write_start.__UNIQUE_ID_ddebug252, !52, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 502, i32 3}
!57 = !{ptr @keyspan_pda_write_start.__UNIQUE_ID_ddebug253, !56, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 354, i32 3}
!60 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @keyspan_pda_set_termios.__UNIQUE_ID_ddebug251, !59, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 319, i32 3}
!64 = !{ptr @keyspan_pda_break_ctl.__UNIQUE_ID_ddebug250, !63, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 242, i32 3}
!67 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @keyspan_pda_rx_unthrottle.__UNIQUE_ID_ddebug249, !66, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!69 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 165, i32 3}
!71 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @keyspan_pda_rx_interrupt.__UNIQUE_ID_ddebug244, !70, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 168, i32 3}
!75 = !{ptr @keyspan_pda_rx_interrupt.__UNIQUE_ID_ddebug245, !74, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!76 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 173, i32 3}
!78 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @keyspan_pda_rx_interrupt._entry, !77, !"_entry", i1 false, i1 false}
!81 = !{ptr @keyspan_pda_rx_interrupt._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 189, i32 4}
!84 = !{ptr @keyspan_pda_rx_interrupt._entry.28, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @keyspan_pda_rx_interrupt._entry_ptr.30, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 192, i32 3}
!88 = !{ptr @keyspan_pda_rx_interrupt.__UNIQUE_ID_ddebug246, !87, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 216, i32 3}
!91 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @keyspan_pda_rx_interrupt._entry.32, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @keyspan_pda_rx_interrupt._entry_ptr.35, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 677, i32 18}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 675, i32 12}
!98 = !{ptr @keyspan_pda_fake_device, !99, !"keyspan_pda_fake_device", i1 false, i1 false}
!99 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 672, i32 33}
!100 = !{ptr @id_table_fake, !101, !"id_table_fake", i1 false, i1 false}
!101 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 68, i32 35}
!102 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 617, i32 13}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 621, i32 13}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 624, i32 3}
!108 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @keyspan_pda_fake_startup._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @keyspan_pda_fake_startup._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.43, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/serial/keyspan_pda.c", i32 630, i32 3}
!113 = !{ptr @keyspan_pda_fake_startup._entry.42, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @keyspan_pda_fake_startup._entry_ptr.44, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{!"auto-init"}
!125 = !{i64 2148707901, i64 2148707906, i64 2148707919, i64 2148707963, i64 2148707997, i64 2148708018}
