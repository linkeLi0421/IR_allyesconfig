; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/kobil_sct.c_pt.bc'
source_filename = "../drivers/usb/serial/kobil_sct.c"
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
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kobil_private = type { [300 x i8], i32, i32, i16 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }

@__initcall__kmod_kobil_sct__265_567_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @kobil_device, ptr null], [24 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author266 = internal constant [59 x i8] c"kobil_sct.author=KOBIL Systems GmbH - http://www.kobil.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description267 = internal constant [74 x i8] c"kobil_sct.description=KOBIL USB Smart Card Terminal Driver (experimental)\00", section ".modinfo", align 1
@__UNIQUE_ID_file268 = internal constant [44 x i8] c"kobil_sct.file=drivers/usb/serial/kobil_sct\00", section ".modinfo", align 1
@__UNIQUE_ID_license269 = internal constant [22 x i8] c"kobil_sct.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"kobil_sct\00", [22 x i8] zeroinitializer }, align 32
@id_table = internal constant { [5 x %struct.usb_device_id], [40 x i8] } { [5 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 3398, i16 8209, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3398, i16 8210, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3398, i16 120, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3398, i16 129, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@kobil_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr @.str.1, ptr @id_table, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 1, i8 0, i8 0, i8 0, i8 1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kobil_port_probe, ptr @kobil_port_remove, ptr null, ptr null, ptr null, ptr @kobil_open, ptr @kobil_close, ptr @kobil_write, ptr @kobil_write_room, ptr @kobil_ioctl, ptr null, ptr null, ptr @kobil_set_termios, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kobil_tiocmget, ptr @kobil_tiocmset, ptr null, ptr null, ptr null, ptr null, ptr @kobil_init_termios, ptr @kobil_read_int_callback, ptr @kobil_write_int_callback, ptr null, ptr null, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"KOBIL USB smart card terminal\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"kobil\00", [26 x i8] zeroinitializer }, align 32
@kobil_port_probe.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kobil_port_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/usb/serial/kobil_sct.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"KOBIL B1 PRO / KAAN PRO detected\0A\00", [62 x i8] zeroinitializer }, align 32
@kobil_port_probe.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.6, i8 0, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"KOBIL KAAN Standard Plus / SecOVID Reader Plus detected\0A\00", [39 x i8] zeroinitializer }, align 32
@kobil_port_probe.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.7, i8 0, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"KOBIL USBTWIN detected\0A\00", [40 x i8] zeroinitializer }, align 32
@kobil_port_probe.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.8, i8 0, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"KOBIL KAAN SIM detected\0A\00", [39 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@kobil_open.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.4, ptr @.str.10, i8 0, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"kobil_open\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s - Send get_HW_version URB returns: %i\0A\00", [54 x i8] zeroinitializer }, align 32
@kobil_open.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.4, ptr @.str.11, i8 0, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Hardware version: %i.%i.%i\0A\00", [36 x i8] zeroinitializer }, align 32
@kobil_open.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.4, ptr @.str.12, i8 0, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s - Send get_FW_version URB returns: %i\0A\00", [54 x i8] zeroinitializer }, align 32
@kobil_open.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.4, ptr @.str.13, i8 0, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Firmware version: %i.%i.%i\0A\00", [36 x i8] zeroinitializer }, align 32
@kobil_open.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.4, ptr @.str.14, i8 0, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - Send set_baudrate URB returns: %i\0A\00", [56 x i8] zeroinitializer }, align 32
@kobil_open.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.4, ptr @.str.15, i8 0, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s - Send reset_all_queues URB returns: %i\0A\00", [52 x i8] zeroinitializer }, align 32
@kobil_open.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.4, ptr @.str.16, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s - Send read URB returns: %i\0A\00", [32 x i8] zeroinitializer }, align 32
@kobil_write.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.4, ptr @.str.18, i8 0, i8 75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kobil_write\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - write request of 0 bytes\0A\00", [33 x i8] zeroinitializer }, align 32
@kobil_write.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.4, ptr @.str.19, i8 0, i8 77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s - Error: write request bigger than buffer size\0A\00", [45 x i8] zeroinitializer }, align 32
@kobil_write.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.4, ptr @.str.20, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s - Send write URB returns: %i\0A\00", [63 x i8] zeroinitializer }, align 32
@kobil_write.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.4, ptr @.str.16, i8 0, i8 88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@usb_serial_debug_data.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.22, ptr @.str.23, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb_serial_debug_data\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/usb/serial.h\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - length = %d, data = %*ph\0A\00", [33 x i8] zeroinitializer }, align 32
@kobil_ioctl.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.4, ptr @.str.25, i8 0, i8 -116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kobil_ioctl\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s - Send reset_all_queues (FLUSH) URB returns: %i\0A\00", [44 x i8] zeroinitializer }, align 32
@kobil_set_termios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 529, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to update line settings: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kobil_set_termios\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@kobil_set_termios._entry_ptr = internal global ptr @kobil_set_termios._entry, section ".printk_index", align 4
@kobil_tiocmget.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.4, ptr @.str.31, i8 0, i8 99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kobil_tiocmget\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Send get_status_line_state URB returns: %i\0A\00", [52 x i8] zeroinitializer }, align 32
@kobil_tiocmget.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.4, ptr @.str.32, i8 0, i8 101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Statusline: %02x\0A\00", [46 x i8] zeroinitializer }, align 32
@kobil_tiocmset.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.4, ptr @.str.34, i8 0, i8 111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kobil_tiocmset\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s - Setting DTR\0A\00", [46 x i8] zeroinitializer }, align 32
@kobil_tiocmset.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.4, ptr @.str.35, i8 0, i8 111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s - Clearing DTR\0A\00", [45 x i8] zeroinitializer }, align 32
@kobil_tiocmset.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.4, ptr @.str.36, i8 0, i8 114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s - Setting RTS\0A\00", [46 x i8] zeroinitializer }, align 32
@kobil_tiocmset.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.4, ptr @.str.37, i8 0, i8 115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s - Clearing RTS\0A\00", [45 x i8] zeroinitializer }, align 32
@kobil_tiocmset.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.4, ptr @.str.38, i8 0, i8 118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s - Send set_status_line URB returns: %i\0A\00", [53 x i8] zeroinitializer }, align 32
@kobil_read_int_callback.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.4, ptr @.str.40, i8 0, i8 67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kobil_read_int_callback\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s - Read int status not zero: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@kobil_read_int_callback.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.4, ptr @.str.16, i8 0, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 120, i64 129, i64 8209, i64 8210]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 16, i64 120, i64 129, i64 8209]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 16, i64 120, i64 129]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 16, i64 120, i64 129]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 16, i64 120, i64 129]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 16, i64 120, i64 129, i64 8209]
@___asan_gen_.46 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 101, i32 41 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 567, i32 1 }
@___asan_gen_.52 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 68, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant [13 x i8] c"kobil_device\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 77, i32 33 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 82, i32 18 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 80, i32 12 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 128, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 131, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 134, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 137, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 190, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 192, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 207, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 209, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 227, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 240, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 247, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 301, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 308, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 339, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant [30 x i8] c"../include/linux/usb/serial.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 393, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 558, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 528, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 398, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 406, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 445, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 447, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 459, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 461, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 472, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.179 = private constant [34 x i8] c"../drivers/usb/serial/kobil_sct.c\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 271, i32 3 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_author266, ptr @__UNIQUE_ID_description267, ptr @__UNIQUE_ID_file268, ptr @__UNIQUE_ID_license269, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_kobil_sct__265_567_usb_serial_module_init6, ptr @kobil_set_termios._entry, ptr @kobil_set_termios._entry_ptr, ptr @usb_serial_module_exit, ptr @serial_drivers, ptr @.str, ptr @id_table, ptr @kobil_device, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kobil_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kobil_set_termios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }]
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
define internal i32 @kobil_port_probe(ptr nocapture noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 312) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %filled = getelementptr inbounds %struct.kobil_private, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %filled to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %filled, align 4
  %cur_pos = getelementptr inbounds %struct.kobil_private, ptr %call7.i, i32 0, i32 2
  %4 = ptrtoint ptr %cur_pos to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cur_pos, align 8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 16, i32 8
  %7 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %idProduct, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %device_type = getelementptr inbounds %struct.kobil_private, ptr %call7.i, i32 0, i32 3
  %10 = ptrtoint ptr %device_type to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %device_type, align 4
  %11 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i16 %9, label %if.end.sw.epilog_crit_edge [
    i16 8209, label %do.body
    i16 8210, label %do.body12
    i16 120, label %do.body31
    i16 129, label %do.body50
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kobil_port_probe.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kobil_port_probe, %if.then7)) #8
          to label %sw.epilog [label %if.then7], !srcloc !123

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %dev9 = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kobil_port_probe.__UNIQUE_ID_ddebug238, ptr noundef %dev9, ptr noundef nonnull @.str.5) #8
  br label %sw.epilog

do.body12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kobil_port_probe.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kobil_port_probe, %if.then24)) #8
          to label %sw.epilog [label %if.then24], !srcloc !123

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %dev26 = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kobil_port_probe.__UNIQUE_ID_ddebug239, ptr noundef %dev26, ptr noundef nonnull @.str.6) #8
  br label %sw.epilog

do.body31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kobil_port_probe.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kobil_port_probe, %if.then43)) #8
          to label %sw.epilog [label %if.then43], !srcloc !123

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %dev45 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kobil_port_probe.__UNIQUE_ID_ddebug240, ptr noundef %dev45, ptr noundef nonnull @.str.7) #8
  br label %sw.epilog

do.body50:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kobil_port_probe.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kobil_port_probe, %if.then62)) #8
          to label %sw.epilog [label %if.then62], !srcloc !123

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %dev64 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kobil_port_probe.__UNIQUE_ID_ddebug241, ptr noundef %dev64, ptr noundef nonnull @.str.8) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then62, %do.body50, %if.then43, %do.body31, %if.then24, %do.body12, %if.then7, %do.body, %if.end.sw.epilog_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kobil_port_remove(ptr nocapture noundef readonly %port) #2 align 64 {
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
define internal i32 @kobil_open(ptr nocapture noundef readnone %tty, ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 8) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i = shl i32 %8, 8
  %or7 = or i32 %shl.i, -2147483520
  %call8 = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or7, i8 noundef zeroext 16, i8 noundef zeroext -62, i16 noundef zeroext 2, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 8, i32 noundef 500) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kobil_open.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kobil_open, %if.then13)) #8
          to label %do.end [label %if.then13], !srcloc !123

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kobil_open.__UNIQUE_ID_ddebug242, ptr noundef %dev1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i32 noundef %call8) #8
  br label %do.end

do.end:                                           ; preds = %if.then13, %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call8)
  %cmp = icmp sgt i32 %call8, 2
  br i1 %cmp, label %do.body17, label %do.end.if.end38_crit_edge

do.end.if.end38_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

do.body17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kobil_open.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kobil_open, %if.then29)) #8
          to label %if.end38 [label %if.then29], !srcloc !123

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %call7.i.i, align 8
  %conv30 = zext i8 %10 to i32
  %arrayidx31 = getelementptr i8, ptr %call7.i.i, i32 1
  %11 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %12 to i32
  %arrayidx33 = getelementptr i8, ptr %call7.i.i, i32 2
  %13 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx33, align 2
  %conv34 = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kobil_open.__UNIQUE_ID_ddebug243, ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %conv30, i32 noundef %conv32, i32 noundef %conv34) #8
  br label %if.end38

if.end38:                                         ; preds = %if.then29, %do.body17, %do.end.if.end38_crit_edge
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i237 = shl i32 %20, 8
  %or45 = or i32 %shl.i237, -2147483520
  %call47 = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or45, i8 noundef zeroext 16, i8 noundef zeroext -62, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 8, i32 noundef 500) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kobil_open.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kobil_open, %if.then60)) #8
          to label %do.end63 [label %if.then60], !srcloc !123

if.then60:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kobil_open.__UNIQUE_ID_ddebug244, ptr noundef %dev1, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.9, i32 noundef %call47) #8
  br label %do.end63

do.end63:                                         ; preds = %if.then60, %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call47)
  %cmp64 = icmp sgt i32 %call47, 2
  br i1 %cmp64, label %do.body67, label %do.end63.if.end89_crit_edge

do.end63.if.end89_crit_edge:                      ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

do.body67:                                        ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kobil_open.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kobil_open, %if.then79)) #8
          to label %if.end89 [label %if.then79], !srcloc !123

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %call7.i.i, align 8
  %conv81 = zext i8 %22 to i32
  %arrayidx82 = getelementptr i8, ptr %call7.i.i, i32 1
  %23 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %24 to i32
  %arrayidx84 = getelementptr i8, ptr %call7.i.i, i32 2
  %25 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx84, align 2
  %conv85 = zext i8 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kobil_open.__UNIQUE_ID_ddebug245, ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %conv81, i32 noundef %conv83, i32 noundef %conv85) #8
  br label %if.end89

if.end89:                                         ; preds = %if.then79, %do.body67, %do.end63.if.end89_crit_edge
  %device_type = getelementptr inbounds %struct.kobil_private, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %device_type to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %device_type, align 4
  %.off = add i16 %28, -8209
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off)
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %if.then97, label %if.end89.if.end144_crit_edge

if.end89.if.end144_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

if.then97:                                        ; preds = %if.end89
  %29 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %port, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 8
  %shl.i238 = shl i32 %34, 8
  %or103 = or i32 %shl.i238, -2147483648
  %call104 = tail call i32 @usb_control_msg(ptr noundef %32, i32 noundef %or103, i8 noundef zeroext 1, i8 noundef zeroext 66, i16 noundef zeroext 577, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kobil_open.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kobil_open, %if.then117)) #8
          to label %do.end120 [label %if.then117], !srcloc !123

if.then117:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kobil_open.__UNIQUE_ID_ddebug246, ptr noundef %dev1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef %call104) #8
  br label %do.end120

do.end120:                                        ; preds = %if.then117, %if.then97
  %35 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %port, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 8
  %shl.i239 = shl i32 %40, 8
  %or126 = or i32 %shl.i239, -2147483648
  %call127 = tail call i32 @usb_control_msg(ptr noundef %38, i32 noundef %or126, i8 noundef zeroext 8, i8 noundef zeroext 66, i16 noundef zeroext 2, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kobil_open.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kobil_open, %if.then140)) #8
          to label %if.end144 [label %if.then140], !srcloc !123

if.then140:                                       ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kobil_open.__UNIQUE_ID_ddebug247, ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.9, i32 noundef %call127) #8
  br label %if.end144

if.end144:                                        ; preds = %if.then140, %do.end120, %if.end89.if.end144_crit_edge
  %41 = ptrtoint ptr %device_type to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %device_type, align 4
  %43 = zext i16 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.41)
  switch i16 %42, label %if.end144.if.end177_crit_edge [
    i16 120, label %if.end144.if.then159_crit_edge
    i16 8209, label %if.end144.if.then159_crit_edge247
    i16 129, label %if.end144.if.then159_crit_edge248
  ]

if.end144.if.then159_crit_edge248:                ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then159

if.end144.if.then159_crit_edge247:                ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then159

if.end144.if.then159_crit_edge:                   ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then159

if.end144.if.end177_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end177

if.then159:                                       ; preds = %if.end144.if.then159_crit_edge, %if.end144.if.then159_crit_edge247, %if.end144.if.then159_crit_edge248
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %44 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %interrupt_in_urb, align 4
  %call160 = tail call i32 @usb_submit_urb(ptr noundef %45, i32 noundef 3264) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kobil_open.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kobil_open, %if.then173)) #8
          to label %if.end177 [label %if.then173], !srcloc !123

if.then173:                                       ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kobil_open.__UNIQUE_ID_ddebug248, ptr noundef %dev1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.9, i32 noundef %call160) #8
  br label %if.end177

if.end177:                                        ; preds = %if.then173, %if.then159, %if.end144.if.end177_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end177, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end177 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kobil_close(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupt_out_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 10
  %0 = ptrtoint ptr %interrupt_out_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interrupt_out_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %1) #8
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %2 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interrupt_in_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kobil_write(ptr nocapture noundef readnone %tty, ptr noundef %port, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kobil_write.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kobil_write, %if.then3)) #8
          to label %cleanup [label %if.then3], !srcloc !123

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kobil_write.__UNIQUE_ID_ddebug251, ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end4:                                          ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %filled = getelementptr inbounds %struct.kobil_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %filled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %filled, align 4
  %sub = sub i32 300, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %count)
  %cmp6 = icmp slt i32 %sub, %count
  br i1 %cmp6, label %do.body8, label %if.end25

do.body8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kobil_write.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kobil_write, %if.then20)) #8
          to label %cleanup [label %if.then20], !srcloc !123

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  %dev21 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kobil_write.__UNIQUE_ID_ddebug252, ptr noundef %dev21, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end25:                                         ; preds = %if.end4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %4 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %count)
  %dev28 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  %5 = ptrtoint ptr %filled to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %filled, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kobil_write, %if.then.i)) #8
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !123

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr32 = getelementptr i8, ptr %1, i32 %6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev28, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.17, i32 noundef %count, i32 noundef %count, ptr noundef %add.ptr32) #8
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %if.end25
  %7 = ptrtoint ptr %filled to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %filled, align 4
  %add = add i32 %8, %count
  store i32 %add, ptr %filled, align 4
  %device_type = getelementptr inbounds %struct.kobil_private, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %device_type to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %device_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8209, i16 %10)
  %cmp35.not = icmp ne i16 %10, 8209
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add)
  %cmp38 = icmp sgt i32 %add, 2
  %or.cond = select i1 %cmp35.not, i1 %cmp38, i1 false
  br i1 %or.cond, label %land.lhs.true40, label %lor.lhs.false

land.lhs.true40:                                  ; preds = %usb_serial_debug_data.exit
  %arrayidx = getelementptr [300 x i8], ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %conv43 = zext i8 %12 to i32
  %add44 = add nuw nsw i32 %conv43, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add44)
  %cmp45.not = icmp ult i32 %add, %add44
  br i1 %cmp45.not, label %land.lhs.true40.cleanup_crit_edge, label %if.then63

land.lhs.true40.cleanup_crit_edge:                ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %usb_serial_debug_data.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 8209, i16 %10)
  %cmp49 = icmp eq i16 %10, 8209
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add)
  %cmp53 = icmp sgt i32 %add, 3
  %or.cond221 = select i1 %cmp49, i1 %cmp53, i1 false
  br i1 %or.cond221, label %land.lhs.true55, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true55:                                  ; preds = %lor.lhs.false
  %arrayidx58 = getelementptr [300 x i8], ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx58, align 2
  %conv59 = zext i8 %14 to i32
  %add60 = add nuw nsw i32 %conv59, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add60)
  %cmp61.not = icmp ult i32 %add, %add60
  br i1 %cmp61.not, label %land.lhs.true55.cleanup_crit_edge, label %land.lhs.true55.if.then73_crit_edge

land.lhs.true55.if.then73_crit_edge:              ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then73

land.lhs.true55.cleanup_crit_edge:                ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then63:                                        ; preds = %land.lhs.true40
  %.off = add i16 %10, -8209
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off)
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %if.then63.if.then73_crit_edge, label %if.then63.if.end74_crit_edge

if.then63.if.end74_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then63.if.then73_crit_edge:                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then73

if.then73:                                        ; preds = %if.then63.if.then73_crit_edge, %land.lhs.true55.if.then73_crit_edge
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %15 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %interrupt_in_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %16) #8
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.then63.if.end74_crit_edge
  %17 = ptrtoint ptr %filled to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %filled, align 4
  %cur_pos = getelementptr inbounds %struct.kobil_private, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %cur_pos to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cur_pos, align 4
  %sub76 = sub i32 %18, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub76)
  %cmp77222 = icmp sgt i32 %sub76, 0
  br i1 %cmp77222, label %while.body.lr.ph, label %if.end74.while.end_crit_edge

if.end74.while.end_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end74
  %interrupt_out_size = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 9
  %interrupt_out_buffer = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 8
  %interrupt_out_urb = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %if.end114, %while.body.lr.ph
  %todo.0223 = phi i32 [ %sub76, %while.body.lr.ph ], [ %sub110, %if.end114 ]
  %21 = ptrtoint ptr %interrupt_out_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %interrupt_out_size, align 8
  %23 = tail call i32 @llvm.smin.i32(i32 %todo.0223, i32 %22)
  %24 = ptrtoint ptr %interrupt_out_buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %interrupt_out_buffer, align 4
  %26 = ptrtoint ptr %cur_pos to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cur_pos, align 4
  %add.ptr85 = getelementptr i8, ptr %1, i32 %27
  %28 = call ptr @memcpy(ptr %25, ptr %add.ptr85, i32 %23)
  %29 = ptrtoint ptr %interrupt_out_urb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %interrupt_out_urb, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %30, i32 0, i32 19
  %31 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %23, ptr %transfer_buffer_length, align 4
  %32 = load i32, ptr %cur_pos, align 4
  %add87 = add i32 %32, %23
  store i32 %add87, ptr %cur_pos, align 4
  %33 = load ptr, ptr %interrupt_out_urb, align 4
  %call90 = tail call i32 @usb_submit_urb(ptr noundef %33, i32 noundef 2592) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kobil_write.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kobil_write, %if.then103)) #8
          to label %do.end107 [label %if.then103], !srcloc !123

if.then103:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kobil_write.__UNIQUE_ID_ddebug255, ptr noundef %dev28, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17, i32 noundef %call90) #8
  br label %do.end107

do.end107:                                        ; preds = %if.then103, %while.body
  %34 = ptrtoint ptr %filled to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %filled, align 4
  %36 = ptrtoint ptr %cur_pos to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cur_pos, align 4
  %sub110 = sub i32 %35, %37
  %cmp111 = icmp sgt i32 %sub110, 0
  br i1 %cmp111, label %if.end114, label %do.end107.while.end_crit_edge

do.end107.while.end_crit_edge:                    ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end114:                                        ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 24) #8
  br label %while.body

while.end:                                        ; preds = %do.end107.while.end_crit_edge, %if.end74.while.end_crit_edge
  %38 = ptrtoint ptr %filled to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %filled, align 4
  %39 = ptrtoint ptr %cur_pos to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %cur_pos, align 4
  %40 = ptrtoint ptr %device_type to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %device_type, align 4
  %.off203 = add i16 %41, -8209
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off203)
  %switch204 = icmp ult i16 %.off203, 2
  br i1 %switch204, label %if.then126, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then126:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %interrupt_in_urb127 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 6
  %42 = ptrtoint ptr %interrupt_in_urb127 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %interrupt_in_urb127, align 4
  %call128 = tail call i32 @usb_submit_urb(ptr noundef %43, i32 noundef 2592) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kobil_write.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kobil_write, %if.then141)) #8
          to label %cleanup [label %if.then141], !srcloc !123

if.then141:                                       ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kobil_write.__UNIQUE_ID_ddebug256, ptr noundef %dev28, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %call128) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then141, %if.then126, %while.end.cleanup_crit_edge, %land.lhs.true55.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true40.cleanup_crit_edge, %if.then20, %do.body8, %if.then3, %do.body
  %retval.0 = phi i32 [ 0, %if.then3 ], [ -12, %if.then20 ], [ %count, %while.end.cleanup_crit_edge ], [ %count, %if.then141 ], [ %count, %land.lhs.true55.cleanup_crit_edge ], [ %count, %lor.lhs.false.cleanup_crit_edge ], [ 0, %do.body ], [ -12, %do.body8 ], [ %count, %if.then126 ], [ %count, %land.lhs.true40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kobil_write_room(ptr nocapture noundef readnone %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kobil_ioctl(ptr nocapture noundef readonly %tty, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
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
  %device_type = getelementptr inbounds %struct.kobil_private, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %device_type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device_type, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.42)
  switch i16 %5, label %if.end [
    i16 120, label %entry.cleanup_crit_edge
    i16 129, label %entry.cleanup_crit_edge27
  ]

entry.cleanup_crit_edge27:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 21515, i32 %cmd)
  %cond20 = icmp eq i32 %cmd, 21515
  br i1 %cond20, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i = shl i32 %12, 8
  %or = or i32 %shl.i, -2147483648
  %call9 = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %or, i8 noundef zeroext 8, i8 noundef zeroext 66, i16 noundef zeroext 2, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kobil_ioctl.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kobil_ioctl, %if.then13)) #8
          to label %do.end [label %if.then13], !srcloc !123

if.then13:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %dev14 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kobil_ioctl.__UNIQUE_ID_ddebug264, ptr noundef %dev14, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef %call9) #8
  br label %do.end

do.end:                                           ; preds = %if.then13, %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp16 = icmp slt i32 %call9, 0
  %cond = select i1 %cmp16, i32 -5, i32 0
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge27
  %retval.0 = phi i32 [ %cond, %do.end ], [ -515, %entry.cleanup_crit_edge ], [ -515, %entry.cleanup_crit_edge27 ], [ -515, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kobil_set_termios(ptr noundef %tty, ptr noundef %port, ptr noundef %old) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %device_type = getelementptr inbounds %struct.kobil_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %device_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device_type, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.43)
  switch i16 %3, label %if.end [
    i16 120, label %entry.if.then_crit_edge
    i16 129, label %entry.if.then_crit_edge65
  ]

entry.if.then_crit_edge65:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge65
  tail call void @tty_termios_copy_hw(ptr noundef %termios, ptr noundef %old) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %c_cflag1 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %5 = ptrtoint ptr %c_cflag1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %c_cflag1, align 4
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200, i32 %call.i)
  %cond63 = icmp eq i32 %call.i, 1200
  %spec.select = select i1 %cond63, i16 256, i16 512
  %spec.select64 = select i1 %cond63, i32 1200, i32 9600
  %and = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i16 1, i16 2
  %or = or i16 %spec.select, %cond
  %and12 = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %and15 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %. = select i1 %tobool16.not, i16 64, i16 32
  %.sink = select i1 %tobool13.not, i16 16, i16 %.
  %7 = or i16 %or, %.sink
  %8 = ptrtoint ptr %c_cflag1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %c_cflag1, align 4
  %and32 = and i32 %9, -1073741825
  store i32 %and32, ptr %c_cflag1, align 4
  tail call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef %spec.select64, i32 noundef %spec.select64) #8
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i = shl i32 %15, 8
  %or36 = or i32 %shl.i, -2147483648
  %call37 = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or36, i8 noundef zeroext 1, i8 noundef zeroext 66, i16 noundef zeroext %7, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev40 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.26, i32 noundef %call37) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kobil_tiocmget(ptr nocapture noundef readonly %tty) #2 align 64 {
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
  %device_type = getelementptr inbounds %struct.kobil_private, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %device_type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device_type, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.44)
  switch i16 %5, label %if.end [
    i16 120, label %entry.cleanup_crit_edge
    i16 129, label %entry.cleanup_crit_edge77
  ]

entry.cleanup_crit_edge77:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 8) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i = shl i32 %13, 8
  %or12 = or i32 %shl.i, -2147483520
  %call14 = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or12, i8 noundef zeroext 4, i8 noundef zeroext -62, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 8, i32 noundef 500) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kobil_tiocmget.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kobil_tiocmget, %if.then19)) #8
          to label %do.end [label %if.then19], !srcloc !123

if.then19:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %dev20 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kobil_tiocmget.__UNIQUE_ID_ddebug257, ptr noundef %dev20, ptr noundef nonnull @.str.31, i32 noundef %call14) #8
  br label %do.end

do.end:                                           ; preds = %if.then19, %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14)
  %cmp22 = icmp slt i32 %call14, 1
  br i1 %cmp22, label %if.then24, label %do.body30

if.then24:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp25 = icmp eq i32 %call14, 0
  %spec.store.select = select i1 %cmp25, i32 -5, i32 %call14
  br label %out_free

do.body30:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kobil_tiocmget.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kobil_tiocmget, %if.then42)) #8
          to label %do.end47 [label %if.then42], !srcloc !123

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  %dev43 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %call7.i.i, align 8
  %conv44 = zext i8 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kobil_tiocmget.__UNIQUE_ID_ddebug258, ptr noundef %dev43, ptr noundef nonnull @.str.32, i32 noundef %conv44) #8
  br label %do.end47

do.end47:                                         ; preds = %if.then42, %do.body30
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %call7.i.i, align 8
  %18 = and i8 %17, 16
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 4
  br label %out_free

out_free:                                         ; preds = %do.end47, %if.then24
  %result.0 = phi i32 [ %spec.store.select, %if.then24 ], [ %20, %do.end47 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge77
  %retval.0 = phi i32 [ %result.0, %out_free ], [ -22, %entry.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge77 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kobil_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %dev1 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %device_type = getelementptr inbounds %struct.kobil_private, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %device_type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device_type, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.45)
  switch i16 %5, label %if.else60 [
    i16 120, label %entry.cleanup_crit_edge
    i16 129, label %entry.cleanup_crit_edge172
    i16 8209, label %if.then25
  ]

entry.cleanup_crit_edge172:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then25:                                        ; preds = %entry
  %and17 = and i32 %clear, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp ne i32 %and17, 0
  %7 = and i32 %set, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp26.not171 = icmp eq i32 %7, 0
  %cmp26.not = or i1 %cmp26.not171, %tobool18.not
  br i1 %cmp26.not, label %do.body35, label %do.body

do.body:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kobil_tiocmset.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kobil_tiocmset, %if.then33)) #8
          to label %if.end51 [label %if.then33], !srcloc !123

if.then33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kobil_tiocmset.__UNIQUE_ID_ddebug259, ptr noundef %dev1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33) #8
  br label %if.end51

do.body35:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kobil_tiocmset.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kobil_tiocmset, %if.then47)) #8
          to label %if.end51 [label %if.then47], !srcloc !123

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kobil_tiocmset.__UNIQUE_ID_ddebug260, ptr noundef %dev1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33) #8
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %do.body35, %if.then33, %do.body
  %cond = phi i16 [ 16, %if.then47 ], [ 4, %if.then33 ], [ 4, %do.body ], [ 16, %do.body35 ]
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i = shl i32 %13, 8
  %or = or i32 %shl.i, -2147483648
  %call59 = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or, i8 noundef zeroext 2, i8 noundef zeroext 66, i16 noundef zeroext %cond, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  br label %do.body110

if.else60:                                        ; preds = %entry
  %and13 = and i32 %clear, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp ne i32 %and13, 0
  %14 = and i32 %set, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp61.not170 = icmp eq i32 %14, 0
  %cmp61.not = or i1 %cmp61.not170, %tobool14.not
  br i1 %cmp61.not, label %do.body81, label %do.body64

do.body64:                                        ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kobil_tiocmset.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kobil_tiocmset, %if.then76)) #8
          to label %if.end97 [label %if.then76], !srcloc !123

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kobil_tiocmset.__UNIQUE_ID_ddebug261, ptr noundef %dev1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.33) #8
  br label %if.end97

do.body81:                                        ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kobil_tiocmset.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kobil_tiocmset, %if.then93)) #8
          to label %if.end97 [label %if.then93], !srcloc !123

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kobil_tiocmset.__UNIQUE_ID_ddebug262, ptr noundef %dev1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.33) #8
  br label %if.end97

if.end97:                                         ; preds = %if.then93, %do.body81, %if.then76, %do.body64
  %cond106 = phi i16 [ 2, %if.then93 ], [ 1, %if.then76 ], [ 1, %do.body64 ], [ 2, %do.body81 ]
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i164 = shl i32 %20, 8
  %or103 = or i32 %shl.i164, -2147483648
  %call108 = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or103, i8 noundef zeroext 2, i8 noundef zeroext 66, i16 noundef zeroext %cond106, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  br label %do.body110

do.body110:                                       ; preds = %if.end97, %if.end51
  %result.0 = phi i32 [ %call59, %if.end51 ], [ %call108, %if.end97 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kobil_tiocmset.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kobil_tiocmset, %if.then122)) #8
          to label %do.end125 [label %if.then122], !srcloc !123

if.then122:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kobil_tiocmset.__UNIQUE_ID_ddebug263, ptr noundef %dev1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.33, i32 noundef %result.0) #8
  br label %do.end125

do.end125:                                        ; preds = %if.then122, %do.body110
  %21 = tail call i32 @llvm.smin.i32(i32 %result.0, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %do.end125, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge172
  %retval.0 = phi i32 [ %21, %do.end125 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge172 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @kobil_init_termios(ptr nocapture noundef %tty) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %c_lflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 3
  %0 = ptrtoint ptr %c_lflag to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %c_lflag, align 4
  %1 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %termios, align 4
  %and = and i32 %2, -36880
  %or = or i32 %and, 4101
  store i32 %or, ptr %termios, align 4
  %c_oflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 1
  %3 = ptrtoint ptr %c_oflag to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %c_oflag, align 4
  %and5 = and i32 %4, -5
  store i32 %and5, ptr %c_oflag, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kobil_read_int_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kobil_read_int_callback.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kobil_read_int_callback, %if.then5)) #8
          to label %cleanup [label %if.then5], !srcloc !123

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kobil_read_int_callback.__UNIQUE_ID_ddebug249, ptr noundef %dev, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39, i32 noundef %5) #8
  br label %cleanup

if.end6:                                          ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %if.end6.if.end15_crit_edge, label %if.then8

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then8:                                         ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kobil_read_int_callback, %if.then.i)) #8
          to label %usb_serial_debug_data.exit [label %if.then.i], !srcloc !123

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %dev9 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_serial_debug_data.__UNIQUE_ID_ddebug237, ptr noundef %dev9, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.39, i32 noundef %7, i32 noundef %7, ptr noundef %3) #8
  br label %usb_serial_debug_data.exit

usb_serial_debug_data.exit:                       ; preds = %if.then.i, %if.then8
  %port11 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual_length, align 4
  %call.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port11, ptr noundef %3, i8 noundef zeroext 0, i32 noundef %9) #8
  tail call void @tty_flip_buffer_push(ptr noundef %port11) #8
  br label %if.end15

if.end15:                                         ; preds = %usb_serial_debug_data.exit, %if.end6.if.end15_crit_edge
  %interrupt_in_urb = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %interrupt_in_urb, align 4
  %call16 = tail call i32 @usb_submit_urb(ptr noundef %11, i32 noundef 2592) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kobil_read_int_callback.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kobil_read_int_callback, %if.then29)) #8
          to label %cleanup [label %if.then29], !srcloc !123

if.then29:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %dev30 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kobil_read_int_callback.__UNIQUE_ID_ddebug250, ptr noundef %dev30, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.39, i32 noundef %call16) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.end15, %if.then5, %do.body
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @kobil_write_int_callback(ptr nocapture noundef %urb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_copy_hw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !61, !63, !64, !66, !67, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !84, !85, !87, !88, !89, !91, !92, !94, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !112}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @__initcall__kmod_kobil_sct__265_567_usb_serial_module_init6, !1, !"__initcall__kmod_kobil_sct__265_567_usb_serial_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/kobil_sct.c", i32 567, i32 1}
!2 = !{ptr @__exitcall_usb_serial_module_exit, !1, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author266, !4, !"__UNIQUE_ID_author266", i1 false, i1 false}
!4 = !{!"../drivers/usb/serial/kobil_sct.c", i32 569, i32 1}
!5 = !{ptr @__UNIQUE_ID_description267, !6, !"__UNIQUE_ID_description267", i1 false, i1 false}
!6 = !{!"../drivers/usb/serial/kobil_sct.c", i32 570, i32 1}
!7 = !{ptr @__UNIQUE_ID_file268, !8, !"__UNIQUE_ID_file268", i1 false, i1 false}
!8 = !{!"../drivers/usb/serial/kobil_sct.c", i32 571, i32 1}
!9 = !{ptr @__UNIQUE_ID_license269, !8, !"__UNIQUE_ID_license269", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @id_table, !12, !"id_table", i1 false, i1 false}
!12 = !{!"../drivers/usb/serial/kobil_sct.c", i32 68, i32 35}
!13 = !{ptr @serial_drivers, !14, !"serial_drivers", i1 false, i1 false}
!14 = !{!"../drivers/usb/serial/kobil_sct.c", i32 101, i32 41}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/serial/kobil_sct.c", i32 82, i32 18}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/serial/kobil_sct.c", i32 80, i32 12}
!19 = !{ptr @kobil_device, !20, !"kobil_device", i1 false, i1 false}
!20 = !{!"../drivers/usb/serial/kobil_sct.c", i32 77, i32 33}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/serial/kobil_sct.c", i32 128, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @kobil_port_probe.__UNIQUE_ID_ddebug238, !22, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/serial/kobil_sct.c", i32 131, i32 3}
!28 = !{ptr @kobil_port_probe.__UNIQUE_ID_ddebug239, !27, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/serial/kobil_sct.c", i32 134, i32 3}
!31 = !{ptr @kobil_port_probe.__UNIQUE_ID_ddebug240, !30, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/serial/kobil_sct.c", i32 137, i32 3}
!34 = !{ptr @kobil_port_probe.__UNIQUE_ID_ddebug241, !33, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/serial/kobil_sct.c", i32 190, i32 2}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @kobil_open.__UNIQUE_ID_ddebug242, !36, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/serial/kobil_sct.c", i32 192, i32 3}
!41 = !{ptr @kobil_open.__UNIQUE_ID_ddebug243, !40, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/serial/kobil_sct.c", i32 207, i32 2}
!44 = !{ptr @kobil_open.__UNIQUE_ID_ddebug244, !43, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/serial/kobil_sct.c", i32 209, i32 3}
!47 = !{ptr @kobil_open.__UNIQUE_ID_ddebug245, !46, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/serial/kobil_sct.c", i32 227, i32 3}
!50 = !{ptr @kobil_open.__UNIQUE_ID_ddebug246, !49, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/serial/kobil_sct.c", i32 240, i32 3}
!53 = !{ptr @kobil_open.__UNIQUE_ID_ddebug247, !52, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/serial/kobil_sct.c", i32 247, i32 3}
!56 = !{ptr @kobil_open.__UNIQUE_ID_ddebug248, !55, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/serial/kobil_sct.c", i32 301, i32 3}
!59 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @kobil_write.__UNIQUE_ID_ddebug251, !58, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/serial/kobil_sct.c", i32 308, i32 3}
!63 = !{ptr @kobil_write.__UNIQUE_ID_ddebug252, !62, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!64 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/serial/kobil_sct.c", i32 339, i32 4}
!66 = !{ptr @kobil_write.__UNIQUE_ID_ddebug255, !65, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!67 = !{ptr @kobil_write.__UNIQUE_ID_ddebug256, !68, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!68 = !{!"../drivers/usb/serial/kobil_sct.c", i32 354, i32 4}
!69 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../include/linux/usb/serial.h", i32 393, i32 2}
!71 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @usb_serial_debug_data.__UNIQUE_ID_ddebug237, !70, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!74 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/serial/kobil_sct.c", i32 558, i32 3}
!76 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @kobil_ioctl.__UNIQUE_ID_ddebug264, !75, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!78 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/serial/kobil_sct.c", i32 528, i32 3}
!80 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @kobil_set_termios._entry, !79, !"_entry", i1 false, i1 false}
!84 = !{ptr @kobil_set_termios._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/serial/kobil_sct.c", i32 398, i32 2}
!87 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @kobil_tiocmget.__UNIQUE_ID_ddebug257, !86, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/serial/kobil_sct.c", i32 406, i32 2}
!91 = !{ptr @kobil_tiocmget.__UNIQUE_ID_ddebug258, !90, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/serial/kobil_sct.c", i32 445, i32 4}
!94 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @kobil_tiocmset.__UNIQUE_ID_ddebug259, !93, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/serial/kobil_sct.c", i32 447, i32 4}
!98 = !{ptr @kobil_tiocmset.__UNIQUE_ID_ddebug260, !97, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!99 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/serial/kobil_sct.c", i32 459, i32 4}
!101 = !{ptr @kobil_tiocmset.__UNIQUE_ID_ddebug261, !100, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/serial/kobil_sct.c", i32 461, i32 4}
!104 = !{ptr @kobil_tiocmset.__UNIQUE_ID_ddebug262, !103, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!105 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/serial/kobil_sct.c", i32 472, i32 2}
!107 = !{ptr @kobil_tiocmset.__UNIQUE_ID_ddebug263, !106, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!108 = !{ptr @.str.39, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/serial/kobil_sct.c", i32 271, i32 3}
!110 = !{ptr @.str.40, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @kobil_read_int_callback.__UNIQUE_ID_ddebug249, !109, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!112 = !{ptr @kobil_read_int_callback.__UNIQUE_ID_ddebug250, !113, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!113 = !{!"../drivers/usb/serial/kobil_sct.c", i32 283, i32 2}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{i64 2148705818, i64 2148705823, i64 2148705836, i64 2148705880, i64 2148705914, i64 2148705935}
